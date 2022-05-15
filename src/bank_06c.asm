; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $06c", ROMX[$4000], BANK[$6c]

    ld l, h                                       ; $4000: $6c
    ld d, a                                       ; $4001: $57
    sbc l                                         ; $4002: $9d
    db $eb                                        ; $4003: $eb
    or [hl]                                       ; $4004: $b6
    ld l, l                                       ; $4005: $6d
    adc l                                         ; $4006: $8d
    ret c                                         ; $4007: $d8

    rst $38                                       ; $4008: $ff
    cp h                                          ; $4009: $bc
    ld e, l                                       ; $400a: $5d
    and [hl]                                      ; $400b: $a6
    ld a, d                                       ; $400c: $7a
    cp $51                                        ; $400d: $fe $51
    add hl, sp                                    ; $400f: $39
    ld l, $34                                     ; $4010: $2e $34
    ld e, b                                       ; $4012: $58
    or c                                          ; $4013: $b1
    sbc a                                         ; $4014: $9f
    ld d, d                                       ; $4015: $52
    sub $ad                                       ; $4016: $d6 $ad
    ld d, a                                       ; $4018: $57
    add $55                                       ; $4019: $c6 $55
    jp nz, $b422                                  ; $401b: $c2 $22 $b4

    sbc [hl]                                      ; $401e: $9e
    dec d                                         ; $401f: $15
    ld e, d                                       ; $4020: $5a
    cp d                                          ; $4021: $ba
    dec b                                         ; $4022: $05
    dec l                                         ; $4023: $2d
    dec hl                                        ; $4024: $2b
    or h                                          ; $4025: $b4
    ld [hl], h                                    ; $4026: $74
    ld l, e                                       ; $4027: $6b
    or h                                          ; $4028: $b4
    ld [hl+], a                                   ; $4029: $22
    cp b                                          ; $402a: $b8
    pop de                                        ; $402b: $d1
    pop de                                        ; $402c: $d1
    ld c, [hl]                                    ; $402d: $4e
    ld l, d                                       ; $402e: $6a
    cp $1d                                        ; $402f: $fe $1d
    ld b, c                                       ; $4031: $41
    and l                                         ; $4032: $a5
    ld a, b                                       ; $4033: $78
    db $e4                                        ; $4034: $e4
    db $ec                                        ; $4035: $ec
    adc b                                         ; $4036: $88
    xor h                                         ; $4037: $ac
    jp nc, $c685                                  ; $4038: $d2 $85 $c6

    ld e, [hl]                                    ; $403b: $5e
    xor b                                         ; $403c: $a8
    ld [hl], b                                    ; $403d: $70
    call c, Call_000_0076                         ; $403e: $dc $76 $00
    ld l, a                                       ; $4041: $6f
    pop de                                        ; $4042: $d1
    add hl, bc                                    ; $4043: $09
    xor d                                         ; $4044: $aa
    db $ec                                        ; $4045: $ec
    ld a, a                                       ; $4046: $7f
    db $e4                                        ; $4047: $e4
    ld e, c                                       ; $4048: $59
    db $e3                                        ; $4049: $e3
    ld [hl-], a                                   ; $404a: $32
    ld e, b                                       ; $404b: $58
    ld d, c                                       ; $404c: $51
    add hl, bc                                    ; $404d: $09
    adc e                                         ; $404e: $8b
    xor b                                         ; $404f: $a8
    sbc a                                         ; $4050: $9f
    ld e, [hl]                                    ; $4051: $5e
    ld a, $d9                                     ; $4052: $3e $d9
    ld a, [bc]                                    ; $4054: $0a
    ld hl, $7fe8                                  ; $4055: $21 $e8 $7f
    db $e4                                        ; $4058: $e4
    ld e, c                                       ; $4059: $59
    and e                                         ; $405a: $a3
    adc l                                         ; $405b: $8d
    add h                                         ; $405c: $84
    dec l                                         ; $405d: $2d
    sub h                                         ; $405e: $94
    dec sp                                        ; $405f: $3b
    ld a, [hl+]                                   ; $4060: $2a
    rst $00                                       ; $4061: $c7
    xor l                                         ; $4062: $ad
    db $d3                                        ; $4063: $d3
    cp h                                          ; $4064: $bc
    pop de                                        ; $4065: $d1
    rst $10                                       ; $4066: $d7
    adc e                                         ; $4067: $8b
    sbc $9f                                       ; $4068: $de $9f
    sub a                                         ; $406a: $97
    ld b, h                                       ; $406b: $44
    inc bc                                        ; $406c: $03
    adc c                                         ; $406d: $89
    ld h, l                                       ; $406e: $65
    ld l, d                                       ; $406f: $6a
    cp $9d                                        ; $4070: $fe $9d
    ld b, [hl]                                    ; $4072: $46
    ld h, [hl]                                    ; $4073: $66
    pop af                                        ; $4074: $f1
    ld l, h                                       ; $4075: $6c
    rlca                                          ; $4076: $07
    rst $20                                       ; $4077: $e7
    and l                                         ; $4078: $a5
    ld a, [hl+]                                   ; $4079: $2a
    or l                                          ; $407a: $b5
    ld [hl+], a                                   ; $407b: $22
    xor [hl]                                      ; $407c: $ae
    rst $28                                       ; $407d: $ef
    rst $28                                       ; $407e: $ef
    push hl                                       ; $407f: $e5
    db $ed                                        ; $4080: $ed
    sub l                                         ; $4081: $95
    push bc                                       ; $4082: $c5
    and e                                         ; $4083: $a3
    push af                                       ; $4084: $f5
    ld l, h                                       ; $4085: $6c
    inc e                                         ; $4086: $1c
    ccf                                           ; $4087: $3f
    jp c, $2ad1                                   ; $4088: $da $d1 $2a

    add h                                         ; $408b: $84
    ld h, e                                       ; $408c: $63
    call nc, $fa37                                ; $408d: $d4 $37 $fa
    ld c, c                                       ; $4090: $49
    ld h, d                                       ; $4091: $62
    dec d                                         ; $4092: $15
    jp nz, Jump_06c_6a31                          ; $4093: $c2 $31 $6a

    cp c                                          ; $4096: $b9
    ld d, e                                       ; $4097: $53
    dec de                                        ; $4098: $1b
    rst $08                                       ; $4099: $cf
    call c, Call_000_071b                         ; $409a: $dc $1b $07
    sbc a                                         ; $409d: $9f
    ld a, l                                       ; $409e: $7d
    db $fc                                        ; $409f: $fc
    or $c7                                        ; $40a0: $f6 $c7
    scf                                           ; $40a2: $37
    ld a, [hl-]                                   ; $40a3: $3a
    ld e, d                                       ; $40a4: $5a
    add l                                         ; $40a5: $85
    ld [hl], b                                    ; $40a6: $70
    adc h                                         ; $40a7: $8c
    cp d                                          ; $40a8: $ba
    push af                                       ; $40a9: $f5
    cp h                                          ; $40aa: $bc
    ld sp, hl                                     ; $40ab: $f9
    ld [hl], a                                    ; $40ac: $77
    adc d                                         ; $40ad: $8a
    sub b                                         ; $40ae: $90
    add hl, de                                    ; $40af: $19
    jp c, $2ad1                                   ; $40b0: $da $d1 $2a

    add h                                         ; $40b3: $84
    ld h, e                                       ; $40b4: $63
    call nc, $270a                                ; $40b5: $d4 $0a $27
    db $eb                                        ; $40b8: $eb
    sub $f3                                       ; $40b9: $d6 $f3
    ld d, h                                       ; $40bb: $54
    ld c, b                                       ; $40bc: $48
    pop af                                        ; $40bd: $f1
    inc [hl]                                      ; $40be: $34
    sub b                                         ; $40bf: $90
    ret c                                         ; $40c0: $d8

    sub b                                         ; $40c1: $90
    and a                                         ; $40c2: $a7
    call nz, $e4d5                                ; $40c3: $c4 $d5 $e4
    ld a, [hl+]                                   ; $40c6: $2a
    rst $00                                       ; $40c7: $c7
    push af                                       ; $40c8: $f5
    inc [hl]                                      ; $40c9: $34
    ld a, [de]                                    ; $40ca: $1a
    and a                                         ; $40cb: $a7
    sbc [hl]                                      ; $40cc: $9e
    push de                                       ; $40cd: $d5
    db $f4                                        ; $40ce: $f4
    dec a                                         ; $40cf: $3d
    sub a                                         ; $40d0: $97

Jump_06c_40d1:
    and c                                         ; $40d1: $a1
    ret                                           ; $40d2: $c9


Call_06c_40d3:
    and c                                         ; $40d3: $a1
    ld a, a                                       ; $40d4: $7f
    sbc $de                                       ; $40d5: $de $de
    ld c, $57                                     ; $40d7: $0e $57
    sbc l                                         ; $40d9: $9d
    db $eb                                        ; $40da: $eb
    or [hl]                                       ; $40db: $b6
    ld l, l                                       ; $40dc: $6d
    ld h, l                                       ; $40dd: $65
    push hl                                       ; $40de: $e5
    cp b                                          ; $40df: $b8
    jp hl                                         ; $40e0: $e9


    ld a, a                                       ; $40e1: $7f
    db $e4                                        ; $40e2: $e4
    ld e, c                                       ; $40e3: $59
    dec d                                         ; $40e4: $15
    ld b, d                                       ; $40e5: $42
    ld [hl], $90                                  ; $40e6: $36 $90
    or b                                          ; $40e8: $b0
    ld [hl], a                                    ; $40e9: $77
    ld a, d                                       ; $40ea: $7a
    ld a, [de]                                    ; $40eb: $1a
    adc l                                         ; $40ec: $8d
    ld d, e                                       ; $40ed: $53
    rst $08                                       ; $40ee: $cf
    ld l, d                                       ; $40ef: $6a
    ld a, [$cb9e]                                 ; $40f0: $fa $9e $cb
    ldh a, [$c6]                                  ; $40f3: $f0 $c6
    ld bc, $fd1f                                  ; $40f5: $01 $1f $fd
    ld c, [hl]                                    ; $40f8: $4e
    dec e                                         ; $40f9: $1d
    dec de                                        ; $40fa: $1b
    jp nc, Jump_000_294e                          ; $40fb: $d2 $4e $29

    ld b, a                                       ; $40fe: $47
    ld l, [hl]                                    ; $40ff: $6e
    cp l                                          ; $4100: $bd
    add hl, sp                                    ; $4101: $39
    ld a, [c]                                     ; $4102: $f2
    xor h                                         ; $4103: $ac
    sbc [hl]                                      ; $4104: $9e
    ld a, a                                       ; $4105: $7f
    ld [hl], $e4                                  ; $4106: $36 $e4
    add hl, bc                                    ; $4108: $09
    ld d, [hl]                                    ; $4109: $56
    db $ec                                        ; $410a: $ec
    and a                                         ; $410b: $a7
    db $e4                                        ; $410c: $e4
    ld d, b                                       ; $410d: $50
    add hl, sp                                    ; $410e: $39
    ld c, e                                       ; $410f: $4b
    pop de                                        ; $4110: $d1
    db $10                                        ; $4111: $10
    ld b, [hl]                                    ; $4112: $46
    cp c                                          ; $4113: $b9
    inc a                                         ; $4114: $3c
    ld a, [de]                                    ; $4115: $1a
    pop hl                                        ; $4116: $e1
    add h                                         ; $4117: $84
    rla                                           ; $4118: $17
    call c, Call_06c_6bd6                         ; $4119: $dc $d6 $6b
    ret nc                                        ; $411c: $d0

    and d                                         ; $411d: $a2
    ld c, $6b                                     ; $411e: $0e $6b
    ld l, h                                       ; $4120: $6c
    and c                                         ; $4121: $a1
    rla                                           ; $4122: $17
    ld a, [hl+]                                   ; $4123: $2a
    and h                                         ; $4124: $a4
    db $eb                                        ; $4125: $eb
    ld l, c                                       ; $4126: $69
    inc [hl]                                      ; $4127: $34
    adc [hl]                                      ; $4128: $8e
    ld h, d                                       ; $4129: $62
    db $eb                                        ; $412a: $eb
    dec [hl]                                      ; $412b: $35
    ld h, $ed                                     ; $412c: $26 $ed
    ld [hl-], a                                   ; $412e: $32
    rst $30                                       ; $412f: $f7
    dec sp                                        ; $4130: $3b
    jp c, Jump_000_2708                           ; $4131: $da $08 $27

    cp h                                          ; $4134: $bc
    ldh [$fa], a                                  ; $4135: $e0 $fa
    ld h, a                                       ; $4137: $67
    or $74                                        ; $4138: $f6 $74
    push af                                       ; $413a: $f5
    inc hl                                        ; $413b: $23
    xor c                                         ; $413c: $a9
    call Call_06c_5528                            ; $413d: $cd $28 $55
    adc $0e                                       ; $4140: $ce $0e
    ld b, c                                       ; $4142: $41
    dec e                                         ; $4143: $1d
    or h                                          ; $4144: $b4
    call c, $95a9                                 ; $4145: $dc $a9 $95
    inc hl                                        ; $4148: $23
    inc [hl]                                      ; $4149: $34
    cp b                                          ; $414a: $b8
    cp d                                          ; $414b: $ba
    or h                                          ; $414c: $b4
    ld [c], a                                     ; $414d: $e2
    call nc, Call_06c_6961                        ; $414e: $d4 $61 $69
    dec h                                         ; $4151: $25
    ld l, h                                       ; $4152: $6c
    or [hl]                                       ; $4153: $b6
    inc bc                                        ; $4154: $03
    ld d, a                                       ; $4155: $57
    sbc l                                         ; $4156: $9d
    inc de                                        ; $4157: $13
    inc [hl]                                      ; $4158: $34
    ld e, h                                       ; $4159: $5c
    pop hl                                        ; $415a: $e1
    ld c, b                                       ; $415b: $48
    ld l, h                                       ; $415c: $6c
    ld a, l                                       ; $415d: $7d
    db $f4                                        ; $415e: $f4
    pop af                                        ; $415f: $f1
    scf                                           ; $4160: $37
    sbc a                                         ; $4161: $9f
    xor $8d                                       ; $4162: $ee $8d
    db $eb                                        ; $4164: $eb
    adc a                                         ; $4165: $8f
    dec e                                         ; $4166: $1d
    sub a                                         ; $4167: $97
    push bc                                       ; $4168: $c5
    add d                                         ; $4169: $82
    ld a, [hl-]                                   ; $416a: $3a
    sbc b                                         ; $416b: $98
    db $e3                                        ; $416c: $e3
    ld c, $8f                                     ; $416d: $0e $8f
    xor l                                         ; $416f: $ad
    adc a                                         ; $4170: $8f
    ld a, $fe                                     ; $4171: $3e $fe
    and $d3                                       ; $4173: $e6 $d3
    cp l                                          ; $4175: $bd
    ld [hl], c                                    ; $4176: $71
    db $fd                                        ; $4177: $fd
    or c                                          ; $4178: $b1
    inc bc                                        ; $4179: $03
    sub a                                         ; $417a: $97
    inc bc                                        ; $417b: $03
    adc c                                         ; $417c: $89
    dec sp                                        ; $417d: $3b
    ld [$f170], a                                 ; $417e: $ea $70 $f1
    or a                                          ; $4181: $b7
    ld sp, hl                                     ; $4182: $f9
    ld [hl], a                                    ; $4183: $77
    ld c, d                                       ; $4184: $4a
    adc l                                         ; $4185: $8d
    ld hl, sp-$5d                                 ; $4186: $f8 $a3
    ld c, $3e                                     ; $4188: $0e $3e
    add hl, de                                    ; $418a: $19
    or [hl]                                       ; $418b: $b6
    ld a, $fa                                     ; $418c: $3e $fa
    ld hl, sp-$65                                 ; $418e: $f8 $9b
    ld c, a                                       ; $4190: $4f
    rst $30                                       ; $4191: $f7
    add $f5                                       ; $4192: $c6 $f5
    rst $00                                       ; $4194: $c7
    ld c, $97                                     ; $4195: $0e $97
    push bc                                       ; $4197: $c5
    cp c                                          ; $4198: $b9
    db $db                                        ; $4199: $db
    or [hl]                                       ; $419a: $b6
    sub l                                         ; $419b: $95
    xor d                                         ; $419c: $aa
    ld l, h                                       ; $419d: $6c
    ld e, h                                       ; $419e: $5c
    ld e, c                                       ; $419f: $59
    adc h                                         ; $41a0: $8c
    sbc [hl]                                      ; $41a1: $9e
    ld b, [hl]                                    ; $41a2: $46
    db $e3                                        ; $41a3: $e3
    call nc, Call_06c_72b3                        ; $41a4: $d4 $b3 $72
    halt                                          ; $41a7: $76
    call nc, $ccb3                                ; $41a8: $d4 $b3 $cc
    ld a, a                                       ; $41ab: $7f
    xor $13                                       ; $41ac: $ee $13
    ld [hl], d                                    ; $41ae: $72
    db $eb                                        ; $41af: $eb
    and e                                         ; $41b0: $a3
    adc a                                         ; $41b1: $8f
    cp a                                          ; $41b2: $bf
    ld sp, hl                                     ; $41b3: $f9
    ld [hl], h                                    ; $41b4: $74
    ld l, a                                       ; $41b5: $6f
    ld e, h                                       ; $41b6: $5c
    ld a, a                                       ; $41b7: $7f
    db $ec                                        ; $41b8: $ec
    nop                                           ; $41b9: $00
    rst $28                                       ; $41ba: $ef
    ld b, d                                       ; $41bb: $42
    jp $ed4b                                      ; $41bc: $c3 $4b $ed


    dec [hl]                                      ; $41bf: $35
    ld l, b                                       ; $41c0: $68
    and a                                         ; $41c1: $a7
    add c                                         ; $41c2: $81
    call nz, $e85e                                ; $41c3: $c4 $5e $e8
    ld d, d                                       ; $41c6: $52
    dec e                                         ; $41c7: $1d
    ld b, c                                       ; $41c8: $41
    dec [hl]                                      ; $41c9: $35
    ld a, l                                       ; $41ca: $7d
    rst $08                                       ; $41cb: $cf
    ld h, l                                       ; $41cc: $65
    xor b                                         ; $41cd: $a8
    ld h, a                                       ; $41ce: $67
    sub e                                         ; $41cf: $93
    inc de                                        ; $41d0: $13
    xor [hl]                                      ; $41d1: $ae
    db $d3                                        ; $41d2: $d3
    cp h                                          ; $41d3: $bc
    pop de                                        ; $41d4: $d1
    ld b, a                                       ; $41d5: $47
    rra                                           ; $41d6: $1f
    ld a, a                                       ; $41d7: $7f
    di                                            ; $41d8: $f3
    jp hl                                         ; $41d9: $e9


    sbc $b8                                       ; $41da: $de $b8
    cp $d8                                        ; $41dc: $fe $d8
    ld bc, $ed97                                  ; $41de: $01 $97 $ed
    inc h                                         ; $41e1: $24
    ld d, $14                                     ; $41e2: $16 $14
    ld d, d                                       ; $41e4: $52
    inc a                                         ; $41e5: $3c
    dec c                                         ; $41e6: $0d
    inc h                                         ; $41e7: $24
    sub [hl]                                      ; $41e8: $96
    xor d                                         ; $41e9: $aa
    inc l                                         ; $41ea: $2c
    dec c                                         ; $41eb: $0d
    sub l                                         ; $41ec: $95
    db $e3                                        ; $41ed: $e3
    sub [hl]                                      ; $41ee: $96
    ld b, a                                       ; $41ef: $47
    dec a                                         ; $41f0: $3d
    dec hl                                        ; $41f1: $2b
    ld hl, $63c5                                  ; $41f2: $21 $c5 $63
    ld [hl], $5b                                  ; $41f5: $36 $5b
    rra                                           ; $41f7: $1f
    ld a, l                                       ; $41f8: $7d
    db $fc                                        ; $41f9: $fc
    call $7ba7                                    ; $41fa: $cd $a7 $7b
    db $e3                                        ; $41fd: $e3
    ld a, [$0763]                                 ; $41fe: $fa $63 $07
    rst $20                                       ; $4201: $e7
    ld a, [de]                                    ; $4202: $1a
    ld a, a                                       ; $4203: $7f
    and a                                         ; $4204: $a7
    ld a, [hl]                                    ; $4205: $7e
    db $dd                                        ; $4206: $dd
    ld h, [hl]                                    ; $4207: $66
    or $d3                                        ; $4208: $f6 $d3
    ld b, b                                       ; $420a: $40
    ld h, d                                       ; $420b: $62
    rst $38                                       ; $420c: $ff
    inc hl                                        ; $420d: $23
    rst $08                                       ; $420e: $cf
    ld a, d                                       ; $420f: $7a
    and c                                         ; $4210: $a1
    ld d, a                                       ; $4211: $57
    ld h, c                                       ; $4212: $61
    or $53                                        ; $4213: $f6 $53
    xor a                                         ; $4215: $af
    ld c, a                                       ; $4216: $4f
    adc h                                         ; $4217: $8c
    or h                                          ; $4218: $b4
    db $ed                                        ; $4219: $ed
    nop                                           ; $421a: $00
    scf                                           ; $421b: $37
    ld h, $95                                     ; $421c: $26 $95
    ld l, c                                       ; $421e: $69
    dec sp                                        ; $421f: $3b
    nop                                           ; $4220: $00
    ld l, a                                       ; $4221: $6f
    ld d, e                                       ; $4222: $53
    ld [hl-], a                                   ; $4223: $32
    sub h                                         ; $4224: $94
    ld l, e                                       ; $4225: $6b
    ld [hl-], a                                   ; $4226: $32
    ld [hl], d                                    ; $4227: $72
    db $e4                                        ; $4228: $e4
    sub $73                                       ; $4229: $d6 $73
    adc l                                         ; $422b: $8d
    db $ec                                        ; $422c: $ec
    add l                                         ; $422d: $85
    ld e, [hl]                                    ; $422e: $5e
    ld sp, $8508                                  ; $422f: $31 $08 $85
    inc l                                         ; $4232: $2c
    ld c, e                                       ; $4233: $4b
    adc l                                         ; $4234: $8d
    db $ec                                        ; $4235: $ec
    and h                                         ; $4236: $a4
    ld l, b                                       ; $4237: $68
    inc hl                                        ; $4238: $23
    add sp, -$45                                  ; $4239: $e8 $bb
    di                                            ; $423b: $f3
    db $d3                                        ; $423c: $d3
    adc $ed                                       ; $423d: $ce $ed
    nop                                           ; $423f: $00
    ld d, a                                       ; $4240: $57
    ld d, e                                       ; $4241: $53
    ld d, $6d                                     ; $4242: $16 $6d
    rlca                                          ; $4244: $07
    rst $28                                       ; $4245: $ef
    jp c, $d164                                   ; $4246: $da $64 $d1

    halt                                          ; $4249: $76

jr_06c_424a:
    nop                                           ; $424a: $00
    scf                                           ; $424b: $37
    ld sp, hl                                     ; $424c: $f9
    db $fd                                        ; $424d: $fd
    inc [hl]                                      ; $424e: $34
    sub b                                         ; $424f: $90
    ret c                                         ; $4250: $d8

    rst $38                                       ; $4251: $ff
    ret z                                         ; $4252: $c8

    or e                                          ; $4253: $b3
    ld a, [hl]                                    ; $4254: $7e
    rra                                           ; $4255: $1f
    ld e, h                                       ; $4256: $5c
    add hl, sp                                    ; $4257: $39
    ld e, c                                       ; $4258: $59
    ld c, h                                       ; $4259: $4c
    ret                                           ; $425a: $c9


    call nc, $fae4                                ; $425b: $d4 $e4 $fa
    dec b                                         ; $425e: $05
    and c                                         ; $425f: $a1
    dec sp                                        ; $4260: $3b
    ld a, a                                       ; $4261: $7f
    jp c, Jump_000_2bda                           ; $4262: $da $da $2b

    ld l, c                                       ; $4265: $69
    ld a, c                                       ; $4266: $79
    ld hl, sp+$11                                 ; $4267: $f8 $11
    db $f4                                        ; $4269: $f4
    ld a, [$48c4]                                 ; $426a: $fa $c4 $48
    inc de                                        ; $426d: $13
    db $f4                                        ; $426e: $f4
    ccf                                           ; $426f: $3f
    ld a, [c]                                     ; $4270: $f2
    xor h                                         ; $4271: $ac
    ld sp, hl                                     ; $4272: $f9
    ld [hl], a                                    ; $4273: $77
    ld a, [$6ac7]                                 ; $4274: $fa $c7 $6a
    jr nz, jr_06c_424a                            ; $4277: $20 $d1

    ld l, b                                       ; $4279: $68
    ld d, l                                       ; $427a: $55
    sub $2d                                       ; $427b: $d6 $2d
    adc l                                         ; $427d: $8d
    ret                                           ; $427e: $c9


    ld h, b                                       ; $427f: $60
    sub l                                         ; $4280: $95
    db $e3                                        ; $4281: $e3
    ld a, [bc]                                    ; $4282: $0a
    ld l, l                                       ; $4283: $6d
    ld c, b                                       ; $4284: $48
    push de                                       ; $4285: $d5
    add c                                         ; $4286: $81
    sub $d2                                       ; $4287: $d6 $d2
    jp z, Jump_000_1dba                           ; $4289: $ca $ba $1d

    rst $20                                       ; $428c: $e7
    xor c                                         ; $428d: $a9
    jp z, $bf55                                   ; $428e: $ca $55 $bf

    ld l, [hl]                                    ; $4291: $6e
    db $d3                                        ; $4292: $d3
    ld a, [de]                                    ; $4293: $1a
    ld c, b                                       ; $4294: $48
    ret c                                         ; $4295: $d8

    ld a, e                                       ; $4296: $7b
    and c                                         ; $4297: $a1
    db $d3                                        ; $4298: $d3
    cp b                                          ; $4299: $b8
    jp nz, $a5a9                                  ; $429a: $c2 $a9 $a5

    push hl                                       ; $429d: $e5
    xor d                                         ; $429e: $aa
    ld [hl], e                                    ; $429f: $73
    ld a, e                                       ; $42a0: $7b
    ld h, l                                       ; $42a1: $65
    pop af                                        ; $42a2: $f1
    ld l, h                                       ; $42a3: $6c
    rlca                                          ; $42a4: $07
    scf                                           ; $42a5: $37
    ld b, a                                       ; $42a6: $47
    sbc [hl]                                      ; $42a7: $9e
    push de                                       ; $42a8: $d5
    di                                            ; $42a9: $f3
    cp a                                          ; $42aa: $bf
    ld d, b                                       ; $42ab: $50
    and l                                         ; $42ac: $a5
    push de                                       ; $42ad: $d5
    ld h, c                                       ; $42ae: $61
    ld l, c                                       ; $42af: $69
    jp hl                                         ; $42b0: $e9


    sub e                                         ; $42b1: $93
    add h                                         ; $42b2: $84
    rra                                           ; $42b3: $1f
    ld b, c                                       ; $42b4: $41
    xor a                                         ; $42b5: $af
    ld c, a                                       ; $42b6: $4f
    adc h                                         ; $42b7: $8c
    inc [hl]                                      ; $42b8: $34
    ld b, c                                       ; $42b9: $41
    daa                                           ; $42ba: $27
    push af                                       ; $42bb: $f5
    adc a                                         ; $42bc: $8f
    ld d, l                                       ; $42bd: $55
    ld c, b                                       ; $42be: $48
    ld [$9561], sp                                ; $42bf: $08 $61 $95
    db $e3                                        ; $42c2: $e3
    and [hl]                                      ; $42c3: $a6
    db $d3                                        ; $42c4: $d3
    cpl                                           ; $42c5: $2f
    ld [$f9dd], sp                                ; $42c6: $08 $dd $f9
    ld d, e                                       ; $42c9: $53
    ld de, $6b48                                  ; $42ca: $11 $48 $6b
    dec sp                                        ; $42cd: $3b
    nop                                           ; $42ce: $00
    xor a                                         ; $42cf: $af
    rst $10                                       ; $42d0: $d7
    ld [hl], c                                    ; $42d1: $71
    rla                                           ; $42d2: $17
    adc a                                         ; $42d3: $8f
    push af                                       ; $42d4: $f5
    ccf                                           ; $42d5: $3f
    ld a, [c]                                     ; $42d6: $f2
    xor h                                         ; $42d7: $ac
    jp z, $e31a                                   ; $42d8: $ca $1a $e3

    ld [hl-], a                                   ; $42db: $32
    ret c                                         ; $42dc: $d8

    halt                                          ; $42dd: $76
    nop                                           ; $42de: $00
    rst $10                                       ; $42df: $d7
    and b                                         ; $42e0: $a0
    call $d3bf                                    ; $42e1: $cd $bf $d3
    ccf                                           ; $42e4: $3f
    call c, $f368                                 ; $42e5: $dc $68 $f3
    ld l, b                                       ; $42e8: $68
    adc l                                         ; $42e9: $8d
    ld [hl], c                                    ; $42ea: $71
    add hl, de                                    ; $42eb: $19
    ld c, h                                       ; $42ec: $4c
    ret nc                                        ; $42ed: $d0

    sub b                                         ; $42ee: $90
    ei                                            ; $42ef: $fb
    call nc, $8f31                                ; $42f0: $d4 $31 $8f
    ld [hl], $ff                                  ; $42f3: $36 $ff
    ld c, [hl]                                    ; $42f5: $4e
    ld de, $342f                                  ; $42f6: $11 $2f $34
    db $e4                                        ; $42f9: $e4
    add hl, bc                                    ; $42fa: $09
    and $46                                       ; $42fb: $e6 $46
    adc e                                         ; $42fd: $8b
    db $fd                                        ; $42fe: $fd
    sub h                                         ; $42ff: $94
    or d                                          ; $4300: $b2
    sub $8f                                       ; $4301: $d6 $8f
    ld d, [hl]                                    ; $4303: $56
    sbc c                                         ; $4304: $99
    or h                                          ; $4305: $b4
    ld a, [hl]                                    ; $4306: $7e
    inc h                                         ; $4307: $24
    ld [hl], l                                    ; $4308: $75
    db $eb                                        ; $4309: $eb
    adc l                                         ; $430a: $8d
    ld h, l                                       ; $430b: $65
    ld a, a                                       ; $430c: $7f
    cp b                                          ; $430d: $b8
    daa                                           ; $430e: $27
    sub h                                         ; $430f: $94
    add d                                         ; $4310: $82
    ld a, [de]                                    ; $4311: $1a
    ld b, d                                       ; $4312: $42
    call c, Call_06c_5ea6                         ; $4313: $dc $a6 $5e
    ld a, [hl-]                                   ; $4316: $3a
    nop                                           ; $4317: $00
    scf                                           ; $4318: $37
    ld [bc], a                                    ; $4319: $02
    adc c                                         ; $431a: $89
    ld hl, sp-$1f                                 ; $431b: $f8 $e1
    jp nc, Jump_06c_6f01                          ; $431d: $d2 $01 $6f

    and e                                         ; $4320: $a3
    and c                                         ; $4321: $a1
    db $dd                                        ; $4322: $dd
    ld [hl], e                                    ; $4323: $73
    ld l, e                                       ; $4324: $6b
    add hl, sp                                    ; $4325: $39
    db $f4                                        ; $4326: $f4

Call_06c_4327:
    rst $08                                       ; $4327: $cf
    db $db                                        ; $4328: $db
    add d                                         ; $4329: $82
    add [hl]                                      ; $432a: $86
    inc a                                         ; $432b: $3c
    dec h                                         ; $432c: $25
    ld d, [hl]                                    ; $432d: $56
    sbc c                                         ; $432e: $99
    or h                                          ; $432f: $b4
    and c                                         ; $4330: $a1
    db $dd                                        ; $4331: $dd
    inc de                                        ; $4332: $13
    jp c, $ad1a                                   ; $4333: $da $1a $ad

    rra                                           ; $4336: $1f
    ld c, c                                       ; $4337: $49
    cp l                                          ; $4338: $bd
    ld [hl], h                                    ; $4339: $74
    nop                                           ; $433a: $00
    rst $28                                       ; $433b: $ef
    ld l, c                                       ; $433c: $69
    sbc h                                         ; $433d: $9c
    and $df                                       ; $433e: $e6 $df
    jp hl                                         ; $4340: $e9


    rra                                           ; $4341: $1f
    xor e                                         ; $4342: $ab
    and d                                         ; $4343: $a2

jr_06c_4344:
    dec h                                         ; $4344: $25
    ld h, c                                       ; $4345: $61
    add l                                         ; $4346: $85
    ld [$8272], a                                 ; $4347: $ea $72 $82
    ld e, [hl]                                    ; $434a: $5e
    sbc a                                         ; $434b: $9f
    jr @+$6b                                      ; $434c: $18 $69

    sub a                                         ; $434e: $97
    ld c, $1f                                     ; $434f: $0e $1f
    dec bc                                        ; $4351: $0b
    ld l, l                                       ; $4352: $6d
    sbc l                                         ; $4353: $9d
    ldh [rBGP], a                                 ; $4354: $e0 $47
    ret nc                                        ; $4356: $d0

    db $eb                                        ; $4357: $eb
    inc de                                        ; $4358: $13
    inc hl                                        ; $4359: $23

jr_06c_435a:
    ld l, l                                       ; $435a: $6d
    db $eb                                        ; $435b: $eb
    push hl                                       ; $435c: $e5
    db $d3                                        ; $435d: $d3
    jr jr_06c_435a                                ; $435e: $18 $fa

    rst $20                                       ; $4360: $e7
    rst $30                                       ; $4361: $f7
    xor b                                         ; $4362: $a8
    or d                                          ; $4363: $b2
    ld [$d98d], sp                                ; $4364: $08 $8d $d9
    or e                                          ; $4367: $b3
    ld l, b                                       ; $4368: $68
    cp $9d                                        ; $4369: $fe $9d
    ld a, [hl-]                                   ; $436b: $3a
    sbc $a2                                       ; $436c: $de $a2
    ld d, l                                       ; $436e: $55
    adc [hl]                                      ; $436f: $8e
    ld l, e                                       ; $4370: $6b
    jr nz, jr_06c_4344                            ; $4371: $20 $d1

    push af                                       ; $4373: $f5
    ld b, d                                       ; $4374: $42
    dec e                                         ; $4375: $1d
    sub [hl]                                      ; $4376: $96
    ld d, [hl]                                    ; $4377: $56
    inc [hl]                                      ; $4378: $34
    ld d, $d9                                     ; $4379: $16 $d9
    ld b, b                                       ; $437b: $40
    ld h, d                                       ; $437c: $62
    rst $38                                       ; $437d: $ff
    inc hl                                        ; $437e: $23
    rst $08                                       ; $437f: $cf
    or [hl]                                       ; $4380: $b6
    inc bc                                        ; $4381: $03
    ld l, a                                       ; $4382: $6f
    adc l                                         ; $4383: $8d
    ld l, e                                       ; $4384: $6b
    ld [$a743], sp                                ; $4385: $08 $43 $a7
    rst $10                                       ; $4388: $d7
    or b                                          ; $4389: $b0
    adc e                                         ; $438a: $8b
    and $a7                                       ; $438b: $e6 $a7
    ld b, $12                                     ; $438d: $06 $12
    set 2, h                                      ; $438f: $cb $d4
    db $fc                                        ; $4391: $fc
    dec sp                                        ; $4392: $3b
    and l                                         ; $4393: $a5
    ld b, [hl]                                    ; $4394: $46
    db $fc                                        ; $4395: $fc

jr_06c_4396:
    pop de                                        ; $4396: $d1
    ld [hl], b                                    ; $4397: $70
    xor h                                         ; $4398: $ac
    ld hl, $ce2d                                  ; $4399: $21 $2d $ce
    and l                                         ; $439c: $a5
    cp [hl]                                       ; $439d: $be
    ld b, l                                       ; $439e: $45
    ld hl, $8d4a                                  ; $439f: $21 $4a $8d
    ld l, b                                       ; $43a2: $68
    jr c, jr_06c_43bc                             ; $43a3: $38 $17

    ld a, a                                       ; $43a5: $7f
    and a                                         ; $43a6: $a7
    sbc [hl]                                      ; $43a7: $9e
    sub l                                         ; $43a8: $95
    ret                                           ; $43a9: $c9


    jr nz, jr_06c_43d4                            ; $43aa: $20 $28

    ld [hl], a                                    ; $43ac: $77
    db $f4                                        ; $43ad: $f4
    adc a                                         ; $43ae: $8f
    ld d, l                                       ; $43af: $55
    ld a, h                                       ; $43b0: $7c
    sbc a                                         ; $43b1: $9f
    inc a                                         ; $43b2: $3c
    xor h                                         ; $43b3: $ac
    xor b                                         ; $43b4: $a8
    ld c, h                                       ; $43b5: $4c
    ld b, $ab                                     ; $43b6: $06 $ab
    ld [hl-], a                                   ; $43b8: $32
    ld l, c                                       ; $43b9: $69
    dec e                                         ; $43ba: $1d
    and h                                         ; $43bb: $a4

jr_06c_43bc:
    jr c, @+$4b                                   ; $43bc: $38 $49

    ld hl, sp-$2f                                 ; $43be: $f8 $d1
    db $ed                                        ; $43c0: $ed
    nop                                           ; $43c1: $00
    xor a                                         ; $43c2: $af
    rla                                           ; $43c3: $17
    xor d                                         ; $43c4: $aa
    swap l                                        ; $43c5: $cb $35
    sub b                                         ; $43c7: $90
    ld e, b                                       ; $43c8: $58
    ld h, l                                       ; $43c9: $65
    and e                                         ; $43ca: $a3
    ld hl, $c9a2                                  ; $43cb: $21 $a2 $c9
    push af                                       ; $43ce: $f5
    adc a                                         ; $43cf: $8f
    sbc l                                         ; $43d0: $9d
    add hl, sp                                    ; $43d1: $39
    cp $ce                                        ; $43d2: $fe $ce

jr_06c_43d4:
    and l                                         ; $43d4: $a5
    inc bc                                        ; $43d5: $03
    ld l, a                                       ; $43d6: $6f
    dec c                                         ; $43d7: $0d
    inc b                                         ; $43d8: $04
    cp l                                          ; $43d9: $bd
    ld a, [bc]                                    ; $43da: $0a
    or e                                          ; $43db: $b3
    sbc a                                         ; $43dc: $9f
    or [hl]                                       ; $43dd: $b6
    inc bc                                        ; $43de: $03
    rst $10                                       ; $43df: $d7
    ld h, c                                       ; $43e0: $61
    sub h                                         ; $43e1: $94
    ld l, h                                       ; $43e2: $6c
    jr nz, jr_06c_4396                            ; $43e3: $20 $b1

    ld [c], a                                     ; $43e5: $e2
    ld c, c                                       ; $43e6: $49
    ld a, a                                       ; $43e7: $7f
    sub $a5                                       ; $43e8: $d6 $a5
    dec d                                         ; $43ea: $15
    ld d, c                                       ; $43eb: $51
    add hl, sp                                    ; $43ec: $39
    ld e, c                                       ; $43ed: $59
    sub h                                         ; $43ee: $94
    db $f4                                        ; $43ef: $f4
    ld [hl], a                                    ; $43f0: $77
    ld a, [de]                                    ; $43f1: $1a
    adc [hl]                                      ; $43f2: $8e
    ld d, l                                       ; $43f3: $55
    ld [hl+], a                                   ; $43f4: $22
    add hl, hl                                    ; $43f5: $29
    ld [$eb47], a                                 ; $43f6: $ea $47 $eb
    ld b, a                                       ; $43f9: $47
    ld d, d                                       ; $43fa: $52
    or a                                          ; $43fb: $b7
    inc bc                                        ; $43fc: $03
    rst $10                                       ; $43fd: $d7
    jp nc, Jump_06c_538a                          ; $43fe: $d2 $8a $53

    ld hl, $a09d                                  ; $4401: $21 $9d $a0
    ld d, a                                       ; $4404: $57
    ld h, c                                       ; $4405: $61
    or $93                                        ; $4406: $f6 $93
    and b                                         ; $4408: $a0
    sub b                                         ; $4409: $90
    ld [c], a                                     ; $440a: $e2
    ld l, c                                       ; $440b: $69
    jr nz, @-$4d                                  ; $440c: $20 $b1

    call c, $8459                                 ; $440e: $dc $59 $84
    add $ec                                       ; $4411: $c6 $ec
    sbc c                                         ; $4413: $99
    adc d                                         ; $4414: $8a
    xor $eb                                       ; $4415: $ee $eb
    ld [c], a                                     ; $4417: $e2
    rst $28                                       ; $4418: $ef
    ld l, h                                       ; $4419: $6c
    rlca                                          ; $441a: $07
    sub a                                         ; $441b: $97
    ld c, a                                       ; $441c: $4f
    ld h, e                                       ; $441d: $63
    jr z, jr_06c_4497                             ; $441e: $28 $77

    or $8f                                        ; $4420: $f6 $8f
    ld d, l                                       ; $4422: $55
    pop de                                        ; $4423: $d1
    sub d                                         ; $4424: $92
    or b                                          ; $4425: $b0
    ld h, d                                       ; $4426: $62
    ld h, l                                       ; $4427: $65
    adc a                                         ; $4428: $8f
    add [hl]                                      ; $4429: $86
    ld l, e                                       ; $442a: $6b
    ld c, h                                       ; $442b: $4c
    ret nc                                        ; $442c: $d0

    sub e                                         ; $442d: $93
    pop hl                                        ; $442e: $e1
    ld [hl+], a                                   ; $442f: $22
    or h                                          ; $4430: $b4
    add sp, $7f                                   ; $4431: $e8 $7f
    db $e4                                        ; $4433: $e4
    reti                                          ; $4434: $d9


    and l                                         ; $4435: $a5
    inc bc                                        ; $4436: $03
    sbc a                                         ; $4437: $9f
    ld h, c                                       ; $4438: $61
    rst $38                                       ; $4439: $ff
    di                                            ; $443a: $f3
    halt                                          ; $443b: $76
    rst $38                                       ; $443c: $ff
    inc hl                                        ; $443d: $23
    rst $08                                       ; $443e: $cf
    sbc d                                         ; $443f: $9a
    ld a, a                                       ; $4440: $7f
    and a                                         ; $4441: $a7
    jp z, $d1ef                                   ; $4442: $ca $ef $d1

    sbc b                                         ; $4445: $98
    db $fc                                        ; $4446: $fc
    inc d                                         ; $4447: $14
    add c                                         ; $4448: $81
    or h                                          ; $4449: $b4
    or $69                                        ; $444a: $f6 $69
    jr nz, @-$4d                                  ; $444c: $20 $b1

    ld a, [hl]                                    ; $444e: $7e
    db $dd                                        ; $444f: $dd
    and [hl]                                      ; $4450: $a6
    dec hl                                        ; $4451: $2b
    xor d                                         ; $4452: $aa
    ld c, h                                       ; $4453: $4c
    dec [hl]                                      ; $4454: $35
    ld l, d                                       ; $4455: $6a
    ret z                                         ; $4456: $c8

    dec d                                         ; $4457: $15
    ld h, a                                       ; $4458: $67
    dec sp                                        ; $4459: $3b
    nop                                           ; $445a: $00
    rst $10                                       ; $445b: $d7
    db $ed                                        ; $445c: $ed
    sbc [hl]                                      ; $445d: $9e
    ld e, e                                       ; $445e: $5b
    res 4, c                                      ; $445f: $cb $a1
    ld hl, $1e0c                                  ; $4461: $21 $0c $1e
    add d                                         ; $4464: $82
    ld e, [hl]                                    ; $4465: $5e
    sbc l                                         ; $4466: $9d
    db $d3                                        ; $4467: $d3
    adc a                                         ; $4468: $8f
    or b                                          ; $4469: $b0
    xor b                                         ; $446a: $a8
    ld e, e                                       ; $446b: $5b
    xor a                                         ; $446c: $af
    adc a                                         ; $446d: $8f
    ld d, l                                       ; $446e: $55
    add h                                         ; $446f: $84
    rst $38                                       ; $4470: $ff
    sbc b                                         ; $4471: $98
    and b                                         ; $4472: $a0
    rst $38                                       ; $4473: $ff
    and l                                         ; $4474: $a5
    ld de, $caae                                  ; $4475: $11 $ae $ca
    and h                                         ; $4478: $a4
    ld c, l                                       ; $4479: $4d
    ld a, c                                       ; $447a: $79
    adc c                                         ; $447b: $89
    add $1c                                       ; $447c: $c6 $1c
    or l                                          ; $447e: $b5
    sbc [hl]                                      ; $447f: $9e
    cp l                                          ; $4480: $bd
    ld a, [hl-]                                   ; $4481: $3a
    and a                                         ; $4482: $a7
    rra                                           ; $4483: $1f
    ld h, c                                       ; $4484: $61
    ld d, c                                       ; $4485: $51
    adc e                                         ; $4486: $8b
    inc e                                         ; $4487: $1c
    xor c                                         ; $4488: $a9
    push af                                       ; $4489: $f5
    xor h                                         ; $448a: $ac
    and a                                         ; $448b: $a7
    jp nc, Jump_06c_6109                          ; $448c: $d2 $09 $61

    ld [de], a                                    ; $448f: $12
    or [hl]                                       ; $4490: $b6
    dec e                                         ; $4491: $1d
    sbc a                                         ; $4492: $9f
    adc l                                         ; $4493: $8d
    rra                                           ; $4494: $1f
    xor l                                         ; $4495: $ad
    inc e                                         ; $4496: $1c

jr_06c_4497:
    or a                                          ; $4497: $b7
    ld c, [hl]                                    ; $4498: $4e
    inc hl                                        ; $4499: $23
    add sp, $1f                                   ; $449a: $e8 $1f
    ld l, [hl]                                    ; $449c: $6e
    ld [hl], h                                    ; $449d: $74
    dec sp                                        ; $449e: $3b
    nop                                           ; $449f: $00
    rra                                           ; $44a0: $1f
    db $dd                                        ; $44a1: $dd
    and e                                         ; $44a2: $a3
    db $fd                                        ; $44a3: $fd
    jp $368d                                      ; $44a4: $c3 $8d $36


    add hl, hl                                    ; $44a7: $29
    xor h                                         ; $44a8: $ac
    ld b, d                                       ; $44a9: $42
    sbc b                                         ; $44aa: $98
    inc e                                         ; $44ab: $1c
    ld l, l                                       ; $44ac: $6d
    ld [$1143], sp                                ; $44ad: $08 $43 $11
    dec c                                         ; $44b0: $0d
    ld a, a                                       ; $44b1: $7f
    xor d                                         ; $44b2: $aa
    jp nz, $dd3a                                  ; $44b3: $c2 $3a $dd

    ld [hl], c                                    ; $44b6: $71
    sbc d                                         ; $44b7: $9a
    ld [hl+], a                                   ; $44b8: $22
    ld e, [hl]                                    ; $44b9: $5e
    add sp, -$2b                                  ; $44ba: $e8 $d5
    add hl, sp                                    ; $44bc: $39
    db $fd                                        ; $44bd: $fd
    ld [$ba8b], sp                                ; $44be: $08 $8b $ba
    push af                                       ; $44c1: $f5
    ld a, [de]                                    ; $44c2: $1a
    ld [hl], d                                    ; $44c3: $72
    ld h, h                                       ; $44c4: $64
    ld d, $c3                                     ; $44c5: $16 $c3
    ld d, l                                       ; $44c7: $55
    inc de                                        ; $44c8: $13
    or h                                          ; $44c9: $b4
    xor $77                                       ; $44ca: $ee $77
    or h                                          ; $44cc: $b4
    xor h                                         ; $44cd: $ac
    ld [hl-], a                                   ; $44ce: $32
    ld l, c                                       ; $44cf: $69
    jp Jump_06c_5a0b                              ; $44d0: $c3 $0b $5a


    rst $08                                       ; $44d3: $cf
    inc e                                         ; $44d4: $1c
    ld l, l                                       ; $44d5: $6d
    ld [$42a7], a                                 ; $44d6: $ea $a7 $42
    sbc b                                         ; $44d9: $98
    inc e                                         ; $44da: $1c
    ld b, c                                       ; $44db: $41
    di                                            ; $44dc: $f3
    rst $28                                       ; $44dd: $ef
    ld d, h                                       ; $44de: $54
    or h                                          ; $44df: $b4
    ld [bc], a                                    ; $44e0: $02
    adc c                                         ; $44e1: $89
    xor [hl]                                      ; $44e2: $ae
    ld b, d                                       ; $44e3: $42
    ld e, e                                       ; $44e4: $5b
    ld e, c                                       ; $44e5: $59
    ld [hl+], a                                   ; $44e6: $22
    ei                                            ; $44e7: $fb
    xor c                                         ; $44e8: $a9
    inc e                                         ; $44e9: $1c
    ld d, a                                       ; $44ea: $57
    xor $d4                                       ; $44eb: $ee $d4
    ld h, [hl]                                    ; $44ed: $66
    inc [hl]                                      ; $44ee: $34
    ld hl, sp-$6c                                 ; $44ef: $f8 $94
    or b                                          ; $44f1: $b0
    push af                                       ; $44f2: $f5
    or d                                          ; $44f3: $b2
    ld e, b                                       ; $44f4: $58
    ld d, b                                       ; $44f5: $50
    ld [hl], $32                                  ; $44f6: $36 $32

jr_06c_44f8:
    adc e                                         ; $44f8: $8b
    pop hl                                        ; $44f9: $e1
    ld a, [hl+]                                   ; $44fa: $2a
    db $d3                                        ; $44fb: $d3
    ld a, [c]                                     ; $44fc: $f2
    ldh a, [rHDMA3]                               ; $44fd: $f0 $53
    add hl, sp                                    ; $44ff: $39
    xor [hl]                                      ; $4500: $ae
    add sp, -$62                                  ; $4501: $e8 $9e
    halt                                          ; $4503: $76
    db $f4                                        ; $4504: $f4
    or h                                          ; $4505: $b4
    ld c, [hl]                                    ; $4506: $4e
    ret z                                         ; $4507: $c8

    sub c                                         ; $4508: $91
    ld h, l                                       ; $4509: $65
    ld b, a                                       ; $450a: $47
    dec sp                                        ; $450b: $3b
    add hl, hl                                    ; $450c: $29
    jp c, $dd68                                   ; $450d: $da $68 $dd

    ld h, h                                       ; $4510: $64
    adc l                                         ; $4511: $8d
    ld [hl], $5a                                  ; $4512: $36 $5a
    and $31                                       ; $4514: $e6 $31
    ld b, a                                       ; $4516: $47
    db $dd                                        ; $4517: $dd
    ld c, $d7                                     ; $4518: $0e $d7
    ld h, $6b                                     ; $451a: $26 $6b
    or h                                          ; $451c: $b4
    pop de                                        ; $451d: $d1
    ld [hl-], a                                   ; $451e: $32
    adc a                                         ; $451f: $8f
    add hl, sp                                    ; $4520: $39
    ld [$071b], a                                 ; $4521: $ea $1b $07
    rst $20                                       ; $4524: $e7
    xor c                                         ; $4525: $a9
    ld b, [hl]                                    ; $4526: $46
    db $ec                                        ; $4527: $ec
    adc [hl]                                      ; $4528: $8e
    add hl, sp                                    ; $4529: $39
    or d                                          ; $452a: $b2
    and a                                         ; $452b: $a7
    pop de                                        ; $452c: $d1
    ld [$a85b], sp                                ; $452d: $08 $5b $a8
    ld h, a                                       ; $4530: $67
    dec d                                         ; $4531: $15
    ld b, d                                       ; $4532: $42
    ld e, d                                       ; $4533: $5a
    or c                                          ; $4534: $b1
    sbc a                                         ; $4535: $9f
    ld d, d                                       ; $4536: $52
    sub $8a                                       ; $4537: $d6 $8a
    cp b                                          ; $4539: $b8
    ld [c], a                                     ; $453a: $e2
    cp d                                          ; $453b: $ba
    jr c, jr_06c_44f8                             ; $453c: $38 $ba

    dec e                                         ; $453e: $1d
    rst $10                                       ; $453f: $d7
    jp nc, Jump_06c_538a                          ; $4540: $d2 $8a $53

    ld hl, $a09d                                  ; $4543: $21 $9d $a0
    ld hl, $550c                                  ; $4546: $21 $0c $55
    ld h, $ad                                     ; $4549: $26 $ad
    db $10                                        ; $454b: $10
    ld h, $47                                     ; $454c: $26 $47
    or a                                          ; $454e: $b7
    inc bc                                        ; $454f: $03
    ld l, a                                       ; $4550: $6f
    pop de                                        ; $4551: $d1
    add hl, bc                                    ; $4552: $09
    jp z, $bf54                                   ; $4553: $ca $54 $bf

    ld l, h                                       ; $4556: $6c
    and c                                         ; $4557: $a1
    add c                                         ; $4558: $81
    call nz, $d52e                                ; $4559: $c4 $2e $d5
    xor c                                         ; $455c: $a9
    ld l, b                                       ; $455d: $68
    ld d, [hl]                                    ; $455e: $56
    ld b, l                                       ; $455f: $45
    ld h, e                                       ; $4560: $63
    ld [hl], c                                    ; $4561: $71
    adc c                                         ; $4562: $89
    sub [hl]                                      ; $4563: $96
    ld b, h                                       ; $4564: $44
    adc [hl]                                      ; $4565: $8e
    call c, $d6fa                                 ; $4566: $dc $fa $d6
    cp b                                          ; $4569: $b8
    ld b, [hl]                                    ; $456a: $46
    add e                                         ; $456b: $83
    db $10                                        ; $456c: $10
    cp e                                          ; $456d: $bb
    ld a, b                                       ; $456e: $78
    inc b                                         ; $456f: $04
    cp l                                          ; $4570: $bd
    ld a, [bc]                                    ; $4571: $0a
    or e                                          ; $4572: $b3
    sbc a                                         ; $4573: $9f
    or [hl]                                       ; $4574: $b6
    inc bc                                        ; $4575: $03
    rst $20                                       ; $4576: $e7
    xor c                                         ; $4577: $a9
    ld [$a199], sp                                ; $4578: $08 $99 $a1
    db $dd                                        ; $457b: $dd
    or [hl]                                       ; $457c: $b6
    xor l                                         ; $457d: $ad
    ld h, d                                       ; $457e: $62
    rst $20                                       ; $457f: $e7
    cp d                                          ; $4580: $ba
    ld l, l                                       ; $4581: $6d
    ld e, e                                       ; $4582: $5b
    ld b, a                                       ; $4583: $47
    ld l, b                                       ; $4584: $68
    db $eb                                        ; $4585: $eb
    inc b                                         ; $4586: $04
    ccf                                           ; $4587: $3f
    db $db                                        ; $4588: $db
    ld bc, $4f97                                  ; $4589: $01 $97 $4f
    ld h, e                                       ; $458c: $63
    db $10                                        ; $458d: $10
    inc [hl]                                      ; $458e: $34
    add hl, sp                                    ; $458f: $39
    inc d                                         ; $4590: $14
    ld a, c                                       ; $4591: $79

Call_06c_4592:
    add hl, sp                                    ; $4592: $39
    ld a, b                                       ; $4593: $78
    ld d, h                                       ; $4594: $54
    jp nz, $2cad                                  ; $4595: $c2 $ad $2c

    add [hl]                                      ; $4598: $86
    ld b, a                                       ; $4599: $47
    ld de, $ff0d                                  ; $459a: $11 $0d $ff
    dec bc                                        ; $459d: $0b
    ld e, d                                       ; $459e: $5a
    rrca                                          ; $459f: $0f
    xor l                                         ; $45a0: $ad
    add e                                         ; $45a1: $83
    cp d                                          ; $45a2: $ba
    ld sp, $9683                                  ; $45a3: $31 $83 $96
    push af                                       ; $45a6: $f5
    rr b                                          ; $45a7: $cb $18
    and a                                         ; $45a9: $a7
    ld hl, $bd0c                                  ; $45aa: $21 $0c $bd
    ld a, [hl-]                                   ; $45ad: $3a
    and a                                         ; $45ae: $a7
    rra                                           ; $45af: $1f
    ld h, c                                       ; $45b0: $61
    ld d, c                                       ; $45b1: $51
    or a                                          ; $45b2: $b7
    inc bc                                        ; $45b3: $03
    scf                                           ; $45b4: $37
    ld b, a                                       ; $45b5: $47
    sbc [hl]                                      ; $45b6: $9e
    dec d                                         ; $45b7: $15
    ld [hl], a                                    ; $45b8: $77
    dec bc                                        ; $45b9: $0b
    adc d                                         ; $45ba: $8a
    sub l                                         ; $45bb: $95
    dec a                                         ; $45bc: $3d
    ld c, d                                       ; $45bd: $4a
    adc l                                         ; $45be: $8d
    pop bc                                        ; $45bf: $c1
    sub l                                         ; $45c0: $95
    db $e3                                        ; $45c1: $e3
    xor d                                         ; $45c2: $aa
    ld c, h                                       ; $45c3: $4c
    ld d, l                                       ; $45c4: $55
    add h                                         ; $45c5: $84
    di                                            ; $45c6: $f3
    add $01                                       ; $45c7: $c6 $01
    scf                                           ; $45c9: $37
    sub [hl]                                      ; $45ca: $96
    inc de                                        ; $45cb: $13
    db $f4                                        ; $45cc: $f4
    inc sp                                        ; $45cd: $33
    db $e3                                        ; $45ce: $e3
    ld a, a                                       ; $45cf: $7f
    xor h                                         ; $45d0: $ac
    call nc, Call_06c_5c18                        ; $45d1: $d4 $18 $5c
    ld hl, $115d                                  ; $45d4: $21 $5d $11
    ld c, b                                       ; $45d7: $48
    ld c, e                                       ; $45d8: $4b
    ret nc                                        ; $45d9: $d0

    ld de, $3ada                                  ; $45da: $11 $da $3a
    pop bc                                        ; $45dd: $c1
    rst $08                                       ; $45de: $cf
    halt                                          ; $45df: $76
    nop                                           ; $45e0: $00
    ld l, a                                       ; $45e1: $6f
    adc l                                         ; $45e2: $8d
    db $db                                        ; $45e3: $db
    ld a, d                                       ; $45e4: $7a
    ld sp, hl                                     ; $45e5: $f9
    inc [hl]                                      ; $45e6: $34
    ld b, $41                                     ; $45e7: $06 $41
    ld b, l                                       ; $45e9: $45
    dec hl                                        ; $45ea: $2b
    sub b                                         ; $45eb: $90
    add sp, -$06                                  ; $45ec: $e8 $fa
    ld a, l                                       ; $45ee: $7d
    jp z, $b471                                   ; $45ef: $ca $71 $b4

    ld l, h                                       ; $45f2: $6c
    cp $9d                                        ; $45f3: $fe $9d
    jp z, $9471                                   ; $45f5: $ca $71 $94

    ld [hl], h                                    ; $45f8: $74
    ld b, l                                       ; $45f9: $45
    ld l, a                                       ; $45fa: $6f
    inc hl                                        ; $45fb: $23
    rst $18                                       ; $45fc: $df
    add [hl]                                      ; $45fd: $86
    dec [hl]                                      ; $45fe: $35
    inc e                                         ; $45ff: $1c
    dec hl                                        ; $4600: $2b
    xor $7e                                       ; $4601: $ee $7e
    or l                                          ; $4603: $b5
    cp h                                          ; $4604: $bc
    or l                                          ; $4605: $b5
    inc [hl]                                      ; $4606: $34
    jp nc, $fb15                                  ; $4607: $d2 $15 $fb

    add hl, hl                                    ; $460a: $29
    add hl, sp                                    ; $460b: $39
    ld l, b                                       ; $460c: $68
    push hl                                       ; $460d: $e5
    inc l                                         ; $460e: $2c
    add l                                         ; $460f: $85

Jump_06c_4610:
    ld [hl], $cf                                  ; $4610: $36 $cf
    rst $30                                       ; $4612: $f7
    call z, Call_06c_5a11                         ; $4613: $cc $11 $5a
    sub $a0                                       ; $4616: $d6 $a0
    sub c                                         ; $4618: $91
    rst $18                                       ; $4619: $df
    inc hl                                        ; $461a: $23
    ld b, a                                       ; $461b: $47
    ld l, d                                       ; $461c: $6a
    ld b, l                                       ; $461d: $45
    ld h, e                                       ; $461e: $63
    xor b                                         ; $461f: $a8
    sbc a                                         ; $4620: $9f
    ld c, d                                       ; $4621: $4a
    cp b                                          ; $4622: $b8
    sub l                                         ; $4623: $95
    push bc                                       ; $4624: $c5
    db $d3                                        ; $4625: $d3
    ret nc                                        ; $4626: $d0

    ld d, [hl]                                    ; $4627: $56
    sub [hl]                                      ; $4628: $96
    dec hl                                        ; $4629: $2b
    call nz, $f5be                                ; $462a: $c4 $be $f5
    cp h                                          ; $462d: $bc
    ld sp, hl                                     ; $462e: $f9
    ld [hl], a                                    ; $462f: $77
    cp d                                          ; $4630: $ba
    xor a                                         ; $4631: $af
    ld d, e                                       ; $4632: $53
    and d                                         ; $4633: $a2
    ld l, e                                       ; $4634: $6b
    ld [$4743], sp                                ; $4635: $08 $43 $47
    dec de                                        ; $4638: $1b
    xor c                                         ; $4639: $a9
    sub e                                         ; $463a: $93
    ld l, h                                       ; $463b: $6c
    or h                                          ; $463c: $b4
    add c                                         ; $463d: $81
    call nz, $a386                                ; $463e: $c4 $86 $a3
    ld a, [bc]                                    ; $4641: $0a
    ld d, a                                       ; $4642: $57
    ld l, d                                       ; $4643: $6a
    add h                                         ; $4644: $84
    sub l                                         ; $4645: $95
    ld a, [de]                                    ; $4646: $1a
    ld c, b                                       ; $4647: $48
    sub h                                         ; $4648: $94
    res 1, a                                      ; $4649: $cb $8f
    ld [hl], $8f                                  ; $464b: $36 $8f
    ld d, [hl]                                    ; $464d: $56
    adc [hl]                                      ; $464e: $8e
    add hl, de                                    ; $464f: $19
    db $fd                                        ; $4650: $fd
    jr @+$77                                      ; $4651: $18 $75

    db $eb                                        ; $4653: $eb
    or l                                          ; $4654: $b5
    or h                                          ; $4655: $b4

Jump_06c_4656:
    ld [c], a                                     ; $4656: $e2
    ld d, h                                       ; $4657: $54
    ld c, b                                       ; $4658: $48
    daa                                           ; $4659: $27
    add sp, $1f                                   ; $465a: $e8 $1f
    ld l, [hl]                                    ; $465c: $6e
    or h                                          ; $465d: $b4
    ld a, e                                       ; $465e: $7b
    ldh a, [rPCM12]                               ; $465f: $f0 $76
    nop                                           ; $4661: $00
    sub a                                         ; $4662: $97
    rst $28                                       ; $4663: $ef
    ld l, $35                                     ; $4664: $2e $35
    ld b, $f7                                     ; $4666: $06 $f7
    ccf                                           ; $4668: $3f
    ld a, [c]                                     ; $4669: $f2
    db $ec                                        ; $466a: $ec
    ld d, d                                       ; $466b: $52
    ccf                                           ; $466c: $3f
    ld h, e                                       ; $466d: $63
    adc [hl]                                      ; $466e: $8e
    xor h                                         ; $466f: $ac
    ld l, b                                       ; $4670: $68
    ld c, c                                       ; $4671: $49
    ld e, b                                       ; $4672: $58
    cp a                                          ; $4673: $bf
    ld c, a                                       ; $4674: $4f
    add hl, sp                                    ; $4675: $39
    ld c, [hl]                                    ; $4676: $4e
    db $fd                                        ; $4677: $fd
    db $f4                                        ; $4678: $f4
    ld h, h                                       ; $4679: $64
    add hl, hl                                    ; $467a: $29
    sbc h                                         ; $467b: $9c
    ld c, e                                       ; $467c: $4b
    rlca                                          ; $467d: $07
    rra                                           ; $467e: $1f
    db $fd                                        ; $467f: $fd
    ld c, [hl]                                    ; $4680: $4e
    cpl                                           ; $4681: $2f
    ld d, h                                       ; $4682: $54
    ld a, c                                       ; $4683: $79
    ld c, d                                       ; $4684: $4a
    ld [hl], $15                                  ; $4685: $36 $15
    dec l                                         ; $4687: $2d
    add hl, bc                                    ; $4688: $09
    dec hl                                        ; $4689: $2b
    or d                                          ; $468a: $b2
    ld b, a                                       ; $468b: $47
    or $d3                                        ; $468c: $f6 $d3
    ld [hl], b                                    ; $468e: $70
    xor h                                         ; $468f: $ac
    ld [$55a4], sp                                ; $4690: $08 $a4 $55
    sbc l                                         ; $4693: $9d
    db $db                                        ; $4694: $db
    dec hl                                        ; $4695: $2b
    adc e                                         ; $4696: $8b

jr_06c_4697:
    ld b, a                                       ; $4697: $47
    ret nc                                        ; $4698: $d0

    xor e                                         ; $4699: $ab
    jr nc, jr_06c_4697                            ; $469a: $30 $fb

    ld l, c                                       ; $469c: $69
    dec sp                                        ; $469d: $3b
    nop                                           ; $469e: $00
    scf                                           ; $469f: $37
    pop hl                                        ; $46a0: $e1
    ld b, [hl]                                    ; $46a1: $46
    ld c, e                                       ; $46a2: $4b
    ld d, a                                       ; $46a3: $57
    sub c                                         ; $46a4: $91
    ld sp, $0a47                                  ; $46a5: $31 $47 $0a
    jp z, $fcd4                                   ; $46a8: $ca $d4 $fc

    dec sp                                        ; $46ab: $3b
    dec c                                         ; $46ac: $0d
    inc h                                         ; $46ad: $24
    jp c, $d234                                   ; $46ae: $da $34 $d2

Jump_06c_46b1:
    ld a, [de]                                    ; $46b1: $1a
    ld c, b                                       ; $46b2: $48
    db $ec                                        ; $46b3: $ec
    ld a, a                                       ; $46b4: $7f
    or $08                                        ; $46b5: $f6 $08
    ld l, e                                       ; $46b7: $6b
    ld [$4343], sp                                ; $46b8: $08 $43 $43
    dec de                                        ; $46bb: $1b
    sbc c                                         ; $46bc: $99
    inc c                                         ; $46bd: $0c
    sub $70                                       ; $46be: $d6 $70
    xor h                                         ; $46c0: $ac
    ret c                                         ; $46c1: $d8

    ld d, e                                       ; $46c2: $53
    ld e, $6d                                     ; $46c3: $1e $6d
    ld c, b                                       ; $46c5: $48
    di                                            ; $46c6: $f3
    res 1, a                                      ; $46c7: $cb $8f
    ld l, [hl]                                    ; $46c9: $6e
    rlca                                          ; $46ca: $07
    rst $20                                       ; $46cb: $e7
    xor c                                         ; $46cc: $a9
    call nc, Call_000_3f88                        ; $46cd: $d4 $88 $3f

Jump_06c_46d0:
    ld a, [de]                                    ; $46d0: $1a
    ld a, [de]                                    ; $46d1: $1a
    ld b, a                                       ; $46d2: $47
    and [hl]                                      ; $46d3: $a6
    db $10                                        ; $46d4: $10
    ld a, [hl]                                    ; $46d5: $7e
    ld a, [hl+]                                   ; $46d6: $2a
    rst $00                                       ; $46d7: $c7
    push af                                       ; $46d8: $f5
    ccf                                           ; $46d9: $3f
    ld a, [c]                                     ; $46da: $f2

jr_06c_46db:
    ld c, h                                       ; $46db: $4c
    ret nc                                        ; $46dc: $d0

    xor e                                         ; $46dd: $ab
    jr nc, jr_06c_46db                            ; $46de: $30 $fb

    ld l, c                                       ; $46e0: $69
    dec sp                                        ; $46e1: $3b
    nop                                           ; $46e2: $00
    rra                                           ; $46e3: $1f
    db $fd                                        ; $46e4: $fd
    ld c, [hl]                                    ; $46e5: $4e
    cpl                                           ; $46e6: $2f
    db $f4                                        ; $46e7: $f4

Jump_06c_46e8:
    ei                                            ; $46e8: $fb
    and h                                         ; $46e9: $a4
    ld [hl], c                                    ; $46ea: $71
    ld [$4d51], a                                 ; $46eb: $ea $51 $4d
    ld l, b                                       ; $46ee: $68
    ld [$ac8b], sp                                ; $46ef: $08 $8b $ac
    ld h, d                                       ; $46f2: $62
    ld e, c                                       ; $46f3: $59
    ld b, e                                       ; $46f4: $43
    jr jr_06c_4711                                ; $46f5: $18 $1a

    ld b, d                                       ; $46f7: $42
    sub l                                         ; $46f8: $95
    or b                                          ; $46f9: $b0
    or d                                          ; $46fa: $b2
    sbc [hl]                                      ; $46fb: $9e
    db $eb                                        ; $46fc: $eb
    ld d, $ac                                     ; $46fd: $16 $ac
    db $d3                                        ; $46ff: $d3
    ccf                                           ; $4700: $3f
    ld [hl], a                                    ; $4701: $77
    pop af                                        ; $4702: $f1
    db $f4                                        ; $4703: $f4
    ld a, [hl+]                                   ; $4704: $2a
    ld c, [hl]                                    ; $4705: $4e
    or [hl]                                       ; $4706: $b6
    ld a, h                                       ; $4707: $7c
    inc sp                                        ; $4708: $33
    db $ed                                        ; $4709: $ed
    ccf                                           ; $470a: $3f
    ld a, [hl-]                                   ; $470b: $3a
    add d                                         ; $470c: $82
    ld e, [hl]                                    ; $470d: $5e
    add l                                         ; $470e: $85
    reti                                          ; $470f: $d9


    ld c, a                                       ; $4710: $4f

jr_06c_4711:
    db $db                                        ; $4711: $db
    ld bc, $8d9f                                  ; $4712: $01 $9f $8d
    rra                                           ; $4715: $1f
    db $ed                                        ; $4716: $ed
    ld l, b                                       ; $4717: $68
    daa                                           ; $4718: $27
    ld b, l                                       ; $4719: $45
    dec de                                        ; $471a: $1b
    db $ed                                        ; $471b: $ed
    rst $30                                       ; $471c: $f7
    pop bc                                        ; $471d: $c1
    ld h, l                                       ; $471e: $65
    adc [hl]                                      ; $471f: $8e
    ld b, $83                                     ; $4720: $06 $83
    db $db                                        ; $4722: $db
    ld c, $37                                     ; $4723: $0e $37
    ld b, a                                       ; $4725: $47
    sbc [hl]                                      ; $4726: $9e
    ld d, l                                       ; $4727: $55
    ld c, [hl]                                    ; $4728: $4e
    ld d, [hl]                                    ; $4729: $56
    sbc [hl]                                      ; $472a: $9e
    ld [de], a                                    ; $472b: $12
    xor e                                         ; $472c: $ab
    ld l, h                                       ; $472d: $6c
    ld c, b                                       ; $472e: $48
    di                                            ; $472f: $f3
    or h                                          ; $4730: $b4
    ld a, [hl-]                                   ; $4731: $3a
    inc l                                         ; $4732: $2c
    xor l                                         ; $4733: $ad
    jr z, jr_06c_478e                             ; $4734: $28 $58

    xor [hl]                                      ; $4736: $ae
    cp l                                          ; $4737: $bd
    add c                                         ; $4738: $81
    call nz, $154e                                ; $4739: $c4 $4e $15
    pop hl                                        ; $473c: $e1
    call nc, Call_000_3f4f                        ; $473d: $d4 $4f $3f
    ld [c], a                                     ; $4740: $e2
    ld a, a                                       ; $4741: $7f
    db $ed                                        ; $4742: $ed
    dec sp                                        ; $4743: $3b
    dec b                                         ; $4744: $05
    cp l                                          ; $4745: $bd
    ld a, [bc]                                    ; $4746: $0a
    or e                                          ; $4747: $b3
    sbc a                                         ; $4748: $9f
    ld l, $1d                                     ; $4749: $2e $1d
    rra                                           ; $474b: $1f
    db $dd                                        ; $474c: $dd
    and e                                         ; $474d: $a3
    sub l                                         ; $474e: $95
    ld h, d                                       ; $474f: $62
    sbc [hl]                                      ; $4750: $9e
    ld h, b                                       ; $4751: $60
    ld [hl], h                                    ; $4752: $74
    and e                                         ; $4753: $a3
    db $dd                                        ; $4754: $dd
    add e                                         ; $4755: $83
    ld c, e                                       ; $4756: $4b
    ld d, a                                       ; $4757: $57
    and c                                         ; $4758: $a1
    pop af                                        ; $4759: $f1
    rst $08                                       ; $475a: $cf
    ld l, [hl]                                    ; $475b: $6e
    db $db                                        ; $475c: $db
    ld d, [hl]                                    ; $475d: $56
    ld h, l                                       ; $475e: $65
    db $e3                                        ; $475f: $e3
    ld hl, sp-$2f                                 ; $4760: $f8 $d1
    adc d                                         ; $4762: $8a
    sub [hl]                                      ; $4763: $96
    add h                                         ; $4764: $84
    pop de                                        ; $4765: $d1
    push af                                       ; $4766: $f5
    ei                                            ; $4767: $fb
    sub h                                         ; $4768: $94
    db $e3                                        ; $4769: $e3
    add sp, $76                                   ; $476a: $e8 $76
    nop                                           ; $476c: $00
    rra                                           ; $476d: $1f
    db $fd                                        ; $476e: $fd
    ld c, [hl]                                    ; $476f: $4e
    ld h, c                                       ; $4770: $61
    ld b, $8d                                     ; $4771: $06 $8d
    xor h                                         ; $4773: $ac
    ld [hl-], a                                   ; $4774: $32
    ld l, c                                       ; $4775: $69
    jp $da0b                                      ; $4776: $c3 $0b $da


    ld l, l                                       ; $4779: $6d
    db $db                                        ; $477a: $db
    adc d                                         ; $477b: $8a
    db $fd                                        ; $477c: $fd
    sub h                                         ; $477d: $94
    inc e                                         ; $477e: $1c
    ld a, [hl+]                                   ; $477f: $2a
    ld h, a                                       ; $4780: $67
    add hl, hl                                    ; $4781: $29
    ld a, [de]                                    ; $4782: $1a
    adc [hl]                                      ; $4783: $8e
    ld h, a                                       ; $4784: $67
    ld [hl], c                                    ; $4785: $71
    add d                                         ; $4786: $82
    ld e, c                                       ; $4787: $59
    ldh a, [rNR13]                                ; $4788: $f0 $13
    ei                                            ; $478a: $fb
    add sp, $76                                   ; $478b: $e8 $76
    nop                                           ; $478d: $00

jr_06c_478e:
    sub a                                         ; $478e: $97
    ld c, a                                       ; $478f: $4f
    ld h, e                                       ; $4790: $63
    add sp, -$7b                                  ; $4791: $e8 $85
    ld [$d53d], a                                 ; $4793: $ea $3d $d5
    inc h                                         ; $4796: $24
    ld e, h                                       ; $4797: $5c
    ld d, [hl]                                    ; $4798: $56
    ld l, d                                       ; $4799: $6a
    add h                                         ; $479a: $84
    sub [hl]                                      ; $479b: $96
    ld a, [hl+]                                   ; $479c: $2a
    pop hl                                        ; $479d: $e1
    and c                                         ; $479e: $a1
    add d                                         ; $479f: $82
    or d                                          ; $47a0: $b2
    ld sp, hl                                     ; $47a1: $f9
    ld e, $2d                                     ; $47a2: $1e $2d
    dec [hl]                                      ; $47a4: $35
    jp nz, Jump_06c_46e8                          ; $47a5: $c2 $e8 $46

    ld c, e                                       ; $47a8: $4b
    rst $10                                       ; $47a9: $d7
    xor e                                         ; $47aa: $ab
    ld [hl], e                                    ; $47ab: $73
    ld a, [$1611]                                 ; $47ac: $fa $11 $16
    ld [hl], l                                    ; $47af: $75
    dec sp                                        ; $47b0: $3b
    nop                                           ; $47b1: $00
    rra                                           ; $47b2: $1f
    ld l, e                                       ; $47b3: $6b
    xor c                                         ; $47b4: $a9
    ld sp, $e479                                  ; $47b5: $31 $79 $e4
    ld c, b                                       ; $47b8: $48
    xor l                                         ; $47b9: $ad
    sbc a                                         ; $47ba: $9f
    add [hl]                                      ; $47bb: $86

jr_06c_47bc:
    or [hl]                                       ; $47bc: $b6
    inc e                                         ; $47bd: $1c
    sub a                                         ; $47be: $97
    ld c, l                                       ; $47bf: $4d
    sub c                                         ; $47c0: $91
    ld b, a                                       ; $47c1: $47
    ret nc                                        ; $47c2: $d0

    ret nc                                        ; $47c3: $d0

    ld b, [hl]                                    ; $47c4: $46
    ld b, h                                       ; $47c5: $44
    push de                                       ; $47c6: $d5
    ld sp, $9af4                                  ; $47c7: $31 $f4 $9a
    ld a, h                                       ; $47ca: $7c
    ld [hl], a                                    ; $47cb: $77
    ld [hl-], a                                   ; $47cc: $32
    ld c, [hl]                                    ; $47cd: $4e
    ret c                                         ; $47ce: $d8

    rst $30                                       ; $47cf: $f7
    db $ed                                        ; $47d0: $ed
    nop                                           ; $47d1: $00
    ld l, a                                       ; $47d2: $6f
    pop de                                        ; $47d3: $d1
    dec a                                         ; $47d4: $3d
    pop af                                        ; $47d5: $f1
    ld e, a                                       ; $47d6: $5f
    reti                                          ; $47d7: $d9


    adc a                                         ; $47d8: $8f
    or $ce                                        ; $47d9: $f6 $ce
    ld e, [hl]                                    ; $47db: $5e
    sbc l                                         ; $47dc: $9d
    db $d3                                        ; $47dd: $d3
    adc a                                         ; $47de: $8f
    or b                                          ; $47df: $b0
    xor b                                         ; $47e0: $a8
    ld e, e                                       ; $47e1: $5b
    cpl                                           ; $47e2: $2f
    rst $30                                       ; $47e3: $f7
    ld a, [bc]                                    ; $47e4: $0a
    ld l, l                                       ; $47e5: $6d
    cp c                                          ; $47e6: $b9
    ei                                            ; $47e7: $fb
    ld a, [c]                                     ; $47e8: $f2
    ld b, d                                       ; $47e9: $42
    dec a                                         ; $47ea: $3d
    ld a, e                                       ; $47eb: $7b
    add e                                         ; $47ec: $83
    dec sp                                        ; $47ed: $3b
    cpl                                           ; $47ee: $2f
    cp $4e                                        ; $47ef: $fe $4e
    rst $38                                       ; $47f1: $ff
    ld e, b                                       ; $47f2: $58
    ld d, l                                       ; $47f3: $55
    sub $88                                       ; $47f4: $d6 $88
    ld a, l                                       ; $47f6: $7d
    db $dd                                        ; $47f7: $dd
    add [hl]                                      ; $47f8: $86
    push de                                       ; $47f9: $d5
    inc sp                                        ; $47fa: $33
    ld b, a                                       ; $47fb: $47
    sbc e                                         ; $47fc: $9b
    ld a, d                                       ; $47fd: $7a
    ld d, $fb                                     ; $47fe: $16 $fb
    add hl, hl                                    ; $4800: $29
    ld h, l                                       ; $4801: $65
    xor l                                         ; $4802: $ad
    ld e, e                                       ; $4803: $5b
    add hl, sp                                    ; $4804: $39
    push bc                                       ; $4805: $c5
    ld d, c                                       ; $4806: $51
    ld b, c                                       ; $4807: $41
    reti                                          ; $4808: $d9


    dec bc                                        ; $4809: $0b
    sbc l                                         ; $480a: $9d
    db $ec                                        ; $480b: $ec
    reti                                          ; $480c: $d9


    rst $38                                       ; $480d: $ff
    ret z                                         ; $480e: $c8

    inc sp                                        ; $480f: $33
    xor l                                         ; $4810: $ad
    jp nc, $a77e                                  ; $4811: $d2 $7e $a7

    jp z, Jump_06c_729d                           ; $4814: $ca $9d $72

    ld c, l                                       ; $4817: $4d
    add [hl]                                      ; $4818: $86
    rra                                           ; $4819: $1f
    ld l, l                                       ; $481a: $6d
    ld [$9343], sp                                ; $481b: $08 $43 $93
    ld b, e                                       ; $481e: $43
    dec a                                         ; $481f: $3d
    sbc e                                         ; $4820: $9b
    ld b, a                                       ; $4821: $47
    dec d                                         ; $4822: $15
    ld e, d                                       ; $4823: $5a
    add hl, bc                                    ; $4824: $09
    add l                                         ; $4825: $85
    cp [hl]                                       ; $4826: $be
    jp nc, Jump_06c_6d77                          ; $4827: $d2 $77 $6d

    adc c                                         ; $482a: $89
    ld d, [hl]                                    ; $482b: $56
    cp [hl]                                       ; $482c: $be
    rst $00                                       ; $482d: $c7
    ld d, $04                                     ; $482e: $16 $04
    db $fd                                        ; $4830: $fd
    jr nc, jr_06c_47bc                            ; $4831: $30 $89

    ldh a, [$c4]                                  ; $4833: $f0 $c4
    sbc [hl]                                      ; $4835: $9e
    ld b, h                                       ; $4836: $44
    db $10                                        ; $4837: $10
    db $f4                                        ; $4838: $f4
    jp z, Jump_06c_7fd8                           ; $4839: $ca $d8 $7f

    ld h, l                                       ; $483c: $65
    db $ec                                        ; $483d: $ec
    ld h, l                                       ; $483e: $65
    ld l, a                                       ; $483f: $6f
    ld c, h                                       ; $4840: $4c
    ld d, [hl]                                    ; $4841: $56
    jp c, $d8ca                                   ; $4842: $da $ca $d8

    ld a, d                                       ; $4845: $7a
    inc hl                                        ; $4846: $23
    and c                                         ; $4847: $a1
    ld [de], a                                    ; $4848: $12
    adc d                                         ; $4849: $8a
    ld a, [hl+]                                   ; $484a: $2a
    dec l                                         ; $484b: $2d
    cp b                                          ; $484c: $b8
    sub e                                         ; $484d: $93
    dec a                                         ; $484e: $3d
    ei                                            ; $484f: $fb
    rra                                           ; $4850: $1f
    ld a, c                                       ; $4851: $79
    and [hl]                                      ; $4852: $a6
    ld e, l                                       ; $4853: $5d
    or $3b                                        ; $4854: $f6 $3b
    push af                                       ; $4856: $f5
    ld h, e                                       ; $4857: $63
    ld l, [hl]                                    ; $4858: $6e
    ld e, c                                       ; $4859: $59
    ld e, c                                       ; $485a: $59
    ld l, d                                       ; $485b: $6a
    ld c, h                                       ; $485c: $4c
    ld e, $b6                                     ; $485d: $1e $b6
    push af                                       ; $485f: $f5
    cp h                                          ; $4860: $bc
    and e                                         ; $4861: $a3
    dec c                                         ; $4862: $0d
    daa                                           ; $4863: $27
    rst $00                                       ; $4864: $c7
    pop de                                        ; $4865: $d1
    ld b, $12                                     ; $4866: $06 $12
    ei                                            ; $4868: $fb
    rra                                           ; $4869: $1f
    ld a, c                                       ; $486a: $79
    and [hl]                                      ; $486b: $a6
    dec a                                         ; $486c: $3d
    ld hl, $618b                                  ; $486d: $21 $8b $61
    ld [hl], h                                    ; $4870: $74
    dec c                                         ; $4871: $0d
    ld h, c                                       ; $4872: $61
    xor b                                         ; $4873: $a8
    ld h, $54                                     ; $4874: $26 $54
    ld b, d                                       ; $4876: $42
    pop de                                        ; $4877: $d1
    ld [hl], b                                    ; $4878: $70
    inc a                                         ; $4879: $3c
    ld e, l                                       ; $487a: $5d
    ld b, l                                       ; $487b: $45
    cp b                                          ; $487c: $b8
    ld c, l                                       ; $487d: $4d
    xor e                                         ; $487e: $ab
    inc e                                         ; $487f: $1c
    rst $10                                       ; $4880: $d7
    ld b, b                                       ; $4881: $40
    ld h, d                                       ; $4882: $62
    cp c                                          ; $4883: $b9
    and e                                         ; $4884: $a3
    ld b, [hl]                                    ; $4885: $46
    ld c, c                                       ; $4886: $49
    ld hl, $468a                                  ; $4887: $21 $8a $46
    ld e, h                                       ; $488a: $5c
    ld b, h                                       ; $488b: $44
    dec a                                         ; $488c: $3d
    ld a, [hl+]                                   ; $488d: $2a
    and c                                         ; $488e: $a1
    ld l, b                                       ; $488f: $68
    sbc [hl]                                      ; $4890: $9e
    adc d                                         ; $4891: $8a
    sub [hl]                                      ; $4892: $96
    xor e                                         ; $4893: $ab
    sbc a                                         ; $4894: $9f
    ld [hl+], a                                   ; $4895: $22
    rst $08                                       ; $4896: $cf
    halt                                          ; $4897: $76
    nop                                           ; $4898: $00
    rst $20                                       ; $4899: $e7
    xor e                                         ; $489a: $ab
    db $db                                        ; $489b: $db
    or [hl]                                       ; $489c: $b6
    ld [hl], l                                    ; $489d: $75
    ld a, [de]                                    ; $489e: $1a
    ld c, b                                       ; $489f: $48
    xor h                                         ; $48a0: $ac
    cp $4e                                        ; $48a1: $fe $4e
    xor c                                         ; $48a3: $a9
    ld c, d                                       ; $48a4: $4a
    ld l, l                                       ; $48a5: $6d
    jr c, jr_06c_48e1                             ; $48a6: $38 $39

    adc [hl]                                      ; $48a8: $8e
    ld [hl], $90                                  ; $48a9: $36 $90
    ld e, b                                       ; $48ab: $58
    xor $a8                                       ; $48ac: $ee $a8
    ld [$a4fb], sp                                ; $48ae: $08 $fb $a4
    scf                                           ; $48b1: $37
    ld c, $37                                     ; $48b2: $0e $37
    ld b, a                                       ; $48b4: $47
    sbc [hl]                                      ; $48b5: $9e
    push af                                       ; $48b6: $f5
    add h                                         ; $48b7: $84
    inc l                                         ; $48b8: $2c
    ld b, [hl]                                    ; $48b9: $46
    jp Jump_06c_71c9                              ; $48ba: $c3 $c9 $71


    or h                                          ; $48bd: $b4
    add c                                         ; $48be: $81
    add h                                         ; $48bf: $84
    db $ec                                        ; $48c0: $ec
    and a                                         ; $48c1: $a7
    ld a, a                                       ; $48c2: $7f
    xor h                                         ; $48c3: $ac
    ld a, [bc]                                    ; $48c4: $0a
    jp hl                                         ; $48c5: $e9


    inc b                                         ; $48c6: $04
    sbc l                                         ; $48c7: $9d
    call nc, $e690                                ; $48c8: $d4 $90 $e6
    reti                                          ; $48cb: $d9


    ld [hl], b                                    ; $48cc: $70
    ld [hl], d                                    ; $48cd: $72
    inc e                                         ; $48ce: $1c
    ld l, l                                       ; $48cf: $6d
    jr nz, jr_06c_48f3                            ; $48d0: $20 $21

    ei                                            ; $48d2: $fb
    xor c                                         ; $48d3: $a9
    and a                                         ; $48d4: $a7
    adc [hl]                                      ; $48d5: $8e
    sub b                                         ; $48d6: $90
    sbc [hl]                                      ; $48d7: $9e
    sub d                                         ; $48d8: $92
    push bc                                       ; $48d9: $c5
    ld a, [hl]                                    ; $48da: $7e
    ld c, d                                       ; $48db: $4a
    ld c, $35                                     ; $48dc: $0e $35

jr_06c_48de:
    sbc [hl]                                      ; $48de: $9e
    inc c                                         ; $48df: $0c
    ld e, e                                       ; $48e0: $5b

jr_06c_48e1:
    rst $08                                       ; $48e1: $cf
    dec [hl]                                      ; $48e2: $35
    ld d, d                                       ; $48e3: $52
    dec de                                        ; $48e4: $1b
    ld c, [hl]                                    ; $48e5: $4e
    adc [hl]                                      ; $48e6: $8e
    and e                                         ; $48e7: $a3
    db $fd                                        ; $48e8: $fd
    rst $38                                       ; $48e9: $ff
    ld c, [hl]                                    ; $48ea: $4e
    sub l                                         ; $48eb: $95
    reti                                          ; $48ec: $d9


    ld c, a                                       ; $48ed: $4f
    ld [hl], l                                    ; $48ee: $75
    inc e                                         ; $48ef: $1c
    db $fc                                        ; $48f0: $fc
    ld l, b                                       ; $48f1: $68
    reti                                          ; $48f2: $d9


jr_06c_48f3:
    inc a                                         ; $48f3: $3c
    dec d                                         ; $48f4: $15
    dec l                                         ; $48f5: $2d
    ld d, a                                       ; $48f6: $57
    ccf                                           ; $48f7: $3f
    ld b, l                                       ; $48f8: $45
    sbc [hl]                                      ; $48f9: $9e
    and d                                         ; $48fa: $a2
    ld [de], a                                    ; $48fb: $12
    adc d                                         ; $48fc: $8a
    jp z, Jump_06c_7571                           ; $48fd: $ca $71 $75

    ld e, b                                       ; $4900: $58
    jp c, Jump_06c_7270                           ; $4901: $da $70 $72

    inc e                                         ; $4904: $1c
    db $ed                                        ; $4905: $ed
    add hl, bc                                    ; $4906: $09
    ld e, c                                       ; $4907: $59
    adc h                                         ; $4908: $8c
    and d                                         ; $4909: $a2
    ld de, $b117                                  ; $490a: $11 $17 $b1
    dec e                                         ; $490d: $1d
    ld d, a                                       ; $490e: $57
    add $4d                                       ; $490f: $c6 $4d
    cpl                                           ; $4911: $2f
    inc [hl]                                      ; $4912: $34
    sub b                                         ; $4913: $90
    ret c                                         ; $4914: $d8

    ld a, h                                       ; $4915: $7c
    adc a                                         ; $4916: $8f
    ld d, [hl]                                    ; $4917: $56
    rst $00                                       ; $4918: $c7
    adc l                                         ; $4919: $8d
    or $11                                        ; $491a: $f6 $11
    push hl                                       ; $491c: $e5
    ld c, [hl]                                    ; $491d: $4e
    cp c                                          ; $491e: $b9
    ld h, $c3                                     ; $491f: $26 $c3
    adc a                                         ; $4921: $8f
    ld a, $f2                                     ; $4922: $3e $f2
    add $01                                       ; $4924: $c6 $01
    rst $20                                       ; $4926: $e7
    xor c                                         ; $4927: $a9
    sub b                                         ; $4928: $90
    ld [c], a                                     ; $4929: $e2
    ld l, c                                       ; $492a: $69
    jr nz, jr_06c_48de                            ; $492b: $20 $b1

    ld sp, hl                                     ; $492d: $f9
    ld e, $ed                                     ; $492e: $1e $ed
    rra                                           ; $4930: $1f
    ld l, [hl]                                    ; $4931: $6e
    or h                                          ; $4932: $b4
    sub c                                         ; $4933: $91
    sub $40                                       ; $4934: $d6 $40
    ld h, d                                       ; $4936: $62
    rst $30                                       ; $4937: $f7
    inc d                                         ; $4938: $14
    ld h, c                                       ; $4939: $61
    sub l                                         ; $493a: $95
    sub e                                         ; $493b: $93
    and e                                         ; $493c: $a3
    and c                                         ; $493d: $a1
    ret                                           ; $493e: $c9


    dec [hl]                                      ; $493f: $35
    ld a, [de]                                    ; $4940: $1a
    db $f4                                        ; $4941: $f4
    inc [hl]                                      ; $4942: $34
    db $db                                        ; $4943: $db
    ld bc, $d637                                  ; $4944: $01 $37 $d6
    add hl, bc                                    ; $4947: $09
    xor $09                                       ; $4948: $ee $09
    ld b, a                                       ; $494a: $47
    ld b, c                                       ; $494b: $41
    jp $8ab1                                      ; $494c: $c3 $b1 $8a


    ldh a, [$1f]                                  ; $494f: $f0 $1f
    db $db                                        ; $4951: $db
    ld c, $e7                                     ; $4952: $0e $e7
    xor c                                         ; $4954: $a9
    call nc, Call_000_3690                        ; $4955: $d4 $90 $36
    dec c                                         ; $4958: $0d
    inc h                                         ; $4959: $24
    sub [hl]                                      ; $495a: $96
    dec sp                                        ; $495b: $3b
    or l                                          ; $495c: $b5
    ld a, c                                       ; $495d: $79
    or h                                          ; $495e: $b4
    ld [hl], d                                    ; $495f: $72
    or $09                                        ; $4960: $f6 $09
    inc h                                         ; $4962: $24
    cp d                                          ; $4963: $ba
    ld h, [hl]                                    ; $4964: $66
    call nc, Call_000_1d51                        ; $4965: $d4 $51 $1d
    ld a, [hl+]                                   ; $4968: $2a
    and c                                         ; $4969: $a1
    db $10                                        ; $496a: $10
    sub h                                         ; $496b: $94
    dec c                                         ; $496c: $0d
    inc h                                         ; $496d: $24
    or $a3                                        ; $496e: $f6 $a3
    add a                                         ; $4970: $87
    ccf                                           ; $4971: $3f
    xor [hl]                                      ; $4972: $ae
    ld a, [c]                                     ; $4973: $f2
    ld a, e                                       ; $4974: $7b
    inc [hl]                                      ; $4975: $34
    and e                                         ; $4976: $a3
    scf                                           ; $4977: $37
    ld h, $2b                                     ; $4978: $26 $2b
    ld l, l                                       ; $497a: $6d
    ld h, l                                       ; $497b: $65
    ld l, h                                       ; $497c: $6c

Jump_06c_497d:
    dec a                                         ; $497d: $3d
    rst $18                                       ; $497e: $df
    xor c                                         ; $497f: $a9
    call Call_06c_53bf                            ; $4980: $cd $bf $53
    db $fd                                        ; $4983: $fd
    sbc l                                         ; $4984: $9d
    add $f1                                       ; $4985: $c6 $f1
    and e                                         ; $4987: $a3
    or l                                          ; $4988: $b5
    or h                                          ; $4989: $b4
    or d                                          ; $498a: $b2
    ld a, [bc]                                    ; $498b: $0a
    ld [$95a0], a                                 ; $498c: $ea $a0 $95
    db $e3                                        ; $498f: $e3
    ld a, [hl+]                                   ; $4990: $2a
    ld l, c                                       ; $4991: $69
    sub c                                         ; $4992: $91
    or a                                          ; $4993: $b7
    pop de                                        ; $4994: $d1
    ld c, b                                       ; $4995: $48
    rst $10                                       ; $4996: $d7
    db $e4                                        ; $4997: $e4
    and b                                         ; $4998: $a0
    dec c                                         ; $4999: $0d
    xor c                                         ; $499a: $a9
    ld a, [hl-]                                   ; $499b: $3a
    ret nc                                        ; $499c: $d0

    ld a, d                                       ; $499d: $7a
    ld a, [hl+]                                   ; $499e: $2a
    ld c, [hl]                                    ; $499f: $4e
    ld b, $1f                                     ; $49a0: $06 $1f
    db $fc                                        ; $49a2: $fc
    rst $20                                       ; $49a3: $e7
    jp nc, $c1ee                                  ; $49a4: $d2 $ee $c1

    db $db                                        ; $49a7: $db
    ld bc, $9037                                  ; $49a8: $01 $37 $90
    inc a                                         ; $49ab: $3c
    ld l, $de                                     ; $49ac: $2e $de
    ld c, e                                       ; $49ae: $4b
    dec d                                         ; $49af: $15
    sub h                                         ; $49b0: $94
    ld a, [de]                                    ; $49b1: $1a
    sub e                                         ; $49b2: $93
    ld b, a                                       ; $49b3: $47
    adc [hl]                                      ; $49b4: $8e
    call nc, Call_06c_69fa                        ; $49b5: $d4 $fa $69
    ld l, b                                       ; $49b8: $68
    bit 6, c                                      ; $49b9: $cb $71
    reti                                          ; $49bb: $d9


    inc d                                         ; $49bc: $14

jr_06c_49bd:
    ld a, c                                       ; $49bd: $79
    or [hl]                                       ; $49be: $b6
    sbc [hl]                                      ; $49bf: $9e
    and a                                         ; $49c0: $a7
    ld [$5ea4], a                                 ; $49c1: $ea $a4 $5e
    sbc $ff                                       ; $49c4: $de $ff
    db $d3                                        ; $49c6: $d3
    or a                                          ; $49c7: $b7
    sub e                                         ; $49c8: $93
    inc de                                        ; $49c9: $13
    xor $f4                                       ; $49ca: $ee $f4
    ld h, e                                       ; $49cc: $63
    inc d                                         ; $49cd: $14
    db $f4                                        ; $49ce: $f4
    db $ed                                        ; $49cf: $ed
    ld h, l                                       ; $49d0: $65
    adc h                                         ; $49d1: $8c
    ld h, e                                       ; $49d2: $63
    push af                                       ; $49d3: $f5
    db $ec                                        ; $49d4: $ec
    push de                                       ; $49d5: $d5
    add hl, sp                                    ; $49d6: $39
    db $fd                                        ; $49d7: $fd
    ld [$ba8b], sp                                ; $49d8: $08 $8b $ba
    push af                                       ; $49db: $f5
    ld a, [$4558]                                 ; $49dc: $fa $58 $45
    ld hl, sp-$71                                 ; $49df: $f8 $8f
    push de                                       ; $49e1: $d5
    cpl                                           ; $49e2: $2f
    ld e, e                                       ; $49e3: $5b
    rst $18                                       ; $49e4: $df
    jp $a13d                                      ; $49e5: $c3 $3d $a1


    ld l, h                                       ; $49e8: $6c
    ld [$3543], sp                                ; $49e9: $08 $43 $35
    ld b, c                                       ; $49ec: $41
    db $eb                                        ; $49ed: $eb
    xor b                                         ; $49ee: $a8
    ret nc                                        ; $49ef: $d0

    add $df                                       ; $49f0: $c6 $df
    jp hl                                         ; $49f2: $e9


    ld a, $a7                                     ; $49f3: $3e $a7
    xor c                                         ; $49f5: $a9
    ld a, [c]                                     ; $49f6: $f2
    ld a, e                                       ; $49f7: $7b
    cp b                                          ; $49f8: $b8
    ld a, [hl+]                                   ; $49f9: $2a
    ld [hl], a                                    ; $49fa: $77
    jp z, Jump_000_1935                           ; $49fb: $ca $35 $19

    ld a, [hl]                                    ; $49fe: $7e
    or h                                          ; $49ff: $b4
    ld hl, $d50c                                  ; $4a00: $21 $0c $d5
    add h                                         ; $4a03: $84
    ld c, d                                       ; $4a04: $4a
    jr z, jr_06c_49bd                             ; $4a05: $28 $b6

    inc bc                                        ; $4a07: $03
    adc a                                         ; $4a08: $8f
    ld c, d                                       ; $4a09: $4a
    db $e4                                        ; $4a0a: $e4
    adc b                                         ; $4a0b: $88
    db $ec                                        ; $4a0c: $ec
    rst $20                                       ; $4a0d: $e7
    or c                                          ; $4a0e: $b1
    ld a, $72                                     ; $4a0f: $3e $72
    ld a, l                                       ; $4a11: $7d
    inc a                                         ; $4a12: $3c
    ld e, l                                       ; $4a13: $5d
    ld c, a                                       ; $4a14: $4f
    add hl, bc                                    ; $4a15: $09
    and $61                                       ; $4a16: $e6 $61
    ld d, l                                       ; $4a18: $55
    ld h, $ad                                     ; $4a19: $26 $ad
    inc d                                         ; $4a1b: $14
    inc hl                                        ; $4a1c: $23
    cp h                                          ; $4a1d: $bc
    sub b                                         ; $4a1e: $90
    db $f4                                        ; $4a1f: $f4
    add hl, bc                                    ; $4a20: $09
    add hl, sp                                    ; $4a21: $39
    ld [hl], d                                    ; $4a22: $72
    ld a, [hl+]                                   ; $4a23: $2a
    and h                                         ; $4a24: $a4
    ld l, e                                       ; $4a25: $6b
    ld l, b                                       ; $4a26: $68
    adc h                                         ; $4a27: $8c
    and e                                         ; $4a28: $a3
    add d                                         ; $4a29: $82
    inc bc                                        ; $4a2a: $03
    scf                                           ; $4a2b: $37
    ld [de], a                                    ; $4a2c: $12
    or h                                          ; $4a2d: $b4
    ld [de], a                                    ; $4a2e: $12
    ld d, $67                                     ; $4a2f: $16 $67
    add a                                         ; $4a31: $87
    ld d, $7b                                     ; $4a32: $16 $7b
    add h                                         ; $4a34: $84
    sub $b3                                       ; $4a35: $d6 $b3
    sub d                                         ; $4a37: $92
    ld [hl], c                                    ; $4a38: $71
    cp c                                          ; $4a39: $b9
    ld a, [bc]                                    ; $4a3a: $0a
    ld l, l                                       ; $4a3b: $6d
    db $ed                                        ; $4a3c: $ed
    ld [c], a                                     ; $4a3d: $e2
    pop de                                        ; $4a3e: $d1
    ld de, $d71c                                  ; $4a3f: $11 $1c $d7
    rst $00                                       ; $4a42: $c7
    ld [bc], a                                    ; $4a43: $02
    adc c                                         ; $4a44: $89
    push de                                       ; $4a45: $d5
    ld c, c                                       ; $4a46: $49
    sbc l                                         ; $4a47: $9d
    ld e, [hl]                                    ; $4a48: $5e
    ld de, $bc23                                  ; $4a49: $11 $23 $bc
    sub b                                         ; $4a4c: $90
    ld a, d                                       ; $4a4d: $7a
    add e                                         ; $4a4e: $83
    dec sp                                        ; $4a4f: $3b
    db $e3                                        ; $4a50: $e3
    ld e, b                                       ; $4a51: $58
    dec a                                         ; $4a52: $3d
    ld a, e                                       ; $4a53: $7b
    ld [hl], l                                    ; $4a54: $75
    ld c, [hl]                                    ; $4a55: $4e
    ccf                                           ; $4a56: $3f
    jp nz, $1ea2                                  ; $4a57: $c2 $a2 $1e

    rst $20                                       ; $4a5a: $e7
    push af                                       ; $4a5b: $f5
    sub e                                         ; $4a5c: $93
    ld [$cf59], a                                 ; $4a5d: $ea $59 $cf
    db $db                                        ; $4a60: $db
    ld b, l                                       ; $4a61: $45
    ld l, a                                       ; $4a62: $6f
    db $d3                                        ; $4a63: $d3
    and [hl]                                      ; $4a64: $a6
    ld [hl], h                                    ; $4a65: $74
    dec c                                         ; $4a66: $0d
    inc h                                         ; $4a67: $24
    db $ec                                        ; $4a68: $ec
    add c                                         ; $4a69: $81
    ld b, h                                       ; $4a6a: $44
    db $eb                                        ; $4a6b: $eb
    and h                                         ; $4a6c: $a4
    ld l, b                                       ; $4a6d: $68
    ld d, e                                       ; $4a6e: $53
    add hl, hl                                    ; $4a6f: $29
    ld b, [hl]                                    ; $4a70: $46
    ld a, b                                       ; $4a71: $78
    ld hl, $076d                                  ; $4a72: $21 $6d $07
    rra                                           ; $4a75: $1f
    db $fd                                        ; $4a76: $fd
    ld c, [hl]                                    ; $4a77: $4e
    push bc                                       ; $4a78: $c5
    pop bc                                        ; $4a79: $c1
    call Call_000_28f0                            ; $4a7a: $cd $f0 $28
    ld d, l                                       ; $4a7d: $55
    ld c, [hl]                                    ; $4a7e: $4e
    or $cb                                        ; $4a7f: $f6 $cb
    ld c, a                                       ; $4a81: $4f
    jp hl                                         ; $4a82: $e9


    xor d                                         ; $4a83: $aa
    add hl, bc                                    ; $4a84: $09
    sub l                                         ; $4a85: $95
    db $10                                        ; $4a86: $10
    ld a, [c]                                     ; $4a87: $f2
    ld [hl+], a                                   ; $4a88: $22
    ld c, $9f                                     ; $4a89: $0e $9f
    inc h                                         ; $4a8b: $24
    halt                                          ; $4a8c: $76
    ld a, d                                       ; $4a8d: $7a
    ld b, l                                       ; $4a8e: $45
    adc h                                         ; $4a8f: $8c
    ldh a, [rSCY]                                 ; $4a90: $f0 $42
    ld [$ee0d], a                                 ; $4a92: $ea $0d $ee
    adc h                                         ; $4a95: $8c
    ld h, e                                       ; $4a96: $63
    call Call_06c_53bf                            ; $4a97: $cd $bf $53
    add hl, sp                                    ; $4a9a: $39
    ld e, c                                       ; $4a9b: $59
    rst $10                                       ; $4a9c: $d7
    add hl, bc                                    ; $4a9d: $09
    db $fd                                        ; $4a9e: $fd
    db $d3                                        ; $4a9f: $d3
    inc b                                         ; $4aa0: $04

Call_06c_4aa1:
    rlca                                          ; $4aa1: $07
    rst $10                                       ; $4aa2: $d7
    rst $00                                       ; $4aa3: $c7
    cp d                                          ; $4aa4: $ba
    ld d, h                                       ; $4aa5: $54
    and a                                         ; $4aa6: $a7
    rla                                           ; $4aa7: $17
    xor d                                         ; $4aa8: $aa
    rst $30                                       ; $4aa9: $f7
    call nc, $e1b1                                ; $4aaa: $d4 $b1 $e1
    jr jr_06c_4b0c                                ; $4aad: $18 $5d

    inc sp                                        ; $4aaf: $33
    ld a, [hl+]                                   ; $4ab0: $2a
    ld hl, $45e4                                  ; $4ab1: $21 $e4 $45
    inc [hl]                                      ; $4ab4: $34
    sub b                                         ; $4ab5: $90
    ret c                                         ; $4ab6: $d8

    rst $38                                       ; $4ab7: $ff
    and h                                         ; $4ab8: $a4
    ld a, [$9b75]                                 ; $4ab9: $fa $75 $9b
    halt                                          ; $4abc: $76
    nop                                           ; $4abd: $00
    rst $20                                       ; $4abe: $e7
    xor [hl]                                      ; $4abf: $ae
    add c                                         ; $4ac0: $81
    call nz, $284a                                ; $4ac1: $c4 $4a $28
    ld [$abd9], a                                 ; $4ac4: $ea $d9 $ab
    ld [hl], e                                    ; $4ac7: $73
    ld a, [$1611]                                 ; $4ac8: $fa $11 $16
    or l                                          ; $4acb: $b5
    sbc [hl]                                      ; $4acc: $9e
    ld a, a                                       ; $4acd: $7f
    jp c, Jump_06c_54ef                           ; $4ace: $da $ef $54

    or h                                          ; $4ad1: $b4
    inc h                                         ; $4ad2: $24
    ld l, h                                       ; $4ad3: $6c
    ld a, e                                       ; $4ad4: $7b
    db $e4                                        ; $4ad5: $e4
    nop                                           ; $4ad6: $00
    ld d, a                                       ; $4ad7: $57
    ld l, c                                       ; $4ad8: $69
    ld l, [hl]                                    ; $4ad9: $6e
    ld c, l                                       ; $4ada: $4d
    ld h, [hl]                                    ; $4adb: $66
    rst $18                                       ; $4adc: $df
    dec [hl]                                      ; $4add: $35
    db $e4                                        ; $4ade: $e4
    inc de                                        ; $4adf: $13
    db $ed                                        ; $4ae0: $ed
    jp nc, $ef01                                  ; $4ae1: $d2 $01 $ef

    jp c, $ad12                                   ; $4ae4: $da $12 $ad

    ld a, h                                       ; $4ae7: $7c
    adc a                                         ; $4ae8: $8f
    dec l                                         ; $4ae9: $2d
    ld e, h                                       ; $4aea: $5c
    ld a, [hl-]                                   ; $4aeb: $3a
    nop                                           ; $4aec: $00
    ld d, a                                       ; $4aed: $57
    ld h, c                                       ; $4aee: $61
    or $53                                        ; $4aef: $f6 $53
    xor a                                         ; $4af1: $af
    ld c, a                                       ; $4af2: $4f
    adc h                                         ; $4af3: $8c
    or h                                          ; $4af4: $b4
    ld c, e                                       ; $4af5: $4b
    rlca                                          ; $4af6: $07
    scf                                           ; $4af7: $37
    ld h, $2b                                     ; $4af8: $26 $2b
    ld l, l                                       ; $4afa: $6d
    ld h, l                                       ; $4afb: $65
    inc [hl]                                      ; $4afc: $34
    rst $38                                       ; $4afd: $ff
    adc [hl]                                      ; $4afe: $8e
    and b                                         ; $4aff: $a0
    scf                                           ; $4b00: $37
    ld h, $2b                                     ; $4b01: $26 $2b
    ld l, l                                       ; $4b03: $6d
    ld h, l                                       ; $4b04: $65
    inc [hl]                                      ; $4b05: $34
    rst $38                                       ; $4b06: $ff
    ld c, [hl]                                    ; $4b07: $4e
    or a                                          ; $4b08: $b7
    ld l, l                                       ; $4b09: $6d
    dec sp                                        ; $4b0a: $3b
    nop                                           ; $4b0b: $00

jr_06c_4b0c:
    ld l, a                                       ; $4b0c: $6f
    adc l                                         ; $4b0d: $8d
    inc de                                        ; $4b0e: $13
    ld d, h                                       ; $4b0f: $54
    reti                                          ; $4b10: $d9


    rst $38                                       ; $4b11: $ff
    ret z                                         ; $4b12: $c8

    or e                                          ; $4b13: $b3
    ld b, [hl]                                    ; $4b14: $46
    cp d                                          ; $4b15: $ba
    ld c, d                                       ; $4b16: $4a
    ld e, d                                       ; $4b17: $5a
    db $e4                                        ; $4b18: $e4
    ld l, l                                       ; $4b19: $6d
    ld [$5a2a], sp                                ; $4b1a: $08 $2a $5a
    ld [de], a                                    ; $4b1d: $12
    ld d, $5c                                     ; $4b1e: $16 $5c
    rst $00                                       ; $4b20: $c7
    ld e, l                                       ; $4b21: $5d
    inc a                                         ; $4b22: $3c
    sub $8c                                       ; $4b23: $d6 $8c
    cp [hl]                                       ; $4b25: $be
    ei                                            ; $4b26: $fb
    jp hl                                         ; $4b27: $e9


    ld a, e                                       ; $4b28: $7b
    rst $28                                       ; $4b29: $ef
    cp h                                          ; $4b2a: $bc
    rst $30                                       ; $4b2b: $f7
    pop de                                        ; $4b2c: $d1
    rst $08                                       ; $4b2d: $cf
    sbc a                                         ; $4b2e: $9f
    cp [hl]                                       ; $4b2f: $be
    ld [hl], a                                    ; $4b30: $77
    ld sp, hl                                     ; $4b31: $f9
    jp nc, $9701                                  ; $4b32: $d2 $01 $97

    ei                                            ; $4b35: $fb
    xor [hl]                                      ; $4b36: $ae
    dec l                                         ; $4b37: $2d
    pop de                                        ; $4b38: $d1
    jp z, $d8f7                                   ; $4b39: $ca $f7 $d8

    ld b, d                                       ; $4b3c: $42
    cpl                                           ; $4b3d: $2f
    inc d                                         ; $4b3e: $14
    sub l                                         ; $4b3f: $95
    ld d, b                                       ; $4b40: $50
    ld d, h                                       ; $4b41: $54
    jp nc, Jump_000_1a22                          ; $4b42: $d2 $22 $1a

    jp nz, $ffd0                                  ; $4b45: $c2 $d0 $ff

    ret z                                         ; $4b48: $c8

    inc sp                                        ; $4b49: $33
    ld b, c                                       ; $4b4a: $41
    xor a                                         ; $4b4b: $af
    jp nz, $a7ec                                  ; $4b4c: $c2 $ec $a7

    xor l                                         ; $4b4f: $ad
    sub a                                         ; $4b50: $97
    ld c, a                                       ; $4b51: $4f
    ld h, e                                       ; $4b52: $63
    add sp, -$7b                                  ; $4b53: $e8 $85
    ld a, [hl-]                                   ; $4b55: $3a
    xor $e2                                       ; $4b56: $ee $e2
    or c                                          ; $4b58: $b1
    ld [hl-], a                                   ; $4b59: $32
    set 1, c                                      ; $4b5a: $cb $c9
    pop de                                        ; $4b5c: $d1
    ld h, b                                       ; $4b5d: $60
    push de                                       ; $4b5e: $d5
    add h                                         ; $4b5f: $84
    ld a, [hl-]                                   ; $4b60: $3a
    ld a, [hl+]                                   ; $4b61: $2a
    or [hl]                                       ; $4b62: $b6
    inc bc                                        ; $4b63: $03
    rst $20                                       ; $4b64: $e7
    ld e, c                                       ; $4b65: $59
    ld c, [hl]                                    ; $4b66: $4e
    adc [hl]                                      ; $4b67: $8e
    add $6a                                       ; $4b68: $c6 $6a
    ld b, d                                       ; $4b6a: $42
    dec e                                         ; $4b6b: $1d
    dec d                                         ; $4b6c: $15
    add d                                         ; $4b6d: $82
    ld e, [hl]                                    ; $4b6e: $5e
    sbc a                                         ; $4b6f: $9f
    jr jr_06c_4bdb                                ; $4b70: $18 $69

    add d                                         ; $4b72: $82
    ld c, [hl]                                    ; $4b73: $4e
    ld [$e47f], a                                 ; $4b74: $ea $7f $e4
    ld e, c                                       ; $4b77: $59
    cp a                                          ; $4b78: $bf
    rrca                                          ; $4b79: $0f
    ld l, [hl]                                    ; $4b7a: $6e
    jr nz, @-$2d                                  ; $4b7b: $20 $d1

    ld a, [hl+]                                   ; $4b7d: $2a
    rst $00                                       ; $4b7e: $c7
    pop af                                        ; $4b7f: $f1
    ld [hl+], a                                   ; $4b80: $22
    xor h                                         ; $4b81: $ac
    ld l, b                                       ; $4b82: $68
    ld c, b                                       ; $4b83: $48
    di                                            ; $4b84: $f3
    or h                                          ; $4b85: $b4
    add [hl]                                      ; $4b86: $86
    sub e                                         ; $4b87: $93
    db $e3                                        ; $4b88: $e3
    add sp, $1b                                   ; $4b89: $e8 $1b
    rlca                                          ; $4b8b: $07
    sub a                                         ; $4b8c: $97
    ld d, a                                       ; $4b8d: $57
    or a                                          ; $4b8e: $b7
    ld l, l                                       ; $4b8f: $6d
    xor e                                         ; $4b90: $ab
    ld e, e                                       ; $4b91: $5b
    ld e, c                                       ; $4b92: $59
    adc h                                         ; $4b93: $8c
    ld c, d                                       ; $4b94: $4a
    ld [$1179], sp                                ; $4b95: $08 $79 $11
    db $dd                                        ; $4b98: $dd
    or [hl]                                       ; $4b99: $b6
    db $ed                                        ; $4b9a: $ed
    nop                                           ; $4b9b: $00
    rst $20                                       ; $4b9c: $e7
    ld e, c                                       ; $4b9d: $59
    ld c, [hl]                                    ; $4b9e: $4e
    adc [hl]                                      ; $4b9f: $8e
    add $6a                                       ; $4ba0: $c6 $6a
    ld b, d                                       ; $4ba2: $42
    dec e                                         ; $4ba3: $1d
    dec d                                         ; $4ba4: $15
    add d                                         ; $4ba5: $82
    ld e, [hl]                                    ; $4ba6: $5e
    add l                                         ; $4ba7: $85
    reti                                          ; $4ba8: $d9


    ld c, a                                       ; $4ba9: $4f
    add d                                         ; $4baa: $82
    ld [hl-], a                                   ; $4bab: $32
    dec [hl]                                      ; $4bac: $35
    ld [hl-], a                                   ; $4bad: $32
    adc e                                         ; $4bae: $8b
    and a                                         ; $4baf: $a7
    add c                                         ; $4bb0: $81
    call nz, Call_06c_7542                        ; $4bb1: $c4 $42 $75
    ld l, c                                       ; $4bb4: $69
    ld e, h                                       ; $4bb5: $5c
    ld d, [hl]                                    ; $4bb6: $56
    ld d, h                                       ; $4bb7: $54
    jp nc, $bb96                                  ; $4bb8: $d2 $96 $bb

    cpl                                           ; $4bbb: $2f
    cpl                                           ; $4bbc: $2f
    ld l, h                                       ; $4bbd: $6c
    rlca                                          ; $4bbe: $07
    rst $10                                       ; $4bbf: $d7
    sbc [hl]                                      ; $4bc0: $9e
    ld [hl], b                                    ; $4bc1: $70
    ld c, a                                       ; $4bc2: $4f
    jr c, @-$10                                   ; $4bc3: $38 $ee

    ld [c], a                                     ; $4bc5: $e2
    or c                                          ; $4bc6: $b1
    ld [hl-], a                                   ; $4bc7: $32
    set 1, c                                      ; $4bc8: $cb $c9
    pop de                                        ; $4bca: $d1
    ld h, b                                       ; $4bcb: $60
    push de                                       ; $4bcc: $d5
    add h                                         ; $4bcd: $84
    cp d                                          ; $4bce: $ba
    daa                                           ; $4bcf: $27
    call c, $8e13                                 ; $4bd0: $dc $13 $8e
    adc d                                         ; $4bd3: $8a
    ld l, [hl]                                    ; $4bd4: $6e
    db $db                                        ; $4bd5: $db
    sub $9c                                       ; $4bd6: $d6 $9c
    or d                                          ; $4bd8: $b2
    ld b, h                                       ; $4bd9: $44
    sub l                                         ; $4bda: $95

jr_06c_4bdb:
    ld d, l                                       ; $4bdb: $55
    ld [$40d9], sp                                ; $4bdc: $08 $d9 $40
    and d                                         ; $4bdf: $a2
    dec hl                                        ; $4be0: $2b
    dec [hl]                                      ; $4be1: $35
    ld b, $d7                                     ; $4be2: $06 $d7
    or e                                          ; $4be4: $b3
    or e                                          ; $4be5: $b3
    adc e                                         ; $4be6: $8b
    and a                                         ; $4be7: $a7
    ld [hl], h                                    ; $4be8: $74
    db $fd                                        ; $4be9: $fd
    adc a                                         ; $4bea: $8f
    inc a                                         ; $4beb: $3c
    db $db                                        ; $4bec: $db
    ld c, $97                                     ; $4bed: $0e $97
    rst $30                                       ; $4bef: $f7
    ld d, e                                       ; $4bf0: $53
    jp z, Jump_000_3dda                           ; $4bf1: $ca $da $3d

    sbc l                                         ; $4bf4: $9d
    ld h, b                                       ; $4bf5: $60
    call nc, $f67a                                ; $4bf6: $d4 $7a $f6
    ld [$7e9c], a                                 ; $4bf9: $ea $9c $7e
    add h                                         ; $4bfc: $84
    ld b, l                                       ; $4bfd: $45
    dec l                                         ; $4bfe: $2d
    ld d, [hl]                                    ; $4bff: $56
    or $a8                                        ; $4c00: $f6 $a8
    cp $4e                                        ; $4c02: $fe $4e
    ld b, e                                       ; $4c04: $43
    sbc e                                         ; $4c05: $9b
    dec h                                         ; $4c06: $25
    ld e, h                                       ; $4c07: $5c
    ld a, [hl]                                    ; $4c08: $7e
    or h                                          ; $4c09: $b4
    ld hl, $fd0c                                  ; $4c0a: $21 $0c $fd
    adc a                                         ; $4c0d: $8f
    inc a                                         ; $4c0e: $3c
    inc de                                        ; $4c0f: $13
    db $f4                                        ; $4c10: $f4
    ld a, [hl+]                                   ; $4c11: $2a
    call z, $da7e                                 ; $4c12: $cc $7e $da
    ld c, $e7                                     ; $4c15: $0e $e7
    ld a, [de]                                    ; $4c17: $1a
    pop de                                        ; $4c18: $d1
    dec bc                                        ; $4c19: $0b
    ld b, l                                       ; $4c1a: $45
    dec e                                         ; $4c1b: $1d
    dec d                                         ; $4c1c: $15
    push af                                       ; $4c1d: $f5
    add sp, -$45                                  ; $4c1e: $e8 $bb
    or [hl]                                       ; $4c20: $b6
    ld b, h                                       ; $4c21: $44
    dec hl                                        ; $4c22: $2b
    rst $18                                       ; $4c23: $df
    ld h, e                                       ; $4c24: $63
    dec bc                                        ; $4c25: $0b
    ld l, a                                       ; $4c26: $6f
    inc e                                         ; $4c27: $1c
    rra                                           ; $4c28: $1f
    db $fd                                        ; $4c29: $fd
    adc [hl]                                      ; $4c2a: $8e
    and b                                         ; $4c2b: $a0
    call nc, Call_06c_5e88                        ; $4c2c: $d4 $88 $5e
    xor b                                         ; $4c2f: $a8
    ld b, a                                       ; $4c30: $47
    ccf                                           ; $4c31: $3f
    ld c, h                                       ; $4c32: $4c
    ld [hl+], a                                   ; $4c33: $22
    inc a                                         ; $4c34: $3c
    pop af                                        ; $4c35: $f1
    ld h, c                                       ; $4c36: $61
    ld [de], a                                    ; $4c37: $12
    ld h, c                                       ; $4c38: $61
    dec sp                                        ; $4c39: $3b
    nop                                           ; $4c3a: $00
    rra                                           ; $4c3b: $1f
    ld h, $11                                     ; $4c3c: $26 $11
    sbc [hl]                                      ; $4c3e: $9e
    ret c                                         ; $4c3f: $d8

    sub e                                         ; $4c40: $93
    ld [$50bd], sp                                ; $4c41: $08 $bd $50
    call nc, $1771                                ; $4c44: $d4 $71 $17
    adc a                                         ; $4c47: $8f
    ld e, l                                       ; $4c48: $5d
    ld a, [hl-]                                   ; $4c49: $3a
    nop                                           ; $4c4a: $00
    ld l, a                                       ; $4c4b: $6f
    ld d, e                                       ; $4c4c: $53
    ld h, l                                       ; $4c4d: $65
    jp c, Jump_000_0a43                           ; $4c4e: $da $43 $0a

    ld c, d                                       ; $4c51: $4a
    adc l                                         ; $4c52: $8d
    add sp, -$7b                                  ; $4c53: $e8 $85
    ld a, d                                       ; $4c55: $7a
    db $f4                                        ; $4c56: $f4
    jp z, Jump_06c_7fd8                           ; $4c57: $ca $d8 $7f

    ld h, l                                       ; $4c5a: $65
    db $ec                                        ; $4c5b: $ec
    db $db                                        ; $4c5c: $db
    ld bc, $ad1f                                  ; $4c5d: $01 $1f $ad
    ld a, h                                       ; $4c60: $7c
    ld c, d                                       ; $4c61: $4a
    rla                                           ; $4c62: $17
    ld e, h                                       ; $4c63: $5c
    rst $38                                       ; $4c64: $ff
    call z, Call_06c_4592                         ; $4c65: $cc $92 $45
    xor a                                         ; $4c68: $af
    adc h                                         ; $4c69: $8c
    db $fd                                        ; $4c6a: $fd
    ld d, a                                       ; $4c6b: $57
    add $7e                                       ; $4c6c: $c6 $7e
    jp hl                                         ; $4c6e: $e9


    nop                                           ; $4c6f: $00
    scf                                           ; $4c70: $37
    ld l, b                                       ; $4c71: $68
    pop bc                                        ; $4c72: $c1
    dec c                                         ; $4c73: $0d
    inc h                                         ; $4c74: $24
    ld d, $95                                     ; $4c75: $16 $95
    ld d, b                                       ; $4c77: $50
    db $f4                                        ; $4c78: $f4
    ld b, d                                       ; $4c79: $42
    db $e3                                        ; $4c7a: $e3
    rst $28                                       ; $4c7b: $ef
    ld d, h                                       ; $4c7c: $54
    adc b                                         ; $4c7d: $88
    ld d, e                                       ; $4c7e: $53
    jp z, $e117                                   ; $4c7f: $ca $17 $e1

    pop de                                        ; $4c82: $d1
    ld b, b                                       ; $4c83: $40
    ld b, d                                       ; $4c84: $42
    adc [hl]                                      ; $4c85: $8e
    ld d, e                                       ; $4c86: $53
    ld l, d                                       ; $4c87: $6a
    ld b, h                                       ; $4c88: $44
    dec e                                         ; $4c89: $1d
    dec d                                         ; $4c8a: $15
    ld l, a                                       ; $4c8b: $6f
    inc e                                         ; $4c8c: $1c
    rst $20                                       ; $4c8d: $e7
    ld a, [de]                                    ; $4c8e: $1a
    pop de                                        ; $4c8f: $d1
    dec bc                                        ; $4c90: $0b
    ld b, l                                       ; $4c91: $45
    dec e                                         ; $4c92: $1d
    dec d                                         ; $4c93: $15
    push af                                       ; $4c94: $f5
    add sp, -$73                                  ; $4c95: $e8 $8d
    ret                                           ; $4c97: $c9


    ld c, d                                       ; $4c98: $4a
    ld e, e                                       ; $4c99: $5b
    add hl, de                                    ; $4c9a: $19
    sub a                                         ; $4c9b: $97
    ld c, $97                                     ; $4c9c: $0e $97
    ld a, e                                       ; $4c9e: $7b
    ld h, e                                       ; $4c9f: $63
    or d                                          ; $4ca0: $b2
    jp nc, Jump_06c_4656                          ; $4ca1: $d2 $56 $46

    cpl                                           ; $4ca4: $2f
    inc d                                         ; $4ca5: $14
    ld [hl], l                                    ; $4ca6: $75
    call c, Call_06c_63c5                         ; $4ca7: $dc $c5 $63
    push af                                       ; $4caa: $f5
    ld l, h                                       ; $4cab: $6c
    inc e                                         ; $4cac: $1c
    rrca                                          ; $4cad: $0f
    cp l                                          ; $4cae: $bd
    ld [hl], h                                    ; $4caf: $74
    nop                                           ; $4cb0: $00
    xor a                                         ; $4cb1: $af
    sub a                                         ; $4cb2: $97
    dec sp                                        ; $4cb3: $3b
    dec b                                         ; $4cb4: $05
    db $fd                                        ; $4cb5: $fd
    cp b                                          ; $4cb6: $b8
    ld d, a                                       ; $4cb7: $57
    ld h, c                                       ; $4cb8: $61
    or $53                                        ; $4cb9: $f6 $53
    xor a                                         ; $4cbb: $af
    ld c, a                                       ; $4cbc: $4f
    adc h                                         ; $4cbd: $8c
    or h                                          ; $4cbe: $b4
    ld c, e                                       ; $4cbf: $4b
    rlca                                          ; $4cc0: $07
    sbc a                                         ; $4cc1: $9f
    inc h                                         ; $4cc2: $24
    ld [hl], $64                                  ; $4cc3: $36 $64
    ld b, [hl]                                    ; $4cc5: $46
    inc bc                                        ; $4cc6: $03
    adc c                                         ; $4cc7: $89
    call Call_06c_53bf                            ; $4cc8: $cd $bf $53
    ld [hl], c                                    ; $4ccb: $71
    ld [hl], b                                    ; $4ccc: $70
    sub e                                         ; $4ccd: $93
    ld b, e                                       ; $4cce: $43
    dec e                                         ; $4ccf: $1d
    dec d                                         ; $4cd0: $15
    push af                                       ; $4cd1: $f5
    ld l, h                                       ; $4cd2: $6c
    or h                                          ; $4cd3: $b4
    ld c, c                                       ; $4cd4: $49
    or a                                          ; $4cd5: $b7
    and b                                         ; $4cd6: $a0
    dec c                                         ; $4cd7: $0d
    ld h, c                                       ; $4cd8: $61
    add sp, $7f                                   ; $4cd9: $e8 $7f
    db $e4                                        ; $4cdb: $e4
    sbc c                                         ; $4cdc: $99
    and b                                         ; $4cdd: $a0
    rst $10                                       ; $4cde: $d7
    daa                                           ; $4cdf: $27
    ld b, [hl]                                    ; $4ce0: $46
    jp c, Jump_000_0076                           ; $4ce1: $da $76 $00

    ld d, a                                       ; $4ce4: $57
    ldh a, [$c7]                                  ; $4ce5: $f0 $c7
    ld l, $e6                                     ; $4ce7: $2e $e6
    or d                                          ; $4ce9: $b2
    jp hl                                         ; $4cea: $e9


    ld b, a                                       ; $4ceb: $47
    ld c, e                                       ; $4cec: $4b
    adc d                                         ; $4ced: $8a
    ld h, a                                       ; $4cee: $67
    add a                                         ; $4cef: $87
    sub $b3                                       ; $4cf0: $d6 $b3
    rst $10                                       ; $4cf2: $d7
    sub [hl]                                      ; $4cf3: $96
    db $d3                                        ; $4cf4: $d3
    sbc a                                         ; $4cf5: $9f
    sbc [hl]                                      ; $4cf6: $9e
    cp b                                          ; $4cf7: $b8
    ld a, $16                                     ; $4cf8: $3e $16
    xor [hl]                                      ; $4cfa: $ae
    ld a, h                                       ; $4cfb: $7c
    adc d                                         ; $4cfc: $8a
    sub e                                         ; $4cfd: $93
    dec b                                         ; $4cfe: $05
    dec d                                         ; $4cff: $15
    ld hl, $a847                                  ; $4d00: $21 $47 $a8
    ld b, e                                       ; $4d03: $43
    adc l                                         ; $4d04: $8d
    cp d                                          ; $4d05: $ba
    inc a                                         ; $4d06: $3c
    ld [hl], e                                    ; $4d07: $73
    ld h, h                                       ; $4d08: $64
    dec a                                         ; $4d09: $3d
    ld a, [de]                                    ; $4d0a: $1a
    rst $00                                       ; $4d0b: $c7
    adc h                                         ; $4d0c: $8c
    push af                                       ; $4d0d: $f5
    add sp, -$45                                  ; $4d0e: $e8 $bb
    or [hl]                                       ; $4d10: $b6
    ld b, h                                       ; $4d11: $44
    dec hl                                        ; $4d12: $2b
    rst $18                                       ; $4d13: $df
    ld h, e                                       ; $4d14: $63
    dec bc                                        ; $4d15: $0b
    ld e, e                                       ; $4d16: $5b
    ei                                            ; $4d17: $fb
    pop de                                        ; $4d18: $d1
    inc [hl]                                      ; $4d19: $34
    sub b                                         ; $4d1a: $90
    ret c                                         ; $4d1b: $d8

    ld [hl], b                                    ; $4d1c: $70
    ld d, h                                       ; $4d1d: $54
    and a                                         ; $4d1e: $a7
    ld hl, sp+$3e                                 ; $4d1f: $f8 $3e
    ld sp, hl                                     ; $4d21: $f9
    ldh [$27], a                                  ; $4d22: $e0 $27
    or $79                                        ; $4d24: $f6 $79
    db $e3                                        ; $4d26: $e3
    nop                                           ; $4d27: $00
    scf                                           ; $4d28: $37
    sub [hl]                                      ; $4d29: $96
    inc de                                        ; $4d2a: $13
    call nc, $22b3                                ; $4d2b: $d4 $b3 $22
    call nz, $fad9                                ; $4d2e: $c4 $d9 $fa
    adc $92                                       ; $4d31: $ce $92
    ld d, e                                       ; $4d33: $53
    ld de, $75f7                                  ; $4d34: $11 $f7 $75
    cp e                                          ; $4d37: $bb
    ld [hl], h                                    ; $4d38: $74
    adc l                                         ; $4d39: $8d
    ld h, a                                       ; $4d3a: $67
    ld c, a                                       ; $4d3b: $4f
    db $ec                                        ; $4d3c: $ec
    ld d, e                                       ; $4d3d: $53
    add hl, sp                                    ; $4d3e: $39
    ld a, c                                       ; $4d3f: $79
    ld d, h                                       ; $4d40: $54
    adc $76                                       ; $4d41: $ce $76
    nop                                           ; $4d43: $00
    db $db                                        ; $4d44: $db
    or [hl]                                       ; $4d45: $b6
    dec e                                         ; $4d46: $1d
    scf                                           ; $4d47: $37
    ld b, a                                       ; $4d48: $47
    sbc [hl]                                      ; $4d49: $9e
    dec [hl]                                      ; $4d4a: $35
    add h                                         ; $4d4b: $84
    ld d, c                                       ; $4d4c: $51
    or d                                          ; $4d4d: $b2
    ld c, d                                       ; $4d4e: $4a
    ld l, e                                       ; $4d4f: $6b
    ld [hl], d                                    ; $4d50: $72
    dec d                                         ; $4d51: $15
    adc [hl]                                      ; $4d52: $8e
    db $eb                                        ; $4d53: $eb
    add hl, bc                                    ; $4d54: $09
    ld [hl], $71                                  ; $4d55: $36 $71
    inc b                                         ; $4d57: $04
    ld [hl], l                                    ; $4d58: $75
    ret nc                                        ; $4d59: $d0

    ld d, d                                       ; $4d5a: $52
    inc hl                                        ; $4d5b: $23
    sbc d                                         ; $4d5c: $9a
    ld a, a                                       ; $4d5d: $7f
    and a                                         ; $4d5e: $a7
    rla                                           ; $4d5f: $17
    adc d                                         ; $4d60: $8a
    ld l, d                                       ; $4d61: $6a
    ld b, d                                       ; $4d62: $42
    dec e                                         ; $4d63: $1d
    dec d                                         ; $4d64: $15
    db $db                                        ; $4d65: $db
    ld bc, $fd1f                                  ; $4d66: $01 $1f $fd
    ld c, [hl]                                    ; $4d69: $4e
    cpl                                           ; $4d6a: $2f
    inc d                                         ; $4d6b: $14
    push de                                       ; $4d6c: $d5
    add h                                         ; $4d6d: $84
    ld a, [hl-]                                   ; $4d6e: $3a
    ld a, [hl+]                                   ; $4d6f: $2a
    cp d                                          ; $4d70: $ba
    ld l, l                                       ; $4d71: $6d
    ld e, e                                       ; $4d72: $5b
    inc bc                                        ; $4d73: $03
    adc c                                         ; $4d74: $89
    adc l                                         ; $4d75: $8d
    or [hl]                                       ; $4d76: $b6
    inc [hl]                                      ; $4d77: $34
    or d                                          ; $4d78: $b2
    db $db                                        ; $4d79: $db
    or [hl]                                       ; $4d7a: $b6
    dec e                                         ; $4d7b: $1d
    scf                                           ; $4d7c: $37

Jump_06c_4d7d:
    sub [hl]                                      ; $4d7d: $96
    inc de                                        ; $4d7e: $13
    sub h                                         ; $4d7f: $94
    xor d                                         ; $4d80: $aa
    xor b                                         ; $4d81: $a8
    and e                                         ; $4d82: $a3
    cp d                                          ; $4d83: $ba
    cp c                                          ; $4d84: $b9
    call nc, $8d73                                ; $4d85: $d4 $73 $8d
    ld [hl], b                                    ; $4d88: $70
    and e                                         ; $4d89: $a3
    adc l                                         ; $4d8a: $8d
    cp a                                          ; $4d8b: $bf
    ld d, e                                       ; $4d8c: $53
    ld de, $75f7                                  ; $4d8d: $11 $f7 $75
    sbc e                                         ; $4d90: $9b
    jp c, $ac70                                   ; $4d91: $da $70 $ac

    rst $38                                       ; $4d94: $ff
    sub c                                         ; $4d95: $91
    ld h, a                                       ; $4d96: $67
    ld d, l                                       ; $4d97: $55
    ld e, d                                       ; $4d98: $5a
    sub e                                         ; $4d99: $93
    xor e                                         ; $4d9a: $ab
    ld h, a                                       ; $4d9b: $67
    di                                            ; $4d9c: $f3
    dec a                                         ; $4d9d: $3d
    ld a, d                                       ; $4d9e: $7a
    jp hl                                         ; $4d9f: $e9


    nop                                           ; $4da0: $00
    ld d, a                                       ; $4da1: $57
    ld h, c                                       ; $4da2: $61
    or $d3                                        ; $4da3: $f6 $d3
    and l                                         ; $4da5: $a5
    ld e, [hl]                                    ; $4da6: $5e
    ld c, $a4                                     ; $4da7: $0e $a4
    ld [hl], l                                    ; $4da9: $75
    jp hl                                         ; $4daa: $e9


    nop                                           ; $4dab: $00
    rra                                           ; $4dac: $1f
    dec bc                                        ; $4dad: $0b
    ld l, l                                       ; $4dae: $6d
    sbc l                                         ; $4daf: $9d
    ldh [$67], a                                  ; $4db0: $e0 $67
    db $eb                                        ; $4db2: $eb
    ld a, c                                       ; $4db3: $79
    ld a, [hl+]                                   ; $4db4: $2a
    dec [hl]                                      ; $4db5: $35
    ld [c], a                                     ; $4db6: $e2
    adc a                                         ; $4db7: $8f
    ld a, [hl-]                                   ; $4db8: $3a
    ld d, [hl]                                    ; $4db9: $56
    sbc c                                         ; $4dba: $99
    db $e3                                        ; $4dbb: $e3
    jp z, $ea7e                                   ; $4dbc: $ca $7e $ea

    cp b                                          ; $4dbf: $b8
    and [hl]                                      ; $4dc0: $a6
    ld hl, $2fcd                                  ; $4dc1: $21 $cd $2f
    ccf                                           ; $4dc4: $3f
    db $db                                        ; $4dc5: $db
    ld bc, $249f                                  ; $4dc6: $01 $9f $24
    cp d                                          ; $4dc9: $ba
    ld e, [hl]                                    ; $4dca: $5e
    jr z, jr_06c_4dcf                             ; $4dcb: $28 $02

    adc c                                         ; $4dcd: $89
    dec sp                                        ; $4dce: $3b

jr_06c_4dcf:
    dec hl                                        ; $4dcf: $2b
    ld e, $47                                     ; $4dd0: $1e $47
    ld d, a                                       ; $4dd2: $57
    add hl, sp                                    ; $4dd3: $39
    xor [hl]                                      ; $4dd4: $ae
    ld d, e                                       ; $4dd5: $53
    dec de                                        ; $4dd6: $1b
    adc l                                         ; $4dd7: $8d
    ld d, e                                       ; $4dd8: $53
    cp l                                          ; $4dd9: $bd
    ld h, b                                       ; $4dda: $60
    ld l, e                                       ; $4ddb: $6b
    adc d                                         ; $4ddc: $8a
    ld a, l                                       ; $4ddd: $7d
    cp l                                          ; $4dde: $bd
    pop de                                        ; $4ddf: $d1
    di                                            ; $4de0: $f3
    sbc l                                         ; $4de1: $9d
    ld [hl], l                                    ; $4de2: $75
    db $ec                                        ; $4de3: $ec
    db $ec                                        ; $4de4: $ec
    ld h, d                                       ; $4de5: $62
    ld d, h                                       ; $4de6: $54
    adc [hl]                                      ; $4de7: $8e
    sbc e                                         ; $4de8: $9b
    ld a, [hl+]                                   ; $4de9: $2a
    db $eb                                        ; $4dea: $eb
    ret c                                         ; $4deb: $d8

    pop af                                        ; $4dec: $f1
    dec bc                                        ; $4ded: $0b
    xor d                                         ; $4dee: $aa
    call c, $970e                                 ; $4def: $dc $0e $97
    inc bc                                        ; $4df2: $03
    adc c                                         ; $4df3: $89
    dec sp                                        ; $4df4: $3b
    ld a, e                                       ; $4df5: $7b
    and c                                         ; $4df6: $a1
    db $d3                                        ; $4df7: $d3
    dec de                                        ; $4df8: $1b
    add hl, de                                    ; $4df9: $19
    ld hl, $0d05                                  ; $4dfa: $21 $05 $0d
    ld l, l                                       ; $4dfd: $6d
    ld b, h                                       ; $4dfe: $44
    ld d, h                                       ; $4dff: $54
    dec e                                         ; $4e00: $1d
    xor e                                         ; $4e01: $ab
    ld h, a                                       ; $4e02: $67
    xor a                                         ; $4e03: $af
    rst $08                                       ; $4e04: $cf
    push bc                                       ; $4e05: $c5
    ld a, e                                       ; $4e06: $7b
    xor c                                         ; $4e07: $a9
    ld h, l                                       ; $4e08: $65
    db $fd                                        ; $4e09: $fd
    ld [hl-], a                                   ; $4e0a: $32
    add $b1                                       ; $4e0b: $c6 $b1
    ld a, d                                       ; $4e0d: $7a
    db $f4                                        ; $4e0e: $f4
    add $64                                       ; $4e0f: $c6 $64
    and l                                         ; $4e11: $a5
    xor l                                         ; $4e12: $ad
    adc h                                         ; $4e13: $8c
    xor l                                         ; $4e14: $ad
    sbc a                                         ; $4e15: $9f
    ld sp, $518b                                  ; $4e16: $31 $8b $51
    sbc c                                         ; $4e19: $99
    sub [hl]                                      ; $4e1a: $96
    add a                                         ; $4e1b: $87
    sbc a                                         ; $4e1c: $9f
    jp z, $e571                                   ; $4e1d: $ca $71 $e5

    adc $ad                                       ; $4e20: $ce $ad
    rra                                           ; $4e22: $1f
    ld [hl], a                                    ; $4e23: $77
    ld d, d                                       ; $4e24: $52
    or h                                          ; $4e25: $b4
    xor c                                         ; $4e26: $a9
    inc e                                         ; $4e27: $1c
    rst $10                                       ; $4e28: $d7
    ld l, c                                       ; $4e29: $69
    ld c, h                                       ; $4e2a: $4c
    ld h, $44                                     ; $4e2b: $26 $44
    adc [hl]                                      ; $4e2d: $8e
    db $ec                                        ; $4e2e: $ec
    add l                                         ; $4e2f: $85
    ld c, [hl]                                    ; $4e30: $4e
    ld b, e                                       ; $4e31: $43
    dec de                                        ; $4e32: $1b
    ld de, $c755                                  ; $4e33: $11 $55 $c7
    ld a, [$5a49]                                 ; $4e36: $fa $49 $5a
    ld h, [hl]                                    ; $4e39: $66
    call c, Call_000_2d5f                         ; $4e3a: $dc $5f $2d
    ld [hl], a                                    ; $4e3d: $77
    sub [hl]                                      ; $4e3e: $96
    ld e, c                                       ; $4e3f: $59
    ld d, a                                       ; $4e40: $57
    ld b, [hl]                                    ; $4e41: $46
    rst $18                                       ; $4e42: $df
    and [hl]                                      ; $4e43: $a6
    adc b                                         ; $4e44: $88
    adc d                                         ; $4e45: $8a
    ld e, [hl]                                    ; $4e46: $5e
    sbc c                                         ; $4e47: $99
    inc e                                         ; $4e48: $1c
    dec c                                         ; $4e49: $0d
    add l                                         ; $4e4a: $85
    or $b2                                        ; $4e4b: $f6 $b2
    ld b, l                                       ; $4e4d: $45
    ld l, d                                       ; $4e4e: $6a
    dec a                                         ; $4e4f: $3d
    or h                                          ; $4e50: $b4
    sbc a                                         ; $4e51: $9f
    add hl, de                                    ; $4e52: $19
    rst $38                                       ; $4e53: $ff
    ret nc                                        ; $4e54: $d0

    xor l                                         ; $4e55: $ad
    ld l, a                                       ; $4e56: $6f
    xor a                                         ; $4e57: $af
    db $db                                        ; $4e58: $db
    ld [hl], h                                    ; $4e59: $74
    dec c                                         ; $4e5a: $0d
    inc h                                         ; $4e5b: $24
    or $46                                        ; $4e5c: $f6 $46
    ld b, [hl]                                    ; $4e5e: $46
    ret z                                         ; $4e5f: $c8

    ld b, $12                                     ; $4e60: $06 $12
    xor l                                         ; $4e62: $ad
    ld d, e                                       ; $4e63: $53
    add hl, bc                                    ; $4e64: $09
    dec sp                                        ; $4e65: $3b
    ld c, l                                       ; $4e66: $4d
    dec a                                         ; $4e67: $3d
    ld [hl], a                                    ; $4e68: $77
    ld l, [hl]                                    ; $4e69: $6e
    rlca                                          ; $4e6a: $07
    rst $20                                       ; $4e6b: $e7
    xor c                                         ; $4e6c: $a9
    and d                                         ; $4e6d: $a2
    or h                                          ; $4e6e: $b4
    xor d                                         ; $4e6f: $aa
    call c, $d729                                 ; $4e70: $dc $29 $d7
    ld h, h                                       ; $4e73: $64
    ld hl, sp+$69                                 ; $4e74: $f8 $69
    ld [$d143], sp                                ; $4e76: $08 $43 $d1
    ld [hl], a                                    ; $4e79: $77
    ld l, l                                       ; $4e7a: $6d
    adc c                                         ; $4e7b: $89
    ld d, [hl]                                    ; $4e7c: $56
    cp [hl]                                       ; $4e7d: $be
    rst $00                                       ; $4e7e: $c7
    ld d, $2e                                     ; $4e7f: $16 $2e
    dec e                                         ; $4e81: $1d
    rst $10                                       ; $4e82: $d7
    jp nc, Jump_06c_538a                          ; $4e83: $d2 $8a $53

    ld hl, $a09d                                  ; $4e86: $21 $9d $a0
    sbc a                                         ; $4e89: $9f
    ld c, [hl]                                    ; $4e8a: $4e
    cp $e9                                        ; $4e8b: $fe $e9
    jp nc, $3701                                  ; $4e8d: $d2 $01 $37

    ld b, a                                       ; $4e90: $47
    sbc [hl]                                      ; $4e91: $9e
    push af                                       ; $4e92: $f5
    adc a                                         ; $4e93: $8f
    ld d, l                                       ; $4e94: $55
    ld l, d                                       ; $4e95: $6a
    add h                                         ; $4e96: $84
    push af                                       ; $4e97: $f5
    ei                                            ; $4e98: $fb
    sub h                                         ; $4e99: $94
    db $e3                                        ; $4e9a: $e3
    ld d, h                                       ; $4e9b: $54
    adc [hl]                                      ; $4e9c: $8e
    ld l, e                                       ; $4e9d: $6b
    inc e                                         ; $4e9e: $1c
    ccf                                           ; $4e9f: $3f
    jp c, $8f7c                                   ; $4ea0: $da $7c $8f

    ld e, [hl]                                    ; $4ea3: $5e
    ld a, [hl-]                                   ; $4ea4: $3a
    nop                                           ; $4ea5: $00
    rra                                           ; $4ea6: $1f
    db $dd                                        ; $4ea7: $dd
    and e                                         ; $4ea8: $a3
    ld l, a                                       ; $4ea9: $6f
    db $f4                                        ; $4eaa: $f4
    dec l                                         ; $4eab: $2d
    cp d                                          ; $4eac: $ba
    ld l, [hl]                                    ; $4ead: $6e
    db $db                                        ; $4eae: $db
    ld d, [hl]                                    ; $4eaf: $56
    adc b                                         ; $4eb0: $88
    ld [hl], e                                    ; $4eb1: $73
    or a                                          ; $4eb2: $b7
    ld l, l                                       ; $4eb3: $6d
    db $db                                        ; $4eb4: $db
    ld a, [hl+]                                   ; $4eb5: $2a
    halt                                          ; $4eb6: $76
    xor [hl]                                      ; $4eb7: $ae
    db $db                                        ; $4eb8: $db
    or [hl]                                       ; $4eb9: $b6
    dec e                                         ; $4eba: $1d
    sub a                                         ; $4ebb: $97
    xor e                                         ; $4ebc: $ab
    call c, $f179                                 ; $4ebd: $dc $79 $f1
    ld [hl], a                                    ; $4ec0: $77
    ld c, d                                       ; $4ec1: $4a
    adc l                                         ; $4ec2: $8d
    pop bc                                        ; $4ec3: $c1
    sub l                                         ; $4ec4: $95
    db $e3                                        ; $4ec5: $e3
    jp nz, Jump_000_119d                          ; $4ec6: $c2 $9d $11

    ld e, e                                       ; $4ec9: $5b
    ld l, a                                       ; $4eca: $6f
    ldh a, [$7b]                                  ; $4ecb: $f0 $7b
    cp b                                          ; $4ecd: $b8
    ld a, [bc]                                    ; $4ece: $0a
    jp hl                                         ; $4ecf: $e9


    sbc [hl]                                      ; $4ed0: $9e
    ld hl, sp-$51                                 ; $4ed1: $f8 $af
    db $ec                                        ; $4ed3: $ec
    ld b, a                                       ; $4ed4: $47
    dec de                                        ; $4ed5: $1b
    jp nz, $e4d0                                  ; $4ed6: $c2 $d0 $e4

    sbc d                                         ; $4ed9: $9a
    rst $20                                       ; $4eda: $e7
    ccf                                           ; $4edb: $3f
    ld b, l                                       ; $4edc: $45
    sbc [hl]                                      ; $4edd: $9e
    jp nc, $eaf5                                  ; $4ede: $d2 $f5 $ea

    sbc h                                         ; $4ee1: $9c
    ld a, [hl]                                    ; $4ee2: $7e
    add h                                         ; $4ee3: $84
    ld b, l                                       ; $4ee4: $45
    cp l                                          ; $4ee5: $bd
    call nc, Call_000_124f                        ; $4ee6: $d4 $4f $12
    dec sp                                        ; $4ee9: $3b
    dec d                                         ; $4eea: $15
    ld [hl+], a                                   ; $4eeb: $22
    rlca                                          ; $4eec: $07
    ld [de], a                                    ; $4eed: $12
    inc hl                                        ; $4eee: $23
    dec hl                                        ; $4eef: $2b
    rst $00                                       ; $4ef0: $c7
    ld d, c                                       ; $4ef1: $51
    ld [hl], d                                    ; $4ef2: $72
    dec sp                                        ; $4ef3: $3b
    nop                                           ; $4ef4: $00
    ld d, a                                       ; $4ef5: $57
    add $0c                                       ; $4ef6: $c6 $0c
    dec c                                         ; $4ef8: $0d
    ld h, c                                       ; $4ef9: $61
    add sp, -$0c                                  ; $4efa: $e8 $f4
    ld e, l                                       ; $4efc: $5d

Call_06c_4efd:
    ld b, e                                       ; $4efd: $43
    or $ec                                        ; $4efe: $f6 $ec
    dec c                                         ; $4f00: $0d
    db $ec                                        ; $4f01: $ec
    cp a                                          ; $4f02: $bf
    db $d3                                        ; $4f03: $d3
    ld c, c                                       ; $4f04: $49
    db $fd                                        ; $4f05: $fd
    adc a                                         ; $4f06: $8f
    inc a                                         ; $4f07: $3c
    ld l, e                                       ; $4f08: $6b
    cp $9d                                        ; $4f09: $fe $9d
    ld a, [hl+]                                   ; $4f0b: $2a
    dec l                                         ; $4f0c: $2d
    cp b                                          ; $4f0d: $b8
    jp z, Jump_06c_729d                           ; $4f0e: $ca $9d $72

    ld c, l                                       ; $4f11: $4d
    add [hl]                                      ; $4f12: $86
    sbc a                                         ; $4f13: $9f
    ld c, e                                       ; $4f14: $4b
    rlca                                          ; $4f15: $07
    rra                                           ; $4f16: $1f
    db $fd                                        ; $4f17: $fd
    ld c, [hl]                                    ; $4f18: $4e
    inc hl                                        ; $4f19: $23
    or e                                          ; $4f1a: $b3
    ld a, b                                       ; $4f1b: $78
    ld a, [de]                                    ; $4f1c: $1a
    jp hl                                         ; $4f1d: $e9


    jp nz, Jump_000_0869                          ; $4f1e: $c2 $69 $08

    ld b, e                                       ; $4f21: $43
    push hl                                       ; $4f22: $e5
    db $e4                                        ; $4f23: $e4
    ccf                                           ; $4f24: $3f
    ld c, l                                       ; $4f25: $4d
    ld h, c                                       ; $4f26: $61
    add d                                         ; $4f27: $82
    add [hl]                                      ; $4f28: $86
    ld b, [hl]                                    ; $4f29: $46
    cp c                                          ; $4f2a: $b9
    ld [hl], h                                    ; $4f2b: $74
    cp d                                          ; $4f2c: $ba
    xor h                                         ; $4f2d: $ac
    ld hl, $550c                                  ; $4f2e: $21 $0c $55
    ld e, d                                       ; $4f31: $5a
    sub l                                         ; $4f32: $95
    dec sp                                        ; $4f33: $3b
    push hl                                       ; $4f34: $e5
    sbc d                                         ; $4f35: $9a
    inc c                                         ; $4f36: $0c
    ccf                                           ; $4f37: $3f
    db $db                                        ; $4f38: $db
    ld bc, $fd1f                                  ; $4f39: $01 $1f $fd
    ld c, [hl]                                    ; $4f3c: $4e
    push bc                                       ; $4f3d: $c5
    pop bc                                        ; $4f3e: $c1
    call $68f0                                    ; $4f3f: $cd $f0 $68
    ld [$4543], sp                                ; $4f42: $08 $43 $45
    cp b                                          ; $4f45: $b8
    ld c, l                                       ; $4f46: $4d
    dec hl                                        ; $4f47: $2b
    ld [bc], a                                    ; $4f48: $02
    ld l, c                                       ; $4f49: $69
    ld l, l                                       ; $4f4a: $6d
    db $fd                                        ; $4f4b: $fd
    ld l, h                                       ; $4f4c: $6c
    db $fc                                        ; $4f4d: $fc
    ld [hl], h                                    ; $4f4e: $74
    ld [$bfe6], a                                 ; $4f4f: $ea $e6 $bf
    inc e                                         ; $4f52: $1c
    ld [hl], e                                    ; $4f53: $73
    sbc h                                         ; $4f54: $9c
    ld d, d                                       ; $4f55: $52
    ld h, e                                       ; $4f56: $63
    ld [hl], b                                    ; $4f57: $70
    di                                            ; $4f58: $f3

Call_06c_4f59:
    db $f4                                        ; $4f59: $f4
    ld e, l                                       ; $4f5a: $5d
    ld b, e                                       ; $4f5b: $43
    or $ec                                        ; $4f5c: $f6 $ec
    dec c                                         ; $4f5e: $0d
    db $ec                                        ; $4f5f: $ec
    cp a                                          ; $4f60: $bf
    or e                                          ; $4f61: $b3
    dec e                                         ; $4f62: $1d
    scf                                           ; $4f63: $37
    ret c                                         ; $4f64: $d8

    rst $38                                       ; $4f65: $ff
    ret z                                         ; $4f66: $c8

    or e                                          ; $4f67: $b3
    add [hl]                                      ; $4f68: $86
    ld b, [hl]                                    ; $4f69: $46
    cp c                                          ; $4f6a: $b9
    inc d                                         ; $4f6b: $14
    ld d, [hl]                                    ; $4f6c: $56
    rst $08                                       ; $4f6d: $cf
    ld h, $87                                     ; $4f6e: $26 $87
    ld c, d                                       ; $4f70: $4a
    ret c                                         ; $4f71: $d8

jr_06c_4f72:
    ld h, h                                       ; $4f72: $64
    call nc, $c382                                ; $4f73: $d4 $82 $c3
    push hl                                       ; $4f76: $e5
    pop de                                        ; $4f77: $d1
    db $10                                        ; $4f78: $10
    add [hl]                                      ; $4f79: $86
    ld c, [hl]                                    ; $4f7a: $4e

Call_06c_4f7b:
    inc bc                                        ; $4f7b: $03
    ld l, c                                       ; $4f7c: $69
    push hl                                       ; $4f7d: $e5
    jr c, jr_06c_4fc5                             ; $4f7e: $38 $45

    or $30                                        ; $4f80: $f6 $30
    ld b, c                                       ; $4f82: $41
    ld a, c                                       ; $4f83: $79
    ld l, e                                       ; $4f84: $6b
    ld l, c                                       ; $4f85: $69
    ld h, h                                       ; $4f86: $64
    sub e                                         ; $4f87: $93
    ld b, e                                       ; $4f88: $43
    jp $88b1                                      ; $4f89: $c3 $b1 $88


    cp d                                          ; $4f8c: $ba
    ldh [$d3], a                                  ; $4f8d: $e0 $d3
    sub d                                         ; $4f8f: $92
    ld l, b                                       ; $4f90: $68
    and [hl]                                      ; $4f91: $a6
    ld b, [hl]                                    ; $4f92: $46
    ld d, [hl]                                    ; $4f93: $56
    adc [hl]                                      ; $4f94: $8e

Jump_06c_4f95:
    add hl, de                                    ; $4f95: $19
    db $fd                                        ; $4f96: $fd
    ld e, b                                       ; $4f97: $58
    inc bc                                        ; $4f98: $03
    adc c                                         ; $4f99: $89
    db $fd                                        ; $4f9a: $fd
    ld h, e                                       ; $4f9b: $63
    ld d, l                                       ; $4f9c: $55
    ld l, c                                       ; $4f9d: $69
    rst $38                                       ; $4f9e: $ff
    ld h, l                                       ; $4f9f: $65
    dec c                                         ; $4fa0: $0d
    ld l, c                                       ; $4fa1: $69
    ld [hl+], a                                   ; $4fa2: $22
    xor [hl]                                      ; $4fa3: $ae
    ld [$1cc7], sp                                ; $4fa4: $08 $c7 $1c
    cp c                                          ; $4fa7: $b9
    dec e                                         ; $4fa8: $1d
    scf                                           ; $4fa9: $37
    ld [hl-], a                                   ; $4faa: $32
    ld b, d                                       ; $4fab: $42
    ld [hl], $84                                  ; $4fac: $36 $84
    ld d, c                                       ; $4fae: $51
    or d                                          ; $4faf: $b2
    call nc, Call_000_2b08                        ; $4fb0: $d4 $08 $2b
    ld e, l                                       ; $4fb3: $5d
    db $e3                                        ; $4fb4: $e3
    ld hl, sp-$2f                                 ; $4fb5: $f8 $d1
    adc [hl]                                      ; $4fb7: $8e
    halt                                          ; $4fb8: $76
    ld c, a                                       ; $4fb9: $4f
    daa                                           ; $4fba: $27
    jr jr_06c_4f72                                ; $4fbb: $18 $b5

    pop hl                                        ; $4fbd: $e1
    ld e, b                                       ; $4fbe: $58
    jr nz, jr_06c_4f72                            ; $4fbf: $20 $b1

    call c, $8559                                 ; $4fc1: $dc $59 $85
    sub b                                         ; $4fc4: $90

jr_06c_4fc5:
    sbc l                                         ; $4fc5: $9d
    db $ec                                        ; $4fc6: $ec
    reti                                          ; $4fc7: $d9


    jr c, @+$20                                   ; $4fc8: $38 $1e

    ld e, d                                       ; $4fca: $5a
    ld l, b                                       ; $4fcb: $68
    jp $08b1                                      ; $4fcc: $c3 $b1 $08


    xor l                                         ; $4fcf: $ad
    dec bc                                        ; $4fd0: $0b
    ld a, $2d                                     ; $4fd1: $3e $2d
    add hl, bc                                    ; $4fd3: $09
    dec l                                         ; $4fd4: $2d
    dec [hl]                                      ; $4fd5: $35
    cp $ce                                        ; $4fd6: $fe $ce
    sub $cb                                       ; $4fd8: $d6 $cb
    dec c                                         ; $4fda: $0d
    rst $00                                       ; $4fdb: $c7
    ld [hl+], a                                   ; $4fdc: $22
    ld a, [de]                                    ; $4fdd: $1a
    ld c, b                                       ; $4fde: $48
    inc l                                         ; $4fdf: $2c
    ld [hl], a                                    ; $4fe0: $77
    sub $61                                       ; $4fe1: $d6 $61
    ld l, c                                       ; $4fe3: $69
    sub e                                         ; $4fe4: $93
    and d                                         ; $4fe5: $a2
    call nc, $dc18                                ; $4fe6: $d4 $18 $dc
    ld c, h                                       ; $4fe9: $4c
    adc l                                         ; $4fea: $8d
    xor h                                         ; $4feb: $ac
    inc e                                         ; $4fec: $1c
    inc sp                                        ; $4fed: $33
    ld a, [$edb1]                                 ; $4fee: $fa $b1 $ed
    nop                                           ; $4ff1: $00
    rra                                           ; $4ff2: $1f
    sub a                                         ; $4ff3: $97
    ld a, [hl+]                                   ; $4ff4: $2a
    ld l, l                                       ; $4ff5: $6d
    push bc                                       ; $4ff6: $c5
    ld a, e                                       ; $4ff7: $7b
    ld l, h                                       ; $4ff8: $6c
    ld c, l                                       ; $4ff9: $4d
    ld e, c                                       ; $4ffa: $59
    ld d, h                                       ; $4ffb: $54
    or c                                          ; $4ffc: $b1
    and e                                         ; $4ffd: $a3
    sbc [hl]                                      ; $4ffe: $9e
    ld b, l                                       ; $4fff: $45
    jp c, Jump_000_3f51                           ; $5000: $da $51 $3f

    dec c                                         ; $5003: $0d
    ld l, l                                       ; $5004: $6d
    ld b, h                                       ; $5005: $44
    ld d, h                                       ; $5006: $54
    dec e                                         ; $5007: $1d
    db $eb                                        ; $5008: $eb
    adc l                                         ; $5009: $8d
    adc h                                         ; $500a: $8c
    sub b                                         ; $500b: $90
    dec d                                         ; $500c: $15
    dec l                                         ; $500d: $2d
    add hl, bc                                    ; $500e: $09
    ld d, a                                       ; $500f: $57
    inc b                                         ; $5010: $04
    jp nc, $9d2a                                  ; $5011: $d2 $2a $9d

jr_06c_5014:
    db $10                                        ; $5014: $10
    db $eb                                        ; $5015: $eb
    sub $6c                                       ; $5016: $d6 $6c
    dec a                                         ; $5018: $3d
    rst $18                                       ; $5019: $df
    reti                                          ; $501a: $d9


    dec bc                                        ; $501b: $0b
    sbc l                                         ; $501c: $9d
    add [hl]                                      ; $501d: $86
    ld [hl], $22                                  ; $501e: $36 $22
    xor d                                         ; $5020: $aa
    adc [hl]                                      ; $5021: $8e
    push de                                       ; $5022: $d5
    ld h, c                                       ; $5023: $61
    ld l, c                                       ; $5024: $69
    and c                                         ; $5025: $a1
    sbc d                                         ; $5026: $9a
    inc [hl]                                      ; $5027: $34
    jp nz, $d58f                                  ; $5028: $c2 $8f $d5

    and e                                         ; $502b: $a3
    ld d, h                                       ; $502c: $54
    add hl, sp                                    ; $502d: $39
    dec sp                                        ; $502e: $3b
    or [hl]                                       ; $502f: $b6
    inc bc                                        ; $5030: $03
    rra                                           ; $5031: $1f
    sub a                                         ; $5032: $97
    ld a, [hl+]                                   ; $5033: $2a
    ld l, l                                       ; $5034: $6d
    push bc                                       ; $5035: $c5
    ld a, e                                       ; $5036: $7b
    ld l, h                                       ; $5037: $6c
    ld c, l                                       ; $5038: $4d
    dec a                                         ; $5039: $3d
    ld a, [de]                                    ; $503a: $1a
    jp c, $a888                                   ; $503b: $da $88 $a8

    ld a, [hl-]                                   ; $503e: $3a
    add [hl]                                      ; $503f: $86
    ld e, [hl]                                    ; $5040: $5e
    sub e                                         ; $5041: $93
    rst $28                                       ; $5042: $ef
    ld c, [hl]                                    ; $5043: $4e
    add $09                                       ; $5044: $c6 $09
    ei                                            ; $5046: $fb
    ld e, [hl]                                    ; $5047: $5e
    pop de                                        ; $5048: $d1
    sub d                                         ; $5049: $92
    ld l, b                                       ; $504a: $68
    and [hl]                                      ; $504b: $a6
    ld b, [hl]                                    ; $504c: $46
    ld d, $d9                                     ; $504d: $16 $d9
    jp Jump_06c_5eb6                              ; $504f: $c3 $b6 $5e


    sub [hl]                                      ; $5052: $96
    ld b, [hl]                                    ; $5053: $46
    cp a                                          ; $5054: $bf
    ld [hl+], a                                   ; $5055: $22
    dec b                                         ; $5056: $05
    db $fd                                        ; $5057: $fd
    adc a                                         ; $5058: $8f
    inc a                                         ; $5059: $3c
    ld l, e                                       ; $505a: $6b
    cp $9d                                        ; $505b: $fe $9d
    cp $b1                                        ; $505d: $fe $b1
    ld a, [de]                                    ; $505f: $1a
    ld c, b                                       ; $5060: $48
    inc [hl]                                      ; $5061: $34
    ld e, d                                       ; $5062: $5a
    sub l                                         ; $5063: $95
    ld b, l                                       ; $5064: $45
    inc [hl]                                      ; $5065: $34
    jr z, jr_06c_5014                             ; $5066: $28 $ac

    ld hl, $d50c                                  ; $5068: $21 $0c $d5
    inc b                                         ; $506b: $04
    dec l                                         ; $506c: $2d
    jp nc, $bd0e                                  ; $506d: $d2 $0e $bd

    ld [hl], h                                    ; $5070: $74
    nop                                           ; $5071: $00
    sbc a                                         ; $5072: $9f
    ld sp, $518b                                  ; $5073: $31 $8b $51
    sbc c                                         ; $5076: $99
    sub [hl]                                      ; $5077: $96
    add a                                         ; $5078: $87
    sbc a                                         ; $5079: $9f
    xor l                                         ; $507a: $ad
    scf                                           ; $507b: $37
    or b                                          ; $507c: $b0
    ld b, e                                       ; $507d: $43
    db $eb                                        ; $507e: $eb
    ld e, c                                       ; $507f: $59
    and h                                         ; $5080: $a4
    dec e                                         ; $5081: $1d
    ld h, l                                       ; $5082: $65
    xor c                                         ; $5083: $a9
    jp nc, $bc56                                  ; $5084: $d2 $56 $bc

    rst $00                                       ; $5087: $c7
    sub $68                                       ; $5088: $d6 $68
    ld hl, $f644                                  ; $508a: $21 $44 $f6
    sub e                                         ; $508d: $93
    pop hl                                        ; $508e: $e1
    ld b, a                                       ; $508f: $47
    dec de                                        ; $5090: $1b
    adc [hl]                                      ; $5091: $8e
    and a                                         ; $5092: $a7
    dec hl                                        ; $5093: $2b
    ld d, l                                       ; $5094: $55
    ld c, [hl]                                    ; $5095: $4e
    or $b4                                        ; $5096: $f6 $b4
    ld c, d                                       ; $5098: $4a
    ld e, e                                       ; $5099: $5b
    adc b                                         ; $509a: $88
    ret                                           ; $509b: $c9


    and b                                         ; $509c: $a0
    add l                                         ; $509d: $85
    ld l, d                                       ; $509e: $6a
    jp nc, Jump_000_3f08                          ; $509f: $d2 $08 $3f

    ld b, $dd                                     ; $50a2: $06 $dd
    ld c, $e7                                     ; $50a4: $0e $e7
    xor c                                         ; $50a6: $a9
    ld sp, hl                                     ; $50a7: $f9
    ld [hl], a                                    ; $50a8: $77
    ld a, [hl+]                                   ; $50a9: $2a
    ld e, d                                       ; $50aa: $5a
    ld [hl], d                                    ; $50ab: $72
    ld a, [hl-]                                   ; $50ac: $3a
    cp e                                          ; $50ad: $bb
    jr @-$25                                      ; $50ae: $18 $d9

    ld c, a                                       ; $50b0: $4f
    and c                                         ; $50b1: $a1
    add l                                         ; $50b2: $85
    dec bc                                        ; $50b3: $0b
    db $d3                                        ; $50b4: $d3
    ld l, $66                                     ; $50b5: $2e $66
    add h                                         ; $50b7: $84
    ld d, $21                                     ; $50b8: $16 $21
    inc sp                                        ; $50ba: $33
    or h                                          ; $50bb: $b4
    ld hl, $fd0c                                  ; $50bc: $21 $0c $fd
    db $d3                                        ; $50bf: $d3
    ld a, [de]                                    ; $50c0: $1a
    ld c, b                                       ; $50c1: $48
    ret c                                         ; $50c2: $d8

    dec hl                                        ; $50c3: $2b
    and c                                         ; $50c4: $a1
    jr z, jr_06c_50fc                             ; $50c5: $28 $35

    ld b, $57                                     ; $50c7: $06 $57
    adc [hl]                                      ; $50c9: $8e
    xor e                                         ; $50ca: $ab
    jp $86d2                                      ; $50cb: $c3 $d2 $86


    sub e                                         ; $50ce: $93
    db $e3                                        ; $50cf: $e3
    add sp, -$2a                                  ; $50d0: $e8 $d6
    di                                            ; $50d2: $f3
    call nc, Call_06c_68d3                        ; $50d3: $d4 $d3 $68
    sbc h                                         ; $50d6: $9c
    ld a, d                                       ; $50d7: $7a
    halt                                          ; $50d8: $76
    halt                                          ; $50d9: $76
    ld sp, $21ac                                  ; $50da: $31 $ac $21
    inc c                                         ; $50dd: $0c
    push hl                                       ; $50de: $e5
    ld c, $6d                                     ; $50df: $0e $6d
    jr c, @-$28                                   ; $50e1: $38 $d6

    ld b, b                                       ; $50e3: $40

Call_06c_50e4:
    ld h, d                                       ; $50e4: $62
    cp c                                          ; $50e5: $b9
    ld b, e                                       ; $50e6: $43
    xor e                                         ; $50e7: $ab
    cp a                                          ; $50e8: $bf
    ld d, e                                       ; $50e9: $53
    and c                                         ; $50ea: $a1
    xor l                                         ; $50eb: $ad
    ld e, l                                       ; $50ec: $5d
    adc h                                         ; $50ed: $8c
    inc e                                         ; $50ee: $1c
    xor c                                         ; $50ef: $a9
    db $db                                        ; $50f0: $db
    ld bc, $d19f                                  ; $50f1: $01 $9f $d1
    dec d                                         ; $50f4: $15
    ei                                            ; $50f5: $fb
    add hl, hl                                    ; $50f6: $29
    add hl, sp                                    ; $50f7: $39
    ld d, h                                       ; $50f8: $54
    adc $52                                       ; $50f9: $ce $52
    sub h                                         ; $50fb: $94

jr_06c_50fc:
    ld a, [de]                                    ; $50fc: $1a
    dec c                                         ; $50fd: $0d
    ld e, c                                       ; $50fe: $59
    adc h                                         ; $50ff: $8c
    jp z, $9d71                                   ; $5100: $ca $71 $9d

    jp nz, $b05c                                  ; $5103: $c2 $5c $b0

    xor l                                         ; $5106: $ad
    xor c                                         ; $5107: $a9
    ld h, a                                       ; $5108: $67
    rst $38                                       ; $5109: $ff
    ld d, b                                       ; $510a: $50
    sbc l                                         ; $510b: $9d
    ld h, h                                       ; $510c: $64
    ret nc                                        ; $510d: $d0

    ld a, [$3be9]                                 ; $510e: $fa $e9 $3b
    ld l, e                                       ; $5111: $6b
    sub a                                         ; $5112: $97
    ld [c], a                                     ; $5113: $e2
    xor l                                         ; $5114: $ad
    rst $20                                       ; $5115: $e7
    xor c                                         ; $5116: $a9
    ld a, a                                       ; $5117: $7f
    ld a, [hl]                                    ; $5118: $7e
    ccf                                           ; $5119: $3f
    push hl                                       ; $511a: $e5
    adc $32                                       ; $511b: $ce $32
    ld b, a                                       ; $511d: $47
    ld b, e                                       ; $511e: $43
    or $23                                        ; $511f: $f6 $23
    xor b                                         ; $5121: $a8
    add e                                         ; $5122: $83
    ld [hl], $a7                                  ; $5123: $36 $a7
    inc l                                         ; $5125: $2c
    pop de                                        ; $5126: $d1
    jp hl                                         ; $5127: $e9


    sbc a                                         ; $5128: $9f
    rst $18                                       ; $5129: $df
    ld c, a                                       ; $512a: $4f
    dec d                                         ; $512b: $15
    dec hl                                        ; $512c: $2b
    ei                                            ; $512d: $fb
    reti                                          ; $512e: $d9


    ld c, $1f                                     ; $512f: $0e $1f
    ld l, e                                       ; $5131: $6b
    ld c, a                                       ; $5132: $4f
    pop bc                                        ; $5133: $c1
    halt                                          ; $5134: $76
    ld c, d                                       ; $5135: $4a
    dec sp                                        ; $5136: $3b
    or h                                          ; $5137: $b4
    and c                                         ; $5138: $a1
    db $dd                                        ; $5139: $dd
    ld [hl], e                                    ; $513a: $73
    ld l, e                                       ; $513b: $6b
    cp c                                          ; $513c: $b9
    pop de                                        ; $513d: $d1
    ld a, [$62a9]                                 ; $513e: $fa $a9 $62
    rst $38                                       ; $5141: $ff
    sbc l                                         ; $5142: $9d
    jp z, Jump_000_2971                           ; $5143: $ca $71 $29

    ld h, e                                       ; $5146: $63
    xor a                                         ; $5147: $af
    rra                                           ; $5148: $1f
    ld l, l                                       ; $5149: $6d
    ld l, b                                       ; $514a: $68
    inc hl                                        ; $514b: $23
    and d                                         ; $514c: $a2
    ld [$b518], a                                 ; $514d: $ea $18 $b5
    and a                                         ; $5150: $a7
    inc b                                         ; $5151: $04
    di                                            ; $5152: $f3
    ld [hl], b                                    ; $5153: $70
    ld b, l                                       ; $5154: $45
    jp $88b1                                      ; $5155: $c3 $b1 $88


    ld c, [hl]                                    ; $5158: $4e
    db $fd                                        ; $5159: $fd
    ld b, d                                       ; $515a: $42
    db $e3                                        ; $515b: $e3
    ld hl, sp+$11                                 ; $515c: $f8 $11
    call nc, $cb41                                ; $515e: $d4 $41 $cb
    sbc l                                         ; $5161: $9d
    ld e, d                                       ; $5162: $5a
    ccf                                           ; $5163: $3f
    and $e8                                       ; $5164: $e6 $e8
    ld [$2193], a                                 ; $5166: $ea $93 $21
    ld b, a                                       ; $5169: $47
    ld d, $cd                                     ; $516a: $16 $cd
    or e                                          ; $516c: $b3
    ld [hl+], a                                   ; $516d: $22
    or a                                          ; $516e: $b7
    inc bc                                        ; $516f: $03
    ld l, a                                       ; $5170: $6f
    di                                            ; $5171: $f3
    ld c, a                                       ; $5172: $4f
    ld e, e                                       ; $5173: $5b
    xor b                                         ; $5174: $a8
    jr @+$81                                      ; $5175: $18 $7f

    ld e, d                                       ; $5177: $5a
    sub e                                         ; $5178: $93
    ld b, e                                       ; $5179: $43
    xor c                                         ; $517a: $a9
    ld [de], a                                    ; $517b: $12
    ld e, $b6                                     ; $517c: $1e $b6
    ld d, b                                       ; $517e: $50
    and l                                         ; $517f: $a5
    inc [hl]                                      ; $5180: $34
    ld b, [hl]                                    ; $5181: $46
    inc [hl]                                      ; $5182: $34
    add h                                         ; $5183: $84
    and c                                         ; $5184: $a1
    db $d3                                        ; $5185: $d3
    ld b, b                                       ; $5186: $40
    add d                                         ; $5187: $82
    push bc                                       ; $5188: $c5
    add hl, hl                                    ; $5189: $29
    or d                                          ; $518a: $b2
    add a                                         ; $518b: $87
    dec [hl]                                      ; $518c: $35
    ld d, e                                       ; $518d: $53
    inc hl                                        ; $518e: $23
    dec hl                                        ; $518f: $2b
    rst $00                                       ; $5190: $c7
    adc h                                         ; $5191: $8c
    ld a, [hl]                                    ; $5192: $7e
    ld c, h                                       ; $5193: $4c
    ld d, b                                       ; $5194: $50
    rlca                                          ; $5195: $07
    dec l                                         ; $5196: $2d
    ld d, e                                       ; $5197: $53
    di                                            ; $5198: $f3
    rst $28                                       ; $5199: $ef

Jump_06c_519a:
    ld d, h                                       ; $519a: $54
    cp c                                          ; $519b: $b9
    ld a, [hl-]                                   ; $519c: $3a
    reti                                          ; $519d: $d9


    or e                                          ; $519e: $b3
    call c, Call_06c_6a51                         ; $519f: $dc $51 $6a
    inc c                                         ; $51a2: $0c
    ld l, $55                                     ; $51a3: $2e $55
    ld c, [hl]                                    ; $51a5: $4e
    or $cb                                        ; $51a6: $f6 $cb
    ld h, e                                       ; $51a8: $63
    dec sp                                        ; $51a9: $3b
    nop                                           ; $51aa: $00
    sbc a                                         ; $51ab: $9f
    ld sp, $518b                                  ; $51ac: $31 $8b $51
    sbc c                                         ; $51af: $99
    sub [hl]                                      ; $51b0: $96
    add a                                         ; $51b1: $87
    sbc a                                         ; $51b2: $9f
    ld a, [hl+]                                   ; $51b3: $2a
    ld c, e                                       ; $51b4: $4b
    adc l                                         ; $51b5: $8d
    db $eb                                        ; $51b6: $eb
    ld c, a                                       ; $51b7: $4f
    db $eb                                        ; $51b8: $eb
    jp z, Jump_000_1a7e                           ; $51b9: $ca $7e $1a

    jp nz, Jump_000_29d0                          ; $51bc: $c2 $d0 $29

    ld d, l                                       ; $51bf: $55
    jp c, $f78a                                   ; $51c0: $da $8a $f7

    ret c                                         ; $51c3: $d8

    sbc d                                         ; $51c4: $9a
    ld a, d                                       ; $51c5: $7a
    or $9d                                        ; $51c6: $f6 $9d
    ld a, l                                       ; $51c8: $7d
    push bc                                       ; $51c9: $c5
    rra                                           ; $51ca: $1f
    sub a                                         ; $51cb: $97
    db $fc                                        ; $51cc: $fc
    pop hl                                        ; $51cd: $e1
    push de                                       ; $51ce: $d5
    ld a, [c]                                     ; $51cf: $f2
    sub $d2                                       ; $51d0: $d6 $d2
    ret z                                         ; $51d2: $c8

    ld h, $57                                     ; $51d3: $26 $57
    xor d                                         ; $51d5: $aa
    inc e                                         ; $51d6: $1c
    inc sp                                        ; $51d7: $33
    sbc [hl]                                      ; $51d8: $9e

Jump_06c_51d9:
    ldh [$c7], a                                  ; $51d9: $e0 $c7
    ld [$91a7], a                                 ; $51db: $ea $a7 $91
    ld h, $b9                                     ; $51de: $26 $b9
    ld l, h                                       ; $51e0: $6c
    adc d                                         ; $51e1: $8a

Jump_06c_51e2:
    db $ec                                        ; $51e2: $ec
    ld h, c                                       ; $51e3: $61
    dec d                                         ; $51e4: $15
    jp nc, $a335                                  ; $51e5: $d2 $35 $a3

    sbc d                                         ; $51e8: $9a
    ret nc                                        ; $51e9: $d0

    ld [hl], b                                    ; $51ea: $70
    inc l                                         ; $51eb: $2c
    ld h, d                                       ; $51ec: $62
    dec sp                                        ; $51ed: $3b
    nop                                           ; $51ee: $00
    sbc a                                         ; $51ef: $9f
    dec sp                                        ; $51f0: $3b
    call nc, Call_000_2353                        ; $51f1: $d4 $53 $23
    or h                                          ; $51f4: $b4
    call nc, Call_000_1c18                        ; $51f5: $d4 $18 $1c
    inc de                                        ; $51f8: $13
    or h                                          ; $51f9: $b4
    sbc [hl]                                      ; $51fa: $9e
    dec a                                         ; $51fb: $3d
    reti                                          ; $51fc: $d9


    ld [de], a                                    ; $51fd: $12
    ld c, l                                       ; $51fe: $4d
    dec a                                         ; $51ff: $3d
    rst $38                                       ; $5200: $ff
    or h                                          ; $5201: $b4
    add l                                         ; $5202: $85
    xor $fc                                       ; $5203: $ee $fc
    jp $c21a                                      ; $5205: $c3 $1a $c2


    ret nc                                        ; $5208: $d0

    ld c, c                                       ; $5209: $49
    pop de                                        ; $520a: $d1
    and [hl]                                      ; $520b: $a6
    ld [hl], d                                    ; $520c: $72
    call z, $c7e8                                 ; $520d: $cc $e8 $c7
    ld [$ec59], a                                 ; $5210: $ea $59 $ec
    and a                                         ; $5213: $a7
    db $e4                                        ; $5214: $e4
    ld d, b                                       ; $5215: $50
    add a                                         ; $5216: $87
    call z, $d865                                 ; $5217: $cc $65 $d8
    ld c, $9f                                     ; $521a: $0e $9f
    cp e                                          ; $521c: $bb
    ld a, [$9ed1]                                 ; $521d: $fa $d1 $9e
    ld l, h                                       ; $5220: $6c
    adc c                                         ; $5221: $89
    ld b, [hl]                                    ; $5222: $46
    dec de                                        ; $5223: $1b
    adc [hl]                                      ; $5224: $8e
    ld h, a                                       ; $5225: $67
    inc hl                                        ; $5226: $23
    db $eb                                        ; $5227: $eb
    ld h, c                                       ; $5228: $61
    ld c, l                                       ; $5229: $4d
    ld c, $95                                     ; $522a: $0e $95
    or b                                          ; $522c: $b0
    ret                                           ; $522d: $c9


    jr z, @-$1c                                   ; $522e: $28 $e2

    add l                                         ; $5230: $85
    ld c, [hl]                                    ; $5231: $4e
    adc d                                         ; $5232: $8a
    ld [hl], $45                                  ; $5233: $36 $45
    or $b0                                        ; $5235: $f6 $b0
    ld l, [hl]                                    ; $5237: $6e
    db $db                                        ; $5238: $db
    ld d, [hl]                                    ; $5239: $56
    and l                                         ; $523a: $a5
    xor e                                         ; $523b: $ab
    or d                                          ; $523c: $b2
    adc [hl]                                      ; $523d: $8e
    or a                                          ; $523e: $b7
    ld l, b                                       ; $523f: $68
    db $db                                        ; $5240: $db
    ld bc, $a9e7                                  ; $5241: $01 $e7 $a9
    add hl, sp                                    ; $5244: $39
    ld h, l                                       ; $5245: $65
    adc c                                         ; $5246: $89
    cp $57                                        ; $5247: $fe $57
    di                                            ; $5249: $f3
    jp z, Jump_06c_74a7                           ; $524a: $ca $a7 $74

    pop bc                                        ; $524d: $c1
    sub l                                         ; $524e: $95
    add hl, sp                                    ; $524f: $39
    ld a, [de]                                    ; $5250: $1a
    xor h                                         ; $5251: $ac
    add hl, de                                    ; $5252: $19
    add c                                         ; $5253: $81
    call nz, Call_000_0d1d                        ; $5254: $c4 $1d $0d
    rst $00                                       ; $5257: $c7
    ld [hl+], a                                   ; $5258: $22
    ld a, [de]                                    ; $5259: $1a
    dec c                                         ; $525a: $0d
    ld e, c                                       ; $525b: $59
    jp nz, $a1a3                                  ; $525c: $c2 $a3 $a1

    db $dd                                        ; $525f: $dd
    ld [hl], e                                    ; $5260: $73
    ld l, e                                       ; $5261: $6b
    add hl, sp                                    ; $5262: $39
    call nc, $e1a3                                ; $5263: $d4 $a3 $e1
    ld e, h                                       ; $5266: $5c
    ld b, h                                       ; $5267: $44
    dec a                                         ; $5268: $3d
    dec de                                        ; $5269: $1b
    ld a, h                                       ; $526a: $7c
    ld c, d                                       ; $526b: $4a
    ret c                                         ; $526c: $d8

    ld c, $1f                                     ; $526d: $0e $1f
    db $fd                                        ; $526f: $fd
    ld c, [hl]                                    ; $5270: $4e
    sbc c                                         ; $5271: $99
    and e                                         ; $5272: $a3
    or c                                          ; $5273: $b1
    ld [hl], h                                    ; $5274: $74
    sub l                                         ; $5275: $95
    dec sp                                        ; $5276: $3b
    ld d, h                                       ; $5277: $54
    xor c                                         ; $5278: $a9
    dec c                                         ; $5279: $0d
    inc h                                         ; $527a: $24
    sub [hl]                                      ; $527b: $96
    ld a, [de]                                    ; $527c: $1a
    ld sp, hl                                     ; $527d: $f9
    dec a                                         ; $527e: $3d
    ld e, h                                       ; $527f: $5c
    jp hl                                         ; $5280: $e9


    adc d                                         ; $5281: $8a
    or h                                          ; $5282: $b4
    ld h, e                                       ; $5283: $63
    db $eb                                        ; $5284: $eb
    push hl                                       ; $5285: $e5
    ld a, [hl-]                                   ; $5286: $3a
    xor h                                         ; $5287: $ac
    or c                                          ; $5288: $b1
    add l                                         ; $5289: $85
    ld a, [$86d1]                                 ; $528a: $fa $d1 $86
    ld [hl], $22                                  ; $528d: $36 $22
    xor d                                         ; $528f: $aa
    adc [hl]                                      ; $5290: $8e
    ld d, c                                       ; $5291: $51
    cp e                                          ; $5292: $bb
    inc l                                         ; $5293: $2c
    cp b                                          ; $5294: $b8
    ld [hl], c                                    ; $5295: $71
    add hl, de                                    ; $5296: $19
    xor h                                         ; $5297: $ac
    pop hl                                        ; $5298: $e1
    db $e4                                        ; $5299: $e4
    jr c, jr_06c_52f6                             ; $529a: $38 $5a

    adc a                                         ; $529c: $8f
    ld l, d                                       ; $529d: $6a
    ld b, d                                       ; $529e: $42
    dec h                                         ; $529f: $25
    inc d                                         ; $52a0: $14
    ld d, l                                       ; $52a1: $55
    or $3f                                        ; $52a2: $f6 $3f
    ld a, [c]                                     ; $52a4: $f2
    xor h                                         ; $52a5: $ac
    dec hl                                        ; $52a6: $2b
    ld b, a                                       ; $52a7: $47
    sbc d                                         ; $52a8: $9a
    adc l                                         ; $52a9: $8d
    dec bc                                        ; $52aa: $0b
    ld l, c                                       ; $52ab: $69
    push de                                       ; $52ac: $d5
    inc b                                         ; $52ad: $04
    dec l                                         ; $52ae: $2d
    jp nc, $dd0e                                  ; $52af: $d2 $0e $dd

    ld c, $9f                                     ; $52b2: $0e $9f
    cp e                                          ; $52b4: $bb
    ld a, [hl]                                    ; $52b5: $7e
    rst $08                                       ; $52b6: $cf
    dec d                                         ; $52b7: $15
    and a                                         ; $52b8: $a7
    ld d, $1c                                     ; $52b9: $16 $1c
    ld l, $3f                                     ; $52bb: $2e $3f
    push af                                       ; $52bd: $f5
    xor h                                         ; $52be: $ac
    and a                                         ; $52bf: $a7
    ld c, d                                       ; $52c0: $4a
    ld e, d                                       ; $52c1: $5a
    ld b, e                                       ; $52c2: $43
    jr jr_06c_52ff                                ; $52c3: $18 $3a

    ld d, l                                       ; $52c5: $55
    sbc [hl]                                      ; $52c6: $9e
    ld d, d                                       ; $52c7: $52
    or $53                                        ; $52c8: $f6 $53
    ld h, h                                       ; $52ca: $64
    rrca                                          ; $52cb: $0f
    db $eb                                        ; $52cc: $eb
    add l                                         ; $52cd: $85
    add [hl]                                      ; $52ce: $86
    inc a                                         ; $52cf: $3c

Call_06c_52d0:
    pop bc                                        ; $52d0: $c1
    ld a, [hl-]                                   ; $52d1: $3a
    and l                                         ; $52d2: $a5
    jp z, $e331                                   ; $52d3: $ca $31 $e3

    add hl, bc                                    ; $52d6: $09
    ld a, [hl]                                    ; $52d7: $7e
    xor h                                         ; $52d8: $ac
    ld d, h                                       ; $52d9: $54
    add hl, sp                                    ; $52da: $39
    reti                                          ; $52db: $d9


    cpl                                           ; $52dc: $2f
    ccf                                           ; $52dd: $3f
    call $d153                                    ; $52de: $cd $53 $d1
    jp z, $ebd8                                   ; $52e1: $ca $d8 $eb

    and a                                         ; $52e4: $a7
    ld [hl], d                                    ; $52e5: $72
    call z, $c7e8                                 ; $52e6: $cc $e8 $c7
    or [hl]                                       ; $52e9: $b6
    inc bc                                        ; $52ea: $03
    sbc a                                         ; $52eb: $9f
    ld sp, $518b                                  ; $52ec: $31 $8b $51
    sbc c                                         ; $52ef: $99
    sub [hl]                                      ; $52f0: $96
    add a                                         ; $52f1: $87
    sbc a                                         ; $52f2: $9f
    ld h, [hl]                                    ; $52f3: $66
    sub h                                         ; $52f4: $94
    or a                                          ; $52f5: $b7

jr_06c_52f6:
    and d                                         ; $52f6: $a2
    pop de                                        ; $52f7: $d1
    dec l                                         ; $52f8: $2d
    rrca                                          ; $52f9: $0f
    rst $08                                       ; $52fa: $cf
    and $b1                                       ; $52fb: $e6 $b1
    ret z                                         ; $52fd: $c8

    ld a, d                                       ; $52fe: $7a

jr_06c_52ff:
    ld l, d                                       ; $52ff: $6a
    ld h, h                                       ; $5300: $64
    push hl                                       ; $5301: $e5
    sbc b                                         ; $5302: $98
    pop de                                        ; $5303: $d1
    adc a                                         ; $5304: $8f
    ld l, l                                       ; $5305: $6d
    cp l                                          ; $5306: $bd
    add hl, sp                                    ; $5307: $39
    ld a, [c]                                     ; $5308: $f2
    xor h                                         ; $5309: $ac
    pop hl                                        ; $530a: $e1
    ld a, b                                       ; $530b: $78
    ld d, $12                                     ; $530c: $16 $12
    ld b, d                                       ; $530e: $42
    ld e, b                                       ; $530f: $58

jr_06c_5310:
    jp hl                                         ; $5310: $e9


    ld a, [hl-]                                   ; $5311: $3a
    add hl, hl                                    ; $5312: $29
    jp c, $d914                                   ; $5313: $da $14 $d9

    jp Jump_06c_6caa                              ; $5316: $c3 $aa $6c


    cp $9d                                        ; $5319: $fe $9d
    adc $2e                                       ; $531b: $ce $2e
    add [hl]                                      ; $531d: $86
    ld [hl], l                                    ; $531e: $75
    or d                                          ; $531f: $b2
    ld h, a                                       ; $5320: $67
    jp $d8a5                                      ; $5321: $c3 $a5 $d8


    ld c, $37                                     ; $5324: $0e $37
    ld b, a                                       ; $5326: $47
    sbc [hl]                                      ; $5327: $9e
    dec [hl]                                      ; $5328: $35
    inc e                                         ; $5329: $1c
    rst $08                                       ; $532a: $cf
    ld [hl-], a                                   ; $532b: $32
    set 1, c                                      ; $532c: $cb $c9
    pop de                                        ; $532e: $d1

jr_06c_532f:
    ld h, b                                       ; $532f: $60
    and l                                         ; $5330: $a5
    jp z, $9ec9                                   ; $5331: $ca $c9 $9e

    or [hl]                                       ; $5334: $b6

Jump_06c_5335:
    cp [hl]                                       ; $5335: $be
    rra                                           ; $5336: $1f
    ld l, l                                       ; $5337: $6d
    jr c, jr_06c_5310                             ; $5338: $38 $d6

    jr c, jr_06c_535a                             ; $533a: $38 $1e

    ld b, l                                       ; $533c: $45
    ld b, e                                       ; $533d: $43
    ld e, b                                       ; $533e: $58
    db $e4                                        ; $533f: $e4
    sub $8f                                       ; $5340: $d6 $8f
    or l                                          ; $5342: $b5
    ret c                                         ; $5343: $d8

    ld d, e                                       ; $5344: $53
    ld e, $6d                                     ; $5345: $1e $6d
    and h                                         ; $5347: $a4
    dec hl                                        ; $5348: $2b
    ld d, l                                       ; $5349: $55
    ld c, [hl]                                    ; $534a: $4e
    or $cb                                        ; $534b: $f6 $cb
    ld c, a                                       ; $534d: $4f
    ld d, a                                       ; $534e: $57
    ld h, h                                       ; $534f: $64
    sub $66                                       ; $5350: $d6 $66
    xor $d4                                       ; $5352: $ee $d4
    ld a, d                                       ; $5354: $7a
    xor d                                         ; $5355: $aa
    ld h, a                                       ; $5356: $67
    inc bc                                        ; $5357: $03
    adc c                                         ; $5358: $89
    cp l                                          ; $5359: $bd

jr_06c_535a:
    ld a, [hl-]                                   ; $535a: $3a
    and a                                         ; $535b: $a7
    rra                                           ; $535c: $1f
    ld h, c                                       ; $535d: $61
    ld d, c                                       ; $535e: $51
    dec hl                                        ; $535f: $2b
    sbc d                                         ; $5360: $9a
    ld d, l                                       ; $5361: $55
    ld d, c                                       ; $5362: $51
    jp z, $1e1e                                   ; $5363: $ca $1e $1e

    db $db                                        ; $5366: $db
    ld bc, $371f                                  ; $5367: $01 $1f $37
    sub b                                         ; $536a: $90
    ld e, b                                       ; $536b: $58
    and l                                         ; $536c: $a5
    dec b                                         ; $536d: $05
    scf                                           ; $536e: $37
    sub b                                         ; $536f: $90
    ret c                                         ; $5370: $d8

    ld c, b                                       ; $5371: $48
    rst $10                                       ; $5372: $d7
    adc h                                         ; $5373: $8c
    ld b, b                                       ; $5374: $40
    ld [c], a                                     ; $5375: $e2
    adc $ca                                       ; $5376: $ce $ca
    ld sp, $1fa3                                  ; $5378: $31 $a3 $1f
    ld l, e                                       ; $537b: $6b
    jr nz, jr_06c_532f                            ; $537c: $20 $b1

    db $d3                                        ; $537e: $d3
    or a                                          ; $537f: $b7
    sub e                                         ; $5380: $93
    inc de                                        ; $5381: $13
    xor $f4                                       ; $5382: $ee $f4
    ld h, e                                       ; $5384: $63
    ld l, h                                       ; $5385: $6c
    ld e, $6d                                     ; $5386: $1e $6d
    ld l, b                                       ; $5388: $68
    or e                                          ; $5389: $b3

Jump_06c_538a:
    add h                                         ; $538a: $84
    dec hl                                        ; $538b: $2b
    push de                                       ; $538c: $d5
    or e                                          ; $538d: $b3
    set 3, [hl]                                   ; $538e: $cb $de
    jr c, jr_06c_5392                             ; $5390: $38 $00

jr_06c_5392:
    rra                                           ; $5392: $1f
    scf                                           ; $5393: $37
    or h                                          ; $5394: $b4
    ld de, $7551                                  ; $5395: $11 $51 $75
    xor h                                         ; $5398: $ac
    sbc a                                         ; $5399: $9f
    and h                                         ; $539a: $a4
    ld h, l                                       ; $539b: $65
    add $bd                                       ; $539c: $c6 $bd
    ld hl, $928c                                  ; $539e: $21 $8c $92
    adc l                                         ; $53a1: $8d
    or h                                          ; $53a2: $b4
    ld a, [hl-]                                   ; $53a3: $3a
    ld a, [$67a9]                                 ; $53a4: $fa $a9 $67
    ld h, e                                       ; $53a7: $63
    ld a, [c]                                     ; $53a8: $f2
    or e                                          ; $53a9: $b3
    push af                                       ; $53aa: $f5
    ld a, [de]                                    ; $53ab: $1a
    or h                                          ; $53ac: $b4
    ld c, h                                       ; $53ad: $4c
    and l                                         ; $53ae: $a5
    add $f5                                       ; $53af: $c6 $f5
    ld h, a                                       ; $53b1: $67
    jp hl                                         ; $53b2: $e9


    xor d                                         ; $53b3: $aa
    ld c, h                                       ; $53b4: $4c
    and l                                         ; $53b5: $a5
    ld c, d                                       ; $53b6: $4a
    ld e, e                                       ; $53b7: $5b
    pop af                                        ; $53b8: $f1
    ld e, $5b                                     ; $53b9: $1e $5b
    db $d3                                        ; $53bb: $d3
    db $e4                                        ; $53bc: $e4
    ret nc                                        ; $53bd: $d0

    ccf                                           ; $53be: $3f

Call_06c_53bf:
    ld l, a                                       ; $53bf: $6f
    sub a                                         ; $53c0: $97
    dec d                                         ; $53c1: $15
    xor l                                         ; $53c2: $ad
    ld b, b                                       ; $53c3: $40
    ld [c], a                                     ; $53c4: $e2
    xor d                                         ; $53c5: $aa
    ld de, $63bb                                  ; $53c6: $11 $bb $63
    adc [hl]                                      ; $53c9: $8e
    inc l                                         ; $53ca: $2c
    ld d, h                                       ; $53cb: $54
    sub e                                         ; $53cc: $93
    ld b, [hl]                                    ; $53cd: $46
    ld hl, sp-$27                                 ; $53ce: $f8 $d9
    ld c, $37                                     ; $53d0: $0e $37
    ld b, a                                       ; $53d2: $47
    sbc [hl]                                      ; $53d3: $9e
    push af                                       ; $53d4: $f5
    ei                                            ; $53d5: $fb
    ldh [rHDMA2], a                               ; $53d6: $e0 $52
    inc hl                                        ; $53d8: $23
    rst $38                                       ; $53d9: $ff
    ld l, h                                       ; $53da: $6c
    ld b, [hl]                                    ; $53db: $46
    dec d                                         ; $53dc: $15
    dec sp                                        ; $53dd: $3b
    ld [$68d9], a                                 ; $53de: $ea $d9 $68
    inc hl                                        ; $53e1: $23
    cp d                                          ; $53e2: $ba
    sub b                                         ; $53e3: $90
    or h                                          ; $53e4: $b4
    ret c                                         ; $53e5: $d8

    ld c, a                                       ; $53e6: $4f
    ret                                           ; $53e7: $c9


    and c                                         ; $53e8: $a1
    ld a, a                                       ; $53e9: $7f
    sbc $7e                                       ; $53ea: $de $7e
    and e                                         ; $53ec: $a3
    scf                                           ; $53ed: $37
    ld b, a                                       ; $53ee: $47
    sbc [hl]                                      ; $53ef: $9e
    dec [hl]                                      ; $53f0: $35
    inc e                                         ; $53f1: $1c
    rst $08                                       ; $53f2: $cf
    ld a, [hl]                                    ; $53f3: $7e
    sbc a                                         ; $53f4: $9f
    inc c                                         ; $53f5: $0c
    sub $40                                       ; $53f6: $d6 $40
    ld h, d                                       ; $53f8: $62
    and c                                         ; $53f9: $a1
    add l                                         ; $53fa: $85
    add hl, sp                                    ; $53fb: $39
    ld hl, sp+$64                                 ; $53fc: $f8 $64
    ret nc                                        ; $53fe: $d0

    ld a, [hl+]                                   ; $53ff: $2a
    db $eb                                        ; $5400: $eb
    and $4f                                       ; $5401: $e6 $4f
    rst $10                                       ; $5403: $d7
    ld b, b                                       ; $5404: $40
    ld b, d                                       ; $5405: $42
    or $d3                                        ; $5406: $f6 $d3
    rst $38                                       ; $5408: $ff
    ret z                                         ; $5409: $c8

    or e                                          ; $540a: $b3
    and $df                                       ; $540b: $e6 $df
    add hl, hl                                    ; $540d: $29
    dec [hl]                                      ; $540e: $35
    ld b, $77                                     ; $540f: $06 $77
    halt                                          ; $5411: $76
    ld sp, $9fb2                                  ; $5412: $31 $b2 $9f
    db $ed                                        ; $5415: $ed
    nop                                           ; $5416: $00
    rst $20                                       ; $5417: $e7
    or a                                          ; $5418: $b7
    sub [hl]                                      ; $5419: $96
    ld b, [hl]                                    ; $541a: $46
    ld [hl], $b9                                  ; $541b: $36 $b9
    ld [hl+], a                                   ; $541d: $22
    ld h, d                                       ; $541e: $62
    rla                                           ; $541f: $17
    ld c, a                                       ; $5420: $4f
    ld b, e                                       ; $5421: $43
    jr jr_06c_545e                                ; $5422: $18 $3a

    push de                                       ; $5424: $d5
    dec bc                                        ; $5425: $0b
    ld [hl], c                                    ; $5426: $71
    cp c                                          ; $5427: $b9
    add hl, hl                                    ; $5428: $29
    or d                                          ; $5429: $b2
    add a                                         ; $542a: $87
    dec [hl]                                      ; $542b: $35
    ld c, a                                       ; $542c: $4f
    ld b, l                                       ; $542d: $45
    dec hl                                        ; $542e: $2b
    ld h, e                                       ; $542f: $63
    xor a                                         ; $5430: $af
    and a                                         ; $5431: $a7
    ld b, [hl]                                    ; $5432: $46
    ld d, [hl]                                    ; $5433: $56
    adc [hl]                                      ; $5434: $8e
    add hl, de                                    ; $5435: $19
    db $fd                                        ; $5436: $fd
    ret c                                         ; $5437: $d8

    halt                                          ; $5438: $76
    nop                                           ; $5439: $00
    rra                                           ; $543a: $1f
    ld d, a                                       ; $543b: $57
    jp nz, $2cad                                  ; $543c: $c2 $ad $2c

    sbc [hl]                                      ; $543f: $9e
    ld a, [hl-]                                   ; $5440: $3a
    inc l                                         ; $5441: $2c
    xor l                                         ; $5442: $ad
    dec b                                         ; $5443: $05
    add a                                         ; $5444: $87
    bit 1, a                                      ; $5445: $cb $4f
    dec a                                         ; $5447: $3d
    ld [bc], a                                    ; $5448: $02
    ld l, c                                       ; $5449: $69
    dec [hl]                                      ; $544a: $35
    add h                                         ; $544b: $84
    and c                                         ; $544c: $a1
    add sp, -$45                                  ; $544d: $e8 $bb
    or [hl]                                       ; $544f: $b6
    ld b, h                                       ; $5450: $44
    dec hl                                        ; $5451: $2b
    rst $18                                       ; $5452: $df
    ld h, e                                       ; $5453: $63
    dec bc                                        ; $5454: $0b
    cp l                                          ; $5455: $bd
    ld d, b                                       ; $5456: $50
    ld b, h                                       ; $5457: $44
    jp $82ff                                      ; $5458: $c3 $ff $82


    sub $a3                                       ; $545b: $d6 $a3
    pop hl                                        ; $545d: $e1

jr_06c_545e:
    ld e, b                                       ; $545e: $58
    ld b, h                                       ; $545f: $44
    ld e, l                                       ; $5460: $5d
    ldh a, [rBCPD]                                ; $5461: $f0 $69
    ld c, c                                       ; $5463: $49
    inc [hl]                                      ; $5464: $34
    ld c, a                                       ; $5465: $4f

Jump_06c_5466:
    ld b, l                                       ; $5466: $45
    dec hl                                        ; $5467: $2b
    ld h, e                                       ; $5468: $63
    xor a                                         ; $5469: $af
    sbc a                                         ; $546a: $9f
    jp z, $a331                                   ; $546b: $ca $31 $a3

    rra                                           ; $546e: $1f
    db $db                                        ; $546f: $db
    ld c, $e7                                     ; $5470: $0e $e7
    xor c                                         ; $5472: $a9
    sub e                                         ; $5473: $93
    cp $ab                                        ; $5474: $fe $ab
    add c                                         ; $5476: $81
    call nz, $d6f2                                ; $5477: $c4 $f2 $d6
    jp nc, Jump_000_26c8                          ; $547a: $d2 $c8 $26

    ld d, a                                       ; $547d: $57
    ld b, h                                       ; $547e: $44
    db $ec                                        ; $547f: $ec
    ld [c], a                                     ; $5480: $e2
    ld l, c                                       ; $5481: $69
    ld [$a743], sp                                ; $5482: $08 $43 $a7
    jp z, $715b                                   ; $5485: $ca $5b $71

    adc d                                         ; $5488: $8a
    db $ec                                        ; $5489: $ec
    ld h, c                                       ; $548a: $61
    call $1dd3                                    ; $548b: $cd $d3 $1d
    ld a, [hl]                                    ; $548e: $7e
    cp d                                          ; $548f: $ba
    ld d, e                                       ; $5490: $53
    inc hl                                        ; $5491: $23
    db $eb                                        ; $5492: $eb
    xor c                                         ; $5493: $a9
    sub c                                         ; $5494: $91
    sub l                                         ; $5495: $95
    ld h, e                                       ; $5496: $63
    ld b, [hl]                                    ; $5497: $46
    ccf                                           ; $5498: $3f
    or [hl]                                       ; $5499: $b6
    dec e                                         ; $549a: $1d
    rra                                           ; $549b: $1f

jr_06c_549c:
    sub a                                         ; $549c: $97
    ld a, [de]                                    ; $549d: $1a
    ld [hl], d                                    ; $549e: $72
    rla                                           ; $549f: $17
    ld c, a                                       ; $54a0: $4f
    ld b, e                                       ; $54a1: $43
    cp e                                          ; $54a2: $bb

Call_06c_54a3:
    rst $20                                       ; $54a3: $e7
    sub $72                                       ; $54a4: $d6 $72
    db $d3                                        ; $54a6: $d3
    dec sp                                        ; $54a7: $3b
    dec de                                        ; $54a8: $1b
    adc [hl]                                      ; $54a9: $8e
    ld b, l                                       ; $54aa: $45
    call nc, $d8a3                                ; $54ab: $d4 $a3 $d8
    ld d, c                                       ; $54ae: $51
    ccf                                           ; $54af: $3f
    dec d                                         ; $54b0: $15
    adc a                                         ; $54b1: $8f
    add [hl]                                      ; $54b2: $86
    dec hl                                        ; $54b3: $2b
    ld h, d                                       ; $54b4: $62
    xor a                                         ; $54b5: $af
    rst $20                                       ; $54b6: $e7
    sbc a                                         ; $54b7: $9f
    db $dd                                        ; $54b8: $dd
    ld sp, hl                                     ; $54b9: $f9
    add a                                         ; $54ba: $87
    dec [hl]                                      ; $54bb: $35
    add h                                         ; $54bc: $84
    and c                                         ; $54bd: $a1
    ret c                                         ; $54be: $d8

    ld c, a                                       ; $54bf: $4f
    ret                                           ; $54c0: $c9


    ld [hl], l                                    ; $54c1: $75
    ld c, a                                       ; $54c2: $4f
    daa                                           ; $54c3: $27
    ret c                                         ; $54c4: $d8

    halt                                          ; $54c5: $76
    nop                                           ; $54c6: $00
    rst $10                                       ; $54c7: $d7
    sbc b                                         ; $54c8: $98
    ld a, [de]                                    ; $54c9: $1a
    ld h, d                                       ; $54ca: $62
    push de                                       ; $54cb: $d5
    or c                                          ; $54cc: $b1
    ld [hl], d                                    ; $54cd: $72
    ld [hl], d                                    ; $54ce: $72
    sbc h                                         ; $54cf: $9c
    call nc, Call_06c_6240                        ; $54d0: $d4 $40 $62
    push bc                                       ; $54d3: $c5
    ld hl, sp+$2f                                 ; $54d4: $f8 $2f
    inc [hl]                                      ; $54d6: $34
    add hl, sp                                    ; $54d7: $39
    inc [hl]                                      ; $54d8: $34
    add h                                         ; $54d9: $84
    ld a, [hl+]                                   ; $54da: $2a
    ld c, [hl]                                    ; $54db: $4e
    ld [hl], h                                    ; $54dc: $74
    ld d, l                                       ; $54dd: $55
    ld c, d                                       ; $54de: $4a
    ld h, e                                       ; $54df: $63
    ld b, h                                       ; $54e0: $44
    ld de, $582d                                  ; $54e1: $11 $2d $58
    db $eb                                        ; $54e4: $eb
    and a                                         ; $54e5: $a7
    call nc, $bb90                                ; $54e6: $d4 $90 $bb
    ld a, b                                       ; $54e9: $78
    sbc d                                         ; $54ea: $9a
    ld d, c                                       ; $54eb: $51
    ld l, d                                       ; $54ec: $6a

jr_06c_54ed:
    jr nz, jr_06c_549c                            ; $54ed: $20 $ad

Jump_06c_54ef:
    adc h                                         ; $54ef: $8c
    ld a, d                                       ; $54f0: $7a
    ld l, d                                       ; $54f1: $6a
    ld h, h                                       ; $54f2: $64
    push hl                                       ; $54f3: $e5
    sbc b                                         ; $54f4: $98
    pop de                                        ; $54f5: $d1
    adc a                                         ; $54f6: $8f
    ld l, l                                       ; $54f7: $6d
    rlca                                          ; $54f8: $07
    rra                                           ; $54f9: $1f
    scf                                           ; $54fa: $37
    or h                                          ; $54fb: $b4
    ld de, $7551                                  ; $54fc: $11 $51 $75
    xor h                                         ; $54ff: $ac
    ld l, a                                       ; $5500: $6f
    xor l                                         ; $5501: $ad
    sbc h                                         ; $5502: $9c
    or l                                          ; $5503: $b5
    call z, Call_000_32ba                         ; $5504: $cc $ba $32
    ld a, d                                       ; $5507: $7a
    ld [hl], l                                    ; $5508: $75
    ld l, c                                       ; $5509: $69
    cp h                                          ; $550a: $bc
    rst $00                                       ; $550b: $c7
    ld d, $ea                                     ; $550c: $16 $ea
    pop de                                        ; $550e: $d1
    ld l, e                                       ; $550f: $6b
    pop bc                                        ; $5510: $c1
    and a                                         ; $5511: $a7
    dec h                                         ; $5512: $25
    pop de                                        ; $5513: $d1
    ld c, h                                       ; $5514: $4c
    adc l                                         ; $5515: $8d
    inc l                                         ; $5516: $2c
    or d                                          ; $5517: $b2
    add a                                         ; $5518: $87
    ld [hl], l                                    ; $5519: $75
    db $db                                        ; $551a: $db
    or [hl]                                       ; $551b: $b6
    ld l, $d5                                     ; $551c: $2e $d5
    xor c                                         ; $551e: $a9
    or d                                          ; $551f: $b2
    rst $38                                       ; $5520: $ff
    sub c                                         ; $5521: $91
    ld h, a                                       ; $5522: $67
    sub l                                         ; $5523: $95
    ld h, d                                       ; $5524: $62
    jr c, jr_06c_559b                             ; $5525: $38 $74

    ld a, [de]                                    ; $5527: $1a

Call_06c_5528:
    ld c, b                                       ; $5528: $48
    inc l                                         ; $5529: $2c
    ld [hl], a                                    ; $552a: $77
    ld d, [hl]                                    ; $552b: $56
    add h                                         ; $552c: $84
    db $db                                        ; $552d: $db
    push af                                       ; $552e: $f5
    inc l                                         ; $552f: $2c
    or e                                          ; $5530: $b3
    xor [hl]                                      ; $5531: $ae
    inc c                                         ; $5532: $0c
    db $db                                        ; $5533: $db
    ld c, $e7                                     ; $5534: $0e $e7
    xor c                                         ; $5536: $a9
    sub b                                         ; $5537: $90
    ld [c], a                                     ; $5538: $e2
    ld l, c                                       ; $5539: $69
    jr nz, jr_06c_54ed                            ; $553a: $20 $b1

    ld l, a                                       ; $553c: $6f
    xor l                                         ; $553d: $ad
    sbc h                                         ; $553e: $9c
    or l                                          ; $553f: $b5
    ld [hl], c                                    ; $5540: $71
    ld h, l                                       ; $5541: $65
    ld sp, $5c9a                                  ; $5542: $31 $9a $5c
    xor c                                         ; $5545: $a9
    jp nc, $bc56                                  ; $5546: $d2 $56 $bc

    rst $00                                       ; $5549: $c7
    sub $34                                       ; $554a: $d6 $34
    ld d, e                                       ; $554c: $53
    inc hl                                        ; $554d: $23
    adc e                                         ; $554e: $8b
    db $ec                                        ; $554f: $ec
    ld h, c                                       ; $5550: $61
    ld b, l                                       ; $5551: $45
    adc [hl]                                      ; $5552: $8e
    call nc, $d67a                                ; $5553: $d4 $7a $d6
    adc l                                         ; $5556: $8d
    add hl, de                                    ; $5557: $19
    xor l                                         ; $5558: $ad
    xor h                                         ; $5559: $ac
    inc e                                         ; $555a: $1c
    rst $00                                       ; $555b: $c7
    adc e                                         ; $555c: $8b
    or b                                          ; $555d: $b0
    and d                                         ; $555e: $a2
    ld hl, $6154                                  ; $555f: $21 $54 $61
    ld d, l                                       ; $5562: $55
    and [hl]                                      ; $5563: $a6
    ld b, [hl]                                    ; $5564: $46
    cp d                                          ; $5565: $ba
    ld [hl], b                                    ; $5566: $70
    cp d                                          ; $5567: $ba
    xor a                                         ; $5568: $af
    cp a                                          ; $5569: $bf
    or c                                          ; $556a: $b1
    ld a, c                                       ; $556b: $79
    xor d                                         ; $556c: $aa
    ret c                                         ; $556d: $d8

    ld a, a                                       ; $556e: $7f
    and a                                         ; $556f: $a7
    ld [hl], d                                    ; $5570: $72
    ld e, h                                       ; $5571: $5c
    jp z, $ebd8                                   ; $5572: $ca $d8 $eb

    ld b, a                                       ; $5575: $47
    dec de                                        ; $5576: $1b
    jp c, $a888                                   ; $5577: $da $88 $a8

    ld a, [hl-]                                   ; $557a: $3a
    ld b, [hl]                                    ; $557b: $46
    db $dd                                        ; $557c: $dd
    ld c, $97                                     ; $557d: $0e $97
    adc e                                         ; $557f: $8b
    dec e                                         ; $5580: $1d
    push af                                       ; $5581: $f5
    ld d, e                                       ; $5582: $53
    pop af                                        ; $5583: $f1
    ld l, b                                       ; $5584: $68
    cp b                                          ; $5585: $b8
    ld [hl+], a                                   ; $5586: $22
    or $8a                                        ; $5587: $f6 $8a
    sub [hl]                                      ; $5589: $96
    ld b, h                                       ; $558a: $44
    inc sp                                        ; $558b: $33
    dec [hl]                                      ; $558c: $35
    or d                                          ; $558d: $b2
    ret z                                         ; $558e: $c8

    ld e, $b6                                     ; $558f: $1e $b6

Call_06c_5591:
    push af                                       ; $5591: $f5
    inc a                                         ; $5592: $3c
    dec d                                         ; $5593: $15
    pop hl                                        ; $5594: $e1
    ld l, b                                       ; $5595: $68
    sbc h                                         ; $5596: $9c
    ld b, $12                                     ; $5597: $06 $12
    adc e                                         ; $5599: $8b
    ld e, [hl]                                    ; $559a: $5e

jr_06c_559b:
    add e                                         ; $559b: $83
    add a                                         ; $559c: $87
    ld h, e                                       ; $559d: $63
    xor a                                         ; $559e: $af
    adc a                                         ; $559f: $8f
    inc de                                        ; $55a0: $13
    add hl, de                                    ; $55a1: $19
    ld a, a                                       ; $55a2: $7f
    ld [de], a                                    ; $55a3: $12
    inc d                                         ; $55a4: $14
    ld h, l                                       ; $55a5: $65
    ld d, $d1                                     ; $55a6: $16 $d1
    inc e                                         ; $55a8: $1c
    sub a                                         ; $55a9: $97
    ld b, c                                       ; $55aa: $41
    ret nc                                        ; $55ab: $d0

    ld d, e                                       ; $55ac: $53
    add d                                         ; $55ad: $82
    ld a, c                                       ; $55ae: $79
    inc [hl]                                      ; $55af: $34
    cp c                                          ; $55b0: $b9
    cp d                                          ; $55b1: $ba
    ret                                           ; $55b2: $c9


    sub c                                         ; $55b3: $91
    push af                                       ; $55b4: $f5
    ld l, h                                       ; $55b5: $6c
    jr c, jr_06c_55cf                             ; $55b6: $38 $17

    rst $28                                       ; $55b8: $ef
    and l                                         ; $55b9: $a5
    sub $b3                                       ; $55ba: $d6 $b3
    ld [hl-], a                                   ; $55bc: $32
    add hl, de                                    ; $55bd: $19
    cp d                                          ; $55be: $ba
    rlca                                          ; $55bf: $07
    ld l, a                                       ; $55c0: $6f
    rlca                                          ; $55c1: $07
    rst $20                                       ; $55c2: $e7
    or a                                          ; $55c3: $b7
    sub [hl]                                      ; $55c4: $96
    ld b, [hl]                                    ; $55c5: $46
    ld [hl], $39                                  ; $55c6: $36 $39
    inc [hl]                                      ; $55c8: $34
    inc e                                         ; $55c9: $1c
    adc e                                         ; $55ca: $8b
    xor b                                         ; $55cb: $a8
    dec bc                                        ; $55cc: $0b
    ld a, $2d                                     ; $55cd: $3e $2d

jr_06c_55cf:
    adc c                                         ; $55cf: $89
    ld h, [hl]                                    ; $55d0: $66
    ld l, d                                       ; $55d1: $6a
    ld h, h                                       ; $55d2: $64
    push hl                                       ; $55d3: $e5
    sbc b                                         ; $55d4: $98
    pop de                                        ; $55d5: $d1
    adc a                                         ; $55d6: $8f
    dec [hl]                                      ; $55d7: $35
    sub b                                         ; $55d8: $90
    ret c                                         ; $55d9: $d8

    sbc l                                         ; $55da: $9d
    ld a, a                                       ; $55db: $7f
    call nc, $632f                                ; $55dc: $d4 $2f $63
    sbc h                                         ; $55df: $9c
    add [hl]                                      ; $55e0: $86
    jr nc, jr_06c_55f7                            ; $55e1: $30 $14

    ld e, d                                       ; $55e3: $5a
    rlca                                          ; $55e4: $07
    ld [hl], l                                    ; $55e5: $75
    ld h, e                                       ; $55e6: $63
    ld b, $dd                                     ; $55e7: $06 $dd
    ld a, d                                       ; $55e9: $7a
    cp [hl]                                       ; $55ea: $be
    and e                                         ; $55eb: $a3
    ld a, a                                       ; $55ec: $7f
    cp d                                          ; $55ed: $ba
    and d                                         ; $55ee: $a2
    ld [de], a                                    ; $55ef: $12
    cp e                                          ; $55f0: $bb
    jr jr_06c_5649                                ; $55f1: $18 $56

    ld h, l                                       ; $55f3: $65
    rst $38                                       ; $55f4: $ff
    inc hl                                        ; $55f5: $23
    rst $08                                       ; $55f6: $cf

jr_06c_55f7:
    ld c, d                                       ; $55f7: $4a
    adc l                                         ; $55f8: $8d
    db $eb                                        ; $55f9: $eb
    ld c, a                                       ; $55fa: $4f
    dec hl                                        ; $55fb: $2b
    and d                                         ; $55fc: $a2
    ld b, c                                       ; $55fd: $41
    pop hl                                        ; $55fe: $e1
    and a                                         ; $55ff: $a7
    ld hl, $450c                                  ; $5600: $21 $0c $45
    sub c                                         ; $5603: $91
    halt                                          ; $5604: $76
    call nc, Call_000_37b3                        ; $5605: $d4 $b3 $37
    ld [hl-], a                                   ; $5608: $32
    ld b, d                                       ; $5609: $42
    ld l, [hl]                                    ; $560a: $6e
    rlca                                          ; $560b: $07
    sbc a                                         ; $560c: $9f
    adc l                                         ; $560d: $8d
    add a                                         ; $560e: $87
    ld d, $5a                                     ; $560f: $16 $5a
    and h                                         ; $5611: $a4
    dec e                                         ; $5612: $1d
    ld e, d                                       ; $5613: $5a
    and e                                         ; $5614: $a3
    adc b                                         ; $5615: $88
    add $1c                                       ; $5616: $c6 $1c
    xor c                                         ; $5618: $a9
    push bc                                       ; $5619: $c5
    call nc, $eca5                                ; $561a: $d4 $a5 $ec
    and a                                         ; $561d: $a7
    ld a, [hl]                                    ; $561e: $7e
    or h                                          ; $561f: $b4
    pop de                                        ; $5620: $d1
    ld h, $dd                                     ; $5621: $26 $dd
    add d                                         ; $5623: $82
    sub [hl]                                      ; $5624: $96
    ld a, [de]                                    ; $5625: $1a
    ld a, a                                       ; $5626: $7f
    and a                                         ; $5627: $a7
    sbc c                                         ; $5628: $99
    ld a, [de]                                    ; $5629: $1a
    ld e, c                                       ; $562a: $59
    ld h, h                                       ; $562b: $64
    rrca                                          ; $562c: $0f
    inc de                                        ; $562d: $13
    ld [hl], h                                    ; $562e: $74
    ld h, l                                       ; $562f: $65
    cp c                                          ; $5630: $b9
    and a                                         ; $5631: $a7
    sub l                                         ; $5632: $95
    db $fd                                        ; $5633: $fd
    db $f4                                        ; $5634: $f4
    or d                                          ; $5635: $b2
    ld b, l                                       ; $5636: $45
    sub [hl]                                      ; $5637: $96
    cp l                                          ; $5638: $bd
    halt                                          ; $5639: $76
    cp a                                          ; $563a: $bf
    ld l, $89                                     ; $563b: $2e $89
    db $ed                                        ; $563d: $ed
    nop                                           ; $563e: $00
    rst $20                                       ; $563f: $e7
    or a                                          ; $5640: $b7
    sub [hl]                                      ; $5641: $96
    ld b, [hl]                                    ; $5642: $46
    ld [hl], $39                                  ; $5643: $36 $39
    inc [hl]                                      ; $5645: $34
    inc e                                         ; $5646: $1c
    adc e                                         ; $5647: $8b
    xor b                                         ; $5648: $a8

jr_06c_5649:
    dec bc                                        ; $5649: $0b
    ld a, $2d                                     ; $564a: $3e $2d
    adc c                                         ; $564c: $89
    ld h, [hl]                                    ; $564d: $66
    ld l, d                                       ; $564e: $6a
    ld h, h                                       ; $564f: $64
    push hl                                       ; $5650: $e5
    sbc b                                         ; $5651: $98
    pop de                                        ; $5652: $d1
    adc a                                         ; $5653: $8f
    dec [hl]                                      ; $5654: $35
    sub b                                         ; $5655: $90
    ret c                                         ; $5656: $d8

    ld h, l                                       ; $5657: $65
    pop bc                                        ; $5658: $c1
    push af                                       ; $5659: $f5
    ld e, h                                       ; $565a: $5c
    or a                                          ; $565b: $b7
    add d                                         ; $565c: $82
    sbc a                                         ; $565d: $9f
    ret c                                         ; $565e: $d8

    and a                                         ; $565f: $a7
    ld hl, $4e2d                                  ; $5660: $21 $2d $4e
    dec a                                         ; $5663: $3d
    xor d                                         ; $5664: $aa
    ret c                                         ; $5665: $d8

    ld d, c                                       ; $5666: $51
    rst $08                                       ; $5667: $cf
    ld [hl+], a                                   ; $5668: $22
    db $ed                                        ; $5669: $ed
    xor b                                         ; $566a: $a8
    ld h, a                                       ; $566b: $67
    rst $18                                       ; $566c: $df
    reti                                          ; $566d: $d9


    ld d, a                                       ; $566e: $57
    db $fc                                        ; $566f: $fc
    ld [hl], c                                    ; $5670: $71
    ret                                           ; $5671: $c9


    rra                                           ; $5672: $1f
    or [hl]                                       ; $5673: $b6
    inc bc                                        ; $5674: $03
    sbc a                                         ; $5675: $9f
    ld sp, $518b                                  ; $5676: $31 $8b $51
    sbc c                                         ; $5679: $99
    sub [hl]                                      ; $567a: $96
    add a                                         ; $567b: $87
    sbc a                                         ; $567c: $9f
    ld a, [hl+]                                   ; $567d: $2a
    rr h                                          ; $567e: $cb $1c
    dec c                                         ; $5680: $0d
    ld d, [hl]                                    ; $5681: $56
    cp d                                          ; $5682: $ba
    ld a, [hl+]                                   ; $5683: $2a
    halt                                          ; $5684: $76
    ld l, b                                       ; $5685: $68
    dec a                                         ; $5686: $3d
    adc e                                         ; $5687: $8b
    or h                                          ; $5688: $b4
    and e                                         ; $5689: $a3
    add c                                         ; $568a: $81
    call nz, $dfe6                                ; $568b: $c4 $e6 $df
    add hl, hl                                    ; $568e: $29
    dec [hl]                                      ; $568f: $35
    ld a, [c]                                     ; $5690: $f2
    ld a, e                                       ; $5691: $7b
    cp b                                          ; $5692: $b8
    ld a, [hl+]                                   ; $5693: $2a

jr_06c_5694:
    or e                                          ; $5694: $b3
    sbc a                                         ; $5695: $9f
    ld h, $85                                     ; $5696: $26 $85
    add a                                         ; $5698: $87
    halt                                          ; $5699: $76
    db $db                                        ; $569a: $db
    or [hl]                                       ; $569b: $b6
    cp $47                                        ; $569c: $fe $47
    sbc [hl]                                      ; $569e: $9e
    dec [hl]                                      ; $569f: $35
    inc e                                         ; $56a0: $1c
    rst $08                                       ; $56a1: $cf
    ld [hl-], a                                   ; $56a2: $32
    set 1, c                                      ; $56a3: $cb $c9
    pop de                                        ; $56a5: $d1
    ld h, b                                       ; $56a6: $60
    push bc                                       ; $56a7: $c5
    ld a, [hl]                                    ; $56a8: $7e
    ld c, d                                       ; $56a9: $4a
    ld c, $d5                                     ; $56aa: $0e $d5
    ld h, h                                       ; $56ac: $64
    and c                                         ; $56ad: $a1
    ld d, c                                       ; $56ae: $51
    ld d, c                                       ; $56af: $51
    ld c, a                                       ; $56b0: $4f
    push bc                                       ; $56b1: $c5
    ret                                           ; $56b2: $c9


    ldh [$83], a                                  ; $56b3: $e0 $83
    rst $38                                       ; $56b5: $ff
    call c, Call_000_03b7                         ; $56b6: $dc $b7 $03
    rra                                           ; $56b9: $1f
    rst $30                                       ; $56ba: $f7
    jp z, $849e                                   ; $56bb: $ca $9e $84

    xor h                                         ; $56be: $ac
    ld h, a                                       ; $56bf: $67
    xor a                                         ; $56c0: $af
    call z, $b94e                                 ; $56c1: $cc $4e $b9
    ld h, $c3                                     ; $56c4: $26 $c3
    adc a                                         ; $56c6: $8f
    ld d, c                                       ; $56c7: $51
    db $eb                                        ; $56c8: $eb
    reti                                          ; $56c9: $d9


    dec hl                                        ; $56ca: $2b
    or b                                          ; $56cb: $b0
    ld [$67ad], sp                                ; $56cc: $08 $ad $67
    rst $18                                       ; $56cf: $df
    or d                                          ; $56d0: $b2
    ld [hl], h                                    ; $56d1: $74
    dec bc                                        ; $56d2: $0b
    ld e, d                                       ; $56d3: $5a
    or $2d                                        ; $56d4: $f6 $2d
    ld c, e                                       ; $56d6: $4b
    or a                                          ; $56d7: $b7
    ld b, [hl]                                    ; $56d8: $46
    ei                                            ; $56d9: $fb
    ld c, $dc                                     ; $56da: $0e $dc
    add sp, $68                                   ; $56dc: $e8 $68
    cpl                                           ; $56de: $2f
    inc [hl]                                      ; $56df: $34
    cp c                                          ; $56e0: $b9
    ld a, [bc]                                    ; $56e1: $0a
    rst $00                                       ; $56e2: $c7
    ld [hl], l                                    ; $56e3: $75
    ld c, a                                       ; $56e4: $4f
    daa                                           ; $56e5: $27
    ld e, b                                       ; $56e6: $58
    ld b, e                                       ; $56e7: $43
    jr jr_06c_5694                                ; $56e8: $18 $aa

    ld l, h                                       ; $56ea: $6c
    ld h, h                                       ; $56eb: $64
    adc [hl]                                      ; $56ec: $8e
    or b                                          ; $56ed: $b0
    jp z, $c271                                   ; $56ee: $ca $71 $c2

    sub l                                         ; $56f1: $95
    ld [hl], c                                    ; $56f2: $71
    pop af                                        ; $56f3: $f1
    ld e, [hl]                                    ; $56f4: $5e
    ld l, d                                       ; $56f5: $6a
    dec a                                         ; $56f6: $3d
    dec hl                                        ; $56f7: $2b
    ld h, c                                       ; $56f8: $61
    ld de, $1dba                                  ; $56f9: $11 $ba $1d
    sbc a                                         ; $56fc: $9f
    dec hl                                        ; $56fd: $2b
    adc e                                         ; $56fe: $8b
    add [hl]                                      ; $56ff: $86
    ld h, e                                       ; $5700: $63
    ld de, $c175                                  ; $5701: $11 $75 $c1
    and a                                         ; $5704: $a7
    dec h                                         ; $5705: $25
    pop de                                        ; $5706: $d1
    adc h                                         ; $5707: $8c
    add [hl]                                      ; $5708: $86
    jr nc, jr_06c_5785                            ; $5709: $30 $7a

    ld [hl], $84                                  ; $570b: $36 $84
    and c                                         ; $570d: $a1

Call_06c_570e:
    ld d, d                                       ; $570e: $52
    call z, $ac13                                 ; $570f: $cc $13 $ac
    adc b                                         ; $5712: $88
    rla                                           ; $5713: $17
    ld a, [hl-]                                   ; $5714: $3a
    dec c                                         ; $5715: $0d
    inc h                                         ; $5716: $24
    ld e, b                                       ; $5717: $58
    sbc h                                         ; $5718: $9c
    ld [hl+], a                                   ; $5719: $22
    ld a, e                                       ; $571a: $7b
    ret c                                         ; $571b: $d8

    sub $f3                                       ; $571c: $d6 $f3
    dec e                                         ; $571e: $1d
    ld e, l                                       ; $571f: $5d
    ld d, $dc                                     ; $5720: $16 $dc
    sbc l                                         ; $5722: $9d
    rst $38                                       ; $5723: $ff
    ldh [$27], a                                  ; $5724: $e0 $27
    or $29                                        ; $5726: $f6 $29
    ld [c], a                                     ; $5728: $e2
    add l                                         ; $5729: $85
    and d                                         ; $572a: $a2
    ret c                                         ; $572b: $d8

    ld d, c                                       ; $572c: $51
    ccf                                           ; $572d: $3f
    dec d                                         ; $572e: $15
    adc a                                         ; $572f: $8f
    add [hl]                                      ; $5730: $86
    dec hl                                        ; $5731: $2b
    ld h, d                                       ; $5732: $62
    xor a                                         ; $5733: $af
    ld hl, $1e5c                                  ; $5734: $21 $5c $1e
    adc [hl]                                      ; $5737: $8e
    add hl, sp                                    ; $5738: $39
    ld d, d                                       ; $5739: $52
    ret nc                                        ; $573a: $d0

    inc a                                         ; $573b: $3c
    sub l                                         ; $573c: $95
    ret nc                                        ; $573d: $d0

    xor c                                         ; $573e: $a9
    ld h, a                                       ; $573f: $67
    xor c                                         ; $5740: $a9
    ld de, $0756                                  ; $5741: $11 $56 $07
    add hl, hl                                    ; $5744: $29

jr_06c_5745:
    ld c, [hl]                                    ; $5745: $4e
    ld [de], a                                    ; $5746: $12
    ld a, [hl]                                    ; $5747: $7e
    or [hl]                                       ; $5748: $b6
    inc bc                                        ; $5749: $03
    rst $28                                       ; $574a: $ef
    xor h                                         ; $574b: $ac
    ld e, l                                       ; $574c: $5d
    adc d                                         ; $574d: $8a
    dec hl                                        ; $574e: $2b
    daa                                           ; $574f: $27
    dec hl                                        ; $5750: $2b
    ld c, a                                       ; $5751: $4f
    adc c                                         ; $5752: $89
    db $fd                                        ; $5753: $fd
    cpl                                           ; $5754: $2f
    xor e                                         ; $5755: $ab
    sbc a                                         ; $5756: $9f
    add $0b                                       ; $5757: $c6 $0b
    ld h, [hl]                                    ; $5759: $66
    sbc h                                         ; $575a: $9c
    ld [hl+], a                                   ; $575b: $22
    ld e, [hl]                                    ; $575c: $5e
    jr z, jr_06c_5794                             ; $575d: $28 $35

    or d                                          ; $575f: $b2
    ret z                                         ; $5760: $c8

    ld e, $56                                     ; $5761: $1e $56
    ld hl, $2d5d                                  ; $5763: $21 $5d $2d
    jr c, jr_06c_57c4                             ; $5766: $38 $5c

    ld a, [hl]                                    ; $5768: $7e
    or [hl]                                       ; $5769: $b6
    sbc [hl]                                      ; $576a: $9e
    and a                                         ; $576b: $a7
    ld b, d                                       ; $576c: $42
    adc d                                         ; $576d: $8a
    and a                                         ; $576e: $a7
    add c                                         ; $576f: $81
    call nz, Call_06c_6772                        ; $5770: $c4 $72 $67
    inc hl                                        ; $5773: $23
    ld e, l                                       ; $5774: $5d
    sub e                                         ; $5775: $93
    ld b, e                                       ; $5776: $43
    jp $88b1                                      ; $5777: $c3 $b1 $88


    cp d                                          ; $577a: $ba
    ldh [$d3], a                                  ; $577b: $e0 $d3
    sub d                                         ; $577d: $92
    jr z, jr_06c_57dd                             ; $577e: $28 $5d

    sub l                                         ; $5780: $95
    xor c                                         ; $5781: $a9
    ld d, h                                       ; $5782: $54
    ld l, c                                       ; $5783: $69
    dec hl                                        ; $5784: $2b

jr_06c_5785:
    sbc $63                                       ; $5785: $de $63
    ld l, e                                       ; $5787: $6b
    ld a, [hl-]                                   ; $5788: $3a
    xor c                                         ; $5789: $a9
    ld [hl], h                                    ; $578a: $74
    ld d, l                                       ; $578b: $55
    and [hl]                                      ; $578c: $a6
    jp nz, $b05c                                  ; $578d: $c2 $5c $b0

    xor l                                         ; $5790: $ad
    ld l, c                                       ; $5791: $69
    jr nz, jr_06c_5745                            ; $5792: $20 $b1

jr_06c_5794:
    ld a, $b8                                     ; $5794: $3e $b8
    ld a, [hl]                                    ; $5796: $7e
    add hl, de                                    ; $5797: $19
    db $e3                                        ; $5798: $e3
    inc d                                         ; $5799: $14
    add c                                         ; $579a: $81
    or h                                          ; $579b: $b4
    or [hl]                                       ; $579c: $b6
    inc bc                                        ; $579d: $03
    scf                                           ; $579e: $37
    ret c                                         ; $579f: $d8

    rst $38                                       ; $57a0: $ff
    ret z                                         ; $57a1: $c8

    or e                                          ; $57a2: $b3
    ld b, $d2                                     ; $57a3: $06 $d2
    ld d, d                                       ; $57a5: $52
    ld e, d                                       ; $57a6: $5a
    and l                                         ; $57a7: $a5
    sbc b                                         ; $57a8: $98
    daa                                           ; $57a9: $27
    ld e, b                                       ; $57aa: $58
    ld de, $742f                                  ; $57ab: $11 $2f $74
    ld a, [de]                                    ; $57ae: $1a
    ld c, b                                       ; $57af: $48
    or b                                          ; $57b0: $b0
    jr c, @+$47                                   ; $57b1: $38 $45

    or $b0                                        ; $57b3: $f6 $b0
    ld a, [bc]                                    ; $57b5: $0a
    jp hl                                         ; $57b6: $e9


    ld l, d                                       ; $57b7: $6a
    pop bc                                        ; $57b8: $c1
    pop hl                                        ; $57b9: $e1
    ld a, [c]                                     ; $57ba: $f2
    inc hl                                        ; $57bb: $23
    ld l, b                                       ; $57bc: $68
    ld l, b                                       ; $57bd: $68
    inc hl                                        ; $57be: $23
    sub e                                         ; $57bf: $93
    or c                                          ; $57c0: $b1
    ld hl, $6877                                  ; $57c1: $21 $77 $68

jr_06c_57c4:
    xor c                                         ; $57c4: $a9
    ld [de], a                                    ; $57c5: $12
    ld e, $da                                     ; $57c6: $1e $da
    adc h                                         ; $57c8: $8c
    ld a, [c]                                     ; $57c9: $f2
    ld d, [hl]                                    ; $57ca: $56
    inc [hl]                                      ; $57cb: $34
    cp d                                          ; $57cc: $ba
    push hl                                       ; $57cd: $e5
    pop hl                                        ; $57ce: $e1
    reti                                          ; $57cf: $d9


    sbc l                                         ; $57d0: $9d
    ld a, [de]                                    ; $57d1: $1a
    ld e, c                                       ; $57d2: $59
    ccf                                           ; $57d3: $3f
    sub l                                         ; $57d4: $95
    ld h, e                                       ; $57d5: $63
    ld b, [hl]                                    ; $57d6: $46
    ccf                                           ; $57d7: $3f
    or [hl]                                       ; $57d8: $b6
    dec e                                         ; $57d9: $1d
    rra                                           ; $57da: $1f
    rst $10                                       ; $57db: $d7
    inc sp                                        ; $57dc: $33

jr_06c_57dd:
    cp h                                          ; $57dd: $bc
    ld b, a                                       ; $57de: $47
    ld d, a                                       ; $57df: $57
    sbc h                                         ; $57e0: $9c
    ld a, [$3be9]                                 ; $57e1: $fa $e9 $3b
    ld l, e                                       ; $57e4: $6b
    sub a                                         ; $57e5: $97
    ld [c], a                                     ; $57e6: $e2
    adc d                                         ; $57e7: $8a
    sub [hl]                                      ; $57e8: $96
    ld b, h                                       ; $57e9: $44
    inc sp                                        ; $57ea: $33
    dec [hl]                                      ; $57eb: $35
    or d                                          ; $57ec: $b2
    ret z                                         ; $57ed: $c8

    ld e, $b6                                     ; $57ee: $1e $b6
    push af                                       ; $57f0: $f5
    db $ed                                        ; $57f1: $ed
    ld [hl], l                                    ; $57f2: $75
    sbc e                                         ; $57f3: $9b
    xor [hl]                                      ; $57f4: $ae
    add c                                         ; $57f5: $81
    call nz, $838a                                ; $57f6: $c4 $8a $83
    xor e                                         ; $57f9: $ab
    ret                                           ; $57fa: $c9


    ld b, d                                       ; $57fb: $42
    and e                                         ; $57fc: $a3
    ld b, d                                       ; $57fd: $42
    dec hl                                        ; $57fe: $2b
    and h                                         ; $57ff: $a4
    xor e                                         ; $5800: $ab
    and a                                         ; $5801: $a7
    ld [c], a                                     ; $5802: $e2
    ld h, h                                       ; $5803: $64
    ldh a, [$c1]                                  ; $5804: $f0 $c1
    ld a, a                                       ; $5806: $7f
    ld l, $ed                                     ; $5807: $2e $ed
    ld e, $5c                                     ; $5809: $1e $5c
    rst $08                                       ; $580b: $cf
    inc e                                         ; $580c: $1c
    ld l, l                                       ; $580d: $6d
    or [hl]                                       ; $580e: $b6
    inc bc                                        ; $580f: $03
    rst $20                                       ; $5810: $e7
    or a                                          ; $5811: $b7
    sub [hl]                                      ; $5812: $96
    ld b, [hl]                                    ; $5813: $46
    ld [hl], $b9                                  ; $5814: $36 $b9
    jp nz, $b05c                                  ; $5816: $c2 $5c $b0

    xor l                                         ; $5819: $ad
    xor c                                         ; $581a: $a9
    inc e                                         ; $581b: $1c
    ld d, a                                       ; $581c: $57
    add a                                         ; $581d: $87
    ld c, b                                       ; $581e: $48
    ld e, e                                       ; $581f: $5b
    ld e, b                                       ; $5820: $58
    ld e, d                                       ; $5821: $5a
    rst $08                                       ; $5822: $cf
    ld d, d                                       ; $5823: $52
    and l                                         ; $5824: $a5
    xor l                                         ; $5825: $ad
    ld a, b                                       ; $5826: $78
    adc a                                         ; $5827: $8f
    xor l                                         ; $5828: $ad
    jp hl                                         ; $5829: $e9


    ld a, $a7                                     ; $582a: $3e $a7
    add hl, hl                                    ; $582c: $29
    or $d5                                        ; $582d: $f6 $d5
    adc h                                         ; $582f: $8c
    ld d, d                                       ; $5830: $52
    inc bc                                        ; $5831: $03
    ld l, c                                       ; $5832: $69
    ld h, l                                       ; $5833: $65
    ld l, h                                       ; $5834: $6c
    dec a                                         ; $5835: $3d
    ld c, a                                       ; $5836: $4f
    sbc l                                         ; $5837: $9d
    db $f4                                        ; $5838: $f4
    ld e, a                                       ; $5839: $5f
    ld c, l                                       ; $583a: $4d
    ld e, c                                       ; $583b: $59
    dec hl                                        ; $583c: $2b
    add h                                         ; $583d: $84
    and l                                         ; $583e: $a5
    ld e, l                                       ; $583f: $5d
    inc a                                         ; $5840: $3c
    ld e, d                                       ; $5841: $5a
    ld hl, $a95d                                  ; $5842: $21 $5d $a9
    pop de                                        ; $5845: $d1
    sub b                                         ; $5846: $90
    push bc                                       ; $5847: $c5
    and e                                         ; $5848: $a3
    db $fd                                        ; $5849: $fd
    xor a                                         ; $584a: $af
    db $ec                                        ; $584b: $ec
    and a                                         ; $584c: $a7
    sbc [hl]                                      ; $584d: $9e
    push af                                       ; $584e: $f5
    call z, $a6d1                                 ; $584f: $cc $d1 $a6
    sbc [hl]                                      ; $5852: $9e
    dec sp                                        ; $5853: $3b
    sbc e                                         ; $5854: $9b
    inc e                                         ; $5855: $1c
    ld a, [$ede7]                                 ; $5856: $fa $e7 $ed
    db $ed                                        ; $5859: $ed
    nop                                           ; $585a: $00
    rst $20                                       ; $585b: $e7
    xor c                                         ; $585c: $a9
    ld c, $7b                                     ; $585d: $0e $7b
    jp $9d51                                      ; $585f: $c3 $51 $9d


    ld d, d                                       ; $5862: $52
    ld b, e                                       ; $5863: $43
    ld a, [de]                                    ; $5864: $1a
    xor h                                         ; $5865: $ac
    ld hl, $8d0c                                  ; $5866: $21 $0c $8d
    or h                                          ; $5869: $b4
    ld [hl+], a                                   ; $586a: $22
    db $ed                                        ; $586b: $ed
    ret nc                                        ; $586c: $d0

    ld a, d                                       ; $586d: $7a
    ld d, $1a                                     ; $586e: $16 $1a
    ld l, l                                       ; $5870: $6d
    ld a, [c]                                     ; $5871: $f2
    cp b                                          ; $5872: $b8
    add l                                         ; $5873: $85
    xor l                                         ; $5874: $ad
    sub a                                         ; $5875: $97
    dec de                                        ; $5876: $1b
    adc [hl]                                      ; $5877: $8e
    ld b, l                                       ; $5878: $45
    inc [hl]                                      ; $5879: $34
    add h                                         ; $587a: $84
    and c                                         ; $587b: $a1
    ld l, b                                       ; $587c: $68
    inc e                                         ; $587d: $1c
    inc sp                                        ; $587e: $33
    sub $b3                                       ; $587f: $d6 $b3
    ret nc                                        ; $5881: $d0

    ld l, b                                       ; $5882: $68
    sub e                                         ; $5883: $93
    rst $00                                       ; $5884: $c7
    dec l                                         ; $5885: $2d
    db $f4                                        ; $5886: $f4
    ld b, d                                       ; $5887: $42
    db $e3                                        ; $5888: $e3
    rst $28                                       ; $5889: $ef
    inc [hl]                                      ; $588a: $34
    ld [hl-], a                                   ; $588b: $32
    ld b, a                                       ; $588c: $47
    ld hl, sp+$31                                 ; $588d: $f8 $31
    ld l, h                                       ; $588f: $6c
    rlca                                          ; $5890: $07
    rra                                           ; $5891: $1f
    scf                                           ; $5892: $37
    sub b                                         ; $5893: $90
    ldh [$6d], a                                  ; $5894: $e0 $6d
    sbc d                                         ; $5896: $9a
    and a                                         ; $5897: $a7
    ld [hl], d                                    ; $5898: $72
    call z, $c7e8                                 ; $5899: $cc $e8 $c7
    ld a, [hl-]                                   ; $589c: $3a
    call nc, Call_06c_6ec8                        ; $589d: $d4 $c8 $6e
    db $db                                        ; $58a0: $db
    ld d, [hl]                                    ; $58a1: $56
    and [hl]                                      ; $58a2: $a6
    add [hl]                                      ; $58a3: $86
    and e                                         ; $58a4: $a3
    ld a, [hl-]                                   ; $58a5: $3a
    sbc l                                         ; $58a6: $9d
    db $f4                                        ; $58a7: $f4
    cp a                                          ; $58a8: $bf
    ei                                            ; $58a9: $fb
    adc c                                         ; $58aa: $89
    ld a, l                                       ; $58ab: $7d
    ld l, d                                       ; $58ac: $6a
    ld d, h                                       ; $58ad: $54
    sub a                                         ; $58ae: $97
    ld a, [c]                                     ; $58af: $f2
    add hl, bc                                    ; $58b0: $09
    reti                                          ; $58b1: $d9


    ld c, a                                       ; $58b2: $4f
    and c                                         ; $58b3: $a1
    db $fd                                        ; $58b4: $fd
    di                                            ; $58b5: $f3
    ld [hl], $75                                  ; $58b6: $36 $75
    dec sp                                        ; $58b8: $3b
    nop                                           ; $58b9: $00
    rst $20                                       ; $58ba: $e7
    xor c                                         ; $58bb: $a9
    rst $38                                       ; $58bc: $ff
    push af                                       ; $58bd: $f5
    sbc a                                         ; $58be: $9f
    adc $2e                                       ; $58bf: $ce $2e
    ld b, [hl]                                    ; $58c1: $46
    or $53                                        ; $58c2: $f6 $53
    rst $08                                       ; $58c4: $cf
    inc e                                         ; $58c5: $1c
    ld l, l                                       ; $58c6: $6d
    ld [$4811], a                                 ; $58c7: $ea $11 $48
    call c, $93d1                                 ; $58ca: $dc $d1 $93
    ld hl, $567b                                  ; $58cd: $21 $7b $56
    jr c, jr_06c_590d                             ; $58d0: $38 $3b

    ld [$6959], a                                 ; $58d2: $ea $59 $69
    ld c, e                                       ; $58d5: $4b
    inc hl                                        ; $58d6: $23
    halt                                          ; $58d7: $76

jr_06c_58d8:
    ld b, c                                       ; $58d8: $41
    dec e                                         ; $58d9: $1d
    or h                                          ; $58da: $b4
    add hl, sp                                    ; $58db: $39
    ld h, l                                       ; $58dc: $65
    adc c                                         ; $58dd: $89
    jp z, $bac9                                   ; $58de: $ca $c9 $ba

    ld c, [hl]                                    ; $58e1: $4e
    db $d3                                        ; $58e2: $d3
    ccf                                           ; $58e3: $3f
    xor l                                         ; $58e4: $ad
    ld d, e                                       ; $58e5: $53
    ld d, c                                       ; $58e6: $51
    adc d                                         ; $58e7: $8a
    ret                                           ; $58e8: $c9


    ld h, [hl]                                    ; $58e9: $66
    dec sp                                        ; $58ea: $3b
    nop                                           ; $58eb: $00
    rst $20                                       ; $58ec: $e7
    ld a, [de]                                    ; $58ed: $1a
    jp nc, $81a6                                  ; $58ee: $d2 $a6 $81

    call nz, $f1c6                                ; $58f1: $c4 $c6 $f1
    and e                                         ; $58f4: $a3
    adc l                                         ; $58f5: $8d
    call z, $b862                                 ; $58f6: $cc $62 $b8
    sbc [hl]                                      ; $58f9: $9e
    ld b, [hl]                                    ; $58fa: $46
    inc hl                                        ; $58fb: $23
    db $fc                                        ; $58fc: $fc
    call nc, $854f                                ; $58fd: $d4 $4f $85
    ret z                                         ; $5900: $c8

    add c                                         ; $5901: $81
    call nz, Call_06c_7ac8                        ; $5902: $c4 $c8 $7a
    ld d, [hl]                                    ; $5905: $56
    jr c, jr_06c_58d8                             ; $5906: $38 $d0

    cp $57                                        ; $5908: $fe $57
    or $d0                                        ; $590a: $f6 $d0
    xor l                                         ; $590c: $ad

jr_06c_590d:
    sub a                                         ; $590d: $97
    ld c, a                                       ; $590e: $4f
    ld h, e                                       ; $590f: $63
    add sp, -$01                                  ; $5910: $e8 $ff
    ld [hl], a                                    ; $5912: $77
    jp z, $272c                                   ; $5913: $ca $2c $27

    ld b, a                                       ; $5916: $47
    add e                                         ; $5917: $83
    ld d, l                                       ; $5918: $55
    inc de                                        ; $5919: $13
    or h                                          ; $591a: $b4
    ld [de], a                                    ; $591b: $12
    ld a, [bc]                                    ; $591c: $0a
    cp l                                          ; $591d: $bd
    ld [hl], h                                    ; $591e: $74
    nop                                           ; $591f: $00
    scf                                           ; $5920: $37
    ld b, a                                       ; $5921: $47
    sbc [hl]                                      ; $5922: $9e
    ld d, l                                       ; $5923: $55
    ld hl, $2764                                  ; $5924: $21 $64 $27
    ld a, e                                       ; $5927: $7b
    ld d, [hl]                                    ; $5928: $56
    or h                                          ; $5929: $b4
    inc h                                         ; $592a: $24
    adc d                                         ; $592b: $8a
    cp [hl]                                       ; $592c: $be
    ld l, e                                       ; $592d: $6b
    ld c, e                                       ; $592e: $4b
    or h                                          ; $592f: $b4
    ld a, [c]                                     ; $5930: $f2
    dec a                                         ; $5931: $3d
    or [hl]                                       ; $5932: $b6
    ldh a, [$c6]                                  ; $5933: $f0 $c6
    ld bc, $07ef                                  ; $5935: $01 $ef $07
    sub a                                         ; $5938: $97
    ld a, [de]                                    ; $5939: $1a
    add e                                         ; $593a: $83
    ld c, e                                       ; $593b: $4b
    rst $10                                       ; $593c: $d7
    ei                                            ; $593d: $fb
    rst $30                                       ; $593e: $f7
    cp b                                          ; $593f: $b8
    call c, $4f74                                 ; $5940: $dc $74 $4f
    daa                                           ; $5943: $27
    sbc b                                         ; $5944: $98
    and b                                         ; $5945: $a0
    jp z, $dfe6                                   ; $5946: $ca $e6 $df

    xor c                                         ; $5949: $a9
    ld h, e                                       ; $594a: $63
    sbc c                                         ; $594b: $99
    ld c, a                                       ; $594c: $4f
    ret z                                         ; $594d: $c8

    or e                                          ; $594e: $b3
    dec e                                         ; $594f: $1d
    ld l, a                                       ; $5950: $6f
    ld d, e                                       ; $5951: $53
    ld h, l                                       ; $5952: $65
    jp c, Jump_000_0a43                           ; $5953: $da $43 $0a

    sbc d                                         ; $5956: $9a
    ld a, a                                       ; $5957: $7f
    and a                                         ; $5958: $a7
    rla                                           ; $5959: $17
    ld [$1656], a                                 ; $595a: $ea $56 $16
    and e                                         ; $595d: $a3
    ld [de], a                                    ; $595e: $12
    adc d                                         ; $595f: $8a
    db $ed                                        ; $5960: $ed
    nop                                           ; $5961: $00
    ld l, a                                       ; $5962: $6f
    ld d, e                                       ; $5963: $53
    ld h, l                                       ; $5964: $65
    jp c, Jump_000_0a43                           ; $5965: $da $43 $0a

    ld [$9da0], a                                 ; $5968: $ea $a0 $9d

jr_06c_596b:
    db $ec                                        ; $596b: $ec
    ld e, c                                       ; $596c: $59
    pop de                                        ; $596d: $d1
    sub d                                         ; $596e: $92
    jr z, jr_06c_596b                             ; $596f: $28 $fa

    xor [hl]                                      ; $5971: $ae
    dec l                                         ; $5972: $2d
    pop de                                        ; $5973: $d1
    jp z, $d8f7                                   ; $5974: $ca $f7 $d8

    jp nz, Jump_000_071b                          ; $5977: $c2 $1b $07

    xor a                                         ; $597a: $af
    rst $10                                       ; $597b: $d7
    ld [hl], c                                    ; $597c: $71
    rla                                           ; $597d: $17
    adc a                                         ; $597e: $8f
    push af                                       ; $597f: $f5
    ccf                                           ; $5980: $3f
    ld a, [c]                                     ; $5981: $f2
    xor h                                         ; $5982: $ac
    call z, Call_06c_7272                         ; $5983: $cc $72 $72
    or h                                          ; $5986: $b4
    ldh [$27], a                                  ; $5987: $e0 $27
    halt                                          ; $5989: $76
    inc d                                         ; $598a: $14
    add hl, sp                                    ; $598b: $39
    ld d, d                                       ; $598c: $52
    dec de                                        ; $598d: $1b
    ld c, b                                       ; $598e: $48

jr_06c_598f:
    inc l                                         ; $598f: $2c
    ld b, d                                       ; $5990: $42
    sbc h                                         ; $5991: $9c
    ld [de], a                                    ; $5992: $12
    ld e, l                                       ; $5993: $5d
    and c                                         ; $5994: $a1
    db $dd                                        ; $5995: $dd
    db $d3                                        ; $5996: $d3
    ld l, l                                       ; $5997: $6d
    xor d                                         ; $5998: $aa
    and b                                         ; $5999: $a0
    rst $10                                       ; $599a: $d7
    daa                                           ; $599b: $27
    ld b, [hl]                                    ; $599c: $46

jr_06c_599d:
    jp c, Jump_000_0076                           ; $599d: $da $76 $00

    rst $20                                       ; $59a0: $e7
    xor c                                         ; $59a1: $a9
    ld sp, hl                                     ; $59a2: $f9
    ld [hl], a                                    ; $59a3: $77
    xor d                                         ; $59a4: $aa
    ld e, h                                       ; $59a5: $5c
    db $db                                        ; $59a6: $db
    ld bc, $e397                                  ; $59a7: $01 $97 $e3
    add l                                         ; $59aa: $85
    ld c, [hl]                                    ; $59ab: $4e
    or $2c                                        ; $59ac: $f6 $2c
    ld d, e                                       ; $59ae: $53
    sub l                                         ; $59af: $95
    ld c, e                                       ; $59b0: $4b
    ret nc                                        ; $59b1: $d0

    ld [hl], b                                    ; $59b2: $70
    inc a                                         ; $59b3: $3c
    ld l, l                                       ; $59b4: $6d
    and c                                         ; $59b5: $a1
    ld c, d                                       ; $59b6: $4a
    dec hl                                        ; $59b7: $2b
    ld e, l                                       ; $59b8: $5d
    inc bc                                        ; $59b9: $03
    add hl, bc                                    ; $59ba: $09
    ld a, e                                       ; $59bb: $7b
    jr nz, jr_06c_598f                            ; $59bc: $20 $d1

    cp d                                          ; $59be: $ba
    and a                                         ; $59bf: $a7
    inc de                                        ; $59c0: $13
    xor h                                         ; $59c1: $ac
    ld e, $a5                                     ; $59c2: $1e $a5
    jp z, $b1d9                                   ; $59c4: $ca $d9 $b1

    dec e                                         ; $59c7: $1d
    rst $10                                       ; $59c8: $d7
    ld d, $d2                                     ; $59c9: $16 $d2
    halt                                          ; $59cb: $76
    nop                                           ; $59cc: $00
    rra                                           ; $59cd: $1f
    db $fd                                        ; $59ce: $fd
    ld c, [hl]                                    ; $59cf: $4e
    sub l                                         ; $59d0: $95
    ld b, l                                       ; $59d1: $45
    inc [hl]                                      ; $59d2: $34
    cp $e1                                        ; $59d3: $fe $e1
    adc d                                         ; $59d5: $8a
    ld b, d                                       ; $59d6: $42
    jr c, @+$68                                   ; $59d7: $38 $66

    sub h                                         ; $59d9: $94
    or h                                          ; $59da: $b4
    and d                                         ; $59db: $a2
    ld a, a                                       ; $59dc: $7f
    xor $62                                       ; $59dd: $ee $62
    db $f4                                        ; $59df: $f4
    ld a, [de]                                    ; $59e0: $1a
    inc a                                         ; $59e1: $3c
    inc e                                         ; $59e2: $1c
    ei                                            ; $59e3: $fb
    pop de                                        ; $59e4: $d1
    jr jr_06c_599d                                ; $59e5: $18 $b6

    sbc [hl]                                      ; $59e7: $9e
    and a                                         ; $59e8: $a7
    cp $27                                        ; $59e9: $fe $27
    ld d, l                                       ; $59eb: $55
    or h                                          ; $59ec: $b4
    inc h                                         ; $59ed: $24
    xor h                                         ; $59ee: $ac
    sbc [hl]                                      ; $59ef: $9e
    sbc l                                         ; $59f0: $9d
    ld e, l                                       ; $59f1: $5d
    inc a                                         ; $59f2: $3c
    and l                                         ; $59f3: $a5
    ld l, e                                       ; $59f4: $6b
    inc e                                         ; $59f5: $1c
    ccf                                           ; $59f6: $3f
    jp c, $c8ff                                   ; $59f7: $da $ff $c8

    inc sp                                        ; $59fa: $33
    cp l                                          ; $59fb: $bd
    ld [hl], h                                    ; $59fc: $74
    nop                                           ; $59fd: $00
    rst $20                                       ; $59fe: $e7
    xor c                                         ; $59ff: $a9
    ld sp, hl                                     ; $5a00: $f9
    ld [hl], a                                    ; $5a01: $77
    ld a, [de]                                    ; $5a02: $1a
    sbc c                                         ; $5a03: $99
    push bc                                       ; $5a04: $c5
    ld d, e                                       ; $5a05: $53
    ld c, c                                       ; $5a06: $49
    adc e                                         ; $5a07: $8b
    cp h                                          ; $5a08: $bc
    adc l                                         ; $5a09: $8d
    ld l, [hl]                                    ; $5a0a: $6e

Jump_06c_5a0b:
    db $db                                        ; $5a0b: $db
    ld d, [hl]                                    ; $5a0c: $56
    rlca                                          ; $5a0d: $07
    db $ed                                        ; $5a0e: $ed
    add l                                         ; $5a0f: $85
    add [hl]                                      ; $5a10: $86

Call_06c_5a11:
    jr nc, @+$56                                  ; $5a11: $30 $54

    ld l, $07                                     ; $5a13: $2e $07
    ld b, c                                       ; $5a15: $41
    sub l                                         ; $5a16: $95
    call Call_06c_53bf                            ; $5a17: $cd $bf $53
    rst $00                                       ; $5a1a: $c7
    ld [hl-], a                                   ; $5a1b: $32
    sbc a                                         ; $5a1c: $9f
    sub b                                         ; $5a1d: $90
    db $fd                                        ; $5a1e: $fd
    ld [hl], h                                    ; $5a1f: $74
    db $db                                        ; $5a20: $db
    or [hl]                                       ; $5a21: $b6
    inc bc                                        ; $5a22: $03
    rra                                           ; $5a23: $1f
    rst $08                                       ; $5a24: $cf
    call z, $0588                                 ; $5a25: $cc $88 $05
    sub l                                         ; $5a28: $95
    ret c                                         ; $5a29: $d8

    daa                                           ; $5a2a: $27
    reti                                          ; $5a2b: $d9


    jp z, Jump_06c_51e2                           ; $5a2c: $ca $e2 $51

    ld b, c                                       ; $5a2f: $41
    inc bc                                        ; $5a30: $03
    adc c                                         ; $5a31: $89
    push af                                       ; $5a32: $f5
    db $eb                                        ; $5a33: $eb
    ld c, a                                       ; $5a34: $4f
    adc e                                         ; $5a35: $8b
    set 1, a                                      ; $5a36: $cb $cf
    halt                                          ; $5a38: $76
    nop                                           ; $5a39: $00
    ld d, a                                       ; $5a3a: $57

jr_06c_5a3b:
    ld h, $47                                     ; $5a3b: $26 $47
    ld h, [hl]                                    ; $5a3d: $66
    ld sp, $509e                                  ; $5a3e: $31 $9e $50
    ld a, [bc]                                    ; $5a41: $0a
    ld a, d                                       ; $5a42: $7a
    ld a, l                                       ; $5a43: $7d
    sbc c                                         ; $5a44: $99
    pop hl                                        ; $5a45: $e1
    ld [hl+], a                                   ; $5a46: $22
    cp d                                          ; $5a47: $ba
    ld l, l                                       ; $5a48: $6d
    ld e, e                                       ; $5a49: $5b
    daa                                           ; $5a4a: $27
    ld d, l                                       ; $5a4b: $55
    ld l, c                                       ; $5a4c: $69
    pop bc                                        ; $5a4d: $c1
    dec c                                         ; $5a4e: $0d
    inc h                                         ; $5a4f: $24
    sub [hl]                                      ; $5a50: $96
    xor c                                         ; $5a51: $a9
    sbc [hl]                                      ; $5a52: $9e
    rst $38                                       ; $5a53: $ff
    xor c                                         ; $5a54: $a9
    inc d                                         ; $5a55: $14
    jp Jump_000_3ac1                              ; $5a56: $c3 $c1 $3a


    ld a, l                                       ; $5a59: $7d
    dec bc                                        ; $5a5a: $0b
    or $3b                                        ; $5a5b: $f6 $3b
    cp l                                          ; $5a5d: $bd
    add c                                         ; $5a5e: $81
    ld a, h                                       ; $5a5f: $7c
    ld [hl-], a                                   ; $5a60: $32
    and $38                                       ; $5a61: $e6 $38
    ld l, a                                       ; $5a63: $6f
    inc e                                         ; $5a64: $1c
    scf                                           ; $5a65: $37
    xor $69                                       ; $5a66: $ee $69
    jr nz, jr_06c_5a3b                            ; $5a68: $20 $d1

    ld d, $ea                                     ; $5a6a: $16 $ea
    ld e, b                                       ; $5a6c: $58
    cp a                                          ; $5a6d: $bf
    cp $b4                                        ; $5a6e: $fe $b4
    cp b                                          ; $5a70: $b8
    xor h                                         ; $5a71: $ac
    ret                                           ; $5a72: $c9


    dec [hl]                                      ; $5a73: $35
    sbc h                                         ; $5a74: $9c
    inc h                                         ; $5a75: $24
    and a                                         ; $5a76: $a7
    db $db                                        ; $5a77: $db
    or [hl]                                       ; $5a78: $b6
    dec e                                         ; $5a79: $1d
    sbc a                                         ; $5a7a: $9f
    inc h                                         ; $5a7b: $24
    cp d                                          ; $5a7c: $ba
    jp nc, Jump_000_0450                          ; $5a7d: $d2 $50 $04

    ld [de], a                                    ; $5a80: $12
    ld [hl], a                                    ; $5a81: $77
    cp [hl]                                       ; $5a82: $be
    ld [hl], c                                    ; $5a83: $71
    nop                                           ; $5a84: $00
    rst $10                                       ; $5a85: $d7
    sub a                                         ; $5a86: $97
    add hl, de                                    ; $5a87: $19
    ld l, $42                                     ; $5a88: $2e $42
    ret nc                                        ; $5a8a: $d0

    jp hl                                         ; $5a8b: $e9


    push af                                       ; $5a8c: $f5
    reti                                          ; $5a8d: $d9


    inc hl                                        ; $5a8e: $23
    db $ed                                        ; $5a8f: $ed
    call nz, Call_06c_71a5                        ; $5a90: $c4 $a5 $71
    db $eb                                        ; $5a93: $eb
    ld h, a                                       ; $5a94: $67
    call z, $5462                                 ; $5a95: $cc $62 $54
    and [hl]                                      ; $5a98: $a6
    push hl                                       ; $5a99: $e5
    pop hl                                        ; $5a9a: $e1
    and a                                         ; $5a9b: $a7
    ld [hl], d                                    ; $5a9c: $72
    ld e, h                                       ; $5a9d: $5c
    cp c                                          ; $5a9e: $b9
    di                                            ; $5a9f: $f3
    ld d, d                                       ; $5aa0: $52
    ccf                                           ; $5aa1: $3f
    xor $5b                                       ; $5aa2: $ee $5b
    or b                                          ; $5aa4: $b0
    rst $18                                       ; $5aa5: $df
    jp hl                                         ; $5aa6: $e9


    dec c                                         ; $5aa7: $0d
    db $e4                                        ; $5aa8: $e4
    sub e                                         ; $5aa9: $93
    ld sp, $11c7                                  ; $5aaa: $31 $c7 $11
    ld [hl], h                                    ; $5aad: $74
    ld a, [hl+]                                   ; $5aae: $2a
    ld b, d                                       ; $5aaf: $42
    adc [hl]                                      ; $5ab0: $8e
    ld d, b                                       ; $5ab1: $50
    add a                                         ; $5ab2: $87
    ld a, d                                       ; $5ab3: $7a
    db $f4                                        ; $5ab4: $f4
    add $64                                       ; $5ab5: $c6 $64
    and l                                         ; $5ab7: $a5
    xor l                                         ; $5ab8: $ad
    inc c                                         ; $5ab9: $0c
    ld b, c                                       ; $5aba: $41
    cpl                                           ; $5abb: $2f
    ld [hl], h                                    ; $5abc: $74
    ld a, d                                       ; $5abd: $7a
    ld a, a                                       ; $5abe: $7f
    ld e, [hl]                                    ; $5abf: $5e
    ld [hl], d                                    ; $5ac0: $72
    ld a, [de]                                    ; $5ac1: $1a
    ld c, b                                       ; $5ac2: $48
    xor h                                         ; $5ac3: $ac
    sbc h                                         ; $5ac4: $9c
    xor h                                         ; $5ac5: $ac
    inc a                                         ; $5ac6: $3c
    dec h                                         ; $5ac7: $25
    ld d, [hl]                                    ; $5ac8: $56
    ld c, [hl]                                    ; $5ac9: $4e
    adc [hl]                                      ; $5aca: $8e
    ld [hl], $7b                                  ; $5acb: $36 $7b
    ldh a, [rNR13]                                ; $5acd: $f0 $13
    ei                                            ; $5acf: $fb
    ld l, h                                       ; $5ad0: $6c
    rlca                                          ; $5ad1: $07
    rst $10                                       ; $5ad2: $d7
    ld l, l                                       ; $5ad3: $6d
    ld h, h                                       ; $5ad4: $64
    ld [hl-], a                                   ; $5ad5: $32
    ld [hl], $1c                                  ; $5ad6: $36 $1c
    ld l, e                                       ; $5ad8: $6b
    ld [hl], d                                    ; $5ad9: $72
    xor b                                         ; $5ada: $a8
    ld c, e                                       ; $5adb: $4b
    cp e                                          ; $5adc: $bb
    sbc b                                         ; $5add: $98
    sub $d3                                       ; $5ade: $d6 $d3
    sbc b                                         ; $5ae0: $98
    ld b, a                                       ; $5ae1: $47
    push hl                                       ; $5ae2: $e5
    cp b                                          ; $5ae3: $b8
    ld h, $d7                                     ; $5ae4: $26 $d7
    ccf                                           ; $5ae6: $3f
    dec [hl]                                      ; $5ae7: $35
    ld l, $3f                                     ; $5ae8: $2e $3f
    or l                                          ; $5aea: $b5
    ld d, c                                       ; $5aeb: $51
    ld [hl], h                                    ; $5aec: $74
    db $db                                        ; $5aed: $db
    or [hl]                                       ; $5aee: $b6
    ld e, [hl]                                    ; $5aef: $5e
    ld l, b                                       ; $5af0: $68
    ld c, h                                       ; $5af1: $4c
    ld a, [hl]                                    ; $5af2: $7e
    ld a, [hl-]                                   ; $5af3: $3a
    dec c                                         ; $5af4: $0d
    inc h                                         ; $5af5: $24
    sub [hl]                                      ; $5af6: $96
    xor c                                         ; $5af7: $a9
    jp z, $1db5                                   ; $5af8: $ca $b5 $1d

    rst $20                                       ; $5afb: $e7
    dec sp                                        ; $5afc: $3b
    ld [$a7f9], a                                 ; $5afd: $ea $f9 $a7
    dec l                                         ; $5b00: $2d
    ld d, h                                       ; $5b01: $54
    or h                                          ; $5b02: $b4
    inc h                                         ; $5b03: $24
    xor h                                         ; $5b04: $ac
    ld [hl], h                                    ; $5b05: $74
    ld c, l                                       ; $5b06: $4d
    ld c, $f5                                     ; $5b07: $0e $f5
    ret nc                                        ; $5b09: $d0

    add $31                                       ; $5b0a: $c6 $31
    and e                                         ; $5b0c: $a3
    ld l, [hl]                                    ; $5b0d: $6e
    db $fd                                        ; $5b0e: $fd
    inc c                                         ; $5b0f: $0c
    ei                                            ; $5b10: $fb
    sbc a                                         ; $5b11: $9f
    or a                                          ; $5b12: $b7
    ei                                            ; $5b13: $fb
    rra                                           ; $5b14: $1f
    ld a, c                                       ; $5b15: $79
    ld d, [hl]                                    ; $5b16: $56
    rst $08                                       ; $5b17: $cf
    ccf                                           ; $5b18: $3f
    ld d, l                                       ; $5b19: $55
    reti                                          ; $5b1a: $d9


    ret nc                                        ; $5b1b: $d0

    ld b, [hl]                                    ; $5b1c: $46
    ld h, $83                                     ; $5b1d: $26 $83
    dec [hl]                                      ; $5b1f: $35
    ld c, a                                       ; $5b20: $4f
    sub c                                         ; $5b21: $91
    dec a                                         ; $5b22: $3d
    xor h                                         ; $5b23: $ac
    sbc [hl]                                      ; $5b24: $9e
    sub l                                         ; $5b25: $95
    bit 4, c                                      ; $5b26: $cb $61
    dec sp                                        ; $5b28: $3b
    nop                                           ; $5b29: $00
    rst $10                                       ; $5b2a: $d7
    ld l, l                                       ; $5b2b: $6d
    ld h, h                                       ; $5b2c: $64
    ld [hl-], a                                   ; $5b2d: $32
    ld [hl], $84                                  ; $5b2e: $36 $84
    and c                                         ; $5b30: $a1
    ld [hl], d                                    ; $5b31: $72
    add hl, sp                                    ; $5b32: $39
    ld [$7f9a], sp                                ; $5b33: $08 $9a $7f
    and a                                         ; $5b36: $a7
    ld hl, $150c                                  ; $5b37: $21 $0c $15
    ld h, d                                       ; $5b3a: $62
    db $dd                                        ; $5b3b: $dd
    sbc d                                         ; $5b3c: $9a
    db $ed                                        ; $5b3d: $ed
    nop                                           ; $5b3e: $00

jr_06c_5b3f:
    rst $20                                       ; $5b3f: $e7
    xor c                                         ; $5b40: $a9
    sub e                                         ; $5b41: $93
    cp $ab                                        ; $5b42: $fe $ab
    ld a, [hl]                                    ; $5b44: $7e
    db $dd                                        ; $5b45: $dd
    and [hl]                                      ; $5b46: $a6
    dec [hl]                                      ; $5b47: $35
    sub b                                         ; $5b48: $90
    ld e, b                                       ; $5b49: $58
    pop de                                        ; $5b4a: $d1
    sub d                                         ; $5b4b: $92
    ld l, b                                       ; $5b4c: $68
    ld c, b                                       ; $5b4d: $48
    adc e                                         ; $5b4e: $8b
    ld d, e                                       ; $5b4f: $53
    rst $08                                       ; $5b50: $cf
    ld h, $87                                     ; $5b51: $26 $87
    sbc [hl]                                      ; $5b53: $9e
    inc c                                         ; $5b54: $0c
    reti                                          ; $5b55: $d9


    or e                                          ; $5b56: $b3
    jp nz, Jump_06c_51d9                          ; $5b57: $c2 $d9 $51

    rst $08                                       ; $5b5a: $cf
    ld c, d                                       ; $5b5b: $4a
    ld e, e                                       ; $5b5c: $5b
    ld a, [de]                                    ; $5b5d: $1a
    or c                                          ; $5b5e: $b1
    ld l, a                                       ; $5b5f: $6f
    rlca                                          ; $5b60: $07
    rra                                           ; $5b61: $1f
    db $fd                                        ; $5b62: $fd
    ld c, [hl]                                    ; $5b63: $4e
    sub l                                         ; $5b64: $95
    xor e                                         ; $5b65: $ab
    db $db                                        ; $5b66: $db
    or [hl]                                       ; $5b67: $b6
    dec [hl]                                      ; $5b68: $35
    ld h, d                                       ; $5b69: $62
    rst $38                                       ; $5b6a: $ff
    di                                            ; $5b6b: $f3
    halt                                          ; $5b6c: $76
    cp c                                          ; $5b6d: $b9
    and e                                         ; $5b6e: $a3
    pop hl                                        ; $5b6f: $e1
    xor b                                         ; $5b70: $a8
    and d                                         ; $5b71: $a2
    and d                                         ; $5b72: $a2
    dec h                                         ; $5b73: $25
    ld h, c                                       ; $5b74: $61
    ld b, l                                       ; $5b75: $45
    or h                                          ; $5b76: $b4
    ld h, b                                       ; $5b77: $60
    xor l                                         ; $5b78: $ad
    ld h, a                                       ; $5b79: $67
    sub e                                         ; $5b7a: $93
    ld l, e                                       ; $5b7b: $6b
    jr nz, jr_06c_5b3f                            ; $5b7c: $20 $c1

    db $db                                        ; $5b7e: $db
    ld l, h                                       ; $5b7f: $6c
    rlca                                          ; $5b80: $07
    rra                                           ; $5b81: $1f
    db $fd                                        ; $5b82: $fd
    ld c, [hl]                                    ; $5b83: $4e
    ld b, l                                       ; $5b84: $45
    ld c, e                                       ; $5b85: $4b
    and d                                         ; $5b86: $a2
    ei                                            ; $5b87: $fb
    db $e4                                        ; $5b88: $e4
    inc de                                        ; $5b89: $13
    cp e                                          ; $5b8a: $bb
    ld l, l                                       ; $5b8b: $6d
    ld e, e                                       ; $5b8c: $5b
    di                                            ; $5b8d: $f3
    rst $28                                       ; $5b8e: $ef
    call nc, $dd51                                ; $5b8f: $d4 $51 $dd
    ld l, h                                       ; $5b92: $6c
    db $db                                        ; $5b93: $db
    ld bc, $4737                                  ; $5b94: $01 $37 $47
    sbc [hl]                                      ; $5b97: $9e
    dec [hl]                                      ; $5b98: $35
    inc e                                         ; $5b99: $1c
    rst $08                                       ; $5b9a: $cf
    adc d                                         ; $5b9b: $8a
    or b                                          ; $5b9c: $b0

Jump_06c_5b9d:
    jp Jump_000_38de                              ; $5b9d: $c3 $de $38


    nop                                           ; $5ba0: $00
    rst $10                                       ; $5ba1: $d7
    rst $00                                       ; $5ba2: $c7
    ld [bc], a                                    ; $5ba3: $02
    adc c                                         ; $5ba4: $89
    ld h, l                                       ; $5ba5: $65
    ld l, d                                       ; $5ba6: $6a
    cp $9d                                        ; $5ba7: $fe $9d
    ld a, [hl+]                                   ; $5ba9: $2a
    ld l, l                                       ; $5baa: $6d
    and c                                         ; $5bab: $a1
    ld [de], a                                    ; $5bac: $12
    ld hl, $d76e                                  ; $5bad: $21 $6e $d7
    or e                                          ; $5bb0: $b3
    ld [hl+], a                                   ; $5bb1: $22
    db $ec                                        ; $5bb2: $ec
    or b                                          ; $5bb3: $b0
    scf                                           ; $5bb4: $37
    ld c, $37                                     ; $5bb5: $0e $37
    ld b, a                                       ; $5bb7: $47
    sbc [hl]                                      ; $5bb8: $9e
    ld d, l                                       ; $5bb9: $55
    ld hl, $2764                                  ; $5bba: $21 $64 $27
    ld a, e                                       ; $5bbd: $7b
    ld d, [hl]                                    ; $5bbe: $56
    or h                                          ; $5bbf: $b4
    inc h                                         ; $5bc0: $24
    adc d                                         ; $5bc1: $8a
    cp [hl]                                       ; $5bc2: $be
    ld l, e                                       ; $5bc3: $6b
    ld c, e                                       ; $5bc4: $4b
    or h                                          ; $5bc5: $b4
    ld a, [c]                                     ; $5bc6: $f2
    dec a                                         ; $5bc7: $3d
    or [hl]                                       ; $5bc8: $b6
    ldh a, [$c6]                                  ; $5bc9: $f0 $c6
    ld bc, $9637                                  ; $5bcb: $01 $37 $96
    inc de                                        ; $5bce: $13
    call nc, $22b3                                ; $5bcf: $d4 $b3 $22
    call nz, $7ad9                                ; $5bd2: $c4 $d9 $7a
    sbc [hl]                                      ; $5bd5: $9e
    xor d                                         ; $5bd6: $aa
    sub e                                         ; $5bd7: $93
    adc d                                         ; $5bd8: $8a
    sbc [hl]                                      ; $5bd9: $9e
    ld [de], a                                    ; $5bda: $12
    call z, $dfaf                                 ; $5bdb: $cc $af $df
    ld a, d                                       ; $5bde: $7a
    db $f4                                        ; $5bdf: $f4
    ld e, l                                       ; $5be0: $5d
    ld e, e                                       ; $5be1: $5b
    and d                                         ; $5be2: $a2
    sub l                                         ; $5be3: $95
    rst $28                                       ; $5be4: $ef
    or c                                          ; $5be5: $b1
    add l                                         ; $5be6: $85
    db $ed                                        ; $5be7: $ed
    nop                                           ; $5be8: $00
    rst $20                                       ; $5be9: $e7
    sub l                                         ; $5bea: $95
    db $e3                                        ; $5beb: $e3
    and [hl]                                      ; $5bec: $a6
    ld c, h                                       ; $5bed: $4c
    dec d                                         ; $5bee: $15
    pop hl                                        ; $5bef: $e1
    ld [c], a                                     ; $5bf0: $e2
    inc [hl]                                      ; $5bf1: $34
    add h                                         ; $5bf2: $84
    and c                                         ; $5bf3: $a1
    call z, Call_06c_60d1                         ; $5bf4: $cc $d1 $60
    ld l, a                                       ; $5bf7: $6f
    inc e                                         ; $5bf8: $1c
    xor a                                         ; $5bf9: $af
    ld d, a                                       ; $5bfa: $57
    rst $28                                       ; $5bfb: $ef
    xor c                                         ; $5bfc: $a9
    ld h, e                                       ; $5bfd: $63
    db $fd                                        ; $5bfe: $fd
    cp d                                          ; $5bff: $ba
    ld c, l                                       ; $5c00: $4d
    dec hl                                        ; $5c01: $2b
    xor d                                         ; $5c02: $aa
    call z, $5462                                 ; $5c03: $cc $62 $54
    add hl, hl                                    ; $5c06: $29
    adc l                                         ; $5c07: $8d
    ld de, $01db                                  ; $5c08: $11 $db $01
    rst $10                                       ; $5c0b: $d7
    and b                                         ; $5c0c: $a0
    db $fd                                        ; $5c0d: $fd
    db $e4                                        ; $5c0e: $e4
    di                                            ; $5c0f: $f3
    rr a                                          ; $5c10: $cb $1f
    or $42                                        ; $5c12: $f6 $42
    ld d, c                                       ; $5c14: $51
    ld h, l                                       ; $5c15: $65
    ld d, $a3                                     ; $5c16: $16 $a3

Call_06c_5c18:
    ld c, d                                       ; $5c18: $4a
    ld l, c                                       ; $5c19: $69
    adc h                                         ; $5c1a: $8c
    ld a, b                                       ; $5c1b: $78
    db $e3                                        ; $5c1c: $e3
    nop                                           ; $5c1d: $00
    sub a                                         ; $5c1e: $97
    and l                                         ; $5c1f: $a5
    ld a, b                                       ; $5c20: $78
    ld a, [de]                                    ; $5c21: $1a
    ld c, b                                       ; $5c22: $48
    inc l                                         ; $5c23: $2c
    ld [hl], a                                    ; $5c24: $77
    inc [hl]                                      ; $5c25: $34
    rst $38                                       ; $5c26: $ff
    ld c, [hl]                                    ; $5c27: $4e
    sub l                                         ; $5c28: $95
    or [hl]                                       ; $5c29: $b6
    ld d, b                                       ; $5c2a: $50
    sub a                                         ; $5c2b: $97
    ld d, [hl]                                    ; $5c2c: $56
    sbc h                                         ; $5c2d: $9c
    ld a, [hl+]                                   ; $5c2e: $2a
    and l                                         ; $5c2f: $a5
    ld sp, $caa2                                  ; $5c30: $31 $a2 $ca
    ld [hl-], a                                   ; $5c33: $32
    dec [hl]                                      ; $5c34: $35
    or d                                          ; $5c35: $b2
    ld [hl], d                                    ; $5c36: $72
    ld [hl], d                                    ; $5c37: $72
    add h                                         ; $5c38: $84
    ld a, [hl+]                                   ; $5c39: $2a
    dec b                                         ; $5c3a: $05
    adc l                                         ; $5c3b: $8d
    or e                                          ; $5c3c: $b3
    xor a                                         ; $5c3d: $af
    inc l                                         ; $5c3e: $2c
    sbc [hl]                                      ; $5c3f: $9e
    xor l                                         ; $5c40: $ad
    scf                                           ; $5c41: $37
    ld b, a                                       ; $5c42: $47
    sbc [hl]                                      ; $5c43: $9e
    push de                                       ; $5c44: $d5
    di                                            ; $5c45: $f3
    rst $08                                       ; $5c46: $cf
    ld a, d                                       ; $5c47: $7a
    xor d                                         ; $5c48: $aa
    inc e                                         ; $5c49: $1c
    and c                                         ; $5c4a: $a1
    dec l                                         ; $5c4b: $2d
    xor e                                         ; $5c4c: $ab
    adc $ed                                       ; $5c4d: $ce $ed
    sub l                                         ; $5c4f: $95
    push bc                                       ; $5c50: $c5
    or e                                          ; $5c51: $b3
    dec e                                         ; $5c52: $1d
    scf                                           ; $5c53: $37
    ld b, a                                       ; $5c54: $47
    sbc [hl]                                      ; $5c55: $9e
    ld d, l                                       ; $5c56: $55
    ld hl, $5164                                  ; $5c57: $21 $64 $51
    ld h, l                                       ; $5c5a: $65
    ld d, $a3                                     ; $5c5b: $16 $a3
    ld e, $7d                                     ; $5c5d: $1e $7d
    rst $10                                       ; $5c5f: $d7
    sub [hl]                                      ; $5c60: $96
    ld l, b                                       ; $5c61: $68
    push hl                                       ; $5c62: $e5
    ld a, e                                       ; $5c63: $7b
    ld l, h                                       ; $5c64: $6c
    pop hl                                        ; $5c65: $e1
    adc l                                         ; $5c66: $8d
    inc bc                                        ; $5c67: $03
    rst $10                                       ; $5c68: $d7
    ld l, c                                       ; $5c69: $69
    and a                                         ; $5c6a: $a7
    sub h                                         ; $5c6b: $94
    inc hl                                        ; $5c6c: $23
    adc e                                         ; $5c6d: $8b
    ld h, d                                       ; $5c6e: $62
    ccf                                           ; $5c6f: $3f
    and l                                         ; $5c70: $a5
    dec bc                                        ; $5c71: $0b

Jump_06c_5c72:
jr_06c_5c72:
    xor [hl]                                      ; $5c72: $ae
    ld e, $7d                                     ; $5c73: $1e $7d
    rst $10                                       ; $5c75: $d7
    sub [hl]                                      ; $5c76: $96
    ld l, b                                       ; $5c77: $68
    push hl                                       ; $5c78: $e5
    ld a, e                                       ; $5c79: $7b
    ld l, h                                       ; $5c7a: $6c
    ld h, c                                       ; $5c7b: $61
    dec sp                                        ; $5c7c: $3b
    nop                                           ; $5c7d: $00
    rst $20                                       ; $5c7e: $e7
    xor c                                         ; $5c7f: $a9
    ld sp, hl                                     ; $5c80: $f9
    ld [hl], a                                    ; $5c81: $77
    xor d                                         ; $5c82: $aa
    ld e, h                                       ; $5c83: $5c
    call Call_000_0d74                            ; $5c84: $cd $74 $0d
    inc h                                         ; $5c87: $24
    db $ec                                        ; $5c88: $ec
    cp l                                          ; $5c89: $bd
    ld d, b                                       ; $5c8a: $50
    call nc, $2cad                                ; $5c8b: $d4 $ad $2c
    ld b, [hl]                                    ; $5c8e: $46
    sub l                                         ; $5c8f: $95
    ld e, c                                       ; $5c90: $59
    adc h                                         ; $5c91: $8c
    db $ed                                        ; $5c92: $ed
    nop                                           ; $5c93: $00
    scf                                           ; $5c94: $37
    ld b, a                                       ; $5c95: $47
    sbc [hl]                                      ; $5c96: $9e
    ld d, l                                       ; $5c97: $55
    ld hl, $5164                                  ; $5c98: $21 $64 $51
    ld h, l                                       ; $5c9b: $65
    ld d, $a3                                     ; $5c9c: $16 $a3
    ld hl, $650c                                  ; $5c9e: $21 $0c $65
    adc [hl]                                      ; $5ca1: $8e
    ld b, $6b                                     ; $5ca2: $06 $6b
    ld b, [hl]                                    ; $5ca4: $46
    rst $18                                       ; $5ca5: $df
    or l                                          ; $5ca6: $b5
    dec h                                         ; $5ca7: $25
    ld e, d                                       ; $5ca8: $5a
    ld sp, hl                                     ; $5ca9: $f9
    ld e, $5b                                     ; $5caa: $1e $5b
    ld a, b                                       ; $5cac: $78
    db $e3                                        ; $5cad: $e3
    nop                                           ; $5cae: $00
    rst $20                                       ; $5caf: $e7
    xor c                                         ; $5cb0: $a9
    ld c, d                                       ; $5cb1: $4a
    ld e, e                                       ; $5cb2: $5b
    ld l, b                                       ; $5cb3: $68
    ld [hl], d                                    ; $5cb4: $72
    dec c                                         ; $5cb5: $0d
    cpl                                           ; $5cb6: $2f
    xor b                                         ; $5cb7: $a8
    ld l, $37                                     ; $5cb8: $2e $37
    dec d                                         ; $5cba: $15
    ld hl, $a847                                  ; $5cbb: $21 $47 $a8
    ld b, e                                       ; $5cbe: $43
    ld b, a                                       ; $5cbf: $47
    or h                                          ; $5cc0: $b4
    db $e4                                        ; $5cc1: $e4
    jp nz, $8f5e                                  ; $5cc2: $c2 $5e $8f

    ld c, d                                       ; $5cc5: $4a
    jr z, jr_06c_5c72                             ; $5cc6: $28 $aa

    ld l, h                                       ; $5cc8: $6c
    cp $9d                                        ; $5cc9: $fe $9d
    ld [$2124], a                                 ; $5ccb: $ea $24 $21
    ld d, l                                       ; $5cce: $55
    ld a, c                                       ; $5ccf: $79
    jp hl                                         ; $5cd0: $e9


    nop                                           ; $5cd1: $00
    rst $20                                       ; $5cd2: $e7
    dec c                                         ; $5cd3: $0d
    inc h                                         ; $5cd4: $24
    db $ec                                        ; $5cd5: $ec
    cp l                                          ; $5cd6: $bd
    ldh a, [$c6]                                  ; $5cd7: $f0 $c6
    ld bc, $6dd7                                  ; $5cd9: $01 $d7 $6d
    add hl, sp                                    ; $5cdc: $39
    ld l, $9b                                     ; $5cdd: $2e $9b
    ld l, [hl]                                    ; $5cdf: $6e
    db $db                                        ; $5ce0: $db
    sub $88                                       ; $5ce1: $d6 $88
    db $fd                                        ; $5ce3: $fd
    rst $08                                       ; $5ce4: $cf
    db $db                                        ; $5ce5: $db
    db $fd                                        ; $5ce6: $fd
    adc a                                         ; $5ce7: $8f
    inc a                                         ; $5ce8: $3c
    ld l, e                                       ; $5ce9: $6b
    sbc b                                         ; $5cea: $98
    inc a                                         ; $5ceb: $3c
    ld d, l                                       ; $5cec: $55
    ld e, c                                       ; $5ced: $59
    rst $00                                       ; $5cee: $c7
    adc d                                         ; $5cef: $8a
    ld [hl], b                                    ; $5cf0: $70
    sbc e                                         ; $5cf1: $9b
    sub $e4                                       ; $5cf2: $d6 $e4
    ld a, [hl+]                                   ; $5cf4: $2a
    jp nz, $ac7f                                  ; $5cf5: $c2 $7f $ac

    db $db                                        ; $5cf8: $db
    or [hl]                                       ; $5cf9: $b6
    dec e                                         ; $5cfa: $1d
    sbc a                                         ; $5cfb: $9f
    inc h                                         ; $5cfc: $24
    ld [hl], $ae                                  ; $5cfd: $36 $ae
    ld [hl], b                                    ; $5cff: $70
    ld [$1159], a                                 ; $5d00: $ea $59 $11
    cp $63                                        ; $5d03: $fe $63
    ld l, a                                       ; $5d05: $6f
    inc e                                         ; $5d06: $1c
    rra                                           ; $5d07: $1f
    ld d, c                                       ; $5d08: $51
    inc hl                                        ; $5d09: $23
    or l                                          ; $5d0a: $b5
    ld [hl], d                                    ; $5d0b: $72
    call z, $c7e8                                 ; $5d0c: $cc $e8 $c7
    xor b                                         ; $5d0f: $a8
    dec c                                         ; $5d10: $0d
    rst $00                                       ; $5d11: $c7
    db $d3                                        ; $5d12: $d3
    dec d                                         ; $5d13: $15
    ld [hl], d                                    ; $5d14: $72
    ld [hl], d                                    ; $5d15: $72
    and h                                         ; $5d16: $a4
    and h                                         ; $5d17: $a4
    push af                                       ; $5d18: $f5
    ld c, a                                       ; $5d19: $4f
    di                                            ; $5d1a: $f3
    ldh a, [$5c]                                  ; $5d1b: $f0 $5c
    ld b, $ed                                     ; $5d1d: $06 $ed
    sbc a                                         ; $5d1f: $9f
    add hl, sp                                    ; $5d20: $39
    ld [hl+], a                                   ; $5d21: $22
    cpl                                           ; $5d22: $2f
    ld l, b                                       ; $5d23: $68
    rst $28                                       ; $5d24: $ef
    call nc, Call_06c_79fe                        ; $5d25: $d4 $fe $79
    sbc e                                         ; $5d28: $9b
    jp c, $db6d                                   ; $5d29: $da $6d $db

    adc d                                         ; $5d2c: $8a
    db $fd                                        ; $5d2d: $fd
    sub h                                         ; $5d2e: $94
    ld l, $b8                                     ; $5d2f: $2e $b8
    add [hl]                                      ; $5d31: $86
    db $e3                                        ; $5d32: $e3
    reti                                          ; $5d33: $d9


    sub b                                         ; $5d34: $90
    and $69                                       ; $5d35: $e6 $69
    ld b, l                                       ; $5d37: $45
    dec h                                         ; $5d38: $25
    add h                                         ; $5d39: $84
    cp h                                          ; $5d3a: $bc
    adc b                                         ; $5d3b: $88
    ld b, $12                                     ; $5d3c: $06 $12
    or d                                          ; $5d3e: $b2
    sbc a                                         ; $5d3f: $9f
    ld a, [hl-]                                   ; $5d40: $3a
    and $d1                                       ; $5d41: $e6 $d1
    ld d, d                                       ; $5d43: $52
    ld b, e                                       ; $5d44: $43
    ld a, [de]                                    ; $5d45: $1a
    or [hl]                                       ; $5d46: $b6
    inc bc                                        ; $5d47: $03
    sbc a                                         ; $5d48: $9f
    ld h, c                                       ; $5d49: $61
    rst $38                                       ; $5d4a: $ff
    di                                            ; $5d4b: $f3
    halt                                          ; $5d4c: $76
    rst $38                                       ; $5d4d: $ff
    inc hl                                        ; $5d4e: $23
    rst $08                                       ; $5d4f: $cf
    ld a, [de]                                    ; $5d50: $1a
    ld h, $4f                                     ; $5d51: $26 $4f
    ld d, l                                       ; $5d53: $55
    sub [hl]                                      ; $5d54: $96
    ld e, c                                       ; $5d55: $59
    ld c, [hl]                                    ; $5d56: $4e
    adc [hl]                                      ; $5d57: $8e
    ld b, $2b                                     ; $5d58: $06 $2b
    or $d3                                        ; $5d5a: $f6 $d3
    inc [hl]                                      ; $5d5c: $34
    add h                                         ; $5d5d: $84
    and c                                         ; $5d5e: $a1
    add c                                         ; $5d5f: $81
    call nz, Call_000_3532                        ; $5d60: $c4 $32 $35
    ld c, h                                       ; $5d63: $4c
    sbc [hl]                                      ; $5d64: $9e
    xor d                                         ; $5d65: $aa
    ld l, h                                       ; $5d66: $6c
    ld l, b                                       ; $5d67: $68
    call z, $ecfe                                 ; $5d68: $cc $fe $ec
    adc c                                         ; $5d6b: $89
    dec e                                         ; $5d6c: $1d
    sub l                                         ; $5d6d: $95
    db $e3                                        ; $5d6e: $e3
    ld [$b4b0], a                                 ; $5d6f: $ea $b0 $b4
    and d                                         ; $5d72: $a2
    ld h, l                                       ; $5d73: $65
    adc [hl]                                      ; $5d74: $8e
    or a                                          ; $5d75: $b7
    or c                                          ; $5d76: $b1
    dec e                                         ; $5d77: $1d
    ld d, a                                       ; $5d78: $57
    add $4d                                       ; $5d79: $c6 $4d
    and a                                         ; $5d7b: $a7
    add c                                         ; $5d7c: $81
    ld b, h                                       ; $5d7d: $44
    ld b, c                                       ; $5d7e: $41
    jp $f2b1                                      ; $5d7f: $c3 $b1 $f2


    ld d, $5d                                     ; $5d82: $16 $5d
    cp b                                          ; $5d84: $b8
    rst $08                                       ; $5d85: $cf
    dec de                                        ; $5d86: $1b
    rlca                                          ; $5d87: $07
    sbc a                                         ; $5d88: $9f
    dec sp                                        ; $5d89: $3b
    db $f4                                        ; $5d8a: $f4
    rst $08                                       ; $5d8b: $cf
    ld e, l                                       ; $5d8c: $5d
    adc h                                         ; $5d8d: $8c
    sbc [hl]                                      ; $5d8e: $9e
    inc c                                         ; $5d8f: $0c
    ld a, a                                       ; $5d90: $7f
    ld b, h                                       ; $5d91: $44
    call nc, Call_06c_54a3                        ; $5d92: $d4 $a3 $54
    add hl, sp                                    ; $5d95: $39
    dec sp                                        ; $5d96: $3b
    xor d                                         ; $5d97: $aa
    or h                                          ; $5d98: $b4
    rst $38                                       ; $5d99: $ff
    or d                                          ; $5d9a: $b2
    add l                                         ; $5d9b: $85
    add [hl]                                      ; $5d9c: $86
    inc [hl]                                      ; $5d9d: $34
    ld de, $8457                                  ; $5d9e: $11 $57 $84
    ld h, e                                       ; $5da1: $63
    adc [hl]                                      ; $5da2: $8e
    call c, $e70e                                 ; $5da3: $dc $0e $e7
    xor c                                         ; $5da6: $a9
    rst $18                                       ; $5da7: $df
    rlca                                          ; $5da8: $07
    scf                                           ; $5da9: $37
    ld [hl-], a                                   ; $5daa: $32
    adc e                                         ; $5dab: $8b
    and a                                         ; $5dac: $a7
    ret                                           ; $5dad: $c9


    and c                                         ; $5dae: $a1
    daa                                           ; $5daf: $27
    jp $111f                                      ; $5db0: $c3 $1f $11


    sub a                                         ; $5db3: $97
    ld c, $d7                                     ; $5db4: $0e $d7
    ld l, c                                       ; $5db6: $69
    ld [hl+], a                                   ; $5db7: $22
    xor [hl]                                      ; $5db8: $ae
    jr c, @-$67                                   ; $5db9: $38 $97

jr_06c_5dbb:
    ld a, [$c69e]                                 ; $5dbb: $fa $9e $c6
    xor c                                         ; $5dbe: $a9
    rst $20                                       ; $5dbf: $e7
    sbc a                                         ; $5dc0: $9f

jr_06c_5dc1:
    ld [hl], l                                    ; $5dc1: $75
    ret z                                         ; $5dc2: $c8

    sub c                                         ; $5dc3: $91
    sub $e9                                       ; $5dc4: $d6 $e9
    sbc a                                         ; $5dc6: $9f
    cp e                                          ; $5dc7: $bb
    ld a, b                                       ; $5dc8: $78
    ld [$ffb8], a                                 ; $5dc9: $ea $b8 $ff
    ld c, [hl]                                    ; $5dcc: $4e
    di                                            ; $5dcd: $f3
    ld [hl], h                                    ; $5dce: $74
    ld c, a                                       ; $5dcf: $4f
    daa                                           ; $5dd0: $27
    ret c                                         ; $5dd1: $d8

    and l                                         ; $5dd2: $a5
    ld e, [hl]                                    ; $5dd3: $5e
    xor [hl]                                      ; $5dd4: $ae
    ld [hl-], a                                   ; $5dd5: $32
    adc e                                         ; $5dd6: $8b
    pop de                                        ; $5dd7: $d1
    dec bc                                        ; $5dd8: $0b
    ld a, l                                       ; $5dd9: $7d
    db $e4                                        ; $5dda: $e4
    ld a, [bc]                                    ; $5ddb: $0a
    add h                                         ; $5ddc: $84
    cp h                                          ; $5ddd: $bc
    adc b                                         ; $5dde: $88
    ld a, d                                       ; $5ddf: $7a
    or $6d                                        ; $5de0: $f6 $6d
    jp Jump_06c_77e9                              ; $5de2: $c3 $e9 $77


    ld e, $d9                                     ; $5de5: $1e $d9
    ld a, [$fb19]                                 ; $5de7: $fa $19 $fb
    rst $20                                       ; $5dea: $e7
    rst $30                                       ; $5deb: $f7
    ld d, e                                       ; $5dec: $53
    add a                                         ; $5ded: $87
    and l                                         ; $5dee: $a5
    adc l                                         ; $5def: $8d
    jr nc, jr_06c_5dc1                            ; $5df0: $30 $cf

    ld c, e                                       ; $5df2: $4b
    rlca                                          ; $5df3: $07
    rst $20                                       ; $5df4: $e7
    sbc l                                         ; $5df5: $9d
    db $ec                                        ; $5df6: $ec
    ld e, c                                       ; $5df7: $59
    and [hl]                                      ; $5df8: $a6
    ld [hl-], a                                   ; $5df9: $32
    set 1, c                                      ; $5dfa: $cb $c9
    pop de                                        ; $5dfc: $d1
    ld h, b                                       ; $5dfd: $60
    dec bc                                        ; $5dfe: $0b
    ld c, l                                       ; $5dff: $4d
    ld c, $6f                                     ; $5e00: $0e $6f
    inc e                                         ; $5e02: $1c
    rst $20                                       ; $5e03: $e7
    xor c                                         ; $5e04: $a9
    sub b                                         ; $5e05: $90
    ld [c], a                                     ; $5e06: $e2
    ld l, c                                       ; $5e07: $69
    jr nz, jr_06c_5dbb                            ; $5e08: $20 $b1

    ld c, h                                       ; $5e0a: $4c
    db $fd                                        ; $5e0b: $fd
    xor a                                         ; $5e0c: $af
    ld h, $87                                     ; $5e0d: $26 $87
    and $a9                                       ; $5e0f: $e6 $a9
    ld [c], a                                     ; $5e11: $e2
    sub h                                         ; $5e12: $94
    ld a, [hl]                                    ; $5e13: $7e
    and a                                         ; $5e14: $a7
    sbc [hl]                                      ; $5e15: $9e
    ld h, l                                       ; $5e16: $65
    adc [hl]                                      ; $5e17: $8e
    ld b, $8f                                     ; $5e18: $06 $8f
    db $ed                                        ; $5e1a: $ed
    nop                                           ; $5e1b: $00
    rst $20                                       ; $5e1c: $e7
    ld a, [de]                                    ; $5e1d: $1a
    reti                                          ; $5e1e: $d9


    dec bc                                        ; $5e1f: $0b
    sbc l                                         ; $5e20: $9d
    add $15                                       ; $5e21: $c6 $15
    ld c, [hl]                                    ; $5e23: $4e
    dec a                                         ; $5e24: $3d
    ld a, e                                       ; $5e25: $7b
    ld [hl-], a                                   ; $5e26: $32
    db $fc                                        ; $5e27: $fc
    ld de, $40d1                                  ; $5e28: $11 $d1 $40
    ld h, d                                       ; $5e2b: $62
    rst $38                                       ; $5e2c: $ff
    inc hl                                        ; $5e2d: $23
    rst $08                                       ; $5e2e: $cf
    ld a, [de]                                    ; $5e2f: $1a
    ld c, b                                       ; $5e30: $48
    or h                                          ; $5e31: $b4
    scf                                           ; $5e32: $37
    ld c, $e7                                     ; $5e33: $0e $e7
    xor c                                         ; $5e35: $a9
    ld sp, hl                                     ; $5e36: $f9
    ld [hl], a                                    ; $5e37: $77
    ld a, [hl+]                                   ; $5e38: $2a
    daa                                           ; $5e39: $27
    dec hl                                        ; $5e3a: $2b
    ld c, a                                       ; $5e3b: $4f
    ld l, c                                       ; $5e3c: $69
    sub l                                         ; $5e3d: $95
    ld e, c                                       ; $5e3e: $59
    ld c, [hl]                                    ; $5e3f: $4e
    adc [hl]                                      ; $5e40: $8e
    ld b, $6b                                     ; $5e41: $06 $6b
    ld h, [hl]                                    ; $5e43: $66
    ld d, $27                                     ; $5e44: $16 $27
    add a                                         ; $5e46: $87
    sbc [hl]                                      ; $5e47: $9e
    inc c                                         ; $5e48: $0c
    ld a, a                                       ; $5e49: $7f
    ld b, h                                       ; $5e4a: $44
    ld l, h                                       ; $5e4b: $6c
    rlca                                          ; $5e4c: $07
    scf                                           ; $5e4d: $37
    ld b, a                                       ; $5e4e: $47
    sbc [hl]                                      ; $5e4f: $9e
    push af                                       ; $5e50: $f5
    ei                                            ; $5e51: $fb
    ldh [$86], a                                  ; $5e52: $e0 $86
    ld [hl], $32                                  ; $5e54: $36 $32
    reti                                          ; $5e56: $d9


    and h                                         ; $5e57: $a4
    and $a9                                       ; $5e58: $e6 $a9
    ld [c], a                                     ; $5e5a: $e2
    sub h                                         ; $5e5b: $94
    ld a, [hl]                                    ; $5e5c: $7e
    and a                                         ; $5e5d: $a7
    sbc [hl]                                      ; $5e5e: $9e
    ld h, l                                       ; $5e5f: $65
    adc [hl]                                      ; $5e60: $8e
    ld b, $8f                                     ; $5e61: $06 $8f
    scf                                           ; $5e63: $37
    ld a, d                                       ; $5e64: $7a
    sbc [hl]                                      ; $5e65: $9e
    ld a, [bc]                                    ; $5e66: $0a
    add hl, hl                                    ; $5e67: $29
    sbc [hl]                                      ; $5e68: $9e
    ld b, $12                                     ; $5e69: $06 $12
    ei                                            ; $5e6b: $fb
    ld e, a                                       ; $5e6c: $5f
    ld c, l                                       ; $5e6d: $4d
    xor [hl]                                      ; $5e6e: $ae
    and a                                         ; $5e6f: $a7
    ld h, b                                       ; $5e70: $60
    dec sp                                        ; $5e71: $3b
    and l                                         ; $5e72: $a5
    dec e                                         ; $5e73: $1d
    ld c, l                                       ; $5e74: $4d
    adc d                                         ; $5e75: $8a
    db $ec                                        ; $5e76: $ec
    and a                                         ; $5e77: $a7
    ret c                                         ; $5e78: $d8

    ld c, a                                       ; $5e79: $4f
    db $d3                                        ; $5e7a: $d3
    ld b, b                                       ; $5e7b: $40
    ld h, d                                       ; $5e7c: $62
    sub l                                         ; $5e7d: $95
    dec c                                         ; $5e7e: $0d
    ld h, c                                       ; $5e7f: $61
    sub h                                         ; $5e80: $94
    dec bc                                        ; $5e81: $0b
    ld [hl], l                                    ; $5e82: $75
    ld l, c                                       ; $5e83: $69
    push bc                                       ; $5e84: $c5
    xor c                                         ; $5e85: $a9
    inc e                                         ; $5e86: $1c
    rst $10                                       ; $5e87: $d7

Call_06c_5e88:
    db $e4                                        ; $5e88: $e4
    ret nc                                        ; $5e89: $d0

    sub e                                         ; $5e8a: $93
    pop hl                                        ; $5e8b: $e1
    adc a                                         ; $5e8c: $8f
    adc b                                         ; $5e8d: $88
    xor l                                         ; $5e8e: $ad
    sbc a                                         ; $5e8f: $9f
    ld h, c                                       ; $5e90: $61
    rst $38                                       ; $5e91: $ff
    di                                            ; $5e92: $f3
    halt                                          ; $5e93: $76
    rst $38                                       ; $5e94: $ff
    inc hl                                        ; $5e95: $23
    rst $08                                       ; $5e96: $cf
    ld [$a7f9], a                                 ; $5e97: $ea $f9 $a7
    ld a, [hl+]                                   ; $5e9a: $2a
    dec de                                        ; $5e9b: $1b
    jp c, $64c8                                   ; $5e9c: $da $c8 $64

    or b                                          ; $5e9f: $b0
    ld a, d                                       ; $5ea0: $7a
    ld [hl], $cf                                  ; $5ea1: $36 $cf
    ld a, a                                       ; $5ea3: $7f
    or [hl]                                       ; $5ea4: $b6
    inc bc                                        ; $5ea5: $03

Call_06c_5ea6:
    rra                                           ; $5ea6: $1f
    scf                                           ; $5ea7: $37
    sub b                                         ; $5ea8: $90
    ret c                                         ; $5ea9: $d8

    dec bc                                        ; $5eaa: $0b
    ld c, l                                       ; $5eab: $4d
    ld c, $7d                                     ; $5eac: $0e $7d
    ld b, h                                       ; $5eae: $44
    sbc c                                         ; $5eaf: $99
    push bc                                       ; $5eb0: $c5
    ld a, b                                       ; $5eb1: $78
    db $e4                                        ; $5eb2: $e4
    adc l                                         ; $5eb3: $8d
    inc bc                                        ; $5eb4: $03
    rst $20                                       ; $5eb5: $e7

Jump_06c_5eb6:
    xor c                                         ; $5eb6: $a9
    jp z, $d455                                   ; $5eb7: $ca $55 $d4

    xor l                                         ; $5eba: $ad
    inc l                                         ; $5ebb: $2c
    add [hl]                                      ; $5ebc: $86
    and b                                         ; $5ebd: $a0
    ld c, $da                                     ; $5ebe: $0e $da
    db $fc                                        ; $5ec0: $fc
    dec sp                                        ; $5ec1: $3b
    ld d, l                                       ; $5ec2: $55
    xor [hl]                                      ; $5ec3: $ae
    and d                                         ; $5ec4: $a2
    sbc d                                         ; $5ec5: $9a
    or b                                          ; $5ec6: $b0
    dec e                                         ; $5ec7: $1d
    rra                                           ; $5ec8: $1f
    db $fd                                        ; $5ec9: $fd
    adc [hl]                                      ; $5eca: $8e
    and b                                         ; $5ecb: $a0
    sbc [hl]                                      ; $5ecc: $9e
    ld a, [hl+]                                   ; $5ecd: $2a
    db $d3                                        ; $5ece: $d3
    ld e, $72                                     ; $5ecf: $1e $72
    dec sp                                        ; $5ed1: $3b
    nop                                           ; $5ed2: $00
    rra                                           ; $5ed3: $1f
    db $fd                                        ; $5ed4: $fd
    ld c, [hl]                                    ; $5ed5: $4e
    jp $9d51                                      ; $5ed6: $c3 $51 $9d


    jp z, Jump_000_11c9                           ; $5ed9: $ca $c9 $11

    or [hl]                                       ; $5edc: $b6
    dec e                                         ; $5edd: $1d
    sbc a                                         ; $5ede: $9f
    ld sp, $f647                                  ; $5edf: $31 $47 $f6
    sub c                                         ; $5ee2: $91
    dec de                                        ; $5ee3: $1b
    inc a                                         ; $5ee4: $3c
    and l                                         ; $5ee5: $a5
    db $ec                                        ; $5ee6: $ec
    pop de                                        ; $5ee7: $d1
    dec hl                                        ; $5ee8: $2b
    dec sp                                        ; $5ee9: $3b
    ld d, h                                       ; $5eea: $54
    ld sp, hl                                     ; $5eeb: $f9
    ret z                                         ; $5eec: $c8

    sub $9b                                       ; $5eed: $d6 $9b
    ld e, b                                       ; $5eef: $58
    dec d                                         ; $5ef0: $15
    and l                                         ; $5ef1: $a5
    inc l                                         ; $5ef2: $2c
    rst $10                                       ; $5ef3: $d7
    ld h, h                                       ; $5ef4: $64
    ld e, b                                       ; $5ef5: $58
    push hl                                       ; $5ef6: $e5
    cp b                                          ; $5ef7: $b8

jr_06c_5ef8:
    ld c, d                                       ; $5ef8: $4a
    ld e, d                                       ; $5ef9: $5a
    db $e4                                        ; $5efa: $e4
    ld l, l                                       ; $5efb: $6d
    ld l, h                                       ; $5efc: $6c
    rlca                                          ; $5efd: $07
    adc a                                         ; $5efe: $8f
    ld e, h                                       ; $5eff: $5c
    ld h, e                                       ; $5f00: $63
    add l                                         ; $5f01: $85
    adc b                                         ; $5f02: $88
    ld a, b                                       ; $5f03: $78
    ld h, h                                       ; $5f04: $64
    dec sp                                        ; $5f05: $3b
    nop                                           ; $5f06: $00
    rra                                           ; $5f07: $1f
    rst $28                                       ; $5f08: $ef
    pop bc                                        ; $5f09: $c1
    call $87f3                                    ; $5f0a: $cd $f3 $87
    ld h, e                                       ; $5f0d: $63
    adc [hl]                                      ; $5f0e: $8e
    call c, Call_06c_570e                         ; $5f0f: $dc $0e $57
    jr nz, jr_06c_5ef8                            ; $5f12: $20 $e4

    ld b, l                                       ; $5f14: $45
    call nc, $6fb3                                ; $5f15: $d4 $b3 $6f
    dec de                                        ; $5f18: $1b
    ld c, [hl]                                    ; $5f19: $4e
    cp a                                          ; $5f1a: $bf
    ld [hl], e                                    ; $5f1b: $73
    jp hl                                         ; $5f1c: $e9


    nop                                           ; $5f1d: $00
    ld l, a                                       ; $5f1e: $6f
    pop de                                        ; $5f1f: $d1
    dec a                                         ; $5f20: $3d
    pop af                                        ; $5f21: $f1
    ld e, a                                       ; $5f22: $5f
    reti                                          ; $5f23: $d9


    ld c, a                                       ; $5f24: $4f
    rst $28                                       ; $5f25: $ef
    db $ec                                        ; $5f26: $ec
    cp e                                          ; $5f27: $bb
    or [hl]                                       ; $5f28: $b6
    ld b, h                                       ; $5f29: $44
    dec hl                                        ; $5f2a: $2b
    rst $18                                       ; $5f2b: $df
    ld h, e                                       ; $5f2c: $63
    dec bc                                        ; $5f2d: $0b
    add d                                         ; $5f2e: $82
    ld b, $12                                     ; $5f2f: $06 $12
    ld l, l                                       ; $5f31: $6d
    ld sp, hl                                     ; $5f32: $f9
    reti                                          ; $5f33: $d9


    ld a, d                                       ; $5f34: $7a
    ld a, l                                       ; $5f35: $7d
    inc a                                         ; $5f36: $3c
    rr h                                          ; $5f37: $cb $1c
    dec c                                         ; $5f39: $0d
    or [hl]                                       ; $5f3a: $b6
    dec e                                         ; $5f3b: $1d
    rra                                           ; $5f3c: $1f
    rst $28                                       ; $5f3d: $ef
    pop bc                                        ; $5f3e: $c1
    db $db                                        ; $5f3f: $db
    ld bc, $d16f                                  ; $5f40: $01 $6f $d1
    dec a                                         ; $5f43: $3d
    pop af                                        ; $5f44: $f1
    ld e, a                                       ; $5f45: $5f
    reti                                          ; $5f46: $d9


jr_06c_5f47:
    ld c, a                                       ; $5f47: $4f
    rst $28                                       ; $5f48: $ef
    db $ec                                        ; $5f49: $ec
    dec d                                         ; $5f4a: $15
    jr z, jr_06c_5f47                             ; $5f4b: $28 $fa

    xor [hl]                                      ; $5f4d: $ae
    dec l                                         ; $5f4e: $2d
    pop de                                        ; $5f4f: $d1
    jp z, $d8f7                                   ; $5f50: $ca $f7 $d8

    jp nz, $ebd6                                  ; $5f53: $c2 $d6 $eb

    db $e3                                        ; $5f56: $e3
    ld e, c                                       ; $5f57: $59
    and $68                                       ; $5f58: $e6 $68
    jr nc, jr_06c_5f9d                            ; $5f5a: $30 $41

    inc bc                                        ; $5f5c: $03
    adc c                                         ; $5f5d: $89
    or [hl]                                       ; $5f5e: $b6
    db $fc                                        ; $5f5f: $fc
    ld l, h                                       ; $5f60: $6c
    rlca                                          ; $5f61: $07
    rra                                           ; $5f62: $1f
    db $fd                                        ; $5f63: $fd
    ld c, [hl]                                    ; $5f64: $4e
    sub l                                         ; $5f65: $95
    and l                                         ; $5f66: $a5
    ld b, $12                                     ; $5f67: $06 $12
    cpl                                           ; $5f69: $2f
    ld [c], a                                     ; $5f6a: $e2
    ld d, d                                       ; $5f6b: $52
    cpl                                           ; $5f6c: $2f
    ld d, a                                       ; $5f6d: $57
    sbc c                                         ; $5f6e: $99
    push bc                                       ; $5f6f: $c5
    add sp, -$7b                                  ; $5f70: $e8 $85
    ld a, $72                                     ; $5f72: $3e $72
    dec b                                         ; $5f74: $05
    ld b, d                                       ; $5f75: $42
    ld e, [hl]                                    ; $5f76: $5e
    ld b, h                                       ; $5f77: $44
    dec a                                         ; $5f78: $3d
    ei                                            ; $5f79: $fb
    or [hl]                                       ; $5f7a: $b6
    pop hl                                        ; $5f7b: $e1
    db $f4                                        ; $5f7c: $f4
    dec sp                                        ; $5f7d: $3b
    adc a                                         ; $5f7e: $8f
    ld l, h                                       ; $5f7f: $6c
    rlca                                          ; $5f80: $07
    rst $10                                       ; $5f81: $d7
    rst $00                                       ; $5f82: $c7
    or e                                          ; $5f83: $b3
    call z, Call_06c_60d1                         ; $5f84: $cc $d1 $60
    add d                                         ; $5f87: $82
    ld b, $12                                     ; $5f88: $06 $12
    ld l, l                                       ; $5f8a: $6d
    ld sp, hl                                     ; $5f8b: $f9
    reti                                          ; $5f8c: $d9


    ld c, $6f                                     ; $5f8d: $0e $6f
    pop de                                        ; $5f8f: $d1
    dec a                                         ; $5f90: $3d
    pop af                                        ; $5f91: $f1
    ld e, a                                       ; $5f92: $5f
    reti                                          ; $5f93: $d9


    ld c, a                                       ; $5f94: $4f
    rst $28                                       ; $5f95: $ef
    db $ec                                        ; $5f96: $ec
    cp e                                          ; $5f97: $bb
    or [hl]                                       ; $5f98: $b6
    ld b, h                                       ; $5f99: $44
    dec hl                                        ; $5f9a: $2b
    rst $18                                       ; $5f9b: $df
    ld h, e                                       ; $5f9c: $63

jr_06c_5f9d:
    dec bc                                        ; $5f9d: $0b
    cp l                                          ; $5f9e: $bd
    ld a, [bc]                                    ; $5f9f: $0a
    or e                                          ; $5fa0: $b3
    sbc a                                         ; $5fa1: $9f
    ld l, $f5                                     ; $5fa2: $2e $f5
    db $ed                                        ; $5fa4: $ed
    or e                                          ; $5fa5: $b3
    ld h, $87                                     ; $5fa6: $26 $87
    adc $2e                                       ; $5fa8: $ce $2e
    add [hl]                                      ; $5faa: $86
    ld b, a                                       ; $5fab: $47
    jp $e2b1                                      ; $5fac: $c3 $b1 $e2


    xor $ed                                       ; $5faf: $ee $ed
    nop                                           ; $5fb1: $00
    rst $20                                       ; $5fb2: $e7
    ld a, [de]                                    ; $5fb3: $1a
    daa                                           ; $5fb4: $27
    ld d, l                                       ; $5fb5: $55
    call nz, $dd7d                                ; $5fb6: $c4 $7d $dd
    ld l, [hl]                                    ; $5fb9: $6e
    jr c, jr_06c_6012                             ; $5fba: $38 $56

    pop de                                        ; $5fbc: $d1
    jp z, $1dd8                                   ; $5fbd: $ca $d8 $1d

    ld [hl], e                                    ; $5fc0: $73
    ld h, h                                       ; $5fc1: $64
    inc hl                                        ; $5fc2: $23
    xor l                                         ; $5fc3: $ad
    ld [hl], d                                    ; $5fc4: $72
    or d                                          ; $5fc5: $b2
    ld a, [c]                                     ; $5fc6: $f2
    sub h                                         ; $5fc7: $94
    sub [hl]                                      ; $5fc8: $96
    sbc a                                         ; $5fc9: $9f
    ld c, d                                       ; $5fca: $4a
    ld sp, $b04f                                  ; $5fcb: $31 $4f $b0
    db $ed                                        ; $5fce: $ed
    nop                                           ; $5fcf: $00
    rra                                           ; $5fd0: $1f
    ld h, a                                       ; $5fd1: $67
    rst $08                                       ; $5fd2: $cf
    cp $47                                        ; $5fd3: $fe $47
    sbc [hl]                                      ; $5fd5: $9e
    sub l                                         ; $5fd6: $95
    ld a, [de]                                    ; $5fd7: $1a
    add e                                         ; $5fd8: $83
    cp e                                          ; $5fd9: $bb
    or d                                          ; $5fda: $b2
    sbc a                                         ; $5fdb: $9f
    scf                                           ; $5fdc: $37
    ld a, d                                       ; $5fdd: $7a
    ld sp, hl                                     ; $5fde: $f9
    xor $8a                                       ; $5fdf: $ee $8a
    sub [hl]                                      ; $5fe1: $96
    ld b, h                                       ; $5fe2: $44
    and a                                         ; $5fe3: $a7
    ld a, [hl]                                    ; $5fe4: $7e
    call z, Call_06c_78ad                         ; $5fe5: $cc $ad $78
    adc a                                         ; $5fe8: $8f
    xor l                                         ; $5fe9: $ad
    xor c                                         ; $5fea: $a9
    add a                                         ; $5feb: $87
    sub $31                                       ; $5fec: $d6 $31
    xor a                                         ; $5fee: $af
    inc c                                         ; $5fef: $0c
    cp l                                          ; $5ff0: $bd
    call nc, $cc6b                                ; $5ff1: $d4 $6b $cc
    dec hl                                        ; $5ff4: $2b
    adc a                                         ; $5ff5: $8f
    or $a3                                        ; $5ff6: $f6 $a3
    rst $08                                       ; $5ff8: $cf
    ccf                                           ; $5ff9: $3f

jr_06c_5ffa:
    cp d                                          ; $5ffa: $ba
    ld [hl], d                                    ; $5ffb: $72
    cp c                                          ; $5ffc: $b9
    pop hl                                        ; $5ffd: $e1
    ld a, b                                       ; $5ffe: $78
    cp d                                          ; $5fff: $ba
    ld [hl-], a                                   ; $6000: $32
    ld b, a                                       ; $6001: $47
    add e                                         ; $6002: $83
    dec d                                         ; $6003: $15
    ld [hl], a                                    ; $6004: $77
    ld e, a                                       ; $6005: $5f
    ld a, [hl-]                                   ; $6006: $3a
    nop                                           ; $6007: $00
    rra                                           ; $6008: $1f
    jp nc, $8d09                                  ; $6009: $d2 $09 $8d

    ld c, a                                       ; $600c: $4f
    jr z, jr_06c_5ffa                             ; $600d: $28 $eb

    ld e, c                                       ; $600f: $59
    and l                                         ; $6010: $a5
    dec bc                                        ; $6011: $0b

jr_06c_6012:
    adc l                                         ; $6012: $8d
    push af                                       ; $6013: $f5
    or b                                          ; $6014: $b0
    ld h, $87                                     ; $6015: $26 $87
    adc $2e                                       ; $6017: $ce $2e
    add [hl]                                      ; $6019: $86
    ld b, a                                       ; $601a: $47
    di                                            ; $601b: $f3
    inc [hl]                                      ; $601c: $34
    sub b                                         ; $601d: $90
    ldh [$6d], a                                  ; $601e: $e0 $6d
    ld [$fc59], a                                 ; $6020: $ea $59 $fc
    sub a                                         ; $6023: $97
    adc [hl]                                      ; $6024: $8e
    ld l, [hl]                                    ; $6025: $6e
    rlca                                          ; $6026: $07
    scf                                           ; $6027: $37
    ld b, a                                       ; $6028: $47
    sbc [hl]                                      ; $6029: $9e
    dec [hl]                                      ; $602a: $35
    inc e                                         ; $602b: $1c
    rst $08                                       ; $602c: $cf
    ld a, [hl+]                                   ; $602d: $2a
    sra h                                         ; $602e: $cb $2c
    adc l                                         ; $6030: $8d
    ld e, c                                       ; $6031: $59
    jp nz, $acaa                                  ; $6032: $c2 $aa $ac

    ld h, d                                       ; $6035: $62
    ld e, c                                       ; $6036: $59
    dec a                                         ; $6037: $3d
    ld a, [$2dae]                                 ; $6038: $fa $ae $2d
    pop de                                        ; $603b: $d1
    jp z, $d8f7                                   ; $603c: $ca $f7 $d8

    ld b, d                                       ; $603f: $42
    ld a, l                                       ; $6040: $7d
    ld [hl-], a                                   ; $6041: $32
    db $e4                                        ; $6042: $e4
    ret z                                         ; $6043: $c8

    and d                                         ; $6044: $a2
    ld a, c                                       ; $6045: $79
    ld d, [hl]                                    ; $6046: $56
    ld h, h                                       ; $6047: $64
    cp e                                          ; $6048: $bb
    ld l, l                                       ; $6049: $6d
    ld e, e                                       ; $604a: $5b
    dec e                                         ; $604b: $1d
    or h                                          ; $604c: $b4
    ld a, d                                       ; $604d: $7a
    ld c, a                                       ; $604e: $4f
    sub l                                         ; $604f: $95
    dec d                                         ; $6050: $15
    adc l                                         ; $6051: $8d
    dec [hl]                                      ; $6052: $35
    db $e4                                        ; $6053: $e4
    ld l, c                                       ; $6054: $69
    or [hl]                                       ; $6055: $b6
    inc bc                                        ; $6056: $03
    rst $20                                       ; $6057: $e7
    xor c                                         ; $6058: $a9
    call nc, Call_000_3690                        ; $6059: $d4 $90 $36
    dec c                                         ; $605c: $0d
    inc h                                         ; $605d: $24
    or $84                                        ; $605e: $f6 $84
    inc l                                         ; $6060: $2c
    and [hl]                                      ; $6061: $a6
    dec de                                        ; $6062: $1b
    dec l                                         ; $6063: $2d
    ld a, [de]                                    ; $6064: $1a
    ld [hl], c                                    ; $6065: $71
    ld de, $a8f5                                  ; $6066: $11 $f5 $a8
    add h                                         ; $6069: $84
    and d                                         ; $606a: $a2
    call nc, Call_000_22c8                        ; $606b: $d4 $c8 $22
    rst $08                                       ; $606e: $cf
    sub $cb                                       ; $606f: $d6 $cb
    cp l                                          ; $6071: $bd
    ld sp, $6959                                  ; $6072: $31 $59 $69
    dec hl                                        ; $6075: $2b
    and e                                         ; $6076: $a3
    daa                                           ; $6077: $27
    ld h, h                                       ; $6078: $64
    pop af                                        ; $6079: $f1
    and h                                         ; $607a: $a4
    adc [hl]                                      ; $607b: $8e
    or $fe                                        ; $607c: $f6 $fe
    dec a                                         ; $607e: $3d
    ld l, $37                                     ; $607f: $2e $37
    ld e, d                                       ; $6081: $5a
    push hl                                       ; $6082: $e5
    jp nc, $8f22                                  ; $6083: $d2 $22 $8f

    ld d, [hl]                                    ; $6086: $56
    ld a, c                                       ; $6087: $79
    ld c, d                                       ; $6088: $4a
    res 1, a                                      ; $6089: $cb $8f
    ld e, [hl]                                    ; $608b: $5e
    ld a, [hl-]                                   ; $608c: $3a
    nop                                           ; $608d: $00
    scf                                           ; $608e: $37
    ld b, a                                       ; $608f: $47
    sbc [hl]                                      ; $6090: $9e
    dec [hl]                                      ; $6091: $35
    inc e                                         ; $6092: $1c
    rst $08                                       ; $6093: $cf
    cp $69                                        ; $6094: $fe $69
    sbc l                                         ; $6096: $9d
    and $fb                                       ; $6097: $e6 $fb
    dec e                                         ; $6099: $1d
    ld l, l                                       ; $609a: $6d
    adc d                                         ; $609b: $8a
    sbc b                                         ; $609c: $98
    or b                                          ; $609d: $b0
    rst $10                                       ; $609e: $d7

jr_06c_609f:
    or e                                          ; $609f: $b3
    pop hl                                        ; $60a0: $e1
    db $e4                                        ; $60a1: $e4
    jr c, @+$5c                                   ; $60a2: $38 $5a

    adc a                                         ; $60a4: $8f
    ld c, d                                       ; $60a5: $4a
    jr z, jr_06c_60e2                             ; $60a6: $28 $3a

    ld b, d                                       ; $60a8: $42
    and l                                         ; $60a9: $a5
    db $fd                                        ; $60aa: $fd
    sub c                                         ; $60ab: $91
    db $fd                                        ; $60ac: $fd
    inc d                                         ; $60ad: $14
    ld e, d                                       ; $60ae: $5a
    cp b                                          ; $60af: $b8
    jr nc, jr_06c_609f                            ; $60b0: $30 $ed

    ld h, d                                       ; $60b2: $62
    ld b, [hl]                                    ; $60b3: $46
    ld l, b                                       ; $60b4: $68
    di                                            ; $60b5: $f3
    ld d, h                                       ; $60b6: $54
    ld [hl], c                                    ; $60b7: $71
    ld c, d                                       ; $60b8: $4a
    cp a                                          ; $60b9: $bf
    ld d, e                                       ; $60ba: $53
    rst $08                                       ; $60bb: $cf
    ld [hl-], a                                   ; $60bc: $32
    ld b, a                                       ; $60bd: $47
    add e                                         ; $60be: $83
    rst $00                                       ; $60bf: $c7
    halt                                          ; $60c0: $76
    nop                                           ; $60c1: $00
    ld l, a                                       ; $60c2: $6f
    xor a                                         ; $60c3: $af
    db $db                                        ; $60c4: $db
    ld [hl], h                                    ; $60c5: $74
    dec c                                         ; $60c6: $0d
    inc h                                         ; $60c7: $24
    ld d, [hl]                                    ; $60c8: $56
    inc e                                         ; $60c9: $1c
    call c, Call_06c_50e4                         ; $60ca: $dc $e4 $50
    adc c                                         ; $60cd: $89
    ld [hl], l                                    ; $60ce: $75
    dec bc                                        ; $60cf: $0b
    sub l                                         ; $60d0: $95

Call_06c_60d1:
    db $e3                                        ; $60d1: $e3
    cp d                                          ; $60d2: $ba
    ld [hl+], a                                   ; $60d3: $22
    or e                                          ; $60d4: $b3
    ld d, [hl]                                    ; $60d5: $56
    ld c, [hl]                                    ; $60d6: $4e
    ld d, $2d                                     ; $60d7: $16 $2d
    sub l                                         ; $60d9: $95
    ldh a, [$a3]                                  ; $60da: $f0 $a3
    call $c553                                    ; $60dc: $cd $53 $c5
    cp $3b                                        ; $60df: $fe $3b
    sub l                                         ; $60e1: $95

jr_06c_60e2:
    db $e3                                        ; $60e2: $e3
    ld d, d                                       ; $60e3: $52
    add $5e                                       ; $60e4: $c6 $5e
    ccf                                           ; $60e6: $3f
    jp c, Jump_06c_46d0                           ; $60e7: $da $d0 $46

    ld b, h                                       ; $60ea: $44
    push de                                       ; $60eb: $d5
    ld sp, $d6ea                                  ; $60ec: $31 $ea $d6
    di                                            ; $60ef: $f3
    ld d, h                                       ; $60f0: $54
    add h                                         ; $60f1: $84
    and e                                         ; $60f2: $a3
    ld [hl], c                                    ; $60f3: $71
    ld a, [de]                                    ; $60f4: $1a
    ld c, b                                       ; $60f5: $48
    ld l, h                                       ; $60f6: $6c
    and h                                         ; $60f7: $a4
    xor e                                         ; $60f8: $ab
    sbc h                                         ; $60f9: $9c
    and l                                         ; $60fa: $a5
    ret nc                                        ; $60fb: $d0

    ld a, d                                       ; $60fc: $7a
    ld [hl], $b4                                  ; $60fd: $36 $b4
    push hl                                       ; $60ff: $e5
    cp b                                          ; $6100: $b8
    inc c                                         ; $6101: $0c
    push af                                       ; $6102: $f5
    call z, $a6d1                                 ; $6103: $cc $d1 $a6
    sbc [hl]                                      ; $6106: $9e
    dec sp                                        ; $6107: $3b
    or [hl]                                       ; $6108: $b6

Jump_06c_6109:
    inc bc                                        ; $6109: $03
    rra                                           ; $610a: $1f
    adc l                                         ; $610b: $8d
    ld a, [hl+]                                   ; $610c: $2a
    ld a, [de]                                    ; $610d: $1a
    jp c, Jump_06c_5c72                           ; $610e: $da $72 $5c

    add [hl]                                      ; $6111: $86
    ld [hl+], a                                   ; $6112: $22
    db $ed                                        ; $6113: $ed
    add sp, -$7b                                  ; $6114: $e8 $85
    ld e, [hl]                                    ; $6116: $5e
    sbc a                                         ; $6117: $9f
    adc e                                         ; $6118: $8b
    rst $30                                       ; $6119: $f7
    ld d, d                                       ; $611a: $52
    dec hl                                        ; $611b: $2b
    rst $00                                       ; $611c: $c7
    ld [hl], l                                    ; $611d: $75
    ld a, [de]                                    ; $611e: $1a
    jp c, $a888                                   ; $611f: $da $88 $a8

    ld a, [hl-]                                   ; $6122: $3a
    sub $1b                                       ; $6123: $d6 $1b
    add hl, de                                    ; $6125: $19
    ld hl, $6dbb                                  ; $6126: $21 $bb $6d
    ld e, e                                       ; $6129: $5b
    ld e, c                                       ; $612a: $59
    db $f4                                        ; $612b: $f4
    add $64                                       ; $612c: $c6 $64
    and l                                         ; $612e: $a5
    xor l                                         ; $612f: $ad
    adc h                                         ; $6130: $8c
    ld c, e                                       ; $6131: $4b
    rlca                                          ; $6132: $07
    ld l, a                                       ; $6133: $6f
    adc a                                         ; $6134: $8f
    and h                                         ; $6135: $a4
    or $ce                                        ; $6136: $f6 $ce
    cp $99                                        ; $6138: $fe $99
    dec a                                         ; $613a: $3d
    or [hl]                                       ; $613b: $b6
    or $ba                                        ; $613c: $f6 $ba
    pop af                                        ; $613e: $f1
    ld [c], a                                     ; $613f: $e2
    ld l, b                                       ; $6140: $68
    ccf                                           ; $6141: $3f
    push bc                                       ; $6142: $c5
    db $ed                                        ; $6143: $ed
    add hl, bc                                    ; $6144: $09
    cp $73                                        ; $6145: $fe $73
    jp hl                                         ; $6147: $e9


    sub $5e                                       ; $6148: $d6 $5e
    ld d, [hl]                                    ; $614a: $56
    ld e, l                                       ; $614b: $5d
    add hl, de                                    ; $614c: $19
    ld a, [hl]                                    ; $614d: $7e
    inc b                                         ; $614e: $04
    ld a, l                                       ; $614f: $7d
    rst $00                                       ; $6150: $c7
    add sp, -$35                                  ; $6151: $e8 $cb
    cp [hl]                                       ; $6153: $be
    ccf                                           ; $6154: $3f
    halt                                          ; $6155: $76
    ld h, d                                       ; $6156: $62
    cp a                                          ; $6157: $bf
    jr nz, jr_06c_61ce                            ; $6158: $20 $74

    rst $20                                       ; $615a: $e7
    ld c, a                                       ; $615b: $4f
    db $db                                        ; $615c: $db
    ld bc, $f71f                                  ; $615d: $01 $1f $f7
    add [hl]                                      ; $6160: $86
    ld l, l                                       ; $6161: $6d
    ld a, l                                       ; $6162: $7d
    ld h, a                                       ; $6163: $67
    db $ed                                        ; $6164: $ed
    ld d, d                                       ; $6165: $52
    inc l                                         ; $6166: $2c
    add sp, -$0c                                  ; $6167: $e8 $f4
    ld [hl], $77                                  ; $6169: $36 $77
    ld hl, sp+$31                                 ; $616b: $f8 $31
    ld b, c                                       ; $616d: $41
    ld [hl], a                                    ; $616e: $77
    ld a, [hl-]                                   ; $616f: $3a
    and c                                         ; $6170: $a1
    and c                                         ; $6171: $a1
    ld l, b                                       ; $6172: $68
    inc e                                         ; $6173: $1c
    ccf                                           ; $6174: $3f
    jp c, $c8ff                                   ; $6175: $da $ff $c8

    inc sp                                        ; $6178: $33
    ld l, l                                       ; $6179: $6d
    jr nz, @-$4d                                  ; $617a: $20 $b1

    ld sp, hl                                     ; $617c: $f9
    ld [hl], a                                    ; $617d: $77
    ld [$a7f9], a                                 ; $617e: $ea $f9 $a7
    xor e                                         ; $6181: $ab
    ld [$69b7], sp                                ; $6182: $08 $b7 $69
    ld [hl], l                                    ; $6185: $75
    pop bc                                        ; $6186: $c1
    and a                                         ; $6187: $a7
    dec h                                         ; $6188: $25
    and c                                         ; $6189: $a1
    call Call_000_3953                            ; $618a: $cd $53 $39
    ld h, [hl]                                    ; $618d: $66
    db $f4                                        ; $618e: $f4
    ld h, e                                       ; $618f: $63
    push af                                       ; $6190: $f5
    ret                                           ; $6191: $c9


    sub b                                         ; $6192: $90
    inc hl                                        ; $6193: $23
    dec sp                                        ; $6194: $3b
    jp c, Jump_000_2395                           ; $6195: $da $95 $23

    db $ed                                        ; $6198: $ed
    adc a                                         ; $6199: $8f
    ld a, l                                       ; $619a: $7d
    or h                                          ; $619b: $b4
    ld e, $5a                                     ; $619c: $1e $5a
    and h                                         ; $619e: $a4
    dec e                                         ; $619f: $1d
    cp d                                          ; $61a0: $ba
    push af                                       ; $61a1: $f5
    ld [hl], d                                    ; $61a2: $72
    jr nz, jr_06c_6216                            ; $61a3: $20 $71

    and a                                         ; $61a5: $a7
    ld [hl], $90                                  ; $61a6: $36 $90
    ld e, b                                       ; $61a8: $58
    ld c, a                                       ; $61a9: $4f
    dec e                                         ; $61aa: $1d
    ld hl, $253d                                  ; $61ab: $21 $3d $25
    adc l                                         ; $61ae: $8d
    xor [hl]                                      ; $61af: $ae
    call nc, Call_000_3bf8                        ; $61b0: $d4 $f8 $3b
    push de                                       ; $61b3: $d5

jr_06c_61b4:
    db $f4                                        ; $61b4: $f4
    dec a                                         ; $61b5: $3d
    ld d, a                                       ; $61b6: $57
    inc e                                         ; $61b7: $1c
    dec l                                         ; $61b8: $2d
    ld a, [de]                                    ; $61b9: $1a
    jp nc, $ea3c                                  ; $61ba: $d2 $3c $ea

    reti                                          ; $61bd: $d9


    ld [hl], b                                    ; $61be: $70
    ld [hl], d                                    ; $61bf: $72
    inc e                                         ; $61c0: $1c
    ld l, l                                       ; $61c1: $6d
    ld [$3543], sp                                ; $61c2: $08 $43 $35
    ld b, c                                       ; $61c5: $41
    dec hl                                        ; $61c6: $2b
    and c                                         ; $61c7: $a1
    ret nc                                        ; $61c8: $d0

    db $ed                                        ; $61c9: $ed
    nop                                           ; $61ca: $00
    sbc a                                         ; $61cb: $9f
    adc l                                         ; $61cc: $8d
    rra                                           ; $61cd: $1f

jr_06c_61ce:
    db $ed                                        ; $61ce: $ed
    ld l, b                                       ; $61cf: $68
    or c                                          ; $61d0: $b1
    and a                                         ; $61d1: $a7
    inc a                                         ; $61d2: $3c
    ld e, d                                       ; $61d3: $5a
    rst $08                                       ; $61d4: $cf
    ccf                                           ; $61d5: $3f
    ld e, l                                       ; $61d6: $5d
    ld [hl], a                                    ; $61d7: $77
    ld a, [hl-]                                   ; $61d8: $3a
    and c                                         ; $61d9: $a1
    pop bc                                        ; $61da: $c1
    ld a, [de]                                    ; $61db: $1a
    ld c, b                                       ; $61dc: $48
    db $ec                                        ; $61dd: $ec
    add l                                         ; $61de: $85
    add [hl]                                      ; $61df: $86
    ld [hl], $4b                                  ; $61e0: $36 $4b
    cp b                                          ; $61e2: $b8
    db $fc                                        ; $61e3: $fc
    inc d                                         ; $61e4: $14
    reti                                          ; $61e5: $d9


    jp Jump_06c_519a                              ; $61e6: $c3 $9a $51


    pop de                                        ; $61e9: $d1
    ld a, $46                                     ; $61ea: $3e $46
    adc l                                         ; $61ec: $8d
    xor b                                         ; $61ed: $a8
    ld b, a                                       ; $61ee: $47
    ld b, e                                       ; $61ef: $43
    sbc e                                         ; $61f0: $9b
    ret nc                                        ; $61f1: $d0

    ld d, $3d                                     ; $61f2: $16 $3d
    inc a                                         ; $61f4: $3c
    or a                                          ; $61f5: $b7
    inc bc                                        ; $61f6: $03
    rra                                           ; $61f7: $1f
    ld d, a                                       ; $61f8: $57
    adc [hl]                                      ; $61f9: $8e
    add hl, de                                    ; $61fa: $19
    db $fd                                        ; $61fb: $fd
    ld e, b                                       ; $61fc: $58
    db $fd                                        ; $61fd: $fd
    inc [hl]                                      ; $61fe: $34
    jp nc, $9724                                  ; $61ff: $d2 $24 $97

    ld c, l                                       ; $6202: $4d
    sub c                                         ; $6203: $91
    dec a                                         ; $6204: $3d
    xor h                                         ; $6205: $ac
    ld a, [hl]                                    ; $6206: $7e
    cp d                                          ; $6207: $ba
    jp $fd4f                                      ; $6208: $c3 $4f $fd


    ld [hl-], a                                   ; $620b: $32
    xor [hl]                                      ; $620c: $ae
    jr c, jr_06c_61b4                             ; $620d: $38 $a5

    add $e0                                       ; $620f: $c6 $e0
    add [hl]                                      ; $6211: $86
    ld [hl], $4b                                  ; $6212: $36 $4b
    cp b                                          ; $6214: $b8
    db $fc                                        ; $6215: $fc

jr_06c_6216:
    inc d                                         ; $6216: $14
    adc l                                         ; $6217: $8d
    db $e3                                        ; $6218: $e3
    ld b, a                                       ; $6219: $47
    dec de                                        ; $621a: $1b
    ld c, b                                       ; $621b: $48
    ld l, h                                       ; $621c: $6c
    cp $9d                                        ; $621d: $fe $9d
    ld b, $d2                                     ; $621f: $06 $d2
    ld d, d                                       ; $6221: $52
    ld a, [de]                                    ; $6222: $1a
    ld e, l                                       ; $6223: $5d
    dec de                                        ; $6224: $1b
    ld l, c                                       ; $6225: $69
    ld c, l                                       ; $6226: $4d
    ld c, $75                                     ; $6227: $0e $75
    ld h, e                                       ; $6229: $63
    sub c                                         ; $622a: $91
    ld [hl], l                                    ; $622b: $75
    ld l, c                                       ; $622c: $69
    push bc                                       ; $622d: $c5
    xor c                                         ; $622e: $a9
    sbc a                                         ; $622f: $9f
    ld a, l                                       ; $6230: $7d
    ld l, h                                       ; $6231: $6c
    inc d                                         ; $6232: $14
    ld e, e                                       ; $6233: $5b
    ld a, e                                       ; $6234: $7b
    ld e, c                                       ; $6235: $59
    ld [hl], l                                    ; $6236: $75
    ld h, l                                       ; $6237: $65
    ld hl, sp+$11                                 ; $6238: $f8 $11
    db $f4                                        ; $623a: $f4
    ld a, [c]                                     ; $623b: $f2
    cp $9f                                        ; $623c: $fe $9f
    cp [hl]                                       ; $623e: $be
    sbc l                                         ; $623f: $9d

Call_06c_6240:
    sbc h                                         ; $6240: $9c
    ld [hl], b                                    ; $6241: $70
    and a                                         ; $6242: $a7
    rra                                           ; $6243: $1f
    db $e3                                        ; $6244: $e3
    ld bc, $9837                                  ; $6245: $01 $37 $98
    push bc                                       ; $6248: $c5
    add sp, $2b                                   ; $6249: $e8 $2b
    db $ed                                        ; $624b: $ed
    dec d                                         ; $624c: $15
    ld [$1179], sp                                ; $624d: $08 $79 $11
    push af                                       ; $6250: $f5
    db $ec                                        ; $6251: $ec
    db $db                                        ; $6252: $db
    add [hl]                                      ; $6253: $86
    db $d3                                        ; $6254: $d3
    rst $28                                       ; $6255: $ef
    inc e                                         ; $6256: $1c
    rst $20                                       ; $6257: $e7
    ld a, [de]                                    ; $6258: $1a
    reti                                          ; $6259: $d9


    dec bc                                        ; $625a: $0b
    sbc l                                         ; $625b: $9d
    ld a, [$b731]                                 ; $625c: $fa $31 $b7
    ld [c], a                                     ; $625f: $e2
    dec a                                         ; $6260: $3d
    or [hl]                                       ; $6261: $b6
    and [hl]                                      ; $6262: $a6
    ld a, [hl]                                    ; $6263: $7e
    or h                                          ; $6264: $b4
    daa                                           ; $6265: $27
    ret c                                         ; $6266: $d8

    call nz, $add1                                ; $6267: $c4 $d1 $ad
    rra                                           ; $626a: $1f
    ld l, e                                       ; $626b: $6b
    xor c                                         ; $626c: $a9
    ld sp, $e479                                  ; $626d: $31 $79 $e4
    ld c, b                                       ; $6270: $48
    xor l                                         ; $6271: $ad
    sbc a                                         ; $6272: $9f
    add [hl]                                      ; $6273: $86
    or [hl]                                       ; $6274: $b6
    inc e                                         ; $6275: $1c
    sub a                                         ; $6276: $97
    ld c, l                                       ; $6277: $4d
    sub c                                         ; $6278: $91
    and a                                         ; $6279: $a7
    ld a, [hl]                                    ; $627a: $7e
    call z, $35d1                                 ; $627b: $cc $d1 $35
    ld c, a                                       ; $627e: $4f
    ld b, e                                       ; $627f: $43
    ld e, e                                       ; $6280: $5b
    adc [hl]                                      ; $6281: $8e
    res 4, [hl]                                   ; $6282: $cb $a6
    ld sp, hl                                     ; $6284: $f9
    xor $3f                                       ; $6285: $ee $3f
    rst $30                                       ; $6287: $f7
    db $ed                                        ; $6288: $ed
    nop                                           ; $6289: $00
    rst $10                                       ; $628a: $d7
    ld l, l                                       ; $628b: $6d
    ld d, h                                       ; $628c: $54
    ld a, c                                       ; $628d: $79
    ld c, d                                       ; $628e: $4a
    ld [hl], h                                    ; $628f: $74
    add l                                         ; $6290: $85
    halt                                          ; $6291: $76
    push hl                                       ; $6292: $e5
    ccf                                           ; $6293: $3f
    dec [hl]                                      ; $6294: $35
    xor [hl]                                      ; $6295: $ae
    inc de                                        ; $6296: $13
    ld l, $de                                     ; $6297: $2e $de
    ld c, e                                       ; $6299: $4b
    xor l                                         ; $629a: $ad
    adc [hl]                                      ; $629b: $8e
    ret nc                                        ; $629c: $d0

    ret c                                         ; $629d: $d8

    add hl, hl                                    ; $629e: $29
    call z, Call_000_09c6                         ; $629f: $cc $c6 $09
    pop hl                                        ; $62a2: $e1
    sbc b                                         ; $62a3: $98
    db $e3                                        ; $62a4: $e3
    call nc, $efb3                                ; $62a5: $d4 $b3 $ef
    jp c, $a7ca                                   ; $62a8: $da $ca $a7

    adc c                                         ; $62ab: $89
    ld d, h                                       ; $62ac: $54
    ld b, c                                       ; $62ad: $41
    inc bc                                        ; $62ae: $03
    adc c                                         ; $62af: $89
    ld d, l                                       ; $62b0: $55
    ld d, $d2                                     ; $62b1: $16 $d2
    add sp, $57                                   ; $62b3: $e8 $57
    ld b, h                                       ; $62b5: $44
    inc hl                                        ; $62b6: $23
    xor l                                         ; $62b7: $ad
    cp d                                          ; $62b8: $ba
    db $fc                                        ; $62b9: $fc

jr_06c_62ba:
    inc [hl]                                      ; $62ba: $34
    ld a, [de]                                    ; $62bb: $1a
    add h                                         ; $62bc: $84
    ret c                                         ; $62bd: $d8

    push bc                                       ; $62be: $c5
    ld d, e                                       ; $62bf: $53
    rst $08                                       ; $62c0: $cf
    ld a, [bc]                                    ; $62c1: $0a
    dec l                                         ; $62c2: $2d
    db $dd                                        ; $62c3: $dd
    add d                                         ; $62c4: $82
    halt                                          ; $62c5: $76
    ld d, d                                       ; $62c6: $52
    add l                                         ; $62c7: $85
    sub [hl]                                      ; $62c8: $96
    ld l, [hl]                                    ; $62c9: $6e
    adc l                                         ; $62ca: $8d
    sub $43                                       ; $62cb: $d6 $43
    dec de                                        ; $62cd: $1b
    adc l                                         ; $62ce: $8d
    ld a, a                                       ; $62cf: $7f
    ld l, b                                       ; $62d0: $68
    dec a                                         ; $62d1: $3d
    ld d, l                                       ; $62d2: $55
    ld c, [hl]                                    ; $62d3: $4e
    ld d, $53                                     ; $62d4: $16 $53
    ld l, $3f                                     ; $62d6: $2e $3f
    cp d                                          ; $62d8: $ba
    push af                                       ; $62d9: $f5
    inc hl                                        ; $62da: $23
    ld a, b                                       ; $62db: $78
    ld d, h                                       ; $62dc: $54
    inc [hl]                                      ; $62dd: $34
    xor e                                         ; $62de: $ab
    ld [hl], $49                                  ; $62df: $36 $49
    ld [$af3f], sp                                ; $62e1: $08 $3f $af
    halt                                          ; $62e4: $76
    ld a, [hl+]                                   ; $62e5: $2a
    ld b, a                                       ; $62e6: $47
    ld h, h                                       ; $62e7: $64
    inc l                                         ; $62e8: $2c
    add h                                         ; $62e9: $84
    or h                                          ; $62ea: $b4
    jr c, jr_06c_62ba                             ; $62eb: $38 $cd

    xor b                                         ; $62ed: $a8
    ld de, $f2fb                                  ; $62ee: $11 $fb $f2
    ldh a, [$ac]                                  ; $62f1: $f0 $ac
    ld l, b                                       ; $62f3: $68
    inc c                                         ; $62f4: $0c
    and l                                         ; $62f5: $a5
    cp $71                                        ; $62f6: $fe $71
    ld a, e                                       ; $62f8: $7b
    pop bc                                        ; $62f9: $c1
    ld c, a                                       ; $62fa: $4f
    dec e                                         ; $62fb: $1d
    sub [hl]                                      ; $62fc: $96
    ld d, [hl]                                    ; $62fd: $56
    jp nc, $334f                                  ; $62fe: $d2 $4f $33

    ld [bc], a                                    ; $6301: $02
    adc c                                         ; $6302: $89
    dec sp                                        ; $6303: $3b
    db $eb                                        ; $6304: $eb
    rla                                           ; $6305: $17
    or [hl]                                       ; $6306: $b6
    ld a, $72                                     ; $6307: $3e $72
    dec c                                         ; $6309: $0d
    jp c, Jump_000_3bfc                           ; $630a: $da $fc $3b

    db $fd                                        ; $630d: $fd
    jp $d68d                                      ; $630e: $c3 $8d $d6


    xor a                                         ; $6311: $af
    db $db                                        ; $6312: $db
    or h                                          ; $6313: $b4
    ld c, [hl]                                    ; $6314: $4e
    inc bc                                        ; $6315: $03
    adc c                                         ; $6316: $89
    dec d                                         ; $6317: $15
    db $e3                                        ; $6318: $e3
    cp a                                          ; $6319: $bf
    ld d, b                                       ; $631a: $50
    rst $08                                       ; $631b: $cf
    inc e                                         ; $631c: $1c
    ld l, l                                       ; $631d: $6d
    inc b                                         ; $631e: $04
    dec c                                         ; $631f: $0d
    ld h, c                                       ; $6320: $61
    ld l, b                                       ; $6321: $68
    jr nz, @-$4d                                  ; $6322: $20 $b1

    ld a, c                                       ; $6324: $79
    push hl                                       ; $6325: $e5
    ld d, e                                       ; $6326: $53
    cp d                                          ; $6327: $ba
    ldh [$aa], a                                  ; $6328: $e0 $aa
    xor h                                         ; $632a: $ac

jr_06c_632b:
    ld h, e                                       ; $632b: $63
    add h                                         ; $632c: $84
    and b                                         ; $632d: $a0
    jp z, $f5c6                                   ; $632e: $ca $c6 $f5

    and a                                         ; $6331: $a7
    push af                                       ; $6332: $f5
    ei                                            ; $6333: $fb
    ld [hl], h                                    ; $6334: $74
    rst $30                                       ; $6335: $f7
    db $ed                                        ; $6336: $ed
    ld de, $523c                                  ; $6337: $11 $3c $52
    cp a                                          ; $633a: $bf
    ld d, h                                       ; $633b: $54
    reti                                          ; $633c: $d9


    db $e4                                        ; $633d: $e4
    ld a, [de]                                    ; $633e: $1a
    adc [hl]                                      ; $633f: $8e
    ld b, l                                       ; $6340: $45
    db $f4                                        ; $6341: $f4
    ccf                                           ; $6342: $3f
    or a                                          ; $6343: $b7
    db $eb                                        ; $6344: $eb
    reti                                          ; $6345: $d9


    ld [hl], a                                    ; $6346: $77
    ld l, l                                       ; $6347: $6d
    push hl                                       ; $6348: $e5
    db $d3                                        ; $6349: $d3
    ld b, h                                       ; $634a: $44
    ld [$0076], a                                 ; $634b: $ea $76 $00
    rst $10                                       ; $634e: $d7
    cp b                                          ; $634f: $b8
    adc e                                         ; $6350: $8b
    rst $00                                       ; $6351: $c7
    cp d                                          ; $6352: $ba
    call z, $d68d                                 ; $6353: $cc $8d $d6
    adc a                                         ; $6356: $8f
    cp c                                          ; $6357: $b9
    ld h, l                                       ; $6358: $65
    sub l                                         ; $6359: $95
    db $f4                                        ; $635a: $f4
    inc hl                                        ; $635b: $23
    add sp, $55                                   ; $635c: $e8 $55
    sbc b                                         ; $635e: $98
    db $fd                                        ; $635f: $fd
    or h                                          ; $6360: $b4
    push af                                       ; $6361: $f5
    or d                                          ; $6362: $b2
    ld b, e                                       ; $6363: $43
    ld d, $ff                                     ; $6364: $16 $ff
    or $8f                                        ; $6366: $f6 $8f
    ld d, l                                       ; $6368: $55
    and l                                         ; $6369: $a5
    dec [hl]                                      ; $636a: $35
    cp c                                          ; $636b: $b9
    ld a, [$0a85]                                 ; $636c: $fa $85 $0a
    jp hl                                         ; $636f: $e9


    ld a, [hl+]                                   ; $6370: $2a
    push bc                                       ; $6371: $c5
    ld e, h                                       ; $6372: $5c
    or e                                          ; $6373: $b3
    dec e                                         ; $6374: $1d
    rst $20                                       ; $6375: $e7
    xor c                                         ; $6376: $a9
    call nc, $a938                                ; $6377: $d4 $38 $a9
    ld [de], a                                    ; $637a: $12
    ld e, c                                       ; $637b: $59
    pop hl                                        ; $637c: $e1
    and a                                         ; $637d: $a7
    sbc [hl]                                      ; $637e: $9e
    ld c, $4b                                     ; $637f: $0e $4b
    dec de                                        ; $6381: $1b
    jp nz, $3950                                  ; $6382: $c2 $50 $39

    add hl, sp                                    ; $6385: $39
    xor [hl]                                      ; $6386: $ae
    sbc h                                         ; $6387: $9c
    ld h, b                                       ; $6388: $60
    sub l                                         ; $6389: $95
    sub e                                         ; $638a: $93
    rst $38                                       ; $638b: $ff
    inc [hl]                                      ; $638c: $34
    ld b, l                                       ; $638d: $45
    or $b3                                        ; $638e: $f6 $b3
    dec e                                         ; $6390: $1d
    sbc a                                         ; $6391: $9f
    add hl, de                                    ; $6392: $19
    rst $38                                       ; $6393: $ff
    ld h, e                                       ; $6394: $63
    ld h, l                                       ; $6395: $65
    sbc c                                         ; $6396: $99
    ld c, d                                       ; $6397: $4a
    adc l                                         ; $6398: $8d
    ld [hl], b                                    ; $6399: $70
    and e                                         ; $639a: $a3
    ld e, l                                       ; $639b: $5d
    reti                                          ; $639c: $d9


    ld c, a                                       ; $639d: $4f
    ld b, e                                       ; $639e: $43
    jr jr_06c_632b                                ; $639f: $18 $8a

    ld c, d                                       ; $63a1: $4a
    jr c, @+$0a                                   ; $63a2: $38 $08

    sbc d                                         ; $63a4: $9a
    ld a, a                                       ; $63a5: $7f
    and a                                         ; $63a6: $a7
    rla                                           ; $63a7: $17
    ld [$6ea8], a                                 ; $63a8: $ea $a8 $6e
    ld a, [$f199]                                 ; $63ab: $fa $99 $f1
    ccf                                           ; $63ae: $3f
    or $46                                        ; $63af: $f6 $46
    ccf                                           ; $63b1: $3f
    inc sp                                        ; $63b2: $33
    cp $c7                                        ; $63b3: $fe $c7
    cp d                                          ; $63b5: $ba
    ld l, l                                       ; $63b6: $6d
    db $db                                        ; $63b7: $db
    dec de                                        ; $63b8: $1b
    rlca                                          ; $63b9: $07
    ld l, a                                       ; $63ba: $6f
    dec c                                         ; $63bb: $0d
    sbc d                                         ; $63bc: $9a
    ld h, a                                       ; $63bd: $67
    ld b, l                                       ; $63be: $45
    ld a, [bc]                                    ; $63bf: $0a
    ld a, d                                       ; $63c0: $7a
    dec d                                         ; $63c1: $15
    ld h, [hl]                                    ; $63c2: $66
    ccf                                           ; $63c3: $3f
    add hl, bc                                    ; $63c4: $09

Call_06c_63c5:
    ld a, d                                       ; $63c5: $7a
    and c                                         ; $63c6: $a1
    ret                                           ; $63c7: $c9


    and c                                         ; $63c8: $a1
    ld [c], a                                     ; $63c9: $e2
    ret                                           ; $63ca: $c9


    add [hl]                                      ; $63cb: $86
    ld a, [$5ff5]                                 ; $63cc: $fa $f5 $5f
    ld a, [hl]                                    ; $63cf: $7e
    ld e, c                                       ; $63d0: $59
    xor c                                         ; $63d1: $a9
    sub c                                         ; $63d2: $91
    push af                                       ; $63d3: $f5
    ld h, e                                       ; $63d4: $63

jr_06c_63d5:
    ld l, [hl]                                    ; $63d5: $6e
    push bc                                       ; $63d6: $c5
    ld a, e                                       ; $63d7: $7b
    ld l, h                                       ; $63d8: $6c
    ld c, l                                       ; $63d9: $4d
    push hl                                       ; $63da: $e5
    cp b                                          ; $63db: $b8
    cp $47                                        ; $63dc: $fe $47
    sbc [hl]                                      ; $63de: $9e
    ld l, l                                       ; $63df: $6d
    rlca                                          ; $63e0: $07
    rst $10                                       ; $63e1: $d7
    jp nc, Jump_06c_538a                          ; $63e2: $d2 $8a $53

    adc c                                         ; $63e5: $89
    xor h                                         ; $63e6: $ac
    ldh a, [$d3]                                  ; $63e7: $f0 $d3
    db $10                                        ; $63e9: $10
    add [hl]                                      ; $63ea: $86
    adc d                                         ; $63eb: $8a
    or b                                          ; $63ec: $b0
    jp $3eb6                                      ; $63ed: $c3 $b6 $3e


    ld a, [c]                                     ; $63f0: $f2
    pop de                                        ; $63f1: $d1
    xor h                                         ; $63f2: $ac
    ret z                                         ; $63f3: $c8

    db $ed                                        ; $63f4: $ed
    nop                                           ; $63f5: $00
    ld l, a                                       ; $63f6: $6f
    dec c                                         ; $63f7: $0d
    sbc d                                         ; $63f8: $9a
    ld h, a                                       ; $63f9: $67
    ld b, l                                       ; $63fa: $45
    ld a, [bc]                                    ; $63fb: $0a
    ld a, d                                       ; $63fc: $7a
    dec d                                         ; $63fd: $15
    ld h, [hl]                                    ; $63fe: $66
    ccf                                           ; $63ff: $3f
    ld l, l                                       ; $6400: $6d
    rlca                                          ; $6401: $07
    sbc a                                         ; $6402: $9f
    ld b, $87                                     ; $6403: $06 $87
    res 1, a                                      ; $6405: $cb $8f
    and b                                         ; $6407: $a0
    ld d, a                                       ; $6408: $57
    ld h, c                                       ; $6409: $61
    or $d3                                        ; $640a: $f6 $d3
    sub $8f                                       ; $640c: $d6 $8f
    xor $d1                                       ; $640e: $ee $d1
    add [hl]                                      ; $6410: $86
    ld b, [hl]                                    ; $6411: $46
    cp c                                          ; $6412: $b9
    inc d                                         ; $6413: $14
    ld l, [hl]                                    ; $6414: $6e
    or h                                          ; $6415: $b4
    rr d                                          ; $6416: $cb $1a
    jp nz, Jump_000_1450                          ; $6418: $c2 $50 $14

    ld l, c                                       ; $641b: $69
    ld b, a                                       ; $641c: $47
    dec a                                         ; $641d: $3d
    ld a, e                                       ; $641e: $7b
    ld a, l                                       ; $641f: $7d
    ld l, $de                                     ; $6420: $2e $de
    ld c, e                                       ; $6422: $4b
    cp l                                          ; $6423: $bd
    call nc, Call_000_191b                        ; $6424: $d4 $1b $19
    ld hl, $7f9b                                  ; $6427: $21 $9b $7f
    and a                                         ; $642a: $a7
    and a                                         ; $642b: $a7
    pop de                                        ; $642c: $d1
    adc b                                         ; $642d: $88
    ld b, $12                                     ; $642e: $06 $12
    or d                                          ; $6430: $b2
    sbc a                                         ; $6431: $9f
    ld c, d                                       ; $6432: $4a
    ld sp, $704f                                  ; $6433: $31 $4f $70
    and e                                         ; $6436: $a3

jr_06c_6437:
    ld b, l                                       ; $6437: $45
    inc [hl]                                      ; $6438: $34
    jr z, jr_06c_6437                             ; $6439: $28 $fc

    add sp, -$5b                                  ; $643b: $e8 $a5
    inc bc                                        ; $643d: $03
    sbc a                                         ; $643e: $9f
    add hl, de                                    ; $643f: $19
    or d                                          ; $6440: $b2
    add h                                         ; $6441: $84
    rst $00                                       ; $6442: $c7
    halt                                          ; $6443: $76
    nop                                           ; $6444: $00
    rra                                           ; $6445: $1f
    ld h, a                                       ; $6446: $67
    rst $08                                       ; $6447: $cf
    ld e, [hl]                                    ; $6448: $5e
    jr z, jr_06c_63d5                             ; $6449: $28 $8a

    or h                                          ; $644b: $b4
    and e                                         ; $644c: $a3
    sbc [hl]                                      ; $644d: $9e
    cp l                                          ; $644e: $bd
    ld a, $17                                     ; $644f: $3e $17
    rst $28                                       ; $6451: $ef
    and l                                         ; $6452: $a5
    cp [hl]                                       ; $6453: $be
    ld [hl], c                                    ; $6454: $71
    nop                                           ; $6455: $00
    rra                                           ; $6456: $1f
    rst $10                                       ; $6457: $d7
    ld h, c                                       ; $6458: $61
    ld l, c                                       ; $6459: $69
    rst $30                                       ; $645a: $f7
    ret                                           ; $645b: $c9


    daa                                           ; $645c: $27
    ld [hl], $90                                  ; $645d: $36 $90
    ret c                                         ; $645f: $d8

    rst $38                                       ; $6460: $ff
    ret z                                         ; $6461: $c8

    or e                                          ; $6462: $b3
    jp z, $cac9                                   ; $6463: $ca $c9 $ca

    ld d, e                                       ; $6466: $53
    ld e, d                                       ; $6467: $5a
    ld d, [hl]                                    ; $6468: $56
    add hl, hl                                    ; $6469: $29
    and $09                                       ; $646a: $e6 $09
    ld d, [hl]                                    ; $646c: $56
    adc a                                         ; $646d: $8f
    ld b, b                                       ; $646e: $40
    ld e, d                                       ; $646f: $5a
    add d                                         ; $6470: $82
    ld a, [hl-]                                   ; $6471: $3a
    ld l, b                                       ; $6472: $68
    or c                                          ; $6473: $b1
    or d                                          ; $6474: $b2
    ld b, a                                       ; $6475: $47
    dec a                                         ; $6476: $3d
    ld [hl], e                                    ; $6477: $73
    or h                                          ; $6478: $b4
    xor c                                         ; $6479: $a9
    rra                                           ; $647a: $1f
    db $ed                                        ; $647b: $ed
    cp [hl]                                       ; $647c: $be
    call c, $d48a                                 ; $647d: $dc $8a $d4
    ld a, d                                       ; $6480: $7a
    sub h                                         ; $6481: $94
    ld a, [hl+]                                   ; $6482: $2a
    ld h, a                                       ; $6483: $67
    rst $00                                       ; $6484: $c7
    sub $f3                                       ; $6485: $d6 $f3
    ld e, e                                       ; $6487: $5b
    ld c, e                                       ; $6488: $4b
    inc hl                                        ; $6489: $23
    ld e, l                                       ; $648a: $5d
    dec e                                         ; $648b: $1d
    rst $10                                       ; $648c: $d7
    ld l, b                                       ; $648d: $68
    dec a                                         ; $648e: $3d
    dec hl                                        ; $648f: $2b
    push bc                                       ; $6490: $c5
    inc a                                         ; $6491: $3c
    pop bc                                        ; $6492: $c1
    cp d                                          ; $6493: $ba
    rlca                                          ; $6494: $07
    rst $10                                       ; $6495: $d7
    ld h, c                                       ; $6496: $61
    ld l, c                                       ; $6497: $69
    dec c                                         ; $6498: $0d
    pop hl                                        ; $6499: $e1
    ld a, [c]                                     ; $649a: $f2
    ld [hl], b                                    ; $649b: $70
    call z, Call_06c_5591                         ; $649c: $cc $91 $55
    or $3f                                        ; $649f: $f6 $3f
    ld a, [c]                                     ; $64a1: $f2
    xor h                                         ; $64a2: $ac
    and c                                         ; $64a3: $a1
    adc l                                         ; $64a4: $8d
    ld c, h                                       ; $64a5: $4c
    ld b, $6b                                     ; $64a6: $06 $6b
    jr c, @+$58                                   ; $64a8: $38 $56

    xor $d4                                       ; $64aa: $ee $d4
    db $ed                                        ; $64ac: $ed
    nop                                           ; $64ad: $00
    rst $20                                       ; $64ae: $e7
    xor [hl]                                      ; $64af: $ae
    ret                                           ; $64b0: $c9


    ld [hl], l                                    ; $64b1: $75
    ld c, a                                       ; $64b2: $4f
    daa                                           ; $64b3: $27
    ld e, b                                       ; $64b4: $58
    ld b, l                                       ; $64b5: $45
    or [hl]                                       ; $64b6: $b6
    ld b, [hl]                                    ; $64b7: $46
    ret nc                                        ; $64b8: $d0

    ei                                            ; $64b9: $fb
    db $dd                                        ; $64ba: $dd
    ld a, [c]                                     ; $64bb: $f2
    ld d, e                                       ; $64bc: $53
    sub [hl]                                      ; $64bd: $96
    ld a, [hl+]                                   ; $64be: $2a
    sub e                                         ; $64bf: $93
    ld c, l                                       ; $64c0: $4d
    or a                                          ; $64c1: $b7
    ld l, l                                       ; $64c2: $6d
    xor e                                         ; $64c3: $ab
    sub b                                         ; $64c4: $90
    xor [hl]                                      ; $64c5: $ae
    ld a, [hl]                                    ; $64c6: $7e
    ld a, [$573d]                                 ; $64c7: $fa $3d $57
    sbc h                                         ; $64ca: $9c
    ld b, $12                                     ; $64cb: $06 $12
    dec sp                                        ; $64cd: $3b
    cp l                                          ; $64ce: $bd
    sub c                                         ; $64cf: $91
    ld de, $a7b2                                  ; $64d0: $11 $b2 $a7
    pop de                                        ; $64d3: $d1
    adc b                                         ; $64d4: $88
    db $ed                                        ; $64d5: $ed
    nop                                           ; $64d6: $00
    adc a                                         ; $64d7: $8f
    ld e, h                                       ; $64d8: $5c
    scf                                           ; $64d9: $37
    ld e, [hl]                                    ; $64da: $5e
    sbc h                                         ; $64db: $9c
    ld a, d                                       ; $64dc: $7a
    ld l, b                                       ; $64dd: $68
    xor a                                         ; $64de: $af
    rst $08                                       ; $64df: $cf
    push bc                                       ; $64e0: $c5
    ld a, e                                       ; $64e1: $7b
    xor c                                         ; $64e2: $a9
    cp l                                          ; $64e3: $bd
    add d                                         ; $64e4: $82
    dec h                                         ; $64e5: $25
    add sp, -$0b                                  ; $64e6: $e8 $f5
    pop af                                        ; $64e8: $f1
    db $ec                                        ; $64e9: $ec
    cp c                                          ; $64ea: $b9
    ld b, [hl]                                    ; $64eb: $46
    ld e, b                                       ; $64ec: $58
    rst $18                                       ; $64ed: $df
    bit 7, [hl]                                   ; $64ee: $cb $7e
    ld a, [$32f6]                                 ; $64f0: $fa $f6 $32
    add $e9                                       ; $64f3: $c6 $e9
    ld [hl], l                                    ; $64f5: $75
    jr jr_06c_6572                                ; $64f6: $18 $7a

    ld e, c                                       ; $64f8: $59
    ld a, e                                       ; $64f9: $7b
    dec c                                         ; $64fa: $0d
    ld [$0cc6], a                                 ; $64fb: $ea $c6 $0c
    ld a, [$01c8]                                 ; $64fe: $fa $c8 $01
    scf                                           ; $6501: $37
    ld b, a                                       ; $6502: $47
    sbc [hl]                                      ; $6503: $9e

Jump_06c_6504:
    dec [hl]                                      ; $6504: $35
    jp nc, $b935                                  ; $6505: $d2 $35 $b9

    xor $93                                       ; $6508: $ee $93
    ld c, a                                       ; $650a: $4f
    ld d, e                                       ; $650b: $53
    add hl, bc                                    ; $650c: $09
    or a                                          ; $650d: $b7
    or d                                          ; $650e: $b2
    ld a, b                                       ; $650f: $78
    ld a, [de]                                    ; $6510: $1a
    ld [hl], d                                    ; $6511: $72
    ld b, a                                       ; $6512: $47
    ld b, l                                       ; $6513: $45
    add $1c                                       ; $6514: $c6 $1c
    cp c                                          ; $6516: $b9
    dec e                                         ; $6517: $1d
    rst $20                                       ; $6518: $e7
    xor c                                         ; $6519: $a9
    ld sp, hl                                     ; $651a: $f9
    ld [hl], a                                    ; $651b: $77
    xor d                                         ; $651c: $aa
    ld e, h                                       ; $651d: $5c
    ld e, e                                       ; $651e: $5b
    rst $08                                       ; $651f: $cf
    ld d, e                                       ; $6520: $53
    xor c                                         ; $6521: $a9
    ld [hl], c                                    ; $6522: $71
    ld d, d                                       ; $6523: $52
    inc hl                                        ; $6524: $23
    ld [hl], e                                    ; $6525: $73
    ld b, h                                       ; $6526: $44
    or $53                                        ; $6527: $f6 $53
    add hl, hl                                    ; $6529: $29
    and $09                                       ; $652a: $e6 $09
    sub $3b                                       ; $652c: $d6 $3b
    adc e                                         ; $652e: $8b
    dec e                                         ; $652f: $1d
    push af                                       ; $6530: $f5
    ld d, e                                       ; $6531: $53
    pop af                                        ; $6532: $f1
    ld l, b                                       ; $6533: $68
    cp b                                          ; $6534: $b8
    ld [hl+], a                                   ; $6535: $22
    or $6e                                        ; $6536: $f6 $6e
    db $db                                        ; $6538: $db
    ld d, [hl]                                    ; $6539: $56
    ld c, b                                       ; $653a: $48
    pop af                                        ; $653b: $f1
    inc [hl]                                      ; $653c: $34
    sub b                                         ; $653d: $90
    ld e, b                                       ; $653e: $58
    add hl, sp                                    ; $653f: $39
    ld l, [hl]                                    ; $6540: $6e
    push de                                       ; $6541: $d5
    db $d3                                        ; $6542: $d3
    ld h, c                                       ; $6543: $61
    ld l, c                                       ; $6544: $69
    daa                                           ; $6545: $27
    ld b, a                                       ; $6546: $47
    cp d                                          ; $6547: $ba
    and d                                         ; $6548: $a2
    ld a, c                                       ; $6549: $79
    ld d, [hl]                                    ; $654a: $56
    db $e4                                        ; $654b: $e4
    halt                                          ; $654c: $76
    nop                                           ; $654d: $00
    rst $20                                       ; $654e: $e7
    add hl, sp                                    ; $654f: $39
    sub b                                         ; $6550: $90
    sub b                                         ; $6551: $90
    db $e3                                        ; $6552: $e3
    db $f4                                        ; $6553: $f4
    ccf                                           ; $6554: $3f
    ld a, [c]                                     ; $6555: $f2
    xor h                                         ; $6556: $ac
    ld sp, hl                                     ; $6557: $f9
    ld [hl], a                                    ; $6558: $77
    ld c, d                                       ; $6559: $4a
    adc l                                         ; $655a: $8d
    db $eb                                        ; $655b: $eb
    ld c, a                                       ; $655c: $4f
    xor e                                         ; $655d: $ab
    ld h, $e1                                     ; $655e: $26 $e1
    jp z, Jump_000_3a7e                           ; $6560: $ca $7e $3a

    xor c                                         ; $6563: $a9
    and c                                         ; $6564: $a1
    ld d, c                                       ; $6565: $51
    and a                                         ; $6566: $a7
    ld a, c                                       ; $6567: $79
    ld [$6ea8], a                                 ; $6568: $ea $a8 $6e
    adc d                                         ; $656b: $8a
    db $ec                                        ; $656c: $ec
    ld h, c                                       ; $656d: $61
    add d                                         ; $656e: $82
    cp $47                                        ; $656f: $fe $47
    sbc [hl]                                      ; $6571: $9e

jr_06c_6572:
    sub l                                         ; $6572: $95
    ld a, [de]                                    ; $6573: $1a
    ld h, c                                       ; $6574: $61
    pop bc                                        ; $6575: $c1
    call $0953                                    ; $6576: $cd $53 $09
    or a                                          ; $6579: $b7
    or d                                          ; $657a: $b2
    ld a, b                                       ; $657b: $78
    ld a, [hl+]                                   ; $657c: $2a
    ld l, c                                       ; $657d: $69
    ld [hl], c                                    ; $657e: $71
    or [hl]                                       ; $657f: $b6
    inc bc                                        ; $6580: $03
    rst $20                                       ; $6581: $e7
    ld c, e                                       ; $6582: $4b
    ld d, b                                       ; $6583: $50
    and [hl]                                      ; $6584: $a6
    ld b, [hl]                                    ; $6585: $46
    ld h, [hl]                                    ; $6586: $66
    pop af                                        ; $6587: $f1
    call nc, Call_000_3531                        ; $6588: $d4 $31 $35

jr_06c_658b:
    or h                                          ; $658b: $b4
    ld a, e                                       ; $658c: $7b
    ld b, d                                       ; $658d: $42
    ld e, e                                       ; $658e: $5b
    ld d, e                                       ; $658f: $53
    pop af                                        ; $6590: $f1
    ld e, b                                       ; $6591: $58
    or b                                          ; $6592: $b0
    xor l                                         ; $6593: $ad
    ld l, c                                       ; $6594: $69
    ld [$1d43], sp                                ; $6595: $08 $43 $1d
    dec de                                        ; $6598: $1b
    ld a, [de]                                    ; $6599: $1a
    ld b, a                                       ; $659a: $47
    and [hl]                                      ; $659b: $a6
    db $10                                        ; $659c: $10
    halt                                          ; $659d: $76
    jp hl                                         ; $659e: $e9


    nop                                           ; $659f: $00
    rra                                           ; $65a0: $1f
    sub a                                         ; $65a1: $97
    ld a, [hl+]                                   ; $65a2: $2a
    ld l, l                                       ; $65a3: $6d
    push bc                                       ; $65a4: $c5
    ld a, e                                       ; $65a5: $7b
    ld l, h                                       ; $65a6: $6c
    ld c, l                                       ; $65a7: $4d
    db $fd                                        ; $65a8: $fd
    db $f4                                        ; $65a9: $f4
    ld b, [hl]                                    ; $65aa: $46
    ld b, [hl]                                    ; $65ab: $46
    ret z                                         ; $65ac: $c8

    adc d                                         ; $65ad: $8a
    sub [hl]                                      ; $65ae: $96
    ld b, h                                       ; $65af: $44
    inc sp                                        ; $65b0: $33
    or h                                          ; $65b1: $b4
    ld c, $ea                                     ; $65b2: $0e $ea
    add $0c                                       ; $65b4: $c6 $0c
    cp d                                          ; $65b6: $ba
    push af                                       ; $65b7: $f5
    ld b, [hl]                                    ; $65b8: $46
    ld b, d                                       ; $65b9: $42
    dec d                                         ; $65ba: $15
    dec sp                                        ; $65bb: $3b
    ld [$a459], a                                 ; $65bc: $ea $59 $a4
    dec e                                         ; $65bf: $1d
    push af                                       ; $65c0: $f5
    db $fc                                        ; $65c1: $fc
    or e                                          ; $65c2: $b3
    and d                                         ; $65c3: $a2
    dec h                                         ; $65c4: $25
    ld h, c                                       ; $65c5: $61
    dec c                                         ; $65c6: $0d
    rst $00                                       ; $65c7: $c7
    ld a, [de]                                    ; $65c8: $1a
    jp nc, $6ce2                                  ; $65c9: $d2 $e2 $6c

    rlca                                          ; $65cc: $07
    sbc a                                         ; $65cd: $9f
    xor l                                         ; $65ce: $ad
    inc l                                         ; $65cf: $2c
    ld b, [hl]                                    ; $65d0: $46
    inc bc                                        ; $65d1: $03
    adc c                                         ; $65d2: $89
    ld d, l                                       ; $65d3: $55
    ld e, d                                       ; $65d4: $5a
    dec a                                         ; $65d5: $3d
    ld a, [$2dae]                                 ; $65d6: $fa $ae $2d
    pop de                                        ; $65d9: $d1
    jp z, $d8f7                                   ; $65da: $ca $f7 $d8

    ld b, d                                       ; $65dd: $42
    ld b, e                                       ; $65de: $43
    jr jr_06c_658b                                ; $65df: $18 $aa

    ld l, h                                       ; $65e1: $6c
    ld c, b                                       ; $65e2: $48
    di                                            ; $65e3: $f3
    or h                                          ; $65e4: $b4
    ld a, d                                       ; $65e5: $7a
    xor d                                         ; $65e6: $aa
    or d                                          ; $65e7: $b2
    rst $18                                       ; $65e8: $df
    ld [hl], e                                    ; $65e9: $73
    push bc                                       ; $65ea: $c5
    cp c                                          ; $65eb: $b9
    ld [hl], h                                    ; $65ec: $74
    nop                                           ; $65ed: $00
    scf                                           ; $65ee: $37
    ld b, a                                       ; $65ef: $47
    sbc [hl]                                      ; $65f0: $9e
    ld e, l                                       ; $65f1: $5d
    ld [$b1f5], a                                 ; $65f2: $ea $f5 $b1
    ld b, b                                       ; $65f5: $40
    ld h, d                                       ; $65f6: $62
    rst $38                                       ; $65f7: $ff
    inc hl                                        ; $65f8: $23
    rst $08                                       ; $65f9: $cf
    sbc d                                         ; $65fa: $9a
    ld a, a                                       ; $65fb: $7f
    and a                                         ; $65fc: $a7
    call nc, Call_06c_5c18                        ; $65fd: $d4 $18 $5c
    cp d                                          ; $6600: $ba
    ld [hl+], a                                   ; $6601: $22
    db $ed                                        ; $6602: $ed
    ld a, b                                       ; $6603: $78
    db $e3                                        ; $6604: $e3
    nop                                           ; $6605: $00
    rst $20                                       ; $6606: $e7
    xor c                                         ; $6607: $a9
    call nc, $a938                                ; $6608: $d4 $38 $a9
    sub c                                         ; $660b: $91
    add hl, sp                                    ; $660c: $39
    ld [hl+], a                                   ; $660d: $22
    ei                                            ; $660e: $fb
    add hl, hl                                    ; $660f: $29
    or e                                          ; $6610: $b3
    sbc h                                         ; $6611: $9c
    inc e                                         ; $6612: $1c
    dec c                                         ; $6613: $0d
    ld d, [hl]                                    ; $6614: $56
    ld d, h                                       ; $6615: $54
    or c                                          ; $6616: $b1
    and e                                         ; $6617: $a3
    sbc [hl]                                      ; $6618: $9e
    cp l                                          ; $6619: $bd
    ld a, $17                                     ; $661a: $3e $17
    rst $28                                       ; $661c: $ef
    and l                                         ; $661d: $a5
    ld l, [hl]                                    ; $661e: $6e
    rlca                                          ; $661f: $07
    rst $28                                       ; $6620: $ef
    inc l                                         ; $6621: $2c
    adc c                                         ; $6622: $89
    ld h, [hl]                                    ; $6623: $66
    ld l, b                                       ; $6624: $68
    dec e                                         ; $6625: $1d
    call nc, Call_000_198d                        ; $6626: $d4 $8d $19
    db $f4                                        ; $6629: $f4
    ld d, d                                       ; $662a: $52
    cpl                                           ; $662b: $2f
    rst $00                                       ; $662c: $c7
    dec bc                                        ; $662d: $0b
    ld [hl], l                                    ; $662e: $75
    ld d, h                                       ; $662f: $54
    scf                                           ; $6630: $37
    ld c, l                                       ; $6631: $4d
    xor [hl]                                      ; $6632: $ae
    call nc, Call_000_3c98                        ; $6633: $d4 $98 $3c
    ld [hl], d                                    ; $6636: $72
    ld h, h                                       ; $6637: $64
    db $fd                                        ; $6638: $fd
    inc [hl]                                      ; $6639: $34
    or h                                          ; $663a: $b4
    push hl                                       ; $663b: $e5
    cp b                                          ; $663c: $b8
    ld l, h                                       ; $663d: $6c
    adc d                                         ; $663e: $8a
    inc a                                         ; $663f: $3c
    push af                                       ; $6640: $f5
    db $fc                                        ; $6641: $fc
    db $d3                                        ; $6642: $d3
    ld d, $aa                                     ; $6643: $16 $aa
    db $10                                        ; $6645: $10
    jp nc, $97ea                                  ; $6646: $d2 $ea $97

    ld [$3a5c], a                                 ; $6649: $ea $5c $3a
    nop                                           ; $664c: $00
    scf                                           ; $664d: $37
    add e                                         ; $664e: $83
    dec de                                        ; $664f: $1b

Jump_06c_6650:
    jp nz, Jump_000_1450                          ; $6650: $c2 $50 $14

    ld l, c                                       ; $6653: $69
    add a                                         ; $6654: $87
    and b                                         ; $6655: $a0
    rst $10                                       ; $6656: $d7
    daa                                           ; $6657: $27
    ld b, [hl]                                    ; $6658: $46
    jp c, $03a5                                   ; $6659: $da $a5 $03

    ld l, a                                       ; $665c: $6f
    pop de                                        ; $665d: $d1
    add hl, bc                                    ; $665e: $09
    ld a, d                                       ; $665f: $7a
    dec d                                         ; $6660: $15
    ld h, [hl]                                    ; $6661: $66
    ccf                                           ; $6662: $3f
    push af                                       ; $6663: $f5
    ld a, [$48c4]                                 ; $6664: $fa $c4 $48
    db $db                                        ; $6667: $db
    ld a, [$a8d1]                                 ; $6668: $fa $d1 $a8
    and d                                         ; $666b: $a2
    ld a, c                                       ; $666c: $79
    cp $e8                                        ; $666d: $fe $e8
    or [hl]                                       ; $666f: $b6
    ld l, l                                       ; $6670: $6d
    sub l                                         ; $6671: $95
    call c, $b429                                 ; $6672: $dc $29 $b4
    push hl                                       ; $6675: $e5
    pop hl                                        ; $6676: $e1
    cp c                                          ; $6677: $b9
    push af                                       ; $6678: $f5
    ld b, $73                                     ; $6679: $06 $73
    db $e4                                        ; $667b: $e4
    inc de                                        ; $667c: $13
    ld c, d                                       ; $667d: $4a
    ld b, c                                       ; $667e: $41
    jp $8ab1                                      ; $667f: $c3 $b1 $8a


    ldh a, [$1f]                                  ; $6682: $f0 $1f
    db $db                                        ; $6684: $db
    ld c, $d7                                     ; $6685: $0e $d7
    daa                                           ; $6687: $27
    ld b, [hl]                                    ; $6688: $46
    sbc d                                         ; $6689: $9a
    and b                                         ; $668a: $a0
    jp z, Jump_06c_7532                           ; $668b: $ca $32 $75

    rla                                           ; $668e: $17
    or e                                          ; $668f: $b3
    ld hl, $52fd                                  ; $6690: $21 $fd $52
    and l                                         ; $6693: $a5
    and b                                         ; $6694: $a0
    sub e                                         ; $6695: $93
    dec a                                         ; $6696: $3d
    ei                                            ; $6697: $fb
    rra                                           ; $6698: $1f
    ld a, c                                       ; $6699: $79
    sub $65                                       ; $669a: $d6 $65
    dec bc                                        ; $669c: $0b
    dec d                                         ; $669d: $15
    ld h, $95                                     ; $669e: $26 $95
    or b                                          ; $66a0: $b0
    ld h, $87                                     ; $66a1: $26 $87
    add [hl]                                      ; $66a3: $86
    db $f4                                        ; $66a4: $f4
    add [hl]                                      ; $66a5: $86
    ld a, [bc]                                    ; $66a6: $0a
    ld a, c                                       ; $66a7: $79
    ld a, e                                       ; $66a8: $7b
    ld h, b                                       ; $66a9: $60
    ld l, a                                       ; $66aa: $6f
    inc e                                         ; $66ab: $1c
    rst $20                                       ; $66ac: $e7
    xor c                                         ; $66ad: $a9
    jp z, Jump_000_2825                           ; $66ae: $ca $25 $28

    ld d, e                                       ; $66b1: $53
    sub l                                         ; $66b2: $95
    db $eb                                        ; $66b3: $eb
    jp nc, Jump_000_1f01                          ; $66b4: $d2 $01 $1f

    db $fd                                        ; $66b7: $fd
    ld c, [hl]                                    ; $66b8: $4e
    sub l                                         ; $66b9: $95
    ld c, e                                       ; $66ba: $4b
    ret nc                                        ; $66bb: $d0

    db $fc                                        ; $66bc: $fc
    dec sp                                        ; $66bd: $3b
    ld d, l                                       ; $66be: $55
    ld h, [hl]                                    ; $66bf: $66
    pop af                                        ; $66c0: $f1
    ret c                                         ; $66c1: $d8

    sub $6b                                       ; $66c2: $d6 $6b
    ret nc                                        ; $66c4: $d0

    ld b, d                                       ; $66c5: $42
    adc d                                         ; $66c6: $8a
    and a                                         ; $66c7: $a7
    add c                                         ; $66c8: $81
    call nz, $a55e                                ; $66c9: $c4 $5e $a5
    cp c                                          ; $66cc: $b9
    dec [hl]                                      ; $66cd: $35
    sbc c                                         ; $66ce: $99
    ld d, l                                       ; $66cf: $55
    ld [$6829], sp                                ; $66d0: $08 $29 $68
    jr c, @+$18                                   ; $66d3: $38 $16

    ld c, b                                       ; $66d5: $48
    ld l, h                                       ; $66d6: $6c
    cp $9d                                        ; $66d7: $fe $9d
    add [hl]                                      ; $66d9: $86
    or h                                          ; $66da: $b4
    ld d, e                                       ; $66db: $53
    jp z, $bd11                                   ; $66dc: $ca $11 $bd

    or e                                          ; $66df: $b3
    call c, $c6f1                                 ; $66e0: $dc $f1 $c6
    ld bc, $2737                                  ; $66e3: $01 $37 $27
    push de                                       ; $66e6: $d5
    ld d, e                                       ; $66e7: $53
    push hl                                       ; $66e8: $e5
    db $e4                                        ; $66e9: $e4
    ld [$726b], sp                                ; $66ea: $08 $6b $72
    dec c                                         ; $66ed: $0d
    daa                                           ; $66ee: $27
    rst $00                                       ; $66ef: $c7
    xor c                                         ; $66f0: $a9
    ld b, a                                       ; $66f1: $47
    rst $18                                       ; $66f2: $df
    or l                                          ; $66f3: $b5
    dec h                                         ; $66f4: $25
    ld e, d                                       ; $66f5: $5a
    ld sp, hl                                     ; $66f6: $f9
    ld e, $5b                                     ; $66f7: $1e $5b
    db $10                                        ; $66f9: $10
    db $f4                                        ; $66fa: $f4
    ld a, [$48c4]                                 ; $66fb: $fa $c4 $48
    db $db                                        ; $66fe: $db
    ld c, $97                                     ; $66ff: $0e $97
    sub a                                         ; $6701: $97
    and b                                         ; $6702: $a0
    ld e, b                                       ; $6703: $58
    add d                                         ; $6704: $82
    ld h, d                                       ; $6705: $62
    ld e, l                                       ; $6706: $5d
    ld a, [hl-]                                   ; $6707: $3a
    nop                                           ; $6708: $00
    scf                                           ; $6709: $37
    sbc b                                         ; $670a: $98
    ld a, [bc]                                    ; $670b: $0a
    or a                                          ; $670c: $b7
    ld c, [hl]                                    ; $670d: $4e
    inc hl                                        ; $670e: $23
    add sp, -$0c                                  ; $670f: $e8 $f4
    add [hl]                                      ; $6711: $86
    ld l, l                                       ; $6712: $6d
    db $fd                                        ; $6713: $fd
    ld [hl], b                                    ; $6714: $70
    ld a, [c]                                     ; $6715: $f2
    ld c, c                                       ; $6716: $49
    jr c, jr_06c_674a                             ; $6717: $38 $31

    adc [hl]                                      ; $6719: $8e
    ld l, e                                       ; $671a: $6b
    ld [$64a3], sp                                ; $671b: $08 $a3 $64
    inc hl                                        ; $671e: $23
    xor l                                         ; $671f: $ad
    jp z, $483a                                   ; $6720: $ca $3a $48

    ld [hl], c                                    ; $6723: $71
    sub d                                         ; $6724: $92
    ldh a, [$b3]                                  ; $6725: $f0 $b3
    push af                                       ; $6727: $f5
    inc a                                         ; $6728: $3c
    push af                                       ; $6729: $f5
    ccf                                           ; $672a: $3f
    xor c                                         ; $672b: $a9
    sbc [hl]                                      ; $672c: $9e
    db $eb                                        ; $672d: $eb
    ld d, $ac                                     ; $672e: $16 $ac
    rst $38                                       ; $6730: $ff
    sub c                                         ; $6731: $91
    ld h, a                                       ; $6732: $67
    ld h, l                                       ; $6733: $65
    sub [hl]                                      ; $6734: $96
    sub e                                         ; $6735: $93
    and e                                         ; $6736: $a3
    pop bc                                        ; $6737: $c1
    ld a, [hl-]                                   ; $6738: $3a
    jp c, Jump_06c_4f95                           ; $6739: $da $95 $4f

    ld b, [hl]                                    ; $673c: $46
    cp a                                          ; $673d: $bf
    sbc b                                         ; $673e: $98
    inc hl                                        ; $673f: $23
    or l                                          ; $6740: $b5
    ld e, $0d                                     ; $6741: $1e $0d
    rst $20                                       ; $6743: $e7
    ld [c], a                                     ; $6744: $e2
    rst $28                                       ; $6745: $ef
    inc [hl]                                      ; $6746: $34
    add h                                         ; $6747: $84
    and c                                         ; $6748: $a1
    ld [hl-], a                                   ; $6749: $32

jr_06c_674a:
    ld e, c                                       ; $674a: $59
    ldh a, [rNR13]                                ; $674b: $f0 $13
    ei                                            ; $674d: $fb
    ld [$7d7a], sp                                ; $674e: $08 $7a $7d
    ld h, d                                       ; $6751: $62
    and h                                         ; $6752: $a4
    ld l, l                                       ; $6753: $6d
    rlca                                          ; $6754: $07
    rst $10                                       ; $6755: $d7
    and b                                         ; $6756: $a0
    db $dd                                        ; $6757: $dd
    or [hl]                                       ; $6758: $b6
    db $ed                                        ; $6759: $ed
    nop                                           ; $675a: $00
    scf                                           ; $675b: $37
    ld b, a                                       ; $675c: $47
    sbc [hl]                                      ; $675d: $9e
    push de                                       ; $675e: $d5
    di                                            ; $675f: $f3
    rst $08                                       ; $6760: $cf
    ld [hl-], a                                   ; $6761: $32
    set 1, c                                      ; $6762: $cb $c9
    pop de                                        ; $6764: $d1
    ld h, b                                       ; $6765: $60
    ld a, l                                       ; $6766: $7d
    and [hl]                                      ; $6767: $a6
    pop hl                                        ; $6768: $e1
    ret c                                         ; $6769: $d8

    push bc                                       ; $676a: $c5
    ld a, e                                       ; $676b: $7b
    xor c                                         ; $676c: $a9
    push af                                       ; $676d: $f5
    db $ec                                        ; $676e: $ec
    db $ec                                        ; $676f: $ec
    ld [c], a                                     ; $6770: $e2
    pop de                                        ; $6771: $d1

Call_06c_6772:
    ld a, d                                       ; $6772: $7a
    ld d, [hl]                                    ; $6773: $56
    ld c, b                                       ; $6774: $48
    sbc l                                         ; $6775: $9d
    ld h, h                                       ; $6776: $64
    inc hl                                        ; $6777: $23
    add sp, -$2d                                  ; $6778: $e8 $d3
    dec c                                         ; $677a: $0d
    rst $00                                       ; $677b: $c7
    ld l, $fe                                     ; $677c: $2e $fe
    ld c, [hl]                                    ; $677e: $4e
    dec a                                         ; $677f: $3d
    dec de                                        ; $6780: $1b
    ld a, [de]                                    ; $6781: $1a
    dec d                                         ; $6782: $15
    ld e, d                                       ; $6783: $5a
    rst $08                                       ; $6784: $cf
    ld a, [hl+]                                   ; $6785: $2a
    dec l                                         ; $6786: $2d
    ld h, h                                       ; $6787: $64
    adc [hl]                                      ; $6788: $8e
    inc l                                         ; $6789: $2c
    ei                                            ; $678a: $fb
    ld [hl], h                                    ; $678b: $74
    jp $8bb1                                      ; $678c: $c3 $b1 $8b


    cp a                                          ; $678f: $bf
    ld d, e                                       ; $6790: $53

Call_06c_6791:
    rst $08                                       ; $6791: $cf
    add [hl]                                      ; $6792: $86
    call c, $cf59                                 ; $6793: $dc $59 $cf
    jp nz, Jump_06c_7060                          ; $6796: $c2 $60 $70

    jp nz, Jump_000_167b                          ; $6799: $c2 $7b $16

    or [hl]                                       ; $679c: $b6
    ld e, [hl]                                    ; $679d: $5e
    or a                                          ; $679e: $b7
    sub c                                         ; $679f: $91
    ret                                           ; $67a0: $c9


    ret c                                         ; $67a1: $d8

    pop de                                        ; $67a2: $d1
    xor [hl]                                      ; $67a3: $ae
    ld a, h                                       ; $67a4: $7c
    ld [hl-], a                                   ; $67a5: $32
    ld a, [$1cc5]                                 ; $67a6: $fa $c5 $1c
    xor c                                         ; $67a9: $a9
    push af                                       ; $67aa: $f5
    call z, $a6d1                                 ; $67ab: $cc $d1 $a6
    sub e                                         ; $67ae: $93
    adc d                                         ; $67af: $8a
    xor c                                         ; $67b0: $a9
    pop de                                        ; $67b1: $d1
    adc a                                         ; $67b2: $8f
    push de                                       ; $67b3: $d5
    or e                                          ; $67b4: $b3
    ld d, a                                       ; $67b5: $57
    rst $20                                       ; $67b6: $e7
    db $f4                                        ; $67b7: $f4
    inc hl                                        ; $67b8: $23
    inc l                                         ; $67b9: $2c
    ld [$9bd6], a                                 ; $67ba: $ea $d6 $9b
    inc hl                                        ; $67bd: $23
    rst $08                                       ; $67be: $cf
    ld a, [de]                                    ; $67bf: $1a
    adc [hl]                                      ; $67c0: $8e
    ld h, a                                       ; $67c1: $67
    ld b, e                                       ; $67c2: $43
    ld a, [$c565]                                 ; $67c3: $fa $65 $c5
    rst $30                                       ; $67c6: $f7
    ret                                           ; $67c7: $c9


    and e                                         ; $67c8: $a3
    ld hl, $bd0c                                  ; $67c9: $21 $0c $bd
    adc d                                         ; $67cc: $8a
    sub e                                         ; $67cd: $93
    dec l                                         ; $67ce: $2d
    cpl                                           ; $67cf: $2f
    add sp, -$0c                                  ; $67d0: $e8 $f4
    sub h                                         ; $67d2: $94
    ld h, b                                       ; $67d3: $60
    ld e, $4f                                     ; $67d4: $1e $4f
    ld c, b                                       ; $67d6: $48
    ld e, h                                       ; $67d7: $5c
    call nz, $f3d6                                ; $67d8: $c4 $d6 $f3
    ld a, [hl+]                                   ; $67db: $2a
    cp a                                          ; $67dc: $bf
    ld b, a                                       ; $67dd: $47
    dec l                                         ; $67de: $2d
    jr c, jr_06c_683d                             ; $67df: $38 $5c

    ld a, [hl]                                    ; $67e1: $7e
    or [hl]                                       ; $67e2: $b6
    ld a, [hl]                                    ; $67e3: $7e
    or [hl]                                       ; $67e4: $b6
    inc c                                         ; $67e5: $0c
    add $d5                                       ; $67e6: $c6 $d5
    ld [hl], b                                    ; $67e8: $70
    ld [hl], d                                    ; $67e9: $72
    inc e                                         ; $67ea: $1c
    xor l                                         ; $67eb: $ad
    ld h, a                                       ; $67ec: $67
    dec [hl]                                      ; $67ed: $35
    and c                                         ; $67ee: $a1
    ld [de], a                                    ; $67ef: $12
    adc d                                         ; $67f0: $8a
    add [hl]                                      ; $67f1: $86
    ld h, e                                       ; $67f2: $63
    db $dd                                        ; $67f3: $dd
    ld l, c                                       ; $67f4: $69
    sbc [hl]                                      ; $67f5: $9e
    or a                                          ; $67f6: $b7
    or c                                          ; $67f7: $b1
    dec e                                         ; $67f8: $1d
    sbc a                                         ; $67f9: $9f
    ld b, $87                                     ; $67fa: $06 $87
    res 1, a                                      ; $67fc: $cb $8f
    and b                                         ; $67fe: $a0
    ld d, a                                       ; $67ff: $57
    ld h, c                                       ; $6800: $61
    or $d3                                        ; $6801: $f6 $d3
    or [hl]                                       ; $6803: $b6
    ld l, l                                       ; $6804: $6d
    rlca                                          ; $6805: $07
    db $db                                        ; $6806: $db
    or [hl]                                       ; $6807: $b6
    ld [hl], l                                    ; $6808: $75
    xor c                                         ; $6809: $a9
    ld c, [hl]                                    ; $680a: $4e
    db $fd                                        ; $680b: $fd
    dec a                                         ; $680c: $3d
    xor e                                         ; $680d: $ab
    sbc [hl]                                      ; $680e: $9e
    ld c, $4b                                     ; $680f: $0e $4b
    cpl                                           ; $6811: $2f
    dec e                                         ; $6812: $1d
    scf                                           ; $6813: $37
    ld b, a                                       ; $6814: $47
    sbc [hl]                                      ; $6815: $9e
    dec [hl]                                      ; $6816: $35
    rst $38                                       ; $6817: $ff
    ld c, [hl]                                    ; $6818: $4e
    rst $38                                       ; $6819: $ff
    ld e, b                                       ; $681a: $58
    ld h, l                                       ; $681b: $65
    sub [hl]                                      ; $681c: $96
    sub e                                         ; $681d: $93
    and e                                         ; $681e: $a3
    pop bc                                        ; $681f: $c1
    ld a, [hl-]                                   ; $6820: $3a
    dec c                                         ; $6821: $0d
    inc h                                         ; $6822: $24
    ld [hl], $34                                  ; $6823: $36 $34
    jp z, $28a5                                   ; $6825: $ca $a5 $28

    ld [bc], a                                    ; $6828: $02
    ld l, c                                       ; $6829: $69
    add hl, bc                                    ; $682a: $09
    ld a, d                                       ; $682b: $7a
    jp Jump_06c_5eb6                              ; $682c: $c3 $b6 $5e


    sbc a                                         ; $682f: $9f
    jr jr_06c_689b                                ; $6830: $18 $69

    db $db                                        ; $6832: $db
    ld bc, $aae7                                  ; $6833: $01 $e7 $aa
    xor b                                         ; $6836: $a8
    ld h, d                                       ; $6837: $62
    ld b, a                                       ; $6838: $47
    cpl                                           ; $6839: $2f
    db $f4                                        ; $683a: $f4
    ld a, [c]                                     ; $683b: $f2
    push af                                       ; $683c: $f5

jr_06c_683d:
    di                                            ; $683d: $f3
    adc a                                         ; $683e: $8f
    ld l, $df                                     ; $683f: $2e $df
    ld l, b                                       ; $6841: $68
    ld [$b143], sp                                ; $6842: $08 $43 $b1
    and a                                         ; $6845: $a7
    inc a                                         ; $6846: $3c
    ld e, d                                       ; $6847: $5a
    db $fc                                        ; $6848: $fc
    sub c                                         ; $6849: $91
    cpl                                           ; $684a: $2f
    jp nz, $0a8f                                  ; $684b: $c2 $8f $0a

    ld a, d                                       ; $684e: $7a
    ld a, l                                       ; $684f: $7d
    ld h, d                                       ; $6850: $62
    and h                                         ; $6851: $a4
    ld l, l                                       ; $6852: $6d
    rlca                                          ; $6853: $07
    ld d, a                                       ; $6854: $57
    ld h, c                                       ; $6855: $61
    or $93                                        ; $6856: $f6 $93
    and b                                         ; $6858: $a0
    db $d3                                        ; $6859: $d3
    ld b, b                                       ; $685a: $40
    ld h, d                                       ; $685b: $62
    rst $38                                       ; $685c: $ff
    inc hl                                        ; $685d: $23
    rst $08                                       ; $685e: $cf
    ld c, d                                       ; $685f: $4a
    adc l                                         ; $6860: $8d
    pop bc                                        ; $6861: $c1
    dec d                                         ; $6862: $15
    pop hl                                        ; $6863: $e1
    ld [hl], $b3                                  ; $6864: $36 $b3
    sbc a                                         ; $6866: $9f
    adc d                                         ; $6867: $8a
    add $50                                       ; $6868: $c6 $50
    adc a                                         ; $686a: $8f
    jp z, $aa1d                                   ; $686b: $ca $1d $aa

    ld a, h                                       ; $686e: $7c
    and e                                         ; $686f: $a3
    rst $20                                       ; $6870: $e7
    xor c                                         ; $6871: $a9
    ld a, [hl-]                                   ; $6872: $3a
    xor c                                         ; $6873: $a9
    ret                                           ; $6874: $c9


    push de                                       ; $6875: $d5
    ld c, l                                       ; $6876: $4d
    ld e, [hl]                                    ; $6877: $5e
    ld [hl], c                                    ; $6878: $71
    ld c, h                                       ; $6879: $4c

Call_06c_687a:
    ret nc                                        ; $687a: $d0

    ld [hl], b                                    ; $687b: $70
    inc l                                         ; $687c: $2c
    ld [hl+], a                                   ; $687d: $22
    rst $00                                       ; $687e: $c7
    ld l, c                                       ; $687f: $69
    ld l, b                                       ; $6880: $68
    sub h                                         ; $6881: $94
    ld c, e                                       ; $6882: $4b
    and a                                         ; $6883: $a7
    ld hl, $94ed                                  ; $6884: $21 $ed $94
    ld [hl], d                                    ; $6887: $72
    add h                                         ; $6888: $84
    ld l, l                                       ; $6889: $6d
    rlca                                          ; $688a: $07
    rra                                           ; $688b: $1f
    pop af                                        ; $688c: $f1
    cp a                                          ; $688d: $bf
    or $9d                                        ; $688e: $f6 $9d
    ld d, l                                       ; $6890: $55
    sub $41                                       ; $6891: $d6 $41
    adc d                                         ; $6893: $8a
    sub e                                         ; $6894: $93
    sbc h                                         ; $6895: $9c
    ld d, h                                       ; $6896: $54
    cp d                                          ; $6897: $ba
    ld h, $57                                     ; $6898: $26 $57
    ret z                                         ; $689a: $c8

jr_06c_689b:
    push hl                                       ; $689b: $e5
    sbc c                                         ; $689c: $99
    inc hl                                        ; $689d: $23
    dec b                                         ; $689e: $05
    ld h, l                                       ; $689f: $65
    adc [hl]                                      ; $68a0: $8e
    cp a                                          ; $68a1: $bf
    db $d3                                        ; $68a2: $d3
    dec de                                        ; $68a3: $1b
    add hl, de                                    ; $68a4: $19
    ld hl, $58eb                                  ; $68a5: $21 $eb $58
    add a                                         ; $68a8: $87

Jump_06c_68a9:
    db $ec                                        ; $68a9: $ec
    daa                                           ; $68aa: $27
    dec [hl]                                      ; $68ab: $35
    or h                                          ; $68ac: $b4
    sub c                                         ; $68ad: $91
    ret                                           ; $68ae: $c9


    ld h, b                                       ; $68af: $60
    dec e                                         ; $68b0: $1d
    db $ed                                        ; $68b1: $ed
    jp z, $a327                                   ; $68b2: $ca $27 $a3

    ld e, a                                       ; $68b5: $5f
    call z, $5a91                                 ; $68b6: $cc $91 $5a
    adc a                                         ; $68b9: $8f
    add [hl]                                      ; $68ba: $86
    ld [hl], e                                    ; $68bb: $73
    pop af                                        ; $68bc: $f1
    ld [hl], a                                    ; $68bd: $77
    ld a, [de]                                    ; $68be: $1a
    jp nz, Jump_06c_68d0                          ; $68bf: $c2 $d0 $68

    adc b                                         ; $68c2: $88
    pop bc                                        ; $68c3: $c1
    ld c, a                                       ; $68c4: $4f
    db $ec                                        ; $68c5: $ec
    or e                                          ; $68c6: $b3
    ld l, l                                       ; $68c7: $6d
    rlca                                          ; $68c8: $07
    rst $28                                       ; $68c9: $ef
    ld h, b                                       ; $68ca: $60
    ld h, a                                       ; $68cb: $67
    push hl                                       ; $68cc: $e5
    cp b                                          ; $68cd: $b8
    ld e, [hl]                                    ; $68ce: $5e
    push bc                                       ; $68cf: $c5

Jump_06c_68d0:
    ret                                           ; $68d0: $c9


    sub [hl]                                      ; $68d1: $96
    rst $18                                       ; $68d2: $df

Call_06c_68d3:
    ld a, [$0d2e]                                 ; $68d3: $fa $2e $0d
    cp e                                          ; $68d6: $bb
    ld h, e                                       ; $68d7: $63
    adc [hl]                                      ; $68d8: $8e
    inc l                                         ; $68d9: $2c
    ld [hl], a                                    ; $68da: $77
    ld d, [hl]                                    ; $68db: $56
    ld hl, $2764                                  ; $68dc: $21 $64 $27
    ld a, e                                       ; $68df: $7b
    sub [hl]                                      ; $68e0: $96
    ld e, c                                       ; $68e1: $59
    ld c, [hl]                                    ; $68e2: $4e
    adc [hl]                                      ; $68e3: $8e
    ld b, $6b                                     ; $68e4: $06 $6b
    jr nz, jr_06c_6949                            ; $68e6: $20 $61

    rrca                                          ; $68e8: $0f
    inc h                                         ; $68e9: $24
    ld e, d                                       ; $68ea: $5a
    push hl                                       ; $68eb: $e5
    inc l                                         ; $68ec: $2c
    ld b, l                                       ; $68ed: $45
    jp Jump_000_22b1                              ; $68ee: $c3 $b1 $22


    sub b                                         ; $68f1: $90
    sub $76                                       ; $68f2: $d6 $76
    nop                                           ; $68f4: $00
    rra                                           ; $68f5: $1f
    scf                                           ; $68f6: $37
    sub b                                         ; $68f7: $90
    ret c                                         ; $68f8: $d8

    ld l, c                                       ; $68f9: $69
    inc [hl]                                      ; $68fa: $34
    call c, Call_000_022e                         ; $68fb: $dc $2e $02
    ld l, c                                       ; $68fe: $69
    ld d, l                                       ; $68ff: $55
    inc [hl]                                      ; $6900: $34
    add [hl]                                      ; $6901: $86
    ld a, [$c864]                                 ; $6902: $fa $64 $c8
    sub c                                         ; $6905: $91
    sbc l                                         ; $6906: $9d
    adc d                                         ; $6907: $8a
    rst $00                                       ; $6908: $c7
    add d                                         ; $6909: $82
    ld l, l                                       ; $690a: $6d
    ld c, l                                       ; $690b: $4d
    dec a                                         ; $690c: $3d
    or h                                          ; $690d: $b4
    ld c, b                                       ; $690e: $48
    dec sp                                        ; $690f: $3b

jr_06c_6910:
    ld d, h                                       ; $6910: $54
    ret nc                                        ; $6911: $d0

    xor e                                         ; $6912: $ab
    jr nc, jr_06c_6910                            ; $6913: $30 $fb

    jp hl                                         ; $6915: $e9


    adc l                                         ; $6916: $8d
    inc bc                                        ; $6917: $03
    rra                                           ; $6918: $1f
    scf                                           ; $6919: $37
    or h                                          ; $691a: $b4
    ld de, $7551                                  ; $691b: $11 $51 $75
    xor h                                         ; $691e: $ac
    scf                                           ; $691f: $37
    ld [hl-], a                                   ; $6920: $32
    ld b, d                                       ; $6921: $42
    sub $b1                                       ; $6922: $d6 $b1
    ld c, $d9                                     ; $6924: $0e $d9
    ld c, a                                       ; $6926: $4f
    ld l, d                                       ; $6927: $6a
    ld l, b                                       ; $6928: $68
    inc hl                                        ; $6929: $23

Jump_06c_692a:
    sub e                                         ; $692a: $93
    pop bc                                        ; $692b: $c1
    cp d                                          ; $692c: $ba
    ld a, [c]                                     ; $692d: $f2
    ret                                           ; $692e: $c9


    add sp, $17                                   ; $692f: $e8 $17
    ld [hl], e                                    ; $6931: $73
    and h                                         ; $6932: $a4
    ld [hl], $84                                  ; $6933: $36 $84
    and c                                         ; $6935: $a1
    ret                                           ; $6936: $c9


    and c                                         ; $6937: $a1
    pop hl                                        ; $6938: $e1
    ld e, h                                       ; $6939: $5c
    db $fc                                        ; $693a: $fc
    sbc l                                         ; $693b: $9d
    ld d, a                                       ; $693c: $57
    ld a, [hl-]                                   ; $693d: $3a
    cp e                                          ; $693e: $bb
    ld a, b                                       ; $693f: $78
    or h                                          ; $6940: $b4
    sbc [hl]                                      ; $6941: $9e
    dec d                                         ; $6942: $15
    ld d, d                                       ; $6943: $52
    daa                                           ; $6944: $27
    reti                                          ; $6945: $d9


    ld [$721a], sp                                ; $6946: $08 $1a $72

jr_06c_6949:
    ld h, a                                       ; $6949: $67
    dec a                                         ; $694a: $3d
    dec bc                                        ; $694b: $0b
    add e                                         ; $694c: $83
    pop bc                                        ; $694d: $c1
    add hl, bc                                    ; $694e: $09
    rst $28                                       ; $694f: $ef
    ld e, c                                       ; $6950: $59
    jr z, jr_06c_696e                             ; $6951: $28 $1b

    ld a, [de]                                    ; $6953: $1a
    dec d                                         ; $6954: $15
    ld e, d                                       ; $6955: $5a
    rst $08                                       ; $6956: $cf
    ld a, [hl+]                                   ; $6957: $2a
    dec l                                         ; $6958: $2d
    ld h, h                                       ; $6959: $64
    adc [hl]                                      ; $695a: $8e
    call c, Call_000_0f0e                         ; $695b: $dc $0e $0f
    ld l, c                                       ; $695e: $69
    rst $38                                       ; $695f: $ff
    cp h                                          ; $6960: $bc

Call_06c_6961:
    ld c, l                                       ; $6961: $4d
    db $ed                                        ; $6962: $ed
    ld a, a                                       ; $6963: $7f
    db $e4                                        ; $6964: $e4
    ld e, c                                       ; $6965: $59
    jp $2cf1                                      ; $6966: $c3 $f1 $2c


    or e                                          ; $6969: $b3
    sbc h                                         ; $696a: $9c
    inc e                                         ; $696b: $1c
    dec c                                         ; $696c: $0d
    ld d, [hl]                                    ; $696d: $56

jr_06c_696e:
    add hl, sp                                    ; $696e: $39
    ld c, e                                       ; $696f: $4b
    and c                                         ; $6970: $a1
    add l                                         ; $6971: $85
    ld [$0d72], a                                 ; $6972: $ea $72 $0d
    cp c                                          ; $6975: $b9
    ld c, a                                       ; $6976: $4f
    inc hl                                        ; $6977: $23
    call $a798                                    ; $6978: $cd $98 $a7
    ld e, $a5                                     ; $697b: $1e $a5
    jp z, $b1d9                                   ; $697d: $ca $d9 $b1

    push af                                       ; $6980: $f5
    cp h                                          ; $6981: $bc
    add c                                         ; $6982: $81
    add h                                         ; $6983: $84
    inc e                                         ; $6984: $1c
    and a                                         ; $6985: $a7
    ld [hl], a                                    ; $6986: $77
    ld [hl], $e4                                  ; $6987: $36 $e4
    adc $7a                                       ; $6989: $ce $7a
    ld d, $06                                     ; $698b: $16 $06
    add e                                         ; $698d: $83
    inc de                                        ; $698e: $13
    sbc $b3                                       ; $698f: $de $b3
    jr nz, jr_06c_69fb                            ; $6991: $20 $68

    cp $9d                                        ; $6993: $fe $9d
    ld a, [hl+]                                   ; $6995: $2a
    dec l                                         ; $6996: $2d
    cp b                                          ; $6997: $b8
    sbc d                                         ; $6998: $9a
    inc l                                         ; $6999: $2c
    inc [hl]                                      ; $699a: $34
    ld a, [hl+]                                   ; $699b: $2a
    xor d                                         ; $699c: $aa
    ld l, h                                       ; $699d: $6c
    ld e, h                                       ; $699e: $5c
    ld a, a                                       ; $699f: $7f
    ld e, d                                       ; $69a0: $5a
    sub e                                         ; $69a1: $93
    ld l, e                                       ; $69a2: $6b
    jr c, @+$4b                                   ; $69a3: $38 $49

    ld c, [hl]                                    ; $69a5: $4e
    db $fd                                        ; $69a6: $fd
    ld d, d                                       ; $69a7: $52
    sbc l                                         ; $69a8: $9d
    ld h, [hl]                                    ; $69a9: $66
    ld d, h                                       ; $69aa: $54
    or c                                          ; $69ab: $b1
    and e                                         ; $69ac: $a3
    ld a, [hl]                                    ; $69ad: $7e
    ld a, d                                       ; $69ae: $7a
    inc hl                                        ; $69af: $23
    inc hl                                        ; $69b0: $23
    and h                                         ; $69b1: $a4
    and b                                         ; $69b2: $a0
    call c, $d3d9                                 ; $69b3: $dc $d9 $d3
    ld l, b                                       ; $69b6: $68
    ld b, h                                       ; $69b7: $44
    inc hl                                        ; $69b8: $23
    ld [hl], d                                    ; $69b9: $72
    sbc h                                         ; $69ba: $9c
    ld a, d                                       ; $69bb: $7a
    ld d, [hl]                                    ; $69bc: $56
    ld l, c                                       ; $69bd: $69
    ld hl, $a473                                  ; $69be: $21 $73 $a4
    sub [hl]                                      ; $69c1: $96
    sub l                                         ; $69c2: $95
    or e                                          ; $69c3: $b3
    inc d                                         ; $69c4: $14
    ld e, d                                       ; $69c5: $5a
    xor b                                         ; $69c6: $a8
    ld l, $b7                                     ; $69c7: $2e $b7
    dec e                                         ; $69c9: $1d
    scf                                           ; $69ca: $37
    ld b, a                                       ; $69cb: $47
    sbc [hl]                                      ; $69cc: $9e
    sub l                                         ; $69cd: $95
    ld a, [de]                                    ; $69ce: $1a
    add e                                         ; $69cf: $83
    cp e                                          ; $69d0: $bb
    ld [hl], d                                    ; $69d1: $72
    and h                                         ; $69d2: $a4
    reti                                          ; $69d3: $d9


    cp b                                          ; $69d4: $b8
    sub b                                         ; $69d5: $90
    reti                                          ; $69d6: $d9


    ld c, a                                       ; $69d7: $4f
    sub e                                         ; $69d8: $93
    ld b, e                                       ; $69d9: $43
    sub c                                         ; $69da: $91
    halt                                          ; $69db: $76
    ld e, h                                       ; $69dc: $5c
    ld [$1a7b], a                                 ; $69dd: $ea $7b $1a
    and a                                         ; $69e0: $a7
    cp d                                          ; $69e1: $ba
    ld c, [hl]                                    ; $69e2: $4e
    ld a, c                                       ; $69e3: $79
    adc c                                         ; $69e4: $89
    sub [hl]                                      ; $69e5: $96
    ld b, h                                       ; $69e6: $44
    sub e                                         ; $69e7: $93
    xor e                                         ; $69e8: $ab
    and a                                         ; $69e9: $a7

jr_06c_69ea:
    jp z, Jump_06c_71c9                           ; $69ea: $ca $c9 $71

    ld [$e7d9], a                                 ; $69ed: $ea $d9 $e7
    dec de                                        ; $69f0: $1b
    ld c, [hl]                                    ; $69f1: $4e

jr_06c_69f2:
    adc [hl]                                      ; $69f2: $8e
    and e                                         ; $69f3: $a3
    dec c                                         ; $69f4: $0d
    ld h, c                                       ; $69f5: $61
    jr z, jr_06c_69f2                             ; $69f6: $28 $fa

    xor [hl]                                      ; $69f8: $ae
    dec l                                         ; $69f9: $2d

Call_06c_69fa:
    pop de                                        ; $69fa: $d1

jr_06c_69fb:
    jp z, $d8f7                                   ; $69fb: $ca $f7 $d8

    jp nz, $03a5                                  ; $69fe: $c2 $a5 $03

    rst $20                                       ; $6a01: $e7
    ld a, [de]                                    ; $6a02: $1a
    jp nc, $e4d8                                  ; $6a03: $d2 $d8 $e4

    cp d                                          ; $6a06: $ba
    or d                                          ; $6a07: $b2
    ld b, [hl]                                    ; $6a08: $46
    db $e4                                        ; $6a09: $e4
    ret z                                         ; $6a0a: $c8

    ld l, [hl]                                    ; $6a0b: $6e
    db $db                                        ; $6a0c: $db
    sub $ab                                       ; $6a0d: $d6 $ab
    jr c, jr_06c_69ea                             ; $6a0f: $38 $d9

    ld a, [c]                                     ; $6a11: $f2
    push af                                       ; $6a12: $f5
    ld c, e                                       ; $6a13: $4b
    sub l                                         ; $6a14: $95
    dec c                                         ; $6a15: $0d
    inc h                                         ; $6a16: $24
    sub [hl]                                      ; $6a17: $96
    ld a, [de]                                    ; $6a18: $1a
    pop af                                        ; $6a19: $f1
    ld b, a                                       ; $6a1a: $47
    dec a                                         ; $6a1b: $3d
    dec a                                         ; $6a1c: $3d
    db $e3                                        ; $6a1d: $e3
    cp d                                          ; $6a1e: $ba
    adc l                                         ; $6a1f: $8d
    db $ec                                        ; $6a20: $ec
    and a                                         ; $6a21: $a7
    ld b, d                                       ; $6a22: $42
    ld [$1b24], a                                 ; $6a23: $ea $24 $1b
    xor l                                         ; $6a26: $ad
    inc e                                         ; $6a27: $1c
    rst $10                                       ; $6a28: $d7
    sub l                                         ; $6a29: $95
    sub l                                         ; $6a2a: $95
    ld [hl], c                                    ; $6a2b: $71
    ret                                           ; $6a2c: $c9


    push hl                                       ; $6a2d: $e5
    pop de                                        ; $6a2e: $d1
    ld [hl], b                                    ; $6a2f: $70
    xor h                                         ; $6a30: $ac

Jump_06c_6a31:
    ld [$75a4], sp                                ; $6a31: $08 $a4 $75
    jp hl                                         ; $6a34: $e9


    nop                                           ; $6a35: $00
    scf                                           ; $6a36: $37
    ld a, [hl]                                    ; $6a37: $7e
    and a                                         ; $6a38: $a7
    or e                                          ; $6a39: $b3
    adc e                                         ; $6a3a: $8b
    ld b, a                                       ; $6a3b: $47
    db $eb                                        ; $6a3c: $eb
    ld e, c                                       ; $6a3d: $59
    ld hl, $9275                                  ; $6a3e: $21 $75 $92
    adc l                                         ; $6a41: $8d
    ld a, [bc]                                    ; $6a42: $0a
    cp d                                          ; $6a43: $ba
    di                                            ; $6a44: $f3
    add h                                         ; $6a45: $84
    db $fd                                        ; $6a46: $fd
    jp nc, $ef01                                  ; $6a47: $d2 $01 $ef

    xor c                                         ; $6a4a: $a9
    ld c, [hl]                                    ; $6a4b: $4e
    sub l                                         ; $6a4c: $95
    dec c                                         ; $6a4d: $0d
    ld h, c                                       ; $6a4e: $61
    sub h                                         ; $6a4f: $94
    xor h                                         ; $6a50: $ac

Call_06c_6a51:
    inc e                                         ; $6a51: $1c
    rst $10                                       ; $6a52: $d7
    reti                                          ; $6a53: $d9


    push bc                                       ; $6a54: $c5
    and e                                         ; $6a55: $a3
    push af                                       ; $6a56: $f5
    db $ec                                        ; $6a57: $ec
    jp z, Jump_000_38ca                           ; $6a58: $ca $ca $38

    jp c, $db6d                                   ; $6a5b: $da $6d $db

    cp d                                          ; $6a5e: $ba
    or d                                          ; $6a5f: $b2
    ld [hl-], a                                   ; $6a60: $32
    adc [hl]                                      ; $6a61: $8e
    ld d, [hl]                                    ; $6a62: $56
    adc [hl]                                      ; $6a63: $8e
    sbc e                                         ; $6a64: $9b
    ld h, $57                                     ; $6a65: $26 $57
    ld hl, $9275                                  ; $6a67: $21 $75 $92
    call $03a5                                    ; $6a6a: $cd $a5 $03
    ld d, a                                       ; $6a6d: $57
    sbc l                                         ; $6a6e: $9d
    db $eb                                        ; $6a6f: $eb
    or [hl]                                       ; $6a70: $b6
    ld l, l                                       ; $6a71: $6d
    and l                                         ; $6a72: $a5
    ld a, [hl+]                                   ; $6a73: $2a
    ld a, [hl+]                                   ; $6a74: $2a
    ld b, a                                       ; $6a75: $47
    ld l, b                                       ; $6a76: $68
    ld l, b                                       ; $6a77: $68
    ld [$64a3], sp                                ; $6a78: $08 $a3 $64
    add l                                         ; $6a7b: $85
    ld [hl], h                                    ; $6a7c: $74
    and l                                         ; $6a7d: $a5
    ld b, [hl]                                    ; $6a7e: $46
    ld b, e                                       ; $6a7f: $43
    ld d, $a3                                     ; $6a80: $16 $a3
    db $db                                        ; $6a82: $db
    or [hl]                                       ; $6a83: $b6
    dec e                                         ; $6a84: $1d
    rst $20                                       ; $6a85: $e7
    ld c, e                                       ; $6a86: $4b
    ret nc                                        ; $6a87: $d0

    and l                                         ; $6a88: $a5
    ld a, [hl-]                                   ; $6a89: $3a
    cp l                                          ; $6a8a: $bd
    ret nc                                        ; $6a8b: $d0

    db $e4                                        ; $6a8c: $e4
    ret nc                                        ; $6a8d: $d0

    sub b                                         ; $6a8e: $90
    dec sp                                        ; $6a8f: $3b
    db $eb                                        ; $6a90: $eb
    ld e, c                                       ; $6a91: $59
    add hl, sp                                    ; $6a92: $39
    ld b, d                                       ; $6a93: $42
    ld b, e                                       ; $6a94: $43
    dec a                                         ; $6a95: $3d
    ei                                            ; $6a96: $fb
    and a                                         ; $6a97: $a7
    ld a, c                                       ; $6a98: $79
    ld a, b                                       ; $6a99: $78
    ld l, [hl]                                    ; $6a9a: $6e
    db $ed                                        ; $6a9b: $ed
    cp c                                          ; $6a9c: $b9
    add [hl]                                      ; $6a9d: $86
    inc [hl]                                      ; $6a9e: $34
    ld [hl], $b9                                  ; $6a9f: $36 $b9
    add [hl]                                      ; $6aa1: $86
    sub e                                         ; $6aa2: $93
    db $e4                                        ; $6aa3: $e4
    ld [hl], h                                    ; $6aa4: $74
    db $db                                        ; $6aa5: $db
    or [hl]                                       ; $6aa6: $b6
    ld h, $87                                     ; $6aa7: $26 $87
    jp nz, Jump_06c_7060                          ; $6aa9: $c2 $60 $70

    jp nz, Jump_000_167b                          ; $6aac: $c2 $7b $16

    ld a, d                                       ; $6aaf: $7a
    and c                                         ; $6ab0: $a1
    ret                                           ; $6ab1: $c9


    and c                                         ; $6ab2: $a1
    ld [hl], d                                    ; $6ab3: $72
    add h                                         ; $6ab4: $84
    add [hl]                                      ; $6ab5: $86
    ld c, e                                       ; $6ab6: $4b
    rlca                                          ; $6ab7: $07
    rra                                           ; $6ab8: $1f
    scf                                           ; $6ab9: $37
    sub b                                         ; $6aba: $90
    ret c                                         ; $6abb: $d8

    dec bc                                        ; $6abc: $0b
    ld e, l                                       ; $6abd: $5d
    xor d                                         ; $6abe: $aa
    ld d, e                                       ; $6abf: $53
    and $68                                       ; $6ac0: $e6 $68
    inc l                                         ; $6ac2: $2c
    or h                                          ; $6ac3: $b4
    ld hl, $b422                                  ; $6ac4: $21 $22 $b4
    ld a, [hl]                                    ; $6ac7: $7e
    ld a, d                                       ; $6ac8: $7a
    or d                                          ; $6ac9: $b2
    dec h                                         ; $6aca: $25
    sbc d                                         ; $6acb: $9a
    scf                                           ; $6acc: $37
    ld c, $e7                                     ; $6acd: $0e $e7
    ld a, [de]                                    ; $6acf: $1a
    and c                                         ; $6ad0: $a1
    push af                                       ; $6ad1: $f5
    db $fc                                        ; $6ad2: $fc
    db $d3                                        ; $6ad3: $d3
    ld d, l                                       ; $6ad4: $55
    ld l, c                                       ; $6ad5: $69
    dec c                                         ; $6ad6: $0d
    adc l                                         ; $6ad7: $8d
    ld a, [bc]                                    ; $6ad8: $0a
    xor l                                         ; $6ad9: $ad
    ld h, a                                       ; $6ada: $67
    sub l                                         ; $6adb: $95
    ld d, $32                                     ; $6adc: $16 $32
    ld b, a                                       ; $6ade: $47
    ld l, [hl]                                    ; $6adf: $6e
    dec a                                         ; $6ae0: $3d
    rst $10                                       ; $6ae1: $d7
    sub b                                         ; $6ae2: $90
    ld [hl], $0d                                  ; $6ae3: $36 $0d
    inc h                                         ; $6ae5: $24
    ld d, [hl]                                    ; $6ae6: $56
    ld sp, hl                                     ; $6ae7: $f9
    dec a                                         ; $6ae8: $3d
    ld e, h                                       ; $6ae9: $5c
    db $fd                                        ; $6aea: $fd
    inc [hl]                                      ; $6aeb: $34
    xor [hl]                                      ; $6aec: $ae
    ld [hl], b                                    ; $6aed: $70
    ld a, [hl+]                                   ; $6aee: $2a
    ld l, c                                       ; $6aef: $69
    ld [hl], c                                    ; $6af0: $71
    or [hl]                                       ; $6af1: $b6
    inc bc                                        ; $6af2: $03
    rst $28                                       ; $6af3: $ef
    ld h, l                                       ; $6af4: $65
    ld a, b                                       ; $6af5: $78
    ld b, $12                                     ; $6af6: $06 $12
    db $fc                                        ; $6af8: $fc
    ld l, h                                       ; $6af9: $6c
    db $fd                                        ; $6afa: $fd
    call c, $9c35                                 ; $6afb: $dc $35 $9c
    inc e                                         ; $6afe: $1c
    and a                                         ; $6aff: $a7
    xor b                                         ; $6b00: $a8
    ld h, e                                       ; $6b01: $63
    ld e, $6d                                     ; $6b02: $1e $6d
    ld [$3543], sp                                ; $6b04: $08 $43 $35
    and c                                         ; $6b07: $a1
    ld [de], a                                    ; $6b08: $12
    adc d                                         ; $6b09: $8a
    xor l                                         ; $6b0a: $ad
    sub a                                         ; $6b0b: $97
    dec hl                                        ; $6b0c: $2b
    add d                                         ; $6b0d: $82
    ld b, e                                       ; $6b0e: $43
    ld b, e                                       ; $6b0f: $43
    xor $d3                                       ; $6b10: $ee $d3
    rst $38                                       ; $6b12: $ff
    jp nc, $cd38                                  ; $6b13: $d2 $38 $cd

    cp a                                          ; $6b16: $bf
    db $d3                                        ; $6b17: $d3
    dec bc                                        ; $6b18: $0b
    adc l                                         ; $6b19: $8d
    ret                                           ; $6b1a: $c9


    rst $08                                       ; $6b1b: $cf
    sub $2b                                       ; $6b1c: $d6 $2b
    sub e                                         ; $6b1e: $93
    db $e3                                        ; $6b1f: $e3
    jp z, $0d89                                   ; $6b20: $ca $89 $0d

    ld l, l                                       ; $6b23: $6d
    ld h, h                                       ; $6b24: $64
    ld [hl-], a                                   ; $6b25: $32
    ld h, h                                       ; $6b26: $64
    ccf                                           ; $6b27: $3f
    db $db                                        ; $6b28: $db
    ld bc, $65ef                                  ; $6b29: $01 $ef $65

jr_06c_6b2c:
    add hl, sp                                    ; $6b2c: $39
    ld l, $dc                                     ; $6b2d: $2e $dc
    add hl, de                                    ; $6b2f: $19
    ld h, a                                       ; $6b30: $67
    db $eb                                        ; $6b31: $eb
    rst $20                                       ; $6b32: $e7
    xor [hl]                                      ; $6b33: $ae
    pop hl                                        ; $6b34: $e1
    db $e4                                        ; $6b35: $e4
    jr c, jr_06c_6b7d                             ; $6b36: $38 $45

    dec e                                         ; $6b38: $1d
    di                                            ; $6b39: $f3
    add sp, -$2a                                  ; $6b3a: $e8 $d6
    sbc e                                         ; $6b3c: $9b
    inc hl                                        ; $6b3d: $23
    rst $08                                       ; $6b3e: $cf
    ld c, d                                       ; $6b3f: $4a
    adc l                                         ; $6b40: $8d
    pop bc                                        ; $6b41: $c1
    push af                                       ; $6b42: $f5
    sub h                                         ; $6b43: $94
    inc c                                         ; $6b44: $0c
    push hl                                       ; $6b45: $e5
    sbc d                                         ; $6b46: $9a
    adc h                                         ; $6b47: $8c
    db $ec                                        ; $6b48: $ec
    and a                                         ; $6b49: $a7
    jp z, $b854                                   ; $6b4a: $ca $54 $b8

    ld [hl], l                                    ; $6b4d: $75
    ld a, [de]                                    ; $6b4e: $1a
    ld b, c                                       ; $6b4f: $41
    and a                                         ; $6b50: $a7
    scf                                           ; $6b51: $37
    ld l, h                                       ; $6b52: $6c
    db $eb                                        ; $6b53: $eb
    add a                                         ; $6b54: $87
    sub e                                         ; $6b55: $93
    ld c, a                                       ; $6b56: $4f
    jp nz, Jump_06c_7189                          ; $6b57: $c2 $89 $71

    call c, Call_000_0076                         ; $6b5a: $dc $76 $00
    sub a                                         ; $6b5d: $97
    ld d, a                                       ; $6b5e: $57
    or $68                                        ; $6b5f: $f6 $68
    cp $9d                                        ; $6b61: $fe $9d
    jp z, $cac9                                   ; $6b63: $ca $c9 $ca

    ld d, e                                       ; $6b66: $53
    ld e, d                                       ; $6b67: $5a
    xor c                                         ; $6b68: $a9
    ld [hl], c                                    ; $6b69: $71
    db $fc                                        ; $6b6a: $fc
    ld l, b                                       ; $6b6b: $68
    ld b, a                                       ; $6b6c: $47
    cp e                                          ; $6b6d: $bb
    ld a, [c]                                     ; $6b6e: $f2
    ret                                           ; $6b6f: $c9


    add sp, $17                                   ; $6b70: $e8 $17
    ld [hl], e                                    ; $6b72: $73
    and h                                         ; $6b73: $a4
    ld a, [bc]                                    ; $6b74: $0a
    ld a, d                                       ; $6b75: $7a
    ld a, l                                       ; $6b76: $7d
    ld h, d                                       ; $6b77: $62
    and h                                         ; $6b78: $a4
    ld l, l                                       ; $6b79: $6d
    cp l                                          ; $6b7a: $bd
    add hl, sp                                    ; $6b7b: $39
    ld a, e                                       ; $6b7c: $7b

jr_06c_6b7d:
    ld h, h                                       ; $6b7d: $64
    ld d, c                                       ; $6b7e: $51
    ld c, l                                       ; $6b7f: $4d
    xor b                                         ; $6b80: $a8
    jr nc, jr_06c_6b2c                            ; $6b81: $30 $a9

    call nz, Call_000_0076                        ; $6b83: $c4 $76 $00
    scf                                           ; $6b86: $37
    sbc b                                         ; $6b87: $98
    ld a, [bc]                                    ; $6b88: $0a
    or a                                          ; $6b89: $b7
    ld c, [hl]                                    ; $6b8a: $4e
    db $d3                                        ; $6b8b: $d3
    db $fc                                        ; $6b8c: $fc
    dec sp                                        ; $6b8d: $3b
    push bc                                       ; $6b8e: $c5
    jp hl                                         ; $6b8f: $e9


    ld bc, $38e6                                  ; $6b90: $01 $e6 $38
    xor c                                         ; $6b93: $a9
    call nc, Call_000_0690                        ; $6b94: $d4 $90 $06
    dec hl                                        ; $6b97: $2b
    dec de                                        ; $6b98: $1b
    ld sp, hl                                     ; $6b99: $f9
    ld h, a                                       ; $6b9a: $67
    inc bc                                        ; $6b9b: $03
    adc c                                         ; $6b9c: $89
    ld e, l                                       ; $6b9d: $5d
    sub $10                                       ; $6b9e: $d6 $10
    add [hl]                                      ; $6ba0: $86
    and d                                         ; $6ba1: $a2
    call z, $9a22                                 ; $6ba2: $cc $22 $9a
    add e                                         ; $6ba5: $83
    dec l                                         ; $6ba6: $2d
    ld l, h                                       ; $6ba7: $6c
    cp l                                          ; $6ba8: $bd
    ld a, [hl]                                    ; $6ba9: $7e
    ld b, c                                       ; $6baa: $41
    ld [hl], l                                    ; $6bab: $75
    cp c                                          ; $6bac: $b9
    ld l, c                                       ; $6bad: $69
    inc [hl]                                      ; $6bae: $34
    ld [$8bb1], sp                                ; $6baf: $08 $b1 $8b
    ld b, a                                       ; $6bb2: $47
    ret nc                                        ; $6bb3: $d0

    dec de                                        ; $6bb4: $1b
    or [hl]                                       ; $6bb5: $b6
    push af                                       ; $6bb6: $f5
    ld a, [$48c4]                                 ; $6bb7: $fa $c4 $48
    db $db                                        ; $6bba: $db
    ld a, [$c37c]                                 ; $6bbb: $fa $7c $c3
    ret                                           ; $6bbe: $c9


    ld [hl], c                                    ; $6bbf: $71
    or h                                          ; $6bc0: $b4
    xor b                                         ; $6bc1: $a8
    ld h, e                                       ; $6bc2: $63
    ld e, $6d                                     ; $6bc3: $1e $6d
    ld [$d143], sp                                ; $6bc5: $08 $43 $d1
    ld [hl], a                                    ; $6bc8: $77
    ld l, l                                       ; $6bc9: $6d
    adc c                                         ; $6bca: $89
    ld d, [hl]                                    ; $6bcb: $56
    cp [hl]                                       ; $6bcc: $be
    rst $00                                       ; $6bcd: $c7
    ld d, $b6                                     ; $6bce: $16 $b6
    ld e, [hl]                                    ; $6bd0: $5e
    reti                                          ; $6bd1: $d9


    and c                                         ; $6bd2: $a1
    jp z, $a5fa                                   ; $6bd3: $ca $fa $a5

Call_06c_6bd6:
    ld hl, $c2b3                                  ; $6bd6: $21 $b3 $c2
    ld h, e                                       ; $6bd9: $63
    dec sp                                        ; $6bda: $3b
    nop                                           ; $6bdb: $00
    rst $28                                       ; $6bdc: $ef
    xor h                                         ; $6bdd: $ac
    adc h                                         ; $6bde: $8c
    db $dd                                        ; $6bdf: $dd
    ld sp, $0a47                                  ; $6be0: $31 $47 $0a
    ld a, [bc]                                    ; $6be3: $0a
    add hl, bc                                    ; $6be4: $09
    ld hl, $d6d7                                  ; $6be5: $21 $d7 $d6
    sbc e                                         ; $6be8: $9b
    ld [hl], b                                    ; $6be9: $70
    and e                                         ; $6bea: $a3
    db $fd                                        ; $6beb: $fd
    db $d3                                        ; $6bec: $d3

jr_06c_6bed:
    xor d                                         ; $6bed: $aa
    db $ec                                        ; $6bee: $ec
    db $f4                                        ; $6bef: $f4
    ld b, [hl]                                    ; $6bf0: $46
    ld b, [hl]                                    ; $6bf1: $46
    ret z                                         ; $6bf2: $c8

    add $65                                       ; $6bf3: $c6 $65
    jr z, jr_06c_6bed                             ; $6bf5: $28 $f6

    ld d, e                                       ; $6bf7: $53
    ld [hl], d                                    ; $6bf8: $72
    dec c                                         ; $6bf9: $0d
    daa                                           ; $6bfa: $27
    rst $00                                       ; $6bfb: $c7
    xor c                                         ; $6bfc: $a9
    ld h, a                                       ; $6bfd: $67
    db $dd                                        ; $6bfe: $dd
    ld [hl], d                                    ; $6bff: $72
    push bc                                       ; $6c00: $c5
    ld l, c                                       ; $6c01: $69
    inc c                                         ; $6c02: $0c
    sub a                                         ; $6c03: $97
    ld c, $37                                     ; $6c04: $0e $37
    cp b                                          ; $6c06: $b8
    or h                                          ; $6c07: $b4
    pop hl                                        ; $6c08: $e1
    db $e4                                        ; $6c09: $e4
    jr c, @-$24                                   ; $6c0a: $38 $da

    ld [hl], b                                    ; $6c0c: $70
    xor h                                         ; $6c0d: $ac
    call z, Call_06c_7272                         ; $6c0e: $cc $72 $72
    inc [hl]                                      ; $6c11: $34
    ld e, b                                       ; $6c12: $58
    ld b, a                                       ; $6c13: $47
    cp e                                          ; $6c14: $bb
    ld a, [c]                                     ; $6c15: $f2
    ret                                           ; $6c16: $c9


    add sp, $17                                   ; $6c17: $e8 $17
    ld [hl], e                                    ; $6c19: $73
    and h                                         ; $6c1a: $a4
    ld a, [bc]                                    ; $6c1b: $0a
    ld [$fda0], a                                 ; $6c1c: $ea $a0 $fd
    ld c, a                                       ; $6c1f: $4f
    xor d                                         ; $6c20: $aa
    and a                                         ; $6c21: $a7
    jp z, Jump_000_11c9                           ; $6c22: $ca $c9 $11

    sub $e4                                       ; $6c25: $d6 $e4
    ld a, [de]                                    ; $6c27: $1a
    ld c, [hl]                                    ; $6c28: $4e
    adc [hl]                                      ; $6c29: $8e
    db $d3                                        ; $6c2a: $d3
    ld [hl], b                                    ; $6c2b: $70
    xor h                                         ; $6c2c: $ac
    sub c                                         ; $6c2d: $91
    ld d, [hl]                                    ; $6c2e: $56
    ld c, a                                       ; $6c2f: $4f
    scf                                           ; $6c30: $37
    ld b, $3f                                     ; $6c31: $06 $3f
    adc l                                         ; $6c33: $8d
    ret z                                         ; $6c34: $c8

    ld [hl], c                                    ; $6c35: $71
    or [hl]                                       ; $6c36: $b6
    ld e, [hl]                                    ; $6c37: $5e
    ld a, $8d                                     ; $6c38: $3e $8d
    and c                                         ; $6c3a: $a1
    ld [hl], d                                    ; $6c3b: $72
    call z, Call_000_10d0                         ; $6c3c: $cc $d0 $10
    add [hl]                                      ; $6c3f: $86
    and d                                         ; $6c40: $a2
    and c                                         ; $6c41: $a1
    db $dd                                        ; $6c42: $dd
    ld [hl], e                                    ; $6c43: $73
    ld l, e                                       ; $6c44: $6b
    add hl, sp                                    ; $6c45: $39
    inc d                                         ; $6c46: $14
    ld l, c                                       ; $6c47: $69
    ld b, a                                       ; $6c48: $47
    or a                                          ; $6c49: $b7
    ld l, l                                       ; $6c4a: $6d
    dec hl                                        ; $6c4b: $2b
    ld [$4798], a                                 ; $6c4c: $ea $98 $47
    dec de                                        ; $6c4f: $1b
    ld c, b                                       ; $6c50: $48
    ld l, h                                       ; $6c51: $6c
    jr nz, jr_06c_6cc5                            ; $6c52: $20 $71

    add hl, de                                    ; $6c54: $19
    ld a, [de]                                    ; $6c55: $1a
    jp nc, $ad3c                                  ; $6c56: $d2 $3c $ad

    ld c, $4b                                     ; $6c59: $0e $4b
    dec de                                        ; $6c5b: $1b
    ld c, [hl]                                    ; $6c5c: $4e
    adc [hl]                                      ; $6c5d: $8e
    and e                                         ; $6c5e: $a3
    db $db                                        ; $6c5f: $db
    ld bc, $acef                                  ; $6c60: $01 $ef $ac
    ld b, b                                       ; $6c63: $40
    ld h, d                                       ; $6c64: $62
    dec a                                         ; $6c65: $3d
    dec sp                                        ; $6c66: $3b
    cp e                                          ; $6c67: $bb
    ld a, b                                       ; $6c68: $78
    sbc d                                         ; $6c69: $9a
    ld b, a                                       ; $6c6a: $47
    ld a, e                                       ; $6c6b: $7b
    ld a, [bc]                                    ; $6c6c: $0a
    or [hl]                                       ; $6c6d: $b6
    ld d, e                                       ; $6c6e: $53
    jp c, $cda1                                   ; $6c6f: $da $a1 $cd

    ld d, e                                       ; $6c72: $53
    push bc                                       ; $6c73: $c5
    add hl, hl                                    ; $6c74: $29
    db $fd                                        ; $6c75: $fd
    ld c, [hl]                                    ; $6c76: $4e
    dec a                                         ; $6c77: $3d
    rr h                                          ; $6c78: $cb $1c
    dec c                                         ; $6c7a: $0d
    ld e, $5b                                     ; $6c7b: $1e $5b
    xor a                                         ; $6c7d: $af
    rst $08                                       ; $6c7e: $cf
    jp nc, Jump_000_3f62                          ; $6c7f: $d2 $62 $3f

    and l                                         ; $6c82: $a5
    dec bc                                        ; $6c83: $0b
    xor [hl]                                      ; $6c84: $ae
    ld c, $4b                                     ; $6c85: $0e $4b
    ei                                            ; $6c87: $fb
    ld a, l                                       ; $6c88: $7d
    ld [hl], b                                    ; $6c89: $70
    xor c                                         ; $6c8a: $a9
    ld sp, $9eb8                                  ; $6c8b: $31 $b8 $9e
    sbc l                                         ; $6c8e: $9d
    ld e, l                                       ; $6c8f: $5d
    inc a                                         ; $6c90: $3c

jr_06c_6c91:
    call $a9dc                                    ; $6c91: $cd $dc $a9
    db $db                                        ; $6c94: $db
    ld bc, $6dd7                                  ; $6c95: $01 $d7 $6d
    ld h, h                                       ; $6c98: $64
    ld [hl-], a                                   ; $6c99: $32
    ld [hl], $a4                                  ; $6c9a: $36 $a4
    push bc                                       ; $6c9c: $c5
    xor c                                         ; $6c9d: $a9
    ld b, a                                       ; $6c9e: $47
    dec h                                         ; $6c9f: $25
    add h                                         ; $6ca0: $84
    ret z                                         ; $6ca1: $c8

    xor b                                         ; $6ca2: $a8
    sbc a                                         ; $6ca3: $9f
    ld e, [hl]                                    ; $6ca4: $5e
    push bc                                       ; $6ca5: $c5
    ret                                           ; $6ca6: $c9


    sub [hl]                                      ; $6ca7: $96
    rst $18                                       ; $6ca8: $df
    ld a, d                                       ; $6ca9: $7a

Jump_06c_6caa:
    sbc [hl]                                      ; $6caa: $9e
    ld a, [$707d]                                 ; $6cab: $fa $7d $70
    sbc c                                         ; $6cae: $99
    push hl                                       ; $6caf: $e5
    db $e4                                        ; $6cb0: $e4
    ld l, b                                       ; $6cb1: $68
    ld e, h                                       ; $6cb2: $5c
    ld e, l                                       ; $6cb3: $5d
    ld sp, hl                                     ; $6cb4: $f9
    ld h, h                                       ; $6cb5: $64
    db $f4                                        ; $6cb6: $f4
    adc e                                         ; $6cb7: $8b
    add hl, sp                                    ; $6cb8: $39
    ld d, d                                       ; $6cb9: $52
    sbc e                                         ; $6cba: $9b
    ld de, $dc48                                  ; $6cbb: $11 $48 $dc
    reti                                          ; $6cbe: $d9


    rst $28                                       ; $6cbf: $ef
    ld h, c                                       ; $6cc0: $61
    ld a, [hl]                                    ; $6cc1: $7e
    cp c                                          ; $6cc2: $b9
    ld [hl+], a                                   ; $6cc3: $22
    ld b, a                                       ; $6cc4: $47

jr_06c_6cc5:
    ld [$0076], a                                 ; $6cc5: $ea $76 $00
    rst $20                                       ; $6cc8: $e7
    xor c                                         ; $6cc9: $a9
    sub b                                         ; $6cca: $90
    ld [c], a                                     ; $6ccb: $e2
    ld l, c                                       ; $6ccc: $69
    jr nz, @-$4d                                  ; $6ccd: $20 $b1

    rst $38                                       ; $6ccf: $ff
    ld d, l                                       ; $6cd0: $55
    db $ec                                        ; $6cd1: $ec
    and a                                         ; $6cd2: $a7
    db $e4                                        ; $6cd3: $e4
    and b                                         ; $6cd4: $a0
    call Call_000_2408                            ; $6cd5: $cd $08 $24
    xor $d0                                       ; $6cd8: $ee $d0
    jp z, $0a59                                   ; $6cda: $ca $59 $0a

    ld l, l                                       ; $6cdd: $6d
    jr nz, jr_06c_6c91                            ; $6cde: $20 $b1

    jp z, $3086                                   ; $6ce0: $ca $86 $30

    ld c, d                                       ; $6ce3: $4a
    cp d                                          ; $6ce4: $ba
    jp z, $0d71                                   ; $6ce5: $ca $71 $0d

    ld a, $a5                                     ; $6ce8: $3e $a5
    dec b                                         ; $6cea: $05
    xor l                                         ; $6ceb: $ad
    inc e                                         ; $6cec: $1c
    ld d, a                                       ; $6ced: $57
    add hl, bc                                    ; $6cee: $09
    ld hl, $a22f                                  ; $6cef: $21 $2f $a2
    sbc [hl]                                      ; $6cf2: $9e
    db $dd                                        ; $6cf3: $dd
    ld sp, hl                                     ; $6cf4: $f9
    dec sp                                        ; $6cf5: $3b
    call $e553                                    ; $6cf6: $cd $53 $e5
    add hl, hl                                    ; $6cf9: $29
    ld h, l                                       ; $6cfa: $65
    ccf                                           ; $6cfb: $3f
    ld b, l                                       ; $6cfc: $45
    or $b0                                        ; $6cfd: $f6 $b0
    db $ed                                        ; $6cff: $ed
    nop                                           ; $6d00: $00
    rst $28                                       ; $6d01: $ef
    jp nc, $3bb0                                  ; $6d02: $d2 $b0 $3b

    and $c8                                       ; $6d05: $e6 $c8
    cp $47                                        ; $6d07: $fe $47
    sbc [hl]                                      ; $6d09: $9e
    dec [hl]                                      ; $6d0a: $35
    inc e                                         ; $6d0b: $1c
    rst $08                                       ; $6d0c: $cf
    ld [hl-], a                                   ; $6d0d: $32
    set 1, c                                      ; $6d0e: $cb $c9
    pop de                                        ; $6d10: $d1
    ld h, b                                       ; $6d11: $60
    ld e, l                                       ; $6d12: $5d
    ld sp, hl                                     ; $6d13: $f9
    ld h, h                                       ; $6d14: $64
    db $f4                                        ; $6d15: $f4
    adc e                                         ; $6d16: $8b
    add hl, sp                                    ; $6d17: $39
    ld d, d                                       ; $6d18: $52
    sbc e                                         ; $6d19: $9b
    and a                                         ; $6d1a: $a7
    ld d, h                                       ; $6d1b: $54
    ld l, c                                       ; $6d1c: $69
    dec hl                                        ; $6d1d: $2b
    sbc $63                                       ; $6d1e: $de $63
    ld l, e                                       ; $6d20: $6b
    ld [$37a7], a                                 ; $6d21: $ea $a7 $37
    ld [hl-], a                                   ; $6d24: $32
    ld b, d                                       ; $6d25: $42
    ld l, [hl]                                    ; $6d26: $6e
    dec a                                         ; $6d27: $3d
    rst $18                                       ; $6d28: $df
    xor c                                         ; $6d29: $a9
    dec c                                         ; $6d2a: $0d
    rst $00                                       ; $6d2b: $c7
    db $d3                                        ; $6d2c: $d3
    sub l                                         ; $6d2d: $95
    ld a, [de]                                    ; $6d2e: $1a
    ld h, c                                       ; $6d2f: $61
    and l                                         ; $6d30: $a5
    ld l, e                                       ; $6d31: $6b
    jr nz, jr_06c_6d95                            ; $6d32: $20 $61

    rrca                                          ; $6d34: $0f
    inc h                                         ; $6d35: $24
    ld e, d                                       ; $6d36: $5a
    rst $30                                       ; $6d37: $f7
    ld [hl], h                                    ; $6d38: $74
    add d                                         ; $6d39: $82
    add hl, bc                                    ; $6d3a: $09
    adc d                                         ; $6d3b: $8a
    ld a, b                                       ; $6d3c: $78
    and c                                         ; $6d3d: $a1
    adc [hl]                                      ; $6d3e: $8e
    ld [$19a6], a                                 ; $6d3f: $ea $a6 $19
    jp c, Jump_06c_4610                           ; $6d42: $da $10 $46

    ld c, a                                       ; $6d45: $4f
    db $dd                                        ; $6d46: $dd
    ld c, $37                                     ; $6d47: $0e $37
    ld b, a                                       ; $6d49: $47
    sbc [hl]                                      ; $6d4a: $9e
    push af                                       ; $6d4b: $f5
    cp a                                          ; $6d4c: $bf
    ld d, d                                       ; $6d4d: $52
    or c                                          ; $6d4e: $b1
    sbc a                                         ; $6d4f: $9f
    sub d                                         ; $6d50: $92
    db $eb                                        ; $6d51: $eb
    jp z, $a327                                   ; $6d52: $ca $27 $a3

    ld e, a                                       ; $6d55: $5f
    call z, Call_000_0d91                         ; $6d56: $cc $91 $0d
    ld h, c                                       ; $6d59: $61
    ld l, b                                       ; $6d5a: $68
    jr c, jr_06c_6d74                             ; $6d5b: $38 $17

    ld a, a                                       ; $6d5d: $7f
    and a                                         ; $6d5e: $a7
    pop hl                                        ; $6d5f: $e1
    ld e, b                                       ; $6d60: $58
    ld de, $eb48                                  ; $6d61: $11 $48 $eb
    adc l                                         ; $6d64: $8d
    inc bc                                        ; $6d65: $03
    rra                                           ; $6d66: $1f
    ld sp, $938b                                  ; $6d67: $31 $8b $93
    ld b, e                                       ; $6d6a: $43
    jp $f8b9                                      ; $6d6b: $c3 $b9 $f8


    dec sp                                        ; $6d6e: $3b
    dec c                                         ; $6d6f: $0d
    rst $00                                       ; $6d70: $c7
    or e                                          ; $6d71: $b3
    ld [hl-], a                                   ; $6d72: $32

jr_06c_6d73:
    add hl, de                                    ; $6d73: $19

jr_06c_6d74:
    xor h                                         ; $6d74: $ac
    db $d3                                        ; $6d75: $d3
    ld b, b                                       ; $6d76: $40

Jump_06c_6d77:
    ld h, d                                       ; $6d77: $62
    rst $38                                       ; $6d78: $ff
    inc hl                                        ; $6d79: $23
    rst $08                                       ; $6d7a: $cf
    ld a, d                                       ; $6d7b: $7a
    ld b, c                                       ; $6d7c: $41
    ret nc                                        ; $6d7d: $d0

    db $eb                                        ; $6d7e: $eb
    inc de                                        ; $6d7f: $13
    inc hl                                        ; $6d80: $23
    ld l, l                                       ; $6d81: $6d
    dec sp                                        ; $6d82: $3b
    nop                                           ; $6d83: $00
    ld d, a                                       ; $6d84: $57
    jp nc, $f0f2                                  ; $6d85: $d2 $f2 $f0

    db $d3                                        ; $6d88: $d3
    db $eb                                        ; $6d89: $eb
    inc de                                        ; $6d8a: $13
    inc hl                                        ; $6d8b: $23
    ld c, l                                       ; $6d8c: $4d
    ret nc                                        ; $6d8d: $d0

    ld c, c                                       ; $6d8e: $49
    db $fd                                        ; $6d8f: $fd
    adc a                                         ; $6d90: $8f
    inc a                                         ; $6d91: $3c
    ld l, e                                       ; $6d92: $6b
    jr c, @-$60                                   ; $6d93: $38 $9e

jr_06c_6d95:
    ld a, l                                       ; $6d95: $7d
    ld b, h                                       ; $6d96: $44
    ld h, d                                       ; $6d97: $62
    reti                                          ; $6d98: $d9


    inc hl                                        ; $6d99: $23
    push af                                       ; $6d9a: $f5
    call z, $a6d1                                 ; $6d9b: $cc $d1 $a6
    sbc [hl]                                      ; $6d9e: $9e
    ld c, l                                       ; $6d9f: $4d
    xor [hl]                                      ; $6da0: $ae
    ld [de], a                                    ; $6da1: $12
    cp e                                          ; $6da2: $bb
    rst $20                                       ; $6da3: $e7
    or d                                          ; $6da4: $b2
    rst $18                                       ; $6da5: $df
    reti                                          ; $6da6: $d9


    ld c, $6f                                     ; $6da7: $0e $6f
    xor a                                         ; $6da9: $af
    db $db                                        ; $6daa: $db
    ld [hl], h                                    ; $6dab: $74
    dec c                                         ; $6dac: $0d
    inc h                                         ; $6dad: $24
    halt                                          ; $6dae: $76
    ld a, d                                       ; $6daf: $7a
    inc hl                                        ; $6db0: $23
    inc hl                                        ; $6db1: $23
    ld h, h                                       ; $6db2: $64
    di                                            ; $6db3: $f3
    rst $28                                       ; $6db4: $ef
    db $f4                                        ; $6db5: $f4
    inc [hl]                                      ; $6db6: $34
    ld a, [de]                                    ; $6db7: $1a
    ld d, c                                       ; $6db8: $51
    rst $08                                       ; $6db9: $cf

Jump_06c_6dba:
    and $95                                       ; $6dba: $e6 $95
    ld c, a                                       ; $6dbc: $4f
    jp hl                                         ; $6dbd: $e9


    add d                                         ; $6dbe: $82
    ld l, e                                       ; $6dbf: $6b
    jr nz, jr_06c_6d73                            ; $6dc0: $20 $b1

    ld sp, hl                                     ; $6dc2: $f9
    ld [hl], a                                    ; $6dc3: $77
    xor d                                         ; $6dc4: $aa
    db $fc                                        ; $6dc5: $fc
    ld e, $f5                                     ; $6dc6: $1e $f5
    add sp, -$73                                  ; $6dc8: $e8 $8d
    ret                                           ; $6dca: $c9


    ld c, d                                       ; $6dcb: $4a
    ld e, e                                       ; $6dcc: $5b
    add hl, de                                    ; $6dcd: $19
    add d                                         ; $6dce: $82
    ld a, [hl]                                    ; $6dcf: $7e
    rra                                           ; $6dd0: $1f
    call c, Call_06c_6240                         ; $6dd1: $dc $40 $62
    cp c                                          ; $6dd4: $b9
    or e                                          ; $6dd5: $b3
    rla                                           ; $6dd6: $17
    ld a, [hl-]                                   ; $6dd7: $3a
    push af                                       ; $6dd8: $f5
    rr b                                          ; $6dd9: $cb $18
    rst $00                                       ; $6ddb: $c7
    ld [$0951], a                                 ; $6ddc: $ea $51 $09
    push bc                                       ; $6ddf: $c5
    halt                                          ; $6de0: $76
    nop                                           ; $6de1: $00
    rra                                           ; $6de2: $1f
    rst $30                                       ; $6de3: $f7
    ld b, [hl]                                    ; $6de4: $46
    ld b, [hl]                                    ; $6de5: $46
    ret z                                         ; $6de6: $c8

    jp z, $cac9                                   ; $6de7: $ca $c9 $ca

    ld d, e                                       ; $6dea: $53
    ld h, d                                       ; $6deb: $62
    dec e                                         ; $6dec: $1d
    dec bc                                        ; $6ded: $0b
    push de                                       ; $6dee: $d5
    and h                                         ; $6def: $a4
    ld de, $1db6                                  ; $6df0: $11 $b6 $1d
    rst $20                                       ; $6df3: $e7
    xor c                                         ; $6df4: $a9
    and a                                         ; $6df5: $a7
    pop de                                        ; $6df6: $d1
    ld [$a85b], sp                                ; $6df7: $08 $5b $a8
    ld h, a                                       ; $6dfa: $67
    ld de, $b31a                                  ; $6dfb: $11 $1a $b3
    and a                                         ; $6dfe: $a7
    dec d                                         ; $6dff: $15
    dec d                                         ; $6e00: $15
    pop hl                                        ; $6e01: $e1
    ld [hl], $ad                                  ; $6e02: $36 $ad
    ld b, [hl]                                    ; $6e04: $46
    sub c                                         ; $6e05: $91
    xor l                                         ; $6e06: $ad
    inc de                                        ; $6e07: $13
    dec c                                         ; $6e08: $0d
    add hl, sp                                    ; $6e09: $39
    ld [hl], d                                    ; $6e0a: $72
    dec sp                                        ; $6e0b: $3b
    nop                                           ; $6e0c: $00
    rst $20                                       ; $6e0d: $e7
    xor d                                         ; $6e0e: $aa
    ld l, h                                       ; $6e0f: $6c
    and $e9                                       ; $6e10: $e6 $e9
    ld e, $b9                                     ; $6e12: $1e $b9
    and [hl]                                      ; $6e14: $a6
    sub c                                         ; $6e15: $91
    xor [hl]                                      ; $6e16: $ae
    ld d, d                                       ; $6e17: $52
    call z, $5365                                 ; $6e18: $cc $65 $53
    rst $08                                       ; $6e1b: $cf
    adc $7f                                       ; $6e1c: $ce $7f
    ld a, [de]                                    ; $6e1e: $1a
    adc [hl]                                      ; $6e1f: $8e
    scf                                           ; $6e20: $37
    ld l, [hl]                                    ; $6e21: $6e
    rlca                                          ; $6e22: $07
    rst $10                                       ; $6e23: $d7
    sbc b                                         ; $6e24: $98
    cp d                                          ; $6e25: $ba
    call z, Call_06c_4efd                         ; $6e26: $cc $fd $4e
    dec e                                         ; $6e29: $1d
    db $eb                                        ; $6e2a: $eb
    sub a                                         ; $6e2b: $97
    ld a, [hl+]                                   ; $6e2c: $2a
    dec de                                        ; $6e2d: $1b
    ld c, b                                       ; $6e2e: $48
    xor h                                         ; $6e2f: $ac
    or d                                          ; $6e30: $b2
    ld c, h                                       ; $6e31: $4c
    sub l                                         ; $6e32: $95
    ld h, d                                       ; $6e33: $62
    ret z                                         ; $6e34: $c8

    pop bc                                        ; $6e35: $c1
    ld l, $86                                     ; $6e36: $2e $86
    dec [hl]                                      ; $6e38: $35
    cp c                                          ; $6e39: $b9
    cp $97                                        ; $6e3a: $fe $97
    or a                                          ; $6e3c: $b7
    xor c                                         ; $6e3d: $a9
    ld h, a                                       ; $6e3e: $67
    jp $f8b9                                      ; $6e3f: $c3 $b9 $f8


    dec sp                                        ; $6e42: $3b
    sub l                                         ; $6e43: $95
    ld h, d                                       ; $6e44: $62
    xor [hl]                                      ; $6e45: $ae
    ld de, $3934                                  ; $6e46: $11 $34 $39
    ld d, h                                       ; $6e49: $54
    adc $52                                       ; $6e4a: $ce $52
    sub h                                         ; $6e4c: $94
    ld sp, hl                                     ; $6e4d: $f9
    ld h, h                                       ; $6e4e: $64
    cp b                                          ; $6e4f: $b8
    ld [$2e8f], sp                                ; $6e50: $08 $8f $2e
    inc d                                         ; $6e53: $14
    ld [hl], d                                    ; $6e54: $72
    ld [hl], d                                    ; $6e55: $72
    and h                                         ; $6e56: $a4
    and h                                         ; $6e57: $a4
    ld l, l                                       ; $6e58: $6d
    rlca                                          ; $6e59: $07
    rst $20                                       ; $6e5a: $e7
    xor c                                         ; $6e5b: $a9
    and a                                         ; $6e5c: $a7
    pop de                                        ; $6e5d: $d1
    ld [$a85b], sp                                ; $6e5e: $08 $5b $a8
    ld h, a                                       ; $6e61: $67
    ld de, $b31a                                  ; $6e62: $11 $1a $b3
    and a                                         ; $6e65: $a7
    dec d                                         ; $6e66: $15
    dec d                                         ; $6e67: $15
    pop hl                                        ; $6e68: $e1
    ld [hl], $ad                                  ; $6e69: $36 $ad
    ret                                           ; $6e6b: $c9


    and c                                         ; $6e6c: $a1
    pop hl                                        ; $6e6d: $e1
    ld e, h                                       ; $6e6e: $5c
    db $fc                                        ; $6e6f: $fc
    sbc l                                         ; $6e70: $9d
    ld a, d                                       ; $6e71: $7a
    ld d, [hl]                                    ; $6e72: $56
    ld h, $43                                     ; $6e73: $26 $43
    jp $40b1                                      ; $6e75: $c3 $b1 $40


    ld h, d                                       ; $6e78: $62
    ld b, a                                       ; $6e79: $47
    adc e                                         ; $6e7a: $8b
    dec a                                         ; $6e7b: $3d
    push hl                                       ; $6e7c: $e5
    pop de                                        ; $6e7d: $d1
    ld a, d                                       ; $6e7e: $7a
    db $f4                                        ; $6e7f: $f4
    add $64                                       ; $6e80: $c6 $64
    and l                                         ; $6e82: $a5
    xor l                                         ; $6e83: $ad
    adc h                                         ; $6e84: $8c
    cp $d7                                        ; $6e85: $fe $d7
    sbc a                                         ; $6e87: $9f
    xor [hl]                                      ; $6e88: $ae
    ld d, h                                       ; $6e89: $54
    ld hl, $90cc                                  ; $6e8a: $21 $cc $90
    db $fd                                        ; $6e8d: $fd
    sub h                                         ; $6e8e: $94
    xor [hl]                                      ; $6e8f: $ae
    ld l, [hl]                                    ; $6e90: $6e
    cp c                                          ; $6e91: $b9
    and $d1                                       ; $6e92: $e6 $d1
    jp z, $a331                                   ; $6e94: $ca $31 $a3

    rra                                           ; $6e97: $1f
    and e                                         ; $6e98: $a3
    ld l, [hl]                                    ; $6e99: $6e
    rlca                                          ; $6e9a: $07
    sbc a                                         ; $6e9b: $9f
    ld sp, $3647                                  ; $6e9c: $31 $47 $36
    rst $38                                       ; $6e9f: $ff
    ld c, [hl]                                    ; $6ea0: $4e
    ld b, l                                       ; $6ea1: $45
    cp b                                          ; $6ea2: $b8
    ld c, l                                       ; $6ea3: $4d
    xor e                                         ; $6ea4: $ab
    ld c, e                                       ; $6ea5: $4b
    dec hl                                        ; $6ea6: $2b
    and d                                         ; $6ea7: $a2
    ld b, d                                       ; $6ea8: $42
    sbc h                                         ; $6ea9: $9c
    ld d, d                                       ; $6eaa: $52
    cp [hl]                                       ; $6eab: $be
    ld [$af41], sp                                ; $6eac: $08 $41 $af
    ld c, a                                       ; $6eaf: $4f
    adc h                                         ; $6eb0: $8c
    or h                                          ; $6eb1: $b4
    db $ed                                        ; $6eb2: $ed
    nop                                           ; $6eb3: $00
    rst $20                                       ; $6eb4: $e7
    ld a, [de]                                    ; $6eb5: $1a
    jp nc, $f9a6                                  ; $6eb6: $d2 $a6 $f9

    ld [hl], a                                    ; $6eb9: $77
    ld [$0669], a                                 ; $6eba: $ea $69 $06
    rlca                                          ; $6ebd: $07
    ld l, e                                       ; $6ebe: $6b
    add [hl]                                      ; $6ebf: $86
    ld b, a                                       ; $6ec0: $47
    push hl                                       ; $6ec1: $e5
    cp b                                          ; $6ec2: $b8
    add hl, hl                                    ; $6ec3: $29
    ld d, e                                       ; $6ec4: $53
    sub l                                         ; $6ec5: $95
    ld l, $34                                     ; $6ec6: $2e $34

Call_06c_6ec8:
    ld d, [hl]                                    ; $6ec8: $56
    add h                                         ; $6ec9: $84
    adc e                                         ; $6eca: $8b
    or e                                          ; $6ecb: $b3
    dec e                                         ; $6ecc: $1d
    rst $10                                       ; $6ecd: $d7
    sbc b                                         ; $6ece: $98
    ld a, [hl+]                                   ; $6ecf: $2a
    or c                                          ; $6ed0: $b1
    ld a, e                                       ; $6ed1: $7b
    ld l, $fb                                     ; $6ed2: $2e $fb
    sbc l                                         ; $6ed4: $9d
    ld e, [hl]                                    ; $6ed5: $5e
    xor b                                         ; $6ed6: $a8
    jp $eed2                                      ; $6ed7: $c3 $d2 $ee


    ld c, c                                       ; $6eda: $49
    and e                                         ; $6edb: $a3
    adc l                                         ; $6edc: $8d
    ld c, [hl]                                    ; $6edd: $4e
    db $fd                                        ; $6ede: $fd
    inc [hl]                                      ; $6edf: $34
    sub b                                         ; $6ee0: $90
    ret c                                         ; $6ee1: $d8

    jr c, jr_06c_6f62                             ; $6ee2: $38 $7e

    or h                                          ; $6ee4: $b4
    and e                                         ; $6ee5: $a3
    sbc l                                         ; $6ee6: $9d
    inc d                                         ; $6ee7: $14
    ld l, l                                       ; $6ee8: $6d
    ld [hl], h                                    ; $6ee9: $74
    db $eb                                        ; $6eea: $eb
    call Call_06c_6791                            ; $6eeb: $cd $91 $67
    push af                                       ; $6eee: $f5
    db $fc                                        ; $6eef: $fc
    cpl                                           ; $6ef0: $2f
    ld [hl], h                                    ; $6ef1: $74
    ld c, a                                       ; $6ef2: $4f
    ld a, [de]                                    ; $6ef3: $1a
    dec c                                         ; $6ef4: $0d
    sub $a9                                       ; $6ef5: $d6 $a9
    ld [hl-], a                                   ; $6ef7: $32
    dec [hl]                                      ; $6ef8: $35
    jp nz, Jump_000_2f09                          ; $6ef9: $c2 $09 $2f

    cp b                                          ; $6efc: $b8
    db $ed                                        ; $6efd: $ed
    nop                                           ; $6efe: $00
    rst $10                                       ; $6eff: $d7
    sbc b                                         ; $6f00: $98

Jump_06c_6f01:
    or h                                          ; $6f01: $b4
    set 3, h                                      ; $6f02: $cb $dc
    rst $28                                       ; $6f04: $ef
    ld l, b                                       ; $6f05: $68
    db $fd                                        ; $6f06: $fd
    cp d                                          ; $6f07: $ba
    ld c, l                                       ; $6f08: $4d
    rst $10                                       ; $6f09: $d7
    ld b, b                                       ; $6f0a: $40
    ld h, d                                       ; $6f0b: $62
    ld l, a                                       ; $6f0c: $6f
    ld h, h                                       ; $6f0d: $64
    add h                                         ; $6f0e: $84
    db $ec                                        ; $6f0f: $ec
    add l                                         ; $6f10: $85
    add $df                                       ; $6f11: $c6 $df
    xor c                                         ; $6f13: $a9
    and l                                         ; $6f14: $a5
    push hl                                       ; $6f15: $e5
    ld a, [de]                                    ; $6f16: $1a
    ld c, b                                       ; $6f17: $48
    ret z                                         ; $6f18: $c8

    ld [hl], c                                    ; $6f19: $71
    ld a, [de]                                    ; $6f1a: $1a
    jp nz, $b928                                  ; $6f1b: $c2 $28 $b9

    dec e                                         ; $6f1e: $1d
    sub a                                         ; $6f1f: $97
    db $d3                                        ; $6f20: $d3
    ld c, $ad                                     ; $6f21: $0e $ad
    sbc a                                         ; $6f23: $9f
    ld e, [hl]                                    ; $6f24: $5e
    or a                                          ; $6f25: $b7
    push hl                                       ; $6f26: $e5
    cp b                                          ; $6f27: $b8
    ld l, h                                       ; $6f28: $6c
    ld a, d                                       ; $6f29: $7a
    add hl, sp                                    ; $6f2a: $39
    rst $08                                       ; $6f2b: $cf
    dec hl                                        ; $6f2c: $2b
    db $fd                                        ; $6f2d: $fd
    call z, $5590                                 ; $6f2e: $cc $90 $55
    or h                                          ; $6f31: $b4
    ld c, [hl]                                    ; $6f32: $4e
    ret                                           ; $6f33: $c9


    ld [hl], b                                    ; $6f34: $70
    pop af                                        ; $6f35: $f1
    ld [hl], a                                    ; $6f36: $77
    inc b                                         ; $6f37: $04
    cp l                                          ; $6f38: $bd
    ld a, $17                                     ; $6f39: $3e $17
    rst $28                                       ; $6f3b: $ef
    and l                                         ; $6f3c: $a5
    ld a, [bc]                                    ; $6f3d: $0a
    ld a, [$570e]                                 ; $6f3e: $fa $0e $57
    ld e, h                                       ; $6f41: $5c
    rla                                           ; $6f42: $17
    ld b, a                                       ; $6f43: $47
    dec b                                         ; $6f44: $05
    cp l                                          ; $6f45: $bd
    cp d                                          ; $6f46: $ba
    inc [hl]                                      ; $6f47: $34
    sbc $63                                       ; $6f48: $de $63
    dec bc                                        ; $6f4a: $0b
    push af                                       ; $6f4b: $f5
    add sp, -$4b                                  ; $6f4c: $e8 $b5
    ldh [$d3], a                                  ; $6f4e: $e0 $d3
    sub d                                         ; $6f50: $92
    db $10                                        ; $6f51: $10

jr_06c_6f52:
    db $f4                                        ; $6f52: $f4
    ld a, [hl+]                                   ; $6f53: $2a
    ld c, l                                       ; $6f54: $4d
    jr c, jr_06c_6f52                             ; $6f55: $38 $fb

    sbc h                                         ; $6f57: $9c
    ld d, $04                                     ; $6f58: $16 $04
    ld a, l                                       ; $6f5a: $7d
    sbc e                                         ; $6f5b: $9b
    ld [hl+], a                                   ; $6f5c: $22
    ld a, [hl+]                                   ; $6f5d: $2a
    ld a, d                                       ; $6f5e: $7a
    ld h, l                                       ; $6f5f: $65
    ld [hl], d                                    ; $6f60: $72
    inc [hl]                                      ; $6f61: $34

jr_06c_6f62:
    inc d                                         ; $6f62: $14
    jp c, Jump_000_16cb                           ; $6f63: $da $cb $16

    xor c                                         ; $6f66: $a9
    push af                                       ; $6f67: $f5
    ret nc                                        ; $6f68: $d0

    ld a, [hl]                                    ; $6f69: $7e
    ld h, [hl]                                    ; $6f6a: $66
    db $fc                                        ; $6f6b: $fc
    ld b, e                                       ; $6f6c: $43
    set 3, [hl]                                   ; $6f6d: $cb $de
    cp h                                          ; $6f6f: $bc
    ld l, a                                       ; $6f70: $6f
    or [hl]                                       ; $6f71: $b6
    inc bc                                        ; $6f72: $03
    scf                                           ; $6f73: $37
    ld b, a                                       ; $6f74: $47
    sbc [hl]                                      ; $6f75: $9e
    push de                                       ; $6f76: $d5
    di                                            ; $6f77: $f3
    ld c, a                                       ; $6f78: $4f
    ld e, e                                       ; $6f79: $5b
    xor b                                         ; $6f7a: $a8
    or d                                          ; $6f7b: $b2
    ld [$aa8d], sp                                ; $6f7c: $08 $8d $aa
    or b                                          ; $6f7f: $b0
    or d                                          ; $6f80: $b2
    call z, Call_06c_7272                         ; $6f81: $cc $72 $72
    inc [hl]                                      ; $6f84: $34
    ld e, b                                       ; $6f85: $58
    dec [hl]                                      ; $6f86: $35
    and c                                         ; $6f87: $a1
    and c                                         ; $6f88: $a1
    db $dd                                        ; $6f89: $dd
    ld [hl], e                                    ; $6f8a: $73
    ld l, e                                       ; $6f8b: $6b
    add hl, sp                                    ; $6f8c: $39
    inc d                                         ; $6f8d: $14
    ld l, c                                       ; $6f8e: $69
    rst $00                                       ; $6f8f: $c7
    halt                                          ; $6f90: $76
    nop                                           ; $6f91: $00
    scf                                           ; $6f92: $37
    ret c                                         ; $6f93: $d8

    rst $38                                       ; $6f94: $ff
    ret z                                         ; $6f95: $c8

    or e                                          ; $6f96: $b3
    and $df                                       ; $6f97: $e6 $df
    xor c                                         ; $6f99: $a9
    ld b, d                                       ; $6f9a: $42
    ret z                                         ; $6f9b: $c8

    ld b, $12                                     ; $6f9c: $06 $12
    sub [hl]                                      ; $6f9e: $96
    ld d, $5a                                     ; $6f9f: $16 $5a
    ld c, l                                       ; $6fa1: $4d
    ret nc                                        ; $6fa2: $d0

    ld [hl+], a                                   ; $6fa3: $22
    db $ed                                        ; $6fa4: $ed
    ld d, b                                       ; $6fa5: $50
    ld b, c                                       ; $6fa6: $41
    db $fd                                        ; $6fa7: $fd

jr_06c_6fa8:
    ld e, c                                       ; $6fa8: $59
    sub e                                         ; $6fa9: $93
    ld b, e                                       ; $6faa: $43
    ld h, a                                       ; $6fab: $67
    rla                                           ; $6fac: $17
    jp Jump_06c_79a3                              ; $6fad: $c3 $a3 $79


    ld a, [de]                                    ; $6fb0: $1a
    ld c, b                                       ; $6fb1: $48
    ldh a, [$36]                                  ; $6fb2: $f0 $36
    push af                                       ; $6fb4: $f5
    inc l                                         ; $6fb5: $2c
    cp $4b                                        ; $6fb6: $fe $4b
    ld b, a                                       ; $6fb8: $47
    sbc e                                         ; $6fb9: $9b
    ld d, c                                       ; $6fba: $51
    push bc                                       ; $6fbb: $c5
    adc [hl]                                      ; $6fbc: $8e
    jp z, Jump_000_2971                           ; $6fbd: $ca $71 $29

    ld h, e                                       ; $6fc0: $63
    xor a                                         ; $6fc1: $af
    ld h, a                                       ; $6fc2: $67
    dec [hl]                                      ; $6fc3: $35
    and c                                         ; $6fc4: $a1
    ld [de], a                                    ; $6fc5: $12
    adc d                                         ; $6fc6: $8a
    db $ed                                        ; $6fc7: $ed
    nop                                           ; $6fc8: $00
    rst $20                                       ; $6fc9: $e7
    xor c                                         ; $6fca: $a9
    call nc, $a938                                ; $6fcb: $d4 $38 $a9
    xor b                                         ; $6fce: $a8

jr_06c_6fcf:
    add h                                         ; $6fcf: $84
    ld e, e                                       ; $6fd0: $5b
    ld e, c                                       ; $6fd1: $59
    inc a                                         ; $6fd2: $3c
    push af                                       ; $6fd3: $f5
    jr z, jr_06c_6fa8                             ; $6fd4: $28 $d2

    adc [hl]                                      ; $6fd6: $8e
    ld a, d                                       ; $6fd7: $7a

jr_06c_6fd8:
    or $2a                                        ; $6fd8: $f6 $2a
    ld c, l                                       ; $6fda: $4d
    jr c, jr_06c_6fd8                             ; $6fdb: $38 $fb

    sbc h                                         ; $6fdd: $9c
    ld d, $b6                                     ; $6fde: $16 $b6
    sbc [hl]                                      ; $6fe0: $9e
    rst $28                                       ; $6fe1: $ef
    ret nc                                        ; $6fe2: $d0

    ld b, d                                       ; $6fe3: $42
    ld c, [hl]                                    ; $6fe4: $4e
    adc [hl]                                      ; $6fe5: $8e
    sub h                                         ; $6fe6: $94
    ld [hl], h                                    ; $6fe7: $74
    push af                                       ; $6fe8: $f5
    db $d3                                        ; $6fe9: $d3
    dec e                                         ; $6fea: $1d
    ld a, [hl]                                    ; $6feb: $7e
    ld [$d159], a                                 ; $6fec: $ea $59 $d1
    jr jr_06c_6ff5                                ; $6fef: $18 $04

    call Call_06c_52d0                            ; $6ff1: $cd $d0 $52
    ld h, e                                       ; $6ff4: $63

jr_06c_6ff5:
    ld [de], a                                    ; $6ff5: $12
    ld b, c                                       ; $6ff6: $41
    db $eb                                        ; $6ff7: $eb
    reti                                          ; $6ff8: $d9


    ld [hl], b                                    ; $6ff9: $70
    ld b, a                                       ; $6ffa: $47
    adc [hl]                                      ; $6ffb: $8e
    ret nc                                        ; $6ffc: $d0

    db $ed                                        ; $6ffd: $ed
    nop                                           ; $6ffe: $00
    rst $20                                       ; $6fff: $e7
    xor c                                         ; $7000: $a9
    call nc, $a938                                ; $7001: $d4 $38 $a9
    and c                                         ; $7004: $a1
    adc l                                         ; $7005: $8d
    ld c, h                                       ; $7006: $4c
    add [hl]                                      ; $7007: $86
    db $ec                                        ; $7008: $ec
    and a                                         ; $7009: $a7
    ld hl, $5477                                  ; $700a: $21 $77 $54
    xor $50                                       ; $700d: $ee $50
    ld h, l                                       ; $700f: $65
    dec a                                         ; $7010: $3d
    ei                                            ; $7011: $fb
    ld c, $57                                     ; $7012: $0e $57
    ld e, h                                       ; $7014: $5c
    rla                                           ; $7015: $17
    ld b, a                                       ; $7016: $47
    or a                                          ; $7017: $b7
    ld e, [hl]                                    ; $7018: $5e
    sub [hl]                                      ; $7019: $96
    ld [c], a                                     ; $701a: $e2
    ld l, c                                       ; $701b: $69
    jr nz, jr_06c_6fcf                            ; $701c: $20 $b1

    call c, $d151                                 ; $701e: $dc $51 $d1
    sub d                                         ; $7021: $92
    ld l, b                                       ; $7022: $68
    sbc [hl]                                      ; $7023: $9e
    ld a, [hl+]                                   ; $7024: $2a
    ld c, a                                       ; $7025: $4f
    add hl, hl                                    ; $7026: $29
    ei                                            ; $7027: $fb
    add hl, hl                                    ; $7028: $29
    or d                                          ; $7029: $b2
    add a                                         ; $702a: $87
    ld l, l                                       ; $702b: $6d
    rlca                                          ; $702c: $07
    adc a                                         ; $702d: $8f
    cp h                                          ; $702e: $bc
    ld c, l                                       ; $702f: $4d
    ld de, $bd15                                  ; $7030: $11 $15 $bd
    ld [hl-], a                                   ; $7033: $32
    add hl, sp                                    ; $7034: $39
    ld a, [de]                                    ; $7035: $1a
    ld a, [bc]                                    ; $7036: $0a
    db $ed                                        ; $7037: $ed
    ld h, l                                       ; $7038: $65
    adc e                                         ; $7039: $8b
    call nc, Call_06c_687a                        ; $703a: $d4 $7a $68
    ccf                                           ; $703d: $3f
    inc sp                                        ; $703e: $33
    cp $a1                                        ; $703f: $fe $a1
    adc a                                         ; $7041: $8f
    inc [hl]                                      ; $7042: $34
    add h                                         ; $7043: $84
    ld d, c                                       ; $7044: $51
    or d                                          ; $7045: $b2
    ld d, b                                       ; $7046: $50
    ld c, l                                       ; $7047: $4d
    ld a, [de]                                    ; $7048: $1a
    pop hl                                        ; $7049: $e1
    rst $00                                       ; $704a: $c7
    inc b                                         ; $704b: $04
    call $f3bf                                    ; $704c: $cd $bf $f3
    ld b, [hl]                                    ; $704f: $46
    cpl                                           ; $7050: $2f
    ld l, e                                       ; $7051: $6b
    sub c                                         ; $7052: $91
    halt                                          ; $7053: $76
    ld l, b                                       ; $7054: $68
    ld hl, $4727                                  ; $7055: $21 $27 $47
    ld c, d                                       ; $7058: $4a
    cp d                                          ; $7059: $ba
    and $69                                       ; $705a: $e6 $69
    and h                                         ; $705c: $a4
    ld c, c                                       ; $705d: $49
    ld l, $9b                                     ; $705e: $2e $9b

Jump_06c_7060:
    ld [hl+], a                                   ; $7060: $22
    ld a, e                                       ; $7061: $7b
    ret c                                         ; $7062: $d8

    halt                                          ; $7063: $76
    nop                                           ; $7064: $00
    rra                                           ; $7065: $1f
    db $fd                                        ; $7066: $fd
    ld c, [hl]                                    ; $7067: $4e
    ld a, c                                       ; $7068: $79
    ld l, e                                       ; $7069: $6b
    ld l, c                                       ; $706a: $69
    ld h, h                                       ; $706b: $64
    inc sp                                        ; $706c: $33
    or e                                          ; $706d: $b3
    jr c, jr_06c_70a9                             ; $706e: $38 $39

    ld d, h                                       ; $7070: $54
    xor $50                                       ; $7071: $ee $50
    ld h, l                                       ; $7073: $65
    di                                            ; $7074: $f3
    inc [hl]                                      ; $7075: $34
    ld e, h                                       ; $7076: $5c
    ld a, [hl-]                                   ; $7077: $3a
    adc l                                         ; $7078: $8d
    rla                                           ; $7079: $17
    call z, $db38                                 ; $707a: $cc $38 $db
    ld bc, $b597                                  ; $707d: $01 $97 $b5
    ld c, b                                       ; $7080: $48
    dec sp                                        ; $7081: $3b
    or h                                          ; $7082: $b4
    ld a, [hl]                                    ; $7083: $7e
    ld a, [de]                                    ; $7084: $1a
    jp c, Jump_06c_5c72                           ; $7085: $da $72 $5c

    ld [hl], $45                                  ; $7088: $36 $45
    sbc [hl]                                      ; $708a: $9e
    ld d, d                                       ; $708b: $52
    db $e3                                        ; $708c: $e3
    rst $28                                       ; $708d: $ef
    ld [hl], h                                    ; $708e: $74
    ld e, a                                       ; $708f: $5f
    ld a, [de]                                    ; $7090: $1a
    pop hl                                        ; $7091: $e1
    and c                                         ; $7092: $a1
    call Call_06c_40d3                            ; $7093: $cd $d3 $40
    add d                                         ; $7096: $82
    or a                                          ; $7097: $b7
    xor c                                         ; $7098: $a9
    ld h, a                                       ; $7099: $67
    pop af                                        ; $709a: $f1
    ld e, a                                       ; $709b: $5f
    ld a, [hl-]                                   ; $709c: $3a
    jp c, Jump_06c_5466                           ; $709d: $da $66 $54

    or c                                          ; $70a0: $b1
    and e                                         ; $70a1: $a3
    ld [hl], d                                    ; $70a2: $72
    ld e, h                                       ; $70a3: $5c
    jp z, $ebd8                                   ; $70a4: $ca $d8 $eb

    pop de                                        ; $70a7: $d1
    ld [hl], a                                    ; $70a8: $77

jr_06c_70a9:
    ld l, l                                       ; $70a9: $6d

jr_06c_70aa:
    adc c                                         ; $70aa: $89
    ld d, [hl]                                    ; $70ab: $56
    cp [hl]                                       ; $70ac: $be
    rst $00                                       ; $70ad: $c7
    ld d, $b6                                     ; $70ae: $16 $b6
    inc bc                                        ; $70b0: $03
    rst $10                                       ; $70b1: $d7
    rst $20                                       ; $70b2: $e7
    ld [c], a                                     ; $70b3: $e2
    cp l                                          ; $70b4: $bd
    call nc, Call_000_285e                        ; $70b5: $d4 $5e $28
    ld a, d                                       ; $70b8: $7a
    ld a, a                                       ; $70b9: $7f
    ld e, [hl]                                    ; $70ba: $5e
    ld [de], a                                    ; $70bb: $12
    ld b, l                                       ; $70bc: $45
    jp c, Jump_06c_40d1                           ; $70bd: $da $d1 $40

    ld h, d                                       ; $70c0: $62
    ld hl, $4727                                  ; $70c1: $21 $27 $47
    ld c, d                                       ; $70c4: $4a
    ld d, $81                                     ; $70c5: $16 $81
    or h                                          ; $70c7: $b4
    ld c, d                                       ; $70c8: $4a
    daa                                           ; $70c9: $27
    call nz, Call_000_35ba                        ; $70ca: $c4 $ba $35
    db $db                                        ; $70cd: $db
    ld bc, $a9e7                                  ; $70ce: $01 $e7 $a9
    and a                                         ; $70d1: $a7
    pop de                                        ; $70d2: $d1
    ld [$a85b], sp                                ; $70d3: $08 $5b $a8
    ld h, a                                       ; $70d6: $67
    inc hl                                        ; $70d7: $23
    xor l                                         ; $70d8: $ad
    ld c, $4b                                     ; $70d9: $0e $4b
    adc e                                         ; $70db: $8b
    or h                                          ; $70dc: $b4
    ld b, e                                       ; $70dd: $43
    sbc e                                         ; $70de: $9b
    and c                                         ; $70df: $a1
    ld [hl], l                                    ; $70e0: $75
    ld d, b                                       ; $70e1: $50

jr_06c_70e2:
    scf                                           ; $70e2: $37
    ld h, [hl]                                    ; $70e3: $66
    ret nc                                        ; $70e4: $d0

    xor l                                         ; $70e5: $ad
    rst $28                                       ; $70e6: $ef
    inc l                                         ; $70e7: $2c
    adc c                                         ; $70e8: $89
    add [hl]                                      ; $70e9: $86
    or h                                          ; $70ea: $b4
    jr c, jr_06c_70e2                             ; $70eb: $38 $f5

    xor b                                         ; $70ed: $a8
    ld e, e                                       ; $70ee: $5b

jr_06c_70ef:
    ld e, c                                       ; $70ef: $59
    adc h                                         ; $70f0: $8c
    ld c, d                                       ; $70f1: $4a
    jr z, jr_06c_70aa                             ; $70f2: $28 $b6

    inc bc                                        ; $70f4: $03
    rra                                           ; $70f5: $1f
    db $fd                                        ; $70f6: $fd
    ld c, [hl]                                    ; $70f7: $4e
    ld a, c                                       ; $70f8: $79
    ld l, e                                       ; $70f9: $6b
    ld l, c                                       ; $70fa: $69
    and h                                         ; $70fb: $a4
    xor e                                         ; $70fc: $ab
    call c, Call_06c_4aa1                         ; $70fd: $dc $a1 $4a
    dec l                                         ; $7100: $2d
    ld [bc], a                                    ; $7101: $02
    ld l, c                                       ; $7102: $69
    dec [hl]                                      ; $7103: $35
    ld c, a                                       ; $7104: $4f
    db $e3                                        ; $7105: $e3
    dec b                                         ; $7106: $05
    inc sp                                        ; $7107: $33
    adc $76                                       ; $7108: $ce $76
    nop                                           ; $710a: $00
    sub a                                         ; $710b: $97
    db $eb                                        ; $710c: $eb
    or b                                          ; $710d: $b0
    add $16                                       ; $710e: $c6 $16
    ld [$45a1], a                                 ; $7110: $ea $a1 $45
    jp c, $f5a1                                   ; $7113: $da $a1 $f5

    db $d3                                        ; $7116: $d3
    ret nc                                        ; $7117: $d0

    sub [hl]                                      ; $7118: $96
    db $e3                                        ; $7119: $e3
    or d                                          ; $711a: $b2
    add hl, hl                                    ; $711b: $29
    ld a, [c]                                     ; $711c: $f2
    inc d                                         ; $711d: $14
    ld [hl], d                                    ; $711e: $72
    ld [hl], d                                    ; $711f: $72
    and h                                         ; $7120: $a4
    and h                                         ; $7121: $a4
    ld l, e                                       ; $7122: $6b
    ld e, $2d                                     ; $7123: $1e $2d
    or d                                          ; $7125: $b2
    add a                                         ; $7126: $87
    ld d, c                                       ; $7127: $51
    db $eb                                        ; $7128: $eb
    ld e, c                                       ; $7129: $59
    cp c                                          ; $712a: $b9
    inc e                                         ; $712b: $1c
    inc b                                         ; $712c: $04
    push hl                                       ; $712d: $e5
    dec l                                         ; $712e: $2d
    ret                                           ; $712f: $c9


    jr c, jr_06c_70ef                             ; $7130: $38 $bd

    ld a, $17                                     ; $7132: $3e $17
    rst $28                                       ; $7134: $ef
    and l                                         ; $7135: $a5
    sub [hl]                                      ; $7136: $96
    cp l                                          ; $7137: $bd
    ld c, d                                       ; $7138: $4a
    inc de                                        ; $7139: $13
    adc $3e                                       ; $713a: $ce $3e
    and a                                         ; $713c: $a7
    add l                                         ; $713d: $85
    db $ed                                        ; $713e: $ed
    nop                                           ; $713f: $00
    rra                                           ; $7140: $1f
    ld d, a                                       ; $7141: $57
    or c                                          ; $7142: $b1
    rst $38                                       ; $7143: $ff
    ld c, [hl]                                    ; $7144: $4e
    push hl                                       ; $7145: $e5
    cp b                                          ; $7146: $b8
    sub h                                         ; $7147: $94
    or c                                          ; $7148: $b1
    rst $10                                       ; $7149: $d7
    adc a                                         ; $714a: $8f
    ld [hl], $b4                                  ; $714b: $36 $b4
    ld de, $7551                                  ; $714d: $11 $51 $75
    adc h                                         ; $7150: $8c
    ld e, d                                       ; $7151: $5a
    pop de                                        ; $7152: $d1
    sub d                                         ; $7153: $92
    ld l, b                                       ; $7154: $68
    and [hl]                                      ; $7155: $a6
    ld b, [hl]                                    ; $7156: $46
    ld d, $d9                                     ; $7157: $16 $d9
    jp $7504                                      ; $7159: $c3 $04 $75


    ret nc                                        ; $715c: $d0

    and $df                                       ; $715d: $e6 $df
    add hl, hl                                    ; $715f: $29
    ld l, a                                       ; $7160: $6f
    dec l                                         ; $7161: $2d
    adc l                                         ; $7162: $8d
    ld [hl], h                                    ; $7163: $74
    ld d, l                                       ; $7164: $55
    db $ec                                        ; $7165: $ec
    ret nc                                        ; $7166: $d0

    ld a, d                                       ; $7167: $7a
    ld d, $69                                     ; $7168: $16 $69
    ld b, a                                       ; $716a: $47
    jp Jump_000_22b1                              ; $716b: $c3 $b1 $22


    sub b                                         ; $716e: $90
    sub $76                                       ; $716f: $d6 $76
    nop                                           ; $7171: $00
    rst $20                                       ; $7172: $e7
    xor c                                         ; $7173: $a9
    ld sp, hl                                     ; $7174: $f9
    ld [hl], a                                    ; $7175: $77
    ld a, [hl+]                                   ; $7176: $2a
    jp nz, $e9c5                                  ; $7177: $c2 $c5 $e9

    ld a, [c]                                     ; $717a: $f2
    rla                                           ; $717b: $17
    ld d, $ea                                     ; $717c: $16 $ea
    reti                                          ; $717e: $d9


    db $10                                        ; $717f: $10
    add [hl]                                      ; $7180: $86
    ld c, [hl]                                    ; $7181: $4e
    or $ac                                        ; $7182: $f6 $ac
    rst $20                                       ; $7184: $e7
    ld a, a                                       ; $7185: $7f
    cp d                                          ; $7186: $ba
    ld l, h                                       ; $7187: $6c
    dec sp                                        ; $7188: $3b

Jump_06c_7189:
    nop                                           ; $7189: $00
    sub a                                         ; $718a: $97
    or l                                          ; $718b: $b5
    ld c, b                                       ; $718c: $48
    dec sp                                        ; $718d: $3b
    or h                                          ; $718e: $b4
    sbc [hl]                                      ; $718f: $9e
    db $fd                                        ; $7190: $fd
    call z, $5590                                 ; $7191: $cc $90 $55
    or h                                          ; $7194: $b4
    ld c, [hl]                                    ; $7195: $4e
    ret                                           ; $7196: $c9


    ld [hl], b                                    ; $7197: $70
    pop af                                        ; $7198: $f1
    ld [hl], a                                    ; $7199: $77
    ld a, [bc]                                    ; $719a: $0a
    add hl, sp                                    ; $719b: $39
    add hl, sp                                    ; $719c: $39
    ld d, d                                       ; $719d: $52
    jp nc, Jump_06c_5335                          ; $719e: $d2 $35 $53

    inc hl                                        ; $71a1: $23
    adc e                                         ; $71a2: $8b
    db $ec                                        ; $71a3: $ec
    ld h, c                                       ; $71a4: $61

Call_06c_71a5:
    ld l, a                                       ; $71a5: $6f
    db $f4                                        ; $71a6: $f4
    ld a, [c]                                     ; $71a7: $f2
    ld a, [hl]                                    ; $71a8: $7e
    ld c, d                                       ; $71a9: $4a
    rla                                           ; $71aa: $17
    ld e, h                                       ; $71ab: $5c
    dec e                                         ; $71ac: $1d
    db $eb                                        ; $71ad: $eb
    sub a                                         ; $71ae: $97
    ld a, [hl+]                                   ; $71af: $2a
    dec de                                        ; $71b0: $1b
    ld c, b                                       ; $71b1: $48
    inc l                                         ; $71b2: $2c
    dec c                                         ; $71b3: $0d
    xor [hl]                                      ; $71b4: $ae
    pop hl                                        ; $71b5: $e1
    ld e, b                                       ; $71b6: $58
    ld de, $6b48                                  ; $71b7: $11 $48 $6b
    dec sp                                        ; $71ba: $3b
    nop                                           ; $71bb: $00
    sub a                                         ; $71bc: $97
    adc e                                         ; $71bd: $8b
    or h                                          ; $71be: $b4
    and e                                         ; $71bf: $a3
    sbc [hl]                                      ; $71c0: $9e
    db $fd                                        ; $71c1: $fd
    call z, $5590                                 ; $71c2: $cc $90 $55
    or h                                          ; $71c5: $b4
    ld c, [hl]                                    ; $71c6: $4e
    ret                                           ; $71c7: $c9


    ld [hl], b                                    ; $71c8: $70

Jump_06c_71c9:
    pop af                                        ; $71c9: $f1
    ld [hl], a                                    ; $71ca: $77
    ld [$d0d1], a                                 ; $71cb: $ea $d1 $d0
    ld b, [hl]                                    ; $71ce: $46
    ld b, h                                       ; $71cf: $44
    push de                                       ; $71d0: $d5
    ld sp, $9af4                                  ; $71d1: $31 $f4 $9a
    ld a, h                                       ; $71d4: $7c
    ld [hl], a                                    ; $71d5: $77
    ld [hl-], a                                   ; $71d6: $32
    ld c, [hl]                                    ; $71d7: $4e
    ret c                                         ; $71d8: $d8

    rst $30                                       ; $71d9: $f7
    ld e, [hl]                                    ; $71da: $5e
    ld l, b                                       ; $71db: $68
    jr c, jr_06c_7234                             ; $71dc: $38 $56

    inc b                                         ; $71de: $04
    jp nc, $5d2a                                  ; $71df: $d2 $2a $5d

    or c                                          ; $71e2: $b1
    sbc a                                         ; $71e3: $9f
    sub d                                         ; $71e4: $92
    db $eb                                        ; $71e5: $eb
    sbc [hl]                                      ; $71e6: $9e
    ld c, [hl]                                    ; $71e7: $4e
    or b                                          ; $71e8: $b0
    db $ed                                        ; $71e9: $ed
    nop                                           ; $71ea: $00
    rst $20                                       ; $71eb: $e7
    xor c                                         ; $71ec: $a9
    and a                                         ; $71ed: $a7
    pop de                                        ; $71ee: $d1
    ld [$a85b], sp                                ; $71ef: $08 $5b $a8
    ld h, a                                       ; $71f2: $67
    dec d                                         ; $71f3: $15
    ld b, d                                       ; $71f4: $42
    ld e, d                                       ; $71f5: $5a
    inc bc                                        ; $71f6: $03
    add hl, bc                                    ; $71f7: $09
    add hl, sp                                    ; $71f8: $39
    adc [hl]                                      ; $71f9: $8e
    sub [hl]                                      ; $71fa: $96
    ld a, [de]                                    ; $71fb: $1a
    sub e                                         ; $71fc: $93
    ld b, a                                       ; $71fd: $47
    adc [hl]                                      ; $71fe: $8e
    call nc, $9022                                ; $71ff: $d4 $22 $90
    ld d, [hl]                                    ; $7202: $56
    rst $38                                       ; $7203: $ff
    ld [hl], h                                    ; $7204: $74
    push af                                       ; $7205: $f5
    xor h                                         ; $7206: $ac
    ld [$eeee], sp                                ; $7207: $08 $ee $ee
    ld a, l                                       ; $720a: $7d
    ld b, c                                       ; $720b: $41
    db $eb                                        ; $720c: $eb
    reti                                          ; $720d: $d9


    ld l, b                                       ; $720e: $68
    sub e                                         ; $720f: $93
    ld l, [hl]                                    ; $7210: $6e
    ld b, c                                       ; $7211: $41
    or a                                          ; $7212: $b7
    inc bc                                        ; $7213: $03
    scf                                           ; $7214: $37
    ret c                                         ; $7215: $d8

    rst $38                                       ; $7216: $ff
    ret z                                         ; $7217: $c8

    or e                                          ; $7218: $b3
    ld d, d                                       ; $7219: $52
    ld h, e                                       ; $721a: $63
    ld [hl], b                                    ; $721b: $70
    ld b, e                                       ; $721c: $43
    dec de                                        ; $721d: $1b
    sbc c                                         ; $721e: $99
    inc c                                         ; $721f: $0c
    reti                                          ; $7220: $d9


    ld c, a                                       ; $7221: $4f
    ld b, e                                       ; $7222: $43
    xor $28                                       ; $7223: $ee $28
    jp nc, Jump_06c_7a8e                          ; $7225: $d2 $8e $7a

    or $1d                                        ; $7228: $f6 $1d
    xor [hl]                                      ; $722a: $ae
    cp b                                          ; $722b: $b8
    ld l, $8e                                     ; $722c: $2e $8e
    ld a, [bc]                                    ; $722e: $0a
    jp z, $851d                                   ; $722f: $ca $1d $85

    sbc h                                         ; $7232: $9c
    inc e                                         ; $7233: $1c

jr_06c_7234:
    add hl, hl                                    ; $7234: $29
    reti                                          ; $7235: $d9


    adc h                                         ; $7236: $8c
    ld a, [c]                                     ; $7237: $f2
    ld d, [hl]                                    ; $7238: $56
    inc [hl]                                      ; $7239: $34
    cp d                                          ; $723a: $ba
    push hl                                       ; $723b: $e5
    pop hl                                        ; $723c: $e1
    reti                                          ; $723d: $d9


    inc a                                         ; $723e: $3c
    ld d, $59                                     ; $723f: $16 $59
    ld c, a                                       ; $7241: $4f
    adc l                                         ; $7242: $8d
    xor h                                         ; $7243: $ac
    inc e                                         ; $7244: $1c
    inc sp                                        ; $7245: $33
    ld a, [$edb1]                                 ; $7246: $fa $b1 $ed
    nop                                           ; $7249: $00
    rst $20                                       ; $724a: $e7
    or a                                          ; $724b: $b7
    sub [hl]                                      ; $724c: $96
    ld b, [hl]                                    ; $724d: $46
    ld [hl], $39                                  ; $724e: $36 $39
    db $f4                                        ; $7250: $f4
    ld h, h                                       ; $7251: $64
    ret z                                         ; $7252: $c8

    sbc [hl]                                      ; $7253: $9e
    ld d, l                                       ; $7254: $55
    db $ec                                        ; $7255: $ec
    xor b                                         ; $7256: $a8
    inc d                                         ; $7257: $14
    ld [hl], e                                    ; $7258: $73
    and c                                         ; $7259: $a1
    sbc [hl]                                      ; $725a: $9e
    db $dd                                        ; $725b: $dd
    rst $10                                       ; $725c: $d7
    rst $18                                       ; $725d: $df
    ld b, [hl]                                    ; $725e: $46
    sbc e                                         ; $725f: $9b
    xor c                                         ; $7260: $a9
    sub c                                         ; $7261: $91
    ld b, l                                       ; $7262: $45
    or $b0                                        ; $7263: $f6 $b0
    xor l                                         ; $7265: $ad
    rst $20                                       ; $7266: $e7
    xor c                                         ; $7267: $a9
    ld [$e347], sp                                ; $7268: $08 $47 $e3
    inc [hl]                                      ; $726b: $34
    sub b                                         ; $726c: $90
    ret c                                         ; $726d: $d8

    dec bc                                        ; $726e: $0b
    ld b, l                                       ; $726f: $45

Jump_06c_7270:
    add l                                         ; $7270: $85
    ld c, e                                       ; $7271: $4b

Call_06c_7272:
    cp b                                          ; $7272: $b8
    xor a                                         ; $7273: $af
    adc c                                         ; $7274: $89
    sub h                                         ; $7275: $94
    ret c                                         ; $7276: $d8

    ld c, $97                                     ; $7277: $0e $97
    xor e                                         ; $7279: $ab
    ret c                                         ; $727a: $d8

    ld d, c                                       ; $727b: $51
    rst $08                                       ; $727c: $cf
    cp [hl]                                       ; $727d: $be
    jp $d715                                      ; $727e: $c3 $15 $d7


    push bc                                       ; $7281: $c5
    pop de                                        ; $7282: $d1
    adc d                                         ; $7283: $8a
    sub [hl]                                      ; $7284: $96
    ld b, h                                       ; $7285: $44
    sbc c                                         ; $7286: $99
    and e                                         ; $7287: $a3
    or c                                          ; $7288: $b1
    ret nc                                        ; $7289: $d0

    ld a, [$6d04]                                 ; $728a: $fa $04 $6d
    ld b, h                                       ; $728d: $44
    ret z                                         ; $728e: $c8

    adc e                                         ; $728f: $8b
    or b                                          ; $7290: $b0
    dec b                                         ; $7291: $05
    ld l, l                                       ; $7292: $6d
    sbc [hl]                                      ; $7293: $9e
    adc d                                         ; $7294: $8a
    ld d, [hl]                                    ; $7295: $56
    add $5e                                       ; $7296: $c6 $5e
    ccf                                           ; $7298: $3f
    sub l                                         ; $7299: $95
    ld h, e                                       ; $729a: $63
    ld b, [hl]                                    ; $729b: $46
    ccf                                           ; $729c: $3f

Jump_06c_729d:
    or [hl]                                       ; $729d: $b6
    dec e                                         ; $729e: $1d
    sub a                                         ; $729f: $97
    or l                                          ; $72a0: $b5
    ld c, b                                       ; $72a1: $48
    dec sp                                        ; $72a2: $3b
    or h                                          ; $72a3: $b4
    sbc [hl]                                      ; $72a4: $9e
    ld a, l                                       ; $72a5: $7d
    sbc e                                         ; $72a6: $9b
    ld [hl+], a                                   ; $72a7: $22
    ld a, [hl+]                                   ; $72a8: $2a
    ld a, d                                       ; $72a9: $7a
    ld h, l                                       ; $72aa: $65
    ld [hl], d                                    ; $72ab: $72
    inc [hl]                                      ; $72ac: $34
    inc d                                         ; $72ad: $14
    jp c, Jump_000_16cb                           ; $72ae: $da $cb $16

    xor c                                         ; $72b1: $a9
    push af                                       ; $72b2: $f5

Call_06c_72b3:
    ret nc                                        ; $72b3: $d0

    ld a, [hl]                                    ; $72b4: $7e
    ld h, [hl]                                    ; $72b5: $66
    db $fc                                        ; $72b6: $fc
    ld b, e                                       ; $72b7: $43
    dec bc                                        ; $72b8: $0b
    add hl, sp                                    ; $72b9: $39
    add hl, sp                                    ; $72ba: $39
    ld d, d                                       ; $72bb: $52
    jp nc, Jump_06c_5335                          ; $72bc: $d2 $35 $53

    inc hl                                        ; $72bf: $23
    adc e                                         ; $72c0: $8b
    db $ec                                        ; $72c1: $ec
    ld h, c                                       ; $72c2: $61
    db $db                                        ; $72c3: $db
    ld bc, $971f                                  ; $72c4: $01 $1f $97
    ld a, [hl+]                                   ; $72c7: $2a
    ld l, l                                       ; $72c8: $6d
    push bc                                       ; $72c9: $c5
    ld a, e                                       ; $72ca: $7b
    ld l, h                                       ; $72cb: $6c
    ld c, l                                       ; $72cc: $4d
    db $fd                                        ; $72cd: $fd
    inc [hl]                                      ; $72ce: $34
    or h                                          ; $72cf: $b4
    ld de, $7551                                  ; $72d0: $11 $51 $75
    xor h                                         ; $72d3: $ac
    sbc a                                         ; $72d4: $9f
    and h                                         ; $72d5: $a4
    ld h, l                                       ; $72d6: $65
    add $bd                                       ; $72d7: $c6 $bd
    rla                                           ; $72d9: $17
    cp d                                          ; $72da: $ba
    rst $08                                       ; $72db: $cf
    ld l, c                                       ; $72dc: $69
    adc d                                         ; $72dd: $8a
    ld a, l                                       ; $72de: $7d
    ld l, l                                       ; $72df: $6d
    cp l                                          ; $72e0: $bd
    sub c                                         ; $72e1: $91
    ld d, b                                       ; $72e2: $50
    cp c                                          ; $72e3: $b9
    ld b, e                                       ; $72e4: $43
    sub l                                         ; $72e5: $95
    push af                                       ; $72e6: $f5
    db $ec                                        ; $72e7: $ec
    db $db                                        ; $72e8: $db
    inc d                                         ; $72e9: $14
    ld d, c                                       ; $72ea: $51
    pop de                                        ; $72eb: $d1
    dec hl                                        ; $72ec: $2b
    sub e                                         ; $72ed: $93
    and e                                         ; $72ee: $a3
    and c                                         ; $72ef: $a1
    ret nc                                        ; $72f0: $d0

    ld e, [hl]                                    ; $72f1: $5e
    or [hl]                                       ; $72f2: $b6
    ld c, b                                       ; $72f3: $48
    xor l                                         ; $72f4: $ad
    add a                                         ; $72f5: $87
    or $33                                        ; $72f6: $f6 $33
    db $e3                                        ; $72f8: $e3
    rra                                           ; $72f9: $1f
    ld e, d                                       ; $72fa: $5a
    rst $08                                       ; $72fb: $cf
    ccf                                           ; $72fc: $3f
    dec hl                                        ; $72fd: $2b
    ld e, d                                       ; $72fe: $5a
    ld [de], a                                    ; $72ff: $12
    sub $70                                       ; $7300: $d6 $70
    xor h                                         ; $7302: $ac
    ld hl, $ce2d                                  ; $7303: $21 $2d $ce
    halt                                          ; $7306: $76
    nop                                           ; $7307: $00
    sub a                                         ; $7308: $97
    dec de                                        ; $7309: $1b
    adc [hl]                                      ; $730a: $8e
    ld b, l                                       ; $730b: $45
    inc [hl]                                      ; $730c: $34
    add h                                         ; $730d: $84
    and c                                         ; $730e: $a1
    db $d3                                        ; $730f: $d3
    ld a, h                                       ; $7310: $7c
    rst $30                                       ; $7311: $f7
    sbc a                                         ; $7312: $9f
    ld a, e                                       ; $7313: $7b
    dec [hl]                                      ; $7314: $35
    add l                                         ; $7315: $85
    or h                                          ; $7316: $b4
    dec [hl]                                      ; $7317: $35
    ld d, [hl]                                    ; $7318: $56
    adc a                                         ; $7319: $8f
    ld a, [bc]                                    ; $731a: $0a
    sub a                                         ; $731b: $97
    ld [hl], b                                    ; $731c: $70
    ld e, a                                       ; $731d: $5f
    inc de                                        ; $731e: $13
    add hl, hl                                    ; $731f: $29
    ld d, c                                       ; $7320: $51
    pop de                                        ; $7321: $d1
    sub d                                         ; $7322: $92
    ld l, b                                       ; $7323: $68
    ld b, [hl]                                    ; $7324: $46
    ld b, e                                       ; $7325: $43
    jr jr_06c_7365                                ; $7326: $18 $3d

    dec sp                                        ; $7328: $3b
    pop hl                                        ; $7329: $e1

Jump_06c_732a:
    ld l, b                                       ; $732a: $68
    ld b, h                                       ; $732b: $44
    rst $28                                       ; $732c: $ef
    ld l, h                                       ; $732d: $6c
    jr c, jr_06c_7346                             ; $732e: $38 $16

    ld d, c                                       ; $7330: $51
    adc a                                         ; $7331: $8f
    jp z, $aa1d                                   ; $7332: $ca $1d $aa

    xor h                                         ; $7335: $ac
    ld h, a                                       ; $7336: $67
    rst $18                                       ; $7337: $df
    and [hl]                                      ; $7338: $a6
    adc b                                         ; $7339: $88
    adc d                                         ; $733a: $8a
    ld e, [hl]                                    ; $733b: $5e
    sbc c                                         ; $733c: $99
    inc e                                         ; $733d: $1c
    dec c                                         ; $733e: $0d
    add l                                         ; $733f: $85
    or $b2                                        ; $7340: $f6 $b2
    ld b, l                                       ; $7342: $45
    ld l, d                                       ; $7343: $6a
    dec a                                         ; $7344: $3d
    or h                                          ; $7345: $b4

jr_06c_7346:
    sbc a                                         ; $7346: $9f
    add hl, de                                    ; $7347: $19
    rst $38                                       ; $7348: $ff
    ret nc                                        ; $7349: $d0

    db $ed                                        ; $734a: $ed
    nop                                           ; $734b: $00
    rst $10                                       ; $734c: $d7
    rst $00                                       ; $734d: $c7
    ld [bc], a                                    ; $734e: $02
    adc c                                         ; $734f: $89
    ld h, l                                       ; $7350: $65
    xor d                                         ; $7351: $aa
    rst $20                                       ; $7352: $e7
    sbc a                                         ; $7353: $9f
    or [hl]                                       ; $7354: $b6
    ld d, b                                       ; $7355: $50
    pop de                                        ; $7356: $d1
    sub d                                         ; $7357: $92
    or b                                          ; $7358: $b0
    ld b, d                                       ; $7359: $42
    adc [hl]                                      ; $735a: $8e
    ld a, c                                       ; $735b: $79
    ld a, b                                       ; $735c: $78
    call nc, Call_06c_4327                        ; $735d: $d4 $27 $43
    adc [hl]                                      ; $7360: $8e
    inc l                                         ; $7361: $2c
    or h                                          ; $7362: $b4
    ld c, b                                       ; $7363: $48
    dec sp                                        ; $7364: $3b

jr_06c_7365:
    or h                                          ; $7365: $b4
    sbc [hl]                                      ; $7366: $9e
    cp l                                          ; $7367: $bd
    cp d                                          ; $7368: $ba
    inc [hl]                                      ; $7369: $34
    sbc $63                                       ; $736a: $de $63
    dec bc                                        ; $736c: $0b
    push af                                       ; $736d: $f5
    add sp, -$4b                                  ; $736e: $e8 $b5
    ldh [$d3], a                                  ; $7370: $e0 $d3
    sub d                                         ; $7372: $92
    xor b                                         ; $7373: $a8
    or d                                          ; $7374: $b2
    db $d3                                        ; $7375: $d3
    ret nc                                        ; $7376: $d0

    ld b, [hl]                                    ; $7377: $46
    ld b, h                                       ; $7378: $44
    push de                                       ; $7379: $d5
    or c                                          ; $737a: $b1
    cp $d7                                        ; $737b: $fe $d7
    sbc a                                         ; $737d: $9f
    sub l                                         ; $737e: $95
    ld e, b                                       ; $737f: $58
    reti                                          ; $7380: $d9


    ld c, a                                       ; $7381: $4f
    di                                            ; $7382: $f3
    ld d, h                                       ; $7383: $54
    daa                                           ; $7384: $27
    rst $08                                       ; $7385: $cf
    dec de                                        ; $7386: $1b
    rlca                                          ; $7387: $07
    scf                                           ; $7388: $37
    ret c                                         ; $7389: $d8

    rst $38                                       ; $738a: $ff
    ret z                                         ; $738b: $c8

    or e                                          ; $738c: $b3
    ld d, d                                       ; $738d: $52
    ld h, e                                       ; $738e: $63
    ld [hl], b                                    ; $738f: $70
    ld b, e                                       ; $7390: $43
    dec de                                        ; $7391: $1b
    sbc c                                         ; $7392: $99
    inc c                                         ; $7393: $0c
    reti                                          ; $7394: $d9


    ld c, a                                       ; $7395: $4f
    ld b, e                                       ; $7396: $43
    xor $a8                                       ; $7397: $ee $a8
    call c, $caa1                                 ; $7399: $dc $a1 $ca
    ld a, d                                       ; $739c: $7a
    or $ea                                        ; $739d: $f6 $ea
    jp nc, $8f78                                  ; $739f: $d2 $78 $8f

jr_06c_73a2:
    dec l                                         ; $73a2: $2d
    call nc, $d7a3                                ; $73a3: $d4 $a3 $d7
    add d                                         ; $73a6: $82
    ld c, a                                       ; $73a7: $4f
    ld c, e                                       ; $73a8: $4b
    ld b, d                                       ; $73a9: $42
    ret nc                                        ; $73aa: $d0

    rst $38                                       ; $73ab: $ff
    ret z                                         ; $73ac: $c8

    or e                                          ; $73ad: $b3
    ld d, d                                       ; $73ae: $52
    ld h, e                                       ; $73af: $63
    ld [hl], b                                    ; $73b0: $70
    di                                            ; $73b1: $f3
    inc d                                         ; $73b2: $14
    reti                                          ; $73b3: $d9


    jp Jump_06c_692a                              ; $73b4: $c3 $2a $69


    ld [hl], c                                    ; $73b7: $71
    or [hl]                                       ; $73b8: $b6
    inc bc                                        ; $73b9: $03
    rra                                           ; $73ba: $1f
    ld l, e                                       ; $73bb: $6b
    xor c                                         ; $73bc: $a9
    ld sp, $e479                                  ; $73bd: $31 $79 $e4
    ld c, b                                       ; $73c0: $48
    xor l                                         ; $73c1: $ad

jr_06c_73c2:
    rra                                           ; $73c2: $1f
    dec l                                         ; $73c3: $2d
    or d                                          ; $73c4: $b2
    add a                                         ; $73c5: $87
    ld d, c                                       ; $73c6: $51
    db $eb                                        ; $73c7: $eb
    ld e, c                                       ; $73c8: $59
    cp c                                          ; $73c9: $b9
    inc e                                         ; $73ca: $1c
    ld [$bf58], a                                 ; $73cb: $ea $58 $bf
    ld d, h                                       ; $73ce: $54
    ld l, c                                       ; $73cf: $69
    ld [hl], b                                    ; $73d0: $70
    dec c                                         ; $73d1: $0d
    ld h, c                                       ; $73d2: $61
    xor b                                         ; $73d3: $a8
    and a                                         ; $73d4: $a7
    ld c, d                                       ; $73d5: $4a
    ld e, d                                       ; $73d6: $5a
    ld de, $142f                                  ; $73d7: $11 $2f $14
    add c                                         ; $73da: $81
    or h                                          ; $73db: $b4
    ld a, [de]                                    ; $73dc: $1a
    jp nz, Jump_06c_6650                          ; $73dd: $c2 $50 $66

    add hl, sp                                    ; $73e0: $39
    add hl, sp                                    ; $73e1: $39
    ld a, [de]                                    ; $73e2: $1a
    xor h                                         ; $73e3: $ac
    ld l, [hl]                                    ; $73e4: $6e
    ld h, l                                       ; $73e5: $65
    ld sp, $772a                                  ; $73e6: $31 $2a $77
    xor b                                         ; $73e9: $a8
    ld [hl], d                                    ; $73ea: $72
    db $eb                                        ; $73eb: $eb
    ld e, e                                       ; $73ec: $5b
    db $e3                                        ; $73ed: $e3
    inc b                                         ; $73ee: $04
    and l                                         ; $73ef: $a5
    add $49                                       ; $73f0: $c6 $49
    ld b, l                                       ; $73f2: $45
    jr nz, jr_06c_73a2                            ; $73f3: $20 $ad

    xor l                                         ; $73f5: $ad
    rst $20                                       ; $73f6: $e7
    push bc                                       ; $73f7: $c5
    ld l, c                                       ; $73f8: $69
    inc c                                         ; $73f9: $0c
    ld l, a                                       ; $73fa: $6f
    inc e                                         ; $73fb: $1c
    rra                                           ; $73fc: $1f
    db $fd                                        ; $73fd: $fd
    ld c, [hl]                                    ; $73fe: $4e
    ld a, c                                       ; $73ff: $79
    ld l, e                                       ; $7400: $6b
    ld l, c                                       ; $7401: $69
    ld h, h                                       ; $7402: $64
    inc sp                                        ; $7403: $33
    or e                                          ; $7404: $b3
    jr c, jr_06c_7440                             ; $7405: $38 $39

    inc d                                         ; $7407: $14
    ld l, c                                       ; $7408: $69
    ld b, a                                       ; $7409: $47
    db $fd                                        ; $740a: $fd
    inc [hl]                                      ; $740b: $34
    or h                                          ; $740c: $b4
    push hl                                       ; $740d: $e5
    cp b                                          ; $740e: $b8
    ld l, h                                       ; $740f: $6c
    adc d                                         ; $7410: $8a
    inc a                                         ; $7411: $3c
    ld b, l                                       ; $7412: $45
    jr nz, jr_06c_73c2                            ; $7413: $20 $ad

    jp nc, Jump_000_2e55                          ; $7415: $d2 $55 $2e

    add a                                         ; $7418: $87
    db $ed                                        ; $7419: $ed
    nop                                           ; $741a: $00
    rra                                           ; $741b: $1f
    ld sp, $938b                                  ; $741c: $31 $8b $93
    ld b, e                                       ; $741f: $43
    dec a                                         ; $7420: $3d
    or h                                          ; $7421: $b4
    ld c, b                                       ; $7422: $48
    dec sp                                        ; $7423: $3b
    or h                                          ; $7424: $b4
    sbc [hl]                                      ; $7425: $9e
    ld a, [de]                                    ; $7426: $1a
    ld e, c                                       ; $7427: $59
    ld h, h                                       ; $7428: $64
    rrca                                          ; $7429: $0f
    dec hl                                        ; $742a: $2b
    dec [hl]                                      ; $742b: $35
    ld b, $37                                     ; $742c: $06 $37
    ld c, a                                       ; $742e: $4f
    dec e                                         ; $742f: $1d
    ld d, e                                       ; $7430: $53
    push bc                                       ; $7431: $c5
    ld h, e                                       ; $7432: $63
    pop bc                                        ; $7433: $c1
    or [hl]                                       ; $7434: $b6
    ld h, [hl]                                    ; $7435: $66
    dec sp                                        ; $7436: $3b
    nop                                           ; $7437: $00
    sub a                                         ; $7438: $97
    rst $30                                       ; $7439: $f7
    ld d, e                                       ; $743a: $53
    cp d                                          ; $743b: $ba
    ldh [$ea], a                                  ; $743c: $e0 $ea
    ld e, b                                       ; $743e: $58
    cp a                                          ; $743f: $bf

jr_06c_7440:
    ld d, h                                       ; $7440: $54
    reti                                          ; $7441: $d9


    ld b, b                                       ; $7442: $40
    ld h, d                                       ; $7443: $62
    db $e3                                        ; $7444: $e3
    ld a, b                                       ; $7445: $78
    ld l, b                                       ; $7446: $68
    and c                                         ; $7447: $a1
    ld b, l                                       ; $7448: $45
    jp c, $f5a1                                   ; $7449: $da $a1 $f5

    db $d3                                        ; $744c: $d3
    ret nc                                        ; $744d: $d0

    sub [hl]                                      ; $744e: $96
    db $e3                                        ; $744f: $e3
    or d                                          ; $7450: $b2
    add hl, hl                                    ; $7451: $29
    ld a, [c]                                     ; $7452: $f2
    inc d                                         ; $7453: $14
    ld [hl], d                                    ; $7454: $72
    ld [hl], d                                    ; $7455: $72
    and h                                         ; $7456: $a4
    and h                                         ; $7457: $a4
    xor e                                         ; $7458: $ab
    sbc a                                         ; $7459: $9f
    ld b, $12                                     ; $745a: $06 $12
    inc l                                         ; $745c: $2c
    ld c, [hl]                                    ; $745d: $4e
    sub c                                         ; $745e: $91
    dec a                                         ; $745f: $3d
    xor h                                         ; $7460: $ac
    ld hl, $150c                                  ; $7461: $21 $0c $15
    ld h, d                                       ; $7464: $62
    db $dd                                        ; $7465: $dd
    sbc d                                         ; $7466: $9a
    db $ed                                        ; $7467: $ed
    nop                                           ; $7468: $00
    sbc a                                         ; $7469: $9f
    adc l                                         ; $746a: $8d
    add a                                         ; $746b: $87
    ld d, $5a                                     ; $746c: $16 $5a
    and h                                         ; $746e: $a4
    dec e                                         ; $746f: $1d

jr_06c_7470:
    ld e, d                                       ; $7470: $5a
    ccf                                           ; $7471: $3f
    dec c                                         ; $7472: $0d
    ld l, l                                       ; $7473: $6d
    add hl, sp                                    ; $7474: $39
    ld l, $9b                                     ; $7475: $2e $9b
    ld [hl+], a                                   ; $7477: $22
    ld c, a                                       ; $7478: $4f
    ld hl, $4727                                  ; $7479: $21 $27 $47
    ld c, d                                       ; $747c: $4a
    cp d                                          ; $747d: $ba
    jp nc, $d915                                  ; $747e: $d2 $15 $d9

    jp Jump_06c_75a8                              ; $7481: $c3 $a8 $75


    ld e, b                                       ; $7484: $58
    ld e, d                                       ; $7485: $5a
    ld hl, $add6                                  ; $7486: $21 $d6 $ad
    pop de                                        ; $7489: $d1
    db $ed                                        ; $748a: $ed
    nop                                           ; $748b: $00
    rst $20                                       ; $748c: $e7
    xor c                                         ; $748d: $a9
    sbc [hl]                                      ; $748e: $9e
    ld a, [hl+]                                   ; $748f: $2a

jr_06c_7490:
    ld b, a                                       ; $7490: $47
    ld l, b                                       ; $7491: $68
    xor e                                         ; $7492: $ab
    add c                                         ; $7493: $81
    add h                                         ; $7494: $84
    and l                                         ; $7495: $a5
    and l                                         ; $7496: $a5
    pop bc                                        ; $7497: $c1
    push de                                       ; $7498: $d5
    xor l                                         ; $7499: $ad
    inc l                                         ; $749a: $2c
    add [hl]                                      ; $749b: $86
    ld d, $69                                     ; $749c: $16 $69
    add a                                         ; $749e: $87
    ld [hl], $4f                                  ; $749f: $36 $4f
    inc bc                                        ; $74a1: $03
    add hl, bc                                    ; $74a2: $09
    sbc $a6                                       ; $74a3: $de $a6
    sbc [hl]                                      ; $74a5: $9e
    push bc                                       ; $74a6: $c5

Jump_06c_74a7:
    ld a, a                                       ; $74a7: $7f
    jp hl                                         ; $74a8: $e9


    ld l, b                                       ; $74a9: $68
    dec a                                         ; $74aa: $3d
    xor d                                         ; $74ab: $aa
    ret c                                         ; $74ac: $d8

    ld d, c                                       ; $74ad: $51
    add hl, sp                                    ; $74ae: $39
    ld l, $65                                     ; $74af: $2e $65
    db $ec                                        ; $74b1: $ec
    push af                                       ; $74b2: $f5
    xor b                                         ; $74b3: $a8
    ld e, e                                       ; $74b4: $5b
    ld e, c                                       ; $74b5: $59
    adc h                                         ; $74b6: $8c
    ld c, d                                       ; $74b7: $4a
    jr z, jr_06c_7470                             ; $74b8: $28 $b6

    inc bc                                        ; $74ba: $03
    rra                                           ; $74bb: $1f
    ld sp, $938b                                  ; $74bc: $31 $8b $93
    ld b, e                                       ; $74bf: $43
    dec a                                         ; $74c0: $3d
    or h                                          ; $74c1: $b4
    ld c, b                                       ; $74c2: $48
    dec sp                                        ; $74c3: $3b
    or h                                          ; $74c4: $b4
    sbc [hl]                                      ; $74c5: $9e
    xor d                                         ; $74c6: $aa
    inc l                                         ; $74c7: $2c
    or d                                          ; $74c8: $b2
    add a                                         ; $74c9: $87
    push de                                       ; $74ca: $d5
    or c                                          ; $74cb: $b1
    ld hl, $928c                                  ; $74cc: $21 $8c $92
    dec d                                         ; $74cf: $15
    pop bc                                        ; $74d0: $c1
    xor l                                         ; $74d1: $ad
    ld a, l                                       ; $74d2: $7d
    pop bc                                        ; $74d3: $c1
    or [hl]                                       ; $74d4: $b6
    inc bc                                        ; $74d5: $03
    rst $20                                       ; $74d6: $e7
    xor c                                         ; $74d7: $a9
    sbc d                                         ; $74d8: $9a
    jp nz, $e2c9                                  ; $74d9: $c2 $c9 $e2

    ld l, c                                       ; $74dc: $69
    jr nz, jr_06c_7490                            ; $74dd: $20 $b1

    sbc c                                         ; $74df: $99
    ld e, c                                       ; $74e0: $59
    sbc h                                         ; $74e1: $9c
    inc e                                         ; $74e2: $1c
    ld a, [hl+]                                   ; $74e3: $2a
    ld [hl], a                                    ; $74e4: $77
    xor b                                         ; $74e5: $a8
    or d                                          ; $74e6: $b2
    sbc [hl]                                      ; $74e7: $9e
    xor d                                         ; $74e8: $aa
    inc l                                         ; $74e9: $2c
    or d                                          ; $74ea: $b2
    add a                                         ; $74eb: $87
    dec [hl]                                      ; $74ec: $35
    ld [hl-], a                                   ; $74ed: $32
    adc e                                         ; $74ee: $8b
    ld d, c                                       ; $74ef: $51
    and h                                         ; $74f0: $a4
    dec e                                         ; $74f1: $1d
    ld e, d                                       ; $74f2: $5a
    ccf                                           ; $74f3: $3f
    dec c                                         ; $74f4: $0d
    ld l, l                                       ; $74f5: $6d
    add hl, sp                                    ; $74f6: $39
    ld l, $9b                                     ; $74f7: $2e $9b
    ld [hl+], a                                   ; $74f9: $22
    rst $08                                       ; $74fa: $cf
    halt                                          ; $74fb: $76
    nop                                           ; $74fc: $00
    rra                                           ; $74fd: $1f
    rst $10                                       ; $74fe: $d7
    ld c, l                                       ; $74ff: $4d
    ld e, [hl]                                    ; $7500: $5e
    ld [hl], c                                    ; $7501: $71
    xor h                                         ; $7502: $ac
    ld e, $75                                     ; $7503: $1e $75
    dec hl                                        ; $7505: $2b
    adc e                                         ; $7506: $8b
    ld d, c                                       ; $7507: $51
    add hl, bc                                    ; $7508: $09
    ld b, l                                       ; $7509: $45
    dec e                                         ; $750a: $1d
    db $eb                                        ; $750b: $eb
    sub a                                         ; $750c: $97
    ld a, [hl+]                                   ; $750d: $2a
    dec de                                        ; $750e: $1b
    jp nz, $4f50                                  ; $750f: $c2 $50 $4f

    sub l                                         ; $7512: $95
    or h                                          ; $7513: $b4
    add [hl]                                      ; $7514: $86
    jr nc, @+$16                                  ; $7515: $30 $14

    ld b, l                                       ; $7517: $45
    jp c, $f5b1                                   ; $7518: $da $b1 $f5

    or d                                          ; $751b: $b2
    inc d                                         ; $751c: $14
    ld c, a                                       ; $751d: $4f
    inc bc                                        ; $751e: $03
    adc c                                         ; $751f: $89
    ld e, l                                       ; $7520: $5d
    xor d                                         ; $7521: $aa
    ld d, e                                       ; $7522: $53
    ld e, l                                       ; $7523: $5d
    and a                                         ; $7524: $a7
    cp h                                          ; $7525: $bc
    ld b, h                                       ; $7526: $44
    ld c, e                                       ; $7527: $4b
    and d                                         ; $7528: $a2
    add c                                         ; $7529: $81
    call nz, $8772                                ; $752a: $c4 $72 $87
    ld d, $72                                     ; $752d: $16 $72
    ld [hl], d                                    ; $752f: $72
    and h                                         ; $7530: $a4
    and h                                         ; $7531: $a4

Jump_06c_7532:
    db $eb                                        ; $7532: $eb
    ld e, $5c                                     ; $7533: $1e $5c
    ld a, [hl-]                                   ; $7535: $3a
    ld hl, $add6                                  ; $7536: $21 $d6 $ad
    reti                                          ; $7539: $d9


    ld c, $97                                     ; $753a: $0e $97
    and l                                         ; $753c: $a5
    ld a, b                                       ; $753d: $78
    ld a, [de]                                    ; $753e: $1a
    ld c, b                                       ; $753f: $48
    ld l, h                                       ; $7540: $6c
    cp [hl]                                       ; $7541: $be

Call_06c_7542:
    ld b, a                                       ; $7542: $47
    dec b                                         ; $7543: $05
    and l                                         ; $7544: $a5
    add $e4                                       ; $7545: $c6 $e4
    sub c                                         ; $7547: $91
    inc hl                                        ; $7548: $23
    or l                                          ; $7549: $b5
    ld a, [hl]                                    ; $754a: $7e
    ld a, [de]                                    ; $754b: $1a
    jp c, Jump_06c_5c72                           ; $754c: $da $72 $5c

    ld [hl], $45                                  ; $754f: $36 $45
    ld e, $41                                     ; $7551: $1e $41
    di                                            ; $7553: $f3
    rst $28                                       ; $7554: $ef
    inc [hl]                                      ; $7555: $34
    jp nc, Jump_06c_46e8                          ; $7556: $d2 $e8 $46

    adc e                                         ; $7559: $8b
    or h                                          ; $755a: $b4
    ld b, e                                       ; $755b: $43
    sbc e                                         ; $755c: $9b
    xor c                                         ; $755d: $a9
    sub c                                         ; $755e: $91
    ld b, l                                       ; $755f: $45
    or $b0                                        ; $7560: $f6 $b0
    add [hl]                                      ; $7562: $86
    ld h, e                                       ; $7563: $63
    ld [hl], l                                    ; $7564: $75
    ld l, c                                       ; $7565: $69
    push bc                                       ; $7566: $c5
    ld l, c                                       ; $7567: $69
    and h                                         ; $7568: $a4
    dec bc                                        ; $7569: $0b
    ld h, a                                       ; $756a: $67
    dec sp                                        ; $756b: $3b
    nop                                           ; $756c: $00
    rst $28                                       ; $756d: $ef
    ld d, b                                       ; $756e: $50
    adc d                                         ; $756f: $8a
    pop hl                                        ; $7570: $e1

Jump_06c_7571:
    and a                                         ; $7571: $a7
    rst $10                                       ; $7572: $d7
    ld h, c                                       ; $7573: $61
    add sp, -$6b                                  ; $7574: $e8 $95
    ret                                           ; $7576: $c9


    ld c, d                                       ; $7577: $4a
    adc e                                         ; $7578: $8b
    or e                                          ; $7579: $b3
    dec e                                         ; $757a: $1d
    rra                                           ; $757b: $1f
    rst $08                                       ; $757c: $cf
    adc b                                         ; $757d: $88
    dec b                                         ; $757e: $05
    ld c, l                                       ; $757f: $4d
    xor [hl]                                      ; $7580: $ae
    ld [de], a                                    ; $7581: $12
    ei                                            ; $7582: $fb
    inc h                                         ; $7583: $24
    ld e, e                                       ; $7584: $5b
    ld e, c                                       ; $7585: $59
    inc a                                         ; $7586: $3c
    add d                                         ; $7587: $82
    sbc $59                                       ; $7588: $de $59
    add hl, bc                                    ; $758a: $09
    or a                                          ; $758b: $b7
    or d                                          ; $758c: $b2
    ld a, b                                       ; $758d: $78
    ld [$4d59], a                                 ; $758e: $ea $59 $4d
    xor b                                         ; $7591: $a8
    call c, $caa1                                 ; $7592: $dc $a1 $ca
    ld c, e                                       ; $7595: $4b
    db $fd                                        ; $7596: $fd
    jr c, jr_06c_7614                             ; $7597: $38 $7b

    ld d, [hl]                                    ; $7599: $56
    ld l, c                                       ; $759a: $69
    pop bc                                        ; $759b: $c1
    dec c                                         ; $759c: $0d
    inc h                                         ; $759d: $24
    sub [hl]                                      ; $759e: $96
    dec sp                                        ; $759f: $3b
    ld c, e                                       ; $75a0: $4b
    adc l                                         ; $75a1: $8d
    pop bc                                        ; $75a2: $c1
    ld e, l                                       ; $75a3: $5d
    reti                                          ; $75a4: $d9


    rst $08                                       ; $75a5: $cf
    dec de                                        ; $75a6: $1b
    rlca                                          ; $75a7: $07

Jump_06c_75a8:
    rst $20                                       ; $75a8: $e7
    xor c                                         ; $75a9: $a9
    call nc, $a938                                ; $75aa: $d4 $38 $a9
    db $eb                                        ; $75ad: $eb
    sub h                                         ; $75ae: $94
    rst $00                                       ; $75af: $c7
    sub b                                         ; $75b0: $90
    db $fd                                        ; $75b1: $fd
    db $f4                                        ; $75b2: $f4
    ccf                                           ; $75b3: $3f
    ld a, [c]                                     ; $75b4: $f2
    ld c, h                                       ; $75b5: $4c
    ret nc                                        ; $75b6: $d0

    db $eb                                        ; $75b7: $eb
    rrc h                                         ; $75b8: $cb $0c
    rla                                           ; $75ba: $17
    or c                                          ; $75bb: $b1
    dec e                                         ; $75bc: $1d
    rst $20                                       ; $75bd: $e7
    add hl, sp                                    ; $75be: $39
    cp $4e                                        ; $75bf: $fe $4e
    inc hl                                        ; $75c1: $23
    or $3f                                        ; $75c2: $f6 $3f
    ld l, a                                       ; $75c4: $6f
    sub a                                         ; $75c5: $97
    xor c                                         ; $75c6: $a9
    sbc [hl]                                      ; $75c7: $9e
    ld a, a                                       ; $75c8: $7f
    ld d, h                                       ; $75c9: $54
    add h                                         ; $75ca: $84
    db $db                                        ; $75cb: $db
    or h                                          ; $75cc: $b4
    ld h, d                                       ; $75cd: $62
    ccf                                           ; $75ce: $3f
    ld c, l                                       ; $75cf: $4d
    inc bc                                        ; $75d0: $03
    adc c                                         ; $75d1: $89
    db $fd                                        ; $75d2: $fd
    adc a                                         ; $75d3: $8f
    inc a                                         ; $75d4: $3c
    ld l, e                                       ; $75d5: $6b
    cp $9d                                        ; $75d6: $fe $9d
    add [hl]                                      ; $75d8: $86
    and e                                         ; $75d9: $a3
    adc d                                         ; $75da: $8a
    xor [hl]                                      ; $75db: $ae
    ld d, e                                       ; $75dc: $53
    ld e, $83                                     ; $75dd: $1e $83
    ld l, l                                       ; $75df: $6d
    rlca                                          ; $75e0: $07
    sub a                                         ; $75e1: $97
    and e                                         ; $75e2: $a3
    inc d                                         ; $75e3: $14
    cpl                                           ; $75e4: $2f
    rst $10                                       ; $75e5: $d7
    ld l, l                                       ; $75e6: $6d
    db $db                                        ; $75e7: $db
    xor d                                         ; $75e8: $aa
    ld a, c                                       ; $75e9: $79
    adc c                                         ; $75ea: $89
    cp d                                          ; $75eb: $ba
    ld l, l                                       ; $75ec: $6d
    ld e, e                                       ; $75ed: $5b
    ld de, $78a5                                  ; $75ee: $11 $a5 $78
    cp c                                          ; $75f1: $b9
    ld l, [hl]                                    ; $75f2: $6e
    db $db                                        ; $75f3: $db
    halt                                          ; $75f4: $76
    nop                                           ; $75f5: $00
    ld d, a                                       ; $75f6: $57
    add hl, hl                                    ; $75f7: $29
    and [hl]                                      ; $75f8: $a6
    sbc b                                         ; $75f9: $98
    ld h, d                                       ; $75fa: $62
    halt                                          ; $75fb: $76
    db $db                                        ; $75fc: $db
    or [hl]                                       ; $75fd: $b6
    db $ed                                        ; $75fe: $ed
    nop                                           ; $75ff: $00
    sub a                                         ; $7600: $97
    and e                                         ; $7601: $a3
    inc d                                         ; $7602: $14
    cpl                                           ; $7603: $2f
    daa                                           ; $7604: $27
    xor b                                         ; $7605: $a8
    and $25                                       ; $7606: $e6 $25
    ld [de], a                                    ; $7608: $12
    ld d, h                                       ; $7609: $54
    di                                            ; $760a: $f3
    ld [de], a                                    ; $760b: $12
    ld [hl], l                                    ; $760c: $75
    db $db                                        ; $760d: $db
    or [hl]                                       ; $760e: $b6
    inc bc                                        ; $760f: $03
    scf                                           ; $7610: $37
    sbc [hl]                                      ; $7611: $9e
    cp b                                          ; $7612: $b8
    pop af                                        ; $7613: $f1

jr_06c_7614:
    call nz, $db0d                                ; $7614: $c4 $0d $db
    ld a, d                                       ; $7617: $7a
    ld a, l                                       ; $7618: $7d
    ld h, d                                       ; $7619: $62
    and h                                         ; $761a: $a4
    add hl, bc                                    ; $761b: $09
    ld a, [$791f]                                 ; $761c: $fa $1f $79
    ld d, [hl]                                    ; $761f: $56
    ld l, d                                       ; $7620: $6a
    inc c                                         ; $7621: $0c
    xor [hl]                                      ; $7622: $ae
    rra                                           ; $7623: $1f
    and $c8                                       ; $7624: $e6 $c8
    scf                                           ; $7626: $37
    ld c, $1f                                     ; $7627: $0e $1f
    db $fd                                        ; $7629: $fd
    adc [hl]                                      ; $762a: $8e
    and b                                         ; $762b: $a0
    rst $10                                       ; $762c: $d7
    sub a                                         ; $762d: $97
    add hl, de                                    ; $762e: $19
    ld l, $a2                                     ; $762f: $2e $a2
    sub b                                         ; $7631: $90
    db $10                                        ; $7632: $10
    ld c, [hl]                                    ; $7633: $4e
    xor d                                         ; $7634: $aa
    ld h, a                                       ; $7635: $67
    ld [hl], a                                    ; $7636: $77
    db $e4                                        ; $7637: $e4
    adc e                                         ; $7638: $8b
    or b                                          ; $7639: $b0
    ld h, $57                                     ; $763a: $26 $57
    ld de, $5c57                                  ; $763c: $11 $57 $5c
    rla                                           ; $763f: $17
    and a                                         ; $7640: $a7
    ld [hl], h                                    ; $7641: $74
    ld [hl], l                                    ; $7642: $75
    bit 5, l                                      ; $7643: $cb $6d
    cp l                                          ; $7645: $bd
    inc e                                         ; $7646: $1c
    and l                                         ; $7647: $a5
    ld a, b                                       ; $7648: $78
    add hl, sp                                    ; $7649: $39
    ld b, c                                       ; $764a: $41
    dec [hl]                                      ; $764b: $35
    cpl                                           ; $764c: $2f
    ld d, c                                       ; $764d: $51
    or a                                          ; $764e: $b7
    ld l, l                                       ; $764f: $6d
    dec sp                                        ; $7650: $3b
    nop                                           ; $7651: $00
    sub a                                         ; $7652: $97
    ei                                            ; $7653: $fb
    db $fd                                        ; $7654: $fd
    inc de                                        ; $7655: $13
    rst $18                                       ; $7656: $df
    ccf                                           ; $7657: $3f
    pop af                                        ; $7658: $f1
    ld a, l                                       ; $7659: $7d
    jp c, $b04f                                   ; $765a: $da $4f $b0

    add [hl]                                      ; $765d: $86
    call c, $ab47                                 ; $765e: $dc $47 $ab
    dec hl                                        ; $7661: $2b
    rst $00                                       ; $7662: $c7
    ld [hl], c                                    ; $7663: $71
    ld d, b                                       ; $7664: $50
    ld b, c                                       ; $7665: $41
    sbc c                                         ; $7666: $99
    ld [$2d97], a                                 ; $7667: $ea $97 $2d
    inc [hl]                                      ; $766a: $34
    sub b                                         ; $766b: $90
    ret c                                         ; $766c: $d8

    rst $38                                       ; $766d: $ff
    ret z                                         ; $766e: $c8

    or e                                          ; $766f: $b3
    ld d, d                                       ; $7670: $52
    ld h, e                                       ; $7671: $63
    ld [hl], b                                    ; $7672: $70
    ld [hl], l                                    ; $7673: $75
    add h                                         ; $7674: $84
    add $8e                                       ; $7675: $c6 $8e
    sub [hl]                                      ; $7677: $96
    ld [hl+], a                                   ; $7678: $22
    xor [hl]                                      ; $7679: $ae
    jr c, jr_06c_76d6                             ; $767a: $38 $5a

    rst $08                                       ; $767c: $cf
    ld e, [hl]                                    ; $767d: $5e
    ld c, e                                       ; $767e: $4b
    ld [hl-], a                                   ; $767f: $32
    ld l, c                                       ; $7680: $69
    cpl                                           ; $7681: $2f
    ei                                            ; $7682: $fb
    ld a, [hl]                                    ; $7683: $7e
    add h                                         ; $7684: $84
    and h                                         ; $7685: $a4
    ld c, h                                       ; $7686: $4c
    xor [hl]                                      ; $7687: $ae
    db $db                                        ; $7688: $db
    or [hl]                                       ; $7689: $b6
    push af                                       ; $768a: $f5
    db $e3                                        ; $768b: $e3
    cp [hl]                                       ; $768c: $be
    jp $d715                                      ; $768d: $c3 $15 $d7


    push bc                                       ; $7690: $c5
    xor c                                         ; $7691: $a9
    sbc a                                         ; $7692: $9f
    ld e, [hl]                                    ; $7693: $5e
    dec de                                        ; $7694: $1b
    adc e                                         ; $7695: $8b
    di                                            ; $7696: $f3
    call nz, $f5cd                                ; $7697: $c4 $cd $f5
    sbc a                                         ; $769a: $9f
    ld c, e                                       ; $769b: $4b
    rlca                                          ; $769c: $07
    scf                                           ; $769d: $37
    ld a, [c]                                     ; $769e: $f2
    ld [de], a                                    ; $769f: $12
    ld e, l                                       ; $76a0: $5d
    ld a, [hl-]                                   ; $76a1: $3a
    nop                                           ; $76a2: $00
    rst $20                                       ; $76a3: $e7
    or a                                          ; $76a4: $b7
    db $10                                        ; $76a5: $10
    pop hl                                        ; $76a6: $e1
    sbc b                                         ; $76a7: $98
    inc hl                                        ; $76a8: $23
    or a                                          ; $76a9: $b7
    cp [hl]                                       ; $76aa: $be
    rst $30                                       ; $76ab: $f7
    call nz, Call_06c_4f7b                        ; $76ac: $c4 $7b $4f
    inc l                                         ; $76af: $2c
    adc l                                         ; $76b0: $8d
    db $d3                                        ; $76b1: $d3
    push hl                                       ; $76b2: $e5
    jp nz, Jump_06c_497d                          ; $76b3: $c2 $7d $49

    sub h                                         ; $76b6: $94
    xor [hl]                                      ; $76b7: $ae
    ret                                           ; $76b8: $c9


    and c                                         ; $76b9: $a1
    ld l, [hl]                                    ; $76ba: $6e
    xor c                                         ; $76bb: $a9
    cp $4e                                        ; $76bc: $fe $4e
    xor c                                         ; $76be: $a9
    ld hl, $c2e5                                  ; $76bf: $21 $e5 $c2
    sbc $40                                       ; $76c2: $de $40
    ld h, d                                       ; $76c4: $62
    ld c, a                                       ; $76c5: $4f
    inc [hl]                                      ; $76c6: $34
    db $ec                                        ; $76c7: $ec
    adc [hl]                                      ; $76c8: $8e
    add hl, sp                                    ; $76c9: $39
    or d                                          ; $76ca: $b2
    ld c, h                                       ; $76cb: $4c
    push de                                       ; $76cc: $d5
    ld a, e                                       ; $76cd: $7b
    ld [$0b61], a                                 ; $76ce: $ea $61 $0b
    ld b, l                                       ; $76d1: $45
    sub e                                         ; $76d2: $93
    dec hl                                        ; $76d3: $2b
    or $94                                        ; $76d4: $f6 $94

jr_06c_76d6:
    and a                                         ; $76d6: $a7
    ld c, $4b                                     ; $76d7: $0e $4b
    adc e                                         ; $76d9: $8b
    daa                                           ; $76da: $27
    ldh a, [rDIV]                                 ; $76db: $f0 $04
    cp $c8                                        ; $76dd: $fe $c8
    rla                                           ; $76df: $17
    pop hl                                        ; $76e0: $e1
    ld b, a                                       ; $76e1: $47
    ld d, b                                       ; $76e2: $50
    rlca                                          ; $76e3: $07
    db $ed                                        ; $76e4: $ed
    rst $30                                       ; $76e5: $f7
    pop bc                                        ; $76e6: $c1
    dec c                                         ; $76e7: $0d
    inc h                                         ; $76e8: $24
    or $3f                                        ; $76e9: $f6 $3f
    ld a, [c]                                     ; $76eb: $f2
    xor h                                         ; $76ec: $ac
    rla                                           ; $76ed: $17
    ld a, d                                       ; $76ee: $7a
    push af                                       ; $76ef: $f5
    adc c                                         ; $76f0: $89
    xor e                                         ; $76f1: $ab
    ld c, a                                       ; $76f2: $4f
    ld e, h                                       ; $76f3: $5c
    add l                                         ; $76f4: $85
    reti                                          ; $76f5: $d9


    ld c, a                                       ; $76f6: $4f
    cp l                                          ; $76f7: $bd
    ld a, $31                                     ; $76f8: $3e $31
    jp nc, Jump_06c_6dba                          ; $76fa: $d2 $ba $6d

    db $db                                        ; $76fd: $db
    ld bc, $371f                                  ; $76fe: $01 $1f $37
    sub b                                         ; $7701: $90
    ret c                                         ; $7702: $d8

    dec bc                                        ; $7703: $0b
    ld l, a                                       ; $7704: $6f
    db $f4                                        ; $7705: $f4
    ld b, [hl]                                    ; $7706: $46
    ld e, [hl]                                    ; $7707: $5e
    and d                                         ; $7708: $a2
    db $ed                                        ; $7709: $ed
    nop                                           ; $770a: $00
    rst $20                                       ; $770b: $e7
    ld e, c                                       ; $770c: $59
    ld c, [hl]                                    ; $770d: $4e
    adc [hl]                                      ; $770e: $8e
    ld b, $6b                                     ; $770f: $06 $6b
    ld [hl], d                                    ; $7711: $72
    xor b                                         ; $7712: $a8
    ld a, h                                       ; $7713: $7c
    ld b, d                                       ; $7714: $42
    ld a, $21                                     ; $7715: $3e $21
    daa                                           ; $7717: $27
    ld b, a                                       ; $7718: $47
    jp $a113                                      ; $7719: $c3 $13 $a1


    pop hl                                        ; $771c: $e1
    add h                                         ; $771d: $84
    xor l                                         ; $771e: $ad
    rst $20                                       ; $771f: $e7
    push af                                       ; $7720: $f5
    inc c                                         ; $7721: $0c
    adc l                                         ; $7722: $8d
    xor d                                         ; $7723: $aa
    add sp, -$4a                                  ; $7724: $e8 $b6
    ld l, l                                       ; $7726: $6d
    sbc l                                         ; $7727: $9d
    cp [hl]                                       ; $7728: $be
    jp $d715                                      ; $7729: $c3 $15 $d7


    push bc                                       ; $772c: $c5
    xor c                                         ; $772d: $a9
    sbc a                                         ; $772e: $9f
    ld e, [hl]                                    ; $772f: $5e
    dec de                                        ; $7730: $1b
    adc e                                         ; $7731: $8b
    di                                            ; $7732: $f3
    call nz, $f5cd                                ; $7733: $c4 $cd $f5
    sbc a                                         ; $7736: $9f
    cp $b1                                        ; $7737: $fe $b1
    ld [$6eb9], a                                 ; $7739: $ea $b9 $6e
    dec b                                         ; $773c: $05
    ccf                                           ; $773d: $3f
    or c                                          ; $773e: $b1
    ld c, a                                       ; $773f: $4f
    push hl                                       ; $7740: $e5
    inc de                                        ; $7741: $13
    ld a, [c]                                     ; $7742: $f2
    add hl, bc                                    ; $7743: $09
    add hl, bc                                    ; $7744: $09
    adc a                                         ; $7745: $8f
    cp $79                                        ; $7746: $fe $79
    cp e                                          ; $7748: $bb
    ld c, $4b                                     ; $7749: $0e $4b
    dec hl                                        ; $774b: $2b
    ld [hl-], a                                   ; $774c: $32
    ret z                                         ; $774d: $c8

    ld de, $f114                                  ; $774e: $11 $14 $f1
    ld b, d                                       ; $7751: $42
    inc bc                                        ; $7752: $03
    adc c                                         ; $7753: $89
    db $fd                                        ; $7754: $fd
    adc a                                         ; $7755: $8f
    inc a                                         ; $7756: $3c
    ld l, e                                       ; $7757: $6b
    cp $9d                                        ; $7758: $fe $9d
    jp z, $cac9                                   ; $775a: $ca $c9 $ca

    ld d, e                                       ; $775d: $53
    ld e, d                                       ; $775e: $5a
    ld d, $5c                                     ; $775f: $16 $5c
    push bc                                       ; $7761: $c5
    or d                                          ; $7762: $b2
    ld a, d                                       ; $7763: $7a
    ld d, h                                       ; $7764: $54
    jp nz, Jump_000_3b61                          ; $7765: $c2 $61 $3b

    nop                                           ; $7768: $00
    scf                                           ; $7769: $37
    ld b, a                                       ; $776a: $47
    sbc [hl]                                      ; $776b: $9e
    dec [hl]                                      ; $776c: $35
    rst $38                                       ; $776d: $ff
    ld c, [hl]                                    ; $776e: $4e
    rst $38                                       ; $776f: $ff
    ld e, b                                       ; $7770: $58
    ld h, l                                       ; $7771: $65
    sub [hl]                                      ; $7772: $96
    sub e                                         ; $7773: $93
    and e                                         ; $7774: $a3
    pop bc                                        ; $7775: $c1
    adc d                                         ; $7776: $8a
    jp z, $e427                                   ; $7777: $ca $27 $e4

    inc de                                        ; $777a: $13
    ld [hl], d                                    ; $777b: $72
    ld [hl], d                                    ; $777c: $72
    inc [hl]                                      ; $777d: $34
    inc a                                         ; $777e: $3c
    ld de, $4e1a                                  ; $777f: $11 $1a $4e
    jr z, jr_06c_7786                             ; $7782: $28 $02

    ld l, c                                       ; $7784: $69
    add hl, bc                                    ; $7785: $09

jr_06c_7786:
    ld a, d                                       ; $7786: $7a
    dec d                                         ; $7787: $15
    ld h, [hl]                                    ; $7788: $66
    ccf                                           ; $7789: $3f
    ld e, l                                       ; $778a: $5d
    ld a, [hl-]                                   ; $778b: $3a
    nop                                           ; $778c: $00
    rst $20                                       ; $778d: $e7
    xor c                                         ; $778e: $a9
    db $db                                        ; $778f: $db
    or [hl]                                       ; $7790: $b6
    dec [hl]                                      ; $7791: $35
    rst $38                                       ; $7792: $ff
    ld c, [hl]                                    ; $7793: $4e
    dec e                                         ; $7794: $1d
    xor e                                         ; $7795: $ab
    dec hl                                        ; $7796: $2b
    rst $00                                       ; $7797: $c7
    jp hl                                         ; $7798: $e9


    or [hl]                                       ; $7799: $b6
    ld l, l                                       ; $779a: $6d
    ld [hl], l                                    ; $779b: $75
    ld l, c                                       ; $779c: $69
    push bc                                       ; $779d: $c5
    xor c                                         ; $779e: $a9
    sub b                                         ; $779f: $90
    xor [hl]                                      ; $77a0: $ae
    db $db                                        ; $77a1: $db
    or [hl]                                       ; $77a2: $b6
    dec e                                         ; $77a3: $1d
    scf                                           ; $77a4: $37
    sbc b                                         ; $77a5: $98
    inc hl                                        ; $77a6: $23
    sbc a                                         ; $77a7: $9f
    ld d, b                                       ; $77a8: $50
    sub $71                                       ; $77a9: $d6 $71
    rla                                           ; $77ab: $17
    adc a                                         ; $77ac: $8f
    cp l                                          ; $77ad: $bd
    pop de                                        ; $77ae: $d1
    sbc e                                         ; $77af: $9b
    inc hl                                        ; $77b0: $23
    rst $08                                       ; $77b1: $cf
    ld a, [de]                                    ; $77b2: $1a
    jp nz, Jump_000_1728                          ; $77b3: $c2 $28 $17

    ld [$8ad2], a                                 ; $77b6: $ea $d2 $8a
    ld d, e                                       ; $77b9: $53
    add a                                         ; $77ba: $87
    cp l                                          ; $77bb: $bd
    add c                                         ; $77bc: $81
    add h                                         ; $77bd: $84
    db $ec                                        ; $77be: $ec
    and a                                         ; $77bf: $a7
    sub c                                         ; $77c0: $91
    adc l                                         ; $77c1: $8d
    ld [hl], $e9                                  ; $77c2: $36 $e9
    ld d, $0d                                     ; $77c4: $16 $0d
    xor [hl]                                      ; $77c6: $ae
    ld hl, $950c                                  ; $77c7: $21 $0c $95
    pop bc                                        ; $77ca: $c1
    db $db                                        ; $77cb: $db
    ld bc, $a9e7                                  ; $77cc: $01 $e7 $a9
    call nc, $a938                                ; $77cf: $d4 $38 $a9
    ld [hl], d                                    ; $77d2: $72
    ld e, h                                       ; $77d3: $5c
    and a                                         ; $77d4: $a7
    rst $28                                       ; $77d5: $ef
    ld [hl], b                                    ; $77d6: $70
    push bc                                       ; $77d7: $c5
    ld [hl], l                                    ; $77d8: $75
    ld [hl], c                                    ; $77d9: $71
    ld [$d7a7], a                                 ; $77da: $ea $a7 $d7
    add $e2                                       ; $77dd: $c6 $e2
    inc a                                         ; $77df: $3c
    ld [hl], c                                    ; $77e0: $71
    ld [hl], e                                    ; $77e1: $73
    db $fd                                        ; $77e2: $fd
    ld h, a                                       ; $77e3: $67
    db $eb                                        ; $77e4: $eb
    adc l                                         ; $77e5: $8d
    cp h                                          ; $77e6: $bc
    ld b, h                                       ; $77e7: $44
    ld e, e                                       ; $77e8: $5b

Jump_06c_77e9:
    ccf                                           ; $77e9: $3f
    ld l, [hl]                                    ; $77ea: $6e
    ld l, b                                       ; $77eb: $68
    inc hl                                        ; $77ec: $23
    and d                                         ; $77ed: $a2
    ld [$3f58], a                                 ; $77ee: $ea $58 $3f
    ld c, c                                       ; $77f1: $49
    res 1, h                                      ; $77f2: $cb $8c
    ld a, e                                       ; $77f4: $7b
    dec e                                         ; $77f5: $1d
    db $eb                                        ; $77f6: $eb
    sub b                                         ; $77f7: $90
    db $fd                                        ; $77f8: $fd
    and h                                         ; $77f9: $a4
    ld [hl-], a                                   ; $77fa: $32
    set 1, c                                      ; $77fb: $cb $c9
    pop de                                        ; $77fd: $d1
    ld h, b                                       ; $77fe: $60
    ld c, l                                       ; $77ff: $4d
    ld c, $95                                     ; $7800: $0e $95
    sub e                                         ; $7802: $93
    and e                                         ; $7803: $a3
    pop hl                                        ; $7804: $e1
    adc c                                         ; $7805: $89
    ret nc                                        ; $7806: $d0

    ld [hl], b                                    ; $7807: $70
    jp nz, Jump_000_1bd6                          ; $7808: $c2 $d6 $1b

    ld a, c                                       ; $780b: $79
    adc c                                         ; $780c: $89
    or [hl]                                       ; $780d: $b6
    sbc $1c                                       ; $780e: $de $1c
    ld a, c                                       ; $7810: $79
    sub $70                                       ; $7811: $d6 $70
    inc a                                         ; $7813: $3c
    db $eb                                        ; $7814: $eb
    ld e, b                                       ; $7815: $58
    ld a, h                                       ; $7816: $7c
    sbc a                                         ; $7817: $9f
    inc a                                         ; $7818: $3c
    db $ec                                        ; $7819: $ec
    adc l                                         ; $781a: $8d
    inc bc                                        ; $781b: $03
    sbc a                                         ; $781c: $9f
    adc l                                         ; $781d: $8d
    ld h, e                                       ; $781e: $63
    xor c                                         ; $781f: $a9
    ld de, $e70d                                  ; $7820: $11 $0d $e7
    ld [c], a                                     ; $7823: $e2
    rst $28                                       ; $7824: $ef
    call nc, Call_000_32b3                        ; $7825: $d4 $b3 $32
    add hl, de                                    ; $7828: $19
    ld e, [hl]                                    ; $7829: $5e
    dec l                                         ; $782a: $2d
    ld [hl], a                                    ; $782b: $77
    inc [hl]                                      ; $782c: $34
    rst $38                                       ; $782d: $ff
    ld c, [hl]                                    ; $782e: $4e
    sub a                                         ; $782f: $97
    dec b                                         ; $7830: $05
    rst $10                                       ; $7831: $d7
    add sp, -$1a                                  ; $7832: $e8 $e6
    ld c, a                                       ; $7834: $4f
    dec hl                                        ; $7835: $2b
    ld a, [de]                                    ; $7836: $1a
    ld a, [de]                                    ; $7837: $1a
    ld c, [hl]                                    ; $7838: $4e
    db $10                                        ; $7839: $10
    call nc, $2b41                                ; $783a: $d4 $41 $2b
    add d                                         ; $783d: $82
    dec b                                         ; $783e: $05
    rst $30                                       ; $783f: $f7
    ccf                                           ; $7840: $3f
    ld a, [c]                                     ; $7841: $f2
    xor h                                         ; $7842: $ac
    jp z, Jump_06c_732a                           ; $7843: $ca $2a $73

    ld e, h                                       ; $7846: $5c
    ld d, [hl]                                    ; $7847: $56
    rst $00                                       ; $7848: $c7
    ld e, l                                       ; $7849: $5d
    inc a                                         ; $784a: $3c
    or [hl]                                       ; $784b: $b6
    dec e                                         ; $784c: $1d
    rra                                           ; $784d: $1f
    dec bc                                        ; $784e: $0b
    ld l, l                                       ; $784f: $6d
    sbc l                                         ; $7850: $9d
    ldh [rBGP], a                                 ; $7851: $e0 $47
    ret nc                                        ; $7853: $d0

    ld l, e                                       ; $7854: $6b
    ldh a, [rSVBK]                                ; $7855: $f0 $70
    db $ec                                        ; $7857: $ec
    push af                                       ; $7858: $f5
    ld [hl], c                                    ; $7859: $71
    ld [hl+], a                                   ; $785a: $22
    db $e3                                        ; $785b: $e3
    ld c, a                                       ; $785c: $4f
    db $db                                        ; $785d: $db
    ld bc, $a9e7                                  ; $785e: $01 $e7 $a9
    sub c                                         ; $7861: $91
    push af                                       ; $7862: $f5
    ld c, e                                       ; $7863: $4b
    sub l                                         ; $7864: $95
    dec c                                         ; $7865: $0d
    inc h                                         ; $7866: $24
    halt                                          ; $7867: $76
    xor c                                         ; $7868: $a9
    ld c, [hl]                                    ; $7869: $4e
    rla                                           ; $786a: $17
    ld a, [bc]                                    ; $786b: $0a
    add hl, sp                                    ; $786c: $39
    add hl, sp                                    ; $786d: $39
    ld d, d                                       ; $786e: $52
    jp nc, $03b6                                  ; $786f: $d2 $b6 $03

    scf                                           ; $7872: $37
    ld b, a                                       ; $7873: $47
    sbc [hl]                                      ; $7874: $9e
    ld d, l                                       ; $7875: $55
    ld hl, $e564                                  ; $7876: $21 $64 $e5
    cp b                                          ; $7879: $b8
    add hl, hl                                    ; $787a: $29
    ld d, e                                       ; $787b: $53
    jp $9d51                                      ; $787c: $c3 $51 $9d


    ld a, [de]                                    ; $787f: $1a
    db $dd                                        ; $7880: $dd
    db $fc                                        ; $7881: $fc
    ld l, c                                       ; $7882: $69
    ld c, l                                       ; $7883: $4d
    ld c, $0d                                     ; $7884: $0e $0d
    dec c                                         ; $7886: $0d
    daa                                           ; $7887: $27
    cp h                                          ; $7888: $bc
    ld [hl], c                                    ; $7889: $71
    nop                                           ; $788a: $00
    scf                                           ; $788b: $37
    ld b, a                                       ; $788c: $47
    sbc [hl]                                      ; $788d: $9e
    push af                                       ; $788e: $f5
    push af                                       ; $788f: $f5
    ld h, $87                                     ; $7890: $26 $87
    add [hl]                                      ; $7892: $86
    add [hl]                                      ; $7893: $86
    inc de                                        ; $7894: $13
    inc b                                         ; $7895: $04
    cp l                                          ; $7896: $bd
    ld a, $31                                     ; $7897: $3e $31
    jp nc, Jump_06c_6504                          ; $7899: $d2 $04 $65

    sbc c                                         ; $789c: $99
    ld a, d                                       ; $789d: $7a
    ld sp, hl                                     ; $789e: $f9
    db $ed                                        ; $789f: $ed
    adc a                                         ; $78a0: $8f
    ccf                                           ; $78a1: $3f
    cp l                                          ; $78a2: $bd
    db $fc                                        ; $78a3: $fc
    jp hl                                         ; $78a4: $e9


    ld a, e                                       ; $78a5: $7b
    sub a                                         ; $78a6: $97
    xor e                                         ; $78a7: $ab
    db $10                                        ; $78a8: $10
    jp nc, $c72a                                  ; $78a9: $d2 $2a $c7

    ld c, l                                       ; $78ac: $4d

Call_06c_78ad:
    adc l                                         ; $78ad: $8d
    ld l, [hl]                                    ; $78ae: $6e
    cp $67                                        ; $78af: $fe $67
    ld c, a                                       ; $78b1: $4f
    db $ec                                        ; $78b2: $ec
    or e                                          ; $78b3: $b3
    dec e                                         ; $78b4: $1d
    scf                                           ; $78b5: $37
    ld b, a                                       ; $78b6: $47
    sbc [hl]                                      ; $78b7: $9e
    sub l                                         ; $78b8: $95
    ld a, [de]                                    ; $78b9: $1a
    add e                                         ; $78ba: $83
    dec de                                        ; $78bb: $1b
    ld b, d                                       ; $78bc: $42
    dec d                                         ; $78bd: $15
    reti                                          ; $78be: $d9


    ld c, a                                       ; $78bf: $4f
    ld e, l                                       ; $78c0: $5d
    ld e, d                                       ; $78c1: $5a
    ld [hl], c                                    ; $78c2: $71
    ld a, [de]                                    ; $78c3: $1a
    jp hl                                         ; $78c4: $e9


    jp nz, Jump_06c_68a9                          ; $78c5: $c2 $a9 $68

    inc c                                         ; $78c8: $0c
    push af                                       ; $78c9: $f5
    xor h                                         ; $78ca: $ac
    ld h, $54                                     ; $78cb: $26 $54
    xor $50                                       ; $78cd: $ee $50
    and l                                         ; $78cf: $a5
    and b                                         ; $78d0: $a0
    ld d, a                                       ; $78d1: $57
    ld h, c                                       ; $78d2: $61
    or $d3                                        ; $78d3: $f6 $d3
    halt                                          ; $78d5: $76
    nop                                           ; $78d6: $00
    rst $20                                       ; $78d7: $e7
    xor c                                         ; $78d8: $a9
    and d                                         ; $78d9: $a2
    or h                                          ; $78da: $b4
    ld a, [bc]                                    ; $78db: $0a
    add a                                         ; $78dc: $87
    db $dd                                        ; $78dd: $dd
    xor a                                         ; $78de: $af
    adc e                                         ; $78df: $8b
    inc bc                                        ; $78e0: $03
    ccf                                           ; $78e1: $3f
    add d                                         ; $78e2: $82
    ld l, d                                       ; $78e3: $6a
    ld e, [hl]                                    ; $78e4: $5e
    and d                                         ; $78e5: $a2
    db $ed                                        ; $78e6: $ed
    nop                                           ; $78e7: $00
    sbc a                                         ; $78e8: $9f
    inc h                                         ; $78e9: $24
    cp d                                          ; $78ea: $ba
    jp nz, $f761                                  ; $78eb: $c2 $61 $f7

    db $eb                                        ; $78ee: $eb
    ld [c], a                                     ; $78ef: $e2
    ld c, h                                       ; $78f0: $4c
    ld [$e47f], a                                 ; $78f1: $ea $7f $e4
    reti                                          ; $78f4: $d9


    dec de                                        ; $78f5: $1b
    rlca                                          ; $78f6: $07
    rst $10                                       ; $78f7: $d7
    sub a                                         ; $78f8: $97
    add hl, de                                    ; $78f9: $19
    ld l, $62                                     ; $78fa: $2e $62
    db $eb                                        ; $78fc: $eb
    ld sp, hl                                     ; $78fd: $f9
    adc $86                                       ; $78fe: $ce $86
    rst $30                                       ; $7900: $f7
    ld l, c                                       ; $7901: $69
    and a                                         ; $7902: $a7
    rst $28                                       ; $7903: $ef

jr_06c_7904:
    ld [hl], b                                    ; $7904: $70
    push bc                                       ; $7905: $c5
    ld [hl], l                                    ; $7906: $75
    ld [hl], c                                    ; $7907: $71
    ld [$d7a7], a                                 ; $7908: $ea $a7 $d7
    add $e2                                       ; $790b: $c6 $e2
    inc a                                         ; $790d: $3c
    ld [hl], c                                    ; $790e: $71
    ld [hl], e                                    ; $790f: $73
    db $fd                                        ; $7910: $fd
    and a                                         ; $7911: $a7
    ld [hl], h                                    ; $7912: $74
    ld [hl], l                                    ; $7913: $75
    rrc c                                         ; $7914: $cb $09
    jp z, $927e                                   ; $7916: $ca $7e $92

    sub [hl]                                      ; $7919: $96
    add hl, de                                    ; $791a: $19
    rst $30                                       ; $791b: $f7
    ld a, [hl-]                                   ; $791c: $3a
    sub $21                                       ; $791d: $d6 $21
    ei                                            ; $791f: $fb
    ld c, c                                       ; $7920: $49
    ld h, l                                       ; $7921: $65
    sub [hl]                                      ; $7922: $96
    sub e                                         ; $7923: $93
    and e                                         ; $7924: $a3
    pop bc                                        ; $7925: $c1
    adc d                                         ; $7926: $8a
    jp z, $d864                                   ; $7927: $ca $64 $d8

    ld a, d                                       ; $792a: $7a
    inc hl                                        ; $792b: $23
    cpl                                           ; $792c: $2f
    pop de                                        ; $792d: $d1
    halt                                          ; $792e: $76
    nop                                           ; $792f: $00
    rst $20                                       ; $7930: $e7
    ld a, [de]                                    ; $7931: $1a
    pop de                                        ; $7932: $d1
    ret nc                                        ; $7933: $d0

    ld [hl], b                                    ; $7934: $70
    ld b, d                                       ; $7935: $42
    rst $38                                       ; $7936: $ff
    ld e, b                                       ; $7937: $58
    adc l                                         ; $7938: $8d
    xor h                                         ; $7939: $ac
    rst $20                                       ; $793a: $e7
    cp d                                          ; $793b: $ba
    dec b                                         ; $793c: $05
    xor e                                         ; $793d: $ab
    add h                                         ; $793e: $84
    ld b, a                                       ; $793f: $47
    rst $38                                       ; $7940: $ff
    cp h                                          ; $7941: $bc
    ld e, l                                       ; $7942: $5d
    add a                                         ; $7943: $87
    and l                                         ; $7944: $a5
    dec d                                         ; $7945: $15
    add hl, de                                    ; $7946: $19
    db $e4                                        ; $7947: $e4
    ld l, h                                       ; $7948: $6c
    cp l                                          ; $7949: $bd
    ld b, $2d                                     ; $794a: $06 $2d
    ld d, e                                       ; $794c: $53
    ld de, $c68e                                  ; $794d: $11 $8e $c6
    ld l, c                                       ; $7950: $69
    jr nz, jr_06c_7904                            ; $7951: $20 $b1

    rst $38                                       ; $7953: $ff
    sub c                                         ; $7954: $91
    ld h, a                                       ; $7955: $67
    db $fd                                        ; $7956: $fd
    ld h, e                                       ; $7957: $63
    sub l                                         ; $7958: $95
    ld e, c                                       ; $7959: $59
    ld c, [hl]                                    ; $795a: $4e
    adc [hl]                                      ; $795b: $8e
    ld b, $2b                                     ; $795c: $06 $2b
    or $d3                                        ; $795e: $f6 $d3
    inc [hl]                                      ; $7960: $34
    sub b                                         ; $7961: $90
    ret c                                         ; $7962: $d8

    add hl, hl                                    ; $7963: $29
    cp [hl]                                       ; $7964: $be
    ld c, a                                       ; $7965: $4f
    ld e, $16                                     ; $7966: $1e $16
    call c, $0a8c                                 ; $7968: $dc $8c $0a
    sub a                                         ; $796b: $97
    ld [hl], b                                    ; $796c: $70
    ld e, a                                       ; $796d: $5f
    inc de                                        ; $796e: $13
    add hl, hl                                    ; $796f: $29
    or c                                          ; $7970: $b1
    dec e                                         ; $7971: $1d
    ld d, a                                       ; $7972: $57
    ld h, c                                       ; $7973: $61
    or $d3                                        ; $7974: $f6 $d3
    and l                                         ; $7976: $a5
    ld e, [hl]                                    ; $7977: $5e
    rra                                           ; $7978: $1f
    dec bc                                        ; $7979: $0b
    inc h                                         ; $797a: $24
    or $3f                                        ; $797b: $f6 $3f
    ld a, [c]                                     ; $797d: $f2
    xor h                                         ; $797e: $ac
    ld sp, hl                                     ; $797f: $f9
    ld [hl], a                                    ; $7980: $77
    ld c, d                                       ; $7981: $4a
    adc l                                         ; $7982: $8d
    pop bc                                        ; $7983: $c1
    and l                                         ; $7984: $a5
    dec hl                                        ; $7985: $2b
    jp nc, Jump_000_378e                          ; $7986: $d2 $8e $37

    ld c, $1f                                     ; $7989: $0e $1f
    scf                                           ; $798b: $37
    or h                                          ; $798c: $b4
    ld de, $7551                                  ; $798d: $11 $51 $75
    xor h                                         ; $7990: $ac
    sbc a                                         ; $7991: $9f
    and h                                         ; $7992: $a4
    ld h, l                                       ; $7993: $65
    add $bd                                       ; $7994: $c6 $bd
    adc [hl]                                      ; $7996: $8e
    ld [hl], l                                    ; $7997: $75
    ret z                                         ; $7998: $c8

    ld a, [hl]                                    ; $7999: $7e
    ld d, d                                       ; $799a: $52
    ld de, $b31a                                  ; $799b: $11 $1a $b3
    and a                                         ; $799e: $a7
    ld d, l                                       ; $799f: $55
    adc [hl]                                      ; $79a0: $8e
    sbc e                                         ; $79a1: $9b
    ld a, [de]                                    ; $79a2: $1a

Jump_06c_79a3:
    db $dd                                        ; $79a3: $dd
    db $fc                                        ; $79a4: $fc
    ld l, c                                       ; $79a5: $69
    ld b, l                                       ; $79a6: $45
    ld b, e                                       ; $79a7: $43
    jp Jump_000_0d09                              ; $79a8: $c3 $09 $0d


    inc h                                         ; $79ab: $24
    halt                                          ; $79ac: $76
    ld b, a                                       ; $79ad: $47
    cp [hl]                                       ; $79ae: $be
    ld [$ab83], sp                                ; $79af: $08 $83 $ab
    sbc h                                         ; $79b2: $9c
    inc e                                         ; $79b3: $1c
    dec c                                         ; $79b4: $0d
    ld [hl], l                                    ; $79b5: $75
    bit 5, l                                      ; $79b6: $cb $6d
    cp l                                          ; $79b8: $bd
    sub c                                         ; $79b9: $91
    sub a                                         ; $79ba: $97
    ld l, b                                       ; $79bb: $68
    dec sp                                        ; $79bc: $3b
    nop                                           ; $79bd: $00
    rst $10                                       ; $79be: $d7
    ld l, c                                       ; $79bf: $69
    and a                                         ; $79c0: $a7
    sub h                                         ; $79c1: $94
    inc hl                                        ; $79c2: $23
    adc e                                         ; $79c3: $8b
    ld e, [hl]                                    ; $79c4: $5e
    add e                                         ; $79c5: $83
    add a                                         ; $79c6: $87
    ld h, e                                       ; $79c7: $63
    xor a                                         ; $79c8: $af
    xor a                                         ; $79c9: $af
    inc l                                         ; $79ca: $2c
    ld e, c                                       ; $79cb: $59
    adc a                                         ; $79cc: $8f
    ld a, [bc]                                    ; $79cd: $0a
    sub a                                         ; $79ce: $97
    ld [hl], b                                    ; $79cf: $70
    ld e, a                                       ; $79d0: $5f
    inc de                                        ; $79d1: $13
    add hl, hl                                    ; $79d2: $29
    or c                                          ; $79d3: $b1
    push af                                       ; $79d4: $f5
    ld [hl], d                                    ; $79d5: $72
    sub l                                         ; $79d6: $95
    rla                                           ; $79d7: $17
    ld a, a                                       ; $79d8: $7f
    and a                                         ; $79d9: $a7
    sbc [hl]                                      ; $79da: $9e
    dec [hl]                                      ; $79db: $35
    adc d                                         ; $79dc: $8a
    ld l, b                                       ; $79dd: $68
    ld h, a                                       ; $79de: $67
    ld e, c                                       ; $79df: $59
    ld l, $54                                     ; $79e0: $2e $54
    adc [hl]                                      ; $79e2: $8e
    ret nc                                        ; $79e3: $d0

    ld e, b                                       ; $79e4: $58
    add hl, sp                                    ; $79e5: $39
    add hl, sp                                    ; $79e6: $39
    ld a, [de]                                    ; $79e7: $1a
    sbc [hl]                                      ; $79e8: $9e
    ld [$270d], sp                                ; $79e9: $08 $0d $27
    ld l, b                                       ; $79ec: $68
    ld e, l                                       ; $79ed: $5d
    ld e, d                                       ; $79ee: $5a
    ld [hl], c                                    ; $79ef: $71
    ld a, [hl+]                                   ; $79f0: $2a
    and h                                         ; $79f1: $a4
    db $db                                        ; $79f2: $db
    ld c, $37                                     ; $79f3: $0e $37
    ld b, a                                       ; $79f5: $47
    sbc [hl]                                      ; $79f6: $9e
    ld d, l                                       ; $79f7: $55
    ld hl, $e564                                  ; $79f8: $21 $64 $e5
    cp b                                          ; $79fb: $b8
    add hl, hl                                    ; $79fc: $29
    ld d, e                                       ; $79fd: $53

Call_06c_79fe:
    jp $b4f1                                      ; $79fe: $c3 $f1 $b4


    add l                                         ; $7a01: $85
    ld a, [de]                                    ; $7a02: $1a
    db $dd                                        ; $7a03: $dd
    db $fc                                        ; $7a04: $fc
    ld l, c                                       ; $7a05: $69
    ld c, l                                       ; $7a06: $4d
    ld c, $0d                                     ; $7a07: $0e $0d

Jump_06c_7a09:
    dec c                                         ; $7a09: $0d
    daa                                           ; $7a0a: $27
    cp h                                          ; $7a0b: $bc
    ld [hl], c                                    ; $7a0c: $71
    nop                                           ; $7a0d: $00
    rra                                           ; $7a0e: $1f
    db $fd                                        ; $7a0f: $fd
    adc $d6                                       ; $7a10: $ce $d6
    di                                            ; $7a12: $f3
    add [hl]                                      ; $7a13: $86
    ld h, e                                       ; $7a14: $63
    dec d                                         ; $7a15: $15
    pop hl                                        ; $7a16: $e1
    ccf                                           ; $7a17: $3f
    ld h, $68                                     ; $7a18: $26 $68
    cp $9d                                        ; $7a1a: $fe $9d

jr_06c_7a1c:
    and d                                         ; $7a1c: $a2
    dec sp                                        ; $7a1d: $3b
    rst $38                                       ; $7a1e: $ff
    xor h                                         ; $7a1f: $ac
    inc e                                         ; $7a20: $1c
    rst $10                                       ; $7a21: $d7
    rst $38                                       ; $7a22: $ff
    ret z                                         ; $7a23: $c8

    or e                                          ; $7a24: $b3
    add [hl]                                      ; $7a25: $86
    jr nc, jr_06c_7a1c                            ; $7a26: $30 $f4

    ld e, l                                       ; $7a28: $5d
    ld e, e                                       ; $7a29: $5b
    and d                                         ; $7a2a: $a2
    sub l                                         ; $7a2b: $95
    rst $28                                       ; $7a2c: $ef
    or c                                          ; $7a2d: $b1
    add l                                         ; $7a2e: $85
    db $ed                                        ; $7a2f: $ed
    nop                                           ; $7a30: $00
    rra                                           ; $7a31: $1f
    db $dd                                        ; $7a32: $dd
    and e                                         ; $7a33: $a3
    call Call_06c_53bf                            ; $7a34: $cd $bf $53
    add h                                         ; $7a37: $84
    add $ec                                       ; $7a38: $c6 $ec
    jp hl                                         ; $7a3a: $e9


    ld b, [hl]                                    ; $7a3b: $46
    cp e                                          ; $7a3c: $bb
    inc [hl]                                      ; $7a3d: $34
    ld c, [hl]                                    ; $7a3e: $4e
    or c                                          ; $7a3f: $b1
    or d                                          ; $7a40: $b2
    rst $00                                       ; $7a41: $c7
    halt                                          ; $7a42: $76
    nop                                           ; $7a43: $00
    rst $20                                       ; $7a44: $e7
    ld [de], a                                    ; $7a45: $12
    ld e, e                                       ; $7a46: $5b
    ld l, a                                       ; $7a47: $6f
    or b                                          ; $7a48: $b0
    rst $38                                       ; $7a49: $ff
    sub c                                         ; $7a4a: $91
    ld h, a                                       ; $7a4b: $67
    and l                                         ; $7a4c: $a5
    add $e0                                       ; $7a4d: $c6 $e0
    jp nz, $f761                                  ; $7a4f: $c2 $61 $f7

    db $eb                                        ; $7a52: $eb
    ld [c], a                                     ; $7a53: $e2
    ret nz                                        ; $7a54: $c0

    adc a                                         ; $7a55: $8f
    and b                                         ; $7a56: $a0
    and d                                         ; $7a57: $a2
    dec d                                         ; $7a58: $15
    ld c, b                                       ; $7a59: $48
    db $ec                                        ; $7a5a: $ec
    ld a, $f9                                     ; $7a5b: $3e $f9
    call nz, $d67a                                ; $7a5d: $c4 $7a $d6
    dec l                                         ; $7a60: $2d
    ld [hl], a                                    ; $7a61: $77
    jp hl                                         ; $7a62: $e9


    nop                                           ; $7a63: $00
    ld d, a                                       ; $7a64: $57
    add $35                                       ; $7a65: $c6 $35
    add hl, sp                                    ; $7a67: $39
    ld d, h                                       ; $7a68: $54
    ld c, [hl]                                    ; $7a69: $4e
    adc [hl]                                      ; $7a6a: $8e
    add [hl]                                      ; $7a6b: $86
    daa                                           ; $7a6c: $27
    ld b, d                                       ; $7a6d: $42
    jp $8209                                      ; $7a6e: $c3 $09 $82


    ld b, [hl]                                    ; $7a71: $46
    db $ec                                        ; $7a72: $ec
    ld a, a                                       ; $7a73: $7f
    sbc $7e                                       ; $7a74: $de $7e
    db $e3                                        ; $7a76: $e3
    nop                                           ; $7a77: $00
    rra                                           ; $7a78: $1f
    scf                                           ; $7a79: $37
    or h                                          ; $7a7a: $b4
    ld de, $7551                                  ; $7a7b: $11 $51 $75
    xor h                                         ; $7a7e: $ac
    sbc a                                         ; $7a7f: $9f
    and h                                         ; $7a80: $a4
    ld h, l                                       ; $7a81: $65
    add $bd                                       ; $7a82: $c6 $bd
    sbc [hl]                                      ; $7a84: $9e
    ld a, a                                       ; $7a85: $7f
    ld d, [hl]                                    ; $7a86: $56
    ld hl, $6da4                                  ; $7a87: $21 $a4 $6d
    rlca                                          ; $7a8a: $07
    rst $10                                       ; $7a8b: $d7
    ld l, l                                       ; $7a8c: $6d
    ld h, h                                       ; $7a8d: $64

Jump_06c_7a8e:
    ld [hl-], a                                   ; $7a8e: $32
    ld [hl], $a3                                  ; $7a8f: $36 $a3
    jp nz, $dc25                                  ; $7a91: $c2 $25 $dc

    rst $10                                       ; $7a94: $d7
    ld b, h                                       ; $7a95: $44
    ld c, d                                       ; $7a96: $4a
    ld l, h                                       ; $7a97: $6c
    dec a                                         ; $7a98: $3d
    rst $18                                       ; $7a99: $df
    xor c                                         ; $7a9a: $a9
    adc l                                         ; $7a9b: $8d
    ld [hl], h                                    ; $7a9c: $74
    db $dd                                        ; $7a9d: $dd
    rst $10                                       ; $7a9e: $d7
    rst $18                                       ; $7a9f: $df
    ld b, [hl]                                    ; $7aa0: $46

jr_06c_7aa1:
    xor e                                         ; $7aa1: $ab
    inc hl                                        ; $7aa2: $23
    inc [hl]                                      ; $7aa3: $34
    ld [hl], $26                                  ; $7aa4: $36 $26
    ccf                                           ; $7aa6: $3f
    dec c                                         ; $7aa7: $0d
    rst $00                                       ; $7aa8: $c7
    cp d                                          ; $7aa9: $ba
    rlca                                          ; $7aaa: $07
    ld l, a                                       ; $7aab: $6f
    rlca                                          ; $7aac: $07
    rst $20                                       ; $7aad: $e7
    xor c                                         ; $7aae: $a9
    call nc, $a938                                ; $7aaf: $d4 $38 $a9
    ld [$d5a4], sp                                ; $7ab2: $08 $a4 $d5
    db $10                                        ; $7ab5: $10
    add [hl]                                      ; $7ab6: $86
    add [hl]                                      ; $7ab7: $86
    call nc, $5a40                                ; $7ab8: $d4 $40 $5a
    ld a, [bc]                                    ; $7abb: $0a
    xor e                                         ; $7abc: $ab
    adc [hl]                                      ; $7abd: $8e
    ret nc                                        ; $7abe: $d0

    ld e, b                                       ; $7abf: $58
    and e                                         ; $7ac0: $a3
    sbc e                                         ; $7ac1: $9b
    adc e                                         ; $7ac2: $8b
    cp a                                          ; $7ac3: $bf
    ld d, e                                       ; $7ac4: $53
    rst $08                                       ; $7ac5: $cf
    add [hl]                                      ; $7ac6: $86
    add [hl]                                      ; $7ac7: $86

Call_06c_7ac8:
    inc de                                        ; $7ac8: $13
    ld [hl], h                                    ; $7ac9: $74
    db $eb                                        ; $7aca: $eb
    adc l                                         ; $7acb: $8d
    cp h                                          ; $7acc: $bc
    ld b, h                                       ; $7acd: $44
    db $db                                        ; $7ace: $db
    ld bc, $d2ef                                  ; $7acf: $01 $ef $d2
    or b                                          ; $7ad2: $b0
    dec sp                                        ; $7ad3: $3b
    and $c8                                       ; $7ad4: $e6 $c8
    ld [hl-], a                                   ; $7ad6: $32
    push de                                       ; $7ad7: $d5
    jr z, jr_06c_7aa1                             ; $7ad8: $28 $c7

    ld sp, $d87b                                  ; $7ada: $31 $7b $d8
    ld b, d                                       ; $7add: $42
    and a                                         ; $7ade: $a7
    rra                                           ; $7adf: $1f
    xor [hl]                                      ; $7ae0: $ae
    cp a                                          ; $7ae1: $bf
    ld c, l                                       ; $7ae2: $4d
    dec a                                         ; $7ae3: $3d
    ld a, e                                       ; $7ae4: $7b
    ld h, l                                       ; $7ae5: $65
    ld [hl], d                                    ; $7ae6: $72
    inc [hl]                                      ; $7ae7: $34
    inc a                                         ; $7ae8: $3c
    ld [hl], c                                    ; $7ae9: $71
    db $dd                                        ; $7aea: $dd
    ld [hl], b                                    ; $7aeb: $70
    add d                                         ; $7aec: $82
    or $72                                        ; $7aed: $f6 $72
    ld c, h                                       ; $7aef: $4c
    ret c                                         ; $7af0: $d8

    rst $10                                       ; $7af1: $d7
    ld l, l                                       ; $7af2: $6d
    ld hl, sp+$11                                 ; $7af3: $f8 $11
    db $f4                                        ; $7af5: $f4
    ld b, $4f                                     ; $7af6: $06 $4f
    add hl, hl                                    ; $7af8: $29
    ld a, e                                       ; $7af9: $7b
    db $f4                                        ; $7afa: $f4
    call c, $8baf                                 ; $7afb: $dc $af $8b
    cp a                                          ; $7afe: $bf
    db $d3                                        ; $7aff: $d3
    ld c, a                                       ; $7b00: $4f
    ld sp, hl                                     ; $7b01: $f9
    ld e, a                                       ; $7b02: $5f
    ld a, [bc]                                    ; $7b03: $0a
    rrca                                          ; $7b04: $0f
    ld b, c                                       ; $7b05: $41
    dec e                                         ; $7b06: $1d
    or h                                          ; $7b07: $b4
    call c, Call_06c_4f59                         ; $7b08: $dc $59 $4f
    ld b, l                                       ; $7b0b: $45
    ld [$64a3], sp                                ; $7b0c: $08 $a3 $64
    xor d                                         ; $7b0f: $aa
    add a                                         ; $7b10: $87
    ld [hl], $34                                  ; $7b11: $36 $34
    ld b, h                                       ; $7b13: $44
    xor $5c                                       ; $7b14: $ee $5c
    ld b, $ed                                     ; $7b16: $06 $ed
    rst $30                                       ; $7b18: $f7
    pop bc                                        ; $7b19: $c1
    dec d                                         ; $7b1a: $15
    pop hl                                        ; $7b1b: $e1
    halt                                          ; $7b1c: $76
    or c                                          ; $7b1d: $b1
    sbc a                                         ; $7b1e: $9f
    sub d                                         ; $7b1f: $92
    ld l, e                                       ; $7b20: $6b
    and h                                         ; $7b21: $a4
    dec bc                                        ; $7b22: $0b
    ld h, a                                       ; $7b23: $67
    dec sp                                        ; $7b24: $3b
    nop                                           ; $7b25: $00
    sbc a                                         ; $7b26: $9f
    inc h                                         ; $7b27: $24
    cp d                                          ; $7b28: $ba
    adc d                                         ; $7b29: $8a
    ld h, [hl]                                    ; $7b2a: $66
    dec d                                         ; $7b2b: $15
    cp l                                          ; $7b2c: $bd
    ld a, a                                       ; $7b2d: $7f
    adc a                                         ; $7b2e: $8f
    res 4, c                                      ; $7b2f: $cb $a1
    ld hl, $0755                                  ; $7b31: $21 $55 $07
    ld b, l                                       ; $7b34: $45
    ld b, e                                       ; $7b35: $43
    sbc [hl]                                      ; $7b36: $9e
    ld h, b                                       ; $7b37: $60
    sbc l                                         ; $7b38: $9d
    xor $eb                                       ; $7b39: $ee $eb
    ld l, a                                       ; $7b3b: $6f
    di                                            ; $7b3c: $f3
    ld b, [hl]                                    ; $7b3d: $46
    ld l, a                                       ; $7b3e: $6f
    db $e4                                        ; $7b3f: $e4
    dec h                                         ; $7b40: $25
    jp c, Jump_000_1f0e                           ; $7b41: $da $0e $1f

    xor l                                         ; $7b44: $ad
    ld a, h                                       ; $7b45: $7c
    ld c, d                                       ; $7b46: $4a
    rla                                           ; $7b47: $17
    call c, $8fd6                                 ; $7b48: $dc $d6 $8f
    ld d, e                                       ; $7b4b: $53
    cp c                                          ; $7b4c: $b9
    or e                                          ; $7b4d: $b3
    and d                                         ; $7b4e: $a2
    ld e, c                                       ; $7b4f: $59
    or l                                          ; $7b50: $b5
    ld c, c                                       ; $7b51: $49
    ld b, d                                       ; $7b52: $42
    ld hl, sp-$17                                 ; $7b53: $f8 $e9
    and h                                         ; $7b55: $a4
    ld h, d                                       ; $7b56: $62
    ccf                                           ; $7b57: $3f
    and l                                         ; $7b58: $a5
    dec bc                                        ; $7b59: $0b
    xor [hl]                                      ; $7b5a: $ae
    call nc, $dc18                                ; $7b5b: $d4 $18 $dc
    ret nc                                        ; $7b5e: $d0

    ld a, b                                       ; $7b5f: $78
    ld b, d                                       ; $7b60: $42
    or $d3                                        ; $7b61: $f6 $d3
    db $e4                                        ; $7b63: $e4
    ret nc                                        ; $7b64: $d0

    sub b                                         ; $7b65: $90
    rla                                           ; $7b66: $17
    pop de                                        ; $7b67: $d1
    adc h                                         ; $7b68: $8c
    ld a, [bc]                                    ; $7b69: $0a
    sub a                                         ; $7b6a: $97
    ld [hl], b                                    ; $7b6b: $70
    ld e, a                                       ; $7b6c: $5f
    inc de                                        ; $7b6d: $13
    add hl, hl                                    ; $7b6e: $29
    or c                                          ; $7b6f: $b1
    push af                                       ; $7b70: $f5
    inc a                                         ; $7b71: $3c
    push af                                       ; $7b72: $f5
    ei                                            ; $7b73: $fb
    ldh [rWY], a                                  ; $7b74: $e0 $4a
    ld sp, $894f                                  ; $7b76: $31 $4f $89
    xor e                                         ; $7b79: $ab
    adc b                                         ; $7b7a: $88
    rla                                           ; $7b7b: $17
    adc d                                         ; $7b7c: $8a
    adc [hl]                                      ; $7b7d: $8e
    adc b                                         ; $7b7e: $88
    ld b, [hl]                                    ; $7b7f: $46
    ld c, c                                       ; $7b80: $49
    ld l, e                                       ; $7b81: $6b
    ld [hl], d                                    ; $7b82: $72
    xor b                                         ; $7b83: $a8
    ld d, c                                       ; $7b84: $51
    adc [hl]                                      ; $7b85: $8e
    dec bc                                        ; $7b86: $0b
    sbc c                                         ; $7b87: $99
    dec d                                         ; $7b88: $15
    dec c                                         ; $7b89: $0d
    rst $00                                       ; $7b8a: $c7
    jp z, Jump_06c_5b9d                           ; $7b8b: $ca $9d $5b

    rst $08                                       ; $7b8e: $cf
    sbc e                                         ; $7b8f: $9b
    pop hl                                        ; $7b90: $e1
    ld d, c                                       ; $7b91: $51
    rst $08                                       ; $7b92: $cf
    ld b, d                                       ; $7b93: $42
    ld [hl], l                                    ; $7b94: $75
    ld h, b                                       ; $7b95: $60
    sbc l                                         ; $7b96: $9d
    ld h, [hl]                                    ; $7b97: $66
    ret c                                         ; $7b98: $d8

    cp d                                          ; $7b99: $ba
    db $dd                                        ; $7b9a: $dd
    adc h                                         ; $7b9b: $8c
    ld a, [bc]                                    ; $7b9c: $0a
    sub a                                         ; $7b9d: $97
    ld [hl], b                                    ; $7b9e: $70
    ld e, a                                       ; $7b9f: $5f
    inc de                                        ; $7ba0: $13
    add hl, hl                                    ; $7ba1: $29
    ld hl, $3868                                  ; $7ba2: $21 $68 $38
    ld d, [hl]                                    ; $7ba5: $56
    ld de, $63fe                                  ; $7ba6: $11 $fe $63
    db $db                                        ; $7ba9: $db
    ld bc, $259f                                  ; $7baa: $01 $9f $25
    ccf                                           ; $7bad: $3f
    dec d                                         ; $7bae: $15
    jp nc, Jump_06c_7a09                          ; $7baf: $d2 $09 $7a

    ld a, l                                       ; $7bb2: $7d
    sbc c                                         ; $7bb3: $99
    pop hl                                        ; $7bb4: $e1
    ld [hl+], a                                   ; $7bb5: $22
    inc b                                         ; $7bb6: $04
    db $fd                                        ; $7bb7: $fd
    adc a                                         ; $7bb8: $8f
    inc a                                         ; $7bb9: $3c
    db $eb                                        ; $7bba: $eb
    rst $30                                       ; $7bbb: $f7
    pop bc                                        ; $7bbc: $c1
    ld d, l                                       ; $7bbd: $55
    sub $af                                       ; $7bbe: $d6 $af
    ccf                                           ; $7bc0: $3f
    dec l                                         ; $7bc1: $2d
    xor [hl]                                      ; $7bc2: $ae
    or h                                          ; $7bc3: $b4
    push af                                       ; $7bc4: $f5
    ld b, [hl]                                    ; $7bc5: $46
    ld e, [hl]                                    ; $7bc6: $5e
    and d                                         ; $7bc7: $a2
    xor l                                         ; $7bc8: $ad
    sub a                                         ; $7bc9: $97
    ld c, a                                       ; $7bca: $4f
    ld h, e                                       ; $7bcb: $63
    xor b                                         ; $7bcc: $a8
    inc e                                         ; $7bcd: $1c
    scf                                           ; $7bce: $37
    ld h, l                                       ; $7bcf: $65
    xor d                                         ; $7bd0: $aa
    ld [$a717], sp                                ; $7bd1: $08 $17 $a7
    ld hl, $750c                                  ; $7bd4: $21 $0c $75
    db $ec                                        ; $7bd7: $ec
    cp [hl]                                       ; $7bd8: $be
    cp $06                                        ; $7bd9: $fe $06
    xor e                                         ; $7bdb: $ab
    and a                                         ; $7bdc: $a7
    ld a, [hl+]                                   ; $7bdd: $2a
    ld [$fbb0], a                                 ; $7bde: $ea $b0 $fb
    ld [hl], l                                    ; $7be1: $75
    pop af                                        ; $7be2: $f1
    ld [hl], a                                    ; $7be3: $77
    sbc $38                                       ; $7be4: $de $38
    nop                                           ; $7be6: $00
    rra                                           ; $7be7: $1f
    ld d, a                                       ; $7be8: $57
    ld h, d                                       ; $7be9: $62
    sbc a                                         ; $7bea: $9f
    ld h, h                                       ; $7beb: $64
    dec hl                                        ; $7bec: $2b
    adc e                                         ; $7bed: $8b
    and a                                         ; $7bee: $a7
    rst $18                                       ; $7bef: $df
    rlca                                          ; $7bf0: $07
    scf                                           ; $7bf1: $37
    or h                                          ; $7bf2: $b4
    sub c                                         ; $7bf3: $91
    ret                                           ; $7bf4: $c9


    ld h, $35                                     ; $7bf5: $26 $35
    and e                                         ; $7bf7: $a3
    jp nz, $dc25                                  ; $7bf8: $c2 $25 $dc

    rst $10                                       ; $7bfb: $d7
    ld b, h                                       ; $7bfc: $44
    ld c, d                                       ; $7bfd: $4a
    cp h                                          ; $7bfe: $bc
    ld [hl], c                                    ; $7bff: $71
    nop                                           ; $7c00: $00
    scf                                           ; $7c01: $37
    sub [hl]                                      ; $7c02: $96
    db $eb                                        ; $7c03: $eb
    ld d, h                                       ; $7c04: $54
    ld h, d                                       ; $7c05: $62
    sbc a                                         ; $7c06: $9f
    call nc, $db6d                                ; $7c07: $d4 $6d $db
    ld a, [bc]                                    ; $7c0a: $0a
    ld [hl], c                                    ; $7c0b: $71
    ld d, $54                                     ; $7c0c: $16 $54
    sub a                                         ; $7c0e: $97
    inc de                                        ; $7c0f: $13
    db $f4                                        ; $7c10: $f4
    ei                                            ; $7c11: $fb
    ldh [$86], a                                  ; $7c12: $e0 $86
    ld [hl], $32                                  ; $7c14: $36 $32
    add hl, de                                    ; $7c16: $19
    rst $10                                       ; $7c17: $d7
    sub $8f                                       ; $7c18: $d6 $8f
    cp e                                          ; $7c1a: $bb
    xor a                                         ; $7c1b: $af
    cp a                                          ; $7c1c: $bf
    ld c, l                                       ; $7c1d: $4d
    inc bc                                        ; $7c1e: $03
    adc c                                         ; $7c1f: $89

jr_06c_7c20:
    ld h, l                                       ; $7c20: $65
    ld l, d                                       ; $7c21: $6a
    ld l, b                                       ; $7c22: $68
    sub h                                         ; $7c23: $94
    ld c, e                                       ; $7c24: $4b
    and a                                         ; $7c25: $a7
    ld sp, hl                                     ; $7c26: $f9
    ld [hl], a                                    ; $7c27: $77
    ld c, d                                       ; $7c28: $4a
    adc l                                         ; $7c29: $8d
    pop bc                                        ; $7c2a: $c1
    db $dd                                        ; $7c2b: $dd
    add e                                         ; $7c2c: $83
    or a                                          ; $7c2d: $b7
    ld e, [hl]                                    ; $7c2e: $5e
    adc [hl]                                      ; $7c2f: $8e
    ld d, d                                       ; $7c30: $52
    cp h                                          ; $7c31: $bc
    call c, $03a5                                 ; $7c32: $dc $a5 $03
    rst $20                                       ; $7c35: $e7
    dec sp                                        ; $7c36: $3b
    sbc e                                         ; $7c37: $9b
    ld a, a                                       ; $7c38: $7f
    and a                                         ; $7c39: $a7
    call nc, Call_06c_5c18                        ; $7c3a: $d4 $18 $5c
    add hl, sp                                    ; $7c3d: $39
    ld l, [hl]                                    ; $7c3e: $6e
    sbc l                                         ; $7c3f: $9d
    ld h, [hl]                                    ; $7c40: $66
    db $eb                                        ; $7c41: $eb
    ld b, a                                       ; $7c42: $47
    cp a                                          ; $7c43: $bf
    ld d, e                                       ; $7c44: $53
    sbc h                                         ; $7c45: $9c
    add $20                                       ; $7c46: $c6 $20
    xor b                                         ; $7c48: $a8
    ld h, a                                       ; $7c49: $67
    inc bc                                        ; $7c4a: $03
    add hl, bc                                    ; $7c4b: $09
    ld a, e                                       ; $7c4c: $7b
    jr nz, jr_06c_7c20                            ; $7c4d: $20 $d1

    ld a, [hl+]                                   ; $7c4f: $2a
    ld a, [de]                                    ; $7c50: $1a
    ld [hl], e                                    ; $7c51: $73
    ret c                                         ; $7c52: $d8

    ld a, [$f671]                                 ; $7c53: $fa $71 $f6
    inc l                                         ; $7c56: $2c
    ld [hl], a                                    ; $7c57: $77
    ld [hl], $1c                                  ; $7c58: $36 $1c
    ld c, a                                       ; $7c5a: $4f
    ld e, e                                       ; $7c5b: $5b
    jr z, jr_06c_7c93                             ; $7c5c: $28 $35

    jp nz, $e8de                                  ; $7c5e: $c2 $de $e8

    ld h, a                                       ; $7c61: $67
    ret c                                         ; $7c62: $d8

    rst $38                                       ; $7c63: $ff
    cp h                                          ; $7c64: $bc
    db $dd                                        ; $7c65: $dd
    db $e4                                        ; $7c66: $e4
    ld a, [de]                                    ; $7c67: $1a
    ld l, l                                       ; $7c68: $6d
    jp nc, $742d                                  ; $7c69: $d2 $2d $74

    ld c, d                                       ; $7c6c: $4a
    adc l                                         ; $7c6d: $8d
    db $fc                                        ; $7c6e: $fc
    ld e, $a5                                     ; $7c6f: $1e $a5
    add $e4                                       ; $7c71: $c6 $e4
    sub c                                         ; $7c73: $91
    db $fd                                        ; $7c74: $fd
    ld [hl], h                                    ; $7c75: $74
    db $db                                        ; $7c76: $db
    or [hl]                                       ; $7c77: $b6
    inc bc                                        ; $7c78: $03
    rst $20                                       ; $7c79: $e7
    xor c                                         ; $7c7a: $a9
    call nc, $a938                                ; $7c7b: $d4 $38 $a9
    ld [hl], d                                    ; $7c7e: $72
    ld e, h                                       ; $7c7f: $5c
    and a                                         ; $7c80: $a7
    rst $28                                       ; $7c81: $ef
    ld [hl], b                                    ; $7c82: $70
    push bc                                       ; $7c83: $c5
    ld [hl], l                                    ; $7c84: $75
    ld [hl], c                                    ; $7c85: $71
    ld [$d7a7], a                                 ; $7c86: $ea $a7 $d7
    add $e2                                       ; $7c89: $c6 $e2
    inc a                                         ; $7c8b: $3c
    ld [hl], c                                    ; $7c8c: $71
    ld [hl], e                                    ; $7c8d: $73
    db $fd                                        ; $7c8e: $fd
    ld h, a                                       ; $7c8f: $67
    db $eb                                        ; $7c90: $eb
    adc l                                         ; $7c91: $8d
    cp h                                          ; $7c92: $bc

jr_06c_7c93:
    ld b, h                                       ; $7c93: $44
    ld e, e                                       ; $7c94: $5b
    ccf                                           ; $7c95: $3f
    ld l, [hl]                                    ; $7c96: $6e
    ld l, b                                       ; $7c97: $68
    inc hl                                        ; $7c98: $23
    and d                                         ; $7c99: $a2
    ld [$3f58], a                                 ; $7c9a: $ea $58 $3f
    ld c, c                                       ; $7c9d: $49
    res 1, h                                      ; $7c9e: $cb $8c
    ld a, e                                       ; $7ca0: $7b
    dec e                                         ; $7ca1: $1d
    db $eb                                        ; $7ca2: $eb
    sub b                                         ; $7ca3: $90
    db $fd                                        ; $7ca4: $fd
    and h                                         ; $7ca5: $a4
    add [hl]                                      ; $7ca6: $86
    ld [hl], $32                                  ; $7ca7: $36 $32
    add hl, de                                    ; $7ca9: $19
    xor h                                         ; $7caa: $ac
    pop hl                                        ; $7cab: $e1
    ld e, b                                       ; $7cac: $58
    sub e                                         ; $7cad: $93
    ld b, e                                       ; $7cae: $43
    push hl                                       ; $7caf: $e5
    db $e4                                        ; $7cb0: $e4
    ld l, b                                       ; $7cb1: $68
    ld a, b                                       ; $7cb2: $78
    ld [hl+], a                                   ; $7cb3: $22
    inc [hl]                                      ; $7cb4: $34
    sbc h                                         ; $7cb5: $9c
    or b                                          ; $7cb6: $b0
    push af                                       ; $7cb7: $f5
    ld b, [hl]                                    ; $7cb8: $46
    ld e, [hl]                                    ; $7cb9: $5e
    and d                                         ; $7cba: $a2
    xor l                                         ; $7cbb: $ad
    scf                                           ; $7cbc: $37
    ld b, a                                       ; $7cbd: $47
    sbc [hl]                                      ; $7cbe: $9e
    dec [hl]                                      ; $7cbf: $35
    inc e                                         ; $7cc0: $1c
    rst $08                                       ; $7cc1: $cf
    ld a, [hl-]                                   ; $7cc2: $3a
    ld d, $df                                     ; $7cc3: $16 $df
    daa                                           ; $7cc5: $27
    rrca                                          ; $7cc6: $0f
    ld a, e                                       ; $7cc7: $7b
    db $e3                                        ; $7cc8: $e3
    nop                                           ; $7cc9: $00
    ld l, a                                       ; $7cca: $6f
    sbc a                                         ; $7ccb: $9f
    dec [hl]                                      ; $7ccc: $35
    add hl, sp                                    ; $7ccd: $39
    ld [hl], h                                    ; $7cce: $74
    halt                                          ; $7ccf: $76
    ld sp, $9a3c                                  ; $7cd0: $31 $3c $9a
    ld d, c                                       ; $7cd3: $51
    push bc                                       ; $7cd4: $c5
    adc [hl]                                      ; $7cd5: $8e
    ld a, d                                       ; $7cd6: $7a
    sub [hl]                                      ; $7cd7: $96
    ld a, [de]                                    ; $7cd8: $1a
    sub e                                         ; $7cd9: $93
    sbc a                                         ; $7cda: $9f
    ld a, [$46d1]                                 ; $7cdb: $fa $d1 $46
    sbc e                                         ; $7cde: $9b
    ld [hl], h                                    ; $7cdf: $74
    dec bc                                        ; $7ce0: $0b
    cp d                                          ; $7ce1: $ba
    push af                                       ; $7ce2: $f5
    inc a                                         ; $7ce3: $3c
    push af                                       ; $7ce4: $f5
    cp a                                          ; $7ce5: $bf
    ld a, d                                       ; $7ce6: $7a
    ld a, l                                       ; $7ce7: $7d
    sbc c                                         ; $7ce8: $99
    pop hl                                        ; $7ce9: $e1
    ld [hl+], a                                   ; $7cea: $22
    jp z, Jump_000_0d1c                           ; $7ceb: $ca $1c $0d

    reti                                          ; $7cee: $d9


    ld c, a                                       ; $7cef: $4f
    ld e, c                                       ; $7cf0: $59
    push bc                                       ; $7cf1: $c5
    jp z, $ea7e                                   ; $7cf2: $ca $7e $ea

    reti                                          ; $7cf5: $d9


    dec a                                         ; $7cf6: $3d
    cp b                                          ; $7cf7: $b8
    ld b, [hl]                                    ; $7cf8: $46
    ret                                           ; $7cf9: $c9


    inc e                                         ; $7cfa: $1c
    jp hl                                         ; $7cfb: $e9


    sbc b                                         ; $7cfc: $98
    inc hl                                        ; $7cfd: $23
    or a                                          ; $7cfe: $b7
    inc bc                                        ; $7cff: $03
    rst $10                                       ; $7d00: $d7
    ld l, l                                       ; $7d01: $6d
    ld h, h                                       ; $7d02: $64
    ld [hl-], a                                   ; $7d03: $32
    ld h, h                                       ; $7d04: $64
    ccf                                           ; $7d05: $3f
    push bc                                       ; $7d06: $c5
    ld a, [hl]                                    ; $7d07: $7e
    ld c, d                                       ; $7d08: $4a
    ld c, $95                                     ; $7d09: $0e $95
    or e                                          ; $7d0b: $b3
    inc d                                         ; $7d0c: $14
    dec c                                         ; $7d0d: $0d
    ld h, c                                       ; $7d0e: $61
    add sp, $4e                                   ; $7d0f: $e8 $4e
    ld a, e                                       ; $7d11: $7b
    db $e3                                        ; $7d12: $e3
    nop                                           ; $7d13: $00
    rra                                           ; $7d14: $1f
    ld h, a                                       ; $7d15: $67
    rst $08                                       ; $7d16: $cf
    ld d, d                                       ; $7d17: $52
    ld h, e                                       ; $7d18: $63
    ld [hl], b                                    ; $7d19: $70
    and a                                         ; $7d1a: $a7
    ei                                            ; $7d1b: $fb
    ld a, [$08db]                                 ; $7d1c: $fa $db $08
    ld a, d                                       ; $7d1f: $7a
    ld a, l                                       ; $7d20: $7d
    sbc c                                         ; $7d21: $99
    pop hl                                        ; $7d22: $e1
    ld [hl+], a                                   ; $7d23: $22
    sbc $38                                       ; $7d24: $de $38
    nop                                           ; $7d26: $00
    rra                                           ; $7d27: $1f
    jp nc, $a17a                                  ; $7d28: $d2 $7a $a1

    pop af                                        ; $7d2b: $f1
    ld [hl], a                                    ; $7d2c: $77
    ld a, [hl+]                                   ; $7d2d: $2a
    push bc                                       ; $7d2e: $c5
    adc b                                         ; $7d2f: $88
    or e                                          ; $7d30: $b3
    push af                                       ; $7d31: $f5
    ld a, [$2058]                                 ; $7d32: $fa $58 $20
    or c                                          ; $7d35: $b1
    rst $38                                       ; $7d36: $ff
    sub c                                         ; $7d37: $91
    ld h, a                                       ; $7d38: $67
    call $d3bf                                    ; $7d39: $cd $bf $d3
    rst $38                                       ; $7d3c: $ff
    ld e, c                                       ; $7d3d: $59
    sub e                                         ; $7d3e: $93
    ld l, e                                       ; $7d3f: $6b
    jr c, @+$4b                                   ; $7d40: $38 $49

    ld c, [hl]                                    ; $7d42: $4e
    dec a                                         ; $7d43: $3d
    ei                                            ; $7d44: $fb
    reti                                          ; $7d45: $d9


    call Call_000_0e37                            ; $7d46: $cd $37 $0e
    rst $10                                       ; $7d49: $d7
    jp nc, Jump_06c_538a                          ; $7d4a: $d2 $8a $53

    ld hl, $a09d                                  ; $7d4d: $21 $9d $a0
    ld d, a                                       ; $7d50: $57
    ld h, c                                       ; $7d51: $61
    or $93                                        ; $7d52: $f6 $93
    and b                                         ; $7d54: $a0
    call nc, $dc18                                ; $7d55: $d4 $18 $dc
    ld b, b                                       ; $7d58: $40
    add d                                         ; $7d59: $82
    or d                                          ; $7d5a: $b2
    ld [hl], d                                    ; $7d5b: $72
    call c, $cf34                                 ; $7d5c: $dc $34 $cf
    ld a, a                                       ; $7d5f: $7f
    or [hl]                                       ; $7d60: $b6
    inc bc                                        ; $7d61: $03
    rra                                           ; $7d62: $1f
    dec bc                                        ; $7d63: $0b
    ld l, l                                       ; $7d64: $6d
    sbc l                                         ; $7d65: $9d
    ldh [$67], a                                  ; $7d66: $e0 $67
    db $eb                                        ; $7d68: $eb
    adc l                                         ; $7d69: $8d

jr_06c_7d6a:
    cp h                                          ; $7d6a: $bc
    ld b, h                                       ; $7d6b: $44
    db $db                                        ; $7d6c: $db
    ld bc, $c657                                  ; $7d6d: $01 $57 $c6
    ld c, l                                       ; $7d70: $4d
    sbc c                                         ; $7d71: $99
    ld [$2a97], a                                 ; $7d72: $ea $97 $2a
    dec b                                         ; $7d75: $05
    ld a, l                                       ; $7d76: $7d
    inc h                                         ; $7d77: $24
    sub b                                         ; $7d78: $90
    and b                                         ; $7d79: $a0
    ld a, h                                       ; $7d7a: $7c
    ld h, h                                       ; $7d7b: $64
    dec sp                                        ; $7d7c: $3b
    nop                                           ; $7d7d: $00
    rra                                           ; $7d7e: $1f
    rst $28                                       ; $7d7f: $ef
    pop bc                                        ; $7d80: $c1
    add d                                         ; $7d81: $82
    ld e, [hl]                                    ; $7d82: $5e
    add l                                         ; $7d83: $85
    reti                                          ; $7d84: $d9


    ld c, a                                       ; $7d85: $4f
    ld e, e                                       ; $7d86: $5b
    ld l, a                                       ; $7d87: $6f
    jr nc, jr_06c_7dd1                            ; $7d88: $30 $47

    ld a, $a1                                     ; $7d8a: $3e $a1
    xor h                                         ; $7d8c: $ac
    db $e3                                        ; $7d8d: $e3
    ld l, $1e                                     ; $7d8e: $2e $1e
    ld a, e                                       ; $7d90: $7b
    db $e3                                        ; $7d91: $e3
    nop                                           ; $7d92: $00
    scf                                           ; $7d93: $37
    sub [hl]                                      ; $7d94: $96
    db $db                                        ; $7d95: $db
    ld a, d                                       ; $7d96: $7a
    inc hl                                        ; $7d97: $23
    cpl                                           ; $7d98: $2f
    pop de                                        ; $7d99: $d1
    sub $6b                                       ; $7d9a: $d6 $6b
    ret nc                                        ; $7d9c: $d0

    and $df                                       ; $7d9d: $e6 $df
    ld l, c                                       ; $7d9f: $69
    sbc h                                         ; $7da0: $9c
    adc b                                         ; $7da1: $88
    db $dd                                        ; $7da2: $dd
    ld sp, $6e47                                  ; $7da3: $31 $47 $6e
    rlca                                          ; $7da6: $07
    sub a                                         ; $7da7: $97
    push bc                                       ; $7da8: $c5
    add d                                         ; $7da9: $82
    ld a, [bc]                                    ; $7daa: $0a
    jp hl                                         ; $7dab: $e9


    ld [$8bb8], a                                 ; $7dac: $ea $b8 $8b
    rst $00                                       ; $7daf: $c7
    or [hl]                                       ; $7db0: $b6
    sbc [hl]                                      ; $7db1: $9e
    sub a                                         ; $7db2: $97
    xor c                                         ; $7db3: $a9
    sub b                                         ; $7db4: $90
    ld [c], a                                     ; $7db5: $e2
    ld l, c                                       ; $7db6: $69
    jr nz, jr_06c_7d6a                            ; $7db7: $20 $b1

    ld de, $784e                                  ; $7db9: $11 $4e $78
    pop bc                                        ; $7dbc: $c1
    dec [hl]                                      ; $7dbd: $35
    inc e                                         ; $7dbe: $1c
    push de                                       ; $7dbf: $d5
    xor c                                         ; $7dc0: $a9
    ld h, e                                       ; $7dc1: $63
    ld [hl], a                                    ; $7dc2: $77
    ld a, [hl-]                                   ; $7dc3: $3a
    and c                                         ; $7dc4: $a1
    pop bc                                        ; $7dc5: $c1
    ld [$91a9], a                                 ; $7dc6: $ea $a9 $91
    dec d                                         ; $7dc9: $15
    ld [hl], c                                    ; $7dca: $71
    push bc                                       ; $7dcb: $c5
    ld [hl], l                                    ; $7dcc: $75
    ld [hl], c                                    ; $7dcd: $71
    or [hl]                                       ; $7dce: $b6
    inc bc                                        ; $7dcf: $03
    rst $20                                       ; $7dd0: $e7

jr_06c_7dd1:
    xor c                                         ; $7dd1: $a9
    call z, Call_06c_7272                         ; $7dd2: $cc $72 $72
    inc [hl]                                      ; $7dd5: $34
    xor [hl]                                      ; $7dd6: $ae
    ld c, [hl]                                    ; $7dd7: $4e
    rst $30                                       ; $7dd8: $f7

jr_06c_7dd9:
    push af                                       ; $7dd9: $f5
    or a                                          ; $7dda: $b7
    xor c                                         ; $7ddb: $a9
    ld h, a                                       ; $7ddc: $67
    push hl                                       ; $7ddd: $e5
    db $e4                                        ; $7dde: $e4
    ld l, b                                       ; $7ddf: $68
    ld a, b                                       ; $7de0: $78
    ld [hl+], a                                   ; $7de1: $22
    inc [hl]                                      ; $7de2: $34
    sbc h                                         ; $7de3: $9c
    and b                                         ; $7de4: $a0
    db $db                                        ; $7de5: $db
    ld bc, $671f                                  ; $7de6: $01 $1f $67
    rst $08                                       ; $7de9: $cf
    cp $47                                        ; $7dea: $fe $47
    sbc [hl]                                      ; $7dec: $9e
    sub l                                         ; $7ded: $95
    ld e, c                                       ; $7dee: $59
    ld c, [hl]                                    ; $7def: $4e
    adc [hl]                                      ; $7df0: $8e
    ld [hl], $a9                                  ; $7df1: $36 $a9
    ld c, e                                       ; $7df3: $4b
    db $e3                                        ; $7df4: $e3
    cp h                                          ; $7df5: $bc
    ld [hl], c                                    ; $7df6: $71
    nop                                           ; $7df7: $00
    rst $10                                       ; $7df8: $d7
    sub a                                         ; $7df9: $97
    add hl, de                                    ; $7dfa: $19
    ld l, $a2                                     ; $7dfb: $2e $a2
    ld [hl], c                                    ; $7dfd: $71
    ld h, l                                       ; $7dfe: $65
    ld sp, $954a                                  ; $7dff: $31 $4a $95
    sub e                                         ; $7e02: $93
    db $fd                                        ; $7e03: $fd
    ld a, [c]                                     ; $7e04: $f2
    ld d, e                                       ; $7e05: $53
    xor $6c                                       ; $7e06: $ee $6c
    ld b, [hl]                                    ; $7e08: $46
    dec d                                         ; $7e09: $15
    dec sp                                        ; $7e0a: $3b
    ld [$6a59], a                                 ; $7e0b: $ea $59 $6a
    ld c, h                                       ; $7e0e: $4c

jr_06c_7e0f:
    ld a, [hl]                                    ; $7e0f: $7e
    ld [$1b47], a                                 ; $7e10: $ea $47 $1b
    ld l, l                                       ; $7e13: $6d
    jp nc, $e82d                                  ; $7e14: $d2 $2d $e8

    halt                                          ; $7e17: $76
    nop                                           ; $7e18: $00
    rst $20                                       ; $7e19: $e7
    xor c                                         ; $7e1a: $a9
    sbc [hl]                                      ; $7e1b: $9e
    rst $38                                       ; $7e1c: $ff
    add l                                         ; $7e1d: $85
    ld b, [hl]                                    ; $7e1e: $46
    ld e, d                                       ; $7e1f: $5a
    sub a                                         ; $7e20: $97
    jp $6569                                      ; $7e21: $c3 $69 $65


    ld hl, sp+$69                                 ; $7e24: $f8 $69
    jr nz, jr_06c_7dd9                            ; $7e26: $20 $b1

    rst $10                                       ; $7e28: $d7
    sub a                                         ; $7e29: $97
    add hl, de                                    ; $7e2a: $19
    ld l, $a2                                     ; $7e2b: $2e $a2
    ld [hl], c                                    ; $7e2d: $71
    ld h, l                                       ; $7e2e: $65
    ld sp, $fd8a                                  ; $7e2f: $31 $8a $fd
    inc [hl]                                      ; $7e32: $34
    ld b, l                                       ; $7e33: $45
    rst $38                                       ; $7e34: $ff
    or h                                          ; $7e35: $b4
    jp z, $5d71                                   ; $7e36: $ca $71 $5d

    xor d                                         ; $7e39: $aa
    or e                                          ; $7e3a: $b3
    push af                                       ; $7e3b: $f5
    and $c8                                       ; $7e3c: $e6 $c8
    or e                                          ; $7e3e: $b3
    ld b, d                                       ; $7e3f: $42
    ld b, d                                       ; $7e40: $42
    adc b                                         ; $7e41: $88
    ld a, d                                       ; $7e42: $7a
    or $84                                        ; $7e43: $f6 $84
    inc l                                         ; $7e45: $2c
    add [hl]                                      ; $7e46: $86
    push af                                       ; $7e47: $f5
    sbc c                                         ; $7e48: $99
    rst $20                                       ; $7e49: $e7
    dec de                                        ; $7e4a: $1b
    ld c, [hl]                                    ; $7e4b: $4e

jr_06c_7e4c:
    adc [hl]                                      ; $7e4c: $8e
    and e                                         ; $7e4d: $a3
    dec c                                         ; $7e4e: $0d
    ld h, c                                       ; $7e4f: $61
    jr z, jr_06c_7e4c                             ; $7e50: $28 $fa

    xor [hl]                                      ; $7e52: $ae
    dec l                                         ; $7e53: $2d
    pop de                                        ; $7e54: $d1
    jp z, $d8f7                                   ; $7e55: $ca $f7 $d8

    ld b, d                                       ; $7e58: $42
    jp Jump_06c_46b1                              ; $7e59: $c3 $b1 $46


    ld e, d                                       ; $7e5c: $5a
    sbc c                                         ; $7e5d: $99
    push hl                                       ; $7e5e: $e5
    db $e4                                        ; $7e5f: $e4
    ld l, b                                       ; $7e60: $68
    ldh a, [rHDMA3]                               ; $7e61: $f0 $53
    sub $f3                                       ; $7e63: $d6 $f3
    ccf                                           ; $7e65: $3f
    ei                                            ; $7e66: $fb
    ld a, a                                       ; $7e67: $7f
    ld sp, hl                                     ; $7e68: $f9
    ld l, c                                       ; $7e69: $69
    ld [hl], d                                    ; $7e6a: $72
    ld l, b                                       ; $7e6b: $68
    ld l, b                                       ; $7e6c: $68
    inc de                                        ; $7e6d: $13
    jp c, $87a2                                   ; $7e6e: $da $a2 $87

    ld h, a                                       ; $7e71: $67
    dec a                                         ; $7e72: $3d
    ld a, [hl+]                                   ; $7e73: $2a
    ld e, h                                       ; $7e74: $5c
    jp nz, Jump_06c_4d7d                          ; $7e75: $c2 $7d $4d

    and h                                         ; $7e78: $a4
    call nz, $cbd6                                ; $7e79: $c4 $d6 $cb
    and a                                         ; $7e7c: $a7
    ld sp, $3ff4                                  ; $7e7d: $31 $f4 $3f
    ld a, e                                       ; $7e80: $7b
    ld h, h                                       ; $7e81: $64
    ld b, e                                       ; $7e82: $43
    jr jr_06c_7e0f                                ; $7e83: $18 $8a

    jp z, $aa1d                                   ; $7e85: $ca $1d $aa

    xor h                                         ; $7e88: $ac
    ld h, a                                       ; $7e89: $67
    rst $18                                       ; $7e8a: $df
    and [hl]                                      ; $7e8b: $a6
    adc b                                         ; $7e8c: $88
    adc d                                         ; $7e8d: $8a
    ld e, [hl]                                    ; $7e8e: $5e
    sbc c                                         ; $7e8f: $99
    inc e                                         ; $7e90: $1c
    dec c                                         ; $7e91: $0d
    add l                                         ; $7e92: $85
    or $b2                                        ; $7e93: $f6 $b2
    ld b, l                                       ; $7e95: $45
    ld l, d                                       ; $7e96: $6a
    dec a                                         ; $7e97: $3d
    or h                                          ; $7e98: $b4
    sbc a                                         ; $7e99: $9f
    add hl, de                                    ; $7e9a: $19
    rst $38                                       ; $7e9b: $ff
    ret nc                                        ; $7e9c: $d0

    add [hl]                                      ; $7e9d: $86
    jr nc, @+$56                                  ; $7e9e: $30 $54

    adc [hl]                                      ; $7ea0: $8e
    dec bc                                        ; $7ea1: $0b
    ld [hl], a                                    ; $7ea2: $77
    ld b, [hl]                                    ; $7ea3: $46
    ld e, b                                       ; $7ea4: $58
    dec [hl]                                      ; $7ea5: $35
    and c                                         ; $7ea6: $a1
    ld l, [hl]                                    ; $7ea7: $6e
    xor c                                         ; $7ea8: $a9
    cp $ce                                        ; $7ea9: $fe $ce
    halt                                          ; $7eab: $76
    nop                                           ; $7eac: $00
    scf                                           ; $7ead: $37
    sbc b                                         ; $7eae: $98
    inc hl                                        ; $7eaf: $23
    sbc a                                         ; $7eb0: $9f
    ld d, b                                       ; $7eb1: $50
    sub $71                                       ; $7eb2: $d6 $71
    rla                                           ; $7eb4: $17
    adc a                                         ; $7eb5: $8f
    add hl, bc                                    ; $7eb6: $09
    ld a, d                                       ; $7eb7: $7a
    dec d                                         ; $7eb8: $15
    ld h, [hl]                                    ; $7eb9: $66
    ccf                                           ; $7eba: $3f
    cp l                                          ; $7ebb: $bd
    ld [hl], c                                    ; $7ebc: $71
    nop                                           ; $7ebd: $00
    scf                                           ; $7ebe: $37
    sub [hl]                                      ; $7ebf: $96
    inc de                                        ; $7ec0: $13
    sub h                                         ; $7ec1: $94
    xor c                                         ; $7ec2: $a9
    call z, Call_06c_7272                         ; $7ec3: $cc $72 $72
    inc [hl]                                      ; $7ec6: $34
    xor [hl]                                      ; $7ec7: $ae
    and d                                         ; $7ec8: $a2
    ld [hl], d                                    ; $7ec9: $72
    ld [hl], d                                    ; $7eca: $72
    inc [hl]                                      ; $7ecb: $34
    inc a                                         ; $7ecc: $3c
    ld de, $4e1a                                  ; $7ecd: $11 $1a $4e
    ret c                                         ; $7ed0: $d8

    ld c, $d7                                     ; $7ed1: $0e $d7
    jp nc, Jump_06c_538a                          ; $7ed3: $d2 $8a $53

    ld hl, $a09d                                  ; $7ed6: $21 $9d $a0
    ld d, a                                       ; $7ed9: $57
    ld h, c                                       ; $7eda: $61
    or $d3                                        ; $7edb: $f6 $d3
    sub $6b                                       ; $7edd: $d6 $6b
    ldh a, [rSVBK]                                ; $7edf: $f0 $70
    db $ec                                        ; $7ee1: $ec
    push af                                       ; $7ee2: $f5
    sub l                                         ; $7ee3: $95
    dec h                                         ; $7ee4: $25
    dec hl                                        ; $7ee5: $2b
    ld e, d                                       ; $7ee6: $5a
    ld [de], a                                    ; $7ee7: $12
    ld d, $5c                                     ; $7ee8: $16 $5c
    ld de, $75f7                                  ; $7eea: $11 $f7 $75
    cp e                                          ; $7eed: $bb
    pop hl                                        ; $7eee: $e1
    ld e, b                                       ; $7eef: $58
    inc hl                                        ; $7ef0: $23
    xor l                                         ; $7ef1: $ad
    ld [$ee24], sp                                ; $7ef2: $08 $24 $ee
    db $ec                                        ; $7ef5: $ec
    cp [hl]                                       ; $7ef6: $be
    cp $36                                        ; $7ef7: $fe $36
    push af                                       ; $7ef9: $f5
    db $ec                                        ; $7efa: $ec
    ld a, a                                       ; $7efb: $7f
    or $88                                        ; $7efc: $f6 $88
    sbc $a9                                       ; $7efe: $de $a9
    dec c                                         ; $7f00: $0d
    dec c                                         ; $7f01: $0d
    sub c                                         ; $7f02: $91
    dec sp                                        ; $7f03: $3b
    sub a                                         ; $7f04: $97
    ld b, c                                       ; $7f05: $41
    or a                                          ; $7f06: $b7
    inc bc                                        ; $7f07: $03
    ld d, a                                       ; $7f08: $57
    ld h, c                                       ; $7f09: $61
    or $d3                                        ; $7f0a: $f6 $d3
    and l                                         ; $7f0c: $a5
    sbc $7c                                       ; $7f0d: $de $7c
    ld [c], a                                     ; $7f0f: $e2
    rst $38                                       ; $7f10: $ff
    call nz, $df9f                                ; $7f11: $c4 $9f $df
    ld c, a                                       ; $7f14: $4f
    inc bc                                        ; $7f15: $03
    adc c                                         ; $7f16: $89
    and l                                         ; $7f17: $a5
    add $e0                                       ; $7f18: $c6 $e0
    ld a, [hl-]                                   ; $7f1a: $3a
    xor $e2                                       ; $7f1b: $ee $e2
    or c                                          ; $7f1d: $b1
    db $ed                                        ; $7f1e: $ed
    nop                                           ; $7f1f: $00

jr_06c_7f20:
    rst $20                                       ; $7f20: $e7
    xor c                                         ; $7f21: $a9
    call z, Call_06c_7272                         ; $7f22: $cc $72 $72
    inc [hl]                                      ; $7f25: $34
    xor [hl]                                      ; $7f26: $ae
    ld c, [hl]                                    ; $7f27: $4e
    rst $30                                       ; $7f28: $f7
    push af                                       ; $7f29: $f5
    or a                                          ; $7f2a: $b7
    xor c                                         ; $7f2b: $a9
    and h                                         ; $7f2c: $a4
    push bc                                       ; $7f2d: $c5
    xor c                                         ; $7f2e: $a9
    inc e                                         ; $7f2f: $1c
    ld d, a                                       ; $7f30: $57
    ld d, h                                       ; $7f31: $54
    ld c, [hl]                                    ; $7f32: $4e
    adc [hl]                                      ; $7f33: $8e
    add [hl]                                      ; $7f34: $86
    daa                                           ; $7f35: $27
    ld b, d                                       ; $7f36: $42
    jp $9509                                      ; $7f37: $c3 $09 $95


    or h                                          ; $7f3a: $b4
    adc b                                         ; $7f3b: $88
    ld l, [hl]                                    ; $7f3c: $6e
    db $db                                        ; $7f3d: $db
    ld d, [hl]                                    ; $7f3e: $56
    halt                                          ; $7f3f: $76
    ld [$9ff9], a                                 ; $7f40: $ea $f9 $9f
    db $fd                                        ; $7f43: $fd
    cp a                                          ; $7f44: $bf
    ld a, d                                       ; $7f45: $7a
    ld h, a                                       ; $7f46: $67
    add l                                         ; $7f47: $85
    ld c, e                                       ; $7f48: $4b
    cp b                                          ; $7f49: $b8
    xor a                                         ; $7f4a: $af
    adc c                                         ; $7f4b: $89
    sub h                                         ; $7f4c: $94
    ret c                                         ; $7f4d: $d8

    ld c, $e7                                     ; $7f4e: $0e $e7
    or a                                          ; $7f50: $b7
    inc h                                         ; $7f51: $24
    ld [hl], a                                    ; $7f52: $77
    and $c8                                       ; $7f53: $e6 $c8
    add $27                                       ; $7f55: $c6 $27
    ld [c], a                                     ; $7f57: $e2
    inc de                                        ; $7f58: $13
    pop de                                        ; $7f59: $d1
    jr nz, jr_06c_7f20                            ; $7f5a: $20 $c4

    ld l, $1e                                     ; $7f5c: $2e $1e
    ld b, c                                       ; $7f5e: $41
    xor a                                         ; $7f5f: $af
    jp nz, Jump_000_27ec                          ; $7f60: $c2 $ec $27

    ld b, c                                       ; $7f63: $41
    ld a, c                                       ; $7f64: $79
    dec bc                                        ; $7f65: $0b
    ld de, $398e                                  ; $7f66: $11 $8e $39
    or d                                          ; $7f69: $b2
    ld [hl], d                                    ; $7f6a: $72
    call c, $a994                                 ; $7f6b: $dc $94 $a9
    call nc, $8690                                ; $7f6e: $d4 $90 $86
    ccf                                           ; $7f71: $3f
    or [hl]                                       ; $7f72: $b6
    ld e, [hl]                                    ; $7f73: $5e
    jp Jump_000_3ed2                              ; $7f74: $c3 $d2 $3e


    db $fd                                        ; $7f77: $fd
    ld d, h                                       ; $7f78: $54
    jp Jump_06c_71c9                              ; $7f79: $c3 $c9 $71


    or h                                          ; $7f7c: $b4
    ld hl, $450c                                  ; $7f7d: $21 $0c $45
    rst $18                                       ; $7f80: $df
    or l                                          ; $7f81: $b5
    daa                                           ; $7f82: $27
    sbc $b5                                       ; $7f83: $de $b5
    daa                                           ; $7f85: $27
    sbc $b5                                       ; $7f86: $de $b5
    dec h                                         ; $7f88: $25
    ld e, d                                       ; $7f89: $5a
    ld sp, hl                                     ; $7f8a: $f9
    ld e, $5b                                     ; $7f8b: $1e $5b
    ret c                                         ; $7f8d: $d8

    ld c, $e7                                     ; $7f8e: $0e $e7
    xor c                                         ; $7f90: $a9
    call z, Call_06c_7272                         ; $7f91: $cc $72 $72
    inc [hl]                                      ; $7f94: $34
    xor [hl]                                      ; $7f95: $ae
    ld c, [hl]                                    ; $7f96: $4e
    rst $30                                       ; $7f97: $f7
    push af                                       ; $7f98: $f5
    or a                                          ; $7f99: $b7
    xor c                                         ; $7f9a: $a9
    and h                                         ; $7f9b: $a4
    push bc                                       ; $7f9c: $c5
    xor c                                         ; $7f9d: $a9
    inc e                                         ; $7f9e: $1c
    ld d, a                                       ; $7f9f: $57
    ld d, h                                       ; $7fa0: $54
    ld c, [hl]                                    ; $7fa1: $4e
    adc [hl]                                      ; $7fa2: $8e
    add [hl]                                      ; $7fa3: $86
    daa                                           ; $7fa4: $27
    ld b, d                                       ; $7fa5: $42
    jp $9509                                      ; $7fa6: $c3 $09 $95


    or h                                          ; $7fa9: $b4
    adc b                                         ; $7faa: $88
    db $ed                                        ; $7fab: $ed
    nop                                           ; $7fac: $00
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

Jump_06c_7fd8:
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
