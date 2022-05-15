; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

    ld c, b                                       ; $4000: $48
    ld l, a                                       ; $4001: $6f
    ld d, c                                       ; $4002: $51
    dec de                                        ; $4003: $1b
    ld sp, hl                                     ; $4004: $f9
    db $38, $8e                                   ; $4005: $38 $8e
    rst $20                                       ; $4007: $e7
    adc l                                         ; $4008: $8d
    and a                                         ; $4009: $a7
    ld [hl+], a                                   ; $400a: $22
    inc sp                                        ; $400b: $33
    ret                                           ; $400c: $c9


    ld e, l                                       ; $400d: $5d
    sbc d                                         ; $400e: $9a
    pop de                                        ; $400f: $d1
    and b                                         ; $4010: $a0
    xor a                                         ; $4011: $af
    ld hl, sp+$5c                                 ; $4012: $f8 $5c
    ld d, b                                       ; $4014: $50
    xor l                                         ; $4015: $ad
    ld sp, $e288                                  ; $4016: $31 $88 $e2
    db $dd                                        ; $4019: $dd
    ld a, [hl]                                    ; $401a: $7e
    rst $20                                       ; $401b: $e7
    inc de                                        ; $401c: $13
    rst $30                                       ; $401d: $f7
    xor $85                                       ; $401e: $ee $85
    ld d, a                                       ; $4020: $57
    xor $38                                       ; $4021: $ee $38
    nop                                           ; $4023: $00
    rst $08                                       ; $4024: $cf

jr_048_4025:
    sub l                                         ; $4025: $95
    db $dd                                        ; $4026: $dd
    sub d                                         ; $4027: $92
    ld hl, sp-$13                                 ; $4028: $f8 $ed
    ld l, l                                       ; $402a: $6d
    db $e3                                        ; $402b: $e3
    sbc l                                         ; $402c: $9d
    ld c, h                                       ; $402d: $4c
    call $5f1b                                    ; $402e: $cd $1b $5f
    db $ec                                        ; $4031: $ec
    ld a, a                                       ; $4032: $7f
    ld d, d                                       ; $4033: $52
    ld d, c                                       ; $4034: $51
    ld c, e                                       ; $4035: $4b
    ld d, a                                       ; $4036: $57
    halt                                          ; $4037: $76
    ei                                            ; $4038: $fb
    sbc l                                         ; $4039: $9d
    ld c, a                                       ; $403a: $4f
    call c, Call_000_17bb                         ; $403b: $dc $bb $17
    ld e, [hl]                                    ; $403e: $5e
    cp c                                          ; $403f: $b9
    db $e3                                        ; $4040: $e3
    nop                                           ; $4041: $00
    ld c, a                                       ; $4042: $4f
    ld e, c                                       ; $4043: $59
    ld a, b                                       ; $4044: $78
    ld sp, $6bf7                                  ; $4045: $31 $f7 $6b
    ret nc                                        ; $4048: $d0

    ld d, h                                       ; $4049: $54
    adc e                                         ; $404a: $8b
    jr nc, jr_048_4025                            ; $404b: $30 $d8

    ret                                           ; $404d: $c9


    call nc, $f1bc                                ; $404e: $d4 $bc $f1
    jp nz, $be9f                                  ; $4051: $c2 $9f $be

    jp hl                                         ; $4054: $e9


    cp $52                                        ; $4055: $fe $52
    cp h                                          ; $4057: $bc
    db $db                                        ; $4058: $db
    rst $28                                       ; $4059: $ef
    ld a, h                                       ; $405a: $7c
    ld [c], a                                     ; $405b: $e2
    sbc $bd                                       ; $405c: $de $bd
    ldh a, [$ca]                                  ; $405e: $f0 $ca
    dec e                                         ; $4060: $1d
    rlca                                          ; $4061: $07
    rst $28                                       ; $4062: $ef
    ld [hl], l                                    ; $4063: $75
    rst $20                                       ; $4064: $e7
    ld [bc], a                                    ; $4065: $02
    ret nc                                        ; $4066: $d0

    sbc h                                         ; $4067: $9c
    scf                                           ; $4068: $37
    ld e, [hl]                                    ; $4069: $5e
    add b                                         ; $406a: $80
    pop bc                                        ; $406b: $c1
    ld l, $8d                                     ; $406c: $2e $8d
    ld c, b                                       ; $406e: $48
    call z, $f95e                                 ; $406f: $cc $5e $f9
    call z, Call_000_09a5                         ; $4072: $cc $a5 $09
    ld c, l                                       ; $4075: $4d
    adc [hl]                                      ; $4076: $8e
    rrca                                          ; $4077: $0f
    ld d, a                                       ; $4078: $57
    adc l                                         ; $4079: $8d
    add a                                         ; $407a: $87
    ld l, d                                       ; $407b: $6a
    rst $38                                       ; $407c: $ff
    res 3, l                                      ; $407d: $cb $9d
    ld a, a                                       ; $407f: $7f
    ld a, h                                       ; $4080: $7c
    nop                                           ; $4081: $00
    ld l, a                                       ; $4082: $6f
    dec de                                        ; $4083: $1b
    xor a                                         ; $4084: $af
    call Call_048_7571                            ; $4085: $cd $71 $75
    dec e                                         ; $4088: $1d
    ld d, d                                       ; $4089: $52
    ld e, h                                       ; $408a: $5c
    xor l                                         ; $408b: $ad
    ld sp, $bc41                                  ; $408c: $31 $41 $bc
    ld e, l                                       ; $408f: $5d
    ld b, l                                       ; $4090: $45
    ld e, $aa                                     ; $4091: $1e $aa
    dec a                                         ; $4093: $3d
    rst $38                                       ; $4094: $ff
    jp hl                                         ; $4095: $e9


    ld e, h                                       ; $4096: $5c
    cp l                                          ; $4097: $bd
    and $bc                                       ; $4098: $e6 $bc
    pop af                                        ; $409a: $f1
    ld d, b                                       ; $409b: $50
    db $ed                                        ; $409c: $ed
    ld sp, hl                                     ; $409d: $f9
    sub e                                         ; $409e: $93
    add hl, hl                                    ; $409f: $29
    adc [hl]                                      ; $40a0: $8e
    rrca                                          ; $40a1: $0f
    rst $08                                       ; $40a2: $cf
    rst $20                                       ; $40a3: $e7
    and a                                         ; $40a4: $a7
    ld hl, sp+$00                                 ; $40a5: $f8 $00
    xor a                                         ; $40a7: $af
    and a                                         ; $40a8: $a7
    add e                                         ; $40a9: $83
    and d                                         ; $40aa: $a2
    ld hl, sp+$00                                 ; $40ab: $f8 $00
    rst $10                                       ; $40ad: $d7
    db $e4                                        ; $40ae: $e4
    adc $d8                                       ; $40af: $ce $d8
    ld a, c                                       ; $40b1: $79
    db $e3                                        ; $40b2: $e3
    dec b                                         ; $40b3: $05
    db $dd                                        ; $40b4: $dd
    db $db                                        ; $40b5: $db
    adc l                                         ; $40b6: $8d
    xor d                                         ; $40b7: $aa
    ld h, a                                       ; $40b8: $67
    ld a, d                                       ; $40b9: $7a
    ld h, c                                       ; $40ba: $61
    dec b                                         ; $40bb: $05
    sbc $4f                                       ; $40bc: $de $4f
    adc [hl]                                      ; $40be: $8e
    ld a, [hl]                                    ; $40bf: $7e
    add hl, sp                                    ; $40c0: $39
    sbc $de                                       ; $40c1: $de $de
    ld l, [hl]                                    ; $40c3: $6e
    push de                                       ; $40c4: $d5
    call c, $e9ff                                 ; $40c5: $dc $ff $e9
    adc h                                         ; $40c8: $8c
    ldh a, [$90]                                  ; $40c9: $f0 $90
    ld de, $ec5c                                  ; $40cb: $11 $5c $ec
    sub l                                         ; $40ce: $95
    rst $08                                       ; $40cf: $cf
    ld e, h                                       ; $40d0: $5c
    cp d                                          ; $40d1: $ba

Call_048_40d2:
    ld e, b                                       ; $40d2: $58
    ret nc                                        ; $40d3: $d0

    ld b, l                                       ; $40d4: $45
    cp a                                          ; $40d5: $bf
    cp h                                          ; $40d6: $bc
    call nz, $ccf2                                ; $40d7: $c4 $f2 $cc
    ld [de], a                                    ; $40da: $12
    ld [hl-], a                                   ; $40db: $32
    ld [$2e6a], sp                                ; $40dc: $08 $6a $2e
    ld a, [hl+]                                   ; $40df: $2a
    rst $08                                       ; $40e0: $cf
    ld [hl], a                                    ; $40e1: $77
    ld l, [hl]                                    ; $40e2: $6e
    ld c, c                                       ; $40e3: $49
    or [hl]                                       ; $40e4: $b6
    db $e4                                        ; $40e5: $e4
    dec sp                                        ; $40e6: $3b
    push af                                       ; $40e7: $f5
    ccf                                           ; $40e8: $3f
    pop af                                        ; $40e9: $f1
    and d                                         ; $40ea: $a2
    and [hl]                                      ; $40eb: $a6
    ld l, d                                       ; $40ec: $6a
    add $07                                       ; $40ed: $c6 $07
    rst $10                                       ; $40ef: $d7
    db $e4                                        ; $40f0: $e4
    ld c, [hl]                                    ; $40f1: $4e

Jump_048_40f2:
    dec l                                         ; $40f2: $2d
    rst $28                                       ; $40f3: $ef
    ld h, h                                       ; $40f4: $64
    inc a                                         ; $40f5: $3c
    rst $18                                       ; $40f6: $df
    cp c                                          ; $40f7: $b9
    dec h                                         ; $40f8: $25
    reti                                          ; $40f9: $d9


    sub d                                         ; $40fa: $92
    rst $28                                       ; $40fb: $ef
    call nc, $c4ff                                ; $40fc: $d4 $ff $c4
    ld b, e                                       ; $40ff: $43
    dec d                                         ; $4100: $15
    rra                                           ; $4101: $1f
    rst $10                                       ; $4102: $d7
    cp e                                          ; $4103: $bb
    di                                            ; $4104: $f3

jr_048_4105:
    ld [hl], a                                    ; $4105: $77
    halt                                          ; $4106: $76
    ld [hl-], a                                   ; $4107: $32
    sbc [hl]                                      ; $4108: $9e
    ld d, b                                       ; $4109: $50
    db $dd                                        ; $410a: $dd
    adc d                                         ; $410b: $8a
    ld a, h                                       ; $410c: $7c
    ld l, c                                       ; $410d: $69
    pop de                                        ; $410e: $d1
    cpl                                           ; $410f: $2f
    scf                                           ; $4110: $37
    ld [hl], a                                    ; $4111: $77
    add $20                                       ; $4112: $c6 $20
    cpl                                           ; $4114: $2f
    or $ca                                        ; $4115: $f6 $ca
    ld h, a                                       ; $4117: $67
    ld l, $5d                                     ; $4118: $2e $5d
    call z, $97d2                                 ; $411a: $cc $d2 $97
    call nc, $12dc                                ; $411d: $d4 $dc $12
    jr nc, jr_048_4105                            ; $4120: $30 $e3

    add l                                         ; $4122: $85
    push hl                                       ; $4123: $e5
    dec b                                         ; $4124: $05
    ld e, l                                       ; $4125: $5d
    sub [hl]                                      ; $4126: $96
    ld h, a                                       ; $4127: $67
    ld e, d                                       ; $4128: $5a
    db $ed                                        ; $4129: $ed
    db $ed                                        ; $412a: $ed
    ld b, [hl]                                    ; $412b: $46
    push de                                       ; $412c: $d5
    dec bc                                        ; $412d: $0b
    or c                                          ; $412e: $b1
    inc d                                         ; $412f: $14
    rra                                           ; $4130: $1f
    sub a                                         ; $4131: $97
    push hl                                       ; $4132: $e5
    and c                                         ; $4133: $a1
    sbc d                                         ; $4134: $9a
    ld d, b                                       ; $4135: $50
    ld l, $cd                                     ; $4136: $2e $cd
    or h                                          ; $4138: $b4
    ld e, d                                       ; $4139: $5a
    ret nc                                        ; $413a: $d0

    and l                                         ; $413b: $a5
    inc sp                                        ; $413c: $33
    or a                                          ; $413d: $b7
    call nz, $c954                                ; $413e: $c4 $54 $c9
    pop af                                        ; $4141: $f1
    ld bc, $9a2f                                  ; $4142: $01 $2f $9a
    pop de                                        ; $4145: $d1
    ld c, [hl]                                    ; $4146: $4e
    ld e, l                                       ; $4147: $5d
    ld e, b                                       ; $4148: $58
    ld b, c                                       ; $4149: $41
    ld l, b                                       ; $414a: $68
    ld c, $b4                                     ; $414b: $0e $b4
    cp c                                          ; $414d: $b9
    inc sp                                        ; $414e: $33
    and $7e                                       ; $414f: $e6 $7e
    inc [hl]                                      ; $4151: $34
    xor $dc                                       ; $4152: $ee $dc
    ld [de], a                                    ; $4154: $12
    ld d, e                                       ; $4155: $53
    and l                                         ; $4156: $a5
    ld l, h                                       ; $4157: $6c
    adc $fd                                       ; $4158: $ce $fd
    sbc a                                         ; $415a: $9f
    cp h                                          ; $415b: $bc
    pop af                                        ; $415c: $f1
    ld c, [hl]                                    ; $415d: $4e
    db $dd                                        ; $415e: $dd
    ret                                           ; $415f: $c9


    ld a, b                                       ; $4160: $78
    ld a, [hl+]                                   ; $4161: $2a
    ld a, a                                       ; $4162: $7f
    and c                                         ; $4163: $a1
    add l                                         ; $4164: $85
    dec d                                         ; $4165: $15
    add h                                         ; $4166: $84
    and $40                                       ; $4167: $e6 $40
    ld b, e                                       ; $4169: $43
    di                                            ; $416a: $f3
    pop af                                        ; $416b: $f1
    sbc [hl]                                      ; $416c: $9e
    or e                                          ; $416d: $b3
    dec b                                         ; $416e: $05
    dec e                                         ; $416f: $1d
    or b                                          ; $4170: $b0

Call_048_4171:
    inc b                                         ; $4171: $04

Call_048_4172:
    rla                                           ; $4172: $17
    dec bc                                        ; $4173: $0b
    ld a, [hl]                                    ; $4174: $7e
    add d                                         ; $4175: $82
    and [hl]                                      ; $4176: $a6
    ld [de], a                                    ; $4177: $12
    ld a, a                                       ; $4178: $7f
    nop                                           ; $4179: $00
    xor a                                         ; $417a: $af
    ld h, b                                       ; $417b: $60
    db $db                                        ; $417c: $db
    ld b, d                                       ; $417d: $42
    ld [c], a                                     ; $417e: $e2
    rrca                                          ; $417f: $0f
    rst $08                                       ; $4180: $cf
    rst $38                                       ; $4181: $ff
    rrca                                          ; $4182: $0f
    dec c                                         ; $4183: $0d
    ld [hl], e                                    ; $4184: $73
    ld h, c                                       ; $4185: $61
    ld a, c                                       ; $4186: $79
    ld l, [hl]                                    ; $4187: $6e
    ret                                           ; $4188: $c9


    db $fd                                        ; $4189: $fd
    ld a, [de]                                    ; $418a: $1a
    inc l                                         ; $418b: $2c
    add sp, -$76                                  ; $418c: $e8 $8a
    and b                                         ; $418e: $a0
    add hl, sp                                    ; $418f: $39
    sub l                                         ; $4190: $95
    cp a                                          ; $4191: $bf
    sub b                                         ; $4192: $90
    ld hl, sp+$03                                 ; $4193: $f8 $03
    rst $10                                       ; $4195: $d7
    db $e4                                        ; $4196: $e4
    add h                                         ; $4197: $84
    and $f2                                       ; $4198: $e6 $f2
    add e                                         ; $419a: $83
    dec h                                         ; $419b: $25
    sub [hl]                                      ; $419c: $96
    daa                                           ; $419d: $27
    or l                                          ; $419e: $b5
    add hl, de                                    ; $419f: $19
    dec l                                         ; $41a0: $2d
    ld a, [hl+]                                   ; $41a1: $2a
    cpl                                           ; $41a2: $2f
    ld hl, sp-$32                                 ; $41a3: $f8 $ce
    push bc                                       ; $41a5: $c5
    ld e, [hl]                                    ; $41a6: $5e
    ld sp, hl                                     ; $41a7: $f9
    call z, $f125                                 ; $41a8: $cc $25 $f1
    rlca                                          ; $41ab: $07
    ld d, a                                       ; $41ac: $57
    dec l                                         ; $41ad: $2d
    push hl                                       ; $41ae: $e5

Call_048_41af:
    add d                                         ; $41af: $82
    ld e, [hl]                                    ; $41b0: $5e
    db $ec                                        ; $41b1: $ec
    sub l                                         ; $41b2: $95
    rst $08                                       ; $41b3: $cf
    ld e, h                                       ; $41b4: $5c
    adc d                                         ; $41b5: $8a
    or a                                          ; $41b6: $b7
    sub a                                         ; $41b7: $97
    sbc h                                         ; $41b8: $9c
    add l                                         ; $41b9: $85
    dec d                                         ; $41ba: $15
    ld d, $74                                     ; $41bb: $16 $74
    ld b, c                                       ; $41bd: $41
    and a                                         ; $41be: $a7
    xor e                                         ; $41bf: $ab
    add d                                         ; $41c0: $82
    xor $54                                       ; $41c1: $ee $54
    dec a                                         ; $41c3: $3d
    ld d, b                                       ; $41c4: $50
    db $dd                                        ; $41c5: $dd
    sub d                                         ; $41c6: $92
    adc a                                         ; $41c7: $8f
    rrca                                          ; $41c8: $0f
    cpl                                           ; $41c9: $2f
    sbc d                                         ; $41ca: $9a
    ld d, $a1                                     ; $41cb: $16 $a1
    ld [hl], a                                    ; $41cd: $77
    call nc, $f342                                ; $41ce: $d4 $42 $f3
    adc e                                         ; $41d1: $8b
    db $ec                                        ; $41d2: $ec
    ld a, h                                       ; $41d3: $7c
    xor [hl]                                      ; $41d4: $ae
    sbc [hl]                                      ; $41d5: $9e
    scf                                           ; $41d6: $37
    ld e, $ca                                     ; $41d7: $1e $ca
    sub l                                         ; $41d9: $95
    sub [hl]                                      ; $41da: $96
    ld e, b                                       ; $41db: $58
    sbc $c9                                       ; $41dc: $de $c9
    sub h                                         ; $41de: $94
    ld hl, sp-$13                                 ; $41df: $f8 $ed
    ld a, [hl+]                                   ; $41e1: $2a
    ld h, c                                       ; $41e2: $61
    jp z, $9ef9                                   ; $41e3: $ca $f9 $9e

    cp e                                          ; $41e6: $bb
    or a                                          ; $41e7: $b7
    ld de, $e680                                  ; $41e8: $11 $80 $e6
    xor c                                         ; $41eb: $a9
    jp c, $b27b                                   ; $41ec: $da $7b $b2

    sub h                                         ; $41ef: $94
    rla                                           ; $41f0: $17
    di                                            ; $41f1: $f3
    sub [hl]                                      ; $41f2: $96
    dec sp                                        ; $41f3: $3b
    ld h, e                                       ; $41f4: $63
    sub b                                         ; $41f5: $90
    dec bc                                        ; $41f6: $0b
    cp d                                          ; $41f7: $ba
    db $d3                                        ; $41f8: $d3
    ld c, a                                       ; $41f9: $4f
    rst $18                                       ; $41fa: $df
    call c, Call_000_0ff9                         ; $41fb: $dc $f9 $0f
    inc [hl]                                      ; $41fe: $34
    ld a, e                                       ; $41ff: $7b
    ld l, [hl]                                    ; $4200: $6e
    add $07                                       ; $4201: $c6 $07
    rst $28                                       ; $4203: $ef
    db $fd                                        ; $4204: $fd
    ld b, c                                       ; $4205: $41
    ld h, $17                                     ; $4206: $26 $17
    ld [hl], h                                    ; $4208: $74
    ld l, l                                       ; $4209: $6d
    ld c, [hl]                                    ; $420a: $4e
    ld [hl], b                                    ; $420b: $70
    or h                                          ; $420c: $b4
    xor [hl]                                      ; $420d: $ae
    ld h, b                                       ; $420e: $60
    ld [hl], d                                    ; $420f: $72
    ld h, [hl]                                    ; $4210: $66
    add hl, hl                                    ; $4211: $29
    cp $00                                        ; $4212: $fe $00
    rst $08                                       ; $4214: $cf
    db $fd                                        ; $4215: $fd
    ld a, [$7a81]                                 ; $4216: $fa $81 $7a
    or e                                          ; $4219: $b3
    cp h                                          ; $421a: $bc
    ret c                                         ; $421b: $d8

    and l                                         ; $421c: $a5
    ld de, $8989                                  ; $421d: $11 $89 $89
    rrca                                          ; $4220: $0f
    rst $08                                       ; $4221: $cf
    inc [hl]                                      ; $4222: $34
    rla                                           ; $4223: $17
    cp $0f                                        ; $4224: $fe $0f
    dec c                                         ; $4226: $0d
    call nc, $eeff                                ; $4227: $d4 $ff $ee
    cp e                                          ; $422a: $bb
    and l                                         ; $422b: $a5
    sbc l                                         ; $422c: $9d
    adc h                                         ; $422d: $8c
    and a                                         ; $422e: $a7
    ld a, [c]                                     ; $422f: $f2
    rla                                           ; $4230: $17
    adc d                                         ; $4231: $8a
    rrca                                          ; $4232: $0f
    rst $08                                       ; $4233: $cf
    db $fd                                        ; $4234: $fd
    ld a, [$ff9d]                                 ; $4235: $fa $9d $ff
    push bc                                       ; $4238: $c5
    ld l, $8d                                     ; $4239: $2e $8d
    ld c, b                                       ; $423b: $48
    call z, Call_048_42c5                         ; $423c: $cc $c5 $42
    inc c                                         ; $423f: $0c
    ld d, $b6                                     ; $4240: $16 $b6
    ld [hl+], a                                   ; $4242: $22
    ld e, [hl]                                    ; $4243: $5e
    jp hl                                         ; $4244: $e9


    ld b, a                                       ; $4245: $47
    inc bc                                        ; $4246: $03
    ld [hl], l                                    ; $4247: $75
    ret                                           ; $4248: $c9


    inc c                                         ; $4249: $0c
    ld hl, sp-$08                                 ; $424a: $f8 $f8
    nop                                           ; $424c: $00
    ld d, a                                       ; $424d: $57
    dec l                                         ; $424e: $2d
    push hl                                       ; $424f: $e5
    add hl, de                                    ; $4250: $19
    add e                                         ; $4251: $83
    dec b                                         ; $4252: $05
    rst $18                                       ; $4253: $df
    reti                                          ; $4254: $d9


    jp hl                                         ; $4255: $e9


    sub e                                         ; $4256: $93
    rst $20                                       ; $4257: $e7
    add l                                         ; $4258: $85
    jr jr_048_4287                                ; $4259: $18 $2c

    sbc l                                         ; $425b: $9d
    push hl                                       ; $425c: $e5
    rlca                                          ; $425d: $07
    ld [hl], e                                    ; $425e: $73
    ld c, l                                       ; $425f: $4d
    xor e                                         ; $4260: $ab
    sub d                                         ; $4261: $92
    ld hl, sp+$03                                 ; $4262: $f8 $03
    cpl                                           ; $4264: $2f
    and d                                         ; $4265: $a2
    ld d, d                                       ; $4266: $52
    ldh a, [rNR10]                                ; $4267: $f0 $10
    sbc e                                         ; $4269: $9b
    inc de                                        ; $426a: $13
    sbc d                                         ; $426b: $9a
    dec bc                                        ; $426c: $0b
    cp d                                          ; $426d: $ba
    ld [$97d3], sp                                ; $426e: $08 $d3 $97
    ld b, $7e                                     ; $4271: $06 $7e
    db $fd                                        ; $4273: $fd
    cp h                                          ; $4274: $bc
    push hl                                       ; $4275: $e5
    or b                                          ; $4276: $b0

Call_048_4277:
    cp [hl]                                       ; $4277: $be

Call_048_4278:
    call nc, $cee6                                ; $4278: $d4 $e6 $ce
    dec b                                         ; $427b: $05
    inc e                                         ; $427c: $1c
    rra                                           ; $427d: $1f
    ld l, a                                       ; $427e: $6f
    ld [hl], a                                    ; $427f: $77
    ld a, [c]                                     ; $4280: $f2
    ld b, a                                       ; $4281: $47
    call $e599                                    ; $4282: $cd $99 $e5
    ld a, $b4                                     ; $4285: $3e $b4

jr_048_4287:
    rst $30                                       ; $4287: $f7
    ld c, [hl]                                    ; $4288: $4e
    push bc                                       ; $4289: $c5
    ld d, h                                       ; $428a: $54
    ld e, h                                       ; $428b: $5c
    call z, Call_048_6f78                         ; $428c: $cc $78 $6f
    xor $f4                                       ; $428f: $ee $f4
    ret                                           ; $4291: $c9


    di                                            ; $4292: $f3
    call c, $f9d2                                 ; $4293: $dc $d2 $f9
    jp $9e43                                      ; $4296: $c3 $43 $9e


    rst $28                                       ; $4299: $ef
    sbc $3b                                       ; $429a: $de $3b
    dec d                                         ; $429c: $15
    ld d, e                                       ; $429d: $53
    ld [hl], c                                    ; $429e: $71
    ld sp, $4f41                                  ; $429f: $31 $41 $4f
    and $9b                                       ; $42a2: $e6 $9b
    inc sp                                        ; $42a4: $33
    bit 6, c                                      ; $42a5: $cb $71
    rst $00                                       ; $42a7: $c7
    ld d, h                                       ; $42a8: $54
    add hl, hl                                    ; $42a9: $29
    sbc e                                         ; $42aa: $9b
    ld [hl], e                                    ; $42ab: $73
    rst $38                                       ; $42ac: $ff
    daa                                           ; $42ad: $27
    ld l, a                                       ; $42ae: $6f
    inc a                                         ; $42af: $3c
    ld h, a                                       ; $42b0: $67
    cp [hl]                                       ; $42b1: $be
    ld h, e                                       ; $42b2: $63
    ld a, [hl+]                                   ; $42b3: $2a
    and $dc                                       ; $42b4: $e6 $dc
    sub d                                         ; $42b6: $92
    ld [hl], $e3                                  ; $42b7: $36 $e3
    ld hl, sp+$00                                 ; $42b9: $f8 $00
    ld c, a                                       ; $42bb: $4f
    ld h, c                                       ; $42bc: $61
    or b                                          ; $42bd: $b0
    ld [$4583], sp                                ; $42be: $08 $83 $45
    sbc a                                         ; $42c1: $9f
    rla                                           ; $42c2: $17
    ld [hl], h                                    ; $42c3: $74
    and a                                         ; $42c4: $a7

Call_048_42c5:
    sbc [hl]                                      ; $42c5: $9e
    dec de                                        ; $42c6: $1b
    rra                                           ; $42c7: $1f
    ld l, a                                       ; $42c8: $6f
    ld [hl], a                                    ; $42c9: $77
    sub b                                         ; $42ca: $90
    ld c, c                                       ; $42cb: $49
    reti                                          ; $42cc: $d9


    sbc h                                         ; $42cd: $9c
    ld l, e                                       ; $42ce: $6b
    ld l, c                                       ; $42cf: $69
    and d                                         ; $42d0: $a2
    add l                                         ; $42d1: $85
    ld e, b                                       ; $42d2: $58
    ld a, [$9df3]                                 ; $42d3: $fa $f3 $9d
    ldh a, [$3f]                                  ; $42d6: $f0 $3f
    rst $28                                       ; $42d8: $ef
    cp e                                          ; $42d9: $bb
    and l                                         ; $42da: $a5
    add l                                         ; $42db: $85
    push hl                                       ; $42dc: $e5
    ld b, l                                       ; $42dd: $45

Jump_048_42de:
    dec l                                         ; $42de: $2d
    dec l                                         ; $42df: $2d
    call $ef68                                    ; $42e0: $cd $68 $ef
    sbc l                                         ; $42e3: $9d
    adc d                                         ; $42e4: $8a
    xor c                                         ; $42e5: $a9
    cp b                                          ; $42e6: $b8
    sbc b                                         ; $42e7: $98
    pop af                                        ; $42e8: $f1
    ld l, $2d                                     ; $42e9: $2e $2d
    ld a, l                                       ; $42eb: $7d
    ld [hl], e                                    ; $42ec: $73
    call $bfb9                                    ; $42ed: $cd $b9 $bf
    call c, $809c                                 ; $42f0: $dc $9c $80
    sbc c                                         ; $42f3: $99
    ld c, l                                       ; $42f4: $4d

jr_048_42f5:
    pop hl                                        ; $42f5: $e1
    ld a, a                                       ; $42f6: $7f
    ld a, [c]                                     ; $42f7: $f2
    rla                                           ; $42f8: $17
    ld c, e                                       ; $42f9: $4b
    inc l                                         ; $42fa: $2c
    cpl                                           ; $42fb: $2f
    add sp, -$08                                  ; $42fc: $e8 $f8
    cp e                                          ; $42fe: $bb
    dec h                                         ; $42ff: $25
    push bc                                       ; $4300: $c5
    ld e, a                                       ; $4301: $5f
    ld c, d                                       ; $4302: $4a
    db $ec                                        ; $4303: $ec
    jr nc, jr_048_431d                            ; $4304: $30 $17

    sub [hl]                                      ; $4306: $96
    ld [hl], a                                    ; $4307: $77
    ld [hl-], a                                   ; $4308: $32
    ld l, $cd                                     ; $4309: $2e $cd
    ld a, a                                       ; $430b: $7f
    xor b                                         ; $430c: $a8
    add hl, de                                    ; $430d: $19
    rst $28                                       ; $430e: $ef
    push hl                                       ; $430f: $e5
    ldh a, [$62]                                  ; $4310: $f0 $62
    call Call_000_0c49                            ; $4312: $cd $49 $0c
    db $e4                                        ; $4315: $e4
    inc e                                         ; $4316: $1c
    db $e4                                        ; $4317: $e4
    cp c                                          ; $4318: $b9
    rst $38                                       ; $4319: $ff
    db $d3                                        ; $431a: $d3
    ld a, h                                       ; $431b: $7c
    ld b, a                                       ; $431c: $47

jr_048_431d:
    ld [hl], l                                    ; $431d: $75
    adc $bd                                       ; $431e: $ce $bd
    dec bc                                        ; $4320: $0b
    ld d, e                                       ; $4321: $53
    or d                                          ; $4322: $b2
    adc e                                         ; $4323: $8b
    ld l, d                                       ; $4324: $6a
    call $fa59                                    ; $4325: $cd $59 $fa
    ld d, d                                       ; $4328: $52
    rst $10                                       ; $4329: $d7
    db $fc                                        ; $432a: $fc
    inc d                                         ; $432b: $14
    ld [hl], l                                    ; $432c: $75
    pop de                                        ; $432d: $d1
    ld c, a                                       ; $432e: $4f
    push bc                                       ; $432f: $c5

jr_048_4330:
    dec h                                         ; $4330: $25
    dec d                                         ; $4331: $15
    rra                                           ; $4332: $1f
    rst $08                                       ; $4333: $cf
    db $e4                                        ; $4334: $e4
    and a                                         ; $4335: $a7
    xor b                                         ; $4336: $a8
    adc e                                         ; $4337: $8b
    ld a, [hl]                                    ; $4338: $7e
    ld a, [hl+]                                   ; $4339: $2a
    ld l, $a9                                     ; $433a: $2e $a9
    dec hl                                        ; $433c: $2b
    rlca                                          ; $433d: $07
    rst $10                                       ; $433e: $d7
    db $e4                                        ; $433f: $e4
    ld c, [hl]                                    ; $4340: $4e
    rst $18                                       ; $4341: $df
    sbc c                                         ; $4342: $99
    scf                                           ; $4343: $37
    ld e, $ca                                     ; $4344: $1e $ca
    sbc l                                         ; $4346: $9d
    adc h                                         ; $4347: $8c
    and a                                         ; $4348: $a7
    jr nz, jr_048_42f5                            ; $4349: $20 $aa

    inc hl                                        ; $434b: $23
    sbc e                                         ; $434c: $9b
    sub e                                         ; $434d: $93
    ld c, l                                       ; $434e: $4d
    rst $18                                       ; $434f: $df
    ld hl, sp+$00                                 ; $4350: $f8 $00
    cpl                                           ; $4352: $2f
    ld b, e                                       ; $4353: $43
    ld c, e                                       ; $4354: $4b
    inc sp                                        ; $4355: $33
    sbc d                                         ; $4356: $9a
    rst $28                                       ; $4357: $ef
    add h                                         ; $4358: $84
    rst $38                                       ; $4359: $ff
    add hl, sp                                    ; $435a: $39
    xor b                                         ; $435b: $a8
    adc d                                         ; $435c: $8a
    rrca                                          ; $435d: $0f
    cpl                                           ; $435e: $2f
    ld a, l                                       ; $435f: $7d
    rst $20                                       ; $4360: $e7
    ld h, d                                       ; $4361: $62
    sbc $78                                       ; $4362: $de $78
    daa                                           ; $4364: $27
    ld d, e                                       ; $4365: $53
    xor e                                         ; $4366: $ab
    ld c, b                                       ; $4367: $48
    call nc, Call_000_39b5                        ; $4368: $d4 $b5 $39
    ld e, l                                       ; $436b: $5d
    add hl, hl                                    ; $436c: $29
    ld c, e                                       ; $436d: $4b
    ld d, e                                       ; $436e: $53
    db $ec                                        ; $436f: $ec
    ld c, b                                       ; $4370: $48
    adc c                                         ; $4371: $89
    sbc l                                         ; $4372: $9d
    ld l, e                                       ; $4373: $6b
    call nc, $f78c                                ; $4374: $d4 $8c $f7
    call c, $1faf                                 ; $4377: $dc $af $1f
    xor b                                         ; $437a: $a8
    scf                                           ; $437b: $37
    res 1, e                                      ; $437c: $cb $8b
    ld e, l                                       ; $437e: $5d
    ld a, [de]                                    ; $437f: $1a
    sub c                                         ; $4380: $91
    sbc b                                         ; $4381: $98
    ld hl, sp+$00                                 ; $4382: $f8 $00
    rst $10                                       ; $4384: $d7
    db $e4                                        ; $4385: $e4
    ld c, [hl]                                    ; $4386: $4e
    xor b                                         ; $4387: $a8
    ld a, l                                       ; $4388: $7d
    ld h, a                                       ; $4389: $67
    ld e, d                                       ; $438a: $5a
    or a                                          ; $438b: $b7
    cp c                                          ; $438c: $b9
    ret z                                         ; $438d: $c8

    adc h                                         ; $438e: $8c
    ld [c], a                                     ; $438f: $e2
    jr c, jr_048_4330                             ; $4390: $38 $9e

    inc de                                        ; $4392: $13
    ld b, l                                       ; $4393: $45
    ld [hl], c                                    ; $4394: $71
    inc e                                         ; $4395: $1c
    rst $08                                       ; $4396: $cf
    ld e, e                                       ; $4397: $5b
    jp z, $8d05                                   ; $4398: $ca $05 $8d

    rrca                                          ; $439b: $0f
    rst $08                                       ; $439c: $cf
    db $e4                                        ; $439d: $e4
    jp nc, $9b59                                  ; $439e: $d2 $59 $9b

    inc de                                        ; $43a1: $13
    and c                                         ; $43a2: $a1
    ld d, h                                       ; $43a3: $54
    db $dd                                        ; $43a4: $dd
    ret                                           ; $43a5: $c9


    jp nc, Jump_048_6357                          ; $43a6: $d2 $57 $63

    add d                                         ; $43a9: $82
    ld sp, hl                                     ; $43aa: $f9
    rst $38                                       ; $43ab: $ff
    ld l, c                                       ; $43ac: $69
    cp [hl]                                       ; $43ad: $be
    sub e                                         ; $43ae: $93
    dec h                                         ; $43af: $25
    ld e, c                                       ; $43b0: $59
    jp c, $c28f                                   ; $43b1: $da $8f $c2

    rst $38                                       ; $43b4: $ff
    pop bc                                        ; $43b5: $c1
    jp nc, $f68c                                  ; $43b6: $d2 $8c $f6

    sbc $a9                                       ; $43b9: $de $a9
    sbc b                                         ; $43bb: $98
    adc d                                         ; $43bc: $8a
    adc e                                         ; $43bd: $8b
    add hl, de                                    ; $43be: $19
    rra                                           ; $43bf: $1f
    rst $10                                       ; $43c0: $d7
    ld sp, $3798                                  ; $43c1: $31 $98 $37
    and e                                         ; $43c4: $a3
    adc e                                         ; $43c5: $8b
    add l                                         ; $43c6: $85
    dec d                                         ; $43c7: $15
    ld d, $74                                     ; $43c8: $16 $74
    ld b, c                                       ; $43ca: $41
    rlca                                          ; $43cb: $07
    sbc c                                         ; $43cc: $99
    cp a                                          ; $43cd: $bf
    ld [hl], d                                    ; $43ce: $72
    nop                                           ; $43cf: $00
    rst $10                                       ; $43d0: $d7
    db $ed                                        ; $43d1: $ed
    ld h, d                                       ; $43d2: $62
    ld l, a                                       ; $43d3: $6f
    and e                                         ; $43d4: $a3
    sub $28                                       ; $43d5: $d6 $28
    ret nc                                        ; $43d7: $d0

    daa                                           ; $43d8: $27
    ccf                                           ; $43d9: $3f

jr_048_43da:
    ld d, h                                       ; $43da: $54
    dec bc                                        ; $43db: $0b
    or c                                          ; $43dc: $b1
    ld [hl], h                                    ; $43dd: $74
    ld sp, $296f                                  ; $43de: $31 $6f $29
    rla                                           ; $43e1: $17
    inc [hl]                                      ; $43e2: $34
    ld a, $00                                     ; $43e3: $3e $00
    cpl                                           ; $43e5: $2f
    rr e                                          ; $43e6: $cb $1b
    ld [c], a                                     ; $43e8: $e2
    cp l                                          ; $43e9: $bd
    db $f4                                        ; $43ea: $f4
    sbc l                                         ; $43eb: $9d
    adc e                                         ; $43ec: $8b
    add hl, bc                                    ; $43ed: $09
    ld a, [de]                                    ; $43ee: $1a
    inc bc                                        ; $43ef: $03
    pop de                                        ; $43f0: $d1
    jr nc, jr_048_43da                            ; $43f1: $30 $e7

    dec sp                                        ; $43f3: $3b
    pop bc                                        ; $43f4: $c1
    ld [hl], c                                    ; $43f5: $71
    adc b                                         ; $43f6: $88
    rst $10                                       ; $43f7: $d7
    inc e                                         ; $43f8: $1c
    or b                                          ; $43f9: $b0
    dec h                                         ; $43fa: $25
    sub [hl]                                      ; $43fb: $96
    ld b, a                                       ; $43fc: $47
    ccf                                           ; $43fd: $3f
    db $fd                                        ; $43fe: $fd
    ld sp, hl                                     ; $43ff: $f9
    ld d, h                                       ; $4400: $54
    ld [hl], d                                    ; $4401: $72
    sbc e                                         ; $4402: $9b
    adc a                                         ; $4403: $8f
    rst $08                                       ; $4404: $cf
    rst $18                                       ; $4405: $df
    ld b, [hl]                                    ; $4406: $46
    dec sp                                        ; $4407: $3b
    inc hl                                        ; $4408: $23
    ld [hl], e                                    ; $4409: $73
    ld [hl], a                                    ; $440a: $77
    ld [hl-], a                                   ; $440b: $32
    sbc [hl]                                      ; $440c: $9e
    inc h                                         ; $440d: $24
    xor h                                         ; $440e: $ac

jr_048_440f:
    ld d, b                                       ; $440f: $50
    db $dd                                        ; $4410: $dd
    db $f4                                        ; $4411: $f4
    cp l                                          ; $4412: $bd
    sbc b                                         ; $4413: $98
    inc h                                         ; $4414: $24
    rlca                                          ; $4415: $07
    and c                                         ; $4416: $a1
    and [hl]                                      ; $4417: $a6
    rst $28                                       ; $4418: $ef
    add sp, -$4d                                  ; $4419: $e8 $b3
    ret nc                                        ; $441b: $d0

    ld a, [hl+]                                   ; $441c: $2a
    add l                                         ; $441d: $85
    ld d, l                                       ; $441e: $55
    jp $ef9c                                      ; $441f: $c3 $9c $ef


    ld a, [hl]                                    ; $4422: $7e
    inc b                                         ; $4423: $04
    ld [$8262], a                                 ; $4424: $ea $62 $82
    ld a, b                                       ; $4427: $78
    ld d, a                                       ; $4428: $57
    ld l, a                                       ; $4429: $6f
    and e                                         ; $442a: $a3
    ret                                           ; $442b: $c9


    ld h, [hl]                                    ; $442c: $66
    halt                                          ; $442d: $76
    rst $38                                       ; $442e: $ff
    res 3, l                                      ; $442f: $cb $9d
    xor d                                         ; $4431: $aa
    rst $10                                       ; $4432: $d7
    and [hl]                                      ; $4433: $a6
    jp c, Jump_048_78c9                           ; $4434: $da $c9 $78

    ld a, [bc]                                    ; $4437: $0a

jr_048_4438:
    ld e, $1a                                     ; $4438: $1e $1a
    ld [hl], e                                    ; $443a: $73
    ld [hl], e                                    ; $443b: $73
    ld l, [hl]                                    ; $443c: $6e
    ld c, c                                       ; $443d: $49
    ld hl, sp+$04                                 ; $443e: $f8 $04
    sbc d                                         ; $4440: $9a
    dec sp                                        ; $4441: $3b
    inc hl                                        ; $4442: $23
    ld [hl], e                                    ; $4443: $73
    add a                                         ; $4444: $87
    add hl, sp                                    ; $4445: $39
    rst $18                                       ; $4446: $df
    sbc l                                         ; $4447: $9d
    ld sp, $9600                                  ; $4448: $31 $00 $96
    and b                                         ; $444b: $a0
    ld a, c                                       ; $444c: $79
    or c                                          ; $444d: $b1
    ret z                                         ; $444e: $c8

    adc h                                         ; $444f: $8c
    and $cd                                       ; $4450: $e6 $cd
    ld l, b                                       ; $4452: $68
    pop de                                        ; $4453: $d1
    rst $20                                       ; $4454: $e7
    dec b                                         ; $4455: $05
    ld e, l                                       ; $4456: $5d
    ld h, d                                       ; $4457: $62
    ld a, c                                       ; $4458: $79
    rra                                           ; $4459: $1f
    sbc d                                         ; $445a: $9a
    ld l, $73                                     ; $445b: $2e $73
    db $e3                                        ; $445d: $e3
    cp l                                          ; $445e: $bd
    inc l                                         ; $445f: $2c
    ld l, a                                       ; $4460: $6f
    cp b                                          ; $4461: $b8
    ret c                                         ; $4462: $d8

    xor c                                         ; $4463: $a9
    inc bc                                        ; $4464: $03
    ld h, [hl]                                    ; $4465: $66
    add hl, de                                    ; $4466: $19
    rra                                           ; $4467: $1f
    ld d, a                                       ; $4468: $57
    call $4268                                    ; $4469: $cd $68 $42
    ld [hl], e                                    ; $446c: $73
    ld b, c                                       ; $446d: $41
    push bc                                       ; $446e: $c5
    rst $28                                       ; $446f: $ef
    dec d                                         ; $4470: $15
    ld a, [$4b42]                                 ; $4471: $fa $42 $4b
    inc de                                        ; $4474: $13
    jr nc, jr_048_440f                            ; $4475: $30 $98

    rst $28                                       ; $4477: $ef
    nop                                           ; $4478: $00
    db $fd                                        ; $4479: $fd
    ld b, d                                       ; $447a: $42
    db $e3                                        ; $447b: $e3
    ld c, [hl]                                    ; $447c: $4e
    ret nc                                        ; $447d: $d0

    jr jr_048_4438                                ; $447e: $18 $b8

    ld c, l                                       ; $4480: $4d
    pop af                                        ; $4481: $f1
    rlca                                          ; $4482: $07
    or a                                          ; $4483: $b7
    pop af                                        ; $4484: $f1
    ld d, b                                       ; $4485: $50
    dec l                                         ; $4486: $2d
    or c                                          ; $4487: $b1
    ld d, e                                       ; $4488: $53
    ld a, [de]                                    ; $4489: $1a
    and e                                         ; $448a: $a3
    db $fd                                        ; $448b: $fd
    ld l, b                                       ; $448c: $68
    sbc b                                         ; $448d: $98
    dec bc                                        ; $448e: $0b
    cp d                                          ; $448f: $ba
    ld [hl], $39                                  ; $4490: $36 $39
    add sp, -$18                                  ; $4492: $e8 $e8
    and a                                         ; $4494: $a7
    rra                                           ; $4495: $1f
    ld [hl], a                                    ; $4496: $77
    ld a, [bc]                                    ; $4497: $0a
    ld e, $1a                                     ; $4498: $1e $1a
    ld d, c                                       ; $449a: $51
    ld [hl], l                                    ; $449b: $75
    di                                            ; $449c: $f3
    ld h, d                                       ; $449d: $62
    sub a                                         ; $449e: $97
    ld b, [hl]                                    ; $449f: $46
    inc h                                         ; $44a0: $24
    ld h, $3e                                     ; $44a1: $26 $3e
    nop                                           ; $44a3: $00
    rst $08                                       ; $44a4: $cf
    ld l, d                                       ; $44a5: $6a
    ld c, h                                       ; $44a6: $4c
    add hl, sp                                    ; $44a7: $39
    rst $38                                       ; $44a8: $ff
    ccf                                           ; $44a9: $3f
    add hl, hl                                    ; $44aa: $29
    ld [hl], $08                                  ; $44ab: $36 $08
    ld l, d                                       ; $44ad: $6a
    ld e, [hl]                                    ; $44ae: $5e
    inc c                                         ; $44af: $0c
    push hl                                       ; $44b0: $e5
    jp nz, $030a                                  ; $44b1: $c2 $0a $03

    ld l, l                                       ; $44b4: $6d
    xor $8c                                       ; $44b5: $ee $8c
    cp c                                          ; $44b7: $b9
    rra                                           ; $44b8: $1f
    adc l                                         ; $44b9: $8d
    ld c, e                                       ; $44ba: $4b
    ld c, $18                                     ; $44bb: $0e $18
    ld [hl], a                                    ; $44bd: $77
    pop de                                        ; $44be: $d1
    ld h, a                                       ; $44bf: $67
    xor $dc                                       ; $44c0: $ee $dc
    rst $38                                       ; $44c2: $ff
    ld l, c                                       ; $44c3: $69
    ld b, $0f                                     ; $44c4: $06 $0f
    cp c                                          ; $44c6: $b9
    inc h                                         ; $44c7: $24
    ld l, b                                       ; $44c8: $68
    inc c                                         ; $44c9: $0c
    call c, $8a92                                 ; $44ca: $dc $92 $8a
    rrca                                          ; $44cd: $0f
    rst $10                                       ; $44ce: $d7
    db $e4                                        ; $44cf: $e4
    ld [hl+], a                                   ; $44d0: $22
    inc sp                                        ; $44d1: $33
    ret                                           ; $44d2: $c9


    ld e, l                                       ; $44d3: $5d
    call nc, $3f9d                                ; $44d4: $d4 $9d $3f
    add c                                         ; $44d7: $81
    and $be                                       ; $44d8: $e6 $be
    ld e, e                                       ; $44da: $5b
    ld e, d                                       ; $44db: $5a
    ret nc                                        ; $44dc: $d0

    adc e                                         ; $44dd: $8b
    ld e, l                                       ; $44de: $5d
    ld a, [de]                                    ; $44df: $1a
    sub c                                         ; $44e0: $91
    sbc b                                         ; $44e1: $98
    ld hl, sp+$00                                 ; $44e2: $f8 $00
    sub a                                         ; $44e4: $97
    ld b, [hl]                                    ; $44e5: $46
    inc h                                         ; $44e6: $24
    and $62                                       ; $44e7: $e6 $62
    or a                                          ; $44e9: $b7
    pop af                                        ; $44ea: $f1
    ld d, b                                       ; $44eb: $50
    dec l                                         ; $44ec: $2d
    or c                                          ; $44ed: $b1
    inc a                                         ; $44ee: $3c
    inc sp                                        ; $44ef: $33
    ld a, [c]                                     ; $44f0: $f2
    ld [$5ae6], sp                                ; $44f1: $08 $e6 $5a
    ld l, $e8                                     ; $44f4: $2e $e8
    ld a, [hl]                                    ; $44f6: $7e
    inc [hl]                                      ; $44f7: $34
    ld a, a                                       ; $44f8: $7f
    dec de                                        ; $44f9: $1b
    adc l                                         ; $44fa: $8d
    dec e                                         ; $44fb: $1d
    and l                                         ; $44fc: $a5
    sbc d                                         ; $44fd: $9a
    ld c, $f2                                     ; $44fe: $0e $f2
    cp b                                          ; $4500: $b8
    add e                                         ; $4501: $83
    or b                                          ; $4502: $b0
    ld d, b                                       ; $4503: $50
    ld [hl], e                                    ; $4504: $73
    call $5f81                                    ; $4505: $cd $81 $5f
    rst $18                                       ; $4508: $df
    adc e                                         ; $4509: $8b
    ld a, l                                       ; $450a: $7d
    rst $00                                       ; $450b: $c7
    ld [hl], a                                    ; $450c: $77
    sub a                                         ; $450d: $97
    ld b, $08                                     ; $450e: $06 $08
    db $fd                                        ; $4510: $fd
    cp b                                          ; $4511: $b8
    db $d3                                        ; $4512: $d3
    add $cd                                       ; $4513: $c6 $cd
    ld b, c                                       ; $4515: $41
    ld e, b                                       ; $4516: $58
    ld e, c                                       ; $4517: $59
    ld l, d                                       ; $4518: $6a

jr_048_4519:
    add $07                                       ; $4519: $c6 $07
    ld c, a                                       ; $451b: $4f
    ld l, d                                       ; $451c: $6a
    db $dd                                        ; $451d: $dd
    ld e, c                                       ; $451e: $59
    ld a, [$7352]                                 ; $451f: $fa $52 $73
    ld h, a                                       ; $4522: $67
    inc c                                         ; $4523: $0c
    ld [hl], d                                    ; $4524: $72
    and [hl]                                      ; $4525: $a6
    daa                                           ; $4526: $27
    ld h, b                                       ; $4527: $60
    ld h, [hl]                                    ; $4528: $66
    inc sp                                        ; $4529: $33
    ld a, $00                                     ; $452a: $3e $00
    sub a                                         ; $452c: $97
    ld b, [hl]                                    ; $452d: $46
    inc h                                         ; $452e: $24
    and $62                                       ; $452f: $e6 $62
    ld b, c                                       ; $4531: $41
    ld b, a                                       ; $4532: $47
    ld h, [hl]                                    ; $4533: $66
    sub d                                         ; $4534: $92
    sub a                                         ; $4535: $97
    rra                                           ; $4536: $1f
    ld c, h                                       ; $4537: $4c
    ld h, l                                       ; $4538: $65
    or l                                          ; $4539: $b5
    ld l, $cd                                     ; $453a: $2e $cd
    ld [hl], a                                    ; $453c: $77
    and a                                         ; $453d: $a7
    add d                                         ; $453e: $82
    ret                                           ; $453f: $c9


    inc de                                        ; $4540: $13
    ld b, $3c                                     ; $4541: $06 $3c
    ld l, a                                       ; $4543: $6f
    cp c                                          ; $4544: $b9
    rla                                           ; $4545: $17
    adc l                                         ; $4546: $8d
    ldh [$d5], a                                  ; $4547: $e0 $d5
    ld l, d                                       ; $4549: $6a
    sub b                                         ; $454a: $90
    ld a, c                                       ; $454b: $79
    pop af                                        ; $454c: $f1
    rlca                                          ; $454d: $07
    ld l, a                                       ; $454e: $6f
    ld [hl], a                                    ; $454f: $77
    ld h, a                                       ; $4550: $67
    inc c                                         ; $4551: $0c
    ld [hl], d                                    ; $4552: $72
    cp $36                                        ; $4553: $fe $36
    jp c, $c7f9                                   ; $4555: $da $f9 $c7

    ld [hl], c                                    ; $4558: $71
    inc a                                         ; $4559: $3c
    db $d3                                        ; $455a: $d3
    ld l, d                                       ; $455b: $6a
    and a                                         ; $455c: $a7
    adc $b4                                       ; $455d: $ce $b4
    ld l, [hl]                                    ; $455f: $6e
    ld h, h                                       ; $4560: $64
    and [hl]                                      ; $4561: $a6
    daa                                           ; $4562: $27
    ld h, b                                       ; $4563: $60
    or b                                          ; $4564: $b0
    xor b                                         ; $4565: $a8
    jp nc, Jump_000_268c                          ; $4566: $d2 $8c $26

    ld l, b                                       ; $4569: $68
    inc c                                         ; $456a: $0c
    call c, Call_048_7c66                         ; $456b: $dc $66 $7c
    nop                                           ; $456e: $00
    ld l, a                                       ; $456f: $6f
    and b                                         ; $4570: $a0
    ld e, [hl]                                    ; $4571: $5e
    ret nc                                        ; $4572: $d0

    cp c                                          ; $4573: $b9
    cp a                                          ; $4574: $bf
    call c, $87dc                                 ; $4575: $dc $dc $87
    ld [c], a                                     ; $4578: $e2
    jr c, jr_048_4519                             ; $4579: $38 $9e

    and l                                         ; $457b: $a5
    cpl                                           ; $457c: $2f
    xor c                                         ; $457d: $a9
    ret                                           ; $457e: $c9


    ld h, [hl]                                    ; $457f: $66
    halt                                          ; $4580: $76
    rst $20                                       ; $4581: $e7
    xor $54                                       ; $4582: $ee $54
    cp l                                          ; $4584: $bd
    ld [hl], $d5                                  ; $4585: $36 $d5
    ld b, b                                       ; $4587: $40
    ld bc, $6a15                                  ; $4588: $01 $15 $6a
    xor $f4                                       ; $458b: $ee $f4
    ret                                           ; $458d: $c9


    scf                                           ; $458e: $37
    db $e3                                        ; $458f: $e3
    inc bc                                        ; $4590: $03
    ld d, a                                       ; $4591: $57
    ld a, e                                       ; $4592: $7b
    xor $98                                       ; $4593: $ee $98
    inc c                                         ; $4595: $0c
    add d                                         ; $4596: $82
    sbc d                                         ; $4597: $9a
    ei                                            ; $4598: $fb
    ret nc                                        ; $4599: $d0

    sbc d                                         ; $459a: $9a
    di                                            ; $459b: $f3
    sub [hl]                                      ; $459c: $96
    dec sp                                        ; $459d: $3b
    ld h, e                                       ; $459e: $63
    sub b                                         ; $459f: $90
    dec sp                                        ; $45a0: $3b
    ld [hl], l                                    ; $45a1: $75
    add l                                         ; $45a2: $85
    add a                                         ; $45a3: $87
    inc a                                         ; $45a4: $3c
    call z, Call_048_77bd                         ; $45a5: $cc $bd $77
    ld a, [hl+]                                   ; $45a8: $2a
    and [hl]                                      ; $45a9: $a6
    ld [c], a                                     ; $45aa: $e2
    ld h, d                                       ; $45ab: $62
    add $07                                       ; $45ac: $c6 $07
    sub a                                         ; $45ae: $97
    ld e, b                                       ; $45af: $58
    jp c, $8319                                   ; $45b0: $da $19 $83

    sbc h                                         ; $45b3: $9c
    rst $28                                       ; $45b4: $ef
    ld e, d                                       ; $45b5: $5a
    ld d, d                                       ; $45b6: $52
    call c, $8cc0                                 ; $45b7: $dc $c0 $8c
    call nc, Call_000_20c5                        ; $45ba: $d4 $c5 $20
    ld a, [$2aa2]                                 ; $45bd: $fa $a2 $2a
    push af                                       ; $45c0: $f5
    ld l, c                                       ; $45c1: $69
    ld c, a                                       ; $45c2: $4f
    and [hl]                                      ; $45c3: $a6
    cpl                                           ; $45c4: $2f
    ld l, c                                       ; $45c5: $69
    ld c, h                                       ; $45c6: $4c
    db $10                                        ; $45c7: $10
    rra                                           ; $45c8: $1f
    ld l, a                                       ; $45c9: $6f
    ld d, a                                       ; $45ca: $57
    rr a                                          ; $45cb: $cb $1f
    db $ed                                        ; $45cd: $ed
    ld b, e                                       ; $45ce: $43
    ld a, e                                       ; $45cf: $7b
    rst $28                                       ; $45d0: $ef
    ld d, h                                       ; $45d1: $54
    ld c, h                                       ; $45d2: $4c
    push bc                                       ; $45d3: $c5
    push bc                                       ; $45d4: $c5
    adc h                                         ; $45d5: $8c
    ld [hl], a                                    ; $45d6: $77
    push de                                       ; $45d7: $d5
    ld a, h                                       ; $45d8: $7c
    dec [hl]                                      ; $45d9: $35
    ld b, $72                                     ; $45da: $06 $72
    ld b, d                                       ; $45dc: $42
    ld bc, $cf26                                  ; $45dd: $01 $26 $cf
    ld [hl], a                                    ; $45e0: $77
    rst $10                                       ; $45e1: $d7
    jp nc, Jump_048_6357                          ; $45e2: $d2 $57 $63

    ld [bc], a                                    ; $45e5: $02
    dec b                                         ; $45e6: $05
    cpl                                           ; $45e7: $2f
    dec [hl]                                      ; $45e8: $35
    ld a, [$dd89]                                 ; $45e9: $fa $89 $dd
    ret                                           ; $45ec: $c9


    adc h                                         ; $45ed: $8c
    jr nc, jr_048_4607                            ; $45ee: $30 $17

    jr c, jr_048_464c                             ; $45f0: $38 $5a

    ld h, e                                       ; $45f2: $63
    ld [hl], a                                    ; $45f3: $77
    ld a, [$9be4]                                 ; $45f4: $fa $e4 $9b
    ld [hl], e                                    ; $45f7: $73
    ld c, e                                       ; $45f8: $4b
    cp [hl]                                       ; $45f9: $be
    push de                                       ; $45fa: $d5
    ld a, [hl]                                    ; $45fb: $7e
    rst $18                                       ; $45fc: $df
    dec l                                         ; $45fd: $2d
    call Call_048_6e77                            ; $45fe: $cd $77 $6e
    ld c, c                                       ; $4601: $49
    pop bc                                        ; $4602: $c1
    ld b, e                                       ; $4603: $43
    call nc, $e9ba                                ; $4604: $d4 $ba $e9

jr_048_4607:
    dec sp                                        ; $4607: $3b
    inc de                                        ; $4608: $13
    ld sp, hl                                     ; $4609: $f9
    ld l, d                                       ; $460a: $6a
    ld c, h                                       ; $460b: $4c
    ret nc                                        ; $460c: $d0

    ld a, h                                       ; $460d: $7c
    ld l, h                                       ; $460e: $6c
    rst $08                                       ; $460f: $cf
    ld de, $448a                                  ; $4610: $11 $8a $44
    cp a                                          ; $4613: $bf
    jp hl                                         ; $4614: $e9


    ccf                                           ; $4615: $3f
    ld e, l                                       ; $4616: $5d
    db $ec                                        ; $4617: $ec
    jp nc, $8911                                  ; $4618: $d2 $11 $89

    xor d                                         ; $461b: $aa
    ld hl, $7447                                  ; $461c: $21 $47 $74
    or c                                          ; $461f: $b1
    rst $10                                       ; $4620: $d7
    call z, Call_048_4a6d                         ; $4621: $cc $6d $4a

jr_048_4624:
    ld l, l                                       ; $4624: $6d
    adc $69                                       ; $4625: $ce $69
    ld e, a                                       ; $4627: $5f
    or h                                          ; $4628: $b4
    rst $30                                       ; $4629: $f7
    ld c, [hl]                                    ; $462a: $4e
    and $7d                                       ; $462b: $e6 $7d
    add hl, bc                                    ; $462d: $09
    pop hl                                        ; $462e: $e1
    ld h, c                                       ; $462f: $61

jr_048_4630:
    cp h                                          ; $4630: $bc
    db $eb                                        ; $4631: $eb
    sbc l                                         ; $4632: $9d
    jp nc, Jump_000_1066                          ; $4633: $d2 $66 $10

    xor a                                         ; $4636: $af
    add hl, sp                                    ; $4637: $39
    push bc                                       ; $4638: $c5
    adc [hl]                                      ; $4639: $8e
    ld l, a                                       ; $463a: $6f
    adc c                                         ; $463b: $89
    rst $30                                       ; $463c: $f7
    and c                                         ; $463d: $a1
    ld sp, hl                                     ; $463e: $f9
    adc $44                                       ; $463f: $ce $44
    cp [hl]                                       ; $4641: $be
    ld a, [de]                                    ; $4642: $1a
    inc de                                        ; $4643: $13
    db $ec                                        ; $4644: $ec
    ld h, h                                       ; $4645: $64
    ld b, [hl]                                    ; $4646: $46
    rra                                           ; $4647: $1f

jr_048_4648:
    ld e, d                                       ; $4648: $5a
    ret nc                                        ; $4649: $d0

    ld [hl], c                                    ; $464a: $71
    xor c                                         ; $464b: $a9

jr_048_464c:
    ldh a, [$90]                                  ; $464c: $f0 $90
    push hl                                       ; $464e: $e5
    adc a                                         ; $464f: $8f
    jr c, jr_048_4630                             ; $4650: $38 $de

    adc e                                         ; $4652: $8b
    push hl                                       ; $4653: $e5
    ld sp, hl                                     ; $4654: $f9
    adc $44                                       ; $4655: $ce $44
    cp [hl]                                       ; $4657: $be
    ld a, [de]                                    ; $4658: $1a
    inc de                                        ; $4659: $13
    jr z, jr_048_4624                             ; $465a: $28 $c8

    ld c, c                                       ; $465c: $49
    ld l, [hl]                                    ; $465d: $6e
    adc $63                                       ; $465e: $ce $63
    rla                                           ; $4660: $17
    jr c, jr_048_46bd                             ; $4661: $38 $5a

    ld h, e                                       ; $4663: $63
    rst $20                                       ; $4664: $e7
    sub [hl]                                      ; $4665: $96
    inc a                                         ; $4666: $3c
    ld [hl], $9b                                  ; $4667: $36 $9b
    sub e                                         ; $4669: $93
    ld c, [hl]                                    ; $466a: $4e
    ld h, [hl]                                    ; $466b: $66
    ld [hl], e                                    ; $466c: $73
    add c                                         ; $466d: $81
    and e                                         ; $466e: $a3
    dec [hl]                                      ; $466f: $35
    halt                                          ; $4670: $76
    cp [hl]                                       ; $4671: $be
    inc sp                                        ; $4672: $33
    sub c                                         ; $4673: $91
    xor a                                         ; $4674: $af
    add $04                                       ; $4675: $c6 $04
    ld c, d                                       ; $4677: $4a
    xor b                                         ; $4678: $a8
    inc l                                         ; $4679: $2c
    db $ed                                        ; $467a: $ed
    add h                                         ; $467b: $84
    sbc c                                         ; $467c: $99
    call $00f8                                    ; $467d: $cd $f8 $00
    xor a                                         ; $4680: $af
    jr z, jr_048_4648                             ; $4681: $28 $c5

    ld [hl], c                                    ; $4683: $71
    inc e                                         ; $4684: $1c
    rst $28                                       ; $4685: $ef
    ld h, h                                       ; $4686: $64
    cp h                                          ; $4687: $bc
    inc sp                                        ; $4688: $33
    ld b, $39                                     ; $4689: $06 $39
    inc de                                        ; $468b: $13
    ld sp, hl                                     ; $468c: $f9
    ld l, d                                       ; $468d: $6a
    ld c, h                                       ; $468e: $4c
    and b                                         ; $468f: $a0
    jr nz, jr_048_46b9                            ; $4690: $20 $27

    cp c                                          ; $4692: $b9
    ld a, c                                       ; $4693: $79
    push hl                                       ; $4694: $e5
    nop                                           ; $4695: $00
    ld d, a                                       ; $4696: $57
    or c                                          ; $4697: $b1
    ld [hl], e                                    ; $4698: $73
    ld c, e                                       ; $4699: $4b
    ld e, $9b                                     ; $469a: $1e $9b
    dec bc                                        ; $469c: $0b
    ld a, [hl-]                                   ; $469d: $3a
    db $d3                                        ; $469e: $d3
    ld l, d                                       ; $469f: $6a
    ld b, c                                       ; $46a0: $41
    rla                                           ; $46a1: $17
    ld [hl], h                                    ; $46a2: $74
    ld b, d                                       ; $46a3: $42
    dec d                                         ; $46a4: $15
    rst $08                                       ; $46a5: $cf
    rst $38                                       ; $46a6: $ff
    ld a, [c]                                     ; $46a7: $f2
    sbc d                                         ; $46a8: $9a
    ld [hl], e                                    ; $46a9: $73
    ld c, e                                       ; $46aa: $4b
    ld a, [de]                                    ; $46ab: $1a
    xor e                                         ; $46ac: $ab
    ld d, $74                                     ; $46ad: $16 $74
    and [hl]                                      ; $46af: $a6
    push de                                       ; $46b0: $d5
    add d                                         ; $46b1: $82
    adc $77                                       ; $46b2: $ce $77
    ld d, h                                       ; $46b4: $54
    ld d, b                                       ; $46b5: $50
    xor l                                         ; $46b6: $ad
    or $dd                                        ; $46b7: $f6 $dd

jr_048_46b9:
    ld [de], a                                    ; $46b9: $12
    ld d, e                                       ; $46ba: $53
    db $eb                                        ; $46bb: $eb
    add hl, sp                                    ; $46bc: $39

jr_048_46bd:
    sbc $93                                       ; $46bd: $de $93
    sub [hl]                                      ; $46bf: $96
    dec bc                                        ; $46c0: $0b
    sra e                                         ; $46c1: $cb $2b
    and [hl]                                      ; $46c3: $a6
    rst $28                                       ; $46c4: $ef
    ld e, h                                       ; $46c5: $5c
    res 0, l                                      ; $46c6: $cb $85
    push hl                                       ; $46c8: $e5
    dec b                                         ; $46c9: $05
    ld h, [hl]                                    ; $46ca: $66
    or h                                          ; $46cb: $b4
    db $d3                                        ; $46cc: $d3
    daa                                           ; $46cd: $27
    rst $18                                       ; $46ce: $df
    call c, $fbb9                                 ; $46cf: $dc $b9 $fb
    db $10                                        ; $46d2: $10
    jr z, jr_048_472c                             ; $46d3: $28 $57

    ei                                            ; $46d5: $fb
    dec [hl]                                      ; $46d6: $35
    rst $20                                       ; $46d7: $e7
    dec sp                                        ; $46d8: $3b
    inc de                                        ; $46d9: $13
    ld sp, hl                                     ; $46da: $f9
    ld l, d                                       ; $46db: $6a
    ld c, h                                       ; $46dc: $4c
    or b                                          ; $46dd: $b0
    xor b                                         ; $46de: $a8
    inc a                                         ; $46df: $3c
    rst $18                                       ; $46e0: $df
    ld b, l                                       ; $46e1: $45
    xor l                                         ; $46e2: $ad
    ld [c], a                                     ; $46e3: $e2
    ld c, $72                                     ; $46e4: $0e $72
    sub d                                         ; $46e6: $92
    sbc e                                         ; $46e7: $9b
    dec sp                                        ; $46e8: $3b
    ld h, c                                       ; $46e9: $61
    ld a, [c]                                     ; $46ea: $f2
    ld a, h                                       ; $46eb: $7c
    daa                                           ; $46ec: $27
    ld d, h                                       ; $46ed: $54
    sub [hl]                                      ; $46ee: $96
    ld [c], a                                     ; $46ef: $e2
    inc bc                                        ; $46f0: $03
    sub a                                         ; $46f1: $97
    cp a                                          ; $46f2: $bf
    dec sp                                        ; $46f3: $3b
    ld a, l                                       ; $46f4: $7d
    ld a, [c]                                     ; $46f5: $f2
    call $ba9d                                    ; $46f6: $cd $9d $ba
    db $db                                        ; $46f9: $db
    jr nc, jr_048_473d                            ; $46fa: $30 $41

    ld a, l                                       ; $46fc: $7d
    xor e                                         ; $46fd: $ab
    db $fd                                        ; $46fe: $fd
    ld l, l                                       ; $46ff: $6d
    ld d, a                                       ; $4700: $57
    ld c, $6f                                     ; $4701: $0e $6f
    ld a, l                                       ; $4703: $7d
    dec c                                         ; $4704: $0d
    sbc d                                         ; $4705: $9a
    ld l, d                                       ; $4706: $6a
    ld de, $8b06                                  ; $4707: $11 $06 $8b
    ld a, [hl]                                    ; $470a: $7e
    cp c                                          ; $470b: $b9
    cp c                                          ; $470c: $b9
    ld d, e                                       ; $470d: $53
    rla                                           ; $470e: $17
    sub l                                         ; $470f: $95
    rst $10                                       ; $4710: $d7
    and $98                                       ; $4711: $e6 $98
    cp [hl]                                       ; $4713: $be
    sbc $e9                                       ; $4714: $de $e9
    sub e                                         ; $4716: $93
    ld [c], a                                     ; $4717: $e2
    ld [$7c66], a                                 ; $4718: $ea $66 $7c
    nop                                           ; $471b: $00
    ld l, a                                       ; $471c: $6f
    ld a, l                                       ; $471d: $7d
    dec c                                         ; $471e: $0d
    ld d, $61                                     ; $471f: $16 $61
    ld [hl], b                                    ; $4721: $70
    ld sp, $2ad3                                  ; $4722: $31 $d3 $2a
    xor b                                         ; $4725: $a8
    and b                                         ; $4726: $a0
    or c                                          ; $4727: $b1
    ld [hl+], a                                   ; $4728: $22
    adc [hl]                                      ; $4729: $8e
    rrca                                          ; $472a: $0f
    rst $10                                       ; $472b: $d7

jr_048_472c:
    db $e4                                        ; $472c: $e4
    jp nz, $a1ff                                  ; $472d: $c2 $ff $a1

    ld a, c                                       ; $4730: $79
    db $e3                                        ; $4731: $e3
    sbc l                                         ; $4732: $9d
    cp d                                          ; $4733: $ba
    rrca                                          ; $4734: $0f
    call Call_048_5cf7                            ; $4735: $cd $f7 $5c
    dec l                                         ; $4738: $2d
    ld a, [c]                                     ; $4739: $f2
    sbc l                                         ; $473a: $9d
    adc c                                         ; $473b: $89
    ld a, h                                       ; $473c: $7c

Jump_048_473d:
jr_048_473d:
    dec [hl]                                      ; $473d: $35
    ld h, $98                                     ; $473e: $26 $98
    db $fc                                        ; $4740: $fc
    ld d, c                                       ; $4741: $51

jr_048_4742:
    ld [hl], e                                    ; $4742: $73
    call c, $919d                                 ; $4743: $dc $9d $91
    cp c                                          ; $4746: $b9
    ld a, c                                       ; $4747: $79
    or c                                          ; $4748: $b1
    and $5e                                       ; $4749: $e6 $5e
    cp d                                          ; $474b: $ba
    or $cc                                        ; $474c: $f6 $cc
    dec de                                        ; $474e: $1b
    ei                                            ; $474f: $fb
    ret nc                                        ; $4750: $d0

    sbc $3b                                       ; $4751: $de $3b
    sbc c                                         ; $4753: $99
    rst $30                                       ; $4754: $f7
    dec h                                         ; $4755: $25
    add h                                         ; $4756: $84
    add a                                         ; $4757: $87
    pop af                                        ; $4758: $f1
    sbc $eb                                       ; $4759: $de $eb
    adc $18                                       ; $475b: $ce $18
    db $e4                                        ; $475d: $e4
    ld [de], a                                    ; $475e: $12
    swap e                                        ; $475f: $cb $33
    xor l                                         ; $4761: $ad
    dec de                                        ; $4762: $1b
    sbc c                                         ; $4763: $99

Call_048_4764:
    jp hl                                         ; $4764: $e9


    add hl, hl                                    ; $4765: $29
    ld e, l                                       ; $4766: $5d
    ld a, b                                       ; $4767: $78
    ret z                                         ; $4768: $c8

    rla                                           ; $4769: $17
    adc e                                         ; $476a: $8b
    call z, $a568                                 ; $476b: $cc $68 $a5
    sbc l                                         ; $476e: $9d
    sub c                                         ; $476f: $91
    cp c                                          ; $4770: $b9
    cp c                                          ; $4771: $b9
    sub e                                         ; $4772: $93
    pop af                                        ; $4773: $f1
    ld b, b                                       ; $4774: $40
    and e                                         ; $4775: $a3
    ld h, [hl]                                    ; $4776: $66
    rst $00                                       ; $4777: $c7
    ld h, d                                       ; $4778: $62
    and b                                         ; $4779: $a0
    xor d                                         ; $477a: $aa
    add hl, bc                                    ; $477b: $09
    jr jr_048_4742                                ; $477c: $18 $c4

    rlca                                          ; $477e: $07
    ld l, a                                       ; $477f: $6f
    ld d, a                                       ; $4780: $57
    rr a                                          ; $4781: $cb $1f
    ld e, l                                       ; $4783: $5d
    xor h                                         ; $4784: $ac
    dec h                                         ; $4785: $25
    push bc                                       ; $4786: $c5
    dec c                                         ; $4787: $0d
    call z, Call_048_4d48                         ; $4788: $cc $48 $4d
    or c                                          ; $478b: $b1
    db $e3                                        ; $478c: $e3
    sbc e                                         ; $478d: $9b
    call c, Call_048_778c                         ; $478e: $dc $8c $77
    ld c, l                                       ; $4791: $4d
    ld c, [hl]                                    ; $4792: $4e
    ld l, b                                       ; $4793: $68
    xor $49                                       ; $4794: $ee $49
    dec l                                         ; $4796: $2d
    jr c, jr_048_4803                             ; $4797: $38 $6a

    xor a                                         ; $4799: $af
    sub h                                         ; $479a: $94
    and h                                         ; $479b: $a4
    ld b, l                                       ; $479c: $45
    ld c, l                                       ; $479d: $4d
    halt                                          ; $479e: $76
    call nc, $c2c5                                ; $479f: $d4 $c5 $c2
    rst $38                                       ; $47a2: $ff
    ld b, l                                       ; $47a3: $45
    ld a, [hl]                                    ; $47a4: $7e
    xor [hl]                                      ; $47a5: $ae
    push hl                                       ; $47a6: $e5
    sbc $3b                                       ; $47a7: $de $3b
    dec d                                         ; $47a9: $15
    ld d, e                                       ; $47aa: $53
    ld [hl], c                                    ; $47ab: $71
    ld sp, $bde3                                  ; $47ac: $31 $e3 $bd
    rst $30                                       ; $47af: $f7
    dec a                                         ; $47b0: $3d
    reti                                          ; $47b1: $d9


    add d                                         ; $47b2: $82
    ld c, [hl]                                    ; $47b3: $4e
    ld l, b                                       ; $47b4: $68
    ld a, [c]                                     ; $47b5: $f2
    jr nc, jr_048_47f9                            ; $47b6: $30 $41

    ld a, l                                       ; $47b8: $7d
    xor e                                         ; $47b9: $ab
    db $fd                                        ; $47ba: $fd
    push bc                                       ; $47bb: $c5
    add b                                         ; $47bc: $80
    dec l                                         ; $47bd: $2d
    add sp, -$34                                  ; $47be: $e8 $cc
    ld [hl], d                                    ; $47c0: $72
    cp [hl]                                       ; $47c1: $be
    ld h, e                                       ; $47c2: $63
    inc de                                        ; $47c3: $13
    ld d, l                                       ; $47c4: $55
    rst $08                                       ; $47c5: $cf
    or l                                          ; $47c6: $b5
    ld e, h                                       ; $47c7: $5c
    ret nc                                        ; $47c8: $d0

    sbc c                                         ; $47c9: $99
    ret z                                         ; $47ca: $c8

    ld d, a                                       ; $47cb: $57
    ld h, e                                       ; $47cc: $63
    add d                                         ; $47cd: $82
    sbc l                                         ; $47ce: $9d
    sub c                                         ; $47cf: $91
    cp c                                          ; $47d0: $b9
    add hl, de                                    ; $47d1: $19
    rra                                           ; $47d2: $1f
    or a                                          ; $47d3: $b7
    sbc a                                         ; $47d4: $9f
    ld sp, $df01                                  ; $47d5: $31 $01 $df
    or c                                          ; $47d8: $b1
    db $db                                        ; $47d9: $db
    ld e, [hl]                                    ; $47da: $5e
    add [hl]                                      ; $47db: $86
    ld b, $2a                                     ; $47dc: $06 $2a
    ld d, b                                       ; $47de: $50
    pop de                                        ; $47df: $d1
    ld [hl], a                                    ; $47e0: $77
    sub c                                         ; $47e1: $91
    jp Jump_000_39aa                              ; $47e2: $c3 $aa $39


    adc c                                         ; $47e5: $89
    add c                                         ; $47e6: $81
    inc e                                         ; $47e7: $1c
    jp z, $4b65                                   ; $47e8: $ca $65 $4b

    rlca                                          ; $47eb: $07
    rst $08                                       ; $47ec: $cf
    db $e4                                        ; $47ed: $e4
    cp $97                                        ; $47ee: $fe $97
    ei                                            ; $47f0: $fb
    ret nc                                        ; $47f1: $d0

    jp nz, $ba0f                                  ; $47f2: $c2 $0f $ba

    ldh a, [$d7]                                  ; $47f5: $f0 $d7
    scf                                           ; $47f7: $37
    cpl                                           ; $47f8: $2f

jr_048_47f9:
    ld c, $d7                                     ; $47f9: $0e $d7
    db $e4                                        ; $47fb: $e4
    add h                                         ; $47fc: $84
    and $7c                                       ; $47fd: $e6 $7c
    rst $30                                       ; $47ff: $f7
    ld a, [$6e27]                                 ; $4800: $fa $27 $6e

jr_048_4803:
    add hl, hl                                    ; $4803: $29
    db $fc                                        ; $4804: $fc
    push af                                       ; $4805: $f5
    ld [hl], e                                    ; $4806: $73
    dec l                                         ; $4807: $2d
    rst $20                                       ; $4808: $e7
    dec sp                                        ; $4809: $3b
    dec b                                         ; $480a: $05
    rrca                                          ; $480b: $0f
    rst $38                                       ; $480c: $ff
    rst $10                                       ; $480d: $d7
    rlca                                          ; $480e: $07
    rst $08                                       ; $480f: $cf
    db $e4                                        ; $4810: $e4
    ld c, [hl]                                    ; $4811: $4e
    dec l                                         ; $4812: $2d
    cpl                                           ; $4813: $2f
    ld l, d                                       ; $4814: $6a
    ld l, c                                       ; $4815: $69
    sbc $72                                       ; $4816: $de $72
    ld b, c                                       ; $4818: $41
    ld [hl], a                                    ; $4819: $77
    cp $ce                                        ; $481a: $fe $ce
    call c, $f452                                 ; $481c: $dc $52 $f4
    db $eb                                        ; $481f: $eb
    sbc e                                         ; $4820: $9b
    pop af                                        ; $4821: $f1
    ld bc, $ea4f                                  ; $4822: $01 $4f $ea
    ld b, c                                       ; $4825: $41
    ld c, $ea                                     ; $4826: $0e $ea
    and $7c                                       ; $4828: $e6 $7c
    rlca                                          ; $482a: $07
    ld a, [de]                                    ; $482b: $1a
    ld d, $a3                                     ; $482c: $16 $a3
    and $1c                                       ; $482e: $e6 $1c
    db $e4                                        ; $4830: $e4
    dec b                                         ; $4831: $05
    ld e, l                                       ; $4832: $5d
    ld hl, sp-$41                                 ; $4833: $f8 $bf
    ret z                                         ; $4835: $c8

    ld e, a                                       ; $4836: $5f
    inc e                                         ; $4837: $1c
    ld d, a                                       ; $4838: $57
    cp e                                          ; $4839: $bb
    rst $10                                       ; $483a: $d7
    ccf                                           ; $483b: $3f
    ld [hl], c                                    ; $483c: $71
    ld c, e                                       ; $483d: $4b
    pop hl                                        ; $483e: $e1
    xor a                                         ; $483f: $af
    rst $18                                       ; $4840: $df
    add hl, de                                    ; $4841: $19
    srl e                                         ; $4842: $cb $3b
    ld [hl], a                                    ; $4844: $77

jr_048_4845:
    xor [hl]                                      ; $4845: $ae
    add hl, hl                                    ; $4846: $29
    ld a, $00                                     ; $4847: $3e $00
    ld d, a                                       ; $4849: $57
    dec e                                         ; $484a: $1d
    or l                                          ; $484b: $b5
    ld [hl], e                                    ; $484c: $73
    ld a, c                                       ; $484d: $79
    ld d, c                                       ; $484e: $51
    rst $30                                       ; $484f: $f7
    and c                                         ; $4850: $a1
    adc e                                         ; $4851: $8b
    ld a, c                                       ; $4852: $79
    res 3, l                                      ; $4853: $cb $9d
    dec bc                                        ; $4855: $0b
    add [hl]                                      ; $4856: $86
    ld [hl], d                                    ; $4857: $72
    ld b, c                                       ; $4858: $41
    rrca                                          ; $4859: $0f
    ld l, a                                       ; $485a: $6f
    dec de                                        ; $485b: $1b
    cpl                                           ; $485c: $2f
    inc l                                         ; $485d: $2c
    ld c, a                                       ; $485e: $4f
    xor b                                         ; $485f: $a8
    ld [c], a                                     ; $4860: $e2
    ld c, [hl]                                    ; $4861: $4e
    ret nz                                        ; $4862: $c0

    ld h, b                                       ; $4863: $60
    ld b, c                                       ; $4864: $41
    rlca                                          ; $4865: $07
    sbc c                                         ; $4866: $99
    ld [c], a                                     ; $4867: $e2
    ld hl, sp-$4a                                 ; $4868: $f8 $b6
    inc bc                                        ; $486a: $03
    rst $08                                       ; $486b: $cf
    ld de, $448a                                  ; $486c: $11 $8a $44
    push de                                       ; $486f: $d5
    rla                                           ; $4870: $17
    cp e                                          ; $4871: $bb
    inc l                                         ; $4872: $2c
    ld b, l                                       ; $4873: $45
    push de                                       ; $4874: $d5
    ret c                                         ; $4875: $d8

    inc d                                         ; $4876: $14
    ld a, a                                       ; $4877: $7f
    nop                                           ; $4878: $00
    rst $08                                       ; $4879: $cf
    ld de, $448a                                  ; $487a: $11 $8a $44
    cp a                                          ; $487d: $bf
    jp hl                                         ; $487e: $e9


    ccf                                           ; $487f: $3f
    adc c                                         ; $4880: $89
    ccf                                           ; $4881: $3f
    nop                                           ; $4882: $00
    xor a                                         ; $4883: $af
    ld a, h                                       ; $4884: $7c
    and $d2                                       ; $4885: $e6 $d2
    push bc                                       ; $4887: $c5
    ld l, $8d                                     ; $4888: $2e $8d

jr_048_488a:
    ld c, b                                       ; $488a: $48
    adc h                                         ; $488b: $8c
    ld hl, sp+$03                                 ; $488c: $f8 $03
    cpl                                           ; $488e: $2f
    ld h, c                                       ; $488f: $61
    ld a, c                                       ; $4890: $79
    rst $28                                       ; $4891: $ef
    sbc l                                         ; $4892: $9d
    call z, Call_000_12fb                         ; $4893: $cc $fb $12
    jp nz, $8bc3                                  ; $4896: $c2 $c3 $8b

    dec h                                         ; $4899: $25
    sub [hl]                                      ; $489a: $96
    rst $30                                       ; $489b: $f7
    sbc $c9                                       ; $489c: $de $c9
    cp h                                          ; $489e: $bc
    cpl                                           ; $489f: $2f
    ld hl, $8c3c                                  ; $48a0: $21 $3c $8c
    db $e3                                        ; $48a3: $e3
    ld hl, sp+$00                                 ; $48a4: $f8 $00
    cpl                                           ; $48a6: $2f
    ld a, l                                       ; $48a7: $7d
    rst $20                                       ; $48a8: $e7
    ld h, d                                       ; $48a9: $62
    and [hl]                                      ; $48aa: $a6
    push de                                       ; $48ab: $d5
    add d                                         ; $48ac: $82
    ld l, $2c                                     ; $48ad: $2e $2c
    rst $28                                       ; $48af: $ef
    ld e, h                                       ; $48b0: $5c
    ld e, c                                       ; $48b1: $59
    jp c, $e5a9                                   ; $48b2: $da $a9 $e5

    jr c, jr_048_4845                             ; $48b5: $38 $8e

    rst $20                                       ; $48b7: $e7

jr_048_48b8:
    dec l                                         ; $48b8: $2d
    rla                                           ; $48b9: $17
    ld a, [hl]                                    ; $48ba: $7e
    rst $00                                       ; $48bb: $c7
    scf                                           ; $48bc: $37
    ld [hl], a                                    ; $48bd: $77
    ld [$f2c2], a                                 ; $48be: $ea $c2 $f2

jr_048_48c1:
    ld [hl+], a                                   ; $48c1: $22
    inc sp                                        ; $48c2: $33
    jp c, $f687                                   ; $48c3: $da $87 $f6

    call c, $d76b                                 ; $48c6: $dc $6b $d7
    sbc [hl]                                      ; $48c9: $9e
    ld a, l                                       ; $48ca: $7d
    or $e5                                        ; $48cb: $f6 $e5
    ld h, a                                       ; $48cd: $67
    ld e, [hl]                                    ; $48ce: $5e
    cp d                                          ; $48cf: $ba
    ld a, [$6bf2]                                 ; $48d0: $fa $f2 $6b
    ld [c], a                                     ; $48d3: $e2
    rrca                                          ; $48d4: $0f
    rst $08                                       ; $48d5: $cf
    ld de, $448a                                  ; $48d6: $11 $8a $44
    cp a                                          ; $48d9: $bf
    jp hl                                         ; $48da: $e9


    ccf                                           ; $48db: $3f
    dec c                                         ; $48dc: $0d
    push de                                       ; $48dd: $d5
    ld a, h                                       ; $48de: $7c
    rla                                           ; $48df: $17
    jr c, jr_048_488a                             ; $48e0: $38 $a8

    cp b                                          ; $48e2: $b8
    inc sp                                        ; $48e3: $33
    sub c                                         ; $48e4: $91
    xor a                                         ; $48e5: $af
    add $04                                       ; $48e6: $c6 $04
    ld [hl], e                                    ; $48e8: $73
    rst $38                                       ; $48e9: $ff
    and a                                         ; $48ea: $a7
    dec b                                         ; $48eb: $05
    cp l                                          ; $48ec: $bd
    ret c                                         ; $48ed: $d8

    and l                                         ; $48ee: $a5
    ld de, $8989                                  ; $48ef: $11 $89 $89
    rst $30                                       ; $48f2: $f7
    sbc $af                                       ; $48f3: $de $af
    ld e, h                                       ; $48f5: $5c
    ret nc                                        ; $48f6: $d0

    or c                                          ; $48f7: $b1
    adc c                                         ; $48f8: $89
    xor d                                         ; $48f9: $aa
    db $e3                                        ; $48fa: $e3
    inc bc                                        ; $48fb: $03
    rst $08                                       ; $48fc: $cf
    reti                                          ; $48fd: $d9


    jp nc, $168c                                  ; $48fe: $d2 $8c $16

    ld [hl], h                                    ; $4901: $74
    ld l, h                                       ; $4902: $6c
    and d                                         ; $4903: $a2
    ld [$bd8b], a                                 ; $4904: $ea $8b $bd
    ld a, [c]                                     ; $4907: $f2
    sbc c                                         ; $4908: $99
    ld c, e                                       ; $4909: $4b
    rla                                           ; $490a: $17
    ei                                            ; $490b: $fb
    and d                                         ; $490c: $a2
    sbc l                                         ; $490d: $9d
    ld d, b                                       ; $490e: $50
    cpl                                           ; $490f: $2f
    add sp, -$2e                                  ; $4910: $e8 $d2
    sbc c                                         ; $4912: $99
    jp hl                                         ; $4913: $e9


    sbc c                                         ; $4914: $99
    ret z                                         ; $4915: $c8

    ld d, a                                       ; $4916: $57
    ld h, e                                       ; $4917: $63
    ld [bc], a                                    ; $4918: $02
    dec b                                         ; $4919: $05
    add hl, sp                                    ; $491a: $39

jr_048_491b:
    ret                                           ; $491b: $c9


    call Call_000_13c9                            ; $491c: $cd $c9 $13
    ld b, $4c                                     ; $491f: $06 $4c
    ld h, $9b                                     ; $4921: $26 $9b
    ld d, a                                       ; $4923: $57
    ld c, $4f                                     ; $4924: $0e $4f
    ld a, [hl-]                                   ; $4926: $3a
    and a                                         ; $4927: $a7
    jr c, jr_048_48b8                             ; $4928: $38 $8e

    rla                                           ; $492a: $17
    ld h, c                                       ; $492b: $61
    sub b                                         ; $492c: $90
    dec bc                                        ; $492d: $0b
    rst $38                                       ; $492e: $ff
    rla                                           ; $492f: $17
    ld sp, hl                                     ; $4930: $f9
    jr c, jr_048_48c1                             ; $4931: $38 $8e

    rrca                                          ; $4933: $0f
    rst $08                                       ; $4934: $cf
    reti                                          ; $4935: $d9


    jp nc, $168c                                  ; $4936: $d2 $8c $16

    ld [hl], h                                    ; $4939: $74
    ld l, h                                       ; $493a: $6c
    and d                                         ; $493b: $a2
    ld [$5d8b], a                                 ; $493c: $ea $8b $5d
    ld a, [de]                                    ; $493f: $1a
    sub c                                         ; $4940: $91
    sbc b                                         ; $4941: $98
    adc e                                         ; $4942: $8b
    and c                                         ; $4943: $a1
    ld e, h                                       ; $4944: $5c
    db $f4                                        ; $4945: $f4
    bit 1, e                                      ; $4946: $cb $4b
    inc sp                                        ; $4948: $33
    sbc d                                         ; $4949: $9a
    rst $28                                       ; $494a: $ef
    ldh [$a5], a                                  ; $494b: $e0 $a5
    ld b, [hl]                                    ; $494d: $46
    ccf                                           ; $494e: $3f
    or c                                          ; $494f: $b1
    sub e                                         ; $4950: $93
    jr jr_048_491b                                ; $4951: $18 $c8

    ld h, [hl]                                    ; $4953: $66
    ld a, h                                       ; $4954: $7c
    nop                                           ; $4955: $00

Call_048_4956:
    rst $28                                       ; $4956: $ef
    db $dd                                        ; $4957: $dd
    ld [hl], l                                    ; $4958: $75
    cp [hl]                                       ; $4959: $be
    db $eb                                        ; $495a: $eb
    db $fc                                        ; $495b: $fc
    dec hl                                        ; $495c: $2b
    and a                                         ; $495d: $a7
    or d                                          ; $495e: $b2
    ld a, d                                       ; $495f: $7a
    ld b, c                                       ; $4960: $41
    rst $00                                       ; $4961: $c7
    ld [hl], a                                    ; $4962: $77
    pop af                                        ; $4963: $f1
    ld e, l                                       ; $4964: $5d
    ld l, h                                       ; $4965: $6c
    and d                                         ; $4966: $a2
    ld [$8e38], a                                 ; $4967: $ea $38 $8e
    rla                                           ; $496a: $17
    ld [hl], h                                    ; $496b: $74
    and a                                         ; $496c: $a7
    sub [hl]                                      ; $496d: $96
    rla                                           ; $496e: $17
    sbc c                                         ; $496f: $99
    pop de                                        ; $4970: $d1
    ld a, [c]                                     ; $4971: $f2
    ld a, a                                       ; $4972: $7f
    db $e4                                        ; $4973: $e4
    sbc l                                         ; $4974: $9d
    or b                                          ; $4975: $b0
    dec hl                                        ; $4976: $2b
    call Call_048_6eb4                            ; $4977: $cd $b4 $6e
    ld h, h                                       ; $497a: $64
    and [hl]                                      ; $497b: $a6
    daa                                           ; $497c: $27
    ld sp, $1c90                                  ; $497d: $31 $90 $1c
    rra                                           ; $4980: $1f
    cpl                                           ; $4981: $2f
    ld b, e                                       ; $4982: $43
    ld d, e                                       ; $4983: $53
    ccf                                           ; $4984: $3f
    adc d                                         ; $4985: $8a
    db $10                                        ; $4986: $10
    ld [hl], h                                    ; $4987: $74
    sub b                                         ; $4988: $90
    xor [hl]                                      ; $4989: $ae
    sub h                                         ; $498a: $94
    call Call_048_687d                            ; $498b: $cd $7d $68
    rst $28                                       ; $498e: $ef
    sbc l                                         ; $498f: $9d
    adc d                                         ; $4990: $8a
    xor c                                         ; $4991: $a9
    cp b                                          ; $4992: $b8
    sbc b                                         ; $4993: $98
    adc e                                         ; $4994: $8b
    inc c                                         ; $4995: $0c
    inc l                                         ; $4996: $2c
    add sp, -$2e                                  ; $4997: $e8 $d2
    ld e, c                                       ; $4999: $59
    ld a, [hl]                                    ; $499a: $7e
    or b                                          ; $499b: $b0
    call nz, $e4f2                                ; $499c: $c4 $f2 $e4
    adc a                                         ; $499f: $8f
    sbc d                                         ; $49a0: $9a
    rla                                           ; $49a1: $17
    cp e                                          ; $49a2: $bb
    inc [hl]                                      ; $49a3: $34
    ld [hl+], a                                   ; $49a4: $22
    ld sp, $01f1                                  ; $49a5: $31 $f1 $01
    rst $10                                       ; $49a8: $d7
    call nc, $f23c                                ; $49a9: $d4 $3c $f2
    ld a, h                                       ; $49ac: $7c
    rst $00                                       ; $49ad: $c7
    ld h, $aa                                     ; $49ae: $26 $aa
    sbc [hl]                                      ; $49b0: $9e
    ld l, e                                       ; $49b1: $6b
    cp c                                          ; $49b2: $b9
    rst $20                                       ; $49b3: $e7
    ld [$a245], sp                                ; $49b4: $08 $45 $a2
    rst $18                                       ; $49b7: $df
    db $f4                                        ; $49b8: $f4
    sbc a                                         ; $49b9: $9f
    xor [hl]                                      ; $49ba: $ae
    inc e                                         ; $49bb: $1c
    cpl                                           ; $49bc: $2f
    or l                                          ; $49bd: $b5
    rla                                           ; $49be: $17
    dec sp                                        ; $49bf: $3b
    ld h, c                                       ; $49c0: $61
    or b                                          ; $49c1: $b0
    inc sp                                        ; $49c2: $33
    ld b, $39                                     ; $49c3: $06 $39
    rst $10                                       ; $49c5: $d7
    ld [hl], d                                    ; $49c6: $72
    sub a                                         ; $49c7: $97
    adc [hl]                                      ; $49c8: $8e
    ld c, b                                       ; $49c9: $48
    ld d, h                                       ; $49ca: $54
    dec c                                         ; $49cb: $0d
    add hl, sp                                    ; $49cc: $39
    and d                                         ; $49cd: $a2
    ld hl, sp+$00                                 ; $49ce: $f8 $00
    sub a                                         ; $49d0: $97
    adc [hl]                                      ; $49d1: $8e
    ld c, b                                       ; $49d2: $48
    ld d, h                                       ; $49d3: $54
    dec c                                         ; $49d4: $0d
    add hl, sp                                    ; $49d5: $39
    and d                                         ; $49d6: $a2
    add hl, bc                                    ; $49d7: $09
    rst $18                                       ; $49d8: $df
    ld l, l                                       ; $49d9: $6d
    adc d                                         ; $49da: $8a
    ccf                                           ; $49db: $3f
    nop                                           ; $49dc: $00
    xor a                                         ; $49dd: $af
    ld a, a                                       ; $49de: $7f
    ld [hl+], a                                   ; $49df: $22
    ld sp, $f317                                  ; $49e0: $31 $17 $f3
    ret z                                         ; $49e3: $c8

    ld b, e                                       ; $49e4: $43
    or l                                          ; $49e5: $b5
    rst $10                                       ; $49e6: $d7
    call z, Call_048_4a6d                         ; $49e7: $cc $6d $4a
    ld l, l                                       ; $49ea: $6d
    adc $29                                       ; $49eb: $ce $29
    ld a, $00                                     ; $49ed: $3e $00
    cpl                                           ; $49ef: $2f
    ld h, c                                       ; $49f0: $61
    inc hl                                        ; $49f1: $23
    ld c, e                                       ; $49f2: $4b
    ccf                                           ; $49f3: $3f
    ld l, c                                       ; $49f4: $69
    cp c                                          ; $49f5: $b9
    rst $10                                       ; $49f6: $d7
    call z, Call_048_4a6d                         ; $49f7: $cc $6d $4a
    ld l, l                                       ; $49fa: $6d
    adc $69                                       ; $49fb: $ce $69
    ld l, [hl]                                    ; $49fd: $6e
    ld c, c                                       ; $49fe: $49
    ld l, c                                       ; $49ff: $69
    or e                                          ; $4a00: $b3
    inc d                                         ; $4a01: $14
    ld a, a                                       ; $4a02: $7f
    nop                                           ; $4a03: $00
    rst $10                                       ; $4a04: $d7
    call nc, $177c                                ; $4a05: $d4 $7c $17
    ld d, [hl]                                    ; $4a08: $56
    ld [hl], a                                    ; $4a09: $77
    ld h, $f2                                     ; $4a0a: $26 $f2
    push de                                       ; $4a0c: $d5
    sbc b                                         ; $4a0d: $98
    ld h, b                                       ; $4a0e: $60
    ld e, c                                       ; $4a0f: $59
    sbc $f9                                       ; $4a10: $de $f9
    rst $18                                       ; $4a12: $df
    sub [hl]                                      ; $4a13: $96
    inc de                                        ; $4a14: $13
    sbc d                                         ; $4a15: $9a
    cp [hl]                                       ; $4a16: $be
    inc sp                                        ; $4a17: $33
    xor l                                         ; $4a18: $ad
    and $7b                                       ; $4a19: $e6 $7b
    xor $d8                                       ; $4a1b: $ee $d8
    ld b, h                                       ; $4a1d: $44
    push de                                       ; $4a1e: $d5
    ld d, a                                       ; $4a1f: $57
    ld c, $57                                     ; $4a20: $0e $57
    sub c                                         ; $4a22: $91
    add a                                         ; $4a23: $87
    ld l, d                                       ; $4a24: $6a
    rst $28                                       ; $4a25: $ef
    sbc l                                         ; $4a26: $9d
    call z, Call_000_12fb                         ; $4a27: $cc $fb $12
    jp nz, $f143                                  ; $4a2a: $c2 $43 $f1

    rlca                                          ; $4a2d: $07
    rst $28                                       ; $4a2e: $ef
    sbc l                                         ; $4a2f: $9d
    call z, Call_000_12fb                         ; $4a30: $cc $fb $12
    jp nz, $a1c3                                  ; $4a33: $c2 $c3 $a1

    sbc d                                         ; $4a36: $9a
    or h                                          ; $4a37: $b4
    ld [$dfc2], sp                                ; $4a38: $08 $c2 $df
    inc d                                         ; $4a3b: $14
    ld a, a                                       ; $4a3c: $7f
    nop                                           ; $4a3d: $00
    ld d, a                                       ; $4a3e: $57
    adc l                                         ; $4a3f: $8d
    add a                                         ; $4a40: $87
    ld l, d                                       ; $4a41: $6a
    ld h, c                                       ; $4a42: $61
    and e                                         ; $4a43: $a3
    adc e                                         ; $4a44: $8b
    ld e, l                                       ; $4a45: $5d
    ld a, l                                       ; $4a46: $7d
    ld h, [hl]                                    ; $4a47: $66
    sub a                                         ; $4a48: $97
    ld b, [hl]                                    ; $4a49: $46
    inc h                                         ; $4a4a: $24
    ld h, [hl]                                    ; $4a4b: $66
    xor a                                         ; $4a4c: $af
    ld a, h                                       ; $4a4d: $7c
    and $92                                       ; $4a4e: $e6 $92
    ld hl, sp+$03                                 ; $4a50: $f8 $03
    rst $10                                       ; $4a52: $d7
    dec l                                         ; $4a53: $2d
    adc d                                         ; $4a54: $8a
    ld c, d                                       ; $4a55: $4a
    di                                            ; $4a56: $f3
    add $2b                                       ; $4a57: $c6 $2b
    dec c                                         ; $4a59: $0d
    or h                                          ; $4a5a: $b4
    add hl, sp                                    ; $4a5b: $39
    ld [hl], $51                                  ; $4a5c: $36 $51
    push af                                       ; $4a5e: $f5
    and d                                         ; $4a5f: $a2
    ld a, [c]                                     ; $4a60: $f2
    xor [hl]                                      ; $4a61: $ae
    ld d, d                                       ; $4a62: $52
    sbc l                                         ; $4a63: $9d
    ld [hl], e                                    ; $4a64: $73
    or l                                          ; $4a65: $b5
    sbc d                                         ; $4a66: $9a
    ei                                            ; $4a67: $fb
    ccf                                           ; $4a68: $3f
    dec l                                         ; $4a69: $2d
    add sp, $50                                   ; $4a6a: $e8 $50
    ld e, l                                       ; $4a6c: $5d

Call_048_4a6d:
    db $ec                                        ; $4a6d: $ec
    sub l                                         ; $4a6e: $95
    rst $08                                       ; $4a6f: $cf
    ld e, h                                       ; $4a70: $5c
    adc d                                         ; $4a71: $8a
    rrca                                          ; $4a72: $0f
    sub a                                         ; $4a73: $97
    dec l                                         ; $4a74: $2d
    db $ed                                        ; $4a75: $ed
    or d                                          ; $4a76: $b2
    jp hl                                         ; $4a77: $e9


    add hl, bc                                    ; $4a78: $09
    push hl                                       ; $4a79: $e5
    ld e, h                                       ; $4a7a: $5c
    res 7, l                                      ; $4a7b: $cb $bd
    ld l, b                                       ; $4a7d: $68
    ld e, d                                       ; $4a7e: $5a
    cp $e4                                        ; $4a7f: $fe $e4
    ld h, $8f                                     ; $4a81: $26 $8f
    ccf                                           ; $4a83: $3f
    rst $28                                       ; $4a84: $ef
    ld b, l                                       ; $4a85: $45
    db $d3                                        ; $4a86: $d3
    sbc b                                         ; $4a87: $98
    ldh [$62], a                                  ; $4a88: $e0 $62
    sbc b                                         ; $4a8a: $98
    and a                                         ; $4a8b: $a7
    sbc a                                         ; $4a8c: $9f
    ld c, l                                       ; $4a8d: $4d
    ccf                                           ; $4a8e: $3f
    dec b                                         ; $4a8f: $05
    db $fd                                        ; $4a90: $fd
    cpl                                           ; $4a91: $2f
    rst $20                                       ; $4a92: $e7
    ld e, d                                       ; $4a93: $5a
    adc $77                                       ; $4a94: $ce $77
    db $fc                                        ; $4a96: $fc
    xor c                                         ; $4a97: $a9
    add hl, sp                                    ; $4a98: $39
    rst $10                                       ; $4a99: $d7
    ld [hl], d                                    ; $4a9a: $72
    rst $08                                       ; $4a9b: $cf
    ld de, $448a                                  ; $4a9c: $11 $8a $44
    cp a                                          ; $4a9f: $bf
    jp hl                                         ; $4aa0: $e9


    ccf                                           ; $4aa1: $3f
    push bc                                       ; $4aa2: $c5
    db $db                                        ; $4aa3: $db
    push hl                                       ; $4aa4: $e5
    rst $28                                       ; $4aa5: $ef
    ld [hl+], a                                   ; $4aa6: $22
    inc bc                                        ; $4aa7: $03
    ld b, e                                       ; $4aa8: $43
    add hl, sp                                    ; $4aa9: $39
    ld h, a                                       ; $4aaa: $67
    xor [hl]                                      ; $4aab: $ae
    push hl                                       ; $4aac: $e5
    inc a                                         ; $4aad: $3c
    ld [hl], $15                                  ; $4aae: $36 $15
    rst $28                                       ; $4ab0: $ef
    adc h                                         ; $4ab1: $8c
    ld b, c                                       ; $4ab2: $41
    ld e, [hl]                                    ; $4ab3: $5e
    add hl, sp                                    ; $4ab4: $39
    nop                                           ; $4ab5: $00
    ld d, a                                       ; $4ab6: $57
    adc l                                         ; $4ab7: $8d
    add a                                         ; $4ab8: $87
    ld l, d                                       ; $4ab9: $6a
    sbc b                                         ; $4aba: $98
    cp [hl]                                       ; $4abb: $be
    db $e4                                        ; $4abc: $e4
    call $cefc                                    ; $4abd: $cd $fc $ce
    ccf                                           ; $4ac0: $3f
    sbc $53                                       ; $4ac1: $de $53
    ld a, [de]                                    ; $4ac3: $1a
    add e                                         ; $4ac4: $83
    ld a, c                                       ; $4ac5: $79
    db $e3                                        ; $4ac6: $e3
    add hl, sp                                    ; $4ac7: $39
    ei                                            ; $4ac8: $fb
    ld a, c                                       ; $4ac9: $79
    xor $c8                                       ; $4aca: $ee $c8
    ld [de], a                                    ; $4acc: $12
    inc [hl]                                      ; $4acd: $34
    daa                                           ; $4ace: $27
    ld a, a                                       ; $4acf: $7f
    call nz, Call_048_4b73                        ; $4ad0: $c4 $73 $4b
    adc d                                         ; $4ad3: $8a
    ld c, e                                       ; $4ad4: $4b
    or d                                          ; $4ad5: $b2
    add hl, de                                    ; $4ad6: $19
    rra                                           ; $4ad7: $1f
    ld [hl], c                                    ; $4ad8: $71
    inc e                                         ; $4ad9: $1c
    rra                                           ; $4ada: $1f
    rst $10                                       ; $4adb: $d7
    dec sp                                        ; $4adc: $3b
    adc l                                         ; $4add: $8d
    add c                                         ; $4ade: $81
    db $e4                                        ; $4adf: $e4
    ld b, l                                       ; $4ae0: $45
    ld e, l                                       ; $4ae1: $5d
    sbc e                                         ; $4ae2: $9b
    inc sp                                        ; $4ae3: $33
    inc hl                                        ; $4ae4: $23
    adc a                                         ; $4ae5: $8f
    and b                                         ; $4ae6: $a0
    dec bc                                        ; $4ae7: $0b
    ld a, [hl]                                    ; $4ae8: $7e
    add d                                         ; $4ae9: $82
    ld b, [hl]                                    ; $4aea: $46
    sub [hl]                                      ; $4aeb: $96
    rla                                           ; $4aec: $17
    adc e                                         ; $4aed: $8b
    call z, Call_000_1e68                         ; $4aee: $cc $68 $1e
    ld a, c                                       ; $4af1: $79
    xor b                                         ; $4af2: $a8
    sub [hl]                                      ; $4af3: $96
    ld e, b                                       ; $4af4: $58
    ld e, [hl]                                    ; $4af5: $5e
    ldh a, [$9d]                                  ; $4af6: $f0 $9d
    db $d3                                        ; $4af8: $d3
    ret c                                         ; $4af9: $d8

    ld b, h                                       ; $4afa: $44
    push de                                       ; $4afb: $d5
    pop af                                        ; $4afc: $f1
    ld bc, $612f                                  ; $4afd: $01 $2f $61
    ld a, c                                       ; $4b00: $79
    pop bc                                        ; $4b01: $c1
    ld [hl], a                                    ; $4b02: $77
    ld c, [hl]                                    ; $4b03: $4e

Call_048_4b04:
    ld h, e                                       ; $4b04: $63
    inc de                                        ; $4b05: $13
    ld d, l                                       ; $4b06: $55
    rst $00                                       ; $4b07: $c7
    ld [hl], c                                    ; $4b08: $71
    cp h                                          ; $4b09: $bc
    di                                            ; $4b0a: $f3
    rra                                           ; $4b0b: $1f
    inc de                                        ; $4b0c: $13
    ld d, [hl]                                    ; $4b0d: $56
    ld [hl], c                                    ; $4b0e: $71
    inc e                                         ; $4b0f: $1c
    rst $00                                       ; $4b10: $c7
    rlca                                          ; $4b11: $07
    rst $10                                       ; $4b12: $d7
    ld c, l                                       ; $4b13: $4d
    db $fc                                        ; $4b14: $fc

Call_048_4b15:
    sbc $ee                                       ; $4b15: $de $ee
    adc $18                                       ; $4b17: $ce $18
    db $e4                                        ; $4b19: $e4
    adc $7f                                       ; $4b1a: $ce $7f
    add d                                         ; $4b1c: $82
    add $60                                       ; $4b1d: $c6 $60
    sbc $78                                       ; $4b1f: $de $78
    ld b, c                                       ; $4b21: $41
    daa                                           ; $4b22: $27
    ld h, b                                       ; $4b23: $60
    or b                                          ; $4b24: $b0
    sbc a                                         ; $4b25: $9f
    ld l, d                                       ; $4b26: $6a
    pop hl                                        ; $4b27: $e1
    rst $38                                       ; $4b28: $ff
    call nz, $0fe2                                ; $4b29: $c4 $e2 $0f
    sub a                                         ; $4b2c: $97
    ld b, [hl]                                    ; $4b2d: $46
    inc h                                         ; $4b2e: $24
    ld b, [hl]                                    ; $4b2f: $46
    db $fc                                        ; $4b30: $fc
    ld l, $b1                                     ; $4b31: $2e $b1
    or h                                          ; $4b33: $b4
    inc [hl]                                      ; $4b34: $34
    inc hl                                        ; $4b35: $23
    cp $15                                        ; $4b36: $fe $15
    ld a, a                                       ; $4b38: $7f
    nop                                           ; $4b39: $00
    ld d, a                                       ; $4b3a: $57
    dec l                                         ; $4b3b: $2d
    push hl                                       ; $4b3c: $e5
    add d                                         ; $4b3d: $82
    add $bb                                       ; $4b3e: $c6 $bb
    ld h, $e7                                     ; $4b40: $26 $e7
    cp $6a                                        ; $4b42: $fe $6a
    rst $18                                       ; $4b44: $df
    ld b, l                                       ; $4b45: $45
    db $dd                                        ; $4b46: $dd
    ret                                           ; $4b47: $c9


    ld a, b                                       ; $4b48: $78
    ld l, [hl]                                    ; $4b49: $6e
    ld c, c                                       ; $4b4a: $49
    ld a, a                                       ; $4b4b: $7f
    ld l, d                                       ; $4b4c: $6a
    add $07                                       ; $4b4d: $c6 $07
    ld l, a                                       ; $4b4f: $6f
    ld h, e                                       ; $4b50: $63
    add a                                         ; $4b51: $87
    ld l, d                                       ; $4b52: $6a
    ld e, $bb                                     ; $4b53: $1e $bb
    ret z                                         ; $4b55: $c8

jr_048_4b56:
    ld [hl], d                                    ; $4b56: $72
    ld d, c                                       ; $4b57: $51
    ld a, c                                       ; $4b58: $79
    ld e, $3b                                     ; $4b59: $1e $3b
    ld c, c                                       ; $4b5b: $49
    ccf                                           ; $4b5c: $3f
    adc d                                         ; $4b5d: $8a
    cp d                                          ; $4b5e: $ba
    xor h                                         ; $4b5f: $ac
    and e                                         ; $4b60: $a3
    and $cd                                       ; $4b61: $e6 $cd
    ld c, b                                       ; $4b63: $48
    ld hl, sp+$6e                                 ; $4b64: $f8 $6e
    di                                            ; $4b66: $f3
    jp z, Jump_000_312e                           ; $4b67: $ca $2e $31

    sbc b                                         ; $4b6a: $98
    call nz, $f240                                ; $4b6b: $c4 $40 $f2
    and d                                         ; $4b6e: $a2
    adc $2c                                       ; $4b6f: $ce $2c
    ld h, a                                       ; $4b71: $67
    ld e, d                                       ; $4b72: $5a

Call_048_4b73:
    ld a, l                                       ; $4b73: $7d
    pop de                                        ; $4b74: $d1
    ld b, d                                       ; $4b75: $42
    inc c                                         ; $4b76: $0c

Jump_048_4b77:
    ld d, $75                                     ; $4b77: $16 $75
    and c                                         ; $4b79: $a1
    add hl, de                                    ; $4b7a: $19
    rst $00                                       ; $4b7b: $c7
    rlca                                          ; $4b7c: $07
    ld d, a                                       ; $4b7d: $57
    adc l                                         ; $4b7e: $8d
    add a                                         ; $4b7f: $87
    ld l, d                                       ; $4b80: $6a
    xor a                                         ; $4b81: $af
    ld h, a                                       ; $4b82: $67
    dec bc                                        ; $4b83: $0b
    ld e, l                                       ; $4b84: $5d
    inc l                                         ; $4b85: $2c
    call nz, $a060                                ; $4b86: $c4 $60 $a0
    dec d                                         ; $4b89: $15
    pop af                                        ; $4b8a: $f1
    ld [hl], h                                    ; $4b8b: $74
    push de                                       ; $4b8c: $d5
    jr nc, jr_048_4b56                            ; $4b8d: $30 $c7

    rst $18                                       ; $4b8f: $df
    dec l                                         ; $4b90: $2d
    ld a, c                                       ; $4b91: $79
    or d                                          ; $4b92: $b2
    sub h                                         ; $4b93: $94
    call $8735                                    ; $4b94: $cd $35 $87
    ld l, d                                       ; $4b97: $6a
    ld h, c                                       ; $4b98: $61
    ld a, c                                       ; $4b99: $79
    pop hl                                        ; $4b9a: $e1
    rst $38                                       ; $4b9b: $ff
    ld [hl+], a                                   ; $4b9c: $22
    ccf                                           ; $4b9d: $3f
    rst $10                                       ; $4b9e: $d7
    ld [hl], d                                    ; $4b9f: $72
    rst $28                                       ; $4ba0: $ef
    sbc l                                         ; $4ba1: $9d
    call z, Call_000_12fb                         ; $4ba2: $cc $fb $12
    jp nz, Jump_048_78c3                          ; $4ba5: $c2 $c3 $78

    ld l, a                                       ; $4ba8: $6f
    db $fd                                        ; $4ba9: $fd
    ld c, a                                       ; $4baa: $4f
    dec bc                                        ; $4bab: $0b
    dec de                                        ; $4bac: $1b
    dec l                                         ; $4bad: $2d
    ld a, [$05e5]                                 ; $4bae: $fa $e5 $05
    sbc l                                         ; $4bb1: $9d
    add e                                         ; $4bb2: $83
    inc l                                         ; $4bb3: $2c
    ld sp, $cd90                                  ; $4bb4: $31 $90 $cd
    ld a, b                                       ; $4bb7: $78
    ld d, a                                       ; $4bb8: $57
    or c                                          ; $4bb9: $b1
    adc e                                         ; $4bba: $8b
    jp z, $d8f3                                   ; $4bbb: $ca $f3 $d8

    or c                                          ; $4bbe: $b1
    and e                                         ; $4bbf: $a3
    dec b                                         ; $4bc0: $05
    ld c, e                                       ; $4bc1: $4b
    ccf                                           ; $4bc2: $3f
    ld d, h                                       ; $4bc3: $54
    ld a, e                                       ; $4bc4: $7b
    sbc [hl]                                      ; $4bc5: $9e
    jr nc, jr_048_4c2d                            ; $4bc6: $30 $65

    push af                                       ; $4bc8: $f5
    db $e3                                        ; $4bc9: $e3
    dec bc                                        ; $4bca: $0b
    ld sp, $6818                                  ; $4bcb: $31 $18 $68
    ld b, l                                       ; $4bce: $45
    inc a                                         ; $4bcf: $3c
    ld e, l                                       ; $4bd0: $5d
    dec [hl]                                      ; $4bd1: $35
    call z, Call_048_55bd                         ; $4bd2: $cc $bd $55
    ld a, [hl-]                                   ; $4bd5: $3a
    or l                                          ; $4bd6: $b5
    inc [hl]                                      ; $4bd7: $34
    ld l, $68                                     ; $4bd8: $2e $68
    adc $77                                       ; $4bda: $ce $77
    rst $28                                       ; $4bdc: $ef
    sbc l                                         ; $4bdd: $9d
    adc h                                         ; $4bde: $8c
    cp b                                          ; $4bdf: $b8
    ld a, e                                       ; $4be0: $7b
    sbc $49                                       ; $4be1: $de $49
    push bc                                       ; $4be3: $c5
    call $ef78                                    ; $4be4: $cd $78 $ef
    ld [hl], l                                    ; $4be7: $75
    rst $20                                       ; $4be8: $e7
    ld [bc], a                                    ; $4be9: $02
    ret nc                                        ; $4bea: $d0

    sbc h                                         ; $4beb: $9c
    scf                                           ; $4bec: $37
    sbc $eb                                       ; $4bed: $de $eb
    reti                                          ; $4bef: $d9


    ld b, d                                       ; $4bf0: $42
    ei                                            ; $4bf1: $fb
    ret nc                                        ; $4bf2: $d0

    adc $18                                       ; $4bf3: $ce $18
    db $e4                                        ; $4bf5: $e4
    inc b                                         ; $4bf6: $04
    or e                                          ; $4bf7: $b3
    db $e4                                        ; $4bf8: $e4
    and b                                         ; $4bf9: $a0
    ld [hl], e                                    ; $4bfa: $73
    sub b                                         ; $4bfb: $90
    add a                                         ; $4bfc: $87
    ld a, [hl+]                                   ; $4bfd: $2a
    ld a, $00                                     ; $4bfe: $3e $00
    rst $10                                       ; $4c00: $d7
    db $e4                                        ; $4c01: $e4
    add h                                         ; $4c02: $84
    and $30                                       ; $4c03: $e6 $30
    ld b, c                                       ; $4c05: $41
    ld a, l                                       ; $4c06: $7d
    xor e                                         ; $4c07: $ab
    db $fd                                        ; $4c08: $fd
    inc b                                         ; $4c09: $04
    inc c                                         ; $4c0a: $0c
    or $1c                                        ; $4c0b: $f6 $1c
    and c                                         ; $4c0d: $a1
    ld c, b                                       ; $4c0e: $48
    db $f4                                        ; $4c0f: $f4
    sbc e                                         ; $4c10: $9b
    cp $93                                        ; $4c11: $fe $93
    ld hl, sp+$03                                 ; $4c13: $f8 $03
    rst $08                                       ; $4c15: $cf
    db $fd                                        ; $4c16: $fd
    ld a, [$ff9d]                                 ; $4c17: $fa $9d $ff
    push bc                                       ; $4c1a: $c5
    ld e, [hl]                                    ; $4c1b: $5e
    ei                                            ; $4c1c: $fb
    add hl, hl                                    ; $4c1d: $29
    cp $00                                        ; $4c1e: $fe $00
    ld d, a                                       ; $4c20: $57
    dec l                                         ; $4c21: $2d
    rla                                           ; $4c22: $17
    cp $4f                                        ; $4c23: $fe $4f
    dec bc                                        ; $4c25: $0b
    ld a, [hl-]                                   ; $4c26: $3a
    ld bc, $fd83                                  ; $4c27: $01 $83 $fd
    ld d, h                                       ; $4c2a: $54
    inc sp                                        ; $4c2b: $33
    xor l                                         ; $4c2c: $ad

jr_048_4c2d:
    dec de                                        ; $4c2d: $1b
    sbc c                                         ; $4c2e: $99
    ld l, c                                       ; $4c2f: $69
    pop af                                        ; $4c30: $f1
    rlca                                          ; $4c31: $07
    ld c, a                                       ; $4c32: $4f
    ld l, d                                       ; $4c33: $6a
    db $dd                                        ; $4c34: $dd
    ret z                                         ; $4c35: $c8

    ld c, h                                       ; $4c36: $4c
    ld e, a                                       ; $4c37: $5f
    reti                                          ; $4c38: $d9


    dec de                                        ; $4c39: $1b
    add c                                         ; $4c3a: $81
    push bc                                       ; $4c3b: $c5
    ld [hl], c                                    ; $4c3c: $71
    inc a                                         ; $4c3d: $3c
    daa                                           ; $4c3e: $27
    adc d                                         ; $4c3f: $8a
    db $e3                                        ; $4c40: $e3
    jr c, jr_048_4ca1                             ; $4c41: $38 $5e

    jr @+$47                                      ; $4c43: $18 $45

    ld [hl], c                                    ; $4c45: $71
    inc e                                         ; $4c46: $1c
    rra                                           ; $4c47: $1f
    ld d, a                                       ; $4c48: $57
    dec sp                                        ; $4c49: $3b
    ld c, h                                       ; $4c4a: $4c
    ld e, a                                       ; $4c4b: $5f
    adc l                                         ; $4c4c: $8d
    add hl, bc                                    ; $4c4d: $09
    add [hl]                                      ; $4c4e: $86
    ld l, d                                       ; $4c4f: $6a
    ld h, $02                                     ; $4c50: $26 $02
    push de                                       ; $4c52: $d5

Call_048_4c53:
    rra                                           ; $4c53: $1f
    ld l, d                                       ; $4c54: $6a
    add $7b                                       ; $4c55: $c6 $7b
    cp e                                          ; $4c57: $bb
    ld e, d                                       ; $4c58: $5a
    cp $68                                        ; $4c59: $fe $68
    rra                                           ; $4c5b: $1f
    jp c, $a77b                                   ; $4c5c: $da $7b $a7

    ld h, d                                       ; $4c5f: $62
    ld a, [hl+]                                   ; $4c60: $2a
    ld l, $e6                                     ; $4c61: $2e $e6
    call c, Call_048_69ff                         ; $4c63: $dc $ff $69
    ld l, l                                       ; $4c66: $6d
    ld l, $b1                                     ; $4c67: $2e $b1
    adc $69                                       ; $4c69: $ce $69
    ld a, [bc]                                    ; $4c6b: $0a
    ld e, $fe                                     ; $4c6c: $1e $fe
    xor a                                         ; $4c6e: $af
    inc bc                                        ; $4c6f: $03
    inc sp                                        ; $4c70: $33
    ld [de], a                                    ; $4c71: $12
    cp a                                          ; $4c72: $bf
    set 6, d                                      ; $4c73: $cb $f2
    inc b                                         ; $4c75: $04
    ld c, e                                       ; $4c76: $4b
    ld e, c                                       ; $4c77: $59
    sbc [hl]                                      ; $4c78: $9e
    or h                                          ; $4c79: $b4
    sbc h                                         ; $4c7a: $9c
    ld d, b                                       ; $4c7b: $50
    add b                                         ; $4c7c: $80
    sbc c                                         ; $4c7d: $99
    call $00f8                                    ; $4c7e: $cd $f8 $00
    xor a                                         ; $4c81: $af
    ld h, a                                       ; $4c82: $67
    push af                                       ; $4c83: $f5
    jp nc, $e68c                                  ; $4c84: $d2 $8c $e6

    cp e                                          ; $4c87: $bb
    rst $20                                       ; $4c88: $e7
    add sp, $73                                   ; $4c89: $e8 $73
    rst $30                                       ; $4c8b: $f7
    sbc [hl]                                      ; $4c8c: $9e
    sbc c                                         ; $4c8d: $99
    sbc $17                                       ; $4c8e: $de $17
    dec l                                         ; $4c90: $2d
    add sp, $4e                                   ; $4c91: $e8 $4e
    sbc a                                         ; $4c93: $9f
    inc a                                         ; $4c94: $3c
    cpl                                           ; $4c95: $2f
    or c                                          ; $4c96: $b1
    inc a                                         ; $4c97: $3c
    ld c, h                                       ; $4c98: $4c
    ld d, b                                       ; $4c99: $50
    rst $18                                       ; $4c9a: $df
    ld l, d                                       ; $4c9b: $6a
    cpl                                           ; $4c9c: $2f
    cp $00                                        ; $4c9d: $fe $00
    rst $08                                       ; $4c9f: $cf
    or l                                          ; $4ca0: $b5

jr_048_4ca1:
    add hl, sp                                    ; $4ca1: $39
    add $c0                                       ; $4ca2: $c6 $c0
    rst $28                                       ; $4ca4: $ef
    ld b, a                                       ; $4ca5: $47
    db $e3                                        ; $4ca6: $e3
    ld c, $22                                     ; $4ca7: $0e $22
    db $e3                                        ; $4ca9: $e3
    and $c5                                       ; $4caa: $e6 $c5
    ld d, b                                       ; $4cac: $50
    ld l, $fa                                     ; $4cad: $2e $fa
    push hl                                       ; $4caf: $e5
    ld h, c                                       ; $4cb0: $61
    add d                                         ; $4cb1: $82
    ld a, [$fb56]                                 ; $4cb2: $fa $56 $fb
    sbc l                                         ; $4cb5: $9d
    ld a, $f9                                     ; $4cb6: $3e $f9
    ld h, [hl]                                    ; $4cb8: $66
    ld a, h                                       ; $4cb9: $7c
    nop                                           ; $4cba: $00
    rst $08                                       ; $4cbb: $cf
    ret nc                                        ; $4cbc: $d0

    ld e, h                                       ; $4cbd: $5c
    db $d3                                        ; $4cbe: $d3
    cp h                                          ; $4cbf: $bc
    db $10                                        ; $4cc0: $10
    ld c, e                                       ; $4cc1: $4b
    ld c, e                                       ; $4cc2: $4b
    inc l                                         ; $4cc3: $2c
    xor e                                         ; $4cc4: $ab
    ld [hl], c                                    ; $4cc5: $71
    rst $20                                       ; $4cc6: $e7
    ld a, a                                       ; $4cc7: $7f
    inc sp                                        ; $4cc8: $33
    sbc $b5                                       ; $4cc9: $de $b5
    ld a, [$9b52]                                 ; $4ccb: $fa $52 $9b
    ld b, e                                       ; $4cce: $43
    dec [hl]                                      ; $4ccf: $35
    call z, $eef9                                 ; $4cd0: $cc $f9 $ee
    add hl, sp                                    ; $4cd3: $39
    ld a, [$bddc]                                 ; $4cd4: $fa $dc $bd
    ld h, a                                       ; $4cd7: $67
    and [hl]                                      ; $4cd8: $a6
    db $e3                                        ; $4cd9: $e3
    inc bc                                        ; $4cda: $03
    ld c, a                                       ; $4cdb: $4f
    ld l, d                                       ; $4cdc: $6a
    or l                                          ; $4cdd: $b5
    and b                                         ; $4cde: $a0
    ld l, e                                       ; $4cdf: $6b
    ld [hl], e                                    ; $4ce0: $73
    ld a, [hl+]                                   ; $4ce1: $2a
    xor e                                         ; $4ce2: $ab
    ld [hl], l                                    ; $4ce3: $75
    and a                                         ; $4ce4: $a7
    ld d, c                                       ; $4ce5: $51
    call nz, $334b                                ; $4ce6: $c4 $4b $33
    sbc d                                         ; $4ce9: $9a
    rst $28                                       ; $4cea: $ef
    ld e, h                                       ; $4ceb: $5c
    inc c                                         ; $4cec: $0c
    ld b, h                                       ; $4ced: $44
    cp [hl]                                       ; $4cee: $be
    ld [hl], e                                    ; $4cef: $73
    ld c, e                                       ; $4cf0: $4b
    ld e, $0b                                     ; $4cf1: $1e $0b
    ld h, c                                       ; $4cf3: $61
    add d                                         ; $4cf4: $82
    sbc l                                         ; $4cf5: $9d
    ld d, b                                       ; $4cf6: $50
    di                                            ; $4cf7: $f3
    push bc                                       ; $4cf8: $c5
    and h                                         ; $4cf9: $a4
    sub e                                         ; $4cfa: $93
    dec bc                                        ; $4cfb: $0b
    ld a, [hl-]                                   ; $4cfc: $3a
    rst $38                                       ; $4cfd: $ff
    ccf                                           ; $4cfe: $3f
    call Call_048_4277                            ; $4cff: $cd $77 $42
    ld sp, hl                                     ; $4d02: $f9
    cp e                                          ; $4d03: $bb

Jump_048_4d04:
    dec h                                         ; $4d04: $25
    rst $18                                       ; $4d05: $df
    ld sp, hl                                     ; $4d06: $f9
    ld a, [hl-]                                   ; $4d07: $3a
    inc [hl]                                      ; $4d08: $34
    call z, $9ef9                                 ; $4d09: $cc $f9 $9e
    cp e                                          ; $4d0c: $bb
    ret nc                                        ; $4d0d: $d0

    db $f4                                        ; $4d0e: $f4
    add b                                         ; $4d0f: $80
    ld e, c                                       ; $4d10: $59
    add $bb                                       ; $4d11: $c6 $bb
    ld l, d                                       ; $4d13: $6a
    add hl, sp                                    ; $4d14: $39
    ld sp, hl                                     ; $4d15: $f9
    and e                                         ; $4d16: $a3

Jump_048_4d17:
    dec b                                         ; $4d17: $05
    ld e, l                                       ; $4d18: $5d
    ld l, c                                       ; $4d19: $69
    and a                                         ; $4d1a: $a7
    ld [$00f8], a                                 ; $4d1b: $ea $f8 $00
    xor a                                         ; $4d1e: $af
    ld h, a                                       ; $4d1f: $67
    dec bc                                        ; $4d20: $0b
    ld c, l                                       ; $4d21: $4d
    ld h, e                                       ; $4d22: $63
    jr nz, jr_048_4d9e                            ; $4d23: $20 $79

    rst $18                                       ; $4d25: $df
    dec l                                         ; $4d26: $2d
    sbc c                                         ; $4d27: $99
    ld e, $77                                     ; $4d28: $1e $77
    ld h, a                                       ; $4d2a: $67
    inc c                                         ; $4d2b: $0c
    ld [hl], d                                    ; $4d2c: $72
    ccf                                           ; $4d2d: $3f
    ld a, [c]                                     ; $4d2e: $f2
    add $0b                                       ; $4d2f: $c6 $0b
    ld sp, $a9d8                                  ; $4d31: $31 $d8 $a9
    push hl                                       ; $4d34: $e5
    sbc l                                         ; $4d35: $9d
    call z, $be68                                 ; $4d36: $cc $68 $be
    inc de                                        ; $4d39: $13
    jp z, $2ddf                                   ; $4d3a: $ca $df $2d

    ld sp, hl                                     ; $4d3d: $f9
    adc $d7                                       ; $4d3e: $ce $d7
    and c                                         ; $4d40: $a1
    and $ce                                       ; $4d41: $e6 $ce
    jr jr_048_4da9                                ; $4d43: $18 $64

    cp h                                          ; $4d45: $bc
    ld c, e                                       ; $4d46: $4b
    inc c                                         ; $4d47: $0c

Call_048_4d48:
    ld b, $2a                                     ; $4d48: $06 $2a
    sub b                                         ; $4d4a: $90
    add e                                         ; $4d4b: $83
    sub d                                         ; $4d4c: $92
    rst $20                                       ; $4d4d: $e7
    dec sp                                        ; $4d4e: $3b
    ld e, a                                       ; $4d4f: $5f
    add a                                         ; $4d50: $87
    add [hl]                                      ; $4d51: $86
    add hl, sp                                    ; $4d52: $39
    rst $18                                       ; $4d53: $df
    ld [hl], e                                    ; $4d54: $73
    rla                                           ; $4d55: $17
    sbc d                                         ; $4d56: $9a
    ld e, [hl]                                    ; $4d57: $5e
    ld e, b                                       ; $4d58: $58
    ld e, [hl]                                    ; $4d59: $5e
    call nc, $8e2a                                ; $4d5a: $d4 $2a $8e
    rrca                                          ; $4d5d: $0f
    xor a                                         ; $4d5e: $af
    ld h, a                                       ; $4d5f: $67
    dec bc                                        ; $4d60: $0b
    xor c                                         ; $4d61: $a9
    jp hl                                         ; $4d62: $e9


    cpl                                           ; $4d63: $2f
    call $9af4                                    ; $4d64: $cd $f4 $9a
    sub e                                         ; $4d67: $93
    sub [hl]                                      ; $4d68: $96
    db $fc                                        ; $4d69: $fc
    ccf                                           ; $4d6a: $3f
    db $ed                                        ; $4d6b: $ed
    adc h                                         ; $4d6c: $8c
    ld b, c                                       ; $4d6d: $41
    ld l, $c4                                     ; $4d6e: $2e $c4
    sub d                                         ; $4d70: $92
    ret nc                                        ; $4d71: $d0

    xor h                                         ; $4d72: $ac
    ld l, a                                       ; $4d73: $6f
    add $bb                                       ; $4d74: $c6 $bb
    call nz, $a860                                ; $4d76: $c4 $60 $a8
    and $bb                                       ; $4d79: $e6 $bb
    ld h, $50                                     ; $4d7b: $26 $50
    call c, $92e9                                 ; $4d7d: $dc $e9 $92
    add hl, de                                    ; $4d80: $19
    call $9cb5                                    ; $4d81: $cd $b5 $9c
    rst $28                                       ; $4d84: $ef
    inc d                                         ; $4d85: $14
    inc a                                         ; $4d86: $3c
    db $fc                                        ; $4d87: $fc
    ld e, a                                       ; $4d88: $5f
    rst $00                                       ; $4d89: $c7
    rlca                                          ; $4d8a: $07
    sub a                                         ; $4d8b: $97
    push hl                                       ; $4d8c: $e5
    ld c, c                                       ; $4d8d: $49
    ld c, e                                       ; $4d8e: $4b
    cp $9f                                        ; $4d8f: $fe $9f
    and $5a                                       ; $4d91: $e6 $5a
    ld c, $a2                                     ; $4d93: $0e $a2
    cpl                                           ; $4d95: $2f
    xor d                                         ; $4d96: $aa
    ld d, d                                       ; $4d97: $52
    sbc a                                         ; $4d98: $9f
    or $64                                        ; $4d99: $f6 $64
    ld a, [$c692]                                 ; $4d9b: $fa $92 $c6

jr_048_4d9e:
    inc b                                         ; $4d9e: $04
    ld b, e                                       ; $4d9f: $43
    or l                                          ; $4da0: $b5
    rrca                                          ; $4da1: $0f
    call $dcf7                                    ; $4da2: $cd $f7 $dc
    cp c                                          ; $4da5: $b9
    dec h                                         ; $4da6: $25
    adc a                                         ; $4da7: $8f
    add l                                         ; $4da8: $85

jr_048_4da9:
    jr nc, jr_048_4dec                            ; $4da9: $30 $41

    cp h                                          ; $4dab: $bc
    scf                                           ; $4dac: $37
    ld a, [hl-]                                   ; $4dad: $3a
    ld l, l                                       ; $4dae: $6d
    add $93                                       ; $4daf: $c6 $93
    ccf                                           ; $4db1: $3f
    ld l, d                                       ; $4db2: $6a
    ld c, $73                                     ; $4db3: $0e $73
    and c                                         ; $4db5: $a1
    add hl, de                                    ; $4db6: $19
    ld c, l                                       ; $4db7: $4d
    ld d, a                                       ; $4db8: $57
    dec c                                         ; $4db9: $0d
    push de                                       ; $4dba: $d5
    ld b, b                                       ; $4dbb: $40
    sbc e                                         ; $4dbc: $9b
    ld d, e                                       ; $4dbd: $53
    ld a, [de]                                    ; $4dbe: $1a
    and e                                         ; $4dbf: $a3
    and c                                         ; $4dc0: $a1
    ld l, a                                       ; $4dc1: $6f
    push bc                                       ; $4dc2: $c5
    rra                                           ; $4dc3: $1f
    ld l, a                                       ; $4dc4: $6f
    or a                                          ; $4dc5: $b7
    ld l, d                                       ; $4dc6: $6a
    xor $ff                                       ; $4dc7: $ee $ff
    ld [hl], h                                    ; $4dc9: $74
    ld b, [hl]                                    ; $4dca: $46
    ld a, b                                       ; $4dcb: $78
    ret z                                         ; $4dcc: $c8

    ld [$bde2], sp                                ; $4dcd: $08 $e2 $bd
    ld d, b                                       ; $4dd0: $50
    ret nc                                        ; $4dd1: $d0

    ld c, c                                       ; $4dd2: $49
    ld l, l                                       ; $4dd3: $6d
    ld c, d                                       ; $4dd4: $4a
    ld a, a                                       ; $4dd5: $7f
    ld l, c                                       ; $4dd6: $69
    cp d                                          ; $4dd7: $ba
    cp c                                          ; $4dd8: $b9
    and $a4                                       ; $4dd9: $e6 $a4
    dec h                                         ; $4ddb: $25
    ld a, a                                       ; $4ddc: $7f
    ld l, d                                       ; $4ddd: $6a
    ld c, [hl]                                    ; $4dde: $4e
    ld a, [hl-]                                   ; $4ddf: $3a
    sbc c                                         ; $4de0: $99
    call $ac99                                    ; $4de1: $cd $99 $ac
    ld b, [hl]                                    ; $4de4: $46
    ret nc                                        ; $4de5: $d0

    ld a, c                                       ; $4de6: $79
    ld c, h                                       ; $4de7: $4c
    ret nc                                        ; $4de8: $d0

    sbc h                                         ; $4de9: $9c
    ld e, e                                       ; $4dea: $5b
    ld [de], a                                    ; $4deb: $12

jr_048_4dec:
    ld c, d                                       ; $4dec: $4a
    and b                                         ; $4ded: $a0
    add hl, de                                    ; $4dee: $19
    rra                                           ; $4def: $1f
    rst $10                                       ; $4df0: $d7
    db $e4                                        ; $4df1: $e4
    inc h                                         ; $4df2: $24
    ld b, $72                                     ; $4df3: $06 $72
    adc c                                         ; $4df5: $89
    push hl                                       ; $4df6: $e5
    sbc c                                         ; $4df7: $99
    sub $6d                                       ; $4df8: $d6 $6d
    ld l, $cd                                     ; $4dfa: $2e $cd
    ld l, b                                       ; $4dfc: $68
    cp [hl]                                       ; $4dfd: $be
    dec sp                                        ; $4dfe: $3b
    ld e, e                                       ; $4dff: $5b
    ld a, d                                       ; $4e00: $7a
    db $fd                                        ; $4e01: $fd
    and c                                         ; $4e02: $a1
    sub d                                         ; $4e03: $92
    jp c, $c68f                                   ; $4e04: $da $8f $c6

    db $dd                                        ; $4e07: $dd
    add hl, de                                    ; $4e08: $19
    sbc e                                         ; $4e09: $9b
    dec sp                                        ; $4e0a: $3b
    ld d, l                                       ; $4e0b: $55
    set 1, [hl]                                   ; $4e0c: $cb $ce
    ld b, h                                       ; $4e0e: $44
    cp [hl]                                       ; $4e0f: $be
    ld a, [de]                                    ; $4e10: $1a
    inc de                                        ; $4e11: $13
    call z, Call_048_5177                         ; $4e12: $cc $77 $51
    xor e                                         ; $4e15: $ab
    cp b                                          ; $4e16: $b8
    inc sp                                        ; $4e17: $33
    sub c                                         ; $4e18: $91
    xor a                                         ; $4e19: $af
    add $04                                       ; $4e1a: $c6 $04
    ld a, [bc]                                    ; $4e1c: $0a
    ld [hl], d                                    ; $4e1d: $72
    sub d                                         ; $4e1e: $92
    sbc e                                         ; $4e1f: $9b
    dec bc                                        ; $4e20: $0b
    ld e, e                                       ; $4e21: $5b
    ld de, $2c5f                                  ; $4e22: $11 $5f $2c
    ld [hl-], a                                   ; $4e25: $32
    and e                                         ; $4e26: $a3
    db $fd                                        ; $4e27: $fd
    cpl                                           ; $4e28: $2f
    rst $30                                       ; $4e29: $f7
    inc hl                                        ; $4e2a: $23
    ld l, a                                       ; $4e2b: $6f
    cp h                                          ; $4e2c: $bc
    ld [hl], e                                    ; $4e2d: $73
    ld [hl], a                                    ; $4e2e: $77
    cp $8b                                        ; $4e2f: $fe $8b
    cp $c7                                        ; $4e31: $fe $c7
    ld bc, $a98d                                  ; $4e33: $01 $8d $a9
    cp b                                          ; $4e36: $b8
    call nc, $0f8c                                ; $4e37: $d4 $8c $0f
    rst $08                                       ; $4e3a: $cf
    ret nc                                        ; $4e3b: $d0

    ld d, b                                       ; $4e3c: $50
    dec c                                         ; $4e3d: $0d
    bit 5, d                                      ; $4e3e: $cb $6a
    and b                                         ; $4e40: $a0
    ld d, d                                       ; $4e41: $52
    call $e72c                                    ; $4e42: $cd $2c $e7
    cp e                                          ; $4e45: $bb
    ret nc                                        ; $4e46: $d0

    jp nc, Jump_000_2a2f                          ; $4e47: $d2 $2f $2a

    rst $08                                       ; $4e4a: $cf
    ld [hl], a                                    ; $4e4b: $77
    ld b, d                                       ; $4e4c: $42
    rst $08                                       ; $4e4d: $cf
    adc l                                         ; $4e4e: $8d
    and h                                         ; $4e4f: $a4
    add hl, hl                                    ; $4e50: $29
    sbc [hl]                                      ; $4e51: $9e
    ld l, e                                       ; $4e52: $6b
    cp c                                          ; $4e53: $b9
    xor b                                         ; $4e54: $a8
    reti                                          ; $4e55: $d9


    jp nc, Jump_048_42de                          ; $4e56: $d2 $de $42

    db $ed                                        ; $4e59: $ed
    ld c, e                                       ; $4e5a: $4b
    pop af                                        ; $4e5b: $f1
    xor [hl]                                      ; $4e5c: $ae
    ret                                           ; $4e5d: $c9


    sbc l                                         ; $4e5e: $9d
    or c                                          ; $4e5f: $b1
    ld a, e                                       ; $4e60: $7b
    dec bc                                        ; $4e61: $0b
    or l                                          ; $4e62: $b5
    cpl                                           ; $4e63: $2f
    xor l                                         ; $4e64: $ad
    add h                                         ; $4e65: $84
    add hl, sp                                    ; $4e66: $39
    ld h, b                                       ; $4e67: $60
    sub [hl]                                      ; $4e68: $96
    rla                                           ; $4e69: $17
    adc e                                         ; $4e6a: $8b
    call z, $a568                                 ; $4e6b: $cc $68 $a5
    dec h                                         ; $4e6e: $25
    sub [hl]                                      ; $4e6f: $96
    rla                                           ; $4e70: $17
    or l                                          ; $4e71: $b5
    inc [hl]                                      ; $4e72: $34
    rlca                                          ; $4e73: $07
    ld e, c                                       ; $4e74: $59
    cp $a8                                        ; $4e75: $fe $a8
    add hl, de                                    ; $4e77: $19
    rra                                           ; $4e78: $1f
    ld d, a                                       ; $4e79: $57
    cp e                                          ; $4e7a: $bb
    sub e                                         ; $4e7b: $93
    ld [hl], c                                    ; $4e7c: $71
    ld c, c                                       ; $4e7d: $49
    ld b, c                                       ; $4e7e: $41
    adc $a9                                       ; $4e7f: $ce $a9
    and h                                         ; $4e81: $a4
    ld h, $f4                                     ; $4e82: $26 $f4
    ld h, h                                       ; $4e84: $64
    or d                                          ; $4e85: $b2
    add hl, sp                                    ; $4e86: $39
    rst $18                                       ; $4e87: $df
    ld sp, hl                                     ; $4e88: $f9
    ld a, [hl-]                                   ; $4e89: $3a
    inc [hl]                                      ; $4e8a: $34
    rst $10                                       ; $4e8b: $d7
    ld [hl], d                                    ; $4e8c: $72
    cp [hl]                                       ; $4e8d: $be
    di                                            ; $4e8e: $f3
    rra                                           ; $4e8f: $1f
    sbc $e4                                       ; $4e90: $de $e4
    and [hl]                                      ; $4e92: $a6
    or h                                          ; $4e93: $b4
    xor b                                         ; $4e94: $a8
    inc [hl]                                      ; $4e95: $34
    rst $18                                       ; $4e96: $df
    add l                                         ; $4e97: $85
    push de                                       ; $4e98: $d5
    sbc l                                         ; $4e99: $9d
    scf                                           ; $4e9a: $37
    ld [hl], b                                    ; $4e9b: $70
    or c                                          ; $4e9c: $b1
    ret z                                         ; $4e9d: $c8

jr_048_4e9e:
    adc h                                         ; $4e9e: $8c
    halt                                          ; $4e9f: $76
    sbc e                                         ; $4ea0: $9b
    ld e, d                                       ; $4ea1: $5a
    ld a, [de]                                    ; $4ea2: $1a
    inc a                                         ; $4ea3: $3c
    ld h, h                                       ; $4ea4: $64
    dec [hl]                                      ; $4ea5: $35
    and l                                         ; $4ea6: $a5
    dec c                                         ; $4ea7: $0d
    ld l, d                                       ; $4ea8: $6a
    xor $dc                                       ; $4ea9: $ee $dc
    ld hl, sp+$00                                 ; $4eab: $f8 $00
    rst $28                                       ; $4ead: $ef
    ld [hl], l                                    ; $4eae: $75
    rst $20                                       ; $4eaf: $e7
    ld [bc], a                                    ; $4eb0: $02
    ret nc                                        ; $4eb1: $d0

    sbc h                                         ; $4eb2: $9c
    scf                                           ; $4eb3: $37
    ld e, [hl]                                    ; $4eb4: $5e
    ld l, c                                       ; $4eb5: $69
    sbc b                                         ; $4eb6: $98
    di                                            ; $4eb7: $f3
    dec a                                         ; $4eb8: $3d
    ld [hl], a                                    ; $4eb9: $77
    and c                                         ; $4eba: $a1
    jp hl                                         ; $4ebb: $e9


    or l                                          ; $4ebc: $b5
    add hl, sp                                    ; $4ebd: $39
    or a                                          ; $4ebe: $b7
    inc h                                         ; $4ebf: $24
    ld a, h                                       ; $4ec0: $7c
    ld [bc], a                                    ; $4ec1: $02
    call Call_000_1931                            ; $4ec2: $cd $31 $19
    or h                                          ; $4ec5: $b4
    inc [hl]                                      ; $4ec6: $34
    and e                                         ; $4ec7: $a3
    ld sp, hl                                     ; $4ec8: $f9
    adc $c5                                       ; $4ec9: $ce $c5
    sub d                                         ; $4ecb: $92
    rst $28                                       ; $4ecc: $ef
    call c, $c792                                 ; $4ecd: $dc $92 $c7
    ld b, d                                       ; $4ed0: $42
    sbc b                                         ; $4ed1: $98

Jump_048_4ed2:
    ld h, b                                       ; $4ed2: $60
    xor b                                         ; $4ed3: $a8
    ld l, $16                                     ; $4ed4: $2e $16
    sbc c                                         ; $4ed6: $99
    pop de                                        ; $4ed7: $d1
    ld d, b                                       ; $4ed8: $50
    xor $d4                                       ; $4ed9: $ee $d4
    ld a, [c]                                     ; $4edb: $f2
    ld [de], a                                    ; $4edc: $12
    srl e                                         ; $4edd: $cb $3b
    sbc c                                         ; $4edf: $99
    sub c                                         ; $4ee0: $91
    rst $38                                       ; $4ee1: $ff
    sbc a                                         ; $4ee2: $9f
    ld d, $62                                     ; $4ee3: $16 $62
    jr nc, jr_048_4e9e                            ; $4ee5: $30 $b7

    inc h                                         ; $4ee7: $24
    ld a, h                                       ; $4ee8: $7c
    ld [bc], a                                    ; $4ee9: $02
    call Call_000_3e9d                            ; $4eea: $cd $9d $3e
    ld a, c                                       ; $4eed: $79
    adc [hl]                                      ; $4eee: $8e
    rrca                                          ; $4eef: $0f
    ld l, a                                       ; $4ef0: $6f
    or a                                          ; $4ef1: $b7

Jump_048_4ef2:
    ld l, d                                       ; $4ef2: $6a
    xor $ff                                       ; $4ef3: $ee $ff
    ld [hl], h                                    ; $4ef5: $74
    ld b, [hl]                                    ; $4ef6: $46
    ld a, b                                       ; $4ef7: $78
    ret z                                         ; $4ef8: $c8

Call_048_4ef9:
    ld [$5a66], sp                                ; $4ef9: $08 $66 $5a
    dec l                                         ; $4efc: $2d
    add sp, -$62                                  ; $4efd: $e8 $9e
    or d                                          ; $4eff: $b2
    ld c, h                                       ; $4f00: $4c

Jump_048_4f01:
    ld c, h                                       ; $4f01: $4c
    and b                                         ; $4f02: $a0
    ld h, $2d                                     ; $4f03: $26 $2d
    ld sp, hl                                     ; $4f05: $f9
    ld a, a                                       ; $4f06: $7f
    ld a, [de]                                    ; $4f07: $1a
    ld h, $30                                     ; $4f08: $26 $30
    db $e3                                        ; $4f0a: $e3
    ld a, b                                       ; $4f0b: $78
    ld l, a                                       ; $4f0c: $6f
    ld l, c                                       ; $4f0d: $69
    sub e                                         ; $4f0e: $93
    ld c, e                                       ; $4f0f: $4b
    inc sp                                        ; $4f10: $33
    push bc                                       ; $4f11: $c5
    dec sp                                        ; $4f12: $3b
    ld h, e                                       ; $4f13: $63
    sub b                                         ; $4f14: $90
    di                                            ; $4f15: $f3
    ld [hl], l                                    ; $4f16: $75
    ld l, b                                       ; $4f17: $68
    xor b                                         ; $4f18: $a8
    and $3b                                       ; $4f19: $e6 $3b
    and b                                         ; $4f1b: $a0
    ld sp, $5f90                                  ; $4f1c: $31 $90 $5f
    sub [hl]                                      ; $4f1f: $96
    and $b1                                       ; $4f20: $e6 $b1
    ld [hl], e                                    ; $4f22: $73
    dec l                                         ; $4f23: $2d
    ld c, l                                       ; $4f24: $4d
    inc [hl]                                      ; $4f25: $34
    rst $18                                       ; $4f26: $df
    ld sp, hl                                     ; $4f27: $f9
    sub d                                         ; $4f28: $92
    rst $28                                       ; $4f29: $ef
    call c, $c792                                 ; $4f2a: $dc $92 $c7
    ld b, d                                       ; $4f2d: $42
    sbc b                                         ; $4f2e: $98
    ld h, b                                       ; $4f2f: $60
    ld a, [c]                                     ; $4f30: $f2
    ld b, a                                       ; $4f31: $47
    inc e                                         ; $4f32: $1c
    rra                                           ; $4f33: $1f
    rst $08                                       ; $4f34: $cf
    call c, $7390                                 ; $4f35: $dc $90 $73
    dec l                                         ; $4f38: $2d
    rst $20                                       ; $4f39: $e7
    ld a, e                                       ; $4f3a: $7b
    xor $00                                       ; $4f3b: $ee $00
    and c                                         ; $4f3d: $a1
    ld c, b                                       ; $4f3e: $48
    add h                                         ; $4f3f: $84
    cp a                                          ; $4f40: $bf
    add hl, sp                                    ; $4f41: $39
    push bc                                       ; $4f42: $c5
    sub [hl]                                      ; $4f43: $96
    ld e, [hl]                                    ; $4f44: $5e
    ld l, b                                       ; $4f45: $68
    or l                                          ; $4f46: $b5
    ld l, a                                       ; $4f47: $6f
    ld c, [hl]                                    ; $4f48: $4e
    rla                                           ; $4f49: $17
    dec a                                         ; $4f4a: $3d
    rst $28                                       ; $4f4b: $ef
    ld b, e                                       ; $4f4c: $43
    di                                            ; $4f4d: $f3
    ld e, l                                       ; $4f4e: $5d
    sbc e                                         ; $4f4f: $9b
    ei                                            ; $4f50: $fb
    and d                                         ; $4f51: $a2
    ld e, c                                       ; $4f52: $59
    ld a, [$1752]                                 ; $4f53: $fa $52 $17
    ld e, c                                       ; $4f56: $59
    ld h, d                                       ; $4f57: $62
    ld l, c                                       ; $4f58: $69
    ld l, c                                       ; $4f59: $69
    ld b, [hl]                                    ; $4f5a: $46
    ld l, e                                       ; $4f5b: $6b
    ld [hl], e                                    ; $4f5c: $73
    sub [hl]                                      ; $4f5d: $96
    cp [hl]                                       ; $4f5e: $be
    call nc, $a685                                ; $4f5f: $d4 $85 $a6
    db $e3                                        ; $4f62: $e3
    inc bc                                        ; $4f63: $03
    rst $08                                       ; $4f64: $cf
    call c, $7390                                 ; $4f65: $dc $90 $73
    dec l                                         ; $4f68: $2d
    rst $20                                       ; $4f69: $e7
    dec sp                                        ; $4f6a: $3b
    ld b, b                                       ; $4f6b: $40
    jr z, @+$14                                   ; $4f6c: $28 $12

    pop hl                                        ; $4f6e: $e1
    ld l, a                                       ; $4f6f: $6f
    ld [hl], $27                                  ; $4f70: $36 $27
    dec l                                         ; $4f72: $2d
    rla                                           ; $4f73: $17
    ld [hl], h                                    ; $4f74: $74
    ld l, l                                       ; $4f75: $6d
    ld c, [hl]                                    ; $4f76: $4e
    and e                                         ; $4f77: $a3
    adc b                                         ; $4f78: $88
    rlca                                          ; $4f79: $07
    ld [$9736], a                                 ; $4f7a: $ea $36 $97
    ld h, [hl]                                    ; $4f7d: $66
    or h                                          ; $4f7e: $b4
    ld [hl], $67                                  ; $4f7f: $36 $67
    jp hl                                         ; $4f81: $e9


    ld c, e                                       ; $4f82: $4b
    sbc l                                         ; $4f83: $9d
    ld e, e                                       ; $4f84: $5b
    ld a, [c]                                     ; $4f85: $f2
    ld e, b                                       ; $4f86: $58
    ld [$c413], sp                                ; $4f87: $08 $13 $c4
    ld [hl], c                                    ; $4f8a: $71
    cp h                                          ; $4f8b: $bc
    di                                            ; $4f8c: $f3
    ld c, a                                       ; $4f8d: $4f
    ld e, a                                       ; $4f8e: $5f
    jp c, Jump_048_72ff                           ; $4f8f: $da $ff $72

    sub c                                         ; $4f92: $91
    add hl, de                                    ; $4f93: $19
    xor l                                         ; $4f94: $ad
    call $a845                                    ; $4f95: $cd $45 $a8
    dec [hl]                                      ; $4f98: $35
    ld b, [hl]                                    ; $4f99: $46
    push hl                                       ; $4f9a: $e5
    jp nc, Jump_000_13b8                          ; $4f9b: $d2 $b8 $13

    ld a, d                                       ; $4f9e: $7a
    ld a, [hl+]                                   ; $4f9f: $2a
    ld l, b                                       ; $4fa0: $68
    add $07                                       ; $4fa1: $c6 $07
    rst $10                                       ; $4fa3: $d7
    db $e4                                        ; $4fa4: $e4
    jp nz, $cb0a                                  ; $4fa5: $c2 $0a $cb

    rrca                                          ; $4fa8: $0f
    sub [hl]                                      ; $4fa9: $96
    rst $38                                       ; $4faa: $ff
    inc hl                                        ; $4fab: $23
    rrca                                          ; $4fac: $0f
    dec de                                        ; $4fad: $1b
    ld e, c                                       ; $4fae: $59
    ld a, [$0ef9]                                 ; $4faf: $fa $f9 $0e
    ld d, h                                       ; $4fb2: $54
    jp hl                                         ; $4fb3: $e9


    rst $08                                       ; $4fb4: $cf
    call $3af9                                    ; $4fb5: $cd $f9 $3a
    or h                                          ; $4fb8: $b4
    inc [hl]                                      ; $4fb9: $34
    ld d, e                                       ; $4fba: $53
    inc a                                         ; $4fbb: $3c
    adc a                                         ; $4fbc: $8f
    dec e                                         ; $4fbd: $1d
    and h                                         ; $4fbe: $a4
    ld c, l                                       ; $4fbf: $4d
    db $ed                                        ; $4fc0: $ed
    ld h, h                                       ; $4fc1: $64
    ld e, h                                       ; $4fc2: $5c
    jp c, $9b19                                   ; $4fc3: $da $19 $9b

    inc de                                        ; $4fc6: $13
    jr nc, @-$4b                                  ; $4fc7: $30 $b3

    add hl, bc                                    ; $4fc9: $09
    call z, Call_000_3e32                         ; $4fca: $cc $32 $3e
    nop                                           ; $4fcd: $00
    cpl                                           ; $4fce: $2f
    db $fc                                        ; $4fcf: $fc
    rrca                                          ; $4fd0: $0f
    dec c                                         ; $4fd1: $0d
    or h                                          ; $4fd2: $b4
    add hl, sp                                    ; $4fd3: $39
    xor c                                         ; $4fd4: $a9
    ld c, l                                       ; $4fd5: $4d
    jp hl                                         ; $4fd6: $e9


    cpl                                           ; $4fd7: $2f
    ld c, l                                       ; $4fd8: $4d
    scf                                           ; $4fd9: $37
    daa                                           ; $4fda: $27
    ld h, b                                       ; $4fdb: $60
    ld h, [hl]                                    ; $4fdc: $66
    ld [hl], e                                    ; $4fdd: $73
    daa                                           ; $4fde: $27
    inc sp                                        ; $4fdf: $33
    sbc d                                         ; $4fe0: $9a
    xor [hl]                                      ; $4fe1: $ae
    jp c, $93e9                                   ; $4fe2: $da $e9 $93

    rst $20                                       ; $4fe5: $e7
    add c                                         ; $4fe6: $81
    add d                                         ; $4fe7: $82
    cp d                                          ; $4fe8: $ba
    call $5778                                    ; $4fe9: $cd $78 $57
    cp e                                          ; $4fec: $bb
    xor b                                         ; $4fed: $a8
    ld d, l                                       ; $4fee: $55
    call c, $92e9                                 ; $4fef: $dc $e9 $92
    ld d, c                                       ; $4ff2: $51
    ld [hl], e                                    ; $4ff3: $73
    ld c, h                                       ; $4ff4: $4c
    sub l                                         ; $4ff5: $95
    or d                                          ; $4ff6: $b2
    add hl, sp                                    ; $4ff7: $39
    inc de                                        ; $4ff8: $13

Jump_048_4ff9:
    ld sp, hl                                     ; $4ff9: $f9
    ld l, d                                       ; $4ffa: $6a
    ld c, h                                       ; $4ffb: $4c
    and b                                         ; $4ffc: $a0
    jr nz, @+$29                                  ; $4ffd: $20 $27

    cp c                                          ; $4fff: $b9
    add hl, sp                                    ; $5000: $39
    inc de                                        ; $5001: $13
    call $dab4                                    ; $5002: $cd $b4 $da
    cp c                                          ; $5005: $b9
    ei                                            ; $5006: $fb
    jp hl                                         ; $5007: $e9


    ld c, e                                       ; $5008: $4b
    ld [bc], a                                    ; $5009: $02
    ld a, l                                       ; $500a: $7d
    reti                                          ; $500b: $d9


    call c, $93e9                                 ; $500c: $dc $e9 $93
    ld l, a                                       ; $500f: $6f
    add $07                                       ; $5010: $c6 $07
    cpl                                           ; $5012: $2f
    ld b, a                                       ; $5013: $47
    ld d, e                                       ; $5014: $53
    ld e, c                                       ; $5015: $59
    cp l                                          ; $5016: $bd
    rrca                                          ; $5017: $0f
    call Call_048_7c77                            ; $5018: $cd $77 $7c
    ld l, d                                       ; $501b: $6a
    ld a, l                                       ; $501c: $7d
    rst $20                                       ; $501d: $e7
    sub [hl]                                      ; $501e: $96
    inc a                                         ; $501f: $3c
    ld d, $c2                                     ; $5020: $16 $c2
    inc b                                         ; $5022: $04
    db $e3                                        ; $5023: $e3
    ld c, [hl]                                    ; $5024: $4e
    cp $a8                                        ; $5025: $fe $a8
    ld a, c                                       ; $5027: $79
    ld sp, $e4e9                                  ; $5028: $31 $e9 $e4
    add d                                         ; $502b: $82
    adc $77                                       ; $502c: $ce $77
    ld l, [hl]                                    ; $502e: $6e
    ld c, c                                       ; $502f: $49
    ld hl, sp+$04                                 ; $5030: $f8 $04
    sbc d                                         ; $5032: $9a
    inc bc                                        ; $5033: $03
    ld a, [de]                                    ; $5034: $1a
    inc bc                                        ; $5035: $03
    ld sp, hl                                     ; $5036: $f9
    ld h, l                                       ; $5037: $65
    ld l, c                                       ; $5038: $69
    ld h, [hl]                                    ; $5039: $66
    cp c                                          ; $503a: $b9
    or b                                          ; $503b: $b0
    cp h                                          ; $503c: $bc
    ld h, d                                       ; $503d: $62
    ld a, [$b5ce]                                 ; $503e: $fa $ce $b5
    sbc h                                         ; $5041: $9c
    rst $28                                       ; $5042: $ef
    ld b, d                                       ; $5043: $42
    db $d3                                        ; $5044: $d3
    inc bc                                        ; $5045: $03
    dec d                                         ; $5046: $15
    ret z                                         ; $5047: $c8

    ld b, c                                       ; $5048: $41
    reti                                          ; $5049: $d9


    adc h                                         ; $504a: $8c
    rrca                                          ; $504b: $0f
    ld l, a                                       ; $504c: $6f
    or a                                          ; $504d: $b7
    ld l, d                                       ; $504e: $6a
    xor $ff                                       ; $504f: $ee $ff
    ld [hl], h                                    ; $5051: $74
    ld b, [hl]                                    ; $5052: $46
    ld a, b                                       ; $5053: $78
    ret z                                         ; $5054: $c8

    ld [$9666], sp                                ; $5055: $08 $66 $96
    di                                            ; $5058: $f3
    ld e, l                                       ; $5059: $5d
    cp $4f                                        ; $505a: $fe $4f
    ld e, [hl]                                    ; $505c: $5e
    ld e, d                                       ; $505d: $5a
    ld a, [c]                                     ; $505e: $f2
    ld e, h                                       ; $505f: $5c
    set 7, c                                      ; $5060: $cb $f9
    sbc [hl]                                      ; $5062: $9e
    cp e                                          ; $5063: $bb
    ret nc                                        ; $5064: $d0

    ld [hl], h                                    ; $5065: $74
    cp h                                          ; $5066: $bc
    daa                                           ; $5067: $27
    or l                                          ; $5068: $b5
    ld e, d                                       ; $5069: $5a
    ret nc                                        ; $506a: $d0

    dec h                                         ; $506b: $25
    sub [hl]                                      ; $506c: $96
    rst $30                                       ; $506d: $f7
    ld hl, $de5d                                  ; $506e: $21 $5d $de
    ret                                           ; $5071: $c9


    adc h                                         ; $5072: $8c
    ld d, $74                                     ; $5073: $16 $74
    ld b, c                                       ; $5075: $41
    rst $20                                       ; $5076: $e7
    cp $72                                        ; $5077: $fe $72
    ld [hl], e                                    ; $5079: $73
    reti                                          ; $507a: $d9


    jp nc, Jump_048_7cb9                          ; $507b: $d2 $b9 $7c

    ld sp, $e4e9                                  ; $507e: $31 $e9 $e4
    add d                                         ; $5081: $82
    xor $fc                                       ; $5082: $ee $fc
    inc hl                                        ; $5084: $23
    inc sp                                        ; $5085: $33
    jp c, $d687                                   ; $5086: $da $87 $d6

    and $2c                                       ; $5089: $e6 $2c
    ld a, l                                       ; $508b: $7d
    xor c                                         ; $508c: $a9
    ld [hl], e                                    ; $508d: $73
    ld c, e                                       ; $508e: $4b
    ld e, $0b                                     ; $508f: $1e $0b
    ld h, c                                       ; $5091: $61
    add d                                         ; $5092: $82
    ld [hl], c                                    ; $5093: $71
    xor c                                         ; $5094: $a9
    ldh a, [$90]                                  ; $5095: $f0 $90
    push hl                                       ; $5097: $e5
    adc a                                         ; $5098: $8f
    sbc d                                         ; $5099: $9a
    pop af                                        ; $509a: $f1
    ld bc, $d0cf                                  ; $509b: $01 $cf $d0
    adc $18                                       ; $509e: $ce $18
    db $e4                                        ; $50a0: $e4
    jp nz, $ef56                                  ; $50a1: $c2 $56 $ef

    ld h, h                                       ; $50a4: $64
    cp h                                          ; $50a5: $bc
    ldh a, [$57]                                  ; $50a6: $f0 $57
    ld [hl], $d7                                  ; $50a8: $36 $d7
    inc e                                         ; $50aa: $1c
    jr nc, jr_048_511b                            ; $50ab: $30 $6e

    ld l, $c4                                     ; $50ad: $2e $c4
    jp nc, $343e                                  ; $50af: $d2 $3e $34

    dec b                                         ; $50b2: $05
    rrca                                          ; $50b3: $0f
    rst $38                                       ; $50b4: $ff
    rst $10                                       ; $50b5: $d7
    pop af                                        ; $50b6: $f1
    ld e, [hl]                                    ; $50b7: $5e
    ld l, b                                       ; $50b8: $68
    ld c, c                                       ; $50b9: $49
    ld h, e                                       ; $50ba: $63
    add d                                         ; $50bb: $82
    and $dc                                       ; $50bc: $e6 $dc
    sub d                                         ; $50be: $92
    ld [c], a                                     ; $50bf: $e2
    rrca                                          ; $50c0: $0f
    ld b, c                                       ; $50c1: $41
    call $3379                                    ; $50c2: $cd $79 $33
    sbc d                                         ; $50c5: $9a
    ld l, e                                       ; $50c6: $6b
    add hl, sp                                    ; $50c7: $39
    db $d3                                        ; $50c8: $d3
    cp d                                          ; $50c9: $ba
    ld [$de62], a                                 ; $50ca: $ea $62 $de
    ld a, b                                       ; $50cd: $78
    xor b                                         ; $50ce: $a8
    ld h, [hl]                                    ; $50cf: $66
    sbc d                                         ; $50d0: $9a
    ld sp, $33f0                                  ; $50d1: $31 $f0 $33
    cp l                                          ; $50d4: $bd
    di                                            ; $50d5: $f3
    rra                                           ; $50d6: $1f
    add sp, -$57                                  ; $50d7: $e8 $a9
    ld d, l                                       ; $50d9: $55
    cp h                                          ; $50da: $bc
    rrca                                          ; $50db: $0f
    db $ed                                        ; $50dc: $ed
    cp l                                          ; $50dd: $bd
    ld d, e                                       ; $50de: $53
    ld sp, $1715                                  ; $50df: $31 $15 $17
    inc sp                                        ; $50e2: $33
    ld a, $00                                     ; $50e3: $3e $00
    rst $10                                       ; $50e5: $d7
    db $e4                                        ; $50e6: $e4
    ld e, h                                       ; $50e7: $5c
    ld [hl-], a                                   ; $50e8: $32
    inc bc                                        ; $50e9: $03
    adc e                                         ; $50ea: $8b
    ld a, [hl-]                                   ; $50eb: $3a
    inc de                                        ; $50ec: $13
    db $ed                                        ; $50ed: $ed
    ld h, h                                       ; $50ee: $64
    ld b, [hl]                                    ; $50ef: $46
    ccf                                           ; $50f0: $3f
    jp c, Jump_048_73a9                           ; $50f1: $da $a9 $73

    dec l                                         ; $50f4: $2d
    rst $30                                       ; $50f5: $f7
    ld c, d                                       ; $50f6: $4a
    ld c, c                                       ; $50f7: $49
    ld e, d                                       ; $50f8: $5a
    call nc, Call_048_4764                        ; $50f9: $d4 $64 $47
    dec l                                         ; $50fc: $2d
    or c                                          ; $50fd: $b1
    inc a                                         ; $50fe: $3c
    call z, $ec79                                 ; $50ff: $cc $79 $ec
    adc $18                                       ; $5102: $ce $18
    nop                                           ; $5104: $00
    ld c, e                                       ; $5105: $4b
    or b                                          ; $5106: $b0
    add sp, -$7d                                  ; $5107: $e8 $83
    and $e4                                       ; $5109: $e6 $e4
    adc a                                         ; $510b: $8f
    sbc d                                         ; $510c: $9a
    pop af                                        ; $510d: $f1
    sbc $36                                       ; $510e: $de $36
    sbc $f9                                       ; $5110: $de $f9
    dec sp                                        ; $5112: $3b
    di                                            ; $5113: $f3
    ld h, [hl]                                    ; $5114: $66
    or h                                          ; $5115: $b4
    inc sp                                        ; $5116: $33
    ld [hl-], a                                   ; $5117: $32
    scf                                           ; $5118: $37
    xor a                                         ; $5119: $af
    inc e                                         ; $511a: $1c

jr_048_511b:
    rst $08                                       ; $511b: $cf
    inc de                                        ; $511c: $13
    and [hl]                                      ; $511d: $a6
    xor h                                         ; $511e: $ac
    sbc [hl]                                      ; $511f: $9e
    rst $38                                       ; $5120: $ff
    push hl                                       ; $5121: $e5
    sbc c                                         ; $5122: $99
    ld d, [hl]                                    ; $5123: $56
    ld e, a                                       ; $5124: $5f
    or h                                          ; $5125: $b4
    db $10                                        ; $5126: $10
    add e                                         ; $5127: $83
    ld a, l                                       ; $5128: $7d
    or a                                          ; $5129: $b7
    ld h, h                                       ; $512a: $64
    ld a, d                                       ; $512b: $7a
    add d                                         ; $512c: $82
    dec h                                         ; $512d: $25
    sbc b                                         ; $512e: $98
    ei                                            ; $512f: $fb
    ccf                                           ; $5130: $3f
    dec c                                         ; $5131: $0d
    ld d, l                                       ; $5132: $55
    cp h                                          ; $5133: $bc
    rla                                           ; $5134: $17
    call $2868                                    ; $5135: $cd $68 $28
    ld [hl], a                                    ; $5138: $77
    ld [hl-], a                                   ; $5139: $32
    dec [hl]                                      ; $513a: $35
    ret z                                         ; $513b: $c8

    call nc, Call_048_4b04                        ; $513c: $d4 $04 $4b

jr_048_513f:
    jr nc, jr_048_513f                            ; $513f: $30 $fe

    call Call_048_5ca1                            ; $5141: $cd $a1 $5c
    sbc e                                         ; $5144: $9b
    ld l, d                                       ; $5145: $6a
    sbc b                                         ; $5146: $98
    dec sp                                        ; $5147: $3b
    ld h, e                                       ; $5148: $63
    sub b                                         ; $5149: $90
    sub e                                         ; $514a: $93
    sub [hl]                                      ; $514b: $96
    db $fc                                        ; $514c: $fc
    ccf                                           ; $514d: $3f
    db $ed                                        ; $514e: $ed
    ld h, h                                       ; $514f: $64
    ld a, [hl+]                                   ; $5150: $2a
    ld a, $00                                     ; $5151: $3e $00
    ld c, a                                       ; $5153: $4f
    dec [hl]                                      ; $5154: $35
    rla                                           ; $5155: $17
    ld [hl], h                                    ; $5156: $74
    rst $38                                       ; $5157: $ff
    inc hl                                        ; $5158: $23
    rrca                                          ; $5159: $0f
    ld [hl], e                                    ; $515a: $73
    cp [hl]                                       ; $515b: $be
    ld a, e                                       ; $515c: $7b
    add l                                         ; $515d: $85
    jr nc, @+$3a                                  ; $515e: $30 $38

    scf                                           ; $5160: $37
    and l                                         ; $5161: $a5
    ld b, l                                       ; $5162: $45
    and l                                         ; $5163: $a5
    add c                                         ; $5164: $81
    sbc [hl]                                      ; $5165: $9e
    ld e, d                                       ; $5166: $5a
    push bc                                       ; $5167: $c5
    ld d, a                                       ; $5168: $57
    halt                                          ; $5169: $76
    cp l                                          ; $516a: $bd
    dec sp                                        ; $516b: $3b
    ld a, a                                       ; $516c: $7f
    ld h, a                                       ; $516d: $67
    rst $20                                       ; $516e: $e7
    ld d, e                                       ; $516f: $53
    xor c                                         ; $5170: $a9
    add hl, sp                                    ; $5171: $39
    ld l, a                                       ; $5172: $6f
    inc a                                         ; $5173: $3c
    rst $18                                       ; $5174: $df
    add l                                         ; $5175: $85
    ld b, [hl]                                    ; $5176: $46

Call_048_5177:
    ld l, c                                       ; $5177: $69
    ld c, d                                       ; $5178: $4a
    dec [hl]                                      ; $5179: $35
    daa                                           ; $517a: $27
    db $f4                                        ; $517b: $f4
    ld d, h                                       ; $517c: $54
    ret nc                                        ; $517d: $d0

    sbc h                                         ; $517e: $9c
    ld l, c                                       ; $517f: $69
    or l                                          ; $5180: $b5
    and b                                         ; $5181: $a0
    xor e                                         ; $5182: $ab
    db $db                                        ; $5183: $db
    ld e, h                                       ; $5184: $5c
    ld h, d                                       ; $5185: $62
    ld a, c                                       ; $5186: $79
    ld [de], a                                    ; $5187: $12
    inc bc                                        ; $5188: $03
    ret                                           ; $5189: $c9


    pop af                                        ; $518a: $f1
    ld bc, $5a4f                                  ; $518b: $01 $4f $5a
    ld l, $2c                                     ; $518e: $2e $2c
    xor a                                         ; $5190: $af
    sbc b                                         ; $5191: $98
    cp [hl]                                       ; $5192: $be
    ld [hl], e                                    ; $5193: $73
    dec l                                         ; $5194: $2d
    rst $20                                       ; $5195: $e7
    ld a, e                                       ; $5196: $7b
    xor $42                                       ; $5197: $ee $42
    db $d3                                        ; $5199: $d3
    ld [hl], e                                    ; $519a: $73
    ld sp, $82fd                                  ; $519b: $31 $fd $82
    xor [hl]                                      ; $519e: $ae
    call $aca9                                    ; $519f: $cd $a9 $ac
    sub $5d                                       ; $51a2: $d6 $5d
    ld h, h                                       ; $51a4: $64
    adc c                                         ; $51a5: $89
    and l                                         ; $51a6: $a5
    db $fd                                        ; $51a7: $fd
    ld l, b                                       ; $51a8: $68
    ld l, c                                       ; $51a9: $69
    ld b, [hl]                                    ; $51aa: $46
    di                                            ; $51ab: $f3
    db $dd                                        ; $51ac: $dd
    cp c                                          ; $51ad: $b9
    ld l, [hl]                                    ; $51ae: $6e
    db $d3                                        ; $51af: $d3
    ld [hl], a                                    ; $51b0: $77
    ld l, [hl]                                    ; $51b1: $6e
    ret                                           ; $51b2: $c9


    ld h, e                                       ; $51b3: $63
    ld hl, $304c                                  ; $51b4: $21 $4c $30
    xor $e4                                       ; $51b7: $ee $e4
    adc a                                         ; $51b9: $8f
    sbc d                                         ; $51ba: $9a
    pop af                                        ; $51bb: $f1
    ld bc, $3b57                                  ; $51bc: $01 $57 $3b
    sub l                                         ; $51bf: $95
    push de                                       ; $51c0: $d5
    adc d                                         ; $51c1: $8a
    cp e                                          ; $51c2: $bb
    ld d, e                                       ; $51c3: $53
    pop bc                                        ; $51c4: $c1
    ld e, h                                       ; $51c5: $5c
    res 0, l                                      ; $51c6: $cb $85
    ld e, b                                       ; $51c8: $58
    ld e, d                                       ; $51c9: $5a
    sbc d                                         ; $51ca: $9a
    pop de                                        ; $51cb: $d1
    ld a, h                                       ; $51cc: $7c
    rst $00                                       ; $51cd: $c7
    sbc a                                         ; $51ce: $9f
    sbc d                                         ; $51cf: $9a
    ld [hl], e                                    ; $51d0: $73
    dec l                                         ; $51d1: $2d
    rst $30                                       ; $51d2: $f7
    inc e                                         ; $51d3: $1c
    and c                                         ; $51d4: $a1
    ld c, b                                       ; $51d5: $48
    db $f4                                        ; $51d6: $f4
    sbc e                                         ; $51d7: $9b

Jump_048_51d8:
    cp $d3                                        ; $51d8: $fe $d3
    ld d, b                                       ; $51da: $50
    call $9b45                                    ; $51db: $cd $45 $9b
    rst $00                                       ; $51de: $c7
    ld c, [hl]                                    ; $51df: $4e
    jr z, jr_048_5261                             ; $51e0: $28 $7f

    or a                                          ; $51e2: $b7
    db $e4                                        ; $51e3: $e4
    dec sp                                        ; $51e4: $3b
    ld e, a                                       ; $51e5: $5f
    add a                                         ; $51e6: $87
    ld h, [hl]                                    ; $51e7: $66
    sub [hl]                                      ; $51e8: $96
    dec bc                                        ; $51e9: $0b
    sra e                                         ; $51ea: $cb $2b
    and [hl]                                      ; $51ec: $a6
    rst $28                                       ; $51ed: $ef
    ld e, h                                       ; $51ee: $5c
    set 7, c                                      ; $51ef: $cb $f9
    ld l, $34                                     ; $51f1: $2e $34
    dec e                                         ; $51f3: $1d
    rra                                           ; $51f4: $1f
    rst $10                                       ; $51f5: $d7
    db $e4                                        ; $51f6: $e4
    jp nz, $030a                                  ; $51f7: $c2 $0a $03

    dec c                                         ; $51fa: $0d
    rst $38                                       ; $51fb: $ff
    daa                                           ; $51fc: $27
    ccf                                           ; $51fd: $3f
    ld l, a                                       ; $51fe: $6f
    cp h                                          ; $51ff: $bc
    jp nc, Jump_048_72cc                          ; $5200: $d2 $cc $72

    cp [hl]                                       ; $5203: $be
    ei                                            ; $5204: $fb
    ld e, a                                       ; $5205: $5f
    or c                                          ; $5206: $b1
    or h                                          ; $5207: $b4
    db $e4                                        ; $5208: $e4
    cp c                                          ; $5209: $b9
    sub [hl]                                      ; $520a: $96
    di                                            ; $520b: $f3
    dec a                                         ; $520c: $3d
    ld [hl], a                                    ; $520d: $77
    and c                                         ; $520e: $a1
    jp hl                                         ; $520f: $e9


    or l                                          ; $5210: $b5
    add hl, sp                                    ; $5211: $39
    ld sp, hl                                     ; $5212: $f9
    adc c                                         ; $5213: $89
    ld c, e                                       ; $5214: $4b
    dec e                                         ; $5215: $1d
    ld a, l                                       ; $5216: $7d
    add a                                         ; $5217: $87
    dec sp                                        ; $5218: $3b
    ld d, h                                       ; $5219: $54
    ld c, e                                       ; $521a: $4b
    inc sp                                        ; $521b: $33
    sbc d                                         ; $521c: $9a
    rst $28                                       ; $521d: $ef
    adc $55                                       ; $521e: $ce $55
    cp [hl]                                       ; $5220: $be
    ld [hl], e                                    ; $5221: $73
    ld c, e                                       ; $5222: $4b
    ld e, $0b                                     ; $5223: $1e $0b
    ld h, c                                       ; $5225: $61
    add d                                         ; $5226: $82
    ld hl, sp+$00                                 ; $5227: $f8 $00
    ld d, a                                       ; $5229: $57
    dec sp                                        ; $522a: $3b
    dec b                                         ; $522b: $05
    ld h, c                                       ; $522c: $61
    ld b, c                                       ; $522d: $41
    push af                                       ; $522e: $f5
    jp nc, $f14c                                  ; $522f: $d2 $4c $f1

    ld a, h                                       ; $5232: $7c
    rst $20                                       ; $5233: $e7
    db $eb                                        ; $5234: $eb
    ret nc                                        ; $5235: $d0

    inc a                                         ; $5236: $3c
    halt                                          ; $5237: $76
    ld l, c                                       ; $5238: $69
    ld b, [hl]                                    ; $5239: $46
    di                                            ; $523a: $f3
    db $dd                                        ; $523b: $dd
    add hl, de                                    ; $523c: $19
    dec hl                                        ; $523d: $2b
    sbc e                                         ; $523e: $9b
    jp nz, $982f                                  ; $523f: $c2 $2f $98

    ld l, $7a                                     ; $5242: $2e $7a
    cp [hl]                                       ; $5244: $be
    sbc b                                         ; $5245: $98
    ld b, b                                       ; $5246: $40
    ld c, l                                       ; $5247: $4d
    ret nz                                        ; $5248: $c0

    dec bc                                        ; $5249: $0b
    cp d                                          ; $524a: $ba
    ld [de], a                                    ; $524b: $12
    ld l, b                                       ; $524c: $68
    xor d                                         ; $524d: $aa
    ld e, c                                       ; $524e: $59
    ld a, [$8a92]                                 ; $524f: $fa $92 $8a
    rrca                                          ; $5252: $0f
    cpl                                           ; $5253: $2f
    ld h, d                                       ; $5254: $62
    sub b                                         ; $5255: $90
    ld [hl], e                                    ; $5256: $73
    call Call_000_1697                            ; $5257: $cd $97 $16
    or [hl]                                       ; $525a: $b6
    ld [hl+], a                                   ; $525b: $22
    ld e, [hl]                                    ; $525c: $5e
    call nc, Call_000_25b9                        ; $525d: $d4 $b9 $25
    xor [hl]                                      ; $5260: $ae

jr_048_5261:
    or $f3                                        ; $5261: $f6 $f3
    add $2b                                       ; $5263: $c6 $2b
    call Call_000_21e0                            ; $5265: $cd $e0 $21
    sub a                                         ; $5268: $97
    and $3b                                       ; $5269: $e6 $3b
    dec b                                         ; $526b: $05
    ld h, c                                       ; $526c: $61
    ld b, c                                       ; $526d: $41
    push af                                       ; $526e: $f5
    jr nc, @-$17                                  ; $526f: $30 $e7

    cp e                                          ; $5271: $bb
    ldh a, [$57]                                  ; $5272: $f0 $57
    adc $b5                                       ; $5274: $ce $b5
    sbc h                                         ; $5276: $9c
    rst $28                                       ; $5277: $ef
    cp c                                          ; $5278: $b9
    dec bc                                        ; $5279: $0b
    ld c, l                                       ; $527a: $4d
    rst $28                                       ; $527b: $ef
    ld a, a                                       ; $527c: $7f
    db $e4                                        ; $527d: $e4
    or l                                          ; $527e: $b5
    add hl, sp                                    ; $527f: $39
    or a                                          ; $5280: $b7
    inc h                                         ; $5281: $24
    ld a, h                                       ; $5282: $7c
    ld [bc], a                                    ; $5283: $02
    call $fff9                                    ; $5284: $cd $f9 $ff
    add hl, bc                                    ; $5287: $09
    ld e, b                                       ; $5288: $58
    add d                                         ; $5289: $82
    sbc l                                         ; $528a: $9d
    adc l                                         ; $528b: $8d
    db $e3                                        ; $528c: $e3

jr_048_528d:
    inc bc                                        ; $528d: $03
    rst $08                                       ; $528e: $cf
    and e                                         ; $528f: $a3
    ld [c], a                                     ; $5290: $e2
    add c                                         ; $5291: $81
    ld d, [hl]                                    ; $5292: $56
    call nz, $d0fb                                ; $5293: $c4 $fb $d0
    ld a, h                                       ; $5296: $7c
    rst $08                                       ; $5297: $cf
    sbc l                                         ; $5298: $9d
    ld e, e                                       ; $5299: $5b
    ld a, [c]                                     ; $529a: $f2
    ld e, b                                       ; $529b: $58
    ld [$4c13], sp                                ; $529c: $08 $13 $4c
    ld d, a                                       ; $529f: $57
    dec c                                         ; $52a0: $0d
    ld [hl], e                                    ; $52a1: $73
    rst $08                                       ; $52a2: $cf
    ld d, l                                       ; $52a3: $55
    pop bc                                        ; $52a4: $c1
    ld b, e                                       ; $52a5: $43
    xor h                                         ; $52a6: $ac
    ld l, a                                       ; $52a7: $6f
    and d                                         ; $52a8: $a2
    sbc d                                         ; $52a9: $9a
    ld l, e                                       ; $52aa: $6b
    add hl, sp                                    ; $52ab: $39
    rst $18                                       ; $52ac: $df
    cp l                                          ; $52ad: $bd
    pop af                                        ; $52ae: $f1
    db $dd                                        ; $52af: $dd
    sub d                                         ; $52b0: $92
    ld [hl], h                                    ; $52b1: $74
    ld d, d                                       ; $52b2: $52
    ld [hl], c                                    ; $52b3: $71
    inc e                                         ; $52b4: $1c
    rst $00                                       ; $52b5: $c7
    inc sp                                        ; $52b6: $33
    xor l                                         ; $52b7: $ad
    ld d, $74                                     ; $52b8: $16 $74
    sbc $78                                       ; $52ba: $de $78
    daa                                           ; $52bc: $27
    db $e3                                        ; $52bd: $e3
    add l                                         ; $52be: $85
    jr jr_048_528d                                ; $52bf: $18 $cc

    rst $38                                       ; $52c1: $ff
    ld a, [c]                                     ; $52c2: $f2
    ld [hl], h                                    ; $52c3: $74
    dec d                                         ; $52c4: $15
    xor b                                         ; $52c5: $a8
    db $db                                        ; $52c6: $db
    call c, Call_000_3509                         ; $52c7: $dc $09 $35
    cpl                                           ; $52ca: $2f
    ld a, a                                       ; $52cb: $7f
    and e                                         ; $52cc: $a3
    ld h, [hl]                                    ; $52cd: $66
    ld a, h                                       ; $52ce: $7c
    nop                                           ; $52cf: $00
    ld l, a                                       ; $52d0: $6f
    ld a, l                                       ; $52d1: $7d
    dec c                                         ; $52d2: $0d
    sbc d                                         ; $52d3: $9a
    ld l, d                                       ; $52d4: $6a
    ld de, $3b06                                  ; $52d5: $11 $06 $3b
    sbc c                                         ; $52d8: $99
    ld e, d                                       ; $52d9: $5a
    ld e, b                                       ; $52da: $58
    sbc [hl]                                      ; $52db: $9e
    or h                                          ; $52dc: $b4
    db $e4                                        ; $52dd: $e4
    rst $38                                       ; $52de: $ff
    ld l, c                                       ; $52df: $69
    xor [hl]                                      ; $52e0: $ae
    push hl                                       ; $52e1: $e5
    sbc [hl]                                      ; $52e2: $9e
    ld b, a                                       ; $52e3: $47
    push bc                                       ; $52e4: $c5
    ld [hl], e                                    ; $52e5: $73
    jp hl                                         ; $52e6: $e9


    rla                                           ; $52e7: $17
    sub h                                         ; $52e8: $94
    or $a1                                        ; $52e9: $f6 $a1
    ld sp, hl                                     ; $52eb: $f9
    sbc [hl]                                      ; $52ec: $9e
    dec sp                                        ; $52ed: $3b
    or a                                          ; $52ee: $b7
    db $e4                                        ; $52ef: $e4
    or c                                          ; $52f0: $b1
    db $10                                        ; $52f1: $10
    ld h, $88                                     ; $52f2: $26 $88
    rst $30                                       ; $52f4: $f7
    ld a, [hl-]                                   ; $52f5: $3a
    and [hl]                                      ; $52f6: $a6
    ld d, a                                       ; $52f7: $57
    dec sp                                        ; $52f8: $3b
    ld h, e                                       ; $52f9: $63
    sub b                                         ; $52fa: $90
    di                                            ; $52fb: $f3
    rst $38                                       ; $52fc: $ff
    ei                                            ; $52fd: $fb
    add hl, bc                                    ; $52fe: $09
    call nc, $bc04                                ; $52ff: $d4 $04 $bc
    db $10                                        ; $5302: $10
    add e                                         ; $5303: $83
    sbc c                                         ; $5304: $99
    sbc $19                                       ; $5305: $de $19
    add e                                         ; $5307: $83
    sbc h                                         ; $5308: $9c
    ld c, e                                       ; $5309: $4b
    jr @+$76                                      ; $530a: $18 $74

    adc h                                         ; $530c: $8c
    add c                                         ; $530d: $81
    sbc a                                         ; $530e: $9f
    rst $38                                       ; $530f: $ff
    sbc a                                         ; $5310: $9f
    add [hl]                                      ; $5311: $86
    add hl, sp                                    ; $5312: $39
    rst $18                                       ; $5313: $df
    ld sp, hl                                     ; $5314: $f9
    rrca                                          ; $5315: $0f
    ld l, a                                       ; $5316: $6f
    ld [hl], d                                    ; $5317: $72
    ld d, e                                       ; $5318: $53
    ld e, d                                       ; $5319: $5a
    ld d, h                                       ; $531a: $54
    adc d                                         ; $531b: $8a
    rrca                                          ; $531c: $0f
    cpl                                           ; $531d: $2f
    ld b, e                                       ; $531e: $43
    di                                            ; $531f: $f3
    dec a                                         ; $5320: $3d
    ld [hl], a                                    ; $5321: $77
    ld l, [hl]                                    ; $5322: $6e
    ret                                           ; $5323: $c9


    ld h, e                                       ; $5324: $63
    ld hl, $304c                                  ; $5325: $21 $4c $30
    ld d, h                                       ; $5328: $54
    di                                            ; $5329: $f3
    db $dd                                        ; $532a: $dd
    add hl, de                                    ; $532b: $19
    dec hl                                        ; $532c: $2b
    sbc e                                         ; $532d: $9b
    jp nz, $882f                                  ; $532e: $c2 $2f $88

    ld [hl], a                                    ; $5331: $77
    ld c, l                                       ; $5332: $4d
    xor $d4                                       ; $5333: $ee $d4
    ld a, [c]                                     ; $5335: $f2
    adc $95                                       ; $5336: $ce $95
    and l                                         ; $5338: $a5
    ld a, c                                       ; $5339: $79
    db $e3                                        ; $533a: $e3
    ld b, l                                       ; $533b: $45
    and $2d                                       ; $533c: $e6 $2d
    ld [$d15e], a                                 ; $533e: $ea $5e $d1
    jr jr_048_536b                                ; $5341: $18 $28

    ld l, $5d                                     ; $5343: $2e $5d
    call z, Call_048_6e77                         ; $5345: $cc $77 $6e
    add hl, bc                                    ; $5348: $09
    jp nc, $502d                                  ; $5349: $d2 $2d $50

    ld e, h                                       ; $534c: $5c
    cp d                                          ; $534d: $ba
    ld e, b                                       ; $534e: $58
    adc b                                         ; $534f: $88
    and l                                         ; $5350: $a5
    add l                                         ; $5351: $85
    xor l                                         ; $5352: $ad
    sbc $c9                                       ; $5353: $de $c9
    ld a, b                                       ; $5355: $78
    ld [hl+], a                                   ; $5356: $22
    ld e, l                                       ; $5357: $5d
    and l                                         ; $5358: $a5
    sbc d                                         ; $5359: $9a
    ld [hl], e                                    ; $535a: $73
    dec l                                         ; $535b: $2d
    rst $20                                       ; $535c: $e7
    or c                                          ; $535d: $b1
    inc bc                                        ; $535e: $03
    call Call_048_4956                            ; $535f: $cd $56 $49
    ld [hl-], a                                   ; $5362: $32
    ld a, b                                       ; $5363: $78
    ret z                                         ; $5364: $c8

    ld [$b7ba], sp                                ; $5365: $08 $ba $b7
    ld de, $e680                                  ; $5368: $11 $80 $e6

jr_048_536b:
    xor c                                         ; $536b: $a9
    jp c, $b27b                                   ; $536c: $da $7b $b2

    sub h                                         ; $536f: $94
    inc de                                        ; $5370: $13
    ld a, d                                       ; $5371: $7a
    ld [hl-], a                                   ; $5372: $32
    inc hl                                        ; $5373: $23
    adc [hl]                                      ; $5374: $8e
    rrca                                          ; $5375: $0f
    rst $10                                       ; $5376: $d7
    ld [hl], d                                    ; $5377: $72
    cp [hl]                                       ; $5378: $be
    rst $20                                       ; $5379: $e7
    ld l, $34                                     ; $537a: $2e $34
    cp l                                          ; $537c: $bd
    inc sp                                        ; $537d: $33
    ld a, [c]                                     ; $537e: $f2
    jp c, $509c                                   ; $537f: $da $9c $50

    cp $6e                                        ; $5382: $fe $6e
    ret                                           ; $5384: $c9


    ld [hl], a                                    ; $5385: $77
    cp [hl]                                       ; $5386: $be
    ld c, $cd                                     ; $5387: $0e $cd
    ld h, e                                       ; $5389: $63
    rla                                           ; $538a: $17
    ld d, [hl]                                    ; $538b: $56
    scf                                           ; $538c: $37
    ld [hl-], a                                   ; $538d: $32
    db $d3                                        ; $538e: $d3
    ld c, e                                       ; $538f: $4b
    inc sp                                        ; $5390: $33
    sbc d                                         ; $5391: $9a
    ret nc                                        ; $5392: $d0

    xor h                                         ; $5393: $ac
    ld l, a                                       ; $5394: $6f
    ld c, [hl]                                    ; $5395: $4e
    rla                                           ; $5396: $17
    dec a                                         ; $5397: $3d
    ld e, a                                       ; $5398: $5f
    adc h                                         ; $5399: $8c
    ccf                                           ; $539a: $3f
    rrca                                          ; $539b: $0f
    ld [hl], e                                    ; $539c: $73
    cp [hl]                                       ; $539d: $be
    sub e                                         ; $539e: $93
    dec h                                         ; $539f: $25
    ld e, c                                       ; $53a0: $59
    ld d, d                                       ; $53a1: $52
    pop af                                        ; $53a2: $f1
    ld l, $2d                                     ; $53a3: $2e $2d
    dec a                                         ; $53a5: $3d
    add d                                         ; $53a6: $82
    sbc c                                         ; $53a7: $99
    ld d, [hl]                                    ; $53a8: $56
    dec bc                                        ; $53a9: $0b
    ld a, [hl-]                                   ; $53aa: $3a
    ld bc, $b483                                  ; $53ab: $01 $83 $b4
    ld [hl], c                                    ; $53ae: $71
    and a                                         ; $53af: $a7
    call Call_048_4278                            ; $53b0: $cd $78 $42
    sub e                                         ; $53b3: $93
    rst $20                                       ; $53b4: $e7

jr_048_53b5:
    cp $4f                                        ; $53b5: $fe $4f
    di                                            ; $53b7: $f3
    sbc l                                         ; $53b8: $9d
    xor [hl]                                      ; $53b9: $ae
    sbc d                                         ; $53ba: $9a
    ld l, e                                       ; $53bb: $6b
    cp c                                          ; $53bc: $b9
    rst $10                                       ; $53bd: $d7
    or e                                          ; $53be: $b3
    add l                                         ; $53bf: $85
    ld [c], a                                     ; $53c0: $e2
    inc bc                                        ; $53c1: $03
    ld c, a                                       ; $53c2: $4f
    ld l, d                                       ; $53c3: $6a
    db $dd                                        ; $53c4: $dd
    ld e, l                                       ; $53c5: $5d
    and l                                         ; $53c6: $a5
    ld a, [hl-]                                   ; $53c7: $3a
    rst $20                                       ; $53c8: $e7
    ld l, d                                       ; $53c9: $6a
    db $fd                                        ; $53ca: $fd
    and l                                         ; $53cb: $a5
    jp hl                                         ; $53cc: $e9


    and $ce                                       ; $53cd: $e6 $ce
    jr jr_048_53b5                                ; $53cf: $18 $e4

    ld a, $34                                     ; $53d1: $3e $34
    rst $18                                       ; $53d3: $df
    ld [hl], e                                    ; $53d4: $73
    rst $20                                       ; $53d5: $e7
    sub [hl]                                      ; $53d6: $96
    inc a                                         ; $53d7: $3c
    ld d, $c2                                     ; $53d8: $16 $c2
    inc b                                         ; $53da: $04
    rla                                           ; $53db: $17
    jp Jump_048_6b84                              ; $53dc: $c3 $84 $6b


    ld b, a                                       ; $53df: $47
    ld h, c                                       ; $53e0: $61
    ld b, l                                       ; $53e1: $45
    ld a, e                                       ; $53e2: $7b
    sbc $49                                       ; $53e3: $de $49
    push bc                                       ; $53e5: $c5
    ld l, e                                       ; $53e6: $6b
    xor $45                                       ; $53e7: $ee $45
    rst $20                                       ; $53e9: $e7
    adc h                                         ; $53ea: $8c
    sub l                                         ; $53eb: $95
    pop af                                        ; $53ec: $f1
    ld bc, $72d7                                  ; $53ed: $01 $d7 $72
    cp [hl]                                       ; $53f0: $be
    rst $20                                       ; $53f1: $e7
    ld l, $34                                     ; $53f2: $2e $34
    cp l                                          ; $53f4: $bd
    inc sp                                        ; $53f5: $33
    ld a, [c]                                     ; $53f6: $f2
    jp c, $509c                                   ; $53f7: $da $9c $50

    cp $6e                                        ; $53fa: $fe $6e
    ret                                           ; $53fc: $c9


    ld [hl], a                                    ; $53fd: $77
    cp [hl]                                       ; $53fe: $be
    ld c, $cd                                     ; $53ff: $0e $cd
    ld h, e                                       ; $5401: $63
    add a                                         ; $5402: $87
    add hl, sp                                    ; $5403: $39

Jump_048_5404:
    rst $18                                       ; $5404: $df
    add hl, bc                                    ; $5405: $09
    adc [hl]                                      ; $5406: $8e
    ld b, e                                       ; $5407: $43
    inc a                                         ; $5408: $3c
    rst $10                                       ; $5409: $d7
    ld [hl], d                                    ; $540a: $72
    ld c, a                                       ; $540b: $4f
    ld e, c                                       ; $540c: $59
    ld h, $26                                     ; $540d: $26 $26
    ld d, b                                       ; $540f: $50
    db $d3                                        ; $5410: $d3
    ld e, a                                       ; $5411: $5f
    sbc d                                         ; $5412: $9a
    jp hl                                         ; $5413: $e9


    add hl, sp                                    ; $5414: $39
    ret z                                         ; $5415: $c8

    ld a, [c]                                     ; $5416: $f2
    ld b, a                                       ; $5417: $47
    inc e                                         ; $5418: $1c
    rra                                           ; $5419: $1f
    ld l, a                                       ; $541a: $6f
    or a                                          ; $541b: $b7
    ld l, d                                       ; $541c: $6a
    xor $ff                                       ; $541d: $ee $ff
    ld [hl], h                                    ; $541f: $74
    ld b, [hl]                                    ; $5420: $46
    ld a, b                                       ; $5421: $78
    ret z                                         ; $5422: $c8

    ld [$5a66], sp                                ; $5423: $08 $66 $5a
    dec l                                         ; $5426: $2d
    add sp, -$26                                  ; $5427: $e8 $da
    sbc h                                         ; $5429: $9c
    ld l, [hl]                                    ; $542a: $6e
    pop bc                                        ; $542b: $c1
    db $f4                                        ; $542c: $f4
    sub a                                         ; $542d: $97
    ld h, [hl]                                    ; $542e: $66
    ld a, d                                       ; $542f: $7a
    ld [bc], a                                    ; $5430: $02
    ld h, [hl]                                    ; $5431: $66
    ld [hl], $81                                  ; $5432: $36 $81
    add hl, de                                    ; $5434: $19
    rst $00                                       ; $5435: $c7
    ld [hl], c                                    ; $5436: $71
    cp h                                          ; $5437: $bc
    and b                                         ; $5438: $a0
    dec sp                                        ; $5439: $3b
    ld a, a                                       ; $543a: $7f
    ld h, a                                       ; $543b: $67
    and a                                         ; $543c: $a7
    ld [$a9b5], a                                 ; $543d: $ea $b5 $a9
    halt                                          ; $5440: $76
    ld [hl-], a                                   ; $5441: $32
    sbc [hl]                                      ; $5442: $9e
    ret                                           ; $5443: $c9


    ld l, d                                       ; $5444: $6a
    inc b                                         ; $5445: $04
    ld l, d                                       ; $5446: $6a
    jp nc, Jump_048_6cc9                          ; $5447: $d2 $c9 $6c

    adc [hl]                                      ; $544a: $8e
    dec bc                                        ; $544b: $0b
    sbc d                                         ; $544c: $9a
    ld a, [c]                                     ; $544d: $f2
    ld b, a                                       ; $544e: $47
    call $00f8                                    ; $544f: $cd $f8 $00
    ld d, a                                       ; $5452: $57
    cp e                                          ; $5453: $bb
    or a                                          ; $5454: $b7
    ld c, d                                       ; $5455: $4a
    ld h, a                                       ; $5456: $67
    adc e                                         ; $5457: $8b
    xor d                                         ; $5458: $aa
    call $c148                                    ; $5459: $cd $48 $c1
    or l                                          ; $545c: $b5
    inc hl                                        ; $545d: $23
    call z, $9ffd                                 ; $545e: $cc $fd $9f
    or $bc                                        ; $5461: $f6 $bc
    add hl, de                                    ; $5463: $19
    ld [hl], c                                    ; $5464: $71
    ld [hl], e                                    ; $5465: $73
    xor [hl]                                      ; $5466: $ae
    push hl                                       ; $5467: $e5
    sbc [hl]                                      ; $5468: $9e
    ld a, [hl+]                                   ; $5469: $2a
    db $fd                                        ; $546a: $fd
    ld b, [hl]                                    ; $546b: $46
    cp [hl]                                       ; $546c: $be
    cp e                                          ; $546d: $bb
    xor h                                         ; $546e: $ac
    ld d, h                                       ; $546f: $54
    call $f735                                    ; $5470: $cd $35 $f7
    add $77                                       ; $5473: $c6 $77
    sbc e                                         ; $5475: $9b
    ld h, [hl]                                    ; $5476: $66
    and h                                         ; $5477: $a4
    add [hl]                                      ; $5478: $86
    ld l, d                                       ; $5479: $6a
    ld l, l                                       ; $547a: $6d
    ld c, $fc                                     ; $547b: $0e $fc
    ld a, [$d20e]                                 ; $547d: $fa $0e $d2
    sub l                                         ; $5480: $95
    ei                                            ; $5481: $fb
    pop de                                        ; $5482: $d1
    and h                                         ; $5483: $a4
    add hl, de                                    ; $5484: $19
    ld sp, $47fc                                  ; $5485: $31 $fc $47
    ld [bc], a                                    ; $5488: $02
    and [hl]                                      ; $5489: $a6
    ld sp, $cd56                                  ; $548a: $31 $56 $cd
    ld b, c                                       ; $548d: $41
    ld e, $77                                     ; $548e: $1e $77
    db $10                                        ; $5490: $10
    ld a, l                                       ; $5491: $7d
    and c                                         ; $5492: $a1
    call nc, $0f8c                                ; $5493: $d4 $8c $0f
    rst $08                                       ; $5496: $cf
    ld d, l                                       ; $5497: $55
    jr nz, jr_048_54a1                            ; $5498: $20 $07

    push hl                                       ; $549a: $e5
    ld a, h                                       ; $549b: $7c
    daa                                           ; $549c: $27
    sub h                                         ; $549d: $94
    cp a                                          ; $549e: $bf
    ld e, e                                       ; $549f: $5b
    ld a, [c]                                     ; $54a0: $f2

jr_048_54a1:
    sbc l                                         ; $54a1: $9d
    xor a                                         ; $54a2: $af
    ld b, e                                       ; $54a3: $43
    jp $ef9c                                      ; $54a4: $c3 $9c $ef


    cp $57                                        ; $54a7: $fe $57
    inc e                                         ; $54a9: $1c
    add hl, sp                                    ; $54aa: $39
    ld c, $ed                                     ; $54ab: $0e $ed
    ld b, a                                       ; $54ad: $47
    ld d, e                                       ; $54ae: $53
    ld e, c                                       ; $54af: $59
    cp l                                          ; $54b0: $bd
    inc [hl]                                      ; $54b1: $34
    and e                                         ; $54b2: $a3
    ld sp, hl                                     ; $54b3: $f9
    adc $c5                                       ; $54b4: $ce $c5
    sub d                                         ; $54b6: $92
    rst $28                                       ; $54b7: $ef
    call c, $c792                                 ; $54b8: $dc $92 $c7
    ld b, d                                       ; $54bb: $42
    sbc b                                         ; $54bc: $98
    ld h, b                                       ; $54bd: $60
    call c, $b301                                 ; $54be: $dc $01 $b3
    adc h                                         ; $54c1: $8c
    ld [hl], a                                    ; $54c2: $77
    cp l                                          ; $54c3: $bd
    sub e                                         ; $54c4: $93
    ccf                                           ; $54c5: $3f
    ld [c], a                                     ; $54c6: $e2
    add hl, sp                                    ; $54c7: $39
    ret z                                         ; $54c8: $c8

    jp $ef9c                                      ; $54c9: $c3 $9c $ef


    inc b                                         ; $54cc: $04
    rst $00                                       ; $54cd: $c7
    ld hl, $6b9e                                  ; $54ce: $21 $9e $6b
    add hl, sp                                    ; $54d1: $39
    rst $18                                       ; $54d2: $df
    sbc l                                         ; $54d3: $9d
    or c                                          ; $54d4: $b1
    or d                                          ; $54d5: $b2
    add hl, hl                                    ; $54d6: $29
    db $fc                                        ; $54d7: $fc
    add d                                         ; $54d8: $82
    adc e                                         ; $54d9: $8b
    add l                                         ; $54da: $85
    sub [hl]                                      ; $54db: $96
    ld e, $c1                                     ; $54dc: $1e $c1
    ld c, h                                       ; $54de: $4c
    xor e                                         ; $54df: $ab
    dec b                                         ; $54e0: $05
    dec e                                         ; $54e1: $1d
    add sp, -$17                                  ; $54e2: $e8 $e9
    and a                                         ; $54e4: $a7
    sbc a                                         ; $54e5: $9f
    ret nc                                        ; $54e6: $d0

    db $e4                                        ; $54e7: $e4
    ld hl, sp+$00                                 ; $54e8: $f8 $00
    ld l, a                                       ; $54ea: $6f
    and c                                         ; $54eb: $a1
    or $a5                                        ; $54ec: $f6 $a5
    cp c                                          ; $54ee: $b9
    dec h                                         ; $54ef: $25
    ld c, b                                       ; $54f0: $48
    sbc e                                         ; $54f1: $9b
    or c                                          ; $54f2: $b1
    ld [c], a                                     ; $54f3: $e2
    sbc l                                         ; $54f4: $9d
    ld de, $ce1e                                  ; $54f5: $11 $1e $ce
    inc [hl]                                      ; $54f8: $34
    ld h, e                                       ; $54f9: $63
    ldh [rBGP], a                                 ; $54fa: $e0 $47
    halt                                          ; $54fc: $76
    ld l, [hl]                                    ; $54fd: $6e
    ld a, d                                       ; $54fe: $7a
    sub l                                         ; $54ff: $95
    push de                                       ; $5500: $d5
    ld [hl], e                                    ; $5501: $73
    dec l                                         ; $5502: $2d
    rst $20                                       ; $5503: $e7
    dec sp                                        ; $5504: $3b
    and c                                         ; $5505: $a1
    ret nz                                        ; $5506: $c0

    or d                                          ; $5507: $b2
    inc bc                                        ; $5508: $03
    db $f4                                        ; $5509: $f4
    db $d3                                        ; $550a: $d3
    cpl                                           ; $550b: $2f
    call $be68                                    ; $550c: $cd $68 $be
    rst $20                                       ; $550f: $e7
    adc $2d                                       ; $5510: $ce $2d
    ld a, c                                       ; $5512: $79
    inc l                                         ; $5513: $2c
    add h                                         ; $5514: $84
    add hl, bc                                    ; $5515: $09
    ld [c], a                                     ; $5516: $e2
    ld e, l                                       ; $5517: $5d
    sub e                                         ; $5518: $93
    di                                            ; $5519: $f3
    ld c, l                                       ; $551a: $4d
    add hl, sp                                    ; $551b: $39
    ld l, a                                       ; $551c: $6f
    cp h                                          ; $551d: $bc
    jp nc, Jump_048_7730                          ; $551e: $d2 $30 $77

    add $20                                       ; $5521: $c6 $20
    daa                                           ; $5523: $27
    dec l                                         ; $5524: $2d
    ld sp, hl                                     ; $5525: $f9
    ld a, a                                       ; $5526: $7f
    jp c, Jump_048_4d17                           ; $5527: $da $17 $4d

    add sp, -$47                                  ; $552a: $e8 $b9
    sub c                                         ; $552c: $91
    inc [hl]                                      ; $552d: $34
    push bc                                       ; $552e: $c5
    ld l, e                                       ; $552f: $6b
    ld [hl], e                                    ; $5530: $73
    ld b, d                                       ; $5531: $42
    ld sp, hl                                     ; $5532: $f9
    cp e                                          ; $5533: $bb
    dec h                                         ; $5534: $25
    rst $18                                       ; $5535: $df
    ld sp, hl                                     ; $5536: $f9
    ld a, [hl-]                                   ; $5537: $3a
    or h                                          ; $5538: $b4
    db $10                                        ; $5539: $10
    ld c, e                                       ; $553a: $4b
    ld l, c                                       ; $553b: $69
    ld b, [hl]                                    ; $553c: $46
    db $fc                                        ; $553d: $fc
    cp e                                          ; $553e: $bb
    inc sp                                        ; $553f: $33
    ld [hl], d                                    ; $5540: $72
    ld a, h                                       ; $5541: $7c
    nop                                           ; $5542: $00
    ld c, a                                       ; $5543: $4f
    ld l, d                                       ; $5544: $6a
    or l                                          ; $5545: $b5
    and b                                         ; $5546: $a0
    ld d, e                                       ; $5547: $53
    ld e, c                                       ; $5548: $59
    cp l                                          ; $5549: $bd
    inc [hl]                                      ; $554a: $34
    and e                                         ; $554b: $a3
    ld sp, hl                                     ; $554c: $f9
    adc $c5                                       ; $554d: $ce $c5
    sub d                                         ; $554f: $92
    rst $28                                       ; $5550: $ef
    call c, $c792                                 ; $5551: $dc $92 $c7
    ld b, d                                       ; $5554: $42
    sbc b                                         ; $5555: $98
    ld h, b                                       ; $5556: $60
    daa                                           ; $5557: $27
    call nc, $b17c                                ; $5558: $d4 $7c $b1
    add sp, -$69                                  ; $555b: $e8 $97

jr_048_555d:
    rla                                           ; $555d: $17
    ld [hl], h                                    ; $555e: $74
    ld h, [hl]                                    ; $555f: $66
    add hl, sp                                    ; $5560: $39
    rst $18                                       ; $5561: $df
    db $fd                                        ; $5562: $fd
    xor a                                         ; $5563: $af
    ld e, b                                       ; $5564: $58
    ld e, d                                       ; $5565: $5a
    ld a, [c]                                     ; $5566: $f2
    ld e, h                                       ; $5567: $5c
    set 7, c                                      ; $5568: $cb $f9
    sbc [hl]                                      ; $556a: $9e
    cp e                                          ; $556b: $bb
    ret nc                                        ; $556c: $d0

    db $f4                                        ; $556d: $f4
    jp nc, $c68c                                  ; $556e: $d2 $8c $c6

    ld h, h                                       ; $5571: $64
    db $10                                        ; $5572: $10
    call nc, $f9dc                                ; $5573: $d4 $dc $f9
    ld d, a                                       ; $5576: $57
    ld [hl], $e3                                  ; $5577: $36 $e3
    inc bc                                        ; $5579: $03
    cpl                                           ; $557a: $2f
    ld b, e                                       ; $557b: $43
    di                                            ; $557c: $f3
    dec a                                         ; $557d: $3d
    ld [hl], a                                    ; $557e: $77
    ld l, [hl]                                    ; $557f: $6e
    ret                                           ; $5580: $c9


    ld h, e                                       ; $5581: $63
    ld hl, $304c                                  ; $5582: $21 $4c $30
    and c                                         ; $5585: $a1
    ld l, $a6                                     ; $5586: $2e $a6
    rst $20                                       ; $5588: $e7
    sbc l                                         ; $5589: $9d
    ld de, $ee1e                                  ; $558a: $11 $1e $ee
    dec l                                         ; $558d: $2d
    call nc, $a4be                                ; $558e: $d4 $be $a4
    and $fe                                       ; $5591: $e6 $fe
    ld c, a                                       ; $5593: $4f
    ld h, h                                       ; $5594: $64
    and $a5                                       ; $5595: $e6 $a5
    ld b, l                                       ; $5597: $45
    and l                                         ; $5598: $a5
    ld a, b                                       ; $5599: $78
    rst $28                                       ; $559a: $ef
    ld [hl], l                                    ; $559b: $75
    rst $20                                       ; $559c: $e7
    ld [bc], a                                    ; $559d: $02
    ret nc                                        ; $559e: $d0

    sbc h                                         ; $559f: $9c
    scf                                           ; $55a0: $37
    ld e, [hl]                                    ; $55a1: $5e
    ret nc                                        ; $55a2: $d0

    ld a, c                                       ; $55a3: $79
    inc sp                                        ; $55a4: $33
    sbc d                                         ; $55a5: $9a
    ei                                            ; $55a6: $fb
    ccf                                           ; $55a7: $3f
    dec l                                         ; $55a8: $2d
    adc l                                         ; $55a9: $8d
    ld a, [hl-]                                   ; $55aa: $3a
    or a                                          ; $55ab: $b7
    ld b, h                                       ; $55ac: $44
    and [hl]                                      ; $55ad: $a6
    inc d                                         ; $55ae: $14
    ld h, $68                                     ; $55af: $26 $68
    ld c, [hl]                                    ; $55b1: $4e
    ld a, [hl-]                                   ; $55b2: $3a
    ret                                           ; $55b3: $c9


    sub e                                         ; $55b4: $93
    ccf                                           ; $55b5: $3f
    ld l, d                                       ; $55b6: $6a
    adc [hl]                                      ; $55b7: $8e
    dec sp                                        ; $55b8: $3b
    push bc                                       ; $55b9: $c5
    ld h, [hl]                                    ; $55ba: $66
    add hl, de                                    ; $55bb: $19
    rra                                           ; $55bc: $1f

Call_048_55bd:
    rst $10                                       ; $55bd: $d7
    ld [hl], d                                    ; $55be: $72
    cp [hl]                                       ; $55bf: $be
    dec bc                                        ; $55c0: $0b
    ld a, a                                       ; $55c1: $7f
    push hl                                       ; $55c2: $e5
    adc $c8                                       ; $55c3: $ce $c8
    ld l, e                                       ; $55c5: $6b
    ld [hl], e                                    ; $55c6: $73
    xor $ff                                       ; $55c7: $ee $ff
    ld b, h                                       ; $55c9: $44
    ld h, [hl]                                    ; $55ca: $66
    ld e, [hl]                                    ; $55cb: $5e
    sbc d                                         ; $55cc: $9a
    ld [c], a                                     ; $55cd: $e2
    ld b, l                                       ; $55ce: $45
    push hl                                       ; $55cf: $e5
    add hl, hl                                    ; $55d0: $29
    ld a, b                                       ; $55d1: $78
    ld c, b                                       ; $55d2: $48
    jr jr_048_555d                                ; $55d3: $18 $88

    add h                                         ; $55d5: $84
    and $f7                                       ; $55d6: $e6 $f7
    ld [$587c], sp                                ; $55d8: $08 $7c $58
    rst $18                                       ; $55db: $df
    adc h                                         ; $55dc: $8c
    ld [hl], a                                    ; $55dd: $77
    ld c, l                                       ; $55de: $4d
    ld l, $ac                                     ; $55df: $2e $ac
    jr nc, jr_048_5652                            ; $55e1: $30 $6f

    ld b, [hl]                                    ; $55e3: $46
    ld l, e                                       ; $55e4: $6b
    ld d, e                                       ; $55e5: $53
    xor l                                         ; $55e6: $ad
    call $96c9                                    ; $55e7: $cd $c9 $96
    ld d, $56                                     ; $55ea: $16 $56
    ld [hl], a                                    ; $55ec: $77
    ld l, $b5                                     ; $55ed: $2e $b5
    sub c                                         ; $55ef: $91
    rst $28                                       ; $55f0: $ef
    ld b, b                                       ; $55f1: $40
    or l                                          ; $55f2: $b5
    add e                                         ; $55f3: $83
    cp [hl]                                       ; $55f4: $be
    add hl, sp                                    ; $55f5: $39
    rlca                                          ; $55f6: $07
    ld a, c                                       ; $55f7: $79
    pop hl                                        ; $55f8: $e1
    and a                                         ; $55f9: $a7
    and $e4                                       ; $55fa: $e6 $e4
    adc a                                         ; $55fc: $8f
    sbc d                                         ; $55fd: $9a
    pop af                                        ; $55fe: $f1
    ld bc, $e4d7                                  ; $55ff: $01 $d7 $e4
    and h                                         ; $5602: $a4
    push hl                                       ; $5603: $e5
    ld [de], a                                    ; $5604: $12
    srl e                                         ; $5605: $cb $3b
    add hl, de                                    ; $5607: $19
    inc a                                         ; $5608: $3c
    db $e4                                        ; $5609: $e4
    and $f8                                       ; $560a: $e6 $f8
    or e                                          ; $560c: $b3
    scf                                           ; $560d: $37
    ld e, $ca                                     ; $560e: $1e $ca
    jp hl                                         ; $5610: $e9


    xor d                                         ; $5611: $aa
    ld c, c                                       ; $5612: $49
    jp nz, $0c00                                  ; $5613: $c2 $00 $0c

    ld [hl], e                                    ; $5616: $73
    and [hl]                                      ; $5617: $a6
    sbc b                                         ; $5618: $98
    ld a, [hl]                                    ; $5619: $7e
    cp $08                                        ; $561a: $fe $08
    dec de                                        ; $561c: $1b
    rst $28                                       ; $561d: $ef
    ld a, [hl+]                                   ; $561e: $2a
    halt                                          ; $561f: $76
    cp [hl]                                       ; $5620: $be
    ld c, $cd                                     ; $5621: $0e $cd

jr_048_5623:
    sbc e                                         ; $5623: $9b
    pop de                                        ; $5624: $d1
    jp nc, $e68c                                  ; $5625: $d2 $8c $e6

    dec sp                                        ; $5628: $3b
    ld d, e                                       ; $5629: $53
    ld c, h                                       ; $562a: $4c
    ccf                                           ; $562b: $3f
    ld a, a                                       ; $562c: $7f
    add h                                         ; $562d: $84
    push hl                                       ; $562e: $e5
    ld c, a                                       ; $562f: $4f
    call $b19d                                    ; $5630: $cd $9d $b1
    cp h                                          ; $5633: $bc
    jp nc, Jump_048_7fce                          ; $5634: $d2 $ce $7f

    ld l, [hl]                                    ; $5637: $6e
    ld c, c                                       ; $5638: $49
    rla                                           ; $5639: $17
    ld a, l                                       ; $563a: $7d
    dec [hl]                                      ; $563b: $35
    ld b, $72                                     ; $563c: $06 $72
    ld c, $72                                     ; $563e: $0e $72
    inc e                                         ; $5640: $1c
    rst $00                                       ; $5641: $c7
    rlca                                          ; $5642: $07
    ld d, a                                       ; $5643: $57
    adc l                                         ; $5644: $8d
    rlca                                          ; $5645: $07
    ld a, l                                       ; $5646: $7d
    ld h, d                                       ; $5647: $62
    ld a, [hl+]                                   ; $5648: $2a
    rst $28                                       ; $5649: $ef
    ld b, e                                       ; $564a: $43
    di                                            ; $564b: $f3
    ld e, l                                       ; $564c: $5d
    cp $4f                                        ; $564d: $fe $4f
    ld a, $72                                     ; $564f: $3e $72
    inc e                                         ; $5651: $1c

jr_048_5652:
    adc d                                         ; $5652: $8a
    db $e3                                        ; $5653: $e3
    ld a, b                                       ; $5654: $78
    jr z, jr_048_566e                             ; $5655: $28 $17

    cp $4f                                        ; $5657: $fe $4f
    dec bc                                        ; $5659: $0b
    bit 2, e                                      ; $565a: $cb $53
    ccf                                           ; $565c: $3f
    ld d, d                                       ; $565d: $52
    adc e                                         ; $565e: $8b
    ld a, [hl]                                    ; $565f: $7e
    inc b                                         ; $5660: $04
    ld d, l                                       ; $5661: $55
    scf                                           ; $5662: $37
    db $e3                                        ; $5663: $e3
    inc bc                                        ; $5664: $03
    rst $10                                       ; $5665: $d7
    db $e4                                        ; $5666: $e4
    inc h                                         ; $5667: $24
    ld b, $72                                     ; $5668: $06 $72
    ld d, c                                       ; $566a: $51
    and a                                         ; $566b: $a7
    ldh [$61], a                                  ; $566c: $e0 $61

jr_048_566e:
    xor e                                         ; $566e: $ab
    add a                                         ; $566f: $87
    add hl, sp                                    ; $5670: $39
    adc a                                         ; $5671: $8f
    dec e                                         ; $5672: $1d
    and b                                         ; $5673: $a0
    rst $08                                       ; $5674: $cf
    sbc l                                         ; $5675: $9d
    inc h                                         ; $5676: $24
    ld d, h                                       ; $5677: $54
    ld l, h                                       ; $5678: $6c
    ld e, d                                       ; $5679: $5a
    scf                                           ; $567a: $37
    daa                                           ; $567b: $27
    ld a, h                                       ; $567c: $7c
    ld a, l                                       ; $567d: $7d
    or c                                          ; $567e: $b1
    ret z                                         ; $567f: $c8

    adc h                                         ; $5680: $8c
    and $3b                                       ; $5681: $e6 $3b
    cp $95                                        ; $5683: $fe $95
    ccf                                           ; $5685: $3f
    ld d, d                                       ; $5686: $52
    cp h                                          ; $5687: $bc
    inc sp                                        ; $5688: $33
    halt                                          ; $5689: $76
    jr z, jr_048_5623                             ; $568a: $28 $97

    rst $38                                       ; $568c: $ff
    inc hl                                        ; $568d: $23
    rst $00                                       ; $568e: $c7
    rlca                                          ; $568f: $07
    rst $10                                       ; $5690: $d7
    db $e4                                        ; $5691: $e4
    jp nz, $a1ff                                  ; $5692: $c2 $ff $a1

    ld a, c                                       ; $5695: $79
    db $e3                                        ; $5696: $e3
    dec b                                         ; $5697: $05
    adc [hl]                                      ; $5698: $8e

Call_048_5699:
Jump_048_5699:
    sub $d8                                       ; $5699: $d6 $d8
    add c                                         ; $569b: $81
    and $e7                                       ; $569c: $e6 $e7
    and $c2                                       ; $569e: $e6 $c2
    ld a, [bc]                                    ; $56a0: $0a
    ld b, d                                       ; $56a1: $42
    ld [hl], e                                    ; $56a2: $73
    xor [hl]                                      ; $56a3: $ae
    push hl                                       ; $56a4: $e5
    jp nz, Jump_048_4ef2                          ; $56a5: $c2 $f2 $4e

    push de                                       ; $56a8: $d5
    ld a, [c]                                     ; $56a9: $f2
    ld b, a                                       ; $56aa: $47
    adc d                                         ; $56ab: $8a
    dec b                                         ; $56ac: $05
    ld c, e                                       ; $56ad: $4b
    ld e, c                                       ; $56ae: $59
    adc [hl]                                      ; $56af: $8e
    rst $30                                       ; $56b0: $f7
    sbc $af                                       ; $56b1: $de $af
    ld e, h                                       ; $56b3: $5c
    ld a, [hl-]                                   ; $56b4: $3a
    ld d, e                                       ; $56b5: $53
    ld e, c                                       ; $56b6: $59
    cp l                                          ; $56b7: $bd
    ret nz                                        ; $56b8: $c0

    pop de                                        ; $56b9: $d1
    ld a, [de]                                    ; $56ba: $1a
    dec sp                                        ; $56bb: $3b
    inc de                                        ; $56bc: $13
    ld sp, hl                                     ; $56bd: $f9
    ld l, d                                       ; $56be: $6a
    ld c, h                                       ; $56bf: $4c
    or b                                          ; $56c0: $b0
    rrca                                          ; $56c1: $0f
    adc c                                         ; $56c2: $89
    ccf                                           ; $56c3: $3f
    nop                                           ; $56c4: $00
    ld l, a                                       ; $56c5: $6f
    sbc e                                         ; $56c6: $9b
    pop de                                        ; $56c7: $d1
    ld e, h                                       ; $56c8: $5c
    ld c, h                                       ; $56c9: $4c
    ccf                                           ; $56ca: $3f
    sub h                                         ; $56cb: $94
    ld a, e                                       ; $56cc: $7b
    adc [hl]                                      ; $56cd: $8e
    ld d, b                                       ; $56ce: $50
    inc h                                         ; $56cf: $24
    ld a, [$ff4d]                                 ; $56d0: $fa $4d $ff
    jp hl                                         ; $56d3: $e9


    jp z, Jump_000_2f01                           ; $56d4: $ca $01 $2f

    add hl, sp                                    ; $56d7: $39
    inc sp                                        ; $56d8: $33
    cp l                                          ; $56d9: $bd
    rrca                                          ; $56da: $0f
    call $da77                                    ; $56db: $cd $77 $da
    adc h                                         ; $56de: $8c
    dec d                                         ; $56df: $15
    ld [hl], a                                    ; $56e0: $77
    sub b                                         ; $56e1: $90
    ld [hl], $63                                  ; $56e2: $36 $63
    ld [hl], l                                    ; $56e4: $75
    ld sp, $6ad3                                  ; $56e5: $31 $d3 $6a
    jr z, jr_048_5701                             ; $56e8: $28 $17

    ld [hl], l                                    ; $56ea: $75
    adc c                                         ; $56eb: $89
    push hl                                       ; $56ec: $e5
    cp c                                          ; $56ed: $b9
    dec h                                         ; $56ee: $25
    add b                                         ; $56ef: $80
    ld a, [hl+]                                   ; $56f0: $2a
    ld a, $00                                     ; $56f1: $3e $00
    xor a                                         ; $56f3: $af
    ld a, a                                       ; $56f4: $7f
    ld [hl+], a                                   ; $56f5: $22
    ld sp, $4b17                                  ; $56f6: $31 $17 $4b
    inc l                                         ; $56f9: $2c
    cpl                                           ; $56fa: $2f
    jp nz, Jump_048_6720                          ; $56fb: $c2 $20 $67

    ld [hl+], a                                   ; $56fe: $22
    ld e, a                                       ; $56ff: $5f
    adc l                                         ; $5700: $8d

jr_048_5701:
    add hl, bc                                    ; $5701: $09
    ld [c], a                                     ; $5702: $e2
    inc bc                                        ; $5703: $03
    xor a                                         ; $5704: $af
    ld a, a                                       ; $5705: $7f
    ld [hl+], a                                   ; $5706: $22
    ld sp, $e883                                  ; $5707: $31 $83 $e8
    adc e                                         ; $570a: $8b
    xor d                                         ; $570b: $aa
    call nc, $8ba7                                ; $570c: $d4 $a7 $8b
    ld b, l                                       ; $570f: $45
    ld h, [hl]                                    ; $5710: $66
    or h                                          ; $5711: $b4
    sub e                                         ; $5712: $93
    add hl, de                                    ; $5713: $19
    call $f4c5                                    ; $5714: $cd $c5 $f4
    ld b, e                                       ; $5717: $43
    cp c                                          ; $5718: $b9
    rst $20                                       ; $5719: $e7
    ld [$a245], sp                                ; $571a: $08 $45 $a2
    rst $18                                       ; $571d: $df
    db $f4                                        ; $571e: $f4
    sbc a                                         ; $571f: $9f
    xor [hl]                                      ; $5720: $ae
    inc e                                         ; $5721: $1c
    rst $10                                       ; $5722: $d7
    db $e4                                        ; $5723: $e4
    ret z                                         ; $5724: $c8

    call z, $e82f                                 ; $5725: $cc $2f $e8
    call z, Call_048_4172                         ; $5728: $cc $72 $41
    ld h, a                                       ; $572b: $67
    ld [hl+], a                                   ; $572c: $22
    ld e, a                                       ; $572d: $5f
    adc l                                         ; $572e: $8d
    add hl, bc                                    ; $572f: $09
    add $9d                                       ; $5730: $c6 $9d
    adc e                                         ; $5732: $8b
    jp hl                                         ; $5733: $e9


    sbc e                                         ; $5734: $9b
    ld [hl], e                                    ; $5735: $73
    rst $38                                       ; $5736: $ff
    daa                                           ; $5737: $27
    ld l, a                                       ; $5738: $6f
    cp h                                          ; $5739: $bc
    or b                                          ; $573a: $b0
    inc a                                         ; $573b: $3c
    adc l                                         ; $573c: $8d
    ldh a, [$90]                                  ; $573d: $f0 $90
    rst $20                                       ; $573f: $e7
    jr nz, jr_048_5745                            ; $5740: $20 $03

    inc sp                                        ; $5742: $33
    cp [hl]                                       ; $5743: $be

jr_048_5744:
    ret c                                         ; $5744: $d8

jr_048_5745:
    dec hl                                        ; $5745: $2b
    sbc a                                         ; $5746: $9f
    cp c                                          ; $5747: $b9
    inc d                                         ; $5748: $14
    rra                                           ; $5749: $1f
    rst $10                                       ; $574a: $d7
    db $e4                                        ; $574b: $e4
    ld c, [hl]                                    ; $574c: $4e
    dec l                                         ; $574d: $2d
    cpl                                           ; $574e: $2f
    inc l                                         ; $574f: $2c
    cpl                                           ; $5750: $2f
    or c                                          ; $5751: $b1
    inc e                                         ; $5752: $1c
    rra                                           ; $5753: $1f
    ld d, a                                       ; $5754: $57
    adc l                                         ; $5755: $8d
    daa                                           ; $5756: $27
    dec l                                         ; $5757: $2d
    rst $30                                       ; $5758: $f7
    db $dd                                        ; $5759: $dd
    sub d                                         ; $575a: $92
    jp hl                                         ; $575b: $e9


    sbc l                                         ; $575c: $9d
    ld sp, $f8c8                                  ; $575d: $31 $c8 $f8
    nop                                           ; $5760: $00
    cpl                                           ; $5761: $2f
    sbc d                                         ; $5762: $9a
    ld [hl], e                                    ; $5763: $73
    adc d                                         ; $5764: $8a
    rrca                                          ; $5765: $0f
    ld l, a                                       ; $5766: $6f
    sbc e                                         ; $5767: $9b
    add c                                         ; $5768: $81
    add l                                         ; $5769: $85
    push hl                                       ; $576a: $e5
    dec h                                         ; $576b: $25
    sub [hl]                                      ; $576c: $96
    rst $30                                       ; $576d: $f7
    and e                                         ; $576e: $a3
    ld a, c                                       ; $576f: $79
    db $ec                                        ; $5770: $ec
    adc h                                         ; $5771: $8c
    and d                                         ; $5772: $a2
    xor $3b                                       ; $5773: $ee $3b
    cp [hl]                                       ; $5775: $be
    adc e                                         ; $5776: $8b
    ld [$77d2], a                                 ; $5777: $ea $d2 $77
    ld c, [hl]                                    ; $577a: $4e
    ld a, e                                       ; $577b: $7b
    jp hl                                         ; $577c: $e9


    sub e                                         ; $577d: $93
    ld d, h                                       ; $577e: $54
    db $d3                                        ; $577f: $d3
    and [hl]                                      ; $5780: $a6
    jr jr_048_5744                                ; $5781: $18 $c1

    cp b                                          ; $5783: $b8
    ld [hl], e                                    ; $5784: $73
    ld c, l                                       ; $5785: $4d
    db $eb                                        ; $5786: $eb
    and [hl]                                      ; $5787: $a6
    ld hl, sp+$5d                                 ; $5788: $f8 $5d
    sub e                                         ; $578a: $93
    dec bc                                        ; $578b: $0b
    cp a                                          ; $578c: $bf
    or e                                          ; $578d: $b3
    ret nz                                        ; $578e: $c0

    pop de                                        ; $578f: $d1
    ld a, [de]                                    ; $5790: $1a
    dec sp                                        ; $5791: $3b
    db $d3                                        ; $5792: $d3
    cp d                                          ; $5793: $ba
    sub c                                         ; $5794: $91
    sbc c                                         ; $5795: $99
    sbc [hl]                                      ; $5796: $9e
    add d                                         ; $5797: $82
    add a                                         ; $5798: $87
    dec h                                         ; $5799: $25
    ld l, b                                       ; $579a: $68
    sbc b                                         ; $579b: $98
    di                                            ; $579c: $f3
    dec e                                         ; $579d: $1d
    jr nc, jr_048_580e                            ; $579e: $30 $6e

    adc d                                         ; $57a0: $8a
    ccf                                           ; $57a1: $3f
    nop                                           ; $57a2: $00
    rst $10                                       ; $57a3: $d7
    db $e4                                        ; $57a4: $e4
    ld c, [hl]                                    ; $57a5: $4e
    dec l                                         ; $57a6: $2d
    cpl                                           ; $57a7: $2f
    inc l                                         ; $57a8: $2c
    cpl                                           ; $57a9: $2f
    or c                                          ; $57aa: $b1
    cp h                                          ; $57ab: $bc
    ld [hl], e                                    ; $57ac: $73
    ld h, l                                       ; $57ad: $65
    add hl, hl                                    ; $57ae: $29
    adc [hl]                                      ; $57af: $8e
    db $e3                                        ; $57b0: $e3
    sbc l                                         ; $57b1: $9d
    adc h                                         ; $57b2: $8c
    rla                                           ; $57b3: $17
    ld a, [hl]                                    ; $57b4: $7e
    ld d, b                                       ; $57b5: $50
    ld a, [de]                                    ; $57b6: $1a
    and $b0                                       ; $57b7: $e6 $b0
    cp [hl]                                       ; $57b9: $be
    inc [hl]                                      ; $57ba: $34
    ld d, b                                       ; $57bb: $50
    rst $10                                       ; $57bc: $d7
    ld [hl], h                                    ; $57bd: $74
    inc e                                         ; $57be: $1c
    rst $00                                       ; $57bf: $c7
    pop af                                        ; $57c0: $f1
    ld bc, $ff2f                                  ; $57c1: $01 $2f $ff
    ld a, a                                       ; $57c4: $7f
    ld sp, $8ba9                                  ; $57c5: $31 $a9 $8b
    reti                                          ; $57c8: $d9


    or l                                          ; $57c9: $b5
    and h                                         ; $57ca: $a4
    cp b                                          ; $57cb: $b8
    add c                                         ; $57cc: $81
    add hl, de                                    ; $57cd: $19
    ld [hl], c                                    ; $57ce: $71
    ld d, b                                       ; $57cf: $50
    ld [hl], l                                    ; $57d0: $75
    or c                                          ; $57d1: $b1
    sub e                                         ; $57d2: $93
    add hl, de                                    ; $57d3: $19
    dec l                                         ; $57d4: $2d
    add sp, -$02                                  ; $57d5: $e8 $fe
    sub a                                         ; $57d7: $97
    sub e                                         ; $57d8: $93
    jr jr_048_5823                                ; $57d9: $18 $48

    adc [hl]                                      ; $57db: $8e
    rrca                                          ; $57dc: $0f
    rst $08                                       ; $57dd: $cf
    push de                                       ; $57de: $d5
    sub e                                         ; $57df: $93
    add hl, de                                    ; $57e0: $19
    ld e, b                                       ; $57e1: $58
    ret nc                                        ; $57e2: $d0

    adc e                                         ; $57e3: $8b
    dec a                                         ; $57e4: $3d
    ei                                            ; $57e5: $fb
    ld hl, $71a8                                  ; $57e6: $21 $a8 $71
    inc e                                         ; $57e9: $1c
    rst $28                                       ; $57ea: $ef
    adc e                                         ; $57eb: $8b
    ld d, $fd                                     ; $57ec: $16 $fd
    ld a, [c]                                     ; $57ee: $f2
    ld d, b                                       ; $57ef: $50
    ld l, $2c                                     ; $57f0: $2e $2c
    adc a                                         ; $57f2: $8f
    dec bc                                        ; $57f3: $0b
    sbc d                                         ; $57f4: $9a
    di                                            ; $57f5: $f3
    db $dd                                        ; $57f6: $dd
    ld d, e                                       ; $57f7: $53
    ld a, [$97d7]                                 ; $57f8: $fa $d7 $97
    db $10                                        ; $57fb: $10
    ld [hl], h                                    ; $57fc: $74
    ld c, a                                       ; $57fd: $4f
    add hl, de                                    ; $57fe: $19
    db $fd                                        ; $57ff: $fd
    call c, Call_000_00b9                         ; $5800: $dc $b9 $00
    inc [hl]                                      ; $5803: $34
    xor a                                         ; $5804: $af
    inc e                                         ; $5805: $1c
    rst $08                                       ; $5806: $cf
    push af                                       ; $5807: $f5

jr_048_5808:
    db $f4                                        ; $5808: $f4
    ld a, a                                       ; $5809: $7f
    xor [hl]                                      ; $580a: $ae
    call $2d09                                    ; $580b: $cd $09 $2d

jr_048_580e:
    rlca                                          ; $580e: $07

jr_048_580f:
    dec e                                         ; $580f: $1d
    ld b, h                                       ; $5810: $44
    push hl                                       ; $5811: $e5
    sbc c                                         ; $5812: $99
    push hl                                       ; $5813: $e5
    jp nz, $22f2                                  ; $5814: $c2 $f2 $22

    sub e                                         ; $5817: $93
    call $8e38                                    ; $5818: $cd $38 $8e
    rrca                                          ; $581b: $0f
    ld l, a                                       ; $581c: $6f
    ld h, e                                       ; $581d: $63
    ld [hl], a                                    ; $581e: $77
    ld [hl-], a                                   ; $581f: $32
    dec [hl]                                      ; $5820: $35
    ld l, a                                       ; $5821: $6f
    ld a, h                                       ; $5822: $7c

jr_048_5823:
    push hl                                       ; $5823: $e5
    nop                                           ; $5824: $00
    rst $08                                       ; $5825: $cf
    ld a, [hl]                                    ; $5826: $7e
    ld [$7cea], sp                                ; $5827: $08 $ea $7c
    daa                                           ; $582a: $27
    push af                                       ; $582b: $f5
    add a                                         ; $582c: $87
    ld b, b                                       ; $582d: $40
    xor e                                         ; $582e: $ab
    jr c, jr_048_580f                             ; $582f: $38 $de

    adc e                                         ; $5831: $8b
    push hl                                       ; $5832: $e5
    add l                                         ; $5833: $85
    adc l                                         ; $5834: $8d
    ld d, $fd                                     ; $5835: $16 $fd
    ld a, [c]                                     ; $5837: $f2
    add d                                         ; $5838: $82
    xor $43                                       ; $5839: $ee $43
    sub b                                         ; $583b: $90
    add hl, hl                                    ; $583c: $29
    push de                                       ; $583d: $d5
    inc d                                         ; $583e: $14
    cp a                                          ; $583f: $bf
    xor e                                         ; $5840: $ab
    db $dd                                        ; $5841: $dd
    ld d, e                                       ; $5842: $53
    ld a, [$97d7]                                 ; $5843: $fa $d7 $97
    db $10                                        ; $5846: $10
    ld [hl], h                                    ; $5847: $74
    ld c, a                                       ; $5848: $4f
    add hl, de                                    ; $5849: $19
    db $fd                                        ; $584a: $fd
    cp h                                          ; $584b: $bc
    ld e, b                                       ; $584c: $58
    ld e, b                                       ; $584d: $58
    sbc [hl]                                      ; $584e: $9e
    add d                                         ; $584f: $82
    cp $97                                        ; $5850: $fe $97
    ld [hl], e                                    ; $5852: $73
    dec l                                         ; $5853: $2d
    rst $30                                       ; $5854: $f7
    sbc $c9                                       ; $5855: $de $c9
    cp h                                          ; $5857: $bc
    cpl                                           ; $5858: $2f
    ld hl, $bc3c                                  ; $5859: $21 $3c $bc
    jr jr_048_5808                                ; $585c: $18 $aa

    ld sp, hl                                     ; $585e: $f9
    xor [hl]                                      ; $585f: $ae
    adc c                                         ; $5860: $89
    and b                                         ; $5861: $a0
    di                                            ; $5862: $f3
    ret c                                         ; $5863: $d8

    add l                                         ; $5864: $85
    adc l                                         ; $5865: $8d
    add [hl]                                      ; $5866: $86
    add hl, sp                                    ; $5867: $39
    rst $18                                       ; $5868: $df
    add l                                         ; $5869: $85
    sub [hl]                                      ; $586a: $96
    ld a, [hl]                                    ; $586b: $7e
    ld h, c                                       ; $586c: $61
    dec hl                                        ; $586d: $2b
    ld [c], a                                     ; $586e: $e2
    ld hl, sp+$00                                 ; $586f: $f8 $00
    rst $28                                       ; $5871: $ef
    db $fd                                        ; $5872: $fd
    jp z, Jump_000_19a5                           ; $5873: $ca $a5 $19

    xor l                                         ; $5876: $ad
    call $9479                                    ; $5877: $cd $79 $94
    or d                                          ; $587a: $b2
    di                                            ; $587b: $f3
    ld d, $75                                     ; $587c: $16 $75
    sbc b                                         ; $587e: $98
    ld l, e                                       ; $587f: $6b
    ld [hl], e                                    ; $5880: $73
    db $f4                                        ; $5881: $f4
    rst $08                                       ; $5882: $cf
    ld e, l                                       ; $5883: $5d
    ldh [$90], a                                  ; $5884: $e0 $90
    adc h                                         ; $5886: $8c
    db $e3                                        ; $5887: $e3
    ld a, b                                       ; $5888: $78
    sbc $78                                       ; $5889: $de $78
    xor b                                         ; $588b: $a8
    ld h, [hl]                                    ; $588c: $66
    ld e, d                                       ; $588d: $5a
    ld d, a                                       ; $588e: $57
    db $ed                                        ; $588f: $ed
    ld h, h                                       ; $5890: $64
    inc a                                         ; $5891: $3c
    sub h                                         ; $5892: $94
    dec sp                                        ; $5893: $3b
    or l                                          ; $5894: $b5
    inc e                                         ; $5895: $1c
    rra                                           ; $5896: $1f
    xor a                                         ; $5897: $af
    jp $0c43                                      ; $5898: $c3 $43 $0c


    sub d                                         ; $589b: $92
    add a                                         ; $589c: $87
    cp c                                          ; $589d: $b9
    ld [hl], $c7                                  ; $589e: $36 $c7
    sbc a                                         ; $58a0: $9f
    sbc d                                         ; $58a1: $9a
    db $e3                                        ; $58a2: $e3
    xor $8c                                       ; $58a3: $ee $8c
    call z, Call_048_78cd                         ; $58a5: $cc $cd $78
    cpl                                           ; $58a8: $2f
    and d                                         ; $58a9: $a2
    ld d, d                                       ; $58aa: $52
    ldh a, [rNR10]                                ; $58ab: $f0 $10
    sbc e                                         ; $58ad: $9b
    adc e                                         ; $58ae: $8b
    ld a, [hl]                                    ; $58af: $7e
    ld a, c                                       ; $58b0: $79
    ld b, c                                       ; $58b1: $41
    rst $30                                       ; $58b2: $f7
    and c                                         ; $58b3: $a1
    or l                                          ; $58b4: $b5
    cp c                                          ; $58b5: $b9
    ldh a, [$83]                                  ; $58b6: $f0 $83
    ld d, d                                       ; $58b8: $52
    rst $20                                       ; $58b9: $e7
    sub [hl]                                      ; $58ba: $96
    inc a                                         ; $58bb: $3c

Call_048_58bc:
    ld d, $c2                                     ; $58bc: $16 $c2
    inc b                                         ; $58be: $04
    dec sp                                        ; $58bf: $3b
    rst $38                                       ; $58c0: $ff
    jp z, Jump_048_7c66                           ; $58c1: $ca $66 $7c

    nop                                           ; $58c4: $00
    cpl                                           ; $58c5: $2f
    ld b, a                                       ; $58c6: $47
    pop hl                                        ; $58c7: $e1
    rst $38                                       ; $58c8: $ff
    ldh [$62], a                                  ; $58c9: $e0 $62
    adc c                                         ; $58cb: $89
    push hl                                       ; $58cc: $e5
    db $fd                                        ; $58cd: $fd
    ld c, b                                       ; $58ce: $48
    sbc e                                         ; $58cf: $9b
    add c                                         ; $58d0: $81
    ld hl, sp+$00                                 ; $58d1: $f8 $00
    rst $10                                       ; $58d3: $d7
    db $e4                                        ; $58d4: $e4
    jp nz, $030a                                  ; $58d5: $c2 $0a $03

    dec c                                         ; $58d8: $0d
    rst $38                                       ; $58d9: $ff
    daa                                           ; $58da: $27
    ccf                                           ; $58db: $3f
    ld l, a                                       ; $58dc: $6f
    cp h                                          ; $58dd: $bc
    or b                                          ; $58de: $b0
    inc a                                         ; $58df: $3c
    call z, Call_048_4ef9                         ; $58e0: $cc $f9 $4e
    ld [hl], b                                    ; $58e3: $70
    inc e                                         ; $58e4: $1c
    ld [c], a                                     ; $58e5: $e2
    cp c                                          ; $58e6: $b9
    sub [hl]                                      ; $58e7: $96
    ld l, e                                       ; $58e8: $6b
    ld [hl], e                                    ; $58e9: $73
    ld e, $a5                                     ; $58ea: $1e $a5
    db $ec                                        ; $58ec: $ec
    add b                                         ; $58ed: $80
    or [hl]                                       ; $58ee: $b6
    ld [hl], e                                    ; $58ef: $73
    ld [hl], e                                    ; $58f0: $73
    jp nz, Jump_000_3bd7                          ; $58f1: $c2 $d7 $3b

    inc hl                                        ; $58f4: $23
    rst $00                                       ; $58f5: $c7
    rlca                                          ; $58f6: $07
    cpl                                           ; $58f7: $2f
    and d                                         ; $58f8: $a2
    ld d, d                                       ; $58f9: $52
    ldh a, [rNR10]                                ; $58fa: $f0 $10
    sbc e                                         ; $58fc: $9b
    inc sp                                        ; $58fd: $33
    ld a, b                                       ; $58fe: $78
    ret z                                         ; $58ff: $c8

    and l                                         ; $5900: $a5
    or l                                          ; $5901: $b5
    add hl, sp                                    ; $5902: $39
    add sp, $13                                   ; $5903: $e8 $13
    ld d, e                                       ; $5905: $53
    add hl, sp                                    ; $5906: $39
    ld a, $00                                     ; $5907: $3e $00
    cpl                                           ; $5909: $2f
    ld h, c                                       ; $590a: $61
    ld a, c                                       ; $590b: $79
    ld l, [hl]                                    ; $590c: $6e
    ld l, c                                       ; $590d: $69
    xor [hl]                                      ; $590e: $ae
    push hl                                       ; $590f: $e5
    ld b, d                                       ; $5910: $42
    inc l                                         ; $5911: $2c
    push bc                                       ; $5912: $c5
    ld [hl], c                                    ; $5913: $71
    cp h                                          ; $5914: $bc
    or b                                          ; $5915: $b0
    cp d                                          ; $5916: $ba
    sub c                                         ; $5917: $91
    sbc c                                         ; $5918: $99
    ld e, [hl]                                    ; $5919: $5e
    ld h, d                                       ; $591a: $62
    ld a, c                                       ; $591b: $79
    ld l, [hl]                                    ; $591c: $6e
    add hl, hl                                    ; $591d: $29
    ld a, $00                                     ; $591e: $3e $00
    rst $08                                       ; $5920: $cf
    dec sp                                        ; $5921: $3b
    cp c                                          ; $5922: $b9
    nop                                           ; $5923: $00
    add e                                         ; $5924: $83
    ld b, c                                       ; $5925: $41
    ld h, h                                       ; $5926: $64
    call c, $72bc                                 ; $5927: $dc $bc $72
    nop                                           ; $592a: $00
    ld l, a                                       ; $592b: $6f
    sbc e                                         ; $592c: $9b
    pop de                                        ; $592d: $d1
    adc a                                         ; $592e: $8f
    halt                                          ; $592f: $76
    cp $ce                                        ; $5930: $fe $ce
    ld d, b                                       ; $5932: $50
    ld l, $b1                                     ; $5933: $2e $b1
    inc a                                         ; $5935: $3c
    jp hl                                         ; $5936: $e9


    ld h, h                                       ; $5937: $64
    ld [hl], $07                                  ; $5938: $36 $07
    sub c                                         ; $593a: $91
    ld [hl], c                                    ; $593b: $71
    di                                            ; $593c: $f3
    jp z, Jump_048_6f01                           ; $593d: $ca $01 $6f

    or a                                          ; $5940: $b7
    cp h                                          ; $5941: $bc
    nop                                           ; $5942: $00
    add e                                         ; $5943: $83
    sbc l                                         ; $5944: $9d
    call z, $cf68                                 ; $5945: $cc $68 $cf
    ld de, $448a                                  ; $5948: $11 $8a $44
    cp a                                          ; $594b: $bf
    jp hl                                         ; $594c: $e9


    ccf                                           ; $594d: $3f
    dec c                                         ; $594e: $0d
    push de                                       ; $594f: $d5
    sub l                                         ; $5950: $95
    inc bc                                        ; $5951: $03
    rst $10                                       ; $5952: $d7
    db $ed                                        ; $5953: $ed
    ld e, h                                       ; $5954: $5c
    ld e, c                                       ; $5955: $59
    adc d                                         ; $5956: $8a
    ld [hl], a                                    ; $5957: $77
    ld c, l                                       ; $5958: $4d
    ld c, [hl]                                    ; $5959: $4e
    add sp, -$37                                  ; $595a: $e8 $c9
    ld c, h                                       ; $595c: $4c
    adc $77                                       ; $595d: $ce $77
    db $fc                                        ; $595f: $fc
    xor c                                         ; $5960: $a9
    add hl, sp                                    ; $5961: $39
    rst $10                                       ; $5962: $d7
    ld [hl], d                                    ; $5963: $72
    rst $08                                       ; $5964: $cf
    ld de, $448a                                  ; $5965: $11 $8a $44
    cp a                                          ; $5968: $bf
    jp hl                                         ; $5969: $e9


    ccf                                           ; $596a: $3f
    push bc                                       ; $596b: $c5
    rlca                                          ; $596c: $07
    sub a                                         ; $596d: $97
    cp a                                          ; $596e: $bf
    sub e                                         ; $596f: $93
    ccf                                           ; $5970: $3f
    ld a, [de]                                    ; $5971: $1a
    jp z, Jump_000_19a5                           ; $5972: $ca $a5 $19

    ld c, l                                       ; $5975: $4d
    ret nz                                        ; $5976: $c0

    call z, $95e6                                 ; $5977: $cc $e6 $95
    inc bc                                        ; $597a: $03
    rst $10                                       ; $597b: $d7
    cp e                                          ; $597c: $bb
    add sp, -$69                                  ; $597d: $e8 $97
    rla                                           ; $597f: $17
    ld h, c                                       ; $5980: $61
    or b                                          ; $5981: $b0
    or b                                          ; $5982: $b0
    inc a                                         ; $5983: $3c
    ret nc                                        ; $5984: $d0

    or b                                          ; $5985: $b0
    jr jr_048_59fd                                ; $5986: $18 $75

    daa                                           ; $5988: $27
    add e                                         ; $5989: $83
    add a                                         ; $598a: $87
    ld a, h                                       ; $598b: $7c
    ld a, [$fc9f]                                 ; $598c: $fa $9f $fc
    ld b, b                                       ; $598f: $40
    db $dd                                        ; $5990: $dd
    ld h, [hl]                                    ; $5991: $66
    ld a, h                                       ; $5992: $7c
    nop                                           ; $5993: $00
    cpl                                           ; $5994: $2f
    sbc d                                         ; $5995: $9a
    pop de                                        ; $5996: $d1
    ld c, [hl]                                    ; $5997: $4e
    add $bb                                       ; $5998: $c6 $bb
    or $fa                                        ; $599a: $f6 $fa
    jp nz, Jump_048_40f2                          ; $599c: $c2 $f2 $40

    jp $d462                                      ; $599f: $c3 $62 $d4


    sbc l                                         ; $59a2: $9d
    inc c                                         ; $59a3: $0c
    ld e, $f2                                     ; $59a4: $1e $f2
    jp hl                                         ; $59a6: $e9


    ld a, a                                       ; $59a7: $7f
    ld a, [c]                                     ; $59a8: $f2
    ld d, a                                       ; $59a9: $57
    ld c, $4f                                     ; $59aa: $0e $4f
    ld l, d                                       ; $59ac: $6a
    dec [hl]                                      ; $59ad: $35
    sub h                                         ; $59ae: $94
    dec bc                                        ; $59af: $0b
    rrc e                                         ; $59b0: $cb $0b
    cp d                                          ; $59b2: $ba
    di                                            ; $59b3: $f3
    ld [hl], a                                    ; $59b4: $77
    and $96                                       ; $59b5: $e6 $96
    cp b                                          ; $59b7: $b8
    ld e, d                                       ; $59b8: $5a
    scf                                           ; $59b9: $37
    cpl                                           ; $59ba: $2f
    halt                                          ; $59bb: $76
    cp $ce                                        ; $59bc: $fe $ce
    jp nz, Jump_048_40f2                          ; $59be: $c2 $f2 $40

    sbc e                                         ; $59c1: $9b
    inc bc                                        ; $59c2: $03
    dec c                                         ; $59c3: $0d
    adc e                                         ; $59c4: $8b
    pop de                                        ; $59c5: $d1
    and d                                         ; $59c6: $a2
    sub [hl]                                      ; $59c7: $96
    halt                                          ; $59c8: $76
    add $20                                       ; $59c9: $c6 $20
    cpl                                           ; $59cb: $2f
    and $7f                                       ; $59cc: $e6 $7f
    inc d                                         ; $59ce: $14
    sub l                                         ; $59cf: $95
    ld d, b                                       ; $59d0: $50
    ld b, $8d                                     ; $59d1: $06 $8d
    ld [hl], a                                    ; $59d3: $77
    cp l                                          ; $59d4: $bd
    adc e                                         ; $59d5: $8b
    ld a, [hl]                                    ; $59d6: $7e
    ld a, c                                       ; $59d7: $79
    ld h, c                                       ; $59d8: $61
    ld a, c                                       ; $59d9: $79
    rst $20                                       ; $59da: $e7
    ld l, d                                       ; $59db: $6a
    pop de                                        ; $59dc: $d1
    adc $d8                                       ; $59dd: $ce $d8

Jump_048_59df:
    inc e                                         ; $59df: $1c
    ld [hl], a                                    ; $59e0: $77
    ld l, $a6                                     ; $59e1: $2e $a6
    ld l, a                                       ; $59e3: $6f
    add $07                                       ; $59e4: $c6 $07
    ld l, a                                       ; $59e6: $6f
    or a                                          ; $59e7: $b7
    cp h                                          ; $59e8: $bc
    nop                                           ; $59e9: $00
    add e                                         ; $59ea: $83
    sbc l                                         ; $59eb: $9d
    adc h                                         ; $59ec: $8c
    rla                                           ; $59ed: $17
    sub [hl]                                      ; $59ee: $96
    ld [hl], a                                    ; $59ef: $77
    ld [hl-], a                                   ; $59f0: $32
    ld a, b                                       ; $59f1: $78
    ret z                                         ; $59f2: $c8

    and a                                         ; $59f3: $a7
    rst $38                                       ; $59f4: $ff
    ret                                           ; $59f5: $c9


    rst $08                                       ; $59f6: $cf
    or l                                          ; $59f7: $b5
    call c, $8473                                 ; $59f8: $dc $73 $84
    ld [hl+], a                                   ; $59fb: $22
    pop de                                        ; $59fc: $d1

jr_048_59fd:
    ld l, a                                       ; $59fd: $6f
    ld a, [$434f]                                 ; $59fe: $fa $4f $43
    ld [hl], l                                    ; $5a01: $75
    push hl                                       ; $5a02: $e5
    nop                                           ; $5a03: $00
    ld l, a                                       ; $5a04: $6f
    sub c                                         ; $5a05: $91
    add hl, de                                    ; $5a06: $19
    ld e, b                                       ; $5a07: $58
    ld e, b                                       ; $5a08: $58
    sbc [hl]                                      ; $5a09: $9e
    ld e, c                                       ; $5a0a: $59
    ld c, $1b                                     ; $5a0b: $0e $1b
    ld e, c                                       ; $5a0d: $59
    ld a, [$96b9]                                 ; $5a0e: $fa $b9 $96
    ld a, e                                       ; $5a11: $7b
    adc [hl]                                      ; $5a12: $8e
    ld d, b                                       ; $5a13: $50
    inc h                                         ; $5a14: $24
    ld a, [$ff4d]                                 ; $5a15: $fa $4d $ff
    add hl, hl                                    ; $5a18: $29
    ld a, $00                                     ; $5a19: $3e $00
    rst $10                                       ; $5a1b: $d7
    db $e4                                        ; $5a1c: $e4
    ld h, h                                       ; $5a1d: $64
    ld [hl], e                                    ; $5a1e: $73
    adc c                                         ; $5a1f: $89
    push hl                                       ; $5a20: $e5
    or l                                          ; $5a21: $b5
    xor c                                         ; $5a22: $a9
    ld d, $61                                     ; $5a23: $16 $61
    sub b                                         ; $5a25: $90
    dec hl                                        ; $5a26: $2b
    add d                                         ; $5a27: $82
    and $4e                                       ; $5a28: $e6 $4e
    ld b, $0f                                     ; $5a2a: $06 $0f
    ld sp, hl                                     ; $5a2c: $f9
    db $f4                                        ; $5a2d: $f4
    ccf                                           ; $5a2e: $3f
    ld sp, hl                                     ; $5a2f: $f9
    ld hl, sp+$00                                 ; $5a30: $f8 $00
    rst $08                                       ; $5a32: $cf
    scf                                           ; $5a33: $37
    rla                                           ; $5a34: $17
    ld h, b                                       ; $5a35: $60
    or b                                          ; $5a36: $b0
    or b                                          ; $5a37: $b0
    cp h                                          ; $5a38: $bc
    sub e                                         ; $5a39: $93
    pop bc                                        ; $5a3a: $c1
    ld b, e                                       ; $5a3b: $43
    ld a, $fd                                     ; $5a3c: $3e $fd
    ld c, a                                       ; $5a3e: $4f
    ld a, [hl]                                    ; $5a3f: $7e
    ccf                                           ; $5a40: $3f
    sbc d                                         ; $5a41: $9a
    rst $28                                       ; $5a42: $ef
    ld hl, sp+$53                                 ; $5a43: $f8 $53
    ld [hl], e                                    ; $5a45: $73
    xor [hl]                                      ; $5a46: $ae
    push hl                                       ; $5a47: $e5
    sbc [hl]                                      ; $5a48: $9e
    inc hl                                        ; $5a49: $23
    inc d                                         ; $5a4a: $14
    adc c                                         ; $5a4b: $89
    ld a, [hl]                                    ; $5a4c: $7e
    db $d3                                        ; $5a4d: $d3
    ld a, a                                       ; $5a4e: $7f
    ld a, [de]                                    ; $5a4f: $1a
    and $b8                                       ; $5a50: $e6 $b8
    sub e                                         ; $5a52: $93
    ccf                                           ; $5a53: $3f
    ld l, d                                       ; $5a54: $6a
    ld e, [hl]                                    ; $5a55: $5e
    add hl, sp                                    ; $5a56: $39
    nop                                           ; $5a57: $00
    rst $10                                       ; $5a58: $d7
    db $e4                                        ; $5a59: $e4
    adc $df                                       ; $5a5a: $ce $df

jr_048_5a5c:
    ld e, c                                       ; $5a5c: $59
    sbc e                                         ; $5a5d: $9b
    dec bc                                        ; $5a5e: $0b
    ld e, e                                       ; $5a5f: $5b
    dec a                                         ; $5a60: $3d
    and c                                         ; $5a61: $a1
    db $f4                                        ; $5a62: $f4
    ld c, e                                       ; $5a63: $4b
    ld a, [hl]                                    ; $5a64: $7e
    ld h, $f2                                     ; $5a65: $26 $f2
    push de                                       ; $5a67: $d5
    sbc b                                         ; $5a68: $98
    ld b, b                                       ; $5a69: $40
    add hl, hl                                    ; $5a6a: $29
    add sp, $7f                                   ; $5a6b: $e8 $7f
    cp c                                          ; $5a6d: $b9
    inc sp                                        ; $5a6e: $33
    ld b, $39                                     ; $5a6f: $06 $39
    db $d3                                        ; $5a71: $d3
    ld l, d                                       ; $5a72: $6a
    jr z, jr_048_5a5c                             ; $5a73: $28 $e7

    adc l                                         ; $5a75: $8d
    sub a                                         ; $5a76: $97
    ld e, b                                       ; $5a77: $58
    sbc $09                                       ; $5a78: $de $09
    dec d                                         ; $5a7a: $15
    adc e                                         ; $5a7b: $8b
    ccf                                           ; $5a7c: $3f
    nop                                           ; $5a7d: $00
    ld l, a                                       ; $5a7e: $6f
    dec de                                        ; $5a7f: $1b
    rrca                                          ; $5a80: $0f
    push de                                       ; $5a81: $d5
    jp nz, $bcf2                                  ; $5a82: $c2 $f2 $bc

    push hl                                       ; $5a85: $e5
    sub l                                         ; $5a86: $95
    inc bc                                        ; $5a87: $03
    rst $28                                       ; $5a88: $ef
    ld a, l                                       ; $5a89: $7d
    ld h, a                                       ; $5a8a: $67
    ld b, c                                       ; $5a8b: $41
    rla                                           ; $5a8c: $17
    dec [hl]                                      ; $5a8d: $35
    adc [hl]                                      ; $5a8e: $8e
    db $e3                                        ; $5a8f: $e3
    or l                                          ; $5a90: $b5
    and h                                         ; $5a91: $a4
    ld a, b                                       ; $5a92: $78
    ld l, l                                       ; $5a93: $6d
    ld c, $d2                                     ; $5a94: $0e $d2
    dec a                                         ; $5a96: $3d
    ld h, e                                       ; $5a97: $63
    ld l, c                                       ; $5a98: $69
    jp nc, Jump_048_6cc9                          ; $5a99: $d2 $c9 $6c

    adc $ff                                       ; $5a9c: $ce $ff
    ld h, [hl]                                    ; $5a9e: $66
    inc e                                         ; $5a9f: $1c
    rst $00                                       ; $5aa0: $c7
    rlca                                          ; $5aa1: $07
    sub a                                         ; $5aa2: $97
    cp a                                          ; $5aa3: $bf
    inc de                                        ; $5aa4: $13
    ld [$f57f], a                                 ; $5aa5: $ea $7f $f5
    add d                                         ; $5aa8: $82
    ld e, [hl]                                    ; $5aa9: $5e
    add hl, sp                                    ; $5aaa: $39
    nop                                           ; $5aab: $00
    sub a                                         ; $5aac: $97
    push hl                                       ; $5aad: $e5
    ld c, c                                       ; $5aae: $49
    set 4, l                                      ; $5aaf: $cb $e5
    rlca                                          ; $5ab1: $07
    and [hl]                                      ; $5ab2: $a6
    rst $00                                       ; $5ab3: $c7
    rra                                           ; $5ab4: $1f
    ld e, $72                                     ; $5ab5: $1e $72
    ld [hl], e                                    ; $5ab7: $73
    sbc b                                         ; $5ab8: $98
    di                                            ; $5ab9: $f3
    dec a                                         ; $5aba: $3d
    ld [hl], a                                    ; $5abb: $77
    and c                                         ; $5abc: $a1
    ld l, c                                       ; $5abd: $69
    db $dd                                        ; $5abe: $dd
    adc h                                         ; $5abf: $8c
    db $e3                                        ; $5ac0: $e3
    ld a, b                                       ; $5ac1: $78
    ld de, $b906                                  ; $5ac2: $11 $06 $b9
    ldh a, [$7f]                                  ; $5ac5: $f0 $7f

jr_048_5ac7:
    sub c                                         ; $5ac7: $91
    rst $18                                       ; $5ac8: $df
    ld sp, hl                                     ; $5ac9: $f9
    ld h, h                                       ; $5aca: $64
    add d                                         ; $5acb: $82
    ld d, b                                       ; $5acc: $50
    ld [c], a                                     ; $5acd: $e2
    ld a, l                                       ; $5ace: $7d
    ld l, b                                       ; $5acf: $68
    cp [hl]                                       ; $5ad0: $be
    adc e                                         ; $5ad1: $8b
    ld e, d                                       ; $5ad2: $5a
    push bc                                       ; $5ad3: $c5
    ei                                            ; $5ad4: $fb
    add hl, bc                                    ; $5ad5: $09
    xor d                                         ; $5ad6: $aa
    dec bc                                        ; $5ad7: $0b
    sbc d                                         ; $5ad8: $9a
    adc e                                         ; $5ad9: $8b
    ld a, [hl]                                    ; $5ada: $7e
    call nc, $e6e4                                ; $5adb: $d4 $e4 $e6
    ld e, h                                       ; $5ade: $5c
    bit 0, l                                      ; $5adf: $cb $45
    jr jr_048_5ac7                                ; $5ae1: $18 $e4

    add sp, $47                                   ; $5ae3: $e8 $47
    ld d, b                                       ; $5ae5: $50
    ld a, h                                       ; $5ae6: $7c
    nop                                           ; $5ae7: $00
    cpl                                           ; $5ae8: $2f
    and d                                         ; $5ae9: $a2
    ld d, d                                       ; $5aea: $52
    ldh a, [rNR10]                                ; $5aeb: $f0 $10
    sbc e                                         ; $5aed: $9b
    dec sp                                        ; $5aee: $3b

jr_048_5aef:
    ld a, a                                       ; $5aef: $7f
    ld h, a                                       ; $5af0: $67
    ld b, c                                       ; $5af1: $41
    add a                                         ; $5af2: $87
    ld h, l                                       ; $5af3: $65
    dec [hl]                                      ; $5af4: $35
    jp hl                                         ; $5af5: $e9


    ld h, h                                       ; $5af6: $64
    ld [hl], $77                                  ; $5af7: $36 $77
    cp $95                                        ; $5af9: $fe $95
    call Call_048_68fd                            ; $5afb: $cd $fd $68
    ld h, c                                       ; $5afe: $61
    ld a, c                                       ; $5aff: $79
    xor [hl]                                      ; $5b00: $ae
    add hl, hl                                    ; $5b01: $29
    ld e, $77                                     ; $5b02: $1e $77
    sub c                                         ; $5b04: $91
    ret                                           ; $5b05: $c9


    ld h, [hl]                                    ; $5b06: $66
    ld a, h                                       ; $5b07: $7c
    nop                                           ; $5b08: $00
    ld l, a                                       ; $5b09: $6f
    dec de                                        ; $5b0a: $1b

Call_048_5b0b:
    rst $28                                       ; $5b0b: $ef
    db $fc                                        ; $5b0c: $fc
    sbc l                                         ; $5b0d: $9d
    ld a, c                                       ; $5b0e: $79
    db $e3                                        ; $5b0f: $e3
    ld a, c                                       ; $5b10: $79
    bit 0, l                                      ; $5b11: $cb $45
    cp a                                          ; $5b13: $bf
    call c, Call_000_19dc                         ; $5b14: $dc $dc $19
    add e                                         ; $5b17: $83
    cp h                                          ; $5b18: $bc
    ld [hl], d                                    ; $5b19: $72
    nop                                           ; $5b1a: $00
    rst $08                                       ; $5b1b: $cf
    inc [hl]                                      ; $5b1c: $34
    rst $30                                       ; $5b1d: $f7
    dec e                                         ; $5b1e: $1d
    rst $18                                       ; $5b1f: $df
    add hl, hl                                    ; $5b20: $29
    and [hl]                                      ; $5b21: $a6
    rrca                                          ; $5b22: $0f
    ld a, c                                       ; $5b23: $79
    ld d, e                                       ; $5b24: $53
    adc e                                         ; $5b25: $8b
    jp z, $cb0b                                   ; $5b26: $ca $0b $cb

    db $d3                                        ; $5b29: $d3
    rra                                           ; $5b2a: $1f
    db $fc                                        ; $5b2b: $fc
    cp c                                          ; $5b2c: $b9
    sub [hl]                                      ; $5b2d: $96
    di                                            ; $5b2e: $f3
    sbc l                                         ; $5b2f: $9d
    add d                                         ; $5b30: $82
    add a                                         ; $5b31: $87
    rst $38                                       ; $5b32: $ff
    db $eb                                        ; $5b33: $eb
    add hl, bc                                    ; $5b34: $09
    jr jr_048_5aef                                ; $5b35: $18 $b8

    rst $38                                       ; $5b37: $ff
    sub e                                         ; $5b38: $93
    ret nc                                        ; $5b39: $d0

    ld l, d                                       ; $5b3a: $6a
    rra                                           ; $5b3b: $1f
    rra                                           ; $5b3c: $1f
    ld d, a                                       ; $5b3d: $57
    or c                                          ; $5b3e: $b1
    dec bc                                        ; $5b3f: $0b
    dec hl                                        ; $5b40: $2b
    inc c                                         ; $5b41: $0c
    push hl                                       ; $5b42: $e5
    ld c, h                                       ; $5b43: $4c
    adc e                                         ; $5b44: $8b
    ccf                                           ; $5b45: $3f
    nop                                           ; $5b46: $00
    ld l, a                                       ; $5b47: $6f
    ld a, h                                       ; $5b48: $7c
    ld c, b                                       ; $5b49: $48
    db $fc                                        ; $5b4a: $fc
    ld l, $b1                                     ; $5b4b: $2e $b1
    inc d                                         ; $5b4d: $14
    or l                                          ; $5b4e: $b5
    dec bc                                        ; $5b4f: $0b
    cp a                                          ; $5b50: $bf
    inc sp                                        ; $5b51: $33
    sub h                                         ; $5b52: $94
    adc e                                         ; $5b53: $8b
    ld l, [hl]                                    ; $5b54: $6e
    set 1, c                                      ; $5b55: $cb $c9
    ld b, h                                       ; $5b57: $44
    add hl, hl                                    ; $5b58: $29
    ld c, e                                       ; $5b59: $4b
    dec sp                                        ; $5b5a: $3b
    ld d, l                                       ; $5b5b: $55
    adc a                                         ; $5b5c: $8f
    ld a, [bc]                                    ; $5b5d: $0a
    rrca                                          ; $5b5e: $0f
    ld sp, hl                                     ; $5b5f: $f9
    ld b, e                                       ; $5b60: $43
    ld [c], a                                     ; $5b61: $e2
    ld [hl], a                                    ; $5b62: $77
    ld e, c                                       ; $5b63: $59
    sbc $c9                                       ; $5b64: $de $c9
    ldh [rNR42], a                                ; $5b66: $e0 $21
    sbc a                                         ; $5b68: $9f
    cp $27                                        ; $5b69: $fe $27
    ccf                                           ; $5b6b: $3f
    ld d, h                                       ; $5b6c: $54
    cp e                                          ; $5b6d: $bb
    db $ed                                        ; $5b6e: $ed
    ld l, c                                       ; $5b6f: $69
    add e                                         ; $5b70: $83
    inc e                                         ; $5b71: $1c
    sbc $55                                       ; $5b72: $de $55
    ld [hl-], a                                   ; $5b74: $32
    ld hl, sp+$4f                                 ; $5b75: $f8 $4f
    ld d, h                                       ; $5b77: $54
    or a                                          ; $5b78: $b7
    push bc                                       ; $5b79: $c5
    ld a, e                                       ; $5b7a: $7b
    db $e3                                        ; $5b7b: $e3
    di                                            ; $5b7c: $f3
    adc $d8                                       ; $5b7d: $ce $d8
    ld d, h                                       ; $5b7f: $54
    adc e                                         ; $5b80: $8b
    call z, $a768                                 ; $5b81: $cc $68 $a7
    sub [hl]                                      ; $5b84: $96
    call nz, Call_048_6f1f                        ; $5b85: $c4 $1f $6f
    sbc e                                         ; $5b88: $9b
    pop de                                        ; $5b89: $d1
    adc $df                                       ; $5b8a: $ce $df
    add hl, de                                    ; $5b8c: $19
    jp z, $ec79                                   ; $5b8d: $ca $79 $ec

    and h                                         ; $5b90: $a4
    sub e                                         ; $5b91: $93
    reti                                          ; $5b92: $d9


    sbc h                                         ; $5b93: $9c
    adc e                                         ; $5b94: $8b
    jp hl                                         ; $5b95: $e9


    sbc e                                         ; $5b96: $9b
    ld d, a                                       ; $5b97: $57
    ld c, $6f                                     ; $5b98: $0e $6f
    ld a, l                                       ; $5b9a: $7d
    dec c                                         ; $5b9b: $0d

Jump_048_5b9c:
    sbc d                                         ; $5b9c: $9a
    ld l, d                                       ; $5b9d: $6a
    ld de, $0b06                                  ; $5b9e: $11 $06 $0b
    dec hl                                        ; $5ba1: $2b
    inc c                                         ; $5ba2: $0c
    push hl                                       ; $5ba3: $e5
    ld c, d                                       ; $5ba4: $4a
    ld l, e                                       ; $5ba5: $6b
    ld [hl], e                                    ; $5ba6: $73
    sbc b                                         ; $5ba7: $98
    di                                            ; $5ba8: $f3
    db $dd                                        ; $5ba9: $dd
    and l                                         ; $5baa: $a5
    jp hl                                         ; $5bab: $e9


    cp c                                          ; $5bac: $b9
    sub [hl]                                      ; $5bad: $96
    di                                            ; $5bae: $f3
    sbc l                                         ; $5baf: $9d
    ld d, b                                       ; $5bb0: $50
    ld h, b                                       ; $5bb1: $60
    reti                                          ; $5bb2: $d9


    ld bc, $e9fa                                  ; $5bb3: $01 $fa $e9
    rlca                                          ; $5bb6: $07
    ld a, d                                       ; $5bb7: $7a
    add $66                                       ; $5bb8: $c6 $66
    ld a, h                                       ; $5bba: $7c
    nop                                           ; $5bbb: $00
    rst $10                                       ; $5bbc: $d7
    call nc, $f23c                                ; $5bbd: $d4 $3c $f2
    jp nz, $d4f2                                  ; $5bc0: $c2 $f2 $d4

    rst $38                                       ; $5bc3: $ff
    call nz, Call_048_4c53                        ; $5bc4: $c4 $53 $4c
    rra                                           ; $5bc7: $1f
    ld a, [c]                                     ; $5bc8: $f2
    and [hl]                                      ; $5bc9: $a6
    and $8d                                       ; $5bca: $e6 $8d
    rla                                           ; $5bcc: $17
    ld [hl], h                                    ; $5bcd: $74
    daa                                           ; $5bce: $27
    call nc, $0bbe                                ; $5bcf: $d4 $be $0b
    dec hl                                        ; $5bd2: $2b
    ld [$2bcd], sp                                ; $5bd3: $08 $cd $2b
    rlca                                          ; $5bd6: $07
    rst $10                                       ; $5bd7: $d7
    db $e4                                        ; $5bd8: $e4
    db $e4                                        ; $5bd9: $e4
    rst $08                                       ; $5bda: $cf
    sub l                                         ; $5bdb: $95
    ld b, $da                                     ; $5bdc: $06 $da
    sbc h                                         ; $5bde: $9c
    adc e                                         ; $5bdf: $8b
    jp hl                                         ; $5be0: $e9


    sbc e                                         ; $5be1: $9b
    pop af                                        ; $5be2: $f1
    ld bc, $1597                                  ; $5be3: $01 $97 $15
    ld d, $74                                     ; $5be6: $16 $74
    sbc b                                         ; $5be8: $98
    di                                            ; $5be9: $f3
    db $dd                                        ; $5bea: $dd
    and l                                         ; $5beb: $a5
    jp hl                                         ; $5bec: $e9


    cp c                                          ; $5bed: $b9
    sub [hl]                                      ; $5bee: $96
    di                                            ; $5bef: $f3
    sbc l                                         ; $5bf0: $9d
    ld d, b                                       ; $5bf1: $50
    ld h, b                                       ; $5bf2: $60
    reti                                          ; $5bf3: $d9


    ld bc, $e9fa                                  ; $5bf4: $01 $fa $e9
    rlca                                          ; $5bf7: $07
    ld a, [hl+]                                   ; $5bf8: $2a
    dec hl                                        ; $5bf9: $2b
    sbc e                                         ; $5bfa: $9b
    ld d, a                                       ; $5bfb: $57
    or $d6                                        ; $5bfc: $f6 $d6
    rst $10                                       ; $5bfe: $d7
    and b                                         ; $5bff: $a0
    xor c                                         ; $5c00: $a9
    ld d, $61                                     ; $5c01: $16 $61
    or b                                          ; $5c03: $b0
    or e                                          ; $5c04: $b3
    add c                                         ; $5c05: $81
    and c                                         ; $5c06: $a1
    ld e, h                                       ; $5c07: $5c
    sbc e                                         ; $5c08: $9b
    dec sp                                        ; $5c09: $3b
    add hl, de                                    ; $5c0a: $19
    sub a                                         ; $5c0b: $97
    inc d                                         ; $5c0c: $14
    db $e4                                        ; $5c0d: $e4
    sbc h                                         ; $5c0e: $9c
    ld c, d                                       ; $5c0f: $4a
    adc e                                         ; $5c10: $8b
    jp z, $b2c3                                   ; $5c11: $ca $c3 $b2

    sbc d                                         ; $5c14: $9a
    scf                                           ; $5c15: $37
    sbc [hl]                                      ; $5c16: $9e
    ld e, e                                       ; $5c17: $5b
    ld a, [c]                                     ; $5c18: $f2
    ld h, h                                       ; $5c19: $64
    add [hl]                                      ; $5c1a: $86
    ld a, [hl]                                    ; $5c1b: $7e
    ld l, [hl]                                    ; $5c1c: $6e
    xor e                                         ; $5c1d: $ab
    rst $30                                       ; $5c1e: $f7
    and c                                         ; $5c1f: $a1
    or l                                          ; $5c20: $b5
    add hl, sp                                    ; $5c21: $39
    push bc                                       ; $5c22: $c5
    db $f4                                        ; $5c23: $f4
    ld hl, $6a6f                                  ; $5c24: $21 $6f $6a
    cp d                                          ; $5c27: $ba
    sub l                                         ; $5c28: $95
    pop af                                        ; $5c29: $f1
    ld e, [hl]                                    ; $5c2a: $5e
    ld b, h                                       ; $5c2b: $44
    and l                                         ; $5c2c: $a5
    ldh [rNR42], a                                ; $5c2d: $e0 $21
    ld [hl], $17                                  ; $5c2f: $36 $17
    db $fd                                        ; $5c31: $fd
    ld a, [c]                                     ; $5c32: $f2
    add d                                         ; $5c33: $82
    ld l, $3f                                     ; $5c34: $2e $3f
    ld e, b                                       ; $5c36: $58
    sbc e                                         ; $5c37: $9b
    ld l, d                                       ; $5c38: $6a
    ret nz                                        ; $5c39: $c0

    inc l                                         ; $5c3a: $2c
    daa                                           ; $5c3b: $27
    ld sp, $cd90                                  ; $5c3c: $31 $90 $cd
    ld hl, sp+$00                                 ; $5c3f: $f8 $00
    ld l, a                                       ; $5c41: $6f
    dec de                                        ; $5c42: $1b
    rrca                                          ; $5c43: $0f
    push de                                       ; $5c44: $d5
    jp c, $cc1c                                   ; $5c45: $da $1c $cc

    sub e                                         ; $5c48: $93
    pop bc                                        ; $5c49: $c1
    ld b, e                                       ; $5c4a: $43
    ld a, $fd                                     ; $5c4b: $3e $fd
    ld c, a                                       ; $5c4d: $4f
    cp $b6                                        ; $5c4e: $fe $b6
    dec hl                                        ; $5c50: $2b
    rlca                                          ; $5c51: $07
    rst $10                                       ; $5c52: $d7

Call_048_5c53:
    db $e4                                        ; $5c53: $e4
    ld c, [hl]                                    ; $5c54: $4e
    dec l                                         ; $5c55: $2d
    rst $08                                       ; $5c56: $cf
    dec de                                        ; $5c57: $1b
    rst $08                                       ; $5c58: $cf
    or l                                          ; $5c59: $b5
    ld e, h                                       ; $5c5a: $5c
    add h                                         ; $5c5b: $84
    pop bc                                        ; $5c5c: $c1
    push bc                                       ; $5c5d: $c5
    ld [hl+], a                                   ; $5c5e: $22
    inc sp                                        ; $5c5f: $33
    ld e, d                                       ; $5c60: $5a
    ld h, d                                       ; $5c61: $62
    ld a, c                                       ; $5c62: $79
    sbc $78                                       ; $5c63: $de $78
    xor [hl]                                      ; $5c65: $ae
    push hl                                       ; $5c66: $e5
    add d                                         ; $5c67: $82
    rst $28                                       ; $5c68: $ef
    call nz, Call_000_2f07                        ; $5c69: $c4 $07 $2f
    or l                                          ; $5c6c: $b5
    rla                                           ; $5c6d: $17
    ld d, e                                       ; $5c6e: $53
    sbc a                                         ; $5c6f: $9f
    ld c, b                                       ; $5c70: $48
    ld c, h                                       ; $5c71: $4c
    ld a, h                                       ; $5c72: $7c
    nop                                           ; $5c73: $00
    rst $08                                       ; $5c74: $cf
    or l                                          ; $5c75: $b5
    add hl, sp                                    ; $5c76: $39
    db $f4                                        ; $5c77: $f4
    ld l, l                                       ; $5c78: $6d
    ld a, h                                       ; $5c79: $7c
    nop                                           ; $5c7a: $00
    xor a                                         ; $5c7b: $af
    ret nc                                        ; $5c7c: $d0

    rla                                           ; $5c7d: $17
    ld e, d                                       ; $5c7e: $5a
    ld a, [de]                                    ; $5c7f: $1a
    call z, Call_000_296b                         ; $5c80: $cc $6b $29
    ld a, [hl+]                                   ; $5c83: $2a
    ld h, c                                       ; $5c84: $61
    dec e                                         ; $5c85: $1d
    cp d                                          ; $5c86: $ba
    dec l                                         ; $5c87: $2d
    sbc $65                                       ; $5c88: $de $65
    ld a, c                                       ; $5c8a: $79
    sub b                                         ; $5c8b: $90
    add hl, hl                                    ; $5c8c: $29
    ld e, $e6                                     ; $5c8d: $1e $e6
    or b                                          ; $5c8f: $b0
    cp [hl]                                       ; $5c90: $be
    inc [hl]                                      ; $5c91: $34
    ld d, b                                       ; $5c92: $50
    rst $10                                       ; $5c93: $d7
    db $f4                                        ; $5c94: $f4
    inc b                                         ; $5c95: $04
    inc c                                         ; $5c96: $0c
    ld d, $34                                     ; $5c97: $16 $34
    ld a, $00                                     ; $5c99: $3e $00
    ld c, a                                       ; $5c9b: $4f
    ld [$6d29], a                                 ; $5c9c: $ea $29 $6d
    dec bc                                        ; $5c9f: $0b
    cp d                                          ; $5ca0: $ba

Call_048_5ca1:
    xor b                                         ; $5ca1: $a8
    di                                            ; $5ca2: $f3
    rst $38                                       ; $5ca3: $ff
    ei                                            ; $5ca4: $fb
    ld hl, sp+$00                                 ; $5ca5: $f8 $00
    ld c, a                                       ; $5ca7: $4f
    dec [hl]                                      ; $5ca8: $35
    rla                                           ; $5ca9: $17
    ld [hl], h                                    ; $5caa: $74
    sbc $8c                                       ; $5cab: $de $8c
    halt                                          ; $5cad: $76
    ld l, d                                       ; $5cae: $6a

Jump_048_5caf:
    jp hl                                         ; $5caf: $e9


    jp z, Jump_048_4f01                           ; $5cb0: $ca $01 $4f

    dec de                                        ; $5cb3: $1b
    db $e4                                        ; $5cb4: $e4
    ldh a, [$ae]                                  ; $5cb5: $f0 $ae
    sub d                                         ; $5cb7: $92
    pop bc                                        ; $5cb8: $c1
    ld a, a                                       ; $5cb9: $7f
    and d                                         ; $5cba: $a2
    ld [de], a                                    ; $5cbb: $12
    ld a, a                                       ; $5cbc: $7f
    nop                                           ; $5cbd: $00
    ld l, a                                       ; $5cbe: $6f

Jump_048_5cbf:
    ld d, a                                       ; $5cbf: $57
    rr a                                          ; $5cc0: $cb $1f
    dec c                                         ; $5cc2: $0d

Call_048_5cc3:
    ld [hl], e                                    ; $5cc3: $73
    cp [hl]                                       ; $5cc4: $be
    db $e3                                        ; $5cc5: $e3
    ld c, a                                       ; $5cc6: $4f
    call $96b9                                    ; $5cc7: $cd $b9 $96
    ld a, e                                       ; $5cca: $7b
    adc [hl]                                      ; $5ccb: $8e
    ld d, b                                       ; $5ccc: $50
    inc h                                         ; $5ccd: $24
    ld a, [$ff4d]                                 ; $5cce: $fa $4d $ff
    jp hl                                         ; $5cd1: $e9


    ld h, d                                       ; $5cd2: $62
    ld a, [de]                                    ; $5cd3: $1a
    dec hl                                        ; $5cd4: $2b
    ld a, [bc]                                    ; $5cd5: $0a
    ld a, [de]                                    ; $5cd6: $1a
    rst $28                                       ; $5cd7: $ef
    jp nc, $2e81                                  ; $5cd8: $d2 $81 $2e

    sub [hl]                                      ; $5cdb: $96
    ld h, [hl]                                    ; $5cdc: $66
    inc [hl]                                      ; $5cdd: $34
    ld bc, $9b33                                  ; $5cde: $01 $33 $9b
    pop af                                        ; $5ce1: $f1
    ld bc, $a697                                  ; $5ce2: $01 $97 $a6
    push af                                       ; $5ce5: $f5
    adc a                                         ; $5ce6: $8f
    rrca                                          ; $5ce7: $0f
    ld l, a                                       ; $5ce8: $6f
    ld d, a                                       ; $5ce9: $57
    rr a                                          ; $5cea: $cb $1f
    dec c                                         ; $5cec: $0d
    ld [hl], e                                    ; $5ced: $73
    cp [hl]                                       ; $5cee: $be
    db $e3                                        ; $5cef: $e3
    ld c, a                                       ; $5cf0: $4f
    call $96b9                                    ; $5cf1: $cd $b9 $96
    ld a, e                                       ; $5cf4: $7b
    adc [hl]                                      ; $5cf5: $8e
    ld d, b                                       ; $5cf6: $50

Call_048_5cf7:
    inc h                                         ; $5cf7: $24
    ld a, [$ff4d]                                 ; $5cf8: $fa $4d $ff
    add hl, hl                                    ; $5cfb: $29
    sbc $a5                                       ; $5cfc: $de $a5
    inc bc                                        ; $5cfe: $03
    ld e, l                                       ; $5cff: $5d
    inc l                                         ; $5d00: $2c
    call $0268                                    ; $5d01: $cd $68 $02
    ld h, [hl]                                    ; $5d04: $66
    ld [hl], $2f                                  ; $5d05: $36 $2f
    and [hl]                                      ; $5d07: $a6
    or c                                          ; $5d08: $b1
    and d                                         ; $5d09: $a2
    and b                                         ; $5d0a: $a0
    pop af                                        ; $5d0b: $f1
    ld bc, $612f                                  ; $5d0c: $01 $2f $61
    ld a, c                                       ; $5d0f: $79
    ld l, [hl]                                    ; $5d10: $6e
    add hl, bc                                    ; $5d11: $09
    sub h                                         ; $5d12: $94
    sbc e                                         ; $5d13: $9b
    ld [c], a                                     ; $5d14: $e2
    or a                                          ; $5d15: $b7
    set 6, d                                      ; $5d16: $cb $f2
    ld c, [hl]                                    ; $5d18: $4e
    ld b, $0f                                     ; $5d19: $06 $0f
    ld sp, hl                                     ; $5d1b: $f9
    db $f4                                        ; $5d1c: $f4
    ccf                                           ; $5d1d: $3f
    ld sp, hl                                     ; $5d1e: $f9
    and c                                         ; $5d1f: $a1
    jp c, $4f6d                                   ; $5d20: $da $6d $4f

    dec de                                        ; $5d23: $1b
    db $e4                                        ; $5d24: $e4
    ldh a, [$ae]                                  ; $5d25: $f0 $ae
    sub d                                         ; $5d27: $92
    pop bc                                        ; $5d28: $c1
    ld a, a                                       ; $5d29: $7f
    and d                                         ; $5d2a: $a2
    cp d                                          ; $5d2b: $ba
    dec l                                         ; $5d2c: $2d
    ld a, $00                                     ; $5d2d: $3e $00
    sub a                                         ; $5d2f: $97
    ld c, $74                                     ; $5d30: $0e $74
    or c                                          ; $5d32: $b1
    inc [hl]                                      ; $5d33: $34
    and e                                         ; $5d34: $a3
    add hl, bc                                    ; $5d35: $09
    sbc b                                         ; $5d36: $98
    reti                                          ; $5d37: $d9


    cp h                                          ; $5d38: $bc
    sbc b                                         ; $5d39: $98
    add $8a                                       ; $5d3a: $c6 $8a
    add d                                         ; $5d3c: $82
    add $07                                       ; $5d3d: $c6 $07
    ld l, a                                       ; $5d3f: $6f
    ld d, a                                       ; $5d40: $57
    rr a                                          ; $5d41: $cb $1f
    dec c                                         ; $5d43: $0d
    ld [hl], e                                    ; $5d44: $73
    cp [hl]                                       ; $5d45: $be
    db $e3                                        ; $5d46: $e3
    ld c, a                                       ; $5d47: $4f
    call $96b9                                    ; $5d48: $cd $b9 $96
    ld a, e                                       ; $5d4b: $7b
    adc [hl]                                      ; $5d4c: $8e
    ld d, b                                       ; $5d4d: $50
    inc h                                         ; $5d4e: $24
    ld a, [$ff4d]                                 ; $5d4f: $fa $4d $ff
    jp hl                                         ; $5d52: $e9


    ld h, d                                       ; $5d53: $62
    sub a                                         ; $5d54: $97
    ld b, [hl]                                    ; $5d55: $46
    inc h                                         ; $5d56: $24
    ld b, [hl]                                    ; $5d57: $46
    db $fc                                        ; $5d58: $fc
    or $3c                                        ; $5d59: $f6 $3c
    ld b, $72                                     ; $5d5b: $06 $72
    and b                                         ; $5d5d: $a0
    db $e4                                        ; $5d5e: $e4
    jr z, jr_048_5d7f                             ; $5d5f: $28 $1e

    db $fd                                        ; $5d61: $fd
    db $f4                                        ; $5d62: $f4
    pop af                                        ; $5d63: $f1
    ld bc, $e4d7                                  ; $5d64: $01 $d7 $e4
    add h                                         ; $5d67: $84
    and $04                                       ; $5d68: $e6 $04
    adc l                                         ; $5d6a: $8d
    pop bc                                        ; $5d6b: $c1
    cp h                                          ; $5d6c: $bc
    pop af                                        ; $5d6d: $f1
    ld d, b                                       ; $5d6e: $50
    xor [hl]                                      ; $5d6f: $ae
    or h                                          ; $5d70: $b4
    ld h, d                                       ; $5d71: $62
    ld a, [$0c6a]                                 ; $5d72: $fa $6a $0c
    db $e4                                        ; $5d75: $e4
    add h                                         ; $5d76: $84
    ld h, [hl]                                    ; $5d77: $66
    ld a, h                                       ; $5d78: $7c
    nop                                           ; $5d79: $00
    ld l, a                                       ; $5d7a: $6f

Call_048_5d7b:
    sbc e                                         ; $5d7b: $9b
    pop de                                        ; $5d7c: $d1
    add b                                         ; $5d7d: $80
    dec l                                         ; $5d7e: $2d

jr_048_5d7f:
    add sp, -$2e                                  ; $5d7f: $e8 $d2
    adc h                                         ; $5d81: $8c
    ld hl, sp-$09                                 ; $5d82: $f8 $f7
    jp z, $def6                                   ; $5d84: $ca $f6 $de

    sbc a                                         ; $5d87: $9f
    db $fc                                        ; $5d88: $fc
    pop de                                        ; $5d89: $d1
    add d                                         ; $5d8a: $82
    ld c, $73                                     ; $5d8b: $0e $73
    cp [hl]                                       ; $5d8d: $be
    ld d, e                                       ; $5d8e: $53
    jp c, Jump_000_3a0c                           ; $5d8f: $da $0c $3a

    sbc e                                         ; $5d92: $9b
    jp hl                                         ; $5d93: $e9


    cp c                                          ; $5d94: $b9
    sub [hl]                                      ; $5d95: $96
    di                                            ; $5d96: $f3
    ld e, l                                       ; $5d97: $5d
    ld d, h                                       ; $5d98: $54
    ld d, h                                       ; $5d99: $54
    ld b, c                                       ; $5d9a: $41
    sub l                                         ; $5d9b: $95
    ld hl, sp-$13                                 ; $5d9c: $f8 $ed
    xor d                                         ; $5d9e: $aa
    add hl, de                                    ; $5d9f: $19
    dec l                                         ; $5da0: $2d
    ld a, [$b9a0]                                 ; $5da1: $fa $a0 $b9
    ldh [$27], a                                  ; $5da4: $e0 $27
    ld l, b                                       ; $5da6: $68
    xor d                                         ; $5da7: $aa
    cp l                                          ; $5da8: $bd
    db $f4                                        ; $5da9: $f4
    ld a, [c]                                     ; $5daa: $f2
    set 2, a                                      ; $5dab: $cb $d7
    sbc $58                                       ; $5dad: $de $58
    sbc d                                         ; $5daf: $9a
    pop de                                        ; $5db0: $d1
    inc b                                         ; $5db1: $04
    call z, $8a6c                                 ; $5db2: $cc $6c $8a
    ccf                                           ; $5db5: $3f
    nop                                           ; $5db6: $00
    ld l, a                                       ; $5db7: $6f
    sub l                                         ; $5db8: $95
    ld b, b                                       ; $5db9: $40
    bit 1, e                                      ; $5dba: $cb $4b
    inc l                                         ; $5dbc: $2c
    rst $28                                       ; $5dbd: $ef
    ld b, e                                       ; $5dbe: $43
    dec bc                                        ; $5dbf: $0b
    swap e                                        ; $5dc0: $cb $33
    ld c, e                                       ; $5dc2: $4b
    ld sp, hl                                     ; $5dc3: $f9
    db $d3                                        ; $5dc4: $d3
    inc hl                                        ; $5dc5: $23
    ret nz                                        ; $5dc6: $c0

    inc b                                         ; $5dc7: $04
    ld c, d                                       ; $5dc8: $4a
    ld hl, sp-$1c                                 ; $5dc9: $f8 $e4
    rst $00                                       ; $5dcb: $c7
    sbc l                                         ; $5dcc: $9d
    call nz, Call_000_3640                        ; $5dcd: $c4 $40 $36
    db $e3                                        ; $5dd0: $e3
    inc bc                                        ; $5dd1: $03
    rst $10                                       ; $5dd2: $d7
    dec sp                                        ; $5dd3: $3b
    jp hl                                         ; $5dd4: $e9


    inc h                                         ; $5dd5: $24
    rrca                                          ; $5dd6: $0f
    ld [hl], e                                    ; $5dd7: $73
    cp [hl]                                       ; $5dd8: $be
    sra d                                         ; $5dd9: $cb $2a
    ld l, [hl]                                    ; $5ddb: $6e
    ld c, [hl]                                    ; $5ddc: $4e
    cp $a8                                        ; $5ddd: $fe $a8
    add hl, sp                                    ; $5ddf: $39
    db $d3                                        ; $5de0: $d3
    ld l, d                                       ; $5de1: $6a
    ld b, c                                       ; $5de2: $41
    ld [hl], a                                    ; $5de3: $77
    sbc e                                         ; $5de4: $9b
    ld e, d                                       ; $5de5: $5a
    ld a, [de]                                    ; $5de6: $1a
    inc a                                         ; $5de7: $3c
    ld h, h                                       ; $5de8: $64
    dec [hl]                                      ; $5de9: $35
    rst $18                                       ; $5dea: $df
    pop af                                        ; $5deb: $f1
    and a                                         ; $5dec: $a7
    and $5c                                       ; $5ded: $e6 $5c
    srl l                                         ; $5def: $cb $3d
    ld b, a                                       ; $5df1: $47
    jr z, jr_048_5e06                             ; $5df2: $28 $12

    db $fd                                        ; $5df4: $fd
    and [hl]                                      ; $5df5: $a6
    rst $38                                       ; $5df6: $ff
    inc [hl]                                      ; $5df7: $34
    or a                                          ; $5df8: $b7
    and h                                         ; $5df9: $a4
    call $8e38                                    ; $5dfa: $cd $38 $8e
    db $e3                                        ; $5dfd: $e3
    ld b, l                                       ; $5dfe: $45
    ld h, [hl]                                    ; $5dff: $66
    inc [hl]                                      ; $5e00: $34
    db $d3                                        ; $5e01: $d3
    cp d                                          ; $5e02: $ba
    call Call_048_5699                            ; $5e03: $cd $99 $56

jr_048_5e06:
    dec bc                                        ; $5e06: $0b
    ld a, [hl-]                                   ; $5e07: $3a
    ld d, b                                       ; $5e08: $50
    sub l                                         ; $5e09: $95
    ld b, $f1                                     ; $5e0a: $06 $f1
    ld c, [hl]                                    ; $5e0c: $4e
    sbc a                                         ; $5e0d: $9f
    inc a                                         ; $5e0e: $3c
    rst $00                                       ; $5e0f: $c7
    rlca                                          ; $5e10: $07
    rst $10                                       ; $5e11: $d7
    db $e4                                        ; $5e12: $e4
    jp nz, $a1ff                                  ; $5e13: $c2 $ff $a1

    ld a, c                                       ; $5e16: $79
    db $e3                                        ; $5e17: $e3
    sbc l                                         ; $5e18: $9d
    ld a, [hl-]                                   ; $5e19: $3a
    adc a                                         ; $5e1a: $8f
    cp h                                          ; $5e1b: $bc
    ret nz                                        ; $5e1c: $c0

    adc h                                         ; $5e1d: $8c
    and $3b                                       ; $5e1e: $e6 $3b
    inc de                                        ; $5e20: $13
    ld sp, hl                                     ; $5e21: $f9
    ld l, d                                       ; $5e22: $6a
    ld c, h                                       ; $5e23: $4c
    and b                                         ; $5e24: $a0
    add h                                         ; $5e25: $84
    jp z, Jump_048_4ed2                           ; $5e26: $ca $d2 $4e

    sbc b                                         ; $5e29: $98
    reti                                          ; $5e2a: $d9


    adc h                                         ; $5e2b: $8c
    rst $30                                       ; $5e2c: $f7
    sbc $c9                                       ; $5e2d: $de $c9
    cp h                                          ; $5e2f: $bc
    cpl                                           ; $5e30: $2f
    ld hl, $5c3c                                  ; $5e31: $21 $3c $5c
    ret c                                         ; $5e34: $d8

    adc d                                         ; $5e35: $8a
    ld a, b                                       ; $5e36: $78
    ld h, c                                       ; $5e37: $61
    and e                                         ; $5e38: $a3
    sbc c                                         ; $5e39: $99
    sbc $b9                                       ; $5e3a: $de $b9
    ld l, d                                       ; $5e3c: $6a
    add c                                         ; $5e3d: $81
    add hl, de                                    ; $5e3e: $19
    call Call_000_21e0                            ; $5e3f: $cd $e0 $21
    sub a                                         ; $5e42: $97
    ld d, [hl]                                    ; $5e43: $56
    dec l                                         ; $5e44: $2d
    call $a068                                    ; $5e45: $cd $68 $a0
    and a                                         ; $5e48: $a7
    sbc a                                         ; $5e49: $9f
    reti                                          ; $5e4a: $d9


    inc d                                         ; $5e4b: $14
    ld a, a                                       ; $5e4c: $7f
    nop                                           ; $5e4d: $00
    rst $10                                       ; $5e4e: $d7
    dec sp                                        ; $5e4f: $3b
    jp hl                                         ; $5e50: $e9


    inc h                                         ; $5e51: $24
    rst $28                                       ; $5e52: $ef
    ld b, e                                       ; $5e53: $43
    di                                            ; $5e54: $f3
    db $dd                                        ; $5e55: $dd
    reti                                          ; $5e56: $d9


    jp nc, Jump_000_0feb                          ; $5e57: $d2 $eb $0f

    sub l                                         ; $5e5a: $95
    call nc, $e730                                ; $5e5b: $d4 $30 $e7
    cp e                                          ; $5e5e: $bb
    ld c, e                                       ; $5e5f: $4b
    db $d3                                        ; $5e60: $d3
    dec sp                                        ; $5e61: $3b
    ld h, e                                       ; $5e62: $63
    ld [hl], e                                    ; $5e63: $73
    pop hl                                        ; $5e64: $e1
    xor a                                         ; $5e65: $af
    db $db                                        ; $5e66: $db
    ld [$4e41], a                                 ; $5e67: $ea $41 $4e
    ld [hl], d                                    ; $5e6a: $72
    ld [hl], e                                    ; $5e6b: $73
    push de                                       ; $5e6c: $d5
    or d                                          ; $5e6d: $b2
    inc sp                                        ; $5e6e: $33
    sub c                                         ; $5e6f: $91
    xor a                                         ; $5e70: $af
    add $04                                       ; $5e71: $c6 $04
    dec bc                                        ; $5e73: $0b
    ld e, e                                       ; $5e74: $5b
    ld de, $07c7                                  ; $5e75: $11 $c7 $07
    rst $08                                       ; $5e78: $cf
    ret nc                                        ; $5e79: $d0

    inc d                                         ; $5e7a: $14
    inc a                                         ; $5e7b: $3c
    call nz, Call_048_7920                        ; $5e7c: $c4 $20 $79
    ld l, l                                       ; $5e7f: $6d
    adc $ff                                       ; $5e80: $ce $ff
    xor a                                         ; $5e82: $af
    ld d, $95                                     ; $5e83: $16 $95
    add a                                         ; $5e85: $87
    add hl, sp                                    ; $5e86: $39
    and c                                         ; $5e87: $a1
    ld c, d                                       ; $5e88: $4a
    dec de                                        ; $5e89: $1b
    jr jr_048_5ef4                                ; $5e8a: $18 $68

    cp $a8                                        ; $5e8c: $fe $a8
    add hl, sp                                    ; $5e8e: $39
    rst $30                                       ; $5e8f: $f7
    ld a, a                                       ; $5e90: $7f
    ld a, [hl-]                                   ; $5e91: $3a
    sub l                                         ; $5e92: $95
    and b                                         ; $5e93: $a0
    and $b8                                       ; $5e94: $e6 $b8
    ld d, e                                       ; $5e96: $53
    ld l, h                                       ; $5e97: $6c
    sub [hl]                                      ; $5e98: $96
    jp $ef9c                                      ; $5e99: $c3 $9c $ef


    db $fc                                        ; $5e9c: $fc
    add a                                         ; $5e9d: $87
    scf                                           ; $5e9e: $37
    cp c                                          ; $5e9f: $b9
    add hl, hl                                    ; $5ea0: $29
    dec l                                         ; $5ea1: $2d
    ld a, [hl+]                                   ; $5ea2: $2a
    push bc                                       ; $5ea3: $c5
    cp e                                          ; $5ea4: $bb
    ld h, $77                                     ; $5ea5: $26 $77
    ld l, d                                       ; $5ea7: $6a
    ld a, c                                       ; $5ea8: $79
    rst $20                                       ; $5ea9: $e7
    jp z, $bcd2                                   ; $5eaa: $ca $d2 $bc

    pop af                                        ; $5ead: $f1
    cp h                                          ; $5eae: $bc
    add hl, de                                    ; $5eaf: $19
    ld c, l                                       ; $5eb0: $4d
    ld b, c                                       ; $5eb1: $41
    sub [hl]                                      ; $5eb2: $96
    reti                                          ; $5eb3: $d9


    db $f4                                        ; $5eb4: $f4
    sbc l                                         ; $5eb5: $9d
    rst $00                                       ; $5eb6: $c7
    inc b                                         ; $5eb7: $04
    call Call_000_1809                            ; $5eb8: $cd $09 $18
    db $ec                                        ; $5ebb: $ec
    adc h                                         ; $5ebc: $8c
    call z, $f8cd                                 ; $5ebd: $cc $cd $f8
    nop                                           ; $5ec0: $00
    cpl                                           ; $5ec1: $2f
    rst $20                                       ; $5ec2: $e7
    cp c                                          ; $5ec3: $b9
    ld l, e                                       ; $5ec4: $6b

jr_048_5ec5:
    ld c, c                                       ; $5ec5: $49
    ld [hl], c                                    ; $5ec6: $71
    and a                                         ; $5ec7: $a7
    xor e                                         ; $5ec8: $ab
    add [hl]                                      ; $5ec9: $86
    ld l, d                                       ; $5eca: $6a
    ld l, a                                       ; $5ecb: $6f
    ld a, h                                       ; $5ecc: $7c
    or a                                          ; $5ecd: $b7
    db $e4                                        ; $5ece: $e4
    ret                                           ; $5ecf: $c9


    ld d, d                                       ; $5ed0: $52
    ld [hl], $e7                                  ; $5ed1: $36 $e7
    ld e, d                                       ; $5ed3: $5a
    ld c, $a2                                     ; $5ed4: $0e $a2
    cpl                                           ; $5ed6: $2f
    xor d                                         ; $5ed7: $aa
    ld d, d                                       ; $5ed8: $52
    sbc a                                         ; $5ed9: $9f
    or $7a                                        ; $5eda: $f6 $7a
    or [hl]                                       ; $5edc: $b6
    ld d, b                                       ; $5edd: $50
    inc e                                         ; $5ede: $1c
    rst $00                                       ; $5edf: $c7
    ld d, e                                       ; $5ee0: $53
    ld d, $35                                     ; $5ee1: $16 $35
    rla                                           ; $5ee3: $17
    sub l                                         ; $5ee4: $95
    rst $20                                       ; $5ee5: $e7
    cp e                                          ; $5ee6: $bb
    rst $30                                       ; $5ee7: $f7
    ld c, [hl]                                    ; $5ee8: $4e
    and $7d                                       ; $5ee9: $e6 $7d
    ret                                           ; $5eeb: $c9


    adc h                                         ; $5eec: $8c
    sub h                                         ; $5eed: $94
    ld hl, sp+$03                                 ; $5eee: $f8 $03
    xor a                                         ; $5ef0: $af
    rst $20                                       ; $5ef1: $e7
    cpl                                           ; $5ef2: $2f
    inc [hl]                                      ; $5ef3: $34

jr_048_5ef4:
    xor $e4                                       ; $5ef4: $ee $e4
    rst $38                                       ; $5ef6: $ff
    ld d, b                                       ; $5ef7: $50
    cp h                                          ; $5ef8: $bc
    ld e, l                                       ; $5ef9: $5d
    or [hl]                                       ; $5efa: $b6
    ld a, d                                       ; $5efb: $7a
    ld d, h                                       ; $5efc: $54
    ld e, a                                       ; $5efd: $5f
    adc l                                         ; $5efe: $8d
    add c                                         ; $5eff: $81
    db $ec                                        ; $5f00: $ec
    jr nz, jr_048_5ec5                            ; $5f01: $20 $c2

    ldh [$dc], a                                  ; $5f03: $e0 $dc
    adc h                                         ; $5f05: $8c
    or a                                          ; $5f06: $b7
    or a                                          ; $5f07: $b7
    ld c, l                                       ; $5f08: $4d
    dec c                                         ; $5f09: $0d
    sub h                                         ; $5f0a: $94
    dec hl                                        ; $5f0b: $2b
    sbc e                                         ; $5f0c: $9b
    cp $62                                        ; $5f0d: $fe $62
    rst $08                                       ; $5f0f: $cf
    ld d, d                                       ; $5f10: $52
    db $fd                                        ; $5f11: $fd
    sbc d                                         ; $5f12: $9a
    ld a, e                                       ; $5f13: $7b
    xor [hl]                                      ; $5f14: $ae
    sbc a                                         ; $5f15: $9f
    ld b, b                                       ; $5f16: $40
    rst $30                                       ; $5f17: $f7
    halt                                          ; $5f18: $76
    and e                                         ; $5f19: $a3
    ld [$2f03], a                                 ; $5f1a: $ea $03 $2f
    ld [hl], $5b                                  ; $5f1d: $36 $5b
    jp c, $a85b                                   ; $5f1f: $da $5b $a8

    ld a, l                                       ; $5f22: $7d
    jp hl                                         ; $5f23: $e9


    ld h, d                                       ; $5f24: $62
    cp [hl]                                       ; $5f25: $be
    add e                                         ; $5f26: $83
    rst $38                                       ; $5f27: $ff
    add h                                         ; $5f28: $84
    db $e3                                        ; $5f29: $e3
    ld c, l                                       ; $5f2a: $4d
    inc b                                         ; $5f2b: $04
    ld a, d                                       ; $5f2c: $7a
    or c                                          ; $5f2d: $b1
    or b                                          ; $5f2e: $b0
    add h                                         ; $5f2f: $84
    sbc c                                         ; $5f30: $99
    dec h                                         ; $5f31: $25
    ld e, [hl]                                    ; $5f32: $5e
    ldh [rBCPS], a                                ; $5f33: $e0 $68
    adc l                                         ; $5f35: $8d
    ld e, l                                       ; $5f36: $5d
    ret                                           ; $5f37: $c9


    inc l                                         ; $5f38: $2c
    rst $20                                       ; $5f39: $e7
    adc l                                         ; $5f3a: $8d
    ld d, a                                       ; $5f3b: $57
    ld a, [de]                                    ; $5f3c: $1a
    dec sp                                        ; $5f3d: $3b
    ld c, d                                       ; $5f3e: $4a
    dec [hl]                                      ; $5f3f: $35
    rst $20                                       ; $5f40: $e7
    dec sp                                        ; $5f41: $3b
    ld e, l                                       ; $5f42: $5d
    and l                                         ; $5f43: $a5
    sbc d                                         ; $5f44: $9a
    di                                            ; $5f45: $f3
    rst $38                                       ; $5f46: $ff
    db $d3                                        ; $5f47: $d3
    ld [de], a                                    ; $5f48: $12
    rlc e                                         ; $5f49: $cb $03
    push hl                                       ; $5f4b: $e5
    rst $28                                       ; $5f4c: $ef
    sub [hl]                                      ; $5f4d: $96
    db $fc                                        ; $5f4e: $fc
    ld [hl+], a                                   ; $5f4f: $22
    inc bc                                        ; $5f50: $03
    dec sp                                        ; $5f51: $3b
    ld a, l                                       ; $5f52: $7d
    ld a, [c]                                     ; $5f53: $f2
    call $ce61                                    ; $5f54: $cd $61 $ce
    ld [hl], a                                    ; $5f57: $77
    and c                                         ; $5f58: $a1
    ld l, c                                       ; $5f59: $69
    db $dd                                        ; $5f5a: $dd
    adc h                                         ; $5f5b: $8c
    rst $30                                       ; $5f5c: $f7
    or d                                          ; $5f5d: $b2
    ld e, e                                       ; $5f5e: $5b
    ld h, d                                       ; $5f5f: $62
    xor d                                         ; $5f60: $aa
    cpl                                           ; $5f61: $2f
    xor c                                         ; $5f62: $a9
    ld c, c                                       ; $5f63: $49
    jp nz, Jump_000_3400                          ; $5f64: $c2 $00 $34

    ld h, a                                       ; $5f67: $67
    ld [hl+], a                                   ; $5f68: $22
    ld e, a                                       ; $5f69: $5f
    adc l                                         ; $5f6a: $8d
    add hl, bc                                    ; $5f6b: $09
    inc d                                         ; $5f6c: $14
    db $e4                                        ; $5f6d: $e4
    inc h                                         ; $5f6e: $24
    scf                                           ; $5f6f: $37
    ld h, a                                       ; $5f70: $67
    ld [hl+], a                                   ; $5f71: $22
    ld d, b                                       ; $5f72: $50
    and [hl]                                      ; $5f73: $a6
    cpl                                           ; $5f74: $2f
    ld h, l                                       ; $5f75: $65
    inc sp                                        ; $5f76: $33
    ld a, $00                                     ; $5f77: $3e $00
    sub a                                         ; $5f79: $97
    push hl                                       ; $5f7a: $e5
    add hl, bc                                    ; $5f7b: $09
    ld e, a                                       ; $5f7c: $5f
    db $ed                                        ; $5f7d: $ed
    ld b, e                                       ; $5f7e: $43
    dec bc                                        ; $5f7f: $0b
    bit 2, e                                      ; $5f80: $cb $53
    ldh a, [$f0]                                  ; $5f82: $f0 $f0
    ld a, a                                       ; $5f84: $7f
    call $2a25                                    ; $5f85: $cd $25 $2a
    and $50                                       ; $5f88: $e6 $50
    adc l                                         ; $5f8a: $8d
    dec sp                                        ; $5f8b: $3b
    db $d3                                        ; $5f8c: $d3
    cp d                                          ; $5f8d: $ba
    add hl, sp                                    ; $5f8e: $39
    add $c0                                       ; $5f8f: $c6 $c0
    ld [hl], a                                    ; $5f91: $77
    ld l, [hl]                                    ; $5f92: $6e
    ld c, c                                       ; $5f93: $49
    ld hl, sp-$42                                 ; $5f94: $f8 $be
    add hl, sp                                    ; $5f96: $39
    ld d, b                                       ; $5f97: $50
    ld bc, $e7eb                                  ; $5f98: $01 $eb $e7
    cp $4f                                        ; $5f9b: $fe $4f
    db $d3                                        ; $5f9d: $d3
    dec l                                         ; $5f9e: $2d
    ld l, c                                       ; $5f9f: $69
    ld c, h                                       ; $5fa0: $4c
    ret nc                                        ; $5fa1: $d0

Call_048_5fa2:
    adc h                                         ; $5fa2: $8c
    rrca                                          ; $5fa3: $0f
    ld d, a                                       ; $5fa4: $57
    dec sp                                        ; $5fa5: $3b
    ld a, [hl+]                                   ; $5fa6: $2a
    inc a                                         ; $5fa7: $3c
    db $e4                                        ; $5fa8: $e4
    ld [de], a                                    ; $5fa9: $12
    or b                                          ; $5faa: $b0
    inc b                                         ; $5fab: $04
    ei                                            ; $5fac: $fb
    ret nc                                        ; $5fad: $d0

    ld a, h                                       ; $5fae: $7c
    rst $20                                       ; $5faf: $e7
    ld c, e                                       ; $5fb0: $4b
    cp [hl]                                       ; $5fb1: $be
    ld [hl], e                                    ; $5fb2: $73
    ld c, e                                       ; $5fb3: $4b
    ld e, $0b                                     ; $5fb4: $1e $0b
    ld h, c                                       ; $5fb6: $61
    add d                                         ; $5fb7: $82
    and c                                         ; $5fb8: $a1

Call_048_5fb9:
    sbc d                                         ; $5fb9: $9a
    ld e, e                                       ; $5fba: $5b
    ld [de], a                                    ; $5fbb: $12
    cp [hl]                                       ; $5fbc: $be
    ld l, a                                       ; $5fbd: $6f
    adc [hl]                                      ; $5fbe: $8e
    ld c, e                                       ; $5fbf: $4b
    ld d, h                                       ; $5fc0: $54
    call z, $ffb9                                 ; $5fc1: $cc $b9 $ff
    db $d3                                        ; $5fc4: $d3
    or b                                          ; $5fc5: $b0
    cp [hl]                                       ; $5fc6: $be
    call nc, $3ce6                                ; $5fc7: $d4 $e6 $3c
    halt                                          ; $5fca: $76
    and b                                         ; $5fcb: $a0
    call $c839                                    ; $5fcc: $cd $39 $c8
    dec h                                         ; $5fcf: $25
    push bc                                       ; $5fd0: $c5
    add e                                         ; $5fd1: $83
    jr nc, jr_048_601c                            ; $5fd2: $30 $48

    adc l                                         ; $5fd4: $8d
    add c                                         ; $5fd5: $81
    db $ec                                        ; $5fd6: $ec
    db $fc                                        ; $5fd7: $fc
    rst $38                                       ; $5fd8: $ff
    ld a, [hl]                                    ; $5fd9: $7e
    daa                                           ; $5fda: $27
    call nc, Call_048_5c53                        ; $5fdb: $d4 $53 $5c
    ld [hl], d                                    ; $5fde: $72
    sbc e                                         ; $5fdf: $9b
    pop af                                        ; $5fe0: $f1
    or $b6                                        ; $5fe1: $f6 $b6
    xor c                                         ; $5fe3: $a9
    add c                                         ; $5fe4: $81
    ld [hl], d                                    ; $5fe5: $72
    ld h, l                                       ; $5fe6: $65
    db $d3                                        ; $5fe7: $d3
    ld e, a                                       ; $5fe8: $5f
    db $ec                                        ; $5fe9: $ec
    ld c, c                                       ; $5fea: $49
    dec l                                         ; $5feb: $2d
    jr c, jr_048_6058                             ; $5fec: $38 $6a

    xor a                                         ; $5fee: $af
    sub h                                         ; $5fef: $94
    and h                                         ; $5ff0: $a4
    ld b, l                                       ; $5ff1: $45
    ld c, l                                       ; $5ff2: $4d
    halt                                          ; $5ff3: $76
    call nc, $9701                                ; $5ff4: $d4 $01 $97
    push hl                                       ; $5ff7: $e5
    sbc l                                         ; $5ff8: $9d
    inc c                                         ; $5ff9: $0c
    ld e, $f2                                     ; $5ffa: $1e $f2
    jp hl                                         ; $5ffc: $e9


    ld a, a                                       ; $5ffd: $7f
    ld a, [c]                                     ; $5ffe: $f2
    adc a                                         ; $5fff: $8f
    ld l, l                                       ; $6000: $6d
    ld c, a                                       ; $6001: $4f
    dec de                                        ; $6002: $1b
    db $e4                                        ; $6003: $e4
    ldh a, [$ae]                                  ; $6004: $f0 $ae
    sub d                                         ; $6006: $92
    pop bc                                        ; $6007: $c1
    ld a, a                                       ; $6008: $7f
    and d                                         ; $6009: $a2
    ld a, [hl-]                                   ; $600a: $3a
    nop                                           ; $600b: $00
    ld d, a                                       ; $600c: $57
    adc l                                         ; $600d: $8d
    add a                                         ; $600e: $87
    ld l, d                                       ; $600f: $6a
    cp [hl]                                       ; $6010: $be
    dec bc                                        ; $6011: $0b
    ld a, [hl]                                    ; $6012: $7e

jr_048_6013:
    add d                                         ; $6013: $82
    and [hl]                                      ; $6014: $a6
    ld d, d                                       ; $6015: $52
    jp c, Jump_000_3a0c                           ; $6016: $da $0c $3a

    sbc e                                         ; $6019: $9b
    jp hl                                         ; $601a: $e9


    ld a, b                                       ; $601b: $78

jr_048_601c:
    ld a, e                                       ; $601c: $7b
    and [hl]                                      ; $601d: $a6
    and h                                         ; $601e: $a4
    cp b                                          ; $601f: $b8
    add c                                         ; $6020: $81
    add hl, de                                    ; $6021: $19
    xor c                                         ; $6022: $a9
    add hl, hl                                    ; $6023: $29
    ld l, l                                       ; $6024: $6d
    ld d, b                                       ; $6025: $50
    ld [hl], e                                    ; $6026: $73
    rra                                           ; $6027: $1f
    ld e, d                                       ; $6028: $5a
    ld e, b                                       ; $6029: $58
    ld e, [hl]                                    ; $602a: $5e
    ld c, e                                       ; $602b: $4b
    adc d                                         ; $602c: $8a
    cp e                                          ; $602d: $bb
    ld b, h                                       ; $602e: $44
    or a                                          ; $602f: $b7
    and $c4                                       ; $6030: $e6 $c4
    rlca                                          ; $6032: $07
    sub a                                         ; $6033: $97
    push hl                                       ; $6034: $e5
    db $fd                                        ; $6035: $fd
    db $f4                                        ; $6036: $f4
    and l                                         ; $6037: $a5
    di                                            ; $6038: $f3
    xor a                                         ; $6039: $af
    ld e, h                                       ; $603a: $5c
    sbc d                                         ; $603b: $9a
    pop de                                        ; $603c: $d1
    ld a, h                                       ; $603d: $7c
    add a                                         ; $603e: $87
    add hl, hl                                    ; $603f: $29
    sub b                                         ; $6040: $90
    sbc c                                         ; $6041: $99
    sbc h                                         ; $6042: $9c
    add b                                         ; $6043: $80
    pop bc                                        ; $6044: $c1
    sbc [hl]                                      ; $6045: $9e
    ei                                            ; $6046: $fb
    adc [hl]                                      ; $6047: $8e
    rlca                                          ; $6048: $07
    add h                                         ; $6049: $84

jr_048_604a:
    ld bc, $ef34                                  ; $604a: $01 $34 $ef
    jr c, jr_048_6013                             ; $604d: $38 $c4

    ld [hl], e                                    ; $604f: $73
    rst $38                                       ; $6050: $ff
    daa                                           ; $6051: $27
    adc [hl]                                      ; $6052: $8e
    rst $30                                       ; $6053: $f7
    or [hl]                                       ; $6054: $b6
    add hl, de                                    ; $6055: $19
    add hl, hl                                    ; $6056: $29
    ld a, b                                       ; $6057: $78

jr_048_6058:
    adc b                                         ; $6058: $88
    ld b, c                                       ; $6059: $41
    ld l, d                                       ; $605a: $6a
    inc c                                         ; $605b: $0c
    db $e4                                        ; $605c: $e4
    ld c, [hl]                                    ; $605d: $4e
    and [hl]                                      ; $605e: $a6
    and $91                                       ; $605f: $e6 $91
    rla                                           ; $6061: $17
    sub [hl]                                      ; $6062: $96
    ld [hl], a                                    ; $6063: $77
    ld a, [hl+]                                   ; $6064: $2a
    ret                                           ; $6065: $c9


    cp c                                          ; $6066: $b9
    sub [hl]                                      ; $6067: $96
    ei                                            ; $6068: $fb
    add hl, hl                                    ; $6069: $29
    ld d, h                                       ; $606a: $54
    ld [hl], $7d                                  ; $606b: $36 $7d
    cpl                                           ; $606d: $2f
    and $1d                                       ; $606e: $e6 $1d
    ld d, h                                       ; $6070: $54
    ld e, h                                       ; $6071: $5c
    ld [$4ac2], a                                 ; $6072: $ea $c2 $4a
    push de                                       ; $6075: $d5
    call c, $8d17                                 ; $6076: $dc $17 $8d
    cp a                                          ; $6079: $bf
    db $db                                        ; $607a: $db
    inc [hl]                                      ; $607b: $34
    inc hl                                        ; $607c: $23
    dec d                                         ; $607d: $15
    rst $28                                       ; $607e: $ef
    dec h                                         ; $607f: $25
    inc l                                         ; $6080: $2c
    xor e                                         ; $6081: $ab
    sbc l                                         ; $6082: $9d
    ld c, h                                       ; $6083: $4c
    db $ed                                        ; $6084: $ed
    daa                                           ; $6085: $27
    cp e                                          ; $6086: $bb
    call nc, $fe46                                ; $6087: $d4 $46 $fe
    pop af                                        ; $608a: $f1
    ld sp, hl                                     ; $608b: $f9
    adc $ff                                       ; $608c: $ce $ff
    ld c, a                                       ; $608e: $4f
    rst $20                                       ; $608f: $e7
    rrca                                          ; $6090: $0f
    rrca                                          ; $6091: $0f
    cp c                                          ; $6092: $b9
    sub e                                         ; $6093: $93
    jp c, $b541                                   ; $6094: $da $41 $b5

    sub e                                         ; $6097: $93
    xor c                                         ; $6098: $a9
    dec b                                         ; $6099: $05
    ld c, $2a                                     ; $609a: $0e $2a
    sbc [hl]                                      ; $609c: $9e
    rst $00                                       ; $609d: $c7
    adc $1b                                       ; $609e: $ce $1b
    jr jr_048_604a                                ; $60a0: $18 $a8

    ld l, [hl]                                    ; $60a2: $6e
    add c                                         ; $60a3: $81
    adc a                                         ; $60a4: $8f
    ld [hl], a                                    ; $60a5: $77
    db $db                                        ; $60a6: $db
    adc e                                         ; $60a7: $8b
    ld h, [hl]                                    ; $60a8: $66
    or h                                          ; $60a9: $b4
    ld d, e                                       ; $60aa: $53
    ld [hl], a                                    ; $60ab: $77
    ld l, $00                                     ; $60ac: $2e $00
    call $87f1                                    ; $60ae: $cd $f1 $87
    add a                                         ; $60b1: $87
    ld c, e                                       ; $60b2: $4b
    inc l                                         ; $60b3: $2c
    rst $28                                       ; $60b4: $ef
    ld h, h                                       ; $60b5: $64
    cp h                                          ; $60b6: $bc
    ld [de], a                                    ; $60b7: $12
    and $ce                                       ; $60b8: $e6 $ce
    add $17                                       ; $60ba: $c6 $17
    di                                            ; $60bc: $f3
    adc [hl]                                      ; $60bd: $8e
    ld e, d                                       ; $60be: $5a
    ld hl, sp-$63                                 ; $60bf: $f8 $9d
    dec b                                         ; $60c1: $05
    ld e, l                                       ; $60c2: $5d
    ld c, c                                       ; $60c3: $49
    ld [hl], b                                    ; $60c4: $70
    sub b                                         ; $60c5: $90
    sbc e                                         ; $60c6: $9b
    rla                                           ; $60c7: $17
    inc sp                                        ; $60c8: $33

jr_048_60c9:
    xor l                                         ; $60c9: $ad
    ld d, $74                                     ; $60ca: $16 $74
    and a                                         ; $60cc: $a7
    sub [hl]                                      ; $60cd: $96
    ld [hl], a                                    ; $60ce: $77
    ld [hl-], a                                   ; $60cf: $32
    ld e, $f8                                     ; $60d0: $1e $f8
    push af                                       ; $60d2: $f5
    ld [hl], e                                    ; $60d3: $73
    rst $38                                       ; $60d4: $ff
    and a                                         ; $60d5: $a7
    dec b                                         ; $60d6: $05
    dec e                                         ; $60d7: $1d
    xor d                                         ; $60d8: $aa
    adc e                                         ; $60d9: $8b
    db $db                                        ; $60da: $db
    and $96                                       ; $60db: $e6 $96
    and h                                         ; $60dd: $a4
    ld [hl], $23                                  ; $60de: $36 $23
    rst $18                                       ; $60e0: $df
    ld sp, hl                                     ; $60e1: $f9
    xor $5c                                       ; $60e2: $ee $5c
    and b                                         ; $60e4: $a0
    db $e4                                        ; $60e5: $e4
    rla                                           ; $60e6: $17
    cp [hl]                                       ; $60e7: $be
    or $73                                        ; $60e8: $f6 $73
    dec l                                         ; $60ea: $2d
    rst $30                                       ; $60eb: $f7
    call c, $3c77                                 ; $60ec: $dc $77 $3c
    jr nz, @+$0e                                  ; $60ef: $20 $0c

    and b                                         ; $60f1: $a0
    ld hl, sp+$00                                 ; $60f2: $f8 $00
    cpl                                           ; $60f4: $2f
    jr jr_048_612e                                ; $60f5: $18 $37

    ld [hl], a                                    ; $60f7: $77
    ld [$3322], a                                 ; $60f8: $ea $22 $33
    ld a, [de]                                    ; $60fb: $1a
    jr nc, jr_048_60c9                            ; $60fc: $30 $cb

    add hl, hl                                    ; $60fe: $29
    ld l, l                                       ; $60ff: $6d
    ld d, b                                       ; $6100: $50
    di                                            ; $6101: $f3
    ld h, d                                       ; $6102: $62
    sub a                                         ; $6103: $97
    ld b, [hl]                                    ; $6104: $46
    inc h                                         ; $6105: $24
    ld h, $de                                     ; $6106: $26 $de
    ld e, [hl]                                    ; $6108: $5e
    db $fc                                        ; $6109: $fc
    inc b                                         ; $610a: $04
    sbc d                                         ; $610b: $9a
    ld b, e                                       ; $610c: $43
    or l                                          ; $610d: $b5
    ld [hl], $27                                  ; $610e: $36 $27
    ld d, h                                       ; $6110: $54
    ld e, e                                       ; $6111: $5b
    ld [bc], a                                    ; $6112: $02
    jp nz, Jump_048_7640                          ; $6113: $c2 $40 $76

    sbc $40                                       ; $6116: $de $40
    ld a, h                                       ; $6118: $7c
    nop                                           ; $6119: $00
    rst $10                                       ; $611a: $d7
    db $e4                                        ; $611b: $e4
    add h                                         ; $611c: $84
    and $b8                                       ; $611d: $e6 $b8
    adc e                                         ; $611f: $8b
    ld a, [hl]                                    ; $6120: $7e
    rst $30                                       ; $6121: $f7
    and e                                         ; $6122: $a3
    ld [hl], c                                    ; $6123: $71
    rlca                                          ; $6124: $07
    sub c                                         ; $6125: $91
    ld [hl], c                                    ; $6126: $71
    inc sp                                        ; $6127: $33
    ld a, $00                                     ; $6128: $3e $00
    ld l, a                                       ; $612a: $6f
    and e                                         ; $612b: $a3
    sub $28                                       ; $612c: $d6 $28

jr_048_612e:
    ret nc                                        ; $612e: $d0

    daa                                           ; $612f: $27
    cp a                                          ; $6130: $bf
    and $50                                       ; $6131: $e6 $50
    ld c, $98                                     ; $6133: $0e $98
    push hl                                       ; $6135: $e5
    jp nc, Jump_000_268c                          ; $6136: $d2 $8c $26

    call nc, $2c5f                                ; $6139: $d4 $5f $2c
    or b                                          ; $613c: $b0
    pop af                                        ; $613d: $f1
    add a                                         ; $613e: $87
    add a                                         ; $613f: $87
    ld a, e                                       ; $6140: $7b
    dec de                                        ; $6141: $1b
    or l                                          ; $6142: $b5
    ld b, [hl]                                    ; $6143: $46
    add c                                         ; $6144: $81
    ld a, $f9                                     ; $6145: $3e $f9
    dec hl                                        ; $6147: $2b
    ld a, e                                       ; $6148: $7b
    dec de                                        ; $6149: $1b
    or l                                          ; $614a: $b5
    ld b, [hl]                                    ; $614b: $46
    add c                                         ; $614c: $81
    ld a, $f9                                     ; $614d: $3e $f9
    jr c, @-$70                                   ; $614f: $38 $8e

    db $e3                                        ; $6151: $e3
    dec hl                                        ; $6152: $2b
    rlca                                          ; $6153: $07
    ld l, a                                       ; $6154: $6f
    ld d, a                                       ; $6155: $57
    ld [hl], e                                    ; $6156: $73
    ret                                           ; $6157: $c9


    ld d, c                                       ; $6158: $51
    call c, $d8bc                                 ; $6159: $dc $bc $d8
    and l                                         ; $615c: $a5
    ld de, $b989                                  ; $615d: $11 $89 $b9
    ld e, b                                       ; $6160: $58
    ld e, b                                       ; $6161: $58
    ld e, $aa                                     ; $6162: $1e $aa
    or l                                          ; $6164: $b5
    cp c                                          ; $6165: $b9
    sub [hl]                                      ; $6166: $96
    and $7b                                       ; $6167: $e6 $7b
    xor $4c                                       ; $6169: $ee $4c
    db $e4                                        ; $616b: $e4
    xor e                                         ; $616c: $ab
    ld sp, $a2c1                                  ; $616d: $31 $c1 $a2
    ld a, [c]                                     ; $6170: $f2
    add d                                         ; $6171: $82
    adc [hl]                                      ; $6172: $8e
    cp e                                          ; $6173: $bb
    add sp, -$7d                                  ; $6174: $e8 $83
    and $7c                                       ; $6176: $e6 $7c
    ld [hl], l                                    ; $6178: $75
    inc sp                                        ; $6179: $33
    ld a, $00                                     ; $617a: $3e $00
    ld l, a                                       ; $617c: $6f
    ld [hl], h                                    ; $617d: $74
    pop de                                        ; $617e: $d1
    rst $28                                       ; $617f: $ef
    ld a, [hl]                                    ; $6180: $7e
    inc [hl]                                      ; $6181: $34
    xor $20                                       ; $6182: $ee $20
    ld [hl-], a                                   ; $6184: $32
    ld l, [hl]                                    ; $6185: $6e
    add $db                                       ; $6186: $c6 $db
    dec de                                        ; $6188: $1b
    db $e4                                        ; $6189: $e4
    jr z, jr_048_61fa                             ; $618a: $28 $6e

    add $07                                       ; $618c: $c6 $07
    ld l, a                                       ; $618e: $6f
    ld d, a                                       ; $618f: $57
    ld [hl], e                                    ; $6190: $73
    ret                                           ; $6191: $c9


    ld d, c                                       ; $6192: $51
    call c, $d8bc                                 ; $6193: $dc $bc $d8
    and l                                         ; $6196: $a5
    ld de, $8989                                  ; $6197: $11 $89 $89
    rrca                                          ; $619a: $0f
    xor a                                         ; $619b: $af
    jp $2c43                                      ; $619c: $c3 $43 $2c


    rst $28                                       ; $619f: $ef
    ld b, e                                       ; $61a0: $43
    rla                                           ; $61a1: $17
    cp e                                          ; $61a2: $bb
    inc [hl]                                      ; $61a3: $34
    ld [hl+], a                                   ; $61a4: $22
    ld sp, $f6f1                                  ; $61a5: $31 $f1 $f6
    halt                                          ; $61a8: $76
    rla                                           ; $61a9: $17
    db $fd                                        ; $61aa: $fd
    ld [hl], d                                    ; $61ab: $72
    ld [hl], e                                    ; $61ac: $73
    ld l, c                                       ; $61ad: $69
    ld b, [hl]                                    ; $61ae: $46
    di                                            ; $61af: $f3
    db $dd                                        ; $61b0: $dd
    dec de                                        ; $61b1: $1b
    rst $18                                       ; $61b2: $df
    dec l                                         ; $61b3: $2d
    ld a, c                                       ; $61b4: $79
    or d                                          ; $61b5: $b2
    sub h                                         ; $61b6: $94
    cp d                                          ; $61b7: $ba
    ld c, d                                       ; $61b8: $4a
    db $fc                                        ; $61b9: $fc
    ld e, [hl]                                    ; $61ba: $5e
    rst $08                                       ; $61bb: $cf
    ld d, $5a                                     ; $61bc: $16 $5a
    ret c                                         ; $61be: $d8

    adc d                                         ; $61bf: $8a
    ld a, b                                       ; $61c0: $78
    ld l, l                                       ; $61c1: $6d
    ld l, $ac                                     ; $61c2: $2e $ac
    xor h                                         ; $61c4: $ac
    sbc [hl]                                      ; $61c5: $9e
    ld e, c                                       ; $61c6: $59
    ld c, [hl]                                    ; $61c7: $4e
    sbc e                                         ; $61c8: $9b
    or c                                          ; $61c9: $b1
    db $fc                                        ; $61ca: $fc
    ld d, c                                       ; $61cb: $51
    ld c, c                                       ; $61cc: $49
    adc c                                         ; $61cd: $89
    ccf                                           ; $61ce: $3f
    nop                                           ; $61cf: $00
    cpl                                           ; $61d0: $2f
    ld b, e                                       ; $61d1: $43
    ld d, e                                       ; $61d2: $53
    ld a, [$7c73]                                 ; $61d3: $fa $73 $7c
    nop                                           ; $61d6: $00
    ld l, a                                       ; $61d7: $6f
    sbc e                                         ; $61d8: $9b
    pop de                                        ; $61d9: $d1
    ld d, b                                       ; $61da: $50
    dec l                                         ; $61db: $2d
    inc l                                         ; $61dc: $2c
    rst $28                                       ; $61dd: $ef
    adc l                                         ; $61de: $8d
    rst $28                                       ; $61df: $ef
    sub [hl]                                      ; $61e0: $96
    inc a                                         ; $61e1: $3c
    ld e, c                                       ; $61e2: $59
    ld c, d                                       ; $61e3: $4a
    db $fd                                        ; $61e4: $fd
    and l                                         ; $61e5: $a5
    sbc c                                         ; $61e6: $99
    cp [hl]                                       ; $61e7: $be
    ld [hl], d                                    ; $61e8: $72
    nop                                           ; $61e9: $00
    rst $28                                       ; $61ea: $ef
    db $fd                                        ; $61eb: $fd
    cp c                                          ; $61ec: $b9
    and l                                         ; $61ed: $a5
    cp c                                          ; $61ee: $b9
    sub [hl]                                      ; $61ef: $96
    dec bc                                        ; $61f0: $0b
    or c                                          ; $61f1: $b1
    inc [hl]                                      ; $61f2: $34
    db $d3                                        ; $61f3: $d3
    ld l, d                                       ; $61f4: $6a
    ld b, c                                       ; $61f5: $41
    rla                                           ; $61f6: $17
    sbc c                                         ; $61f7: $99
    pop de                                        ; $61f8: $d1
    and h                                         ; $61f9: $a4

jr_048_61fa:
    sub e                                         ; $61fa: $93
    inc a                                         ; $61fb: $3c
    ld h, b                                       ; $61fc: $60
    sub [hl]                                      ; $61fd: $96
    dec sp                                        ; $61fe: $3b
    rst $38                                       ; $61ff: $ff
    db $f4                                        ; $6200: $f4
    and l                                         ; $6201: $a5
    add l                                         ; $6202: $85
    push hl                                       ; $6203: $e5
    add c                                         ; $6204: $81
    ld a, [bc]                                    ; $6205: $0a
    rst $18                                       ; $6206: $df

jr_048_6207:
    add hl, sp                                    ; $6207: $39
    adc l                                         ; $6208: $8d
    dec sp                                        ; $6209: $3b
    or a                                          ; $620a: $b7
    and h                                         ; $620b: $a4
    adc l                                         ; $620c: $8d
    sbc e                                         ; $620d: $9b
    pop af                                        ; $620e: $f1
    ld e, [hl]                                    ; $620f: $5e
    inc [hl]                                      ; $6210: $34
    and e                                         ; $6211: $a3
    sub l                                         ; $6212: $95
    halt                                          ; $6213: $76
    add $20                                       ; $6214: $c6 $20
    rla                                           ; $6216: $17
    ld e, c                                       ; $6217: $59
    ld h, d                                       ; $6218: $62
    xor c                                         ; $6219: $a9
    cp c                                          ; $621a: $b9
    rra                                           ; $621b: $1f
    xor l                                         ; $621c: $ad
    inc [hl]                                      ; $621d: $34
    sub l                                         ; $621e: $95
    push de                                       ; $621f: $d5
    cp d                                          ; $6220: $ba
    inc [hl]                                      ; $6221: $34
    xor $e4                                       ; $6222: $ee $e4
    adc a                                         ; $6224: $8f
    sbc d                                         ; $6225: $9a
    pop af                                        ; $6226: $f1
    xor [hl]                                      ; $6227: $ae
    ld [hl], a                                    ; $6228: $77
    pop de                                        ; $6229: $d1
    cpl                                           ; $622a: $2f
    rst $28                                       ; $622b: $ef
    call c, $d699                                 ; $622c: $dc $99 $d6
    ld l, l                                       ; $622f: $6d
    xor $54                                       ; $6230: $ee $54
    ld l, [hl]                                    ; $6232: $6e
    adc [hl]                                      ; $6233: $8e
    dec sp                                        ; $6234: $3b
    rla                                           ; $6235: $17
    db $d3                                        ; $6236: $d3
    scf                                           ; $6237: $37
    db $e3                                        ; $6238: $e3
    inc bc                                        ; $6239: $03
    cpl                                           ; $623a: $2f
    ld b, e                                       ; $623b: $43
    ld l, e                                       ; $623c: $6b
    ld [hl], e                                    ; $623d: $73
    ld e, $0b                                     ; $623e: $1e $0b
    push af                                       ; $6240: $f5
    ld h, d                                       ; $6241: $62
    cp $a7                                        ; $6242: $fe $a7
    inc l                                         ; $6244: $2c
    push af                                       ; $6245: $f5
    ld h, d                                       ; $6246: $62
    cp $47                                        ; $6247: $fe $47
    db $10                                        ; $6249: $10
    add d                                         ; $624a: $82
    ld c, $d2                                     ; $624b: $0e $d2
    sub l                                         ; $624d: $95
    ld [hl], c                                    ; $624e: $71
    inc e                                         ; $624f: $1c
    rrca                                          ; $6250: $0f
    and d                                         ; $6251: $a2
    jp nz, Jump_048_6ab1                          ; $6252: $c2 $b1 $6a

    and [hl]                                      ; $6255: $a6
    ld [hl], l                                    ; $6256: $75
    push de                                       ; $6257: $d5
    ld c, [hl]                                    ; $6258: $4e
    ld h, [hl]                                    ; $6259: $66
    or h                                          ; $625a: $b4
    rst $10                                       ; $625b: $d7

jr_048_625c:
    or e                                          ; $625c: $b3
    add l                                         ; $625d: $85
    and $5a                                       ; $625e: $e6 $5a
    ld l, $fc                                     ; $6260: $2e $fc
    adc [hl]                                      ; $6262: $8e
    rst $20                                       ; $6263: $e7
    ld hl, sp+$00                                 ; $6264: $f8 $00
    or a                                          ; $6266: $b7
    cp l                                          ; $6267: $bd
    ld b, d                                       ; $6268: $42
    jr jr_048_6207                                ; $6269: $18 $9c

    sbc e                                         ; $626b: $9b
    ld [hl], e                                    ; $626c: $73
    dec l                                         ; $626d: $2d
    rst $30                                       ; $626e: $f7
    add $77                                       ; $626f: $c6 $77
    ld c, e                                       ; $6271: $4b
    sbc [hl]                                      ; $6272: $9e
    inc l                                         ; $6273: $2c
    ld h, l                                       ; $6274: $65
    ld [hl], e                                    ; $6275: $73
    sbc $74                                       ; $6276: $de $74
    di                                            ; $6278: $f3
    ld h, d                                       ; $6279: $62
    ld [bc], a                                    ; $627a: $02
    ld b, $69                                     ; $627b: $06 $69
    db $e3                                        ; $627d: $e3
    rst $08                                       ; $627e: $cf
    ld a, e                                       ; $627f: $7b
    cp [hl]                                       ; $6280: $be
    inc h                                         ; $6281: $24
    ld c, e                                       ; $6282: $4b
    ld e, $0b                                     ; $6283: $1e $0b
    ld [hl], c                                    ; $6285: $71
    ld l, a                                       ; $6286: $6f
    dec sp                                        ; $6287: $3b
    nop                                           ; $6288: $00
    rst $10                                       ; $6289: $d7
    cp e                                          ; $628a: $bb
    or b                                          ; $628b: $b0
    ld [bc], a                                    ; $628c: $02
    xor a                                         ; $628d: $af
    call $4b69                                    ; $628e: $cd $69 $4b
    ret nc                                        ; $6291: $d0

    sbc l                                         ; $6292: $9d
    ld a, [bc]                                    ; $6293: $0a
    and $fe                                       ; $6294: $e6 $fe
    ld c, a                                       ; $6296: $4f
    di                                            ; $6297: $f3
    sbc l                                         ; $6298: $9d
    ldh a, [$0b]                                  ; $6299: $f0 $0b
    ld [c], a                                     ; $629b: $e2
    inc bc                                        ; $629c: $03
    rst $10                                       ; $629d: $d7
    db $e4                                        ; $629e: $e4
    adc $bf                                       ; $629f: $ce $bf
    ld [hl], d                                    ; $62a1: $72
    cp [hl]                                       ; $62a2: $be
    dec sp                                        ; $62a3: $3b
    ld h, e                                       ; $62a4: $63
    ld h, l                                       ; $62a5: $65
    ld d, e                                       ; $62a6: $53
    ld hl, sp+$05                                 ; $62a7: $f8 $05
    ld [hl], c                                    ; $62a9: $71
    inc e                                         ; $62aa: $1c
    rrca                                          ; $62ab: $0f
    push hl                                       ; $62ac: $e5
    jp nz, $030a                                  ; $62ad: $c2 $0a $03

    xor b                                         ; $62b0: $a8
    cp b                                          ; $62b1: $b8
    ld h, h                                       ; $62b2: $64
    xor $4f                                       ; $62b3: $ee $4f
    ccf                                           ; $62b5: $3f
    xor $dc                                       ; $62b6: $ee $dc
    ld d, [hl]                                    ; $62b8: $56
    rrca                                          ; $62b9: $0f
    inc d                                         ; $62ba: $14
    sub h                                         ; $62bb: $94
    sbc e                                         ; $62bc: $9b
    pop af                                        ; $62bd: $f1
    ld bc, $6a4f                                  ; $62be: $01 $4f $6a
    or l                                          ; $62c1: $b5
    and b                                         ; $62c2: $a0
    ld c, e                                       ; $62c3: $4b
    inc l                                         ; $62c4: $2c
    rst $28                                       ; $62c5: $ef
    ld b, a                                       ; $62c6: $47
    pop hl                                        ; $62c7: $e1
    rst $38                                       ; $62c8: $ff
    nop                                           ; $62c9: $00
    sbc b                                         ; $62ca: $98
    pop af                                        ; $62cb: $f1
    cp [hl]                                       ; $62cc: $be
    ld l, b                                       ; $62cd: $68
    adc d                                         ; $62ce: $8a
    ld d, c                                       ; $62cf: $51
    ld c, a                                       ; $62d0: $4f
    ret nc                                        ; $62d1: $d0

    jr jr_048_625c                                ; $62d2: $18 $88

    ld a, b                                       ; $62d4: $78
    adc d                                         ; $62d5: $8a
    call Call_048_62f2                            ; $62d6: $cd $f2 $62
    ret nz                                        ; $62d9: $c0

    ld d, $74                                     ; $62da: $16 $74
    sbc b                                         ; $62dc: $98
    di                                            ; $62dd: $f3
    ld e, l                                       ; $62de: $5d
    ldh [$a0], a                                  ; $62df: $e0 $a0
    ld [c], a                                     ; $62e1: $e2
    adc [hl]                                      ; $62e2: $8e
    db $10                                        ; $62e3: $10
    ld e, $32                                     ; $62e4: $1e $32
    ld h, $88                                     ; $62e6: $26 $88
    rrca                                          ; $62e8: $0f
    rst $10                                       ; $62e9: $d7
    db $e4                                        ; $62ea: $e4
    jp nz, $030a                                  ; $62eb: $c2 $0a $03

    call Call_000_305f                            ; $62ee: $cd $5f $30
    or e                                          ; $62f1: $b3

Call_048_62f2:
    ld e, h                                       ; $62f2: $5c
    add h                                         ; $62f3: $84
    ld b, c                                       ; $62f4: $41
    ld l, $fc                                     ; $62f5: $2e $fc
    ld e, a                                       ; $62f7: $5f
    db $e4                                        ; $62f8: $e4
    rla                                           ; $62f9: $17
    sub l                                         ; $62fa: $95
    rla                                           ; $62fb: $17
    ld h, c                                       ; $62fc: $61
    sub b                                         ; $62fd: $90
    dec hl                                        ; $62fe: $2b
    add d                                         ; $62ff: $82
    and $74                                       ; $6300: $e6 $74
    dec d                                         ; $6302: $15
    db $fd                                        ; $6303: $fd
    xor a                                         ; $6304: $af
    cp b                                          ; $6305: $b8
    inc h                                         ; $6306: $24

jr_048_6307:
    cp $00                                        ; $6307: $fe $00
    xor a                                         ; $6309: $af
    ld h, a                                       ; $630a: $67
    dec bc                                        ; $630b: $0b
    xor c                                         ; $630c: $a9
    ld c, c                                       ; $630d: $49
    ld c, e                                       ; $630e: $4b
    cp $9f                                        ; $630f: $fe $9f
    add [hl]                                      ; $6311: $86
    ld l, d                                       ; $6312: $6a
    sbc b                                         ; $6313: $98
    di                                            ; $6314: $f3
    db $dd                                        ; $6315: $dd
    di                                            ; $6316: $f3
    dec h                                         ; $6317: $25
    ld e, c                                       ; $6318: $59
    ld d, d                                       ; $6319: $52
    pop af                                        ; $631a: $f1
    sbc $c3                                       ; $631b: $de $c3
    jr nz, jr_048_6346                            ; $631d: $20 $27

    or l                                          ; $631f: $b5
    add hl, hl                                    ; $6320: $29
    db $fd                                        ; $6321: $fd
    and l                                         ; $6322: $a5
    sbc c                                         ; $6323: $99
    ld e, [hl]                                    ; $6324: $5e
    db $f4                                        ; $6325: $f4
    set 6, e                                      ; $6326: $cb $f3
    ld h, [hl]                                    ; $6328: $66
    inc [hl]                                      ; $6329: $34
    ld d, a                                       ; $632a: $57
    sbc e                                         ; $632b: $9b
    inc d                                         ; $632c: $14
    jr nc, jr_048_6307                            ; $632d: $30 $d8

    add hl, de                                    ; $632f: $19
    add e                                         ; $6330: $83
    adc h                                         ; $6331: $8c
    rrca                                          ; $6332: $0f
    ld l, a                                       ; $6333: $6f
    adc b                                         ; $6334: $88
    add c                                         ; $6335: $81
    ld d, b                                       ; $6336: $50
    pop bc                                        ; $6337: $c1
    jp Jump_048_473d                              ; $6338: $c3 $3d $47


    jr z, jr_048_634f                             ; $633b: $28 $12

    db $fd                                        ; $633d: $fd
    and [hl]                                      ; $633e: $a6
    rst $38                                       ; $633f: $ff
    or h                                          ; $6340: $b4
    rra                                           ; $6341: $1f
    call $a777                                    ; $6342: $cd $77 $a7
    add d                                         ; $6345: $82

jr_048_6346:
    ret                                           ; $6346: $c9


    inc de                                        ; $6347: $13
    ld b, $3c                                     ; $6348: $06 $3c
    xor $c8                                       ; $634a: $ee $c8
    ld h, h                                       ; $634c: $64
    ld d, e                                       ; $634d: $53
    db $fc                                        ; $634e: $fc

jr_048_634f:
    ld bc, $31d7                                  ; $634f: $01 $d7 $31
    db $10                                        ; $6352: $10
    cp a                                          ; $6353: $bf
    cp l                                          ; $6354: $bd
    ld l, l                                       ; $6355: $6d
    ld b, [hl]                                    ; $6356: $46

Jump_048_6357:
    ccf                                           ; $6357: $3f
    jp c, $7919                                   ; $6358: $da $19 $79

    ld bc, $4b06                                  ; $635b: $01 $06 $4b
    inc l                                         ; $635e: $2c
    rrca                                          ; $635f: $0f
    ld [hl], e                                    ; $6360: $73
    cp [hl]                                       ; $6361: $be
    db $d3                                        ; $6362: $d3
    ld d, l                                       ; $6363: $55
    ld d, a                                       ; $6364: $57
    ld c, $d7                                     ; $6365: $0e $d7
    db $e4                                        ; $6367: $e4
    adc $bf                                       ; $6368: $ce $bf
    ld [hl], d                                    ; $636a: $72
    ld h, c                                       ; $636b: $61
    ld a, c                                       ; $636c: $79
    ld l, a                                       ; $636d: $6f
    ld a, h                                       ; $636e: $7c
    or a                                          ; $636f: $b7
    db $e4                                        ; $6370: $e4
    ret                                           ; $6371: $c9


    ld d, d                                       ; $6372: $52
    ld [$cd2f], a                                 ; $6373: $ea $2f $cd
    ld [hl], h                                    ; $6376: $74
    ld a, h                                       ; $6377: $7c
    nop                                           ; $6378: $00
    ld d, a                                       ; $6379: $57
    adc l                                         ; $637a: $8d
    ld [hl], a                                    ; $637b: $77
    ld b, [hl]                                    ; $637c: $46
    ld e, $e6                                     ; $637d: $1e $e6
    ld a, h                                       ; $637f: $7c
    rst $30                                       ; $6380: $f7
    ld a, h                                       ; $6381: $7c
    ld c, c                                       ; $6382: $49
    sub [hl]                                      ; $6383: $96
    sub h                                         ; $6384: $94
    ld hl, sp-$13                                 ; $6385: $f8 $ed
    xor d                                         ; $6387: $aa
    pop af                                        ; $6388: $f1
    adc $df                                       ; $6389: $ce $df
    reti                                          ; $638b: $d9


    cp c                                          ; $638c: $b9
    ld e, d                                       ; $638d: $5a
    and h                                         ; $638e: $a4
    sub $e6                                       ; $638f: $d6 $e6
    ld e, d                                       ; $6391: $5a
    ld d, d                                       ; $6392: $52
    call c, $8cc0                                 ; $6393: $dc $c0 $8c
    call nc, Call_048_5fa2                        ; $6396: $d4 $a2 $5f
    ld l, [hl]                                    ; $6399: $6e
    xor $54                                       ; $639a: $ee $54
    ld l, [hl]                                    ; $639c: $6e
    adc d                                         ; $639d: $8a
    ccf                                           ; $639e: $3f
    nop                                           ; $639f: $00
    rst $08                                       ; $63a0: $cf
    reti                                          ; $63a1: $d9


    jp nc, $168c                                  ; $63a2: $d2 $8c $16

    ld [hl], h                                    ; $63a5: $74
    cp d                                          ; $63a6: $ba
    ld [$af62], a                                 ; $63a7: $ea $62 $af
    ld a, h                                       ; $63aa: $7c
    and $92                                       ; $63ab: $e6 $92
    ld hl, sp+$03                                 ; $63ad: $f8 $03
    rst $08                                       ; $63af: $cf
    ld h, e                                       ; $63b0: $63
    jr nz, @-$27                                  ; $63b1: $20 $d7

    and [hl]                                      ; $63b3: $a6
    sbc d                                         ; $63b4: $9a
    ld e, c                                       ; $63b5: $59
    ld e, [hl]                                    ; $63b6: $5e
    db $ec                                        ; $63b7: $ec
    jp nc, $c488                                  ; $63b8: $d2 $88 $c4

    db $ec                                        ; $63bb: $ec
    sub l                                         ; $63bc: $95
    rst $08                                       ; $63bd: $cf
    ld e, h                                       ; $63be: $5c
    adc d                                         ; $63bf: $8a
    or a                                          ; $63c0: $b7
    sub a                                         ; $63c1: $97
    di                                            ; $63c2: $f3
    call c, $d625                                 ; $63c3: $dc $25 $d6
    add hl, sp                                    ; $63c6: $39
    dec [hl]                                      ; $63c7: $35
    adc [hl]                                      ; $63c8: $8e
    db $e3                                        ; $63c9: $e3
    add hl, bc                                    ; $63ca: $09
    and l                                         ; $63cb: $a5
    rst $18                                       ; $63cc: $df
    ret z                                         ; $63cd: $c8

    add a                                         ; $63ce: $87
    ld b, l                                       ; $63cf: $45
    rra                                           ; $63d0: $1f
    ld l, a                                       ; $63d1: $6f
    rst $08                                       ; $63d2: $cf
    reti                                          ; $63d3: $d9


    adc $c8                                       ; $63d4: $ce $c8
    call c, Call_048_699c                         ; $63d6: $dc $9c $69
    dec d                                         ; $63d9: $15
    ld d, h                                       ; $63da: $54
    ret nc                                        ; $63db: $d0

    ld e, b                                       ; $63dc: $58
    ld de, $07c7                                  ; $63dd: $11 $c7 $07
    xor a                                         ; $63e0: $af
    ld a, h                                       ; $63e1: $7c
    and $d2                                       ; $63e2: $e6 $d2
    push bc                                       ; $63e4: $c5
    ld c, [hl]                                    ; $63e5: $4e
    ld h, [hl]                                    ; $63e6: $66
    or h                                          ; $63e7: $b4
    di                                            ; $63e8: $f3
    ld [hl], a                                    ; $63e9: $77
    ld d, $60                                     ; $63ea: $16 $60
    or b                                          ; $63ec: $b0
    di                                            ; $63ed: $f3
    xor a                                         ; $63ee: $af
    ld l, h                                       ; $63ef: $6c
    adc $b4                                       ; $63f0: $ce $b4
    ld a, [de]                                    ; $63f2: $1a
    jp z, Jump_048_68fd                           ; $63f3: $ca $fd $68

    ld l, l                                       ; $63f6: $6d
    ld c, [hl]                                    ; $63f7: $4e
    add sp, -$07                                  ; $63f8: $e8 $f9
    dec de                                        ; $63fa: $1b
    db $dd                                        ; $63fb: $dd
    and l                                         ; $63fc: $a5
    cp b                                          ; $63fd: $b8
    call $f4b9                                    ; $63fe: $cd $b9 $f4
    dec bc                                        ; $6401: $0b
    xor [hl]                                      ; $6402: $ae
    inc e                                         ; $6403: $1c
    rst $10                                       ; $6404: $d7
    db $e4                                        ; $6405: $e4
    ld c, [hl]                                    ; $6406: $4e
    dec l                                         ; $6407: $2d
    cpl                                           ; $6408: $2f
    inc l                                         ; $6409: $2c
    ld e, a                                       ; $640a: $5f
    inc c                                         ; $640b: $0c
    push hl                                       ; $640c: $e5
    ld c, [hl]                                    ; $640d: $4e
    dec l                                         ; $640e: $2d
    cpl                                           ; $640f: $2f
    inc l                                         ; $6410: $2c
    adc e                                         ; $6411: $8b
    ccf                                           ; $6412: $3f
    nop                                           ; $6413: $00
    rst $10                                       ; $6414: $d7

jr_048_6415:
    db $e4                                        ; $6415: $e4
    adc $df                                       ; $6416: $ce $df
    ld e, c                                       ; $6418: $59
    ld e, b                                       ; $6419: $58
    ld e, [hl]                                    ; $641a: $5e
    ld h, d                                       ; $641b: $62
    ld a, c                                       ; $641c: $79
    and a                                         ; $641d: $a7
    ld [hl], d                                    ; $641e: $72
    di                                            ; $641f: $f3
    ld h, d                                       ; $6420: $62
    ld d, c                                       ; $6421: $51
    or e                                          ; $6422: $b3
    and l                                         ; $6423: $a5
    ld a, b                                       ; $6424: $78
    ld a, e                                       ; $6425: $7b
    ld de, $8295                                  ; $6426: $11 $95 $82
    add a                                         ; $6429: $87
    ret c                                         ; $642a: $d8

    ld e, h                                       ; $642b: $5c
    db $f4                                        ; $642c: $f4
    bit 6, e                                      ; $642d: $cb $73
    ld d, $96                                     ; $642f: $16 $96
    ld h, a                                       ; $6431: $67
    sub [hl]                                      ; $6432: $96
    cp e                                          ; $6433: $bb
    inc l                                         ; $6434: $2c
    ld b, l                                       ; $6435: $45
    push de                                       ; $6436: $d5
    ret c                                         ; $6437: $d8

    sbc h                                         ; $6438: $9c
    ld c, e                                       ; $6439: $4b
    ld b, $9a                                     ; $643a: $06 $9a
    rla                                           ; $643c: $17
    dec sp                                        ; $643d: $3b
    ld h, e                                       ; $643e: $63
    jr nc, jr_048_6446                            ; $643f: $30 $05

    rrca                                          ; $6441: $0f
    ld sp, $5e48                                  ; $6442: $31 $48 $5e
    ld e, b                                       ; $6445: $58

jr_048_6446:
    ld e, $77                                     ; $6446: $1e $77
    and a                                         ; $6448: $a7
    ld [hl], d                                    ; $6449: $72
    inc sp                                        ; $644a: $33
    ld a, $00                                     ; $644b: $3e $00
    rst $08                                       ; $644d: $cf
    call c, $8390                                 ; $644e: $dc $90 $83
    sbc h                                         ; $6451: $9c
    db $e4                                        ; $6452: $e4
    sbc c                                         ; $6453: $99
    adc b                                         ; $6454: $88
    xor c                                         ; $6455: $a9
    ld [hl], d                                    ; $6456: $72
    xor $ff                                       ; $6457: $ee $ff
    or h                                          ; $6459: $b4
    rst $20                                       ; $645a: $e7

jr_048_645b:
    ld [$a245], sp                                ; $645b: $08 $45 $a2
    rst $18                                       ; $645e: $df
    db $f4                                        ; $645f: $f4
    sbc a                                         ; $6460: $9f
    ld l, $f6                                     ; $6461: $2e $f6
    jp z, $2e67                                   ; $6463: $ca $67 $2e

    push bc                                       ; $6466: $c5
    rlca                                          ; $6467: $07
    ld c, a                                       ; $6468: $4f
    ld a, [hl-]                                   ; $6469: $3a
    and a                                         ; $646a: $a7
    adc e                                         ; $646b: $8b
    sbc c                                         ; $646c: $99
    ld [hl], e                                    ; $646d: $73
    cp d                                          ; $646e: $ba
    sbc b                                         ; $646f: $98
    add hl, sp                                    ; $6470: $39
    daa                                           ; $6471: $27
    pop af                                        ; $6472: $f1
    rlca                                          ; $6473: $07
    rst $10                                       ; $6474: $d7
    dec sp                                        ; $6475: $3b
    sub a                                         ; $6476: $97
    or b                                          ; $6477: $b0
    jp hl                                         ; $6478: $e9


    rla                                           ; $6479: $17
    dec [hl]                                      ; $647a: $35
    ld e, e                                       ; $647b: $5b
    jp c, $8e0b                                   ; $647c: $da $0b $8e

    jr nz, jr_048_6415                            ; $647f: $20 $94

    ld [hl+], a                                   ; $6481: $22
    ld c, e                                       ; $6482: $4b
    or l                                          ; $6483: $b5
    or b                                          ; $6484: $b0
    dec d                                         ; $6485: $15
    pop af                                        ; $6486: $f1
    adc $08                                       ; $6487: $ce $08
    rrca                                          ; $6489: $0f
    daa                                           ; $648a: $27
    ld l, b                                       ; $648b: $68
    inc c                                         ; $648c: $0c
    and h                                         ; $648d: $a4
    ld h, b                                       ; $648e: $60
    ld b, [hl]                                    ; $648f: $46
    add e                                         ; $6490: $83
    jr nc, jr_048_645b                            ; $6491: $30 $c8

    add c                                         ; $6493: $81
    ld a, d                                       ; $6494: $7a
    or e                                          ; $6495: $b3
    adc h                                         ; $6496: $8c
    ld [hl], a                                    ; $6497: $77
    dec e                                         ; $6498: $1d
    add e                                         ; $6499: $83
    ld b, l                                       ; $649a: $45
    ld b, $e6                                     ; $649b: $06 $e6
    dec sp                                        ; $649d: $3b
    ld c, h                                       ; $649e: $4c
    ld b, b                                       ; $649f: $40
    push af                                       ; $64a0: $f5
    ld a, b                                       ; $64a1: $78
    ld d, e                                       ; $64a2: $53
    ld [hl], d                                    ; $64a3: $72
    ld [hl], e                                    ; $64a4: $73
    xor $ff                                       ; $64a5: $ee $ff
    or h                                          ; $64a7: $b4
    ld [hl], $07                                  ; $64a8: $36 $07
    sbc d                                         ; $64aa: $9a
    xor l                                         ; $64ab: $ad
    sub d                                         ; $64ac: $92
    ld h, h                                       ; $64ad: $64
    ldh a, [$90]                                  ; $64ae: $f0 $90
    ld de, $fc74                                  ; $64b0: $11 $74 $fc
    db $dd                                        ; $64b3: $dd
    sub d                                         ; $64b4: $92
    daa                                           ; $64b5: $27
    ld c, e                                       ; $64b6: $4b
    add hl, sp                                    ; $64b7: $39
    or a                                          ; $64b8: $b7
    ld [hl], h                                    ; $64b9: $74
    or [hl]                                       ; $64ba: $b6
    xor b                                         ; $64bb: $a8
    cp d                                          ; $64bc: $ba
    ld a, c                                       ; $64bd: $79
    or c                                          ; $64be: $b1
    ld d, a                                       ; $64bf: $57
    ld a, $73                                     ; $64c0: $3e $73
    add hl, hl                                    ; $64c2: $29
    ld a, $00                                     ; $64c3: $3e $00
    cpl                                           ; $64c5: $2f
    sbc d                                         ; $64c6: $9a
    ld d, c                                       ; $64c7: $51
    inc e                                         ; $64c8: $1c
    rst $00                                       ; $64c9: $c7
    rlca                                          ; $64ca: $07
    rst $10                                       ; $64cb: $d7
    cp e                                          ; $64cc: $bb
    or b                                          ; $64cd: $b0
    ld [bc], a                                    ; $64ce: $02
    rst $28                                       ; $64cf: $ef
    cp [hl]                                       ; $64d0: $be
    ld b, c                                       ; $64d1: $41
    sbc a                                         ; $64d2: $9f
    jr @-$53                                      ; $64d3: $18 $ab

    ld h, $eb                                     ; $64d5: $26 $eb
    sub [hl]                                      ; $64d7: $96
    ld a, $68                                     ; $64d8: $3e $68
    ld l, $bf                                     ; $64da: $2e $bf
    ld b, a                                       ; $64dc: $47
    ld [hl], b                                    ; $64dd: $70
    or c                                          ; $64de: $b1
    ld a, e                                       ; $64df: $7b
    rlca                                          ; $64e0: $07
    ld a, l                                       ; $64e1: $7d
    ld h, d                                       ; $64e2: $62
    db $ec                                        ; $64e3: $ec
    sub h                                         ; $64e4: $94
    or [hl]                                       ; $64e5: $b6
    inc b                                         ; $64e6: $04
    ld c, l                                       ; $64e7: $4d
    or [hl]                                       ; $64e8: $b6
    db $f4                                        ; $64e9: $f4
    call Call_048_7735                            ; $64ea: $cd $35 $77
    rst $28                                       ; $64ed: $ef
    and b                                         ; $64ee: $a0
    ld c, a                                       ; $64ef: $4f
    adc h                                         ; $64f0: $8c
    sbc l                                         ; $64f1: $9d
    ldh a, [$7f]                                  ; $64f2: $f0 $7f
    and h                                         ; $64f4: $a4
    or h                                          ; $64f5: $b4
    dec h                                         ; $64f6: $25
    ld [$f41d], sp                                ; $64f7: $08 $1d $f4
    pop af                                        ; $64fa: $f1
    xor [hl]                                      ; $64fb: $ae
    ld [hl], a                                    ; $64fc: $77
    jp nc, $de49                                  ; $64fd: $d2 $49 $de

    cp c                                          ; $6500: $b9
    jp Jump_048_7bdc                              ; $6501: $c3 $dc $7b


    and a                                         ; $6504: $a7
    ld h, d                                       ; $6505: $62
    ld a, [hl+]                                   ; $6506: $2a
    ld l, $e6                                     ; $6507: $2e $e6
    cp [hl]                                       ; $6509: $be
    ld l, b                                       ; $650a: $68
    rra                                           ; $650b: $1f
    ld e, d                                       ; $650c: $5a
    ld e, b                                       ; $650d: $58
    ld e, $97                                     ; $650e: $1e $97
    xor b                                         ; $6510: $a8
    sbc b                                         ; $6511: $98
    ld [hl], e                                    ; $6512: $73
    ld sp, $337d                                  ; $6513: $31 $7d $33
    sbc $f5                                       ; $6516: $de $f5
    ld c, [hl]                                    ; $6518: $4e
    ld a, [hl-]                                   ; $6519: $3a
    ret                                           ; $651a: $c9


    cp e                                          ; $651b: $bb
    inc [hl]                                      ; $651c: $34
    ld b, b                                       ; $651d: $40
    add sp, $2f                                   ; $651e: $e8 $2f
    and $3b                                       ; $6520: $e6 $3b
    ld l, $51                                     ; $6522: $2e $51
    ld sp, $1665                                  ; $6524: $31 $65 $16
    ld e, $f2                                     ; $6527: $1e $f2
    push bc                                       ; $6529: $c5
    ld e, h                                       ; $652a: $5c
    ld [hl-], a                                   ; $652b: $32
    ret nc                                        ; $652c: $d0

    call c, $8cc9                                 ; $652d: $dc $c9 $8c
    ld d, $74                                     ; $6530: $16 $74
    pop de                                        ; $6532: $d1
    cpl                                           ; $6533: $2f
    rst $28                                       ; $6534: $ef
    db $fc                                        ; $6535: $fc
    dec hl                                        ; $6536: $2b
    sbc e                                         ; $6537: $9b
    pop af                                        ; $6538: $f1
    sbc [hl]                                      ; $6539: $9e
    ret                                           ; $653a: $c9


    add hl, hl                                    ; $653b: $29
    ld a, b                                       ; $653c: $78
    adc b                                         ; $653d: $88
    push hl                                       ; $653e: $e5
    or l                                          ; $653f: $b5

jr_048_6540:
    add hl, sp                                    ; $6540: $39
    and c                                         ; $6541: $a1
    push hl                                       ; $6542: $e5
    and b                                         ; $6543: $a0
    ei                                            ; $6544: $fb
    ld d, b                                       ; $6545: $50
    cp h                                          ; $6546: $bc
    ld l, e                                       ; $6547: $6b
    ld [hl], d                                    ; $6548: $72
    ld c, h                                       ; $6549: $4c
    sub l                                         ; $654a: $95
    add e                                         ; $654b: $83
    sbc h                                         ; $654c: $9c
    db $e4                                        ; $654d: $e4
    and $4c                                       ; $654e: $e6 $4c
    inc [hl]                                      ; $6550: $34
    db $d3                                        ; $6551: $d3
    ld l, d                                       ; $6552: $6a
    ld b, c                                       ; $6553: $41
    ld d, a                                       ; $6554: $57
    ld a, [de]                                    ; $6555: $1a
    ld [hl], a                                    ; $6556: $77
    jp c, $ec12                                   ; $6557: $da $12 $ec

    cp e                                          ; $655a: $bb
    and l                                         ; $655b: $a5
    ld sp, hl                                     ; $655c: $f9
    ld e, a                                       ; $655d: $5f
    adc [hl]                                      ; $655e: $8e
    rrca                                          ; $655f: $0f
    xor a                                         ; $6560: $af
    jp $2c43                                      ; $6561: $c3 $43 $2c


    rst $28                                       ; $6564: $ef
    ld b, e                                       ; $6565: $43
    rla                                           ; $6566: $17
    cp e                                          ; $6567: $bb
    inc [hl]                                      ; $6568: $34
    ld [hl+], a                                   ; $6569: $22
    ld sp, $1c71                                  ; $656a: $31 $71 $1c
    rra                                           ; $656d: $1f
    ld [hl], c                                    ; $656e: $71
    inc e                                         ; $656f: $1c
    add a                                         ; $6570: $87
    push hl                                       ; $6571: $e5
    ld sp, hl                                     ; $6572: $f9
    ld e, a                                       ; $6573: $5f
    ld e, [hl]                                    ; $6574: $5e
    pop hl                                        ; $6575: $e1
    ld hl, $c20f                                  ; $6576: $21 $0f $c2
    jr nz, jr_048_6540                            ; $6579: $20 $c5

    rra                                           ; $657b: $1f
    sub a                                         ; $657c: $97
    ld e, b                                       ; $657d: $58
    sbc d                                         ; $657e: $9a
    adc e                                         ; $657f: $8b
    jp hl                                         ; $6580: $e9


    ld a, c                                       ; $6581: $79
    adc $12                                       ; $6582: $ce $12
    srl e                                         ; $6584: $cb $3b
    add hl, de                                    ; $6586: $19
    rst $08                                       ; $6587: $cf
    reti                                          ; $6588: $d9


    ld sp, hl                                     ; $6589: $f9
    ld d, a                                       ; $658a: $57
    ld a, [c]                                     ; $658b: $f2
    push bc                                       ; $658c: $c5
    and d                                         ; $658d: $a2
    ld h, [hl]                                    ; $658e: $66
    ld c, e                                       ; $658f: $4b
    ld a, e                                       ; $6590: $7b
    push hl                                       ; $6591: $e5
    inc sp                                        ; $6592: $33
    sub a                                         ; $6593: $97
    ld [c], a                                     ; $6594: $e2
    inc bc                                        ; $6595: $03
    ld d, a                                       ; $6596: $57
    or c                                          ; $6597: $b1
    inc hl                                        ; $6598: $23
    rlca                                          ; $6599: $07
    inc hl                                        ; $659a: $23

Call_048_659b:
    xor $50                                       ; $659b: $ee $50
    db $ed                                        ; $659d: $ed
    call Call_048_6f6b                            ; $659e: $cd $6b $6f
    cp h                                          ; $65a1: $bc
    cp $c2                                        ; $65a2: $fe $c2
    sbc e                                         ; $65a4: $9b
    rst $10                                       ; $65a5: $d7
    sbc $78                                       ; $65a6: $de $78
    and $a5                                       ; $65a8: $e6 $a5
    xor e                                         ; $65aa: $ab
    inc de                                        ; $65ab: $13
    xor d                                         ; $65ac: $aa
    cp b                                          ; $65ad: $b8
    sub c                                         ; $65ae: $91
    sbc a                                         ; $65af: $9f
    ei                                            ; $65b0: $fb
    ccf                                           ; $65b1: $3f
    dec c                                         ; $65b2: $0d
    call nc, $e4fd                                ; $65b3: $d4 $fd $e4
    ld c, e                                       ; $65b6: $4b
    cp [hl]                                       ; $65b7: $be
    db $d3                                        ; $65b8: $d3
    dec l                                         ; $65b9: $2d
    ld l, c                                       ; $65ba: $69
    ld c, h                                       ; $65bb: $4c
    ret nc                                        ; $65bc: $d0

    cp h                                          ; $65bd: $bc
    ret c                                         ; $65be: $d8

    dec hl                                        ; $65bf: $2b
    sbc a                                         ; $65c0: $9f
    cp c                                          ; $65c1: $b9
    inc d                                         ; $65c2: $14
    rra                                           ; $65c3: $1f
    sub a                                         ; $65c4: $97
    ld b, [hl]                                    ; $65c5: $46
    inc h                                         ; $65c6: $24
    and $62                                       ; $65c7: $e6 $62
    daa                                           ; $65c9: $27
    db $e3                                        ; $65ca: $e3
    ld sp, hl                                     ; $65cb: $f9
    rst $18                                       ; $65cc: $df
    dec b                                         ; $65cd: $05
    jr jr_048_65fc                                ; $65ce: $18 $2c

    call nz, $c5d2                                ; $65d0: $c4 $d2 $c5
    jp nz, Jump_000_0b0a                          ; $65d3: $c2 $0a $0b

    ld a, [hl-]                                   ; $65d6: $3a
    ret nc                                        ; $65d7: $d0

    and $74                                       ; $65d8: $e6 $74
    push de                                       ; $65da: $d5
    sub l                                         ; $65db: $95
    ld e, l                                       ; $65dc: $5d
    sub e                                         ; $65dd: $93
    inc de                                        ; $65de: $13
    sbc d                                         ; $65df: $9a
    sub e                                         ; $65e0: $93
    jp c, Jump_048_6a94                           ; $65e1: $da $94 $6a

    ld a, [hl]                                    ; $65e4: $7e
    rst $00                                       ; $65e5: $c7
    dec hl                                        ; $65e6: $2b
    xor $c5                                       ; $65e7: $ee $c5
    cp h                                          ; $65e9: $bc
    and e                                         ; $65ea: $a3
    add [hl]                                      ; $65eb: $86
    ld [hl], d                                    ; $65ec: $72
    pop de                                        ; $65ed: $d1
    cpl                                           ; $65ee: $2f
    cpl                                           ; $65ef: $2f
    inc l                                         ; $65f0: $2c
    cpl                                           ; $65f1: $2f
    add sp, $5c                                   ; $65f2: $e8 $5c
    ld [hl-], a                                   ; $65f4: $32
    ret nc                                        ; $65f5: $d0

    adc h                                         ; $65f6: $8c
    rrca                                          ; $65f7: $0f
    cpl                                           ; $65f8: $2f
    ld a, [de]                                    ; $65f9: $1a
    pop bc                                        ; $65fa: $c1
    xor e                                         ; $65fb: $ab

jr_048_65fc:
    add a                                         ; $65fc: $87
    ld l, d                                       ; $65fd: $6a
    and b                                         ; $65fe: $a0
    and a                                         ; $65ff: $a7
    sbc a                                         ; $6600: $9f
    ld a, [hl]                                    ; $6601: $7e
    and b                                         ; $6602: $a0
    ld h, h                                       ; $6603: $64
    ld h, $79                                     ; $6604: $26 $79
    call Call_048_5ca1                            ; $6606: $cd $a1 $5c
    db $f4                                        ; $6609: $f4
    bit 6, e                                      ; $660a: $cb $73
    dec l                                         ; $660c: $2d
    rst $30                                       ; $660d: $f7
    ld a, d                                       ; $660e: $7a
    or [hl]                                       ; $660f: $b6
    ret nc                                        ; $6610: $d0

    ld a, h                                       ; $6611: $7c
    add a                                         ; $6612: $87
    add hl, bc                                    ; $6613: $09
    xor b                                         ; $6614: $a8
    ld e, $6f                                     ; $6615: $1e $6f
    ld c, d                                       ; $6617: $4a
    ld l, [hl]                                    ; $6618: $6e
    adc $fd                                       ; $6619: $ce $fd
    sbc a                                         ; $661b: $9f
    sub $e6                                       ; $661c: $d6 $e6
    ld b, b                                       ; $661e: $40
    or e                                          ; $661f: $b3
    ld d, l                                       ; $6620: $55
    sub d                                         ; $6621: $92
    inc c                                         ; $6622: $0c
    ld e, $32                                     ; $6623: $1e $32
    add d                                         ; $6625: $82
    adc [hl]                                      ; $6626: $8e
    cp a                                          ; $6627: $bf
    ld e, e                                       ; $6628: $5b
    ld a, [c]                                     ; $6629: $f2
    ld h, h                                       ; $662a: $64
    add hl, hl                                    ; $662b: $29
    ld [hl], a                                    ; $662c: $77
    cp $95                                        ; $662d: $fe $95
    call $00f8                                    ; $662f: $cd $f8 $00
    xor a                                         ; $6632: $af
    sub b                                         ; $6633: $90
    add hl, de                                    ; $6634: $19
    xor a                                         ; $6635: $af
    ld c, l                                       ; $6636: $4d
    or l                                          ; $6637: $b5
    xor b                                         ; $6638: $a8
    cp h                                          ; $6639: $bc
    ld c, e                                       ; $663a: $4b
    inc bc                                        ; $663b: $03
    add h                                         ; $663c: $84
    ld a, $de                                     ; $663d: $3e $de
    dec h                                         ; $663f: $25
    ld b, $3b                                     ; $6640: $06 $3b
    or l                                          ; $6642: $b5
    inc a                                         ; $6643: $3c
    ret nc                                        ; $6644: $d0

Call_048_6645:
    db $d3                                        ; $6645: $d3
    rst $38                                       ; $6646: $ff
    xor c                                         ; $6647: $a9
    ld sp, $3b90                                  ; $6648: $31 $90 $3b
    ld d, l                                       ; $664b: $55
    rst $28                                       ; $664c: $ef
    ld h, h                                       ; $664d: $64
    cp h                                          ; $664e: $bc
    jp nc, $dfce                                  ; $664f: $d2 $ce $df

    db $f4                                        ; $6652: $f4
    cp b                                          ; $6653: $b8
    ld [hl], e                                    ; $6654: $73
    ld sp, $737d                                  ; $6655: $31 $7d $73
    xor b                                         ; $6658: $a8
    ld [c], a                                     ; $6659: $e2
    inc bc                                        ; $665a: $03
    sub a                                         ; $665b: $97
    scf                                           ; $665c: $37
    db $ec                                        ; $665d: $ec
    jp nc, $c488                                  ; $665e: $d2 $88 $c4

    ld e, h                                       ; $6661: $5c
    db $ec                                        ; $6662: $ec
    ld h, h                                       ; $6663: $64
    cp h                                          ; $6664: $bc
    add sp, -$0d                                  ; $6665: $e8 $f3
    ld [bc], a                                    ; $6667: $02
    inc c                                         ; $6668: $0c
    ld d, $62                                     ; $6669: $16 $62
    jp hl                                         ; $666b: $e9


    ld h, d                                       ; $666c: $62
    ld h, c                                       ; $666d: $61
    dec b                                         ; $666e: $05
    ld bc, $d03b                                  ; $666f: $01 $3b $d0
    and $74                                       ; $6672: $e6 $74
    push de                                       ; $6674: $d5
    sub l                                         ; $6675: $95
    inc bc                                        ; $6676: $03
    rst $10                                       ; $6677: $d7
    db $e4                                        ; $6678: $e4
    and d                                         ; $6679: $a2
    ld e, a                                       ; $667a: $5f
    sbc [hl]                                      ; $667b: $9e
    ld l, e                                       ; $667c: $6b
    add hl, sp                                    ; $667d: $39
    adc b                                         ; $667e: $88
    cp [hl]                                       ; $667f: $be
    xor b                                         ; $6680: $a8
    ld c, d                                       ; $6681: $4a
    ld a, l                                       ; $6682: $7d
    jp c, $d9eb                                   ; $6683: $da $eb $d9

    ld b, d                                       ; $6686: $42
    di                                            ; $6687: $f3
    dec e                                         ; $6688: $1d
    ld h, $a0                                     ; $6689: $26 $a0
    ld a, d                                       ; $668b: $7a
    cp h                                          ; $668c: $bc
    add hl, hl                                    ; $668d: $29
    cp c                                          ; $668e: $b9
    add hl, sp                                    ; $668f: $39
    rst $30                                       ; $6690: $f7
    ld a, a                                       ; $6691: $7f
    ld e, d                                       ; $6692: $5a
    sbc e                                         ; $6693: $9b
    db $e3                                        ; $6694: $e3
    rst $28                                       ; $6695: $ef
    sub [hl]                                      ; $6696: $96
    inc a                                         ; $6697: $3c
    ld e, c                                       ; $6698: $59
    jp z, $98b9                                   ; $6699: $ca $b9 $98

    cp [hl]                                       ; $669c: $be
    ld sp, hl                                     ; $669d: $f9
    ret c                                         ; $669e: $d8

    ld h, h                                       ; $669f: $64
    db $dd                                        ; $66a0: $dd
    jp nc, $cd07                                  ; $66a1: $d2 $07 $cd

    adc e                                         ; $66a4: $8b
    add hl, bc                                    ; $66a5: $09
    rst $38                                       ; $66a6: $ff
    ld b, a                                       ; $66a7: $47
    ld c, d                                       ; $66a8: $4a
    ld e, e                                       ; $66a9: $5b
    add d                                         ; $66aa: $82
    ret nc                                        ; $66ab: $d0

    ld b, c                                       ; $66ac: $41
    cp a                                          ; $66ad: $bf
    and $94                                       ; $66ae: $e6 $94
    or [hl]                                       ; $66b0: $b6
    inc b                                         ; $66b1: $04
    ld c, l                                       ; $66b2: $4d
    or [hl]                                       ; $66b3: $b6
    db $f4                                        ; $66b4: $f4
    call $00f8                                    ; $66b5: $cd $f8 $00
    xor a                                         ; $66b8: $af
    rst $38                                       ; $66b9: $ff
    ld c, b                                       ; $66ba: $48
    ld c, l                                       ; $66bb: $4d
    ld [hl], $17                                  ; $66bc: $36 $17
    ld [hl], h                                    ; $66be: $74
    and a                                         ; $66bf: $a7
    ld [$a6dd], a                                 ; $66c0: $ea $dd $a6
    halt                                          ; $66c3: $76
    ld [hl-], a                                   ; $66c4: $32
    sbc $87                                       ; $66c5: $de $87
    ld d, $96                                     ; $66c7: $16 $96
    rst $00                                       ; $66c9: $c7
    dec h                                         ; $66ca: $25
    ld a, [hl+]                                   ; $66cb: $2a
    and $e8                                       ; $66cc: $e6 $e8
    and a                                         ; $66ce: $a7
    sbc a                                         ; $66cf: $9f
    rst $28                                       ; $66d0: $ef
    inc d                                         ; $66d1: $14
    inc a                                         ; $66d2: $3c
    db $fc                                        ; $66d3: $fc
    ld e, a                                       ; $66d4: $5f
    rst $08                                       ; $66d5: $cf
    push bc                                       ; $66d6: $c5
    db $f4                                        ; $66d7: $f4
    call $cf78                                    ; $66d8: $cd $78 $cf
    db $e4                                        ; $66db: $e4
    ld c, [hl]                                    ; $66dc: $4e
    add $13                                       ; $66dd: $c6 $13
    jp z, Jump_000_1154                           ; $66df: $ca $54 $11

    rst $08                                       ; $66e2: $cf
    ld h, e                                       ; $66e3: $63
    daa                                           ; $66e4: $27
    db $fc                                        ; $66e5: $fc
    rra                                           ; $66e6: $1f
    add hl, hl                                    ; $66e7: $29
    ld l, l                                       ; $66e8: $6d
    add hl, bc                                    ; $66e9: $09
    ld b, d                                       ; $66ea: $42
    rlca                                          ; $66eb: $07
    db $fd                                        ; $66ec: $fd
    push bc                                       ; $66ed: $c5
    ld l, [hl]                                    ; $66ee: $6e
    db $e3                                        ; $66ef: $e3
    sbc l                                         ; $66f0: $9d
    cp a                                          ; $66f1: $bf
    or e                                          ; $66f2: $b3
    xor b                                         ; $66f3: $a8
    ld c, e                                       ; $66f4: $4b
    sub h                                         ; $66f5: $94
    ld l, d                                       ; $66f6: $6a
    ld l, [hl]                                    ; $66f7: $6e
    ld c, c                                       ; $66f8: $49
    or b                                          ; $66f9: $b0
    ld [hl], e                                    ; $66fa: $73
    ld [hl], e                                    ; $66fb: $73
    and [hl]                                      ; $66fc: $a6
    push de                                       ; $66fd: $d5
    ld e, [hl]                                    ; $66fe: $5e
    rst $08                                       ; $66ff: $cf
    ld d, $da                                     ; $6700: $16 $da
    ret                                           ; $6702: $c9


    ld a, b                                       ; $6703: $78
    sbc b                                         ; $6704: $98
    dec sp                                        ; $6705: $3b
    ld h, e                                       ; $6706: $63
    sub b                                         ; $6707: $90
    sub e                                         ; $6708: $93
    sub [hl]                                      ; $6709: $96
    db $fc                                        ; $670a: $fc
    ccf                                           ; $670b: $3f
    dec l                                         ; $670c: $2d
    xor h                                         ; $670d: $ac
    jr nc, jr_048_676d                            ; $670e: $30 $5d

    nop                                           ; $6710: $00
    sbc d                                         ; $6711: $9a
    pop af                                        ; $6712: $f1
    ld l, $31                                     ; $6713: $2e $31
    jr @-$54                                      ; $6715: $18 $aa

    add l                                         ; $6717: $85
    push de                                       ; $6718: $d5
    adc l                                         ; $6719: $8d
    call z, $a2f4                                 ; $671a: $cc $f4 $a2
    xor d                                         ; $671d: $aa
    ldh [rWX], a                                  ; $671e: $e0 $4b

Jump_048_6720:
    reti                                          ; $6720: $d9


    cp c                                          ; $6721: $b9
    sub [hl]                                      ; $6722: $96
    ld d, e                                       ; $6723: $53
    jp c, $3412                                   ; $6724: $da $12 $34

    rst $10                                       ; $6727: $d7
    inc a                                         ; $6728: $3c
    rst $38                                       ; $6729: $ff
    ld hl, sp+$00                                 ; $672a: $f8 $00
    rst $10                                       ; $672c: $d7
    dec sp                                        ; $672d: $3b
    or a                                          ; $672e: $b7
    and h                                         ; $672f: $a4
    ld hl, sp+$7f                                 ; $6730: $f8 $7f
    ld [c], a                                     ; $6732: $e2
    ld sp, hl                                     ; $6733: $f9
    ld c, [hl]                                    ; $6734: $4e
    ld d, a                                       ; $6735: $57
    adc c                                         ; $6736: $89
    rst $18                                       ; $6737: $df
    add e                                         ; $6738: $83
    add e                                         ; $6739: $83
    sbc h                                         ; $673a: $9c
    db $e4                                        ; $673b: $e4
    and $4c                                       ; $673c: $e6 $4c
    call nz, $3954                                ; $673e: $c4 $54 $39
    rst $30                                       ; $6741: $f7
    ld a, a                                       ; $6742: $7f
    jp c, $8473                                   ; $6743: $da $73 $84

    ld [hl+], a                                   ; $6746: $22
    pop de                                        ; $6747: $d1
    ld l, a                                       ; $6748: $6f
    ld a, [$e24f]                                 ; $6749: $fa $4f $e2
    rrca                                          ; $674c: $0f
    ld l, a                                       ; $674d: $6f
    dec de                                        ; $674e: $1b
    inc a                                         ; $674f: $3c
    db $e4                                        ; $6750: $e4
    or l                                          ; $6751: $b5
    xor c                                         ; $6752: $a9
    ld d, [hl]                                    ; $6753: $56
    or a                                          ; $6754: $b7
    add hl, de                                    ; $6755: $19
    rst $00                                       ; $6756: $c7
    pop af                                        ; $6757: $f1
    ld l, $0d                                     ; $6758: $2e $0d
    db $10                                        ; $675a: $10
    ld a, [$8b9d]                                 ; $675b: $fa $9d $8b
    di                                            ; $675e: $f3
    add $0b                                       ; $675f: $c6 $0b
    ld sp, $8858                                  ; $6761: $31 $58 $88
    and l                                         ; $6764: $a5
    ret                                           ; $6765: $c9


    cp d                                          ; $6766: $ba
    dec h                                         ; $6767: $25
    dec [hl]                                      ; $6768: $35
    or e                                          ; $6769: $b3
    ld e, h                                       ; $676a: $5c
    ld e, b                                       ; $676b: $58
    sbc [hl]                                      ; $676c: $9e

jr_048_676d:
    ld d, b                                       ; $676d: $50
    dec b                                         ; $676e: $05
    pop de                                        ; $676f: $d1
    cpl                                           ; $6770: $2f
    ld [hl], $77                                  ; $6771: $36 $77
    ld [hl-], a                                   ; $6773: $32
    dec h                                         ; $6774: $25
    cp $00                                        ; $6775: $fe $00
    ld d, a                                       ; $6777: $57
    sub c                                         ; $6778: $91
    ld [hl], a                                    ; $6779: $77
    add $20                                       ; $677a: $c6 $20
    rst $00                                       ; $677c: $c7
    rra                                           ; $677d: $1f
    ld e, $ae                                     ; $677e: $1e $ae
    ldh a, [$90]                                  ; $6780: $f0 $90
    daa                                           ; $6782: $27
    db $eb                                        ; $6783: $eb
    sub [hl]                                      ; $6784: $96
    ld a, $68                                     ; $6785: $3e $68
    adc d                                         ; $6787: $8a
    ccf                                           ; $6788: $3f
    nop                                           ; $6789: $00
    ld d, a                                       ; $678a: $57
    sub c                                         ; $678b: $91
    ld [hl], a                                    ; $678c: $77
    add $20                                       ; $678d: $c6 $20
    add a                                         ; $678f: $87
    xor c                                         ; $6790: $a9
    ld a, [bc]                                    ; $6791: $0a
    rst $20                                       ; $6792: $e7
    and $07                                       ; $6793: $e6 $07
    call $8e38                                    ; $6795: $cd $38 $8e
    ld [hl], a                                    ; $6798: $77
    cp $a6                                        ; $6799: $fe $a6
    push de                                       ; $679b: $d5
    ld e, h                                       ; $679c: $5c
    res 6, l                                      ; $679d: $cb $b5
    add hl, sp                                    ; $679f: $39
    ld e, c                                       ; $67a0: $59
    or a                                          ; $67a1: $b7
    inc h                                         ; $67a2: $24
    cp $00                                        ; $67a3: $fe $00
    rst $08                                       ; $67a5: $cf
    inc [hl]                                      ; $67a6: $34
    and a                                         ; $67a7: $a7
    ret c                                         ; $67a8: $d8

    sub c                                         ; $67a9: $91
    ld [hl], e                                    ; $67aa: $73
    dec l                                         ; $67ab: $2d
    rst $20                                       ; $67ac: $e7
    or c                                          ; $67ad: $b1
    ld d, e                                       ; $67ae: $53
    jp c, $ec12                                   ; $67af: $da $12 $ec

    adc h                                         ; $67b2: $8c
    push hl                                       ; $67b3: $e5
    sub l                                         ; $67b4: $95
    and $52                                       ; $67b5: $e6 $52
    dec de                                        ; $67b7: $1b
    ld sp, hl                                     ; $67b8: $f9
    add hl, sp                                    ; $67b9: $39
    ret z                                         ; $67ba: $c8

    ld [hl], c                                    ; $67bb: $71
    inc e                                         ; $67bc: $1c
    rra                                           ; $67bd: $1f
    ld d, a                                       ; $67be: $57
    sub c                                         ; $67bf: $91
    add a                                         ; $67c0: $87
    ld l, d                                       ; $67c1: $6a
    add l                                         ; $67c2: $85
    add a                                         ; $67c3: $87
    call c, Call_048_6d29                         ; $67c4: $dc $29 $6d
    add hl, bc                                    ; $67c7: $09
    sbc d                                         ; $67c8: $9a
    and c                                         ; $67c9: $a1
    add e                                         ; $67ca: $83
    ld a, $de                                     ; $67cb: $3e $de
    sbc $fb                                       ; $67cd: $de $fb
    ld e, b                                       ; $67cf: $58
    ld d, [hl]                                    ; $67d0: $56
    dec bc                                        ; $67d1: $0b
    ld a, a                                       ; $67d2: $7f
    ld b, l                                       ; $67d3: $45
    dec bc                                        ; $67d4: $0b
    cp d                                          ; $67d5: $ba
    call nz, $b8f2                                ; $67d6: $c4 $f2 $b8
    ld [hl], e                                    ; $67d9: $73
    ld c, e                                       ; $67da: $4b
    daa                                           ; $67db: $27
    add e                                         ; $67dc: $83
    add a                                         ; $67dd: $87
    call c, $809c                                 ; $67de: $dc $9c $80
    pop bc                                        ; $67e1: $c1
    jp c, Jump_000_3b1c                           ; $67e2: $da $1c $3b

    sbc b                                         ; $67e5: $98
    ld c, d                                       ; $67e6: $4a
    ld e, e                                       ; $67e7: $5b
    ld [bc], a                                    ; $67e8: $02
    pop af                                        ; $67e9: $f1
    rlca                                          ; $67ea: $07
    ld l, a                                       ; $67eb: $6f
    dec de                                        ; $67ec: $1b
    rst $28                                       ; $67ed: $ef
    adc h                                         ; $67ee: $8c
    cp h                                          ; $67ef: $bc
    jp nc, Jump_048_51d8                          ; $67f0: $d2 $d8 $51

    xor d                                         ; $67f3: $aa
    add hl, sp                                    ; $67f4: $39
    rst $18                                       ; $67f5: $df
    ld b, c                                       ; $67f6: $41
    sbc a                                         ; $67f7: $9f
    sbc e                                         ; $67f8: $9b
    ld [hl], e                                    ; $67f9: $73
    dec l                                         ; $67fa: $2d
    rst $20                                       ; $67fb: $e7
    dec sp                                        ; $67fc: $3b
    ld b, b                                       ; $67fd: $40
    jr z, @+$14                                   ; $67fe: $28 $12

    pop hl                                        ; $6800: $e1
    ld l, a                                       ; $6801: $6f
    ld e, [hl]                                    ; $6802: $5e
    add hl, sp                                    ; $6803: $39
    nop                                           ; $6804: $00
    ld d, a                                       ; $6805: $57
    sub c                                         ; $6806: $91
    rla                                           ; $6807: $17
    db $fd                                        ; $6808: $fd
    ld [hl], d                                    ; $6809: $72
    ld [hl], e                                    ; $680a: $73
    ld c, d                                       ; $680b: $4a
    ld e, e                                       ; $680c: $5b
    add d                                         ; $680d: $82
    ld h, $5b                                     ; $680e: $26 $5b
    ld a, [$cee6]                                 ; $6810: $fa $e6 $ce
    jr @+$66                                      ; $6813: $18 $64

    cp h                                          ; $6815: $bc
    ld e, l                                       ; $6816: $5d
    sub e                                         ; $6817: $93
    dec bc                                        ; $6818: $0b
    rst $38                                       ; $6819: $ff
    add a                                         ; $681a: $87
    and $8d                                       ; $681b: $e6 $8d
    add a                                         ; $681d: $87
    ld [hl], d                                    ; $681e: $72
    cp [hl]                                       ; $681f: $be
    dec bc                                        ; $6820: $0b
    inc e                                         ; $6821: $1c
    ld d, h                                       ; $6822: $54
    call c, $ffa9                                 ; $6823: $dc $a9 $ff
    adc c                                         ; $6826: $89
    rst $00                                       ; $6827: $c7
    dec e                                         ; $6828: $1d
    ld h, h                                       ; $6829: $64
    ld d, d                                       ; $682a: $52
    ld [hl], $17                                  ; $682b: $36 $17
    ld d, [hl]                                    ; $682d: $56
    adc b                                         ; $682e: $88
    rrca                                          ; $682f: $0f
    cpl                                           ; $6830: $2f
    daa                                           ; $6831: $27
    xor b                                         ; $6832: $a8
    add d                                         ; $6833: $82
    add a                                         ; $6834: $87
    jr z, jr_048_6870                             ; $6835: $28 $39

    sbc $9e                                       ; $6837: $de $9e
    cp c                                          ; $6839: $b9
    ld hl, $3907                                  ; $683a: $21 $07 $39
    ret                                           ; $683d: $c9


    inc sp                                        ; $683e: $33
    ld de, $6553                                  ; $683f: $11 $53 $65
    cp h                                          ; $6842: $bc
    and a                                         ; $6843: $a7
    ld c, d                                       ; $6844: $4a
    cp a                                          ; $6845: $bf
    sub c                                         ; $6846: $91
    rst $18                                       ; $6847: $df
    add hl, de                                    ; $6848: $19
    add e                                         ; $6849: $83
    inc e                                         ; $684a: $1c
    xor d                                         ; $684b: $aa
    dec h                                         ; $684c: $25
    sub [hl]                                      ; $684d: $96
    ld h, a                                       ; $684e: $67
    ld e, d                                       ; $684f: $5a
    ld d, a                                       ; $6850: $57
    push bc                                       ; $6851: $c5
    ld a, e                                       ; $6852: $7b
    rst $28                                       ; $6853: $ef
    ld d, a                                       ; $6854: $57
    adc $2d                                       ; $6855: $ce $2d
    ld sp, hl                                     ; $6857: $f9
    ld d, d                                       ; $6858: $52
    ld a, h                                       ; $6859: $7c
    nop                                           ; $685a: $00
    cpl                                           ; $685b: $2f
    ld h, c                                       ; $685c: $61
    ld a, c                                       ; $685d: $79
    ldh a, [$1f]                                  ; $685e: $f0 $1f
    ld b, c                                       ; $6860: $41
    cp d                                          ; $6861: $ba
    push hl                                       ; $6862: $e5
    ld a, b                                       ; $6863: $78
    rst $08                                       ; $6864: $cf
    call c, $8390                                 ; $6865: $dc $90 $83
    sbc h                                         ; $6868: $9c
    db $e4                                        ; $6869: $e4
    sbc c                                         ; $686a: $99
    adc b                                         ; $686b: $88
    xor c                                         ; $686c: $a9
    ld [hl-], a                                   ; $686d: $32
    sbc $f5                                       ; $686e: $de $f5

jr_048_6870:
    ld c, [hl]                                    ; $6870: $4e
    sbc e                                         ; $6871: $9b
    pop af                                        ; $6872: $f1
    add d                                         ; $6873: $82
    adc $25                                       ; $6874: $ce $25
    ld l, h                                       ; $6876: $6c
    ld a, [$e0bd]                                 ; $6877: $fa $bd $e0
    ld [$2942], sp                                ; $687a: $08 $42 $29

Call_048_687d:
    or d                                          ; $687d: $b2
    ld d, h                                       ; $687e: $54
    inc de                                        ; $687f: $13
    ld l, c                                       ; $6880: $69
    ld c, h                                       ; $6881: $4c
    add hl, sp                                    ; $6882: $39
    call z, Call_048_4ef9                         ; $6883: $cc $f9 $4e
    ld [hl], c                                    ; $6886: $71
    dec hl                                        ; $6887: $2b
    db $e3                                        ; $6888: $e3
    inc bc                                        ; $6889: $03
    ld l, a                                       ; $688a: $6f
    ld [hl], h                                    ; $688b: $74
    and a                                         ; $688c: $a7
    ld h, d                                       ; $688d: $62
    ld [hl+], a                                   ; $688e: $22
    jr jr_048_68b7                                ; $688f: $18 $26

    and b                                         ; $6891: $a0
    ld a, d                                       ; $6892: $7a
    cp h                                          ; $6893: $bc
    add hl, hl                                    ; $6894: $29
    cp c                                          ; $6895: $b9
    ld a, c                                       ; $6896: $79
    or c                                          ; $6897: $b1
    ld d, a                                       ; $6898: $57
    ld a, $73                                     ; $6899: $3e $73
    add hl, hl                                    ; $689b: $29
    sbc $9e                                       ; $689c: $de $9e
    or e                                          ; $689e: $b3
    ld b, l                                       ; $689f: $45
    ld h, [hl]                                    ; $68a0: $66
    inc [hl]                                      ; $68a1: $34
    or a                                          ; $68a2: $b7
    db $e4                                        ; $68a3: $e4
    ld c, e                                       ; $68a4: $4b
    adc e                                         ; $68a5: $8b
    jp z, $ff3b                                   ; $68a6: $ca $3b $ff

    jp z, Jump_048_7c66                           ; $68a9: $ca $66 $7c

    nop                                           ; $68ac: $00
    rst $10                                       ; $68ad: $d7
    dec sp                                        ; $68ae: $3b
    sub a                                         ; $68af: $97
    or b                                          ; $68b0: $b0
    jp hl                                         ; $68b1: $e9


    daa                                           ; $68b2: $27
    ld a, a                                       ; $68b3: $7f
    ld l, $b1                                     ; $68b4: $2e $b1
    inc a                                         ; $68b6: $3c

jr_048_68b7:
    ld l, l                                       ; $68b7: $6d
    add hl, bc                                    ; $68b8: $09
    ld c, d                                       ; $68b9: $4a
    dec sp                                        ; $68ba: $3b
    add hl, de                                    ; $68bb: $19
    inc a                                         ; $68bc: $3c
    db $e4                                        ; $68bd: $e4
    and $9a                                       ; $68be: $e6 $9a
    ld b, e                                       ; $68c0: $43
    or l                                          ; $68c1: $b5
    inc [hl]                                      ; $68c2: $34
    and e                                         ; $68c3: $a3
    ld sp, hl                                     ; $68c4: $f9
    xor $8c                                       ; $68c5: $ee $8c
    sub l                                         ; $68c7: $95
    ld c, l                                       ; $68c8: $4d
    pop hl                                        ; $68c9: $e1
    rla                                           ; $68ca: $17
    call nz, Call_048_5d7b                        ; $68cb: $c4 $7b $5d
    ld a, a                                       ; $68ce: $7f
    ld a, [c]                                     ; $68cf: $f2
    ld [$162e], sp                                ; $68d0: $08 $2e $16
    dec [hl]                                      ; $68d3: $35
    ld e, e                                       ; $68d4: $5b
    jp c, $9f2b                                   ; $68d5: $da $2b $9f

    cp c                                          ; $68d8: $b9
    inc d                                         ; $68d9: $14
    rst $28                                       ; $68da: $ef
    pop bc                                        ; $68db: $c1
    ld b, c                                       ; $68dc: $41
    ld c, [hl]                                    ; $68dd: $4e
    ld [hl], d                                    ; $68de: $72
    ld [hl], e                                    ; $68df: $73
    ld h, $62                                     ; $68e0: $26 $62
    xor d                                         ; $68e2: $aa
    sbc h                                         ; $68e3: $9c
    ei                                            ; $68e4: $fb
    ccf                                           ; $68e5: $3f
    db $ed                                        ; $68e6: $ed
    add hl, sp                                    ; $68e7: $39
    ld b, d                                       ; $68e8: $42
    sub c                                         ; $68e9: $91
    add sp, $37                                   ; $68ea: $e8 $37
    db $fd                                        ; $68ec: $fd
    and a                                         ; $68ed: $a7
    ld a, b                                       ; $68ee: $78
    ld d, a                                       ; $68ef: $57
    dec sp                                        ; $68f0: $3b
    ld e, l                                       ; $68f1: $5d
    dec [hl]                                      ; $68f2: $35
    ld d, h                                       ; $68f3: $54
    inc sp                                        ; $68f4: $33
    ld de, $fea8                                  ; $68f5: $11 $a8 $fe
    ld d, b                                       ; $68f8: $50
    inc sp                                        ; $68f9: $33
    ld a, $00                                     ; $68fa: $3e $00
    rst $28                                       ; $68fc: $ef

Call_048_68fd:
Jump_048_68fd:
    db $fd                                        ; $68fd: $fd
    adc e                                         ; $68fe: $8b
    ld a, c                                       ; $68ff: $79
    db $e3                                        ; $6900: $e3
    and c                                         ; $6901: $a1
    sbc d                                         ; $6902: $9a
    ld l, c                                       ; $6903: $69
    ld e, l                                       ; $6904: $5d
    dec d                                         ; $6905: $15
    rst $28                                       ; $6906: $ef
    dec h                                         ; $6907: $25
    ld h, a                                       ; $6908: $67
    jp nc, $af72                                  ; $6909: $d2 $72 $af

    ld h, a                                       ; $690c: $67
    dec bc                                        ; $690d: $0b
    db $ed                                        ; $690e: $ed
    ld h, a                                       ; $690f: $67
    db $f4                                        ; $6910: $f4
    ld b, c                                       ; $6911: $41
    dec [hl]                                      ; $6912: $35
    ld b, $72                                     ; $6913: $06 $72
    ld sp, hl                                     ; $6915: $f9
    pop bc                                        ; $6916: $c1
    jr nz, jr_048_6940                            ; $6917: $20 $27

    cp c                                          ; $6919: $b9
    add hl, sp                                    ; $691a: $39
    inc de                                        ; $691b: $13
    ld sp, $ca55                                  ; $691c: $31 $55 $ca
    and [hl]                                      ; $691f: $a6
    ld hl, sp+$03                                 ; $6920: $f8 $03
    rst $28                                       ; $6922: $ef
    ld d, l                                       ; $6923: $55
    dec c                                         ; $6924: $0d
    ld [hl], d                                    ; $6925: $72
    sub d                                         ; $6926: $92
    sbc e                                         ; $6927: $9b
    ld [hl], e                                    ; $6928: $73
    rst $38                                       ; $6929: $ff
    and a                                         ; $692a: $a7
    ld sp, hl                                     ; $692b: $f9
    ld c, $13                                     ; $692c: $0e $13
    ld d, b                                       ; $692e: $50
    dec a                                         ; $692f: $3d
    sbc $94                                       ; $6930: $de $94
    call c, Call_048_58bc                         ; $6932: $dc $bc $58
    ld h, h                                       ; $6935: $64
    ld b, [hl]                                    ; $6936: $46
    ld b, e                                       ; $6937: $43
    add hl, sp                                    ; $6938: $39
    and [hl]                                      ; $6939: $a6
    jp z, Jump_048_7695                           ; $693a: $ca $95 $76

    jp Jump_000_390d                              ; $693d: $c3 $0d $39


jr_048_6940:
    inc de                                        ; $6940: $13
    db $ed                                        ; $6941: $ed
    ld b, a                                       ; $6942: $47
    sbc $78                                       ; $6943: $de $78
    ld b, c                                       ; $6945: $41
    ld d, a                                       ; $6946: $57
    jp c, Jump_048_4ff9                           ; $6947: $da $f9 $4f

    ld e, e                                       ; $694a: $5b
    add d                                         ; $694b: $82
    ld a, l                                       ; $694c: $7d
    or a                                          ; $694d: $b7
    or h                                          ; $694e: $b4
    or b                                          ; $694f: $b0
    ld [bc], a                                    ; $6950: $02
    rrca                                          ; $6951: $0f
    call nc, Call_048_659b                        ; $6952: $d4 $9b $65
    cp h                                          ; $6955: $bc
    rst $10                                       ; $6956: $d7
    pop hl                                        ; $6957: $e1
    ld hl, $9796                                  ; $6958: $21 $96 $97
    adc $3e                                       ; $695b: $ce $3e
    inc [hl]                                      ; $695d: $34
    rst $30                                       ; $695e: $f7
    ld a, a                                       ; $695f: $7f
    sbc d                                         ; $6960: $9a
    rst $28                                       ; $6961: $ef
    call c, Call_048_41af                         ; $6962: $dc $af $41
    db $d3                                        ; $6965: $d3
    ld [hl], a                                    ; $6966: $77
    cp d                                          ; $6967: $ba
    ld a, [hl+]                                   ; $6968: $2a
    adc [hl]                                      ; $6969: $8e
    db $e3                                        ; $696a: $e3
    ld [hl], c                                    ; $696b: $71
    di                                            ; $696c: $f3
    adc h                                         ; $696d: $8c
    pop bc                                        ; $696e: $c1
    add d                                         ; $696f: $82
    ld l, $3f                                     ; $6970: $2e $3f
    ld e, b                                       ; $6972: $58
    call nc, $20d2                                ; $6973: $d4 $d2 $20
    daa                                           ; $6976: $27
    cp c                                          ; $6977: $b9
    add hl, sp                                    ; $6978: $39
    ld a, c                                       ; $6979: $79
    jp nz, Jump_048_7780                          ; $697a: $c2 $80 $77

    ld b, d                                       ; $697d: $42
    call $9323                                    ; $697e: $cd $23 $93
    call $00f8                                    ; $6981: $cd $f8 $00
    sub a                                         ; $6984: $97
    rst $18                                       ; $6985: $df
    ld e, c                                       ; $6986: $59
    sbc e                                         ; $6987: $9b
    ei                                            ; $6988: $fb
    rra                                           ; $6989: $1f
    inc b                                         ; $698a: $04
    db $dd                                        ; $698b: $dd
    add a                                         ; $698c: $87
    and $bb                                       ; $698d: $e6 $bb
    sub e                                         ; $698f: $93
    ld [hl], c                                    ; $6990: $71
    ld c, c                                       ; $6991: $49
    ld b, c                                       ; $6992: $41
    adc $a9                                       ; $6993: $ce $a9
    and h                                         ; $6995: $a4
    add [hl]                                      ; $6996: $86
    add hl, sp                                    ; $6997: $39
    rst $18                                       ; $6998: $df
    ld e, l                                       ; $6999: $5d
    sbc d                                         ; $699a: $9a
    adc [hl]                                      ; $699b: $8e

Call_048_699c:
    ld [hl], a                                    ; $699c: $77
    xor l                                         ; $699d: $ad
    sub c                                         ; $699e: $91
    and l                                         ; $699f: $a5
    sbc a                                         ; $69a0: $9f
    and l                                         ; $69a1: $a5
    cpl                                           ; $69a2: $2f
    xor c                                         ; $69a3: $a9
    add l                                         ; $69a4: $85
    rst $18                                       ; $69a5: $df
    pop af                                        ; $69a6: $f1
    cp h                                          ; $69a7: $bc
    jp nc, $97fe                                  ; $69a8: $d2 $fe $97

    dec sp                                        ; $69ab: $3b
    rst $18                                       ; $69ac: $df
    sub [hl]                                      ; $69ad: $96
    ei                                            ; $69ae: $fb
    rra                                           ; $69af: $1f
    inc b                                         ; $69b0: $04
    ld d, l                                       ; $69b1: $55
    ei                                            ; $69b2: $fb
    ld d, b                                       ; $69b3: $50
    ld a, h                                       ; $69b4: $7c
    nop                                           ; $69b5: $00
    rst $28                                       ; $69b6: $ef

jr_048_69b7:
    db $fd                                        ; $69b7: $fd
    jp z, $ce61                                   ; $69b8: $ca $61 $ce

    ld [hl], a                                    ; $69bb: $77
    add d                                         ; $69bc: $82
    db $e3                                        ; $69bd: $e3

jr_048_69be:
    db $10                                        ; $69be: $10
    rst $08                                       ; $69bf: $cf
    or l                                          ; $69c0: $b5
    call c, $01a5                                 ; $69c1: $dc $a5 $01
    ld b, d                                       ; $69c4: $42
    xor a                                         ; $69c5: $af
    ld d, $3a                                     ; $69c6: $16 $3a
    xor b                                         ; $69c8: $a8
    add d                                         ; $69c9: $82
    add $bb                                       ; $69ca: $c6 $bb
    ld h, $17                                     ; $69cc: $26 $17
    ld d, [hl]                                    ; $69ce: $56
    jr jr_048_69b7                                ; $69cf: $18 $e6

    adc $18                                       ; $69d1: $ce $18
    db $e4                                        ; $69d3: $e4
    ret c                                         ; $69d4: $d8

    pop bc                                        ; $69d5: $c1
    sbc h                                         ; $69d6: $9c
    jp hl                                         ; $69d7: $e9


    or l                                          ; $69d8: $b5
    db $e4                                        ; $69d9: $e4
    ld c, e                                       ; $69da: $4b
    jp Jump_048_5404                              ; $69db: $c3 $04 $54


    adc a                                         ; $69de: $8f
    scf                                           ; $69df: $37
    dec h                                         ; $69e0: $25
    scf                                           ; $69e1: $37
    rlca                                          ; $69e2: $07
    ld [$f4fe], a                                 ; $69e3: $ea $fe $f4
    call $00f8                                    ; $69e6: $cd $f8 $00
    ld l, a                                       ; $69e9: $6f
    ld a, l                                       ; $69ea: $7d
    dec c                                         ; $69eb: $0d
    sbc d                                         ; $69ec: $9a
    ld l, d                                       ; $69ed: $6a
    ld de, $3b06                                  ; $69ee: $11 $06 $3b
    dec de                                        ; $69f1: $1b
    jr jr_048_69be                                ; $69f2: $18 $ca

    sub l                                         ; $69f4: $95
    sub $e6                                       ; $69f5: $d6 $e6
    jr nz, jr_048_6a2c                            ; $69f7: $20 $33

    jp c, $e687                                   ; $69f9: $da $87 $e6

    or c                                          ; $69fc: $b1
    inc sp                                        ; $69fd: $33
    ld e, a                                       ; $69fe: $5f

Call_048_69ff:
    ld l, l                                       ; $69ff: $6d
    ld b, [hl]                                    ; $6a00: $46
    ld a, [c]                                     ; $6a01: $f2
    ld b, e                                       ; $6a02: $43
    db $10                                        ; $6a03: $10
    add d                                         ; $6a04: $82
    ld c, [hl]                                    ; $6a05: $4e
    or a                                          ; $6a06: $b7
    adc $a9                                       ; $6a07: $ce $a9
    jp hl                                         ; $6a09: $e9


    ld sp, $7341                                  ; $6a0a: $31 $41 $73
    rra                                           ; $6a0d: $1f
    sbc d                                         ; $6a0e: $9a
    rst $28                                       ; $6a0f: $ef
    ld hl, sp-$2c                                 ; $6a10: $f8 $d4
    ld a, [$2dce]                                 ; $6a12: $fa $ce $2d
    ld a, c                                       ; $6a15: $79
    inc l                                         ; $6a16: $2c
    add h                                         ; $6a17: $84
    add hl, bc                                    ; $6a18: $09
    ld [c], a                                     ; $6a19: $e2
    inc bc                                        ; $6a1a: $03
    rst $10                                       ; $6a1b: $d7
    ld [hl], d                                    ; $6a1c: $72
    xor a                                         ; $6a1d: $af
    ld h, a                                       ; $6a1e: $67
    dec bc                                        ; $6a1f: $0b
    xor c                                         ; $6a20: $a9
    ld c, c                                       ; $6a21: $49
    ld c, e                                       ; $6a22: $4b
    cp $9f                                        ; $6a23: $fe $9f
    ld h, $9d                                     ; $6a25: $26 $9d
    ld e, h                                       ; $6a27: $5c
    ret nc                                        ; $6a28: $d0

    ld b, l                                       ; $6a29: $45
    xor l                                         ; $6a2a: $ad
    ld h, d                                       ; $6a2b: $62

jr_048_6a2c:
    db $d3                                        ; $6a2c: $d3
    dec sp                                        ; $6a2d: $3b
    ld d, l                                       ; $6a2e: $55
    rst $28                                       ; $6a2f: $ef
    ld h, h                                       ; $6a30: $64
    inc a                                         ; $6a31: $3c
    ld c, h                                       ; $6a32: $4c
    ld b, b                                       ; $6a33: $40
    push af                                       ; $6a34: $f5
    ld a, b                                       ; $6a35: $78
    ld d, e                                       ; $6a36: $53
    ld [hl], d                                    ; $6a37: $72
    ld [hl], e                                    ; $6a38: $73
    ld l, $a6                                     ; $6a39: $2e $a6
    ld l, a                                       ; $6a3b: $6f
    add $7b                                       ; $6a3c: $c6 $7b
    xor a                                         ; $6a3e: $af
    sub e                                         ; $6a3f: $93
    ld c, [hl]                                    ; $6a40: $4e
    ld h, [hl]                                    ; $6a41: $66
    ld [hl], e                                    ; $6a42: $73
    rst $18                                       ; $6a43: $df
    dec l                                         ; $6a44: $2d
    sbc c                                         ; $6a45: $99
    sbc $19                                       ; $6a46: $de $19
    add e                                         ; $6a48: $83
    cp h                                          ; $6a49: $bc
    ret c                                         ; $6a4a: $d8

    cp c                                          ; $6a4b: $b9
    ld e, d                                       ; $6a4c: $5a
    and h                                         ; $6a4d: $a4
    add $05                                       ; $6a4e: $c6 $05
    call Call_000_2ef9                            ; $6a50: $cd $f9 $2e
    ld [hl], d                                    ; $6a53: $72
    xor b                                         ; $6a54: $a8
    add hl, de                                    ; $6a55: $19
    rra                                           ; $6a56: $1f
    sub a                                         ; $6a57: $97
    dec d                                         ; $6a58: $15
    ld d, $60                                     ; $6a59: $16 $60
    or b                                          ; $6a5b: $b0
    ld [de], a                                    ; $6a5c: $12
    ld l, b                                       ; $6a5d: $68
    xor d                                         ; $6a5e: $aa
    ld h, c                                       ; $6a5f: $61
    ld [bc], a                                    ; $6a60: $02
    xor d                                         ; $6a61: $aa
    rst $00                                       ; $6a62: $c7
    sbc e                                         ; $6a63: $9b
    sub d                                         ; $6a64: $92
    sbc e                                         ; $6a65: $9b
    ld [hl], e                                    ; $6a66: $73
    rst $38                                       ; $6a67: $ff
    and a                                         ; $6a68: $a7
    or l                                          ; $6a69: $b5
    add hl, sp                                    ; $6a6a: $39
    cp $6e                                        ; $6a6b: $fe $6e
    ret                                           ; $6a6d: $c9


    sub e                                         ; $6a6e: $93
    and l                                         ; $6a6f: $a5
    inc e                                         ; $6a70: $1c
    add sp, $19                                   ; $6a71: $e8 $19
    sbc e                                         ; $6a73: $9b
    ld d, a                                       ; $6a74: $57
    ld c, $cf                                     ; $6a75: $0e $cf
    ret nc                                        ; $6a77: $d0

    ld d, b                                       ; $6a78: $50
    dec c                                         ; $6a79: $0d
    or h                                          ; $6a7a: $b4
    add hl, sp                                    ; $6a7b: $39
    cp $6e                                        ; $6a7c: $fe $6e
    ret                                           ; $6a7e: $c9


    sub e                                         ; $6a7f: $93
    and l                                         ; $6a80: $a5
    sbc h                                         ; $6a81: $9c
    rst $00                                       ; $6a82: $c7
    ld l, $f8                                     ; $6a83: $2e $f8
    adc $a4                                       ; $6a85: $ce $a4
    push hl                                       ; $6a87: $e5
    ld b, b                                       ; $6a88: $40
    or e                                          ; $6a89: $b3
    rst $20                                       ; $6a8a: $e7
    and $c5                                       ; $6a8b: $e6 $c5
    ld e, [hl]                                    ; $6a8d: $5e
    ld sp, hl                                     ; $6a8e: $f9
    call z, $f8a5                                 ; $6a8f: $cc $a5 $f8
    nop                                           ; $6a92: $00
    cpl                                           ; $6a93: $2f

Jump_048_6a94:
    sub h                                         ; $6a94: $94
    rst $30                                       ; $6a95: $f7
    and c                                         ; $6a96: $a1
    ld a, c                                       ; $6a97: $79
    db $e3                                        ; $6a98: $e3
    dec b                                         ; $6a99: $05
    ld e, l                                       ; $6a9a: $5d
    ld h, d                                       ; $6a9b: $62
    ld a, c                                       ; $6a9c: $79
    or a                                          ; $6a9d: $b7
    pop af                                        ; $6a9e: $f1
    xor a                                         ; $6a9f: $af
    ld l, e                                       ; $6aa0: $6b
    ld e, d                                       ; $6aa1: $5a
    inc hl                                        ; $6aa2: $23
    cp b                                          ; $6aa3: $b8
    ld l, l                                       ; $6aa4: $6d
    sbc b                                         ; $6aa5: $98
    ld l, e                                       ; $6aa6: $6b
    ld [hl], e                                    ; $6aa7: $73
    or d                                          ; $6aa8: $b2
    ld e, h                                       ; $6aa9: $5c
    dec a                                         ; $6aaa: $3d
    rst $10                                       ; $6aab: $d7
    inc [hl]                                      ; $6aac: $34
    ld e, a                                       ; $6aad: $5f
    db $ec                                        ; $6aae: $ec
    sub l                                         ; $6aaf: $95
    rst $08                                       ; $6ab0: $cf

Jump_048_6ab1:
    ld e, h                                       ; $6ab1: $5c
    adc d                                         ; $6ab2: $8a
    rrca                                          ; $6ab3: $0f
    rst $28                                       ; $6ab4: $ef
    ld [hl], l                                    ; $6ab5: $75
    rst $20                                       ; $6ab6: $e7
    ld [bc], a                                    ; $6ab7: $02
    ret nc                                        ; $6ab8: $d0

    sbc h                                         ; $6ab9: $9c
    scf                                           ; $6aba: $37
    sbc $eb                                       ; $6abb: $de $eb
    reti                                          ; $6abd: $d9


    ld b, d                                       ; $6abe: $42
    inc sp                                        ; $6abf: $33
    bit 4, c                                      ; $6ac0: $cb $61
    ld a, l                                       ; $6ac2: $7d
    xor c                                         ; $6ac3: $a9
    call $b9b5                                    ; $6ac4: $cd $b5 $b9
    or b                                          ; $6ac7: $b0
    or d                                          ; $6ac8: $b2
    ld a, d                                       ; $6ac9: $7a
    ld h, c                                       ; $6aca: $61
    dec hl                                        ; $6acb: $2b
    ld [c], a                                     ; $6acc: $e2
    adc e                                         ; $6acd: $8b
    add hl, bc                                    ; $6ace: $09
    dec c                                         ; $6acf: $0d
    ld c, l                                       ; $6ad0: $4d
    cp e                                          ; $6ad1: $bb
    sbc l                                         ; $6ad2: $9d
    ld e, c                                       ; $6ad3: $59
    xor $bd                                       ; $6ad4: $ee $bd
    sub e                                         ; $6ad6: $93
    ld a, c                                       ; $6ad7: $79
    ld e, a                                       ; $6ad8: $5f
    ld [hl-], a                                   ; $6ad9: $32
    inc hl                                        ; $6ada: $23
    dec d                                         ; $6adb: $15
    rst $28                                       ; $6adc: $ef
    ld [de], a                                    ; $6add: $12
    add e                                         ; $6ade: $83
    and c                                         ; $6adf: $a1
    ld a, [de]                                    ; $6ae0: $1a
    scf                                           ; $6ae1: $37
    sub l                                         ; $6ae2: $95
    cp $cc                                        ; $6ae3: $fe $cc
    ld e, l                                       ; $6ae5: $5d
    ld e, b                                       ; $6ae6: $58
    ld e, [hl]                                    ; $6ae7: $5e
    ld hl, sp-$41                                 ; $6ae8: $f8 $bf
    ret z                                         ; $6aea: $c8

    rst $08                                       ; $6aeb: $cf
    or l                                          ; $6aec: $b5
    call c, Call_000_277b                         ; $6aed: $dc $7b $27
    di                                            ; $6af0: $f3
    cp [hl]                                       ; $6af1: $be
    add h                                         ; $6af2: $84
    ldh a, [$30]                                  ; $6af3: $f0 $30
    ld a, $00                                     ; $6af5: $3e $00
    rst $10                                       ; $6af7: $d7
    db $e4                                        ; $6af8: $e4
    inc h                                         ; $6af9: $24
    ld h, c                                       ; $6afa: $61
    nop                                           ; $6afb: $00
    and $3b                                       ; $6afc: $e6 $3b
    ld c, c                                       ; $6afe: $49
    ld e, b                                       ; $6aff: $58
    and c                                         ; $6b00: $a1
    ld e, d                                       ; $6b01: $5a
    call $dcb5                                    ; $6b02: $cd $b5 $dc
    db $eb                                        ; $6b05: $eb
    reti                                          ; $6b06: $d9


    ld b, d                                       ; $6b07: $42
    pop af                                        ; $6b08: $f1
    ld bc, $e4d7                                  ; $6b09: $01 $d7 $e4
    ld c, [hl]                                    ; $6b0c: $4e
    xor b                                         ; $6b0d: $a8
    and a                                         ; $6b0e: $a7
    ld c, e                                       ; $6b0f: $4b
    call $bf85                                    ; $6b10: $cd $85 $bf
    ld b, e                                       ; $6b13: $43
    add hl, sp                                    ; $6b14: $39
    ld de, $f2a1                                  ; $6b15: $11 $a1 $f2
    ld h, h                                       ; $6b18: $64
    add hl, hl                                    ; $6b19: $29
    sbc e                                         ; $6b1a: $9b
    adc e                                         ; $6b1b: $8b
    ld a, [hl]                                    ; $6b1c: $7e
    ld a, c                                       ; $6b1d: $79
    sub c                                         ; $6b1e: $91
    ret                                           ; $6b1f: $c9


    ld h, [hl]                                    ; $6b20: $66
    ld a, h                                       ; $6b21: $7c
    nop                                           ; $6b22: $00
    sub a                                         ; $6b23: $97
    push hl                                       ; $6b24: $e5
    sub c                                         ; $6b25: $91
    add e                                         ; $6b26: $83
    sub d                                         ; $6b27: $92
    rla                                           ; $6b28: $17
    ld h, d                                       ; $6b29: $62
    ld l, c                                       ; $6b2a: $69
    ld l, c                                       ; $6b2b: $69
    ld b, [hl]                                    ; $6b2c: $46
    and e                                         ; $6b2d: $a3
    rst $08                                       ; $6b2e: $cf
    call c, Call_048_4b15                         ; $6b2f: $dc $15 $4b
    call $00f8                                    ; $6b32: $cd $f8 $00
    cpl                                           ; $6b35: $2f
    ld h, d                                       ; $6b36: $62
    sub b                                         ; $6b37: $90
    inc de                                        ; $6b38: $13
    add sp, -$69                                  ; $6b39: $e8 $97
    ld d, $b6                                     ; $6b3b: $16 $b6
    ld [hl+], a                                   ; $6b3d: $22
    ld e, [hl]                                    ; $6b3e: $5e
    call nc, Call_000_25b9                        ; $6b3f: $d4 $b9 $25
    xor [hl]                                      ; $6b42: $ae
    or $f3                                        ; $6b43: $f6 $f3
    add $2b                                       ; $6b45: $c6 $2b
    dec c                                         ; $6b47: $0d
    bit 5, d                                      ; $6b48: $cb $6a
    ld h, c                                       ; $6b4a: $61
    xor e                                         ; $6b4b: $ab
    rlca                                          ; $6b4c: $07
    ret z                                         ; $6b4d: $c8

    jr nz, jr_048_6b58                            ; $6b4e: $20 $08

    add c                                         ; $6b50: $81
    ld a, [de]                                    ; $6b51: $1a
    xor b                                         ; $6b52: $a8
    ld d, b                                       ; $6b53: $50
    add a                                         ; $6b54: $87
    ld a, b                                       ; $6b55: $78
    and [hl]                                      ; $6b56: $a6
    push de                                       ; $6b57: $d5

jr_048_6b58:
    ld d, b                                       ; $6b58: $50
    ld l, $2a                                     ; $6b59: $2e $2a
    xor a                                         ; $6b5b: $af
    call Call_048_5fb9                            ; $6b5c: $cd $b9 $5f
    db $eb                                        ; $6b5f: $eb
    ld c, [hl]                                    ; $6b60: $4e
    and h                                         ; $6b61: $a4
    xor e                                         ; $6b62: $ab
    add $df                                       ; $6b63: $c6 $df
    dec l                                         ; $6b65: $2d
    ld a, c                                       ; $6b66: $79
    or d                                          ; $6b67: $b2
    sub h                                         ; $6b68: $94
    ld d, e                                       ; $6b69: $53
    ldh a, [$d0]                                  ; $6b6a: $f0 $d0
    pop af                                        ; $6b6c: $f1
    inc e                                         ; $6b6d: $1c
    rra                                           ; $6b6e: $1f
    rst $10                                       ; $6b6f: $d7
    db $e4                                        ; $6b70: $e4
    ld c, [hl]                                    ; $6b71: $4e
    xor b                                         ; $6b72: $a8
    ld [hl], a                                    ; $6b73: $77
    ld a, [hl+]                                   ; $6b74: $2a
    scf                                           ; $6b75: $37
    rla                                           ; $6b76: $17
    cp $0e                                        ; $6b77: $fe $0e
    push hl                                       ; $6b79: $e5
    jp c, $681c                                   ; $6b7a: $da $1c $68

    or [hl]                                       ; $6b7d: $b6
    ld c, d                                       ; $6b7e: $4a
    sub d                                         ; $6b7f: $92
    pop bc                                        ; $6b80: $c1
    ld b, e                                       ; $6b81: $43
    ld b, [hl]                                    ; $6b82: $46
    ret nc                                        ; $6b83: $d0

Jump_048_6b84:
    ld a, c                                       ; $6b84: $79
    or d                                          ; $6b85: $b2
    sub h                                         ; $6b86: $94
    adc e                                         ; $6b87: $8b
    ld a, [hl]                                    ; $6b88: $7e
    ld a, c                                       ; $6b89: $79
    sub c                                         ; $6b8a: $91
    ret                                           ; $6b8b: $c9


    ld h, [hl]                                    ; $6b8c: $66
    cp h                                          ; $6b8d: $bc
    xor e                                         ; $6b8e: $ab
    db $dd                                        ; $6b8f: $dd
    ld a, e                                       ; $6b90: $7b
    daa                                           ; $6b91: $27
    di                                            ; $6b92: $f3
    cp [hl]                                       ; $6b93: $be
    ld h, h                                       ; $6b94: $64
    ld b, [hl]                                    ; $6b95: $46
    ld l, d                                       ; $6b96: $6a
    ld a, [de]                                    ; $6b97: $1a
    pop hl                                        ; $6b98: $e1
    ld hl, $1737                                  ; $6b99: $21 $37 $17
    ld [hl], l                                    ; $6b9c: $75
    ldh a, [$9f]                                  ; $6b9d: $f0 $9f
    adc h                                         ; $6b9f: $8c
    jp hl                                         ; $6ba0: $e9


    call z, $e5fd                                 ; $6ba1: $cc $fd $e5
    and b                                         ; $6ba4: $a0
    ei                                            ; $6ba5: $fb
    ret nc                                        ; $6ba6: $d0

    ld a, h                                       ; $6ba7: $7c
    rlca                                          ; $6ba8: $07
    inc l                                         ; $6ba9: $2c
    ld b, c                                       ; $6baa: $41
    ld a, h                                       ; $6bab: $7c
    nop                                           ; $6bac: $00
    xor a                                         ; $6bad: $af
    ret nc                                        ; $6bae: $d0

    rla                                           ; $6baf: $17
    ld e, d                                       ; $6bb0: $5a
    ld e, d                                       ; $6bb1: $5a
    ld l, c                                       ; $6bb2: $69
    adc c                                         ; $6bb3: $89
    push hl                                       ; $6bb4: $e5
    or l                                          ; $6bb5: $b5
    add hl, sp                                    ; $6bb6: $39
    db $d3                                        ; $6bb7: $d3
    db $e3                                        ; $6bb8: $e3
    ld c, $d0                                     ; $6bb9: $0e $d0
    rst $38                                       ; $6bbb: $ff
    cp h                                          ; $6bbc: $bc
    di                                            ; $6bbd: $f3
    rst $38                                       ; $6bbe: $ff
    ret z                                         ; $6bbf: $c8

    ld b, c                                       ; $6bc0: $41
    rst $20                                       ; $6bc1: $e7
    ld e, d                                       ; $6bc2: $5a
    adc [hl]                                      ; $6bc3: $8e
    cp e                                          ; $6bc4: $bb
    ret z                                         ; $6bc5: $c8

    ld h, h                                       ; $6bc6: $64
    di                                            ; $6bc7: $f3
    ld h, d                                       ; $6bc8: $62
    xor a                                         ; $6bc9: $af
    ld a, h                                       ; $6bca: $7c
    and $52                                       ; $6bcb: $e6 $52
    ld a, h                                       ; $6bcd: $7c
    nop                                           ; $6bce: $00
    rst $10                                       ; $6bcf: $d7
    db $e4                                        ; $6bd0: $e4
    jp nz, $a1ff                                  ; $6bd1: $c2 $ff $a1

    ld a, c                                       ; $6bd4: $79
    db $e3                                        ; $6bd5: $e3
    and c                                         ; $6bd6: $a1
    ld e, h                                       ; $6bd7: $5c
    ld h, d                                       ; $6bd8: $62
    ld e, c                                       ; $6bd9: $59
    dec l                                         ; $6bda: $2d
    ld a, [$76a4]                                 ; $6bdb: $fa $a4 $76
    cp $a6                                        ; $6bde: $fe $a6
    push de                                       ; $6be0: $d5
    ld d, b                                       ; $6be1: $50
    ld l, $6a                                     ; $6be2: $2e $6a
    dec d                                         ; $6be4: $15
    sbc e                                         ; $6be5: $9b
    sbc [hl]                                      ; $6be6: $9e
    rst $38                                       ; $6be7: $ff
    adc l                                         ; $6be8: $8d
    rrca                                          ; $6be9: $0f
    cpl                                           ; $6bea: $2f
    ld h, d                                       ; $6beb: $62
    sub b                                         ; $6bec: $90
    sub e                                         ; $6bed: $93
    push hl                                       ; $6bee: $e5
    ld [$8d01], a                                 ; $6bef: $ea $01 $8d
    ld de, $6dcf                                  ; $6bf2: $11 $cf $6d
    push af                                       ; $6bf5: $f5
    and d                                         ; $6bf6: $a2
    sub [hl]                                      ; $6bf7: $96
    and $2d                                       ; $6bf8: $e6 $2d
    rst $20                                       ; $6bfa: $e7
    or c                                          ; $6bfb: $b1
    ld [hl], e                                    ; $6bfc: $73
    dec l                                         ; $6bfd: $2d
    rst $20                                       ; $6bfe: $e7
    dec sp                                        ; $6bff: $3b
    ld c, e                                       ; $6c00: $4b
    ld e, a                                       ; $6c01: $5f
    ld l, d                                       ; $6c02: $6a
    add $bb                                       ; $6c03: $c6 $bb
    sbc $9d                                       ; $6c05: $de $9d
    cp a                                          ; $6c07: $bf
    inc sp                                        ; $6c08: $33
    adc a                                         ; $6c09: $8f
    sbc l                                         ; $6c0a: $9d
    ld l, e                                       ; $6c0b: $6b
    cp c                                          ; $6c0c: $b9
    ldh [$3b], a                                  ; $6c0d: $e0 $3b
    ei                                            ; $6c0f: $fb
    ld e, a                                       ; $6c10: $5f
    xor [hl]                                      ; $6c11: $ae
    ld c, l                                       ; $6c12: $4d
    or l                                          ; $6c13: $b5
    add sp, -$69                                  ; $6c14: $e8 $97
    sbc e                                         ; $6c16: $9b
    add e                                         ; $6c17: $83
    ld a, [hl]                                    ; $6c18: $7e
    ld e, c                                       ; $6c19: $59
    dec [hl]                                      ; $6c1a: $35
    db $e3                                        ; $6c1b: $e3
    inc bc                                        ; $6c1c: $03
    cpl                                           ; $6c1d: $2f
    ld h, d                                       ; $6c1e: $62
    sub b                                         ; $6c1f: $90
    inc de                                        ; $6c20: $13
    add sp, -$69                                  ; $6c21: $e8 $97
    call nc, $9e84                                ; $6c23: $d4 $84 $9e
    ld c, d                                       ; $6c26: $4a
    call $e379                                    ; $6c27: $cd $79 $e3
    cp l                                          ; $6c2a: $bd
    sbc [hl]                                      ; $6c2b: $9e
    dec l                                         ; $6c2c: $2d
    or h                                          ; $6c2d: $b4
    inc l                                         ; $6c2e: $2c
    rst $28                                       ; $6c2f: $ef
    db $fc                                        ; $6c30: $fc
    rlca                                          ; $6c31: $07
    ld a, [de]                                    ; $6c32: $1a
    or l                                          ; $6c33: $b5
    add hl, sp                                    ; $6c34: $39
    ld d, h                                       ; $6c35: $54
    inc sp                                        ; $6c36: $33
    xor l                                         ; $6c37: $ad
    ld d, $62                                     ; $6c38: $16 $62
    or b                                          ; $6c3a: $b0
    sub d                                         ; $6c3b: $92
    add e                                         ; $6c3c: $83
    cp h                                          ; $6c3d: $bc
    inc sp                                        ; $6c3e: $33
    sub [hl]                                      ; $6c3f: $96
    db $e3                                        ; $6c40: $e3
    inc bc                                        ; $6c41: $03
    cpl                                           ; $6c42: $2f
    ld d, h                                       ; $6c43: $54
    xor c                                         ; $6c44: $a9
    and $5a                                       ; $6c45: $e6 $5a
    ld d, d                                       ; $6c47: $52
    call c, $8cc0                                 ; $6c48: $dc $c0 $8c
    call nc, $db63                                ; $6c4b: $d4 $63 $db
    ld [hl], e                                    ; $6c4e: $73
    push af                                       ; $6c4f: $f5
    ld h, [hl]                                    ; $6c50: $66
    ret                                           ; $6c51: $c9


    cp l                                          ; $6c52: $bd
    ld l, e                                       ; $6c53: $6b
    ld l, [hl]                                    ; $6c54: $6e
    ret                                           ; $6c55: $c9


    jp nc, Jump_000_3097                          ; $6c56: $d2 $97 $30

    ld b, c                                       ; $6c59: $41
    di                                            ; $6c5a: $f3
    ld h, d                                       ; $6c5b: $62
    ld l, a                                       ; $6c5c: $6f
    ld a, h                                       ; $6c5d: $7c
    or a                                          ; $6c5e: $b7
    db $e4                                        ; $6c5f: $e4
    ret                                           ; $6c60: $c9


    ld d, d                                       ; $6c61: $52
    ld [hl], $2f                                  ; $6c62: $36 $2f
    or $54                                        ; $6c64: $f6 $54
    rst $08                                       ; $6c66: $cf
    and a                                         ; $6c67: $a7
    ld [de], a                                    ; $6c68: $12
    ld h, $68                                     ; $6c69: $26 $68
    ld e, [hl]                                    ; $6c6b: $5e
    db $ec                                        ; $6c6c: $ec
    cp c                                          ; $6c6d: $b9
    ld a, [hl+]                                   ; $6c6e: $2a
    ld a, b                                       ; $6c6f: $78
    adc b                                         ; $6c70: $88
    push af                                       ; $6c71: $f5
    ld c, l                                       ; $6c72: $4d
    ld d, h                                       ; $6c73: $54
    ld [hl], e                                    ; $6c74: $73
    dec l                                         ; $6c75: $2d
    rst $20                                       ; $6c76: $e7
    cp e                                          ; $6c77: $bb
    scf                                           ; $6c78: $37
    cp [hl]                                       ; $6c79: $be
    ld e, e                                       ; $6c7a: $5b
    sub d                                         ; $6c7b: $92
    ld c, [hl]                                    ; $6c7c: $4e
    ld a, [hl+]                                   ; $6c7d: $2a
    cp [hl]                                       ; $6c7e: $be
    ret c                                         ; $6c7f: $d8

    di                                            ; $6c80: $f3
    db $e4                                        ; $6c81: $e4
    and b                                         ; $6c82: $a0
    ld l, a                                       ; $6c83: $6f
    ld c, d                                       ; $6c84: $4a
    daa                                           ; $6c85: $27
    ld a, l                                       ; $6c86: $7d
    cpl                                           ; $6c87: $2f
    or $56                                        ; $6c88: $f6 $56
    jp hl                                         ; $6c8a: $e9


    call nc, $b8d2                                ; $6c8b: $d4 $d2 $b8
    and b                                         ; $6c8e: $a0
    add hl, sp                                    ; $6c8f: $39
    rst $18                                       ; $6c90: $df
    cp l                                          ; $6c91: $bd
    ld [hl], a                                    ; $6c92: $77
    ld [hl-], a                                   ; $6c93: $32
    ld [c], a                                     ; $6c94: $e2
    xor $79                                       ; $6c95: $ee $79
    daa                                           ; $6c97: $27
    dec d                                         ; $6c98: $15
    scf                                           ; $6c99: $37
    rst $10                                       ; $6c9a: $d7
    call c, $1a5b                                 ; $6c9b: $dc $5b $1a
    dec bc                                        ; $6c9e: $0b
    ld [hl], h                                    ; $6c9f: $74
    ld d, l                                       ; $6ca0: $55
    ld a, h                                       ; $6ca1: $7c
    nop                                           ; $6ca2: $00
    rst $10                                       ; $6ca3: $d7
    cp e                                          ; $6ca4: $bb
    add sp, -$69                                  ; $6ca5: $e8 $97
    rst $30                                       ; $6ca7: $f7
    ld hl, $0f05                                  ; $6ca8: $21 $05 $0f
    or c                                          ; $6cab: $b1
    call c, $fb9c                                 ; $6cac: $dc $9c $fb
    ccf                                           ; $6caf: $3f
    dec l                                         ; $6cb0: $2d
    add sp, -$24                                  ; $6cb1: $e8 $dc
    xor a                                         ; $6cb3: $af
    ld b, c                                       ; $6cb4: $41
    db $d3                                        ; $6cb5: $d3
    ld [hl], a                                    ; $6cb6: $77
    cp d                                          ; $6cb7: $ba
    ld a, [hl+]                                   ; $6cb8: $2a
    ld a, $00                                     ; $6cb9: $3e $00
    ld c, a                                       ; $6cbb: $4f
    ld l, d                                       ; $6cbc: $6a
    or l                                          ; $6cbd: $b5
    and b                                         ; $6cbe: $a0
    dec bc                                        ; $6cbf: $0b
    ld a, [hl-]                                   ; $6cc0: $3a
    ld a, [$715f]                                 ; $6cc1: $fa $5f $71
    ld l, c                                       ; $6cc4: $69
    adc c                                         ; $6cc5: $89
    push hl                                       ; $6cc6: $e5
    sbc l                                         ; $6cc7: $9d
    ld e, d                                       ; $6cc8: $5a

Jump_048_6cc9:
    cp [hl]                                       ; $6cc9: $be
    sbc b                                         ; $6cca: $98
    call nz, $ce40                                ; $6ccb: $c4 $40 $ce
    ld e, e                                       ; $6cce: $5b
    xor $43                                       ; $6ccf: $ee $43
    dec bc                                        ; $6cd1: $0b
    swap e                                        ; $6cd2: $cb $33
    ld c, e                                       ; $6cd4: $4b
    ld sp, hl                                     ; $6cd5: $f9
    db $d3                                        ; $6cd6: $d3
    inc hl                                        ; $6cd7: $23
    ret nz                                        ; $6cd8: $c0

    inc b                                         ; $6cd9: $04
    ld c, d                                       ; $6cda: $4a
    ld hl, sp-$1c                                 ; $6cdb: $f8 $e4
    add a                                         ; $6cdd: $87
    add hl, sp                                    ; $6cde: $39
    rst $18                                       ; $6cdf: $df
    jp hl                                         ; $6ce0: $e9


    sub [hl]                                      ; $6ce1: $96
    inc [hl]                                      ; $6ce2: $34
    ld h, $68                                     ; $6ce3: $26 $68
    ld c, d                                       ; $6ce5: $4a
    adc e                                         ; $6ce6: $8b
    ld c, d                                       ; $6ce7: $4a
    ld [hl], e                                    ; $6ce8: $73
    dec l                                         ; $6ce9: $2d
    rla                                           ; $6cea: $17
    ld [hl], h                                    ; $6ceb: $74
    ld h, $f2                                     ; $6cec: $26 $f2
    push de                                       ; $6cee: $d5
    sbc b                                         ; $6cef: $98
    jr nz, jr_048_6d30                            ; $6cf0: $20 $3e

    nop                                           ; $6cf2: $00
    rst $10                                       ; $6cf3: $d7
    db $e4                                        ; $6cf4: $e4
    add h                                         ; $6cf5: $84
    and $7e                                       ; $6cf6: $e6 $7e
    ld a, [$a9d2]                                 ; $6cf8: $fa $d2 $a9
    ld h, b                                       ; $6cfb: $60
    ld l, c                                       ; $6cfc: $69
    ld b, [hl]                                    ; $6cfd: $46
    di                                            ; $6cfe: $f3
    sbc l                                         ; $6cff: $9d
    xor [hl]                                      ; $6d00: $ae
    jp c, $e4f3                                   ; $6d01: $da $f3 $e4

    and b                                         ; $6d04: $a0
    ld l, a                                       ; $6d05: $6f
    ld c, d                                       ; $6d06: $4a
    daa                                           ; $6d07: $27
    ld a, l                                       ; $6d08: $7d
    db $e3                                        ; $6d09: $e3
    ld e, l                                       ; $6d0a: $5d
    dec [hl]                                      ; $6d0b: $35
    sbc $e9                                       ; $6d0c: $de $e9
    sub e                                         ; $6d0e: $93
    rst $20                                       ; $6d0f: $e7
    add hl, bc                                    ; $6d10: $09
    ld c, $72                                     ; $6d11: $0e $72
    ld [hl], e                                    ; $6d13: $73
    sbc b                                         ; $6d14: $98
    di                                            ; $6d15: $f3
    sbc l                                         ; $6d16: $9d
    inc [hl]                                      ; $6d17: $34
    and l                                         ; $6d18: $a5
    sbc d                                         ; $6d19: $9a
    inc bc                                        ; $6d1a: $03
    dec b                                         ; $6d1b: $05
    ld [hl], l                                    ; $6d1c: $75
    sbc e                                         ; $6d1d: $9b
    pop af                                        ; $6d1e: $f1
    ld bc, $e4d7                                  ; $6d1f: $01 $d7 $e4
    adc $bf                                       ; $6d22: $ce $bf
    ld [hl], d                                    ; $6d24: $72
    ld h, c                                       ; $6d25: $61
    ld a, c                                       ; $6d26: $79
    ld c, a                                       ; $6d27: $4f
    push af                                       ; $6d28: $f5

Call_048_6d29:
    ld a, h                                       ; $6d29: $7c
    ld a, [hl+]                                   ; $6d2a: $2a
    ld h, c                                       ; $6d2b: $61
    add d                                         ; $6d2c: $82
    and [hl]                                      ; $6d2d: $a6
    cp $d2                                        ; $6d2e: $fe $d2

jr_048_6d30:
    ld c, h                                       ; $6d30: $4c
    rst $00                                       ; $6d31: $c7
    ld a, e                                       ; $6d32: $7b
    db $eb                                        ; $6d33: $eb
    ld l, e                                       ; $6d34: $6b
    ret nc                                        ; $6d35: $d0

    ld d, h                                       ; $6d36: $54
    adc e                                         ; $6d37: $8b
    jr nc, @-$26                                  ; $6d38: $30 $d8

    add hl, de                                    ; $6d3a: $19
    ld a, c                                       ; $6d3b: $79
    ld h, c                                       ; $6d3c: $61
    ld a, c                                       ; $6d3d: $79
    rra                                           ; $6d3e: $1f
    sbc d                                         ; $6d3f: $9a
    rst $28                                       ; $6d40: $ef
    ld hl, sp-$2c                                 ; $6d41: $f8 $d4
    ld a, [$2dce]                                 ; $6d43: $fa $ce $2d
    ld a, c                                       ; $6d46: $79
    inc l                                         ; $6d47: $2c
    add h                                         ; $6d48: $84
    add hl, bc                                    ; $6d49: $09
    ld [c], a                                     ; $6d4a: $e2
    inc bc                                        ; $6d4b: $03
    ld l, a                                       ; $6d4c: $6f
    sub l                                         ; $6d4d: $95
    ld c, [hl]                                    ; $6d4e: $4e
    dec l                                         ; $6d4f: $2d
    adc l                                         ; $6d50: $8d
    dec bc                                        ; $6d51: $0b
    sbc d                                         ; $6d52: $9a
    di                                            ; $6d53: $f3
    db $dd                                        ; $6d54: $dd
    ld a, e                                       ; $6d55: $7b
    daa                                           ; $6d56: $27
    inc hl                                        ; $6d57: $23
    xor $9e                                       ; $6d58: $ee $9e
    ld [hl], a                                    ; $6d5a: $77
    ld d, d                                       ; $6d5b: $52
    ld [hl], c                                    ; $6d5c: $71
    ld [hl], e                                    ; $6d5d: $73
    ld d, d                                       ; $6d5e: $52
    ld h, e                                       ; $6d5f: $63
    ld c, d                                       ; $6d60: $4a
    ld e, [hl]                                    ; $6d61: $5e
    ld a, [hl]                                    ; $6d62: $7e
    ld h, b                                       ; $6d63: $60
    ld a, d                                       ; $6d64: $7a
    add b                                         ; $6d65: $80
    or b                                          ; $6d66: $b0
    rst $20                                       ; $6d67: $e7
    ld l, d                                       ; $6d68: $6a
    inc b                                         ; $6d69: $04
    pop af                                        ; $6d6a: $f1
    ld l, $cb                                     ; $6d6b: $2e $cb
    dec sp                                        ; $6d6d: $3b
    ld a, l                                       ; $6d6e: $7d
    ld a, [c]                                     ; $6d6f: $f2
    inc a                                         ; $6d70: $3c
    ld d, b                                       ; $6d71: $50

Call_048_6d72:
    ld d, b                                       ; $6d72: $50
    or a                                          ; $6d73: $b7
    cp c                                          ; $6d74: $b9
    rrca                                          ; $6d75: $0f
    call $be77                                    ; $6d76: $cd $77 $be
    db $e4                                        ; $6d79: $e4
    dec sp                                        ; $6d7a: $3b
    or a                                          ; $6d7b: $b7
    db $e4                                        ; $6d7c: $e4
    or c                                          ; $6d7d: $b1
    db $10                                        ; $6d7e: $10
    ld h, $88                                     ; $6d7f: $26 $88
    rrca                                          ; $6d81: $0f
    cpl                                           ; $6d82: $2f
    ld b, e                                       ; $6d83: $43
    di                                            ; $6d84: $f3
    sbc l                                         ; $6d85: $9d
    ld d, b                                       ; $6d86: $50
    ld h, b                                       ; $6d87: $60
    reti                                          ; $6d88: $d9


    ld bc, $e9fa                                  ; $6d89: $01 $fa $e9
    ld [hl], a                                    ; $6d8c: $77
    ld a, [$9be4]                                 ; $6d8d: $fa $e4 $9b
    inc bc                                        ; $6d90: $03
    ld l, l                                       ; $6d91: $6d
    ld c, [hl]                                    ; $6d92: $4e
    ld d, a                                       ; $6d93: $57
    xor c                                         ; $6d94: $a9
    and $40                                       ; $6d95: $e6 $40
    ld b, c                                       ; $6d97: $41
    db $dd                                        ; $6d98: $dd
    ld h, [hl]                                    ; $6d99: $66
    ld a, h                                       ; $6d9a: $7c
    nop                                           ; $6d9b: $00
    cpl                                           ; $6d9c: $2f
    ld b, e                                       ; $6d9d: $43
    dec bc                                        ; $6d9e: $0b
    swap e                                        ; $6d9f: $cb $33
    ld c, e                                       ; $6da1: $4b
    ld sp, hl                                     ; $6da2: $f9
    db $d3                                        ; $6da3: $d3
    inc hl                                        ; $6da4: $23
    ret nz                                        ; $6da5: $c0

    inc b                                         ; $6da6: $04
    ld c, d                                       ; $6da7: $4a
    ld hl, sp-$1c                                 ; $6da8: $f8 $e4
    add a                                         ; $6daa: $87
    add hl, sp                                    ; $6dab: $39
    rst $18                                       ; $6dac: $df
    jp hl                                         ; $6dad: $e9


    sub [hl]                                      ; $6dae: $96
    inc [hl]                                      ; $6daf: $34
    ld h, $68                                     ; $6db0: $26 $68
    ld c, d                                       ; $6db2: $4a
    adc e                                         ; $6db3: $8b
    ld c, d                                       ; $6db4: $4a
    ld [hl], e                                    ; $6db5: $73
    dec l                                         ; $6db6: $2d
    rst $30                                       ; $6db7: $f7
    inc e                                         ; $6db8: $1c
    and c                                         ; $6db9: $a1
    ld c, b                                       ; $6dba: $48
    db $f4                                        ; $6dbb: $f4
    sbc e                                         ; $6dbc: $9b
    cp $d3                                        ; $6dbd: $fe $d3
    inc d                                         ; $6dbf: $14
    sbc e                                         ; $6dc0: $9b
    push hl                                       ; $6dc1: $e5
    ld a, h                                       ; $6dc2: $7c
    and a                                         ; $6dc3: $a7
    xor e                                         ; $6dc4: $ab
    ld d, h                                       ; $6dc5: $54
    ld [hl], e                                    ; $6dc6: $73
    xor $ff                                       ; $6dc7: $ee $ff
    inc [hl]                                      ; $6dc9: $34
    rst $18                                       ; $6dca: $df
    or l                                          ; $6dcb: $b5
    and h                                         ; $6dcc: $a4
    cp b                                          ; $6dcd: $b8
    add c                                         ; $6dce: $81
    add hl, de                                    ; $6dcf: $19
    xor c                                         ; $6dd0: $a9
    ld hl, sp+$00                                 ; $6dd1: $f8 $00
    sub a                                         ; $6dd3: $97
    ld e, b                                       ; $6dd4: $58
    sbc d                                         ; $6dd5: $9a
    ret nc                                        ; $6dd6: $d0

    xor h                                         ; $6dd7: $ac
    ld l, a                                       ; $6dd8: $6f
    adc $c5                                       ; $6dd9: $ce $c5
    db $f4                                        ; $6ddb: $f4
    dec bc                                        ; $6ddc: $0b
    ld a, [hl-]                                   ; $6ddd: $3a
    db $d3                                        ; $6dde: $d3
    cp d                                          ; $6ddf: $ba
    call Call_048_6645                            ; $6de0: $cd $45 $66
    or h                                          ; $6de3: $b4
    or b                                          ; $6de4: $b0
    cp h                                          ; $6de5: $bc
    scf                                           ; $6de6: $37
    cp [hl]                                       ; $6de7: $be
    ld e, e                                       ; $6de8: $5b
    ld a, [c]                                     ; $6de9: $f2
    ld h, h                                       ; $6dea: $64
    add hl, hl                                    ; $6deb: $29
    push af                                       ; $6dec: $f5
    sub a                                         ; $6ded: $97
    ld h, [hl]                                    ; $6dee: $66
    ld a, [hl-]                                   ; $6def: $3a
    ld a, $00                                     ; $6df0: $3e $00
    rst $10                                       ; $6df2: $d7
    db $e4                                        ; $6df3: $e4
    jp nz, $8b0a                                  ; $6df4: $c2 $0a $8b

    call z, $3768                                 ; $6df7: $cc $68 $37
    call c, $d390                                 ; $6dfa: $dc $90 $d3
    ld d, l                                       ; $6dfd: $55
    jp $ef9c                                      ; $6dfe: $c3 $9c $ef


    sbc [hl]                                      ; $6e01: $9e
    cpl                                           ; $6e02: $2f
    ret                                           ; $6e03: $c9


    sub d                                         ; $6e04: $92
    adc d                                         ; $6e05: $8a
    ld [hl], a                                    ; $6e06: $77
    db $dd                                        ; $6e07: $dd
    and d                                         ; $6e08: $a2
    xor b                                         ; $6e09: $a8
    ld [hl], h                                    ; $6e0a: $74
    or c                                          ; $6e0b: $b1
    or b                                          ; $6e0c: $b0
    inc a                                         ; $6e0d: $3c
    ld d, h                                       ; $6e0e: $54
    ld [hl], e                                    ; $6e0f: $73
    or l                                          ; $6e10: $b5
    ld c, c                                       ; $6e11: $49
    ld bc, $4583                                  ; $6e12: $01 $83 $45
    jr @-$1a                                      ; $6e15: $18 $e4

    ld c, h                                       ; $6e17: $4c
    db $e4                                        ; $6e18: $e4
    xor e                                         ; $6e19: $ab
    ld sp, $7c41                                  ; $6e1a: $31 $41 $7c
    nop                                           ; $6e1d: $00
    cpl                                           ; $6e1e: $2f
    ld b, e                                       ; $6e1f: $43
    di                                            ; $6e20: $f3
    dec a                                         ; $6e21: $3d
    ld [hl], a                                    ; $6e22: $77
    ld l, [hl]                                    ; $6e23: $6e
    ret                                           ; $6e24: $c9


    ld h, e                                       ; $6e25: $63
    ld hl, $b04c                                  ; $6e26: $21 $4c $b0
    db $d3                                        ; $6e29: $d3
    daa                                           ; $6e2a: $27
    rst $08                                       ; $6e2b: $cf
    inc bc                                        ; $6e2c: $03
    ld l, l                                       ; $6e2d: $6d
    ld c, [hl]                                    ; $6e2e: $4e
    ld d, a                                       ; $6e2f: $57
    dec c                                         ; $6e30: $0d
    inc d                                         ; $6e31: $14
    call nc, $c66d                                ; $6e32: $d4 $6d $c6
    rlca                                          ; $6e35: $07
    ld d, a                                       ; $6e36: $57
    cp e                                          ; $6e37: $bb
    xor b                                         ; $6e38: $a8
    ld d, l                                       ; $6e39: $55
    call c, $2ae9                                 ; $6e3a: $dc $e9 $2a
    push de                                       ; $6e3d: $d5
    sbc h                                         ; $6e3e: $9c
    ei                                            ; $6e3f: $fb
    ccf                                           ; $6e40: $3f
    call $2d77                                    ; $6e41: $cd $77 $2d
    add hl, hl                                    ; $6e44: $29
    ld l, [hl]                                    ; $6e45: $6e
    ld h, b                                       ; $6e46: $60
    ld b, [hl]                                    ; $6e47: $46
    ld l, d                                       ; $6e48: $6a
    and a                                         ; $6e49: $a7
    ld c, a                                       ; $6e4a: $4f
    cp [hl]                                       ; $6e4b: $be
    add hl, sp                                    ; $6e4c: $39
    pop hl                                        ; $6e4d: $e1
    cp e                                          ; $6e4e: $bb
    call $8281                                    ; $6e4f: $cd $81 $82
    cp d                                          ; $6e52: $ba
    call Call_000_098b                            ; $6e53: $cd $8b $09
    dec c                                         ; $6e56: $0d
    ld c, l                                       ; $6e57: $4d
    cp e                                          ; $6e58: $bb
    db $dd                                        ; $6e59: $dd
    dec de                                        ; $6e5a: $1b
    rst $18                                       ; $6e5b: $df
    dec l                                         ; $6e5c: $2d
    ld a, c                                       ; $6e5d: $79
    or d                                          ; $6e5e: $b2
    sub h                                         ; $6e5f: $94
    call $f735                                    ; $6e60: $cd $35 $f7
    inc a                                         ; $6e63: $3c
    add hl, sp                                    ; $6e64: $39
    add sp, -$65                                  ; $6e65: $e8 $9b
    jp nc, $df49                                  ; $6e67: $d2 $49 $df

    ld hl, sp+$00                                 ; $6e6a: $f8 $00
    ld d, a                                       ; $6e6c: $57
    dec sp                                        ; $6e6d: $3b
    rst $38                                       ; $6e6e: $ff
    pop hl                                        ; $6e6f: $e1
    ld c, l                                       ; $6e70: $4d
    ld l, [hl]                                    ; $6e71: $6e
    ld c, d                                       ; $6e72: $4a
    adc e                                         ; $6e73: $8b
    ld c, d                                       ; $6e74: $4a
    dec sp                                        ; $6e75: $3b
    inc hl                                        ; $6e76: $23

Call_048_6e77:
    rst $28                                       ; $6e77: $ef
    ld b, e                                       ; $6e78: $43
    di                                            ; $6e79: $f3
    dec a                                         ; $6e7a: $3d
    ld [hl], a                                    ; $6e7b: $77
    ld l, [hl]                                    ; $6e7c: $6e
    ret                                           ; $6e7d: $c9


    ld h, e                                       ; $6e7e: $63
    ld hl, $704c                                  ; $6e7f: $21 $4c $70
    or c                                          ; $6e82: $b1
    ret z                                         ; $6e83: $c8

    adc h                                         ; $6e84: $8c
    ld d, [hl]                                    ; $6e85: $56
    jp c, $8319                                   ; $6e86: $da $19 $83

    ld e, h                                       ; $6e89: $5c
    adc b                                         ; $6e8a: $88
    and l                                         ; $6e8b: $a5
    add c                                         ; $6e8c: $81
    ld [hl], $a7                                  ; $6e8d: $36 $a7
    cp a                                          ; $6e8f: $bf
    inc [hl]                                      ; $6e90: $34
    db $dd                                        ; $6e91: $dd
    adc h                                         ; $6e92: $8c
    rrca                                          ; $6e93: $0f
    rst $10                                       ; $6e94: $d7
    db $e4                                        ; $6e95: $e4
    ld c, [hl]                                    ; $6e96: $4e
    dec l                                         ; $6e97: $2d
    cpl                                           ; $6e98: $2f
    or c                                          ; $6e99: $b1
    cp h                                          ; $6e9a: $bc
    sub e                                         ; $6e9b: $93
    add hl, de                                    ; $6e9c: $19
    dec c                                         ; $6e9d: $0d
    push hl                                       ; $6e9e: $e5
    jp nc, $f88c                                  ; $6e9f: $d2 $8c $f8

    ld [hl], a                                    ; $6ea2: $77
    pop de                                        ; $6ea3: $d1
    cpl                                           ; $6ea4: $2f
    rst $00                                       ; $6ea5: $c7
    rlca                                          ; $6ea6: $07
    rst $28                                       ; $6ea7: $ef
    ld hl, $c42f                                  ; $6ea8: $21 $2f $c4
    jp nc, $f2c2                                  ; $6eab: $d2 $c2 $f2

    sbc [hl]                                      ; $6eae: $9e
    xor e                                         ; $6eaf: $ab
    scf                                           ; $6eb0: $37
    ld c, e                                       ; $6eb1: $4b
    xor $5d                                       ; $6eb2: $ee $5d

Call_048_6eb4:
    ld l, [hl]                                    ; $6eb4: $6e
    ret                                           ; $6eb5: $c9


    jp nc, Jump_000_3097                          ; $6eb6: $d2 $97 $30

    ld b, c                                       ; $6eb9: $41
    di                                            ; $6eba: $f3
    jp z, Jump_000_35ae                           ; $6ebb: $ca $ae $35

    or d                                          ; $6ebe: $b2
    db $f4                                        ; $6ebf: $f4
    dec sp                                        ; $6ec0: $3b
    rla                                           ; $6ec1: $17
    rst $20                                       ; $6ec2: $e7
    adc l                                         ; $6ec3: $8d
    rst $20                                       ; $6ec4: $e7
    adc l                                         ; $6ec5: $8d
    ld [hl], a                                    ; $6ec6: $77
    cp $3b                                        ; $6ec7: $fe $3b
    sbc c                                         ; $6ec9: $99
    adc d                                         ; $6eca: $8a
    rrca                                          ; $6ecb: $0f
    rst $08                                       ; $6ecc: $cf
    push de                                       ; $6ecd: $d5
    sbc e                                         ; $6ece: $9b
    dec h                                         ; $6ecf: $25
    rst $30                                       ; $6ed0: $f7
    ld l, $b7                                     ; $6ed1: $2e $b7
    ld h, h                                       ; $6ed3: $64
    jp hl                                         ; $6ed4: $e9


    ld c, e                                       ; $6ed5: $4b
    sbc b                                         ; $6ed6: $98
    and b                                         ; $6ed7: $a0
    add hl, sp                                    ; $6ed8: $39
    rst $10                                       ; $6ed9: $d7
    ld [hl], d                                    ; $6eda: $72
    db $10                                        ; $6edb: $10
    ld a, l                                       ; $6edc: $7d
    ld d, c                                       ; $6edd: $51
    sub l                                         ; $6ede: $95
    ld a, [$27b4]                                 ; $6edf: $fa $b4 $27
    db $d3                                        ; $6ee2: $d3
    sub a                                         ; $6ee3: $97
    inc [hl]                                      ; $6ee4: $34
    ld h, $58                                     ; $6ee5: $26 $58
    db $f4                                        ; $6ee7: $f4
    rrc e                                         ; $6ee8: $cb $0b
    or c                                          ; $6eea: $b1
    or h                                          ; $6eeb: $b4
    ld [de], a                                    ; $6eec: $12
    ld l, b                                       ; $6eed: $68
    xor d                                         ; $6eee: $aa
    sbc l                                         ; $6eef: $9d
    sub c                                         ; $6ef0: $91
    cp c                                          ; $6ef1: $b9
    add hl, de                                    ; $6ef2: $19
    rra                                           ; $6ef3: $1f
    rst $10                                       ; $6ef4: $d7
    db $e4                                        ; $6ef5: $e4
    ld e, h                                       ; $6ef6: $5c
    ld [hl-], a                                   ; $6ef7: $32
    inc bc                                        ; $6ef8: $03
    adc e                                         ; $6ef9: $8b
    ld a, [hl-]                                   ; $6efa: $3a
    inc de                                        ; $6efb: $13
    dec l                                         ; $6efc: $2d
    db $fc                                        ; $6efd: $fc
    ld [hl], l                                    ; $6efe: $75
    ld e, e                                       ; $6eff: $5b
    dec a                                         ; $6f00: $3d

Jump_048_6f01:
    push bc                                       ; $6f01: $c5
    adc [hl]                                      ; $6f02: $8e
    ld l, a                                       ; $6f03: $6f
    ld [hl], d                                    ; $6f04: $72
    ld [hl], e                                    ; $6f05: $73
    ld c, $f2                                     ; $6f06: $0e $f2
    xor [hl]                                      ; $6f08: $ae
    ld d, d                                       ; $6f09: $52
    sbc l                                         ; $6f0a: $9d
    ld [hl], e                                    ; $6f0b: $73
    or l                                          ; $6f0c: $b5
    ret z                                         ; $6f0d: $c8

    ld [hl+], a                                   ; $6f0e: $22
    call nc, Call_000_3558                        ; $6f0f: $d4 $58 $35
    ld sp, hl                                     ; $6f12: $f9
    and e                                         ; $6f13: $a3
    ld h, [hl]                                    ; $6f14: $66
    ld a, h                                       ; $6f15: $7c
    nop                                           ; $6f16: $00
    ld c, a                                       ; $6f17: $4f
    ld l, d                                       ; $6f18: $6a
    or l                                          ; $6f19: $b5
    and b                                         ; $6f1a: $a0
    dec bc                                        ; $6f1b: $0b
    bit 7, e                                      ; $6f1c: $cb $7b
    xor d                                         ; $6f1e: $aa

Call_048_6f1f:
    rst $20                                       ; $6f1f: $e7
    ld d, e                                       ; $6f20: $53
    add hl, bc                                    ; $6f21: $09
    inc de                                        ; $6f22: $13
    inc [hl]                                      ; $6f23: $34
    push af                                       ; $6f24: $f5
    sub a                                         ; $6f25: $97
    ld h, [hl]                                    ; $6f26: $66
    ld a, d                                       ; $6f27: $7a
    rst $20                                       ; $6f28: $e7
    ld e, a                                       ; $6f29: $5f
    ret                                           ; $6f2a: $c9


    rla                                           ; $6f2b: $17
    di                                            ; $6f2c: $f3
    add $3b                                       ; $6f2d: $c6 $3b
    inc hl                                        ; $6f2f: $23
    rst $08                                       ; $6f30: $cf
    inc l                                         ; $6f31: $2c
    rst $20                                       ; $6f32: $e7
    cp e                                          ; $6f33: $bb
    db $fc                                        ; $6f34: $fc
    sbc a                                         ; $6f35: $9f
    cp h                                          ; $6f36: $bc
    or h                                          ; $6f37: $b4
    db $e4                                        ; $6f38: $e4
    cp c                                          ; $6f39: $b9
    sub [hl]                                      ; $6f3a: $96
    di                                            ; $6f3b: $f3
    dec a                                         ; $6f3c: $3d
    ld [hl], a                                    ; $6f3d: $77
    and c                                         ; $6f3e: $a1
    jp hl                                         ; $6f3f: $e9


jr_048_6f40:
    ld hl, sp+$00                                 ; $6f40: $f8 $00
    rst $08                                       ; $6f42: $cf
    ret nc                                        ; $6f43: $d0

    adc $c8                                       ; $6f44: $ce $c8
    ld l, e                                       ; $6f46: $6b
    ld [hl], e                                    ; $6f47: $73
    add b                                         ; $6f48: $80
    ld a, $77                                     ; $6f49: $3e $77
    db $e4                                        ; $6f4b: $e4
    ld h, b                                       ; $6f4c: $60
    call nz, $fb9d                                ; $6f4d: $c4 $9d $fb
    push af                                       ; $6f50: $f5
    and d                                         ; $6f51: $a2
    ld a, [c]                                     ; $6f52: $f2
    add h                                         ; $6f53: $84
    ld e, a                                       ; $6f54: $5f
    reti                                          ; $6f55: $d9


    call c, $e687                                 ; $6f56: $dc $87 $e6
    ld a, e                                       ; $6f59: $7b
    xor $dc                                       ; $6f5a: $ee $dc
    sub d                                         ; $6f5c: $92
    rst $00                                       ; $6f5d: $c7
    ld b, d                                       ; $6f5e: $42
    sbc b                                         ; $6f5f: $98
    jr nz, jr_048_6f40                            ; $6f60: $20 $de

    ld e, e                                       ; $6f62: $5b
    ld e, a                                       ; $6f63: $5f
    add e                                         ; $6f64: $83
    and [hl]                                      ; $6f65: $a6
    ld e, d                                       ; $6f66: $5a
    add h                                         ; $6f67: $84
    pop bc                                        ; $6f68: $c1
    ld d, b                                       ; $6f69: $50
    dec l                                         ; $6f6a: $2d

Call_048_6f6b:
    inc l                                         ; $6f6b: $2c
    rst $08                                       ; $6f6c: $cf
    ld [hl], a                                    ; $6f6d: $77
    ld [bc], a                                    ; $6f6e: $02
    ld a, [bc]                                    ; $6f6f: $0a
    ld a, [de]                                    ; $6f70: $1a
    ccf                                           ; $6f71: $3f
    add a                                         ; $6f72: $87
    xor l                                         ; $6f73: $ad
    adc h                                         ; $6f74: $8c
    rrca                                          ; $6f75: $0f
    rst $10                                       ; $6f76: $d7
    dec sp                                        ; $6f77: $3b

Call_048_6f78:
    rla                                           ; $6f78: $17
    db $d3                                        ; $6f79: $d3
    di                                            ; $6f7a: $f3
    jp nz, $9ef2                                  ; $6f7b: $c2 $f2 $9e

    ld [$54f9], a                                 ; $6f7e: $ea $f9 $54
    jp nz, Jump_048_4d04                          ; $6f81: $c2 $04 $4d

    db $fd                                        ; $6f84: $fd
    and l                                         ; $6f85: $a5
    sbc c                                         ; $6f86: $99
    ld e, $3b                                     ; $6f87: $1e $3b
    ld c, d                                       ; $6f89: $4a
    dec [hl]                                      ; $6f8a: $35
    rst $20                                       ; $6f8b: $e7
    dec sp                                        ; $6f8c: $3b
    ld a, $b5                                     ; $6f8d: $3e $b5
    dec sp                                        ; $6f8f: $3b
    ld e, c                                       ; $6f90: $59
    ld a, d                                       ; $6f91: $7a
    ld [hl], $08                                  ; $6f92: $36 $08
    inc bc                                        ; $6f94: $03
    ld l, [hl]                                    ; $6f95: $6e
    adc $2c                                       ; $6f96: $ce $2c
    rla                                           ; $6f98: $17
    sub [hl]                                      ; $6f99: $96
    ld d, a                                       ; $6f9a: $57
    ld c, h                                       ; $6f9b: $4c
    rst $18                                       ; $6f9c: $df
    cp c                                          ; $6f9d: $b9
    sub [hl]                                      ; $6f9e: $96
    di                                            ; $6f9f: $f3
    ld e, l                                       ; $6fa0: $5d
    ld l, b                                       ; $6fa1: $68
    ld a, [hl-]                                   ; $6fa2: $3a
    ld a, $00                                     ; $6fa3: $3e $00
    cpl                                           ; $6fa5: $2f
    ld b, e                                       ; $6fa6: $43
    di                                            ; $6fa7: $f3
    dec a                                         ; $6fa8: $3d
    ld [hl], a                                    ; $6fa9: $77
    ld l, [hl]                                    ; $6faa: $6e
    ret                                           ; $6fab: $c9


    ld h, e                                       ; $6fac: $63
    ld hl, $b04c                                  ; $6fad: $21 $4c $b0
    db $d3                                        ; $6fb0: $d3
    daa                                           ; $6fb1: $27
    rst $08                                       ; $6fb2: $cf
    db $d3                                        ; $6fb3: $d3
    ld d, l                                       ; $6fb4: $55
    and b                                         ; $6fb5: $a0
    and b                                         ; $6fb6: $a0
    ld l, [hl]                                    ; $6fb7: $6e
    ld [hl], e                                    ; $6fb8: $73
    sbc b                                         ; $6fb9: $98
    ld a, e                                       ; $6fba: $7b
    xor e                                         ; $6fbb: $ab
    ld [hl], h                                    ; $6fbc: $74
    ld l, d                                       ; $6fbd: $6a
    ld l, c                                       ; $6fbe: $69
    ld e, h                                       ; $6fbf: $5c
    ret nc                                        ; $6fc0: $d0

    sbc h                                         ; $6fc1: $9c
    rst $28                                       ; $6fc2: $ef
    sbc $3b                                       ; $6fc3: $de $3b
    add hl, de                                    ; $6fc5: $19
    ld [hl], c                                    ; $6fc6: $71
    rst $30                                       ; $6fc7: $f7
    cp h                                          ; $6fc8: $bc
    sub e                                         ; $6fc9: $93
    adc d                                         ; $6fca: $8a
    sbc e                                         ; $6fcb: $9b
    pop af                                        ; $6fcc: $f1
    ld bc, $cd57                                  ; $6fcd: $01 $57 $cd
    ld l, b                                       ; $6fd0: $68
    xor b                                         ; $6fd1: $a8
    ld d, $96                                     ; $6fd2: $16 $96
    daa                                           ; $6fd4: $27
    dec l                                         ; $6fd5: $2d
    ld sp, hl                                     ; $6fd6: $f9
    ld a, a                                       ; $6fd7: $7f
    sbc d                                         ; $6fd8: $9a
    ld l, e                                       ; $6fd9: $6b
    add hl, sp                                    ; $6fda: $39
    adc b                                         ; $6fdb: $88
    cp [hl]                                       ; $6fdc: $be
    xor b                                         ; $6fdd: $a8
    ld c, d                                       ; $6fde: $4a
    ld a, l                                       ; $6fdf: $7d
    jp c, $84f3                                   ; $6fe0: $da $f3 $84

    add hl, hl                                    ; $6fe3: $29
    xor e                                         ; $6fe4: $ab
    db $e3                                        ; $6fe5: $e3
    ld e, l                                       ; $6fe6: $5d
    sub [hl]                                      ; $6fe7: $96
    and a                                         ; $6fe8: $a7
    cp a                                          ; $6fe9: $bf
    inc [hl]                                      ; $6fea: $34
    db $d3                                        ; $6feb: $d3
    ld [hl], e                                    ; $6fec: $73
    rst $38                                       ; $6fed: $ff
    and a                                         ; $6fee: $a7
    cp l                                          ; $6fef: $bd
    ld d, l                                       ; $6ff0: $55
    ld a, [hl-]                                   ; $6ff1: $3a
    or l                                          ; $6ff2: $b5
    inc [hl]                                      ; $6ff3: $34
    ld l, $68                                     ; $6ff4: $2e $68
    adc $77                                       ; $6ff6: $ce $77
    rst $28                                       ; $6ff8: $ef
    sbc l                                         ; $6ff9: $9d
    adc h                                         ; $6ffa: $8c
    cp b                                          ; $6ffb: $b8
    ld a, e                                       ; $6ffc: $7b
    sbc $49                                       ; $6ffd: $de $49
    push bc                                       ; $6fff: $c5
    call $bf45                                    ; $7000: $cd $45 $bf
    inc a                                         ; $7003: $3c
    ld d, a                                       ; $7004: $57
    sbc e                                         ; $7005: $9b
    inc d                                         ; $7006: $14
    jr nc, @-$26                                  ; $7007: $30 $d8

    add hl, de                                    ; $7009: $19
    add e                                         ; $700a: $83
    adc h                                         ; $700b: $8c
    rrca                                          ; $700c: $0f
    ld d, a                                       ; $700d: $57
    dec sp                                        ; $700e: $3b
    ld e, a                                       ; $700f: $5f
    add a                                         ; $7010: $87
    sub [hl]                                      ; $7011: $96
    ld h, [hl]                                    ; $7012: $66
    inc [hl]                                      ; $7013: $34
    rst $18                                       ; $7014: $df
    pop af                                        ; $7015: $f1
    xor c                                         ; $7016: $a9
    push af                                       ; $7017: $f5
    sbc l                                         ; $7018: $9d
    ld e, e                                       ; $7019: $5b
    ld a, [c]                                     ; $701a: $f2
    ld e, b                                       ; $701b: $58
    ld [$cc13], sp                                ; $701c: $08 $13 $cc
    or l                                          ; $701f: $b5
    sbc h                                         ; $7020: $9c
    rst $28                                       ; $7021: $ef
    inc b                                         ; $7022: $04
    inc d                                         ; $7023: $14
    inc [hl]                                      ; $7024: $34
    ld a, [hl]                                    ; $7025: $7e
    ld c, $5b                                     ; $7026: $0e $5b
    add hl, sp                                    ; $7028: $39
    ld d, h                                       ; $7029: $54
    and e                                         ; $702a: $a3
    jp nz, $1e43                                  ; $702b: $c2 $43 $1e

    rla                                           ; $702e: $17
    inc [hl]                                      ; $702f: $34
    cp a                                          ; $7030: $bf
    ld e, e                                       ; $7031: $5b
    ld e, d                                       ; $7032: $5a
    ld e, b                                       ; $7033: $58
    sbc [hl]                                      ; $7034: $9e
    cp $d2                                        ; $7035: $fe $d2
    ld c, h                                       ; $7037: $4c
    rst $08                                       ; $7038: $cf
    db $fd                                        ; $7039: $fd
    sbc a                                         ; $703a: $9f
    or $56                                        ; $703b: $f6 $56
    jp hl                                         ; $703d: $e9


    call nc, $b8d2                                ; $703e: $d4 $d2 $b8
    and b                                         ; $7041: $a0
    add hl, sp                                    ; $7042: $39
    rst $18                                       ; $7043: $df
    cp l                                          ; $7044: $bd
    ld [hl], a                                    ; $7045: $77
    ld [hl-], a                                   ; $7046: $32
    ld [c], a                                     ; $7047: $e2
    xor $79                                       ; $7048: $ee $79
    daa                                           ; $704a: $27
    dec d                                         ; $704b: $15
    scf                                           ; $704c: $37
    db $e3                                        ; $704d: $e3
    inc bc                                        ; $704e: $03
    ld l, a                                       ; $704f: $6f
    sbc e                                         ; $7050: $9b
    pop de                                        ; $7051: $d1
    adc a                                         ; $7052: $8f
    ld d, $fd                                     ; $7053: $16 $fd
    ld a, [c]                                     ; $7055: $f2
    ld d, b                                       ; $7056: $50
    xor $64                                       ; $7057: $ee $64
    ld d, d                                       ; $7059: $52
    sub [hl]                                      ; $705a: $96
    ld h, $68                                     ; $705b: $26 $68
    inc c                                         ; $705d: $0c
    call c, Call_000_18e6                         ; $705e: $dc $e6 $18
    inc bc                                        ; $7061: $03
    rst $18                                       ; $7062: $df
    ld d, h                                       ; $7063: $54
    ld a, e                                       ; $7064: $7b
    xor [hl]                                      ; $7065: $ae
    ld a, [bc]                                    ; $7066: $0a
    ld e, $62                                     ; $7067: $1e $62
    ld a, l                                       ; $7069: $7d
    inc de                                        ; $706a: $13
    push de                                       ; $706b: $d5
    ld e, h                                       ; $706c: $5c
    set 7, c                                      ; $706d: $cb $f9
    xor $8d                                       ; $706f: $ee $8d
    rst $28                                       ; $7071: $ef
    sub [hl]                                      ; $7072: $96
    and h                                         ; $7073: $a4
    sub e                                         ; $7074: $93
    adc d                                         ; $7075: $8a
    ld h, a                                       ; $7076: $67
    ld e, d                                       ; $7077: $5a
    call $ba77                                    ; $7078: $cd $77 $ba
    ld h, h                                       ; $707b: $64
    ld b, [hl]                                    ; $707c: $46
    dec sp                                        ; $707d: $3b
    ld d, a                                       ; $707e: $57
    adc e                                         ; $707f: $8b
    halt                                          ; $7080: $76
    cp $73                                        ; $7081: $fe $73
    call $30e4                                    ; $7083: $cd $e4 $30
    and a                                         ; $7086: $a7
    or h                                          ; $7087: $b4
    add hl, de                                    ; $7088: $19
    inc [hl]                                      ; $7089: $34
    rst $10                                       ; $708a: $d7
    inc [hl]                                      ; $708b: $34
    ld e, a                                       ; $708c: $5f
    add hl, sp                                    ; $708d: $39
    nop                                           ; $708e: $00
    ld c, a                                       ; $708f: $4f
    ld l, d                                       ; $7090: $6a
    or l                                          ; $7091: $b5
    and b                                         ; $7092: $a0
    ld a, e                                       ; $7093: $7b
    xor [hl]                                      ; $7094: $ae
    ld a, [bc]                                    ; $7095: $0a
    ld e, $62                                     ; $7096: $1e $62
    ld a, l                                       ; $7098: $7d
    inc de                                        ; $7099: $13
    push de                                       ; $709a: $d5
    ld e, h                                       ; $709b: $5c
    set 7, c                                      ; $709c: $cb $f9
    xor $8d                                       ; $709e: $ee $8d
    rst $28                                       ; $70a0: $ef
    sub [hl]                                      ; $70a1: $96
    and h                                         ; $70a2: $a4
    sub e                                         ; $70a3: $93
    adc d                                         ; $70a4: $8a
    ld [hl], a                                    ; $70a5: $77
    cp $95                                        ; $70a6: $fe $95
    ld a, h                                       ; $70a8: $7c
    ld sp, $bc6f                                  ; $70a9: $31 $6f $bc
    db $d3                                        ; $70ac: $d3
    daa                                           ; $70ad: $27
    rst $08                                       ; $70ae: $cf
    ei                                            ; $70af: $fb
    ret nc                                        ; $70b0: $d0

    ld a, h                                       ; $70b1: $7c
    rst $08                                       ; $70b2: $cf
    sbc l                                         ; $70b3: $9d
    ld e, e                                       ; $70b4: $5b
    ld a, [c]                                     ; $70b5: $f2
    ld e, b                                       ; $70b6: $58
    ld [$0c13], sp                                ; $70b7: $08 $13 $0c
    inc d                                         ; $70ba: $14
    call nc, $c66d                                ; $70bb: $d4 $6d $c6
    rlca                                          ; $70be: $07
    ld d, a                                       ; $70bf: $57
    dec sp                                        ; $70c0: $3b
    db $dd                                        ; $70c1: $dd
    sub d                                         ; $70c2: $92
    add $04                                       ; $70c3: $c6 $04
    call $df09                                    ; $70c5: $cd $09 $df
    ld l, l                                       ; $70c8: $6d
    xor $5c                                       ; $70c9: $ee $5c
    db $f4                                        ; $70cb: $f4
    call Call_048_4171                            ; $70cc: $cd $71 $41
    ld [hl], e                                    ; $70cf: $73
    ld d, c                                       ; $70d0: $51
    rst $20                                       ; $70d1: $e7
    adc l                                         ; $70d2: $8d
    add a                                         ; $70d3: $87
    ld [hl], d                                    ; $70d4: $72
    ld l, c                                       ; $70d5: $69
    ld b, [hl]                                    ; $70d6: $46
    inc de                                        ; $70d7: $13
    sbc d                                         ; $70d8: $9a
    push af                                       ; $70d9: $f5
    call $bf45                                    ; $70da: $cd $45 $bf
    adc d                                         ; $70dd: $8a
    db $e3                                        ; $70de: $e3
    dec a                                         ; $70df: $3d
    sub e                                         ; $70e0: $93
    ld c, e                                       ; $70e1: $4b
    rst $20                                       ; $70e2: $e7
    jp z, $9701                                   ; $70e3: $ca $01 $97

    ld e, b                                       ; $70e6: $58
    ld [de], a                                    ; $70e7: $12
    cp [hl]                                       ; $70e8: $be
    db $db                                        ; $70e9: $db
    call c, $93e9                                 ; $70ea: $dc $e9 $93
    ld l, a                                       ; $70ed: $6f
    ld c, $b4                                     ; $70ee: $0e $b4
    cp c                                          ; $70f0: $b9
    sub [hl]                                      ; $70f1: $96
    inc d                                         ; $70f2: $14
    scf                                           ; $70f3: $37
    jr nc, jr_048_7119                            ; $70f4: $30 $23

    and l                                         ; $70f6: $a5
    xor e                                         ; $70f7: $ab
    ld d, h                                       ; $70f8: $54
    ld [hl], e                                    ; $70f9: $73
    and b                                         ; $70fa: $a0
    and b                                         ; $70fb: $a0
    ld l, [hl]                                    ; $70fc: $6e
    inc sp                                        ; $70fd: $33
    ld a, $00                                     ; $70fe: $3e $00
    ld d, a                                       ; $7100: $57
    dec sp                                        ; $7101: $3b
    ld e, l                                       ; $7102: $5d
    and l                                         ; $7103: $a5
    sbc d                                         ; $7104: $9a
    di                                            ; $7105: $f3
    ret c                                         ; $7106: $d8

    ld a, l                                       ; $7107: $7d
    ld l, b                                       ; $7108: $68
    cp [hl]                                       ; $7109: $be
    rst $20                                       ; $710a: $e7
    adc $2d                                       ; $710b: $ce $2d
    ld a, c                                       ; $710d: $79
    inc l                                         ; $710e: $2c
    add h                                         ; $710f: $84
    add hl, bc                                    ; $7110: $09
    halt                                          ; $7111: $76
    ld a, [$9be4]                                 ; $7112: $fa $e4 $9b
    inc bc                                        ; $7115: $03
    dec b                                         ; $7116: $05
    ld [hl], l                                    ; $7117: $75
    sbc e                                         ; $7118: $9b

jr_048_7119:
    rla                                           ; $7119: $17
    ld d, e                                       ; $711a: $53
    ld l, h                                       ; $711b: $6c
    sub [hl]                                      ; $711c: $96
    inc bc                                        ; $711d: $03
    ld l, l                                       ; $711e: $6d
    adc $b5                                       ; $711f: $ce $b5
    sbc h                                         ; $7121: $9c
    ld l, c                                       ; $7122: $69
    db $dd                                        ; $7123: $dd
    call c, $1687                                 ; $7124: $dc $87 $16
    ld h, c                                       ; $7127: $61
    sub b                                         ; $7128: $90
    and e                                         ; $7129: $a3
    rst $38                                       ; $712a: $ff
    dec d                                         ; $712b: $15
    sub a                                         ; $712c: $97
    ld [c], a                                     ; $712d: $e2
    inc bc                                        ; $712e: $03
    rst $10                                       ; $712f: $d7
    db $e4                                        ; $7130: $e4
    jp nz, $030a                                  ; $7131: $c2 $0a $03

    dec c                                         ; $7134: $0d
    rst $38                                       ; $7135: $ff
    daa                                           ; $7136: $27
    ccf                                           ; $7137: $3f
    ld l, a                                       ; $7138: $6f
    inc a                                         ; $7139: $3c
    db $d3                                        ; $713a: $d3
    cp d                                          ; $713b: $ba
    ld l, e                                       ; $713c: $6b
    ld c, c                                       ; $713d: $49
    ld [hl], c                                    ; $713e: $71
    inc bc                                        ; $713f: $03
    inc sp                                        ; $7140: $33
    ld d, d                                       ; $7141: $52
    cp d                                          ; $7142: $ba
    ld c, d                                       ; $7143: $4a
    dec [hl]                                      ; $7144: $35
    rst $30                                       ; $7145: $f7
    and c                                         ; $7146: $a1
    ld sp, hl                                     ; $7147: $f9
    adc $c5                                       ; $7148: $ce $c5
    sub d                                         ; $714a: $92
    rst $28                                       ; $714b: $ef
    call c, $c792                                 ; $714c: $dc $92 $c7
    ld b, d                                       ; $714f: $42
    sbc b                                         ; $7150: $98
    ld h, b                                       ; $7151: $60
    ld e, a                                       ; $7152: $5f
    inc [hl]                                      ; $7153: $34
    ld l, l                                       ; $7154: $6d
    and b                                         ; $7155: $a0
    inc [hl]                                      ; $7156: $34
    ld d, b                                       ; $7157: $50
    ld d, b                                       ; $7158: $50
    or a                                          ; $7159: $b7
    cp c                                          ; $715a: $b9
    db $d3                                        ; $715b: $d3
    daa                                           ; $715c: $27
    rst $18                                       ; $715d: $df
    adc h                                         ; $715e: $8c
    rrca                                          ; $715f: $0f
    ld c, a                                       ; $7160: $4f
    ld l, d                                       ; $7161: $6a
    db $dd                                        ; $7162: $dd
    or l                                          ; $7163: $b5
    and h                                         ; $7164: $a4
    cp b                                          ; $7165: $b8
    add c                                         ; $7166: $81
    add hl, de                                    ; $7167: $19
    add hl, hl                                    ; $7168: $29
    db $fd                                        ; $7169: $fd
    and l                                         ; $716a: $a5
    jp hl                                         ; $716b: $e9


    and $84                                       ; $716c: $e6 $84
    cp d                                          ; $716e: $ba
    sbc b                                         ; $716f: $98
    cp [hl]                                       ; $7170: $be
    cp c                                          ; $7171: $b9
    inc sp                                        ; $7172: $33
    jp nz, $7dc3                                  ; $7173: $c2 $c3 $7d

    ld l, b                                       ; $7176: $68
    cp [hl]                                       ; $7177: $be
    db $d3                                        ; $7178: $d3
    ld b, $4a                                     ; $7179: $06 $4a
    sbc l                                         ; $717b: $9d
    ld e, e                                       ; $717c: $5b
    ld a, [c]                                     ; $717d: $f2
    ld e, b                                       ; $717e: $58
    ld [$3413], sp                                ; $717f: $08 $13 $34
    db $e3                                        ; $7182: $e3
    inc bc                                        ; $7183: $03
    rst $10                                       ; $7184: $d7
    db $e4                                        ; $7185: $e4
    jp nz, $fb0a                                  ; $7186: $c2 $0a $fb

    ret nc                                        ; $7189: $d0

jr_048_718a:
    jp nz, $ccf2                                  ; $718a: $c2 $f2 $cc

    ld d, d                                       ; $718d: $52
    cp $f4                                        ; $718e: $fe $f4
    ld [$8130], sp                                ; $7190: $08 $30 $81
    ld [de], a                                    ; $7193: $12
    ld a, $f9                                     ; $7194: $3e $f9
    ld h, c                                       ; $7196: $61
    adc $77                                       ; $7197: $ce $77
    cp d                                          ; $7199: $ba
    dec h                                         ; $719a: $25
    adc l                                         ; $719b: $8d
    add hl, bc                                    ; $719c: $09
    sbc d                                         ; $719d: $9a
    jp nc, $d2a2                                  ; $719e: $d2 $a2 $d2

    ld e, h                                       ; $71a1: $5c
    bit 0, l                                      ; $71a2: $cb $45
    jr jr_048_718a                                ; $71a4: $18 $e4

    ld c, h                                       ; $71a6: $4c
    db $e4                                        ; $71a7: $e4
    xor e                                         ; $71a8: $ab
    ld sp, $40c1                                  ; $71a9: $31 $c1 $40
    ld h, l                                       ; $71ac: $65
    ld h, l                                       ; $71ad: $65
    ld [hl], e                                    ; $71ae: $73
    ccf                                           ; $71af: $3f
    ld a, [de]                                    ; $71b0: $1a
    ld [hl], a                                    ; $71b1: $77
    and a                                         ; $71b2: $a7
    ld [hl], d                                    ; $71b3: $72
    ld [hl], e                                    ; $71b4: $73
    and a                                         ; $71b5: $a7
    ld l, d                                       ; $71b6: $6a
    reti                                          ; $71b7: $d9


    jp hl                                         ; $71b8: $e9


    ld a, [hl+]                                   ; $71b9: $2a
    push de                                       ; $71ba: $d5
    inc e                                         ; $71bb: $1c
    jp z, $e685                                   ; $71bc: $ca $85 $e6

    db $e3                                        ; $71bf: $e3
    inc bc                                        ; $71c0: $03
    ld d, a                                       ; $71c1: $57
    dec sp                                        ; $71c2: $3b
    ld e, l                                       ; $71c3: $5d
    and l                                         ; $71c4: $a5
    sbc d                                         ; $71c5: $9a
    ei                                            ; $71c6: $fb
    ret nc                                        ; $71c7: $d0

    ld a, h                                       ; $71c8: $7c
    rst $08                                       ; $71c9: $cf
    sbc l                                         ; $71ca: $9d
    ld e, e                                       ; $71cb: $5b
    ld a, [c]                                     ; $71cc: $f2
    ld e, b                                       ; $71cd: $58
    ld [$ec13], sp                                ; $71ce: $08 $13 $ec
    ld e, h                                       ; $71d1: $5c
    nop                                           ; $71d2: $00
    sbc d                                         ; $71d3: $9a
    adc e                                         ; $71d4: $8b
    ld a, [hl-]                                   ; $71d5: $3a
    db $d3                                        ; $71d6: $d3
    cp d                                          ; $71d7: $ba
    sub c                                         ; $71d8: $91
    sbc c                                         ; $71d9: $99
    ld e, [hl]                                    ; $71da: $5e
    ld h, d                                       ; $71db: $62
    ld e, c                                       ; $71dc: $59
    push bc                                       ; $71dd: $c5
    rlca                                          ; $71de: $07
    rst $10                                       ; $71df: $d7
    db $e4                                        ; $71e0: $e4
    ld a, h                                       ; $71e1: $7c
    ld d, e                                       ; $71e2: $53
    adc $1b                                       ; $71e3: $ce $1b
    cpl                                           ; $71e5: $2f
    call nz, Call_048_40d2                        ; $71e6: $c4 $d2 $40
    sbc e                                         ; $71e9: $9b
    ld l, e                                       ; $71ea: $6b
    ld c, c                                       ; $71eb: $49
    ld [hl], c                                    ; $71ec: $71
    inc bc                                        ; $71ed: $03
    inc sp                                        ; $71ee: $33
    ld d, d                                       ; $71ef: $52
    cp d                                          ; $71f0: $ba
    ld c, d                                       ; $71f1: $4a
    dec [hl]                                      ; $71f2: $35
    ld [hl], a                                    ; $71f3: $77
    ld a, [$9be4]                                 ; $71f4: $fa $e4 $9b
    inc bc                                        ; $71f7: $03
    dec b                                         ; $71f8: $05
    ld [hl], l                                    ; $71f9: $75
    sbc e                                         ; $71fa: $9b
    pop af                                        ; $71fb: $f1
    ld bc, $622f                                  ; $71fc: $01 $2f $62
    sub b                                         ; $71ff: $90
    sub e                                         ; $7200: $93
    jp c, Jump_048_6a94                           ; $7201: $da $94 $6a

    ld a, [hl]                                    ; $7204: $7e
    rst $00                                       ; $7205: $c7
    dec hl                                        ; $7206: $2b
    xor $ce                                       ; $7207: $ee $ce
    push bc                                       ; $7209: $c5
    ld [hl], c                                    ; $720a: $71
    ld b, c                                       ; $720b: $41
    ld [hl], e                                    ; $720c: $73
    ld d, c                                       ; $720d: $51
    rst $20                                       ; $720e: $e7
    adc l                                         ; $720f: $8d
    rst $20                                       ; $7210: $e7
    ld a, e                                       ; $7211: $7b
    xor $74                                       ; $7212: $ee $74
    push de                                       ; $7214: $d5
    add h                                         ; $7215: $84
    ld h, [hl]                                    ; $7216: $66
    ld a, l                                       ; $7217: $7d
    ld [hl], e                                    ; $7218: $73
    ld de, $b906                                  ; $7219: $11 $06 $b9
    ld b, h                                       ; $721c: $44
    or a                                          ; $721d: $b7
    and $ec                                       ; $721e: $e6 $ec
    db $fc                                        ; $7220: $fc
    sbc l                                         ; $7221: $9d
    sbc l                                         ; $7222: $9d
    ld sp, $78c8                                  ; $7223: $31 $c8 $78
    cpl                                           ; $7226: $2f
    cp $f2                                        ; $7227: $fe $f2
    ld d, b                                       ; $7229: $50
    adc $5b                                       ; $722a: $ce $5b
    ld l, $cd                                     ; $722c: $2e $cd
    ld l, b                                       ; $722e: $68
    ld b, d                                       ; $722f: $42
    or e                                          ; $7230: $b3
    cp [hl]                                       ; $7231: $be
    ld a, c                                       ; $7232: $79
    push hl                                       ; $7233: $e5
    nop                                           ; $7234: $00
    ld l, a                                       ; $7235: $6f
    ld h, e                                       ; $7236: $63
    or b                                          ; $7237: $b0
    sub [hl]                                      ; $7238: $96
    inc d                                         ; $7239: $14
    scf                                           ; $723a: $37
    jr nc, jr_048_7260                            ; $723b: $30 $23

    or l                                          ; $723d: $b5
    or e                                          ; $723e: $b3
    and e                                         ; $723f: $a3
    ld [hl], l                                    ; $7240: $75
    ld [hl], e                                    ; $7241: $73
    sub b                                         ; $7242: $90
    xor c                                         ; $7243: $a9
    ld a, l                                       ; $7244: $7d
    or a                                          ; $7245: $b7
    or h                                          ; $7246: $b4
    ld [hl], $17                                  ; $7247: $36 $17
    ld d, [hl]                                    ; $7249: $56
    ld [hl], a                                    ; $724a: $77
    adc h                                         ; $724b: $8c
    add c                                         ; $724c: $81
    sbc a                                         ; $724d: $9f
    xor [hl]                                      ; $724e: $ae
    jp c, $e687                                   ; $724f: $da $87 $e6

    ld a, e                                       ; $7252: $7b
    xor $dc                                       ; $7253: $ee $dc
    sub d                                         ; $7255: $92
    rst $00                                       ; $7256: $c7
    ld b, d                                       ; $7257: $42
    sbc b                                         ; $7258: $98
    ld h, b                                       ; $7259: $60
    ld h, c                                       ; $725a: $61
    dec b                                         ; $725b: $05
    and c                                         ; $725c: $a1
    add hl, de                                    ; $725d: $19
    rra                                           ; $725e: $1f
    ld c, a                                       ; $725f: $4f

jr_048_7260:
    add hl, sp                                    ; $7260: $39
    ret z                                         ; $7261: $c8

    call Call_000_0a81                            ; $7262: $cd $81 $0a
    db $e4                                        ; $7265: $e4
    and b                                         ; $7266: $a0
    adc h                                         ; $7267: $8c
    rrca                                          ; $7268: $0f
    cpl                                           ; $7269: $2f
    rst $38                                       ; $726a: $ff
    ld a, a                                       ; $726b: $7f
    or c                                          ; $726c: $b1
    ld [hl], $27                                  ; $726d: $36 $27
    ld [hl], l                                    ; $726f: $75
    ld sp, $92d7                                  ; $7270: $31 $d7 $92
    ld [c], a                                     ; $7273: $e2
    ld b, $66                                     ; $7274: $06 $66
    call nz, $f741                                ; $7276: $c4 $41 $f7
    and c                                         ; $7279: $a1
    sbc l                                         ; $727a: $9d
    ld a, [bc]                                    ; $727b: $0a
    sub [hl]                                      ; $727c: $96
    ld h, [hl]                                    ; $727d: $66
    inc [hl]                                      ; $727e: $34
    rst $18                                       ; $727f: $df
    jp hl                                         ; $7280: $e9


    ld a, [hl+]                                   ; $7281: $2a
    pop af                                        ; $7282: $f1
    ld a, e                                       ; $7283: $7b
    db $db                                        ; $7284: $db
    adc h                                         ; $7285: $8c
    ld b, $cc                                     ; $7286: $06 $cc
    ld a, b                                       ; $7288: $78
    ret c                                         ; $7289: $d8

    and l                                         ; $728a: $a5
    add hl, de                                    ; $728b: $19
    pop af                                        ; $728c: $f1
    rst $28                                       ; $728d: $ef
    sub l                                         ; $728e: $95
    inc bc                                        ; $728f: $03
    rst $10                                       ; $7290: $d7
    db $e4                                        ; $7291: $e4
    or d                                          ; $7292: $b2
    and b                                         ; $7293: $a0
    and l                                         ; $7294: $a5
    dec b                                         ; $7295: $05
    cp l                                          ; $7296: $bd
    ret c                                         ; $7297: $d8

    or e                                          ; $7298: $b3
    rra                                           ; $7299: $1f
    add d                                         ; $729a: $82
    ld a, [de]                                    ; $729b: $1a
    rra                                           ; $729c: $1f
    ld d, a                                       ; $729d: $57
    dec l                                         ; $729e: $2d
    rla                                           ; $729f: $17
    db $fd                                        ; $72a0: $fd
    ld a, [c]                                     ; $72a1: $f2
    ld d, b                                       ; $72a2: $50
    ld l, $e8                                     ; $72a3: $2e $e8
    ld [hl+], a                                   ; $72a5: $22
    ld d, h                                       ; $72a6: $54
    ld a, [bc]                                    ; $72a7: $0a
    ld e, $62                                     ; $72a8: $1e $62
    ld [hl], e                                    ; $72aa: $73
    ld e, b                                       ; $72ab: $58
    ld d, [hl]                                    ; $72ac: $56
    inc bc                                        ; $72ad: $03
    ld [hl], l                                    ; $72ae: $75
    sbc e                                         ; $72af: $9b
    dec sp                                        ; $72b0: $3b
    add hl, de                                    ; $72b1: $19
    cpl                                           ; $72b2: $2f
    add sp, $12                                   ; $72b3: $e8 $12
    res 2, e                                      ; $72b5: $cb $93
    ld c, [hl]                                    ; $72b7: $4e
    ld a, [c]                                     ; $72b8: $f2
    or d                                          ; $72b9: $b2
    and b                                         ; $72ba: $a0
    call nc, $0f8c                                ; $72bb: $d4 $8c $0f
    sub a                                         ; $72be: $97
    add $2a                                       ; $72bf: $c6 $2a
    ld hl, sp-$73                                 ; $72c1: $f8 $8d
    db $e3                                        ; $72c3: $e3
    ld a, b                                       ; $72c4: $78
    db $fc                                        ; $72c5: $fc
    bit 6, c                                      ; $72c6: $cb $71
    inc e                                         ; $72c8: $1c
    cpl                                           ; $72c9: $2f
    inc [hl]                                      ; $72ca: $34
    ld d, [hl]                                    ; $72cb: $56

Jump_048_72cc:
    pop bc                                        ; $72cc: $c1
    ld l, a                                       ; $72cd: $6f
    inc e                                         ; $72ce: $1c
    rst $00                                       ; $72cf: $c7
    rlca                                          ; $72d0: $07
    sub a                                         ; $72d1: $97
    jr @+$64                                      ; $72d2: $18 $62

    adc b                                         ; $72d4: $88
    ld [hl], c                                    ; $72d5: $71
    inc e                                         ; $72d6: $1c
    rst $00                                       ; $72d7: $c7
    rlca                                          ; $72d8: $07
    sub a                                         ; $72d9: $97
    add $2a                                       ; $72da: $c6 $2a
    ld hl, sp-$43                                 ; $72dc: $f8 $bd
    sbc b                                         ; $72de: $98
    ld c, d                                       ; $72df: $4a
    inc d                                         ; $72e0: $14
    ld e, l                                       ; $72e1: $5d
    ld c, h                                       ; $72e2: $4c
    dec h                                         ; $72e3: $25
    adc d                                         ; $72e4: $8a
    ld [c], a                                     ; $72e5: $e2
    jr c, @+$40                                   ; $72e6: $38 $3e

    nop                                           ; $72e8: $00
    cpl                                           ; $72e9: $2f
    sbc $15                                       ; $72ea: $de $15
    db $dd                                        ; $72ec: $dd
    dec d                                         ; $72ed: $15
    dec [hl]                                      ; $72ee: $35
    ld e, e                                       ; $72ef: $5b
    jp c, $9f2b                                   ; $72f0: $da $2b $9f

    cp c                                          ; $72f3: $b9
    ld [hl], h                                    ; $72f4: $74
    ld sp, $c9a1                                  ; $72f5: $31 $a1 $c9
    ld [hl], e                                    ; $72f8: $73
    halt                                          ; $72f9: $76
    add $ca                                       ; $72fa: $c6 $ca
    dec hl                                        ; $72fc: $2b
    rlca                                          ; $72fd: $07
    cpl                                           ; $72fe: $2f

Jump_048_72ff:
    or l                                          ; $72ff: $b5
    rla                                           ; $7300: $17
    ld a, e                                       ; $7301: $7b
    or $43                                        ; $7302: $f6 $43
    ld d, b                                       ; $7304: $50
    rla                                           ; $7305: $17
    or [hl]                                       ; $7306: $b6
    ld [hl+], a                                   ; $7307: $22
    ld e, [hl]                                    ; $7308: $5e
    call nc, $e509                                ; $7309: $d4 $09 $e5
    rst $28                                       ; $730c: $ef
    sub [hl]                                      ; $730d: $96
    ld a, h                                       ; $730e: $7c
    cp h                                          ; $730f: $bc
    ld c, e                                       ; $7310: $4b
    ld h, e                                       ; $7311: $63
    dec d                                         ; $7312: $15
    db $fc                                        ; $7313: $fc
    ld e, [hl]                                    ; $7314: $5e
    ld c, h                                       ; $7315: $4c
    dec h                                         ; $7316: $25
    adc d                                         ; $7317: $8a
    ld [c], a                                     ; $7318: $e2
    jr c, jr_048_7359                             ; $7319: $38 $3e

    nop                                           ; $731b: $00
    rst $08                                       ; $731c: $cf
    db $dd                                        ; $731d: $dd
    push af                                       ; $731e: $f5
    call c, $cf5d                                 ; $731f: $dc $5d $cf
    push af                                       ; $7322: $f5
    adc h                                         ; $7323: $8c
    call Call_048_4ef9                            ; $7324: $cd $f9 $4e
    adc c                                         ; $7327: $89
    adc c                                         ; $7328: $89

jr_048_7329:
    jr nz, jr_048_7329                            ; $7329: $20 $fe

    ld d, c                                       ; $732b: $51
    ld [hl], e                                    ; $732c: $73
    xor b                                         ; $732d: $a8
    ld d, [hl]                                    ; $732e: $56
    sbc d                                         ; $732f: $9a
    ei                                            ; $7330: $fb
    dec [hl]                                      ; $7331: $35
    ld l, b                                       ; $7332: $68
    xor d                                         ; $7333: $aa
    ld b, l                                       ; $7334: $45
    jr jr_048_7363                                ; $7335: $18 $2c

    ld [hl-], a                                   ; $7337: $32
    and e                                         ; $7338: $a3
    db $dd                                        ; $7339: $dd
    ld [hl], b                                    ; $733a: $70
    ld b, e                                       ; $733b: $43
    ld c, $fe                                     ; $733c: $0e $fe
    inc de                                        ; $733e: $13
    xor [hl]                                      ; $733f: $ae
    dec e                                         ; $7340: $1d
    add l                                         ; $7341: $85
    adc l                                         ; $7342: $8d
    rst $30                                       ; $7343: $f7
    db $ec                                        ; $7344: $ec
    add a                                         ; $7345: $87
    and b                                         ; $7346: $a0
    ld l, $6c                                     ; $7347: $2e $6c
    ld b, l                                       ; $7349: $45
    cp h                                          ; $734a: $bc
    rla                                           ; $734b: $17
    dec e                                         ; $734c: $1d
    cp b                                          ; $734d: $b8
    and e                                         ; $734e: $a3
    or $a4                                        ; $734f: $f6 $a4
    rst $18                                       ; $7351: $df
    ld c, e                                       ; $7352: $4b
    and $a8                                       ; $7353: $e6 $a8
    ld a, [hl-]                                   ; $7355: $3a
    pop de                                        ; $7356: $d1
    cp [hl]                                       ; $7357: $be
    ld e, e                                       ; $7358: $5b

jr_048_7359:
    ld e, d                                       ; $7359: $5a
    ret nc                                        ; $735a: $d0

    add hl, sp                                    ; $735b: $39
    ret z                                         ; $735c: $c8

    and b                                         ; $735d: $a0
    ld a, [bc]                                    ; $735e: $0a

jr_048_735f:
    and d                                         ; $735f: $a2
    cpl                                           ; $7360: $2f
    sbc e                                         ; $7361: $9b
    ld [hl], c                                    ; $7362: $71

jr_048_7363:
    inc e                                         ; $7363: $1c
    rst $08                                       ; $7364: $cf
    ld [hl], a                                    ; $7365: $77
    ld l, a                                       ; $7366: $6f
    db $dd                                        ; $7367: $dd
    push af                                       ; $7368: $f5
    sub $5d                                       ; $7369: $d6 $5d
    ld l, a                                       ; $736b: $6f
    jp hl                                         ; $736c: $e9


    ld e, a                                       ; $736d: $5f
    add hl, sp                                    ; $736e: $39
    rst $10                                       ; $736f: $d7
    ld [hl], d                                    ; $7370: $72
    cp [hl]                                       ; $7371: $be
    cp e                                          ; $7372: $bb
    ld c, d                                       ; $7373: $4a
    ld c, $42                                     ; $7374: $0e $42
    ld e, c                                       ; $7376: $59
    ld b, a                                       ; $7377: $47
    adc c                                         ; $7378: $89
    ccf                                           ; $7379: $3f
    nop                                           ; $737a: $00
    ld l, a                                       ; $737b: $6f
    db $fc                                        ; $737c: $fc
    or d                                          ; $737d: $b2
    ld hl, sp+$03                                 ; $737e: $f8 $03
    xor a                                         ; $7380: $af
    ld d, b                                       ; $7381: $50
    pop hl                                        ; $7382: $e1
    ld e, b                                       ; $7383: $58
    dec d                                         ; $7384: $15
    rst $28                                       ; $7385: $ef
    ld [$575d], a                                 ; $7386: $ea $5d $57
    rst $28                                       ; $7389: $ef
    cp d                                          ; $738a: $ba
    adc d                                         ; $738b: $8a
    inc a                                         ; $738c: $3c
    sub a                                         ; $738d: $97
    call z, $ef00                                 ; $738e: $cc $00 $ef
    ld b, a                                       ; $7391: $47
    ld l, e                                       ; $7392: $6b
    ld [hl], e                                    ; $7393: $73
    ld a, [bc]                                    ; $7394: $0a
    ld a, [hl+]                                   ; $7395: $2a
    inc e                                         ; $7396: $1c
    ld c, l                                       ; $7397: $4d
    ld [hl], a                                    ; $7398: $77
    and c                                         ; $7399: $a1
    add e                                         ; $739a: $83
    ld [$9254], a                                 ; $739b: $ea $54 $92
    rra                                           ; $739e: $1f
    ld a, [c]                                     ; $739f: $f2
    ld h, h                                       ; $73a0: $64
    ldh a, [$90]                                  ; $73a1: $f0 $90
    db $e3                                        ; $73a3: $e3
    cp l                                          ; $73a4: $bd
    db $f4                                        ; $73a5: $f4
    add hl, hl                                    ; $73a6: $29
    ld [hl-], a                                   ; $73a7: $32
    db $d3                                        ; $73a8: $d3

Jump_048_73a9:
    inc bc                                        ; $73a9: $03
    dec a                                         ; $73aa: $3d
    ld h, e                                       ; $73ab: $63
    ld [hl], e                                    ; $73ac: $73
    rst $20                                       ; $73ad: $e7
    rst $28                                       ; $73ae: $ef
    inc c                                         ; $73af: $0c

jr_048_73b0:
    push hl                                       ; $73b0: $e5
    inc a                                         ; $73b1: $3c
    ld a, [c]                                     ; $73b2: $f2
    ld c, h                                       ; $73b3: $4c
    db $eb                                        ; $73b4: $eb
    ld [hl], $17                                  ; $73b5: $36 $17
    sbc c                                         ; $73b7: $99
    pop de                                        ; $73b8: $d1
    call z, Call_048_6d72                         ; $73b9: $cc $72 $6d
    ld c, $d4                                     ; $73bc: $0e $d4
    db $fd                                        ; $73be: $fd
    db $e4                                        ; $73bf: $e4
    ld c, e                                       ; $73c0: $4b
    cp [hl]                                       ; $73c1: $be
    db $d3                                        ; $73c2: $d3
    dec l                                         ; $73c3: $2d
    ld l, c                                       ; $73c4: $69
    ld c, h                                       ; $73c5: $4c
    jr nc, jr_048_735f                            ; $73c6: $30 $97

    inc c                                         ; $73c8: $0c
    inc [hl]                                      ; $73c9: $34
    cpl                                           ; $73ca: $2f
    ld d, $99                                     ; $73cb: $16 $99
    pop de                                        ; $73cd: $d1
    ld a, [hl]                                    ; $73ce: $7e
    db $e4                                        ; $73cf: $e4
    adc l                                         ; $73d0: $8d
    rla                                           ; $73d1: $17
    ld h, b                                       ; $73d2: $60
    or b                                          ; $73d3: $b0
    res 7, e                                      ; $73d4: $cb $bb
    ld l, $ef                                     ; $73d6: $2e $ef
    cp d                                          ; $73d8: $ba
    inc [hl]                                      ; $73d9: $34
    ld [hl+], a                                   ; $73da: $22
    ld sp, $e57b                                  ; $73db: $31 $7b $e5
    inc sp                                        ; $73de: $33
    sub a                                         ; $73df: $97
    ld h, $34                                     ; $73e0: $26 $34
    add hl, sp                                    ; $73e2: $39
    adc [hl]                                      ; $73e3: $8e
    db $e3                                        ; $73e4: $e3
    inc bc                                        ; $73e5: $03
    ld l, a                                       ; $73e6: $6f
    dec de                                        ; $73e7: $1b
    cpl                                           ; $73e8: $2f
    ld a, [$a1e5]                                 ; $73e9: $fa $e5 $a1
    sbc h                                         ; $73ec: $9c
    rst $38                                       ; $73ed: $ff
    call Call_048_7b2b                            ; $73ee: $cd $2b $7b
    dec a                                         ; $73f1: $3d
    ld d, c                                       ; $73f2: $51
    inc d                                         ; $73f3: $14
    rra                                           ; $73f4: $1f
    ld l, a                                       ; $73f5: $6f
    ld h, c                                       ; $73f6: $61
    ld a, [$8ef9]                                 ; $73f7: $fa $f9 $8e
    rst $28                                       ; $73fa: $ef
    ld [c], a                                     ; $73fb: $e2
    cp e                                          ; $73fc: $bb
    cp b                                          ; $73fd: $b8
    and b                                         ; $73fe: $a0
    jp hl                                         ; $73ff: $e9


    sub [hl]                                      ; $7400: $96
    ld e, h                                       ; $7401: $5c
    db $fd                                        ; $7402: $fd
    dec hl                                        ; $7403: $2b
    ld sp, $bc41                                  ; $7404: $31 $41 $bc
    ld h, a                                       ; $7407: $67
    ld [hl], d                                    ; $7408: $72
    cp $77                                        ; $7409: $fe $77
    ld h, c                                       ; $740b: $61
    ld a, c                                       ; $740c: $79
    ld a, [hl+]                                   ; $740d: $2a
    xor e                                         ; $740e: $ab
    db $e3                                        ; $740f: $e3
    jr c, jr_048_73b0                             ; $7410: $38 $9e

    rst $28                                       ; $7412: $ef
    sbc $d2                                       ; $7413: $de $d2
    cp a                                          ; $7415: $bf
    ld [hl], d                                    ; $7416: $72
    xor [hl]                                      ; $7417: $ae
    push hl                                       ; $7418: $e5
    ld a, h                                       ; $7419: $7c
    ld [hl], a                                    ; $741a: $77
    sub l                                         ; $741b: $95
    inc e                                         ; $741c: $1c
    add h                                         ; $741d: $84
    or d                                          ; $741e: $b2
    adc [hl]                                      ; $741f: $8e
    ld e, d                                       ; $7420: $5a
    ld h, h                                       ; $7421: $64
    ld h, $79                                     ; $7422: $26 $79
    ld b, c                                       ; $7424: $41
    ld [hl], a                                    ; $7425: $77
    cp [hl]                                       ; $7426: $be
    db $eb                                        ; $7427: $eb
    ld a, h                                       ; $7428: $7c
    rst $10                                       ; $7429: $d7
    ld sp, hl                                     ; $742a: $f9
    ld h, h                                       ; $742b: $64
    ld d, d                                       ; $742c: $52
    sub [hl]                                      ; $742d: $96
    sub $dc                                       ; $742e: $d6 $dc
    ld sp, hl                                     ; $7430: $f9
    ld h, h                                       ; $7431: $64
    ld d, d                                       ; $7432: $52
    sub [hl]                                      ; $7433: $96
    add $9f                                       ; $7434: $c6 $9f
    cp l                                          ; $7436: $bd
    pop af                                        ; $7437: $f1
    add d                                         ; $7438: $82
    ld l, $cd                                     ; $7439: $2e $cd
    ld l, b                                       ; $743b: $68
    jp nz, $c25d                                  ; $743c: $c2 $5d $c2

    ld e, l                                       ; $743f: $5d
    ld b, d                                       ; $7440: $42
    db $fd                                        ; $7441: $fd
    and d                                         ; $7442: $a2
    ld e, a                                       ; $7443: $5f
    adc [hl]                                      ; $7444: $8e
    rrca                                          ; $7445: $0f
    sub a                                         ; $7446: $97
    ld e, b                                       ; $7447: $58
    jp c, $d1d9                                   ; $7448: $da $d9 $d1

    dec bc                                        ; $744b: $0b
    ld a, [hl-]                                   ; $744c: $3a
    rst $18                                       ; $744d: $df
    pop af                                        ; $744e: $f1
    ld e, l                                       ; $744f: $5d
    ld a, h                                       ; $7450: $7c
    rla                                           ; $7451: $17

jr_048_7452:
    rla                                           ; $7452: $17
    inc [hl]                                      ; $7453: $34
    db $dd                                        ; $7454: $dd
    sub d                                         ; $7455: $92
    xor e                                         ; $7456: $ab
    ld a, a                                       ; $7457: $7f
    dec h                                         ; $7458: $25
    ld h, $58                                     ; $7459: $26 $58
    ld h, d                                       ; $745b: $62
    ld a, c                                       ; $745c: $79
    ld l, $a6                                     ; $745d: $2e $a6
    ld l, a                                       ; $745f: $6f
    ld e, [hl]                                    ; $7460: $5e
    db $ec                                        ; $7461: $ec
    jp nc, $c488                                  ; $7462: $d2 $88 $c4

    adc b                                         ; $7465: $88
    ccf                                           ; $7466: $3f
    nop                                           ; $7467: $00
    rst $10                                       ; $7468: $d7
    ld h, h                                       ; $7469: $64
    inc e                                         ; $746a: $1c
    rst $00                                       ; $746b: $c7
    ld [hl], e                                    ; $746c: $73
    ld a, a                                       ; $746d: $7f
    push af                                       ; $746e: $f5
    and d                                         ; $746f: $a2
    add $71                                       ; $7470: $c6 $71
    cp h                                          ; $7472: $bc
    call nz, $cef2                                ; $7473: $c4 $f2 $ce
    ld a, a                                       ; $7476: $7f
    ldh [$d7], a                                  ; $7477: $e0 $d7
    rst $00                                       ; $7479: $c7
    ld [hl], c                                    ; $747a: $71
    ld a, h                                       ; $747b: $7c
    nop                                           ; $747c: $00
    ld l, a                                       ; $747d: $6f
    db $fd                                        ; $747e: $fd
    ld [$5d05], a                                 ; $747f: $ea $05 $5d
    ret nc                                        ; $7482: $d0

    sbc c                                         ; $7483: $99
    sbc [hl]                                      ; $7484: $9e
    ld d, b                                       ; $7485: $50
    ld l, $5d                                     ; $7486: $2e $5d
    reti                                          ; $7488: $d9


    push af                                       ; $7489: $f5
    xor $6c                                       ; $748a: $ee $6c
    ld h, b                                       ; $748c: $60
    and l                                         ; $748d: $a5
    sub l                                         ; $748e: $95
    ret nz                                        ; $748f: $c0

    adc $58                                       ; $7490: $ce $58
    add hl, sp                                    ; $7492: $39
    rlca                                          ; $7493: $07
    ld a, c                                       ; $7494: $79
    db $fc                                        ; $7495: $fc
    sbc e                                         ; $7496: $9b
    dec bc                                        ; $7497: $0b
    cp d                                          ; $7498: $ba
    db $10                                        ; $7499: $10
    ld c, e                                       ; $749a: $4b
    dec sp                                        ; $749b: $3b
    sub l                                         ; $749c: $95
    db $fc                                        ; $749d: $fc
    inc b                                         ; $749e: $04
    call z, $826c                                 ; $749f: $cc $6c $82
    ld a, [bc]                                    ; $74a2: $0a
    ld h, h                                       ; $74a3: $64
    ldh a, [$90]                                  ; $74a4: $f0 $90
    db $e3                                        ; $74a6: $e3
    inc bc                                        ; $74a7: $03
    rst $10                                       ; $74a8: $d7
    db $e4                                        ; $74a9: $e4
    jp nz, $d30a                                  ; $74aa: $c2 $0a $d3

    and [hl]                                      ; $74ad: $a6
    ld a, b                                       ; $74ae: $78
    xor [hl]                                      ; $74af: $ae
    push hl                                       ; $74b0: $e5
    ld a, h                                       ; $74b1: $7c
    rst $30                                       ; $74b2: $f7
    sub [hl]                                      ; $74b3: $96
    cp $95                                        ; $74b4: $fe $95
    ld [hl], e                                    ; $74b6: $73
    dec l                                         ; $74b7: $2d
    rst $20                                       ; $74b8: $e7
    cp e                                          ; $74b9: $bb
    xor e                                         ; $74ba: $ab
    db $e4                                        ; $74bb: $e4
    jr nz, jr_048_7452                            ; $74bc: $20 $94

    ld [hl], l                                    ; $74be: $75
    ld d, h                                       ; $74bf: $54
    cp h                                          ; $74c0: $bc
    rst $10                                       ; $74c1: $d7
    inc de                                        ; $74c2: $13
    ld b, l                                       ; $74c3: $45
    pop af                                        ; $74c4: $f1
    ld e, [hl]                                    ; $74c5: $5e
    and c                                         ; $74c6: $a1
    cpl                                           ; $74c7: $2f
    xor d                                         ; $74c8: $aa
    ld d, d                                       ; $74c9: $52
    sbc a                                         ; $74ca: $9f
    or $3c                                        ; $74cb: $f6 $3c
    ld h, c                                       ; $74cd: $61
    jp z, $85ea                                   ; $74ce: $ca $ea $85

    xor l                                         ; $74d1: $ad
    adc b                                         ; $74d2: $88
    rla                                           ; $74d3: $17
    ld [hl], l                                    ; $74d4: $75
    rra                                           ; $74d5: $1f
    ld a, [de]                                    ; $74d6: $1a
    ld h, h                                       ; $74d7: $64
    ld a, [hl]                                    ; $74d8: $7e
    and b                                         ; $74d9: $a0
    adc d                                         ; $74da: $8a
    dec e                                         ; $74db: $1d
    add a                                         ; $74dc: $87
    db $fc                                        ; $74dd: $fc
    ld a, [hl]                                    ; $74de: $7e
    inc [hl]                                      ; $74df: $34
    rst $18                                       ; $74e0: $df
    ld [hl], c                                    ; $74e1: $71
    ld b, c                                       ; $74e2: $41
    db $d3                                        ; $74e3: $d3
    dec l                                         ; $74e4: $2d
    cp c                                          ; $74e5: $b9
    ld a, [$6257]                                 ; $74e6: $fa $57 $62
    add d                                         ; $74e9: $82
    ld [hl], c                                    ; $74ea: $71
    rst $20                                       ; $74eb: $e7
    ld h, d                                       ; $74ec: $62
    ld a, [$bc66]                                 ; $74ed: $fa $66 $bc
    scf                                           ; $74f0: $37
    ld a, [hl]                                    ; $74f1: $7e
    add hl, sp                                    ; $74f2: $39
    sbc $f3                                       ; $74f3: $de $f3
    ld c, [hl]                                    ; $74f5: $4e
    ld a, [c]                                     ; $74f6: $f2
    sbc h                                         ; $74f7: $9c
    ld b, l                                       ; $74f8: $45
    ld e, l                                       ; $74f9: $5d
    ld e, b                                       ; $74fa: $58
    dec c                                         ; $74fb: $0d
    dec [hl]                                      ; $74fc: $35
    xor a                                         ; $74fd: $af
    inc e                                         ; $74fe: $1c
    cpl                                           ; $74ff: $2f
    or l                                          ; $7500: $b5
    pop de                                        ; $7501: $d1
    ld a, h                                       ; $7502: $7c
    rst $08                                       ; $7503: $cf
    db $dd                                        ; $7504: $dd
    db $db                                        ; $7505: $db
    ld [$f340], sp                                ; $7506: $08 $40 $f3
    ld d, h                                       ; $7509: $54
    db $ed                                        ; $750a: $ed
    dec a                                         ; $750b: $3d
    ld e, c                                       ; $750c: $59
    jp z, $e7c7                                   ; $750d: $ca $c7 $e7

    dec sp                                        ; $7510: $3b
    or a                                          ; $7511: $b7
    db $e4                                        ; $7512: $e4
    ld [$895f], a                                 ; $7513: $ea $5f $89
    add hl, bc                                    ; $7516: $09
    ld b, $cc                                     ; $7517: $06 $cc
    ld a, b                                       ; $7519: $78
    and l                                         ; $751a: $a5
    dec h                                         ; $751b: $25
    sub [hl]                                      ; $751c: $96
    rst $20                                       ; $751d: $e7
    ld e, d                                       ; $751e: $5a
    xor $54                                       ; $751f: $ee $54
    ld [hl], b                                    ; $7521: $70
    or c                                          ; $7522: $b1
    ret z                                         ; $7523: $c8

    adc h                                         ; $7524: $8c
    ld d, $74                                     ; $7525: $16 $74
    xor $af                                       ; $7527: $ee $af
    and $05                                       ; $7529: $e6 $05
    db $dd                                        ; $752b: $dd
    xor c                                         ; $752c: $a9
    ld a, d                                       ; $752d: $7a
    ld b, d                                       ; $752e: $42
    cp c                                          ; $752f: $b9
    inc d                                         ; $7530: $14
    rra                                           ; $7531: $1f
    ld d, a                                       ; $7532: $57
    dec l                                         ; $7533: $2d
    push hl                                       ; $7534: $e5
    sbc h                                         ; $7535: $9c
    sbc l                                         ; $7536: $9d
    xor d                                         ; $7537: $aa
    cpl                                           ; $7538: $2f
    ld d, $99                                     ; $7539: $16 $99
    or a                                          ; $753b: $b7
    xor b                                         ; $753c: $a8
    ld a, e                                       ; $753d: $7b
    ld b, l                                       ; $753e: $45
    ld h, e                                       ; $753f: $63
    and b                                         ; $7540: $a0
    cp b                                          ; $7541: $b8
    inc d                                         ; $7542: $14
    rra                                           ; $7543: $1f
    rst $10                                       ; $7544: $d7
    db $e4                                        ; $7545: $e4
    jp nz, Jump_000_0b0a                          ; $7546: $c2 $0a $0b

    ld a, [hl-]                                   ; $7549: $3a
    ret nc                                        ; $754a: $d0

    ld [hl], e                                    ; $754b: $73
    add c                                         ; $754c: $81
    sbc a                                         ; $754d: $9f
    scf                                           ; $754e: $37
    sbc [hl]                                      ; $754f: $9e
    ld b, a                                       ; $7550: $47
    sbc $f9                                       ; $7551: $de $f9
    dec sp                                        ; $7553: $3b
    inc bc                                        ; $7554: $03
    dec d                                         ; $7555: $15
    ld [$3350], a                                 ; $7556: $ea $50 $33
    ld a, $00                                     ; $7559: $3e $00
    ld l, a                                       ; $755b: $6f
    or a                                          ; $755c: $b7
    cp h                                          ; $755d: $bc
    nop                                           ; $755e: $00
    add e                                         ; $755f: $83
    add l                                         ; $7560: $85
    cp a                                          ; $7561: $bf
    ld b, e                                       ; $7562: $43
    cp c                                          ; $7563: $b9
    ld [hl], $e7                                  ; $7564: $36 $e7
    sub [hl]                                      ; $7566: $96
    ld e, h                                       ; $7567: $5c
    db $fd                                        ; $7568: $fd
    dec hl                                        ; $7569: $2b
    ld sp, $7ec1                                  ; $756a: $31 $c1 $7e
    add d                                         ; $756d: $82
    ld a, d                                       ; $756e: $7a
    or e                                          ; $756f: $b3
    sbc h                                         ; $7570: $9c

Call_048_7571:
    or h                                          ; $7571: $b4
    ld e, h                                       ; $7572: $5c
    ld h, h                                       ; $7573: $64
    or d                                          ; $7574: $b2
    ld a, c                                       ; $7575: $79
    push hl                                       ; $7576: $e5
    nop                                           ; $7577: $00
    rst $10                                       ; $7578: $d7
    ld sp, $53d8                                  ; $7579: $31 $d8 $53
    rst $08                                       ; $757c: $cf
    cp h                                          ; $757d: $bc
    db $f4                                        ; $757e: $f4
    add $dc                                       ; $757f: $c6 $dc
    sub d                                         ; $7581: $92
    xor e                                         ; $7582: $ab
    ld a, a                                       ; $7583: $7f
    dec h                                         ; $7584: $25
    ld e, a                                       ; $7585: $5f
    db $ec                                        ; $7586: $ec
    sub l                                         ; $7587: $95
    rst $08                                       ; $7588: $cf
    ld e, h                                       ; $7589: $5c
    cp d                                          ; $758a: $ba
    ld e, b                                       ; $758b: $58
    ld [hl], e                                    ; $758c: $73
    jr z, jr_048_7606                             ; $758d: $28 $77

    cp $ce                                        ; $758f: $fe $ce
    sbc $be                                       ; $7591: $de $be
    or $c2                                        ; $7593: $f6 $c2
    dec bc                                        ; $7595: $0b
    rst $08                                       ; $7596: $cf
    cp h                                          ; $7597: $bc
    inc [hl]                                      ; $7598: $34
    ld l, a                                       ; $7599: $6f
    inc a                                         ; $759a: $3c
    sub h                                         ; $759b: $94
    dec sp                                        ; $759c: $3b
    and c                                         ; $759d: $a1
    ld [c], a                                     ; $759e: $e2
    add l                                         ; $759f: $85
    cp a                                          ; $75a0: $bf
    ld b, e                                       ; $75a1: $43
    cp c                                          ; $75a2: $b9
    ldh [$3b], a                                  ; $75a3: $e0 $3b
    ei                                            ; $75a5: $fb
    add hl, bc                                    ; $75a6: $09
    ld [$72cd], a                                 ; $75a7: $ea $cd $72
    ld a, [c]                                     ; $75aa: $f2
    rst $20                                       ; $75ab: $e7
    ld [hl+], a                                   ; $75ac: $22
    sub e                                         ; $75ad: $93
    call $00f8                                    ; $75ae: $cd $f8 $00
    rst $10                                       ; $75b1: $d7
    dec sp                                        ; $75b2: $3b
    db $fd                                        ; $75b3: $fd
    ccf                                           ; $75b4: $3f
    call nz, Call_048_5b0b                        ; $75b5: $c4 $0b $5b
    cp l                                          ; $75b8: $bd
    sub e                                         ; $75b9: $93
    pop af                                        ; $75ba: $f1
    db $fc                                        ; $75bb: $fc
    rst $38                                       ; $75bc: $ff
    inc [hl]                                      ; $75bd: $34
    rst $18                                       ; $75be: $df
    add l                                         ; $75bf: $85
    and [hl]                                      ; $75c0: $a6
    ld [hl], l                                    ; $75c1: $75
    ld [hl], e                                    ; $75c2: $73
    adc h                                         ; $75c3: $8c
    add c                                         ; $75c4: $81
    ld l, a                                       ; $75c5: $6f
    xor d                                         ; $75c6: $aa
    ld sp, hl                                     ; $75c7: $f9
    ld c, [hl]                                    ; $75c8: $4e
    ld d, a                                       ; $75c9: $57
    xor c                                         ; $75ca: $a9
    and $c5                                       ; $75cb: $e6 $c5
    ld l, $8d                                     ; $75cd: $2e $8d
    ld c, b                                       ; $75cf: $48
    ld c, h                                       ; $75d0: $4c
    ld a, h                                       ; $75d1: $7c
    nop                                           ; $75d2: $00
    rst $10                                       ; $75d3: $d7
    db $e4                                        ; $75d4: $e4
    add h                                         ; $75d5: $84
    and $dc                                       ; $75d6: $e6 $dc
    sub d                                         ; $75d8: $92
    xor e                                         ; $75d9: $ab
    ld a, a                                       ; $75da: $7f
    dec h                                         ; $75db: $25
    ld e, a                                       ; $75dc: $5f
    ld c, h                                       ; $75dd: $4c
    dec h                                         ; $75de: $25
    adc d                                         ; $75df: $8a
    ld [c], a                                     ; $75e0: $e2
    inc bc                                        ; $75e1: $03
    ld l, a                                       ; $75e2: $6f
    ld h, e                                       ; $75e3: $63
    rla                                           ; $75e4: $17
    or [hl]                                       ; $75e5: $b6
    ld [hl+], a                                   ; $75e6: $22
    ld e, [hl]                                    ; $75e7: $5e
    ret nc                                        ; $75e8: $d0

    cp c                                          ; $75e9: $b9
    dec h                                         ; $75ea: $25
    ld d, a                                       ; $75eb: $57
    rst $38                                       ; $75ec: $ff
    ld c, d                                       ; $75ed: $4a
    cp [hl]                                       ; $75ee: $be
    ld [hl], d                                    ; $75ef: $72
    nop                                           ; $75f0: $00
    rst $08                                       ; $75f1: $cf
    ld a, [hl]                                    ; $75f2: $7e
    ld [$bc6a], sp                                ; $75f3: $08 $6a $bc
    ld c, e                                       ; $75f6: $4b
    inc c                                         ; $75f7: $0c
    ld d, $b6                                     ; $75f8: $16 $b6
    ld [hl+], a                                   ; $75fa: $22
    sbc [hl]                                      ; $75fb: $9e
    rst $28                                       ; $75fc: $ef
    sbc $d2                                       ; $75fd: $de $d2
    cp a                                          ; $75ff: $bf
    ld [hl], d                                    ; $7600: $72
    xor [hl]                                      ; $7601: $ae
    push hl                                       ; $7602: $e5
    ld a, h                                       ; $7603: $7c
    ld [hl], a                                    ; $7604: $77
    sub l                                         ; $7605: $95

jr_048_7606:
    inc e                                         ; $7606: $1c
    add h                                         ; $7607: $84
    or d                                          ; $7608: $b2
    adc [hl]                                      ; $7609: $8e
    jp c, Jump_048_4b77                           ; $760a: $da $77 $4b

    adc e                                         ; $760d: $8b
    ld a, [hl-]                                   ; $760e: $3a
    rlca                                          ; $760f: $07
    add hl, de                                    ; $7610: $19
    ld d, h                                       ; $7611: $54
    ld b, c                                       ; $7612: $41
    db $f4                                        ; $7613: $f4
    ld h, l                                       ; $7614: $65
    ld [hl], e                                    ; $7615: $73
    call Call_048_5ca1                            ; $7616: $cd $a1 $5c
    db $f4                                        ; $7619: $f4
    bit 6, e                                      ; $761a: $cb $73
    dec l                                         ; $761c: $2d
    rst $30                                       ; $761d: $f7
    inc a                                         ; $761e: $3c
    ld h, c                                       ; $761f: $61
    jp z, $b5ea                                   ; $7620: $ca $ea $b5

    add hl, sp                                    ; $7623: $39
    ld l, $68                                     ; $7624: $2e $68
    ld b, [hl]                                    ; $7626: $46
    add sp, $7d                                   ; $7627: $e8 $7d
    push af                                       ; $7629: $f5
    ld e, h                                       ; $762a: $5c
    ld c, h                                       ; $762b: $4c
    rst $18                                       ; $762c: $df
    adc h                                         ; $762d: $8c
    rst $30                                       ; $762e: $f7
    ld a, d                                       ; $762f: $7a
    ld a, [hl-]                                   ; $7630: $3a
    and d                                         ; $7631: $a2
    ld hl, sp+$00                                 ; $7632: $f8 $00
    ld l, a                                       ; $7634: $6f
    ld e, c                                       ; $7635: $59
    adc $63                                       ; $7636: $ce $63
    rst $20                                       ; $7638: $e7
    sub [hl]                                      ; $7639: $96
    ld e, h                                       ; $763a: $5c
    db $fd                                        ; $763b: $fd
    dec hl                                        ; $763c: $2b
    ld sp, $4ec1                                  ; $763d: $31 $c1 $4e

Jump_048_7640:
    sbc a                                         ; $7640: $9f
    db $fc                                        ; $7641: $fc
    add d                                         ; $7642: $82
    xor $7c                                       ; $7643: $ee $7c
    ld [hl-], a                                   ; $7645: $32
    add hl, hl                                    ; $7646: $29
    ld c, e                                       ; $7647: $4b
    ld l, e                                       ; $7648: $6b
    xor $7c                                       ; $7649: $ee $7c
    ld [hl-], a                                   ; $764b: $32
    add hl, hl                                    ; $764c: $29
    ld c, e                                       ; $764d: $4b
    pop af                                        ; $764e: $f1
    sbc $fa                                       ; $764f: $de $fa
    ld a, [de]                                    ; $7651: $1a
    inc [hl]                                      ; $7652: $34
    push de                                       ; $7653: $d5
    ld [hl+], a                                   ; $7654: $22
    inc c                                         ; $7655: $0c
    ld h, $9d                                     ; $7656: $26 $9d
    ld e, h                                       ; $7658: $5c
    ret nc                                        ; $7659: $d0

    ld h, c                                       ; $765a: $61
    adc $77                                       ; $765b: $ce $77
    ld [bc], a                                    ; $765d: $02
    ld a, [bc]                                    ; $765e: $0a
    ld a, [de]                                    ; $765f: $1a
    ccf                                           ; $7660: $3f
    add a                                         ; $7661: $87
    xor l                                         ; $7662: $ad
    call c, Call_048_7aa9                         ; $7663: $dc $a9 $7a
    ld h, c                                       ; $7666: $61
    ld a, c                                       ; $7667: $79
    ld l, l                                       ; $7668: $6d
    xor [hl]                                      ; $7669: $ae
    add hl, sp                                    ; $766a: $39
    ld c, e                                       ; $766b: $4b
    ld e, a                                       ; $766c: $5f
    sbc d                                         ; $766d: $9a
    adc e                                         ; $766e: $8b
    jp hl                                         ; $766f: $e9


    sbc e                                         ; $7670: $9b
    pop af                                        ; $7671: $f1
    ld bc, $4697                                  ; $7672: $01 $97 $46
    inc h                                         ; $7675: $24
    ld b, [hl]                                    ; $7676: $46
    db $fc                                        ; $7677: $fc
    sbc $36                                       ; $7678: $de $36
    and e                                         ; $767a: $a3
    rra                                           ; $767b: $1f
    db $ed                                        ; $767c: $ed
    adc h                                         ; $767d: $8c
    cp h                                          ; $767e: $bc
    nop                                           ; $767f: $00
    add e                                         ; $7680: $83
    dec h                                         ; $7681: $25
    sub [hl]                                      ; $7682: $96
    add a                                         ; $7683: $87
    add hl, sp                                    ; $7684: $39
    rst $18                                       ; $7685: $df
    jp hl                                         ; $7686: $e9


    xor d                                         ; $7687: $aa
    dec hl                                        ; $7688: $2b
    rlca                                          ; $7689: $07
    rst $10                                       ; $768a: $d7
    db $e4                                        ; $768b: $e4
    and d                                         ; $768c: $a2
    ld e, a                                       ; $768d: $5f
    sbc [hl]                                      ; $768e: $9e
    ld l, e                                       ; $768f: $6b
    add hl, sp                                    ; $7690: $39
    adc b                                         ; $7691: $88
    cp [hl]                                       ; $7692: $be
    xor b                                         ; $7693: $a8
    ld c, d                                       ; $7694: $4a

Jump_048_7695:
    ld a, l                                       ; $7695: $7d
    jp c, $84f3                                   ; $7696: $da $f3 $84

    add hl, hl                                    ; $7699: $29
    xor e                                         ; $769a: $ab
    rst $10                                       ; $769b: $d7
    and $22                                       ; $769c: $e6 $22
    ld c, e                                       ; $769e: $4b
    inc l                                         ; $769f: $2c
    call $f4c5                                    ; $76a0: $cd $c5 $f4
    call Call_048_68fd                            ; $76a3: $cd $fd $68
    cp [hl]                                       ; $76a6: $be
    ld [hl], e                                    ; $76a7: $73
    ld c, e                                       ; $76a8: $4b
    xor [hl]                                      ; $76a9: $ae
    cp $95                                        ; $76aa: $fe $95
    sbc b                                         ; $76ac: $98
    ld h, b                                       ; $76ad: $60
    ccf                                           ; $76ae: $3f
    ld b, c                                       ; $76af: $41
    cp l                                          ; $76b0: $bd
    ld e, c                                       ; $76b1: $59
    adc [hl]                                      ; $76b2: $8e
    cp e                                          ; $76b3: $bb
    ret z                                         ; $76b4: $c8

    ld h, h                                       ; $76b5: $64
    ld [hl], e                                    ; $76b6: $73
    ld e, $bb                                     ; $76b7: $1e $bb
    rst $28                                       ; $76b9: $ef
    sub [hl]                                      ; $76ba: $96
    ld d, $61                                     ; $76bb: $16 $61
    jr nc, jr_048_7713                            ; $76bd: $30 $54

    ld [hl], e                                    ; $76bf: $73
    sub b                                         ; $76c0: $90
    ld b, c                                       ; $76c1: $41
    dec d                                         ; $76c2: $15
    ld b, h                                       ; $76c3: $44
    ld e, a                                       ; $76c4: $5f
    ld [hl], $e3                                  ; $76c5: $36 $e3
    cp l                                          ; $76c7: $bd
    pop af                                        ; $76c8: $f1
    set 6, c                                      ; $76c9: $cb $f1
    ld bc, $916f                                  ; $76cb: $01 $6f $91
    add hl, de                                    ; $76ce: $19
    ld e, b                                       ; $76cf: $58
    ld e, b                                       ; $76d0: $58
    sbc [hl]                                      ; $76d1: $9e
    ld e, c                                       ; $76d2: $59
    ld l, $32                                     ; $76d3: $2e $32
    ld l, a                                       ; $76d5: $6f
    ld d, c                                       ; $76d6: $51
    rst $30                                       ; $76d7: $f7
    jp c, $a28f                                   ; $76d8: $da $8f $a2

    ld l, d                                       ; $76db: $6a
    ld l, l                                       ; $76dc: $6d
    jp $ef9c                                      ; $76dd: $c3 $9c $ef


    inc b                                         ; $76e0: $04
    inc d                                         ; $76e1: $14
    inc [hl]                                      ; $76e2: $34
    ld a, [hl]                                    ; $76e3: $7e
    ld c, $5b                                     ; $76e4: $0e $5b
    add hl, de                                    ; $76e6: $19
    rst $28                                       ; $76e7: $ef
    ld h, l                                       ; $76e8: $65
    ld l, b                                       ; $76e9: $68
    cp [hl]                                       ; $76ea: $be
    di                                            ; $76eb: $f3
    ld d, l                                       ; $76ec: $55
    ld b, d                                       ; $76ed: $42
    sbc c                                         ; $76ee: $99

Call_048_76ef:
    ld a, [hl+]                                   ; $76ef: $2a
    ld [de], a                                    ; $76f0: $12
    dec [hl]                                      ; $76f1: $35
    ld a, l                                       ; $76f2: $7d
    ld h, a                                       ; $76f3: $67
    ld [hl+], a                                   ; $76f4: $22
    ld e, a                                       ; $76f5: $5f
    adc l                                         ; $76f6: $8d
    add hl, bc                                    ; $76f7: $09
    and [hl]                                      ; $76f8: $a6
    ret c                                         ; $76f9: $d8

    inc l                                         ; $76fa: $2c
    rla                                           ; $76fb: $17
    or [hl]                                       ; $76fc: $b6
    ld a, d                                       ; $76fd: $7a
    ld l, [hl]                                    ; $76fe: $6e
    xor e                                         ; $76ff: $ab
    daa                                           ; $7700: $27
    db $fc                                        ; $7701: $fc
    jp z, $bee6                                   ; $7702: $ca $e6 $be

    ld e, e                                       ; $7705: $5b
    ld a, [de]                                    ; $7706: $1a
    rla                                           ; $7707: $17
    inc [hl]                                      ; $7708: $34
    db $dd                                        ; $7709: $dd
    sub d                                         ; $770a: $92
    xor e                                         ; $770b: $ab
    ld a, a                                       ; $770c: $7f
    dec h                                         ; $770d: $25
    ld h, $68                                     ; $770e: $26 $68
    add $07                                       ; $7710: $c6 $07
    ld l, a                                       ; $7712: $6f

jr_048_7713:
    or a                                          ; $7713: $b7
    cp h                                          ; $7714: $bc
    nop                                           ; $7715: $00
    add e                                         ; $7716: $83
    add l                                         ; $7717: $85
    cp a                                          ; $7718: $bf
    ld b, e                                       ; $7719: $43
    cp c                                          ; $771a: $b9
    ld [hl], $e7                                  ; $771b: $36 $e7
    sub [hl]                                      ; $771d: $96
    ld e, h                                       ; $771e: $5c
    db $fd                                        ; $771f: $fd
    dec hl                                        ; $7720: $2b
    ld sp, $7ec1                                  ; $7721: $31 $c1 $7e
    add d                                         ; $7724: $82
    ld a, d                                       ; $7725: $7a
    or e                                          ; $7726: $b3
    sbc h                                         ; $7727: $9c
    or h                                          ; $7728: $b4
    ld e, h                                       ; $7729: $5c
    ld h, h                                       ; $772a: $64
    or d                                          ; $772b: $b2
    ld a, c                                       ; $772c: $79
    push hl                                       ; $772d: $e5
    nop                                           ; $772e: $00
    cpl                                           ; $772f: $2f

Jump_048_7730:
    or l                                          ; $7730: $b5
    pop af                                        ; $7731: $f1
    sbc [hl]                                      ; $7732: $9e
    ret                                           ; $7733: $c9


    ld c, c                                       ; $7734: $49

Call_048_7735:
    inc c                                         ; $7735: $0c
    db $e4                                        ; $7736: $e4
    ld c, h                                       ; $7737: $4c
    xor e                                         ; $7738: $ab
    and b                                         ; $7739: $a0
    add d                                         ; $773a: $82
    add $8a                                       ; $773b: $c6 $8a
    ld a, b                                       ; $773d: $78
    ld c, $f2                                     ; $773e: $0e $f2
    cp h                                          ; $7740: $bc
    pop af                                        ; $7741: $f1
    add d                                         ; $7742: $82
    ld l, $b1                                     ; $7743: $2e $b1
    cp h                                          ; $7745: $bc
    or b                                          ; $7746: $b0
    push de                                       ; $7747: $d5
    ld a, e                                       ; $7748: $7b
    adc [hl]                                      ; $7749: $8e
    ld d, b                                       ; $774a: $50
    inc h                                         ; $774b: $24
    ld a, [$ff4d]                                 ; $774c: $fa $4d $ff
    ld l, c                                       ; $774f: $69
    ld h, [hl]                                    ; $7750: $66
    xor c                                         ; $7751: $a9
    cp b                                          ; $7752: $b8
    sub l                                         ; $7753: $95
    inc e                                         ; $7754: $1c
    rra                                           ; $7755: $1f
    ld d, a                                       ; $7756: $57
    adc l                                         ; $7757: $8d

jr_048_7758:
    rla                                           ; $7758: $17
    ld d, [hl]                                    ; $7759: $56
    db $10                                        ; $775a: $10
    sbc d                                         ; $775b: $9a
    dec sp                                        ; $775c: $3b
    ld [hl], l                                    ; $775d: $75
    ld sp, hl                                     ; $775e: $f9
    pop bc                                        ; $775f: $c1
    ld [de], a                                    ; $7760: $12
    rlc e                                         ; $7761: $cb $03
    dec c                                         ; $7763: $0d
    call Call_000_07c7                            ; $7764: $cd $c7 $07
    rst $28                                       ; $7767: $ef
    ld a, [hl-]                                   ; $7768: $3a
    ld [hl-], a                                   ; $7769: $32
    sbc $53                                       ; $776a: $de $53
    ld a, [de]                                    ; $776c: $1a
    inc bc                                        ; $776d: $03
    pop de                                        ; $776e: $d1
    inc e                                         ; $776f: $1c
    db $e4                                        ; $7770: $e4
    ld b, l                                       ; $7771: $45
    jr jr_048_7758                                ; $7772: $18 $e4

    inc b                                         ; $7774: $04
    rst $00                                       ; $7775: $c7
    ld hl, $699e                                  ; $7776: $21 $9e $69
    or l                                          ; $7779: $b5
    and b                                         ; $777a: $a0
    ld [hl], e                                    ; $777b: $73
    ld c, e                                       ; $777c: $4b
    xor [hl]                                      ; $777d: $ae
    cp $95                                        ; $777e: $fe $95

Jump_048_7780:
    inc a                                         ; $7780: $3c
    and c                                         ; $7781: $a1
    ret                                           ; $7782: $c9


    ld [c], a                                     ; $7783: $e2
    rrca                                          ; $7784: $0f
    cpl                                           ; $7785: $2f
    sub [hl]                                      ; $7786: $96
    rst $10                                       ; $7787: $d7
    and $b8                                       ; $7788: $e6 $b8
    and b                                         ; $778a: $a0
    jp hl                                         ; $778b: $e9


Call_048_778c:
    sub [hl]                                      ; $778c: $96
    ld e, h                                       ; $778d: $5c
    db $fd                                        ; $778e: $fd
    dec hl                                        ; $778f: $2b
    ld sp, $c5c1                                  ; $7790: $31 $c1 $c5
    jp nz, Jump_048_59df                          ; $7793: $c2 $df $59

    ld a, [$ba92]                                 ; $7796: $fa $92 $ba
    ld [hl], d                                    ; $7799: $72
    nop                                           ; $779a: $00
    xor a                                         ; $779b: $af
    ret nc                                        ; $779c: $d0

    rla                                           ; $779d: $17
    ld d, l                                       ; $779e: $55
    xor c                                         ; $779f: $a9
    ld c, a                                       ; $77a0: $4f
    ld a, e                                       ; $77a1: $7b
    sbc [hl]                                      ; $77a2: $9e
    jr nc, jr_048_780a                            ; $77a3: $30 $65

    push af                                       ; $77a5: $f5
    ld c, [hl]                                    ; $77a6: $4e
    dec l                                         ; $77a7: $2d
    rst $08                                       ; $77a8: $cf
    dec [hl]                                      ; $77a9: $35
    push bc                                       ; $77aa: $c5
    dec bc                                        ; $77ab: $0b
    res 6, e                                      ; $77ac: $cb $b3
    db $e4                                        ; $77ae: $e4
    db $d3                                        ; $77af: $d3
    rst $38                                       ; $77b0: $ff
    db $e4                                        ; $77b1: $e4
    db $e3                                        ; $77b2: $e3
    inc bc                                        ; $77b3: $03
    rst $08                                       ; $77b4: $cf
    ld h, e                                       ; $77b5: $63
    jr nz, @-$77                                  ; $77b6: $20 $87

    add hl, sp                                    ; $77b8: $39
    rst $18                                       ; $77b9: $df
    add hl, bc                                    ; $77ba: $09
    jr z, @+$6a                                   ; $77bb: $28 $68

Call_048_77bd:
    db $fc                                        ; $77bd: $fc
    inc e                                         ; $77be: $1c
    or [hl]                                       ; $77bf: $b6
    ld [hl-], a                                   ; $77c0: $32
    sbc $7b                                       ; $77c1: $de $7b
    ld e, l                                       ; $77c3: $5d
    ld e, b                                       ; $77c4: $58
    ld b, c                                       ; $77c5: $41
    ld l, b                                       ; $77c6: $68
    ld c, [hl]                                    ; $77c7: $4e
    ld hl, sp-$6b                                 ; $77c8: $f8 $95
    call $b77d                                    ; $77ca: $cd $7d $b7
    inc [hl]                                      ; $77cd: $34
    rst $10                                       ; $77ce: $d7
    ld [hl], d                                    ; $77cf: $72
    and [hl]                                      ; $77d0: $a6
    ld [hl], l                                    ; $77d1: $75
    push de                                       ; $77d2: $d5
    sbc d                                         ; $77d3: $9a
    rrc a                                         ; $77d4: $cb $0f
    halt                                          ; $77d6: $76
    ld [hl-], a                                   ; $77d7: $32
    adc [hl]                                      ; $77d8: $8e
    rrca                                          ; $77d9: $0f
    rst $10                                       ; $77da: $d7
    db $e4                                        ; $77db: $e4
    ld c, [hl]                                    ; $77dc: $4e
    xor b                                         ; $77dd: $a8
    rlca                                          ; $77de: $07
    ret z                                         ; $77df: $c8

    inc c                                         ; $77e0: $0c
    inc c                                         ; $77e1: $0c
    ld d, e                                       ; $77e2: $53
    db $f4                                        ; $77e3: $f4
    add hl, hl                                    ; $77e4: $29
    ld [hl-], a                                   ; $77e5: $32
    add $ee                                       ; $77e6: $c6 $ee
    cp e                                          ; $77e8: $bb
    and l                                         ; $77e9: $a5
    add l                                         ; $77ea: $85
    push hl                                       ; $77eb: $e5
    db $fd                                        ; $77ec: $fd
    inc b                                         ; $77ed: $04
    push af                                       ; $77ee: $f5
    ld h, [hl]                                    ; $77ef: $66
    cp c                                          ; $77f0: $b9
    ret z                                         ; $77f1: $c8

    ld h, h                                       ; $77f2: $64
    ld [hl], e                                    ; $77f3: $73
    xor [hl]                                      ; $77f4: $ae
    push hl                                       ; $77f5: $e5
    jp c, Jump_048_5b9c                           ; $77f6: $da $9c $5b

    ld [hl], d                                    ; $77f9: $72
    push af                                       ; $77fa: $f5
    xor a                                         ; $77fb: $af
    call nz, $f104                                ; $77fc: $c4 $04 $f1
    ld e, [hl]                                    ; $77ff: $5e
    ld c, a                                       ; $7800: $4f
    inc d                                         ; $7801: $14
    push bc                                       ; $7802: $c5
    rlca                                          ; $7803: $07
    ld d, a                                       ; $7804: $57
    dec l                                         ; $7805: $2d
    rla                                           ; $7806: $17
    db $fd                                        ; $7807: $fd
    ld a, [c]                                     ; $7808: $f2
    add d                                         ; $7809: $82

jr_048_780a:
    ld l, $2c                                     ; $780a: $2e $2c
    rst $28                                       ; $780c: $ef
    add hl, hl                                    ; $780d: $29
    inc c                                         ; $780e: $0c
    ld b, b                                       ; $780f: $40
    ld c, a                                       ; $7810: $4f
    dec h                                         ; $7811: $25
    ret                                           ; $7812: $c9


    db $dd                                        ; $7813: $dd
    and l                                         ; $7814: $a5
    and l                                         ; $7815: $a5
    rla                                           ; $7816: $17
    ld a, [hl]                                    ; $7817: $7e
    push hl                                       ; $7818: $e5
    call c, Call_048_69ff                         ; $7819: $dc $ff $69
    ld l, a                                       ; $781c: $6f
    inc d                                         ; $781d: $14
    inc [hl]                                      ; $781e: $34
    db $dd                                        ; $781f: $dd
    sub d                                         ; $7820: $92
    xor e                                         ; $7821: $ab
    ld a, a                                       ; $7822: $7f
    dec h                                         ; $7823: $25
    ld h, $68                                     ; $7824: $26 $68
    ld e, [hl]                                    ; $7826: $5e
    db $ec                                        ; $7827: $ec
    adc l                                         ; $7828: $8d
    ld d, e                                       ; $7829: $53
    db $eb                                        ; $782a: $eb
    cp e                                          ; $782b: $bb
    set 2, d                                      ; $782c: $cb $d2
    add hl, de                                    ; $782e: $19
    sbc e                                         ; $782f: $9b
    db $dd                                        ; $7830: $dd
    inc sp                                        ; $7831: $33
    ld e, $19                                     ; $7832: $1e $19
    cp e                                          ; $7834: $bb
    or b                                          ; $7835: $b0
    add d                                         ; $7836: $82
    ret nc                                        ; $7837: $d0

    cp h                                          ; $7838: $bc
    ld e, b                                       ; $7839: $58
    ld h, h                                       ; $783a: $64
    ld b, [hl]                                    ; $783b: $46
    di                                            ; $783c: $f3
    add $53                                       ; $783d: $c6 $53

jr_048_783f:
    ld l, h                                       ; $783f: $6c
    add $33                                       ; $7840: $c6 $33
    cp l                                          ; $7842: $bd
    ld [hl], $c7                                  ; $7843: $36 $c7
    jr jr_048_783f                                ; $7845: $18 $f8

    and b                                         ; $7847: $a0
    ld c, e                                       ; $7848: $4b
    inc l                                         ; $7849: $2c
    cpl                                           ; $784a: $2f
    ld l, d                                       ; $784b: $6a
    ld l, c                                       ; $784c: $69
    rra                                           ; $784d: $1f
    jp c, $b6f9                                   ; $784e: $da $f9 $b6

    inc e                                         ; $7851: $1c
    and h                                         ; $7852: $a4
    dec hl                                        ; $7853: $2b
    db $e3                                        ; $7854: $e3
    inc bc                                        ; $7855: $03
    ld l, a                                       ; $7856: $6f
    ld h, e                                       ; $7857: $63
    rla                                           ; $7858: $17
    or [hl]                                       ; $7859: $b6
    ld [hl+], a                                   ; $785a: $22
    ld e, [hl]                                    ; $785b: $5e
    ld e, b                                       ; $785c: $58
    sbc [hl]                                      ; $785d: $9e
    add e                                         ; $785e: $83
    inc c                                         ; $785f: $0c
    xor d                                         ; $7860: $aa
    db $db                                        ; $7861: $db
    db $f4                                        ; $7862: $f4
    ld d, a                                       ; $7863: $57
    or $c6                                        ; $7864: $f6 $c6
    cpl                                           ; $7866: $2f
    rst $00                                       ; $7867: $c7
    rlca                                          ; $7868: $07
    cpl                                           ; $7869: $2f
    ld h, c                                       ; $786a: $61
    inc hl                                        ; $786b: $23
    ld c, e                                       ; $786c: $4b
    rra                                           ; $786d: $1f
    rst $28                                       ; $786e: $ef
    or d                                          ; $786f: $b2
    inc a                                         ; $7870: $3c
    ld d, h                                       ; $7871: $54
    ei                                            ; $7872: $fb
    and d                                         ; $7873: $a2
    add c                                         ; $7874: $81
    ld a, [hl+]                                   ; $7875: $2a
    cp $ba                                        ; $7876: $fe $ba
    cp c                                          ; $7878: $b9
    cpl                                           ; $7879: $2f
    ld a, [de]                                    ; $787a: $1a
    ld [hl], $b2                                  ; $787b: $36 $b2
    db $f4                                        ; $787d: $f4
    dec bc                                        ; $787e: $0b
    call $af34                                    ; $787f: $cd $34 $af
    call Call_000_3201                            ; $7882: $cd $01 $32
    ld l, b                                       ; $7885: $68
    ld c, $72                                     ; $7886: $0e $72
    cp h                                          ; $7888: $bc
    ld l, e                                       ; $7889: $6b
    ld [hl], d                                    ; $788a: $72
    ld h, c                                       ; $788b: $61
    add l                                         ; $788c: $85
    sbc l                                         ; $788d: $9d
    xor e                                         ; $788e: $ab
    ld b, l                                       ; $788f: $45
    ld l, d                                       ; $7890: $6a
    ld l, l                                       ; $7891: $6d
    ld c, [hl]                                    ; $7892: $4e
    xor b                                         ; $7893: $a8

jr_048_7894:
    cp $89                                        ; $7894: $fe $89
    add hl, bc                                    ; $7896: $09
    and $20                                       ; $7897: $e6 $20
    add e                                         ; $7899: $83
    ld [$45ff], a                                 ; $789a: $ea $ff $45
    ld a, [hl]                                    ; $789d: $7e
    ccf                                           ; $789e: $3f
    ld e, d                                       ; $789f: $5a
    ld e, b                                       ; $78a0: $58
    ld e, $97                                     ; $78a1: $1e $97
    inc e                                         ; $78a3: $1c
    jr nc, jr_048_7894                            ; $78a4: $30 $ee

    inc h                                         ; $78a6: $24
    ld h, c                                       ; $78a7: $61
    nop                                           ; $78a8: $00
    sbc d                                         ; $78a9: $9a
    pop af                                        ; $78aa: $f1
    sbc [hl]                                      ; $78ab: $9e
    ret                                           ; $78ac: $c9


    add c                                         ; $78ad: $81
    ld [hl], $07                                  ; $78ae: $36 $07
    jp z, Jump_048_5cbf                           ; $78b0: $ca $bf $5c

    ld a, [de]                                    ; $78b3: $1a
    and $7c                                       ; $78b4: $e6 $7c
    daa                                           ; $78b6: $27
    and b                                         ; $78b7: $a0
    and b                                         ; $78b8: $a0
    pop af                                        ; $78b9: $f1
    ld [hl], e                                    ; $78ba: $73
    ret c                                         ; $78bb: $d8

    jp z, Jump_048_5699                           ; $78bc: $ca $99 $56

    ld b, c                                       ; $78bf: $41
    dec b                                         ; $78c0: $05
    adc l                                         ; $78c1: $8d
    dec d                                         ; $78c2: $15

Jump_048_78c3:
    ld [hl], c                                    ; $78c3: $71
    ld a, h                                       ; $78c4: $7c
    nop                                           ; $78c5: $00
    cpl                                           ; $78c6: $2f
    rr e                                          ; $78c7: $cb $1b

Jump_048_78c9:
    ld l, $f6                                     ; $78c9: $2e $f6
    db $ec                                        ; $78cb: $ec
    add a                                         ; $78cc: $87

Call_048_78cd:
    and b                                         ; $78cd: $a0
    ld e, [hl]                                    ; $78ce: $5e
    inc l                                         ; $78cf: $2c
    add sp, -$3e                                  ; $78d0: $e8 $c2
    ld a, [bc]                                    ; $78d2: $0a
    cp h                                          ; $78d3: $bc
    and b                                         ; $78d4: $a0
    add e                                         ; $78d5: $83
    ld [hl], h                                    ; $78d6: $74
    rst $08                                       ; $78d7: $cf
    ld e, b                                       ; $78d8: $58
    ld [c], a                                     ; $78d9: $e2
    and b                                         ; $78da: $a0
    inc bc                                        ; $78db: $03
    dec c                                         ; $78dc: $0d
    call Call_048_76ef                            ; $78dd: $cd $ef $76
    sub l                                         ; $78e0: $95
    adc [hl]                                      ; $78e1: $8e
    add sp, -$72                                  ; $78e2: $e8 $8e

Call_048_78e4:
    ld a, b                                       ; $78e4: $78
    sub a                                         ; $78e5: $97
    cp a                                          ; $78e6: $bf
    sub e                                         ; $78e7: $93
    sub [hl]                                      ; $78e8: $96
    ld b, e                                       ; $78e9: $43
    add hl, sp                                    ; $78ea: $39
    rst $10                                       ; $78eb: $d7
    ld [hl], d                                    ; $78ec: $72
    ld e, $3b                                     ; $78ed: $1e $3b
    or a                                          ; $78ef: $b7
    db $e4                                        ; $78f0: $e4
    ld [$895f], a                                 ; $78f1: $ea $5f $89
    add hl, bc                                    ; $78f4: $09
    ld h, [hl]                                    ; $78f5: $66
    ld [hl+], a                                   ; $78f6: $22
    ld sp, hl                                     ; $78f7: $f9
    and e                                         ; $78f8: $a3
    and $95                                       ; $78f9: $e6 $95
    inc bc                                        ; $78fb: $03
    sub a                                         ; $78fc: $97
    xor l                                         ; $78fd: $ad
    adc b                                         ; $78fe: $88
    rla                                           ; $78ff: $17
    sub [hl]                                      ; $7900: $96
    daa                                           ; $7901: $27
    ld [hl], l                                    ; $7902: $75
    ld sp, $96bb                                  ; $7903: $31 $bb $96
    inc d                                         ; $7906: $14
    scf                                           ; $7907: $37
    jr nc, jr_048_792d                            ; $7908: $30 $23

    ld c, $3a                                     ; $790a: $0e $3a
    call z, Call_048_4ef9                         ; $790c: $cc $f9 $4e
    ld b, b                                       ; $790f: $40
    ld b, c                                       ; $7910: $41
    db $e3                                        ; $7911: $e3
    rst $20                                       ; $7912: $e7

jr_048_7913:
    or b                                          ; $7913: $b0
    sub l                                         ; $7914: $95
    inc bc                                        ; $7915: $03
    sub l                                         ; $7916: $95
    sub l                                         ; $7917: $95
    call Call_000_072b                            ; $7918: $cd $2b $07
    rst $10                                       ; $791b: $d7
    db $ed                                        ; $791c: $ed
    ld h, d                                       ; $791d: $62
    ld h, c                                       ; $791e: $61
    ld a, c                                       ; $791f: $79

Call_048_7920:
    ld d, d                                       ; $7920: $52
    rla                                           ; $7921: $17
    or e                                          ; $7922: $b3
    ld [hl], c                                    ; $7923: $71
    inc e                                         ; $7924: $1c
    xor a                                         ; $7925: $af
    pop hl                                        ; $7926: $e1
    push bc                                       ; $7927: $c5
    ld [bc], a                                    ; $7928: $02
    sbc e                                         ; $7929: $9b
    scf                                           ; $792a: $37
    ld e, [hl]                                    ; $792b: $5e
    ld e, b                                       ; $792c: $58

jr_048_792d:
    ld h, c                                       ; $792d: $61
    jr z, jr_048_7913                             ; $792e: $28 $e3

    ld e, l                                       ; $7930: $5d
    sub [hl]                                      ; $7931: $96
    daa                                           ; $7932: $27
    db $fc                                        ; $7933: $fc
    jp z, $e379                                   ; $7934: $ca $79 $e3

    and c                                         ; $7937: $a1
    ld e, h                                       ; $7938: $5c
    db $f4                                        ; $7939: $f4
    rrc e                                         ; $793a: $cb $0b
    dec hl                                        ; $793c: $2b
    ld [$a1cd], sp                                ; $793d: $08 $cd $a1
    ld e, d                                       ; $7940: $5a
    ld l, c                                       ; $7941: $69
    adc c                                         ; $7942: $89
    push hl                                       ; $7943: $e5
    ld a, b                                       ; $7944: $78
    sub a                                         ; $7945: $97
    add $2a                                       ; $7946: $c6 $2a
    ld hl, sp+$15                                 ; $7948: $f8 $15
    ld a, a                                       ; $794a: $7f
    nop                                           ; $794b: $00
    rst $10                                       ; $794c: $d7
    db $e4                                        ; $794d: $e4
    jp nz, Jump_000_0b0a                          ; $794e: $c2 $0a $0b

    set 7, e                                      ; $7951: $cb $fb
    ld e, a                                       ; $7953: $5f
    ld l, $b1                                     ; $7954: $2e $b1

jr_048_7956:
    inc e                                         ; $7956: $1c
    rst $28                                       ; $7957: $ef
    adc l                                         ; $7958: $8d
    ld h, [hl]                                    ; $7959: $66
    add h                                         ; $795a: $84
    xor c                                         ; $795b: $a9
    cp b                                          ; $795c: $b8
    ld c, e                                       ; $795d: $4b
    inc l                                         ; $795e: $2c
    rst $28                                       ; $795f: $ef
    ld b, e                                       ; $7960: $43
    di                                            ; $7961: $f3
    ret z                                         ; $7962: $c8

    adc e                                         ; $7963: $8b
    ld a, [hl]                                    ; $7964: $7e
    call nc, Call_048_78e4                        ; $7965: $d4 $e4 $78
    ld l, a                                       ; $7968: $6f
    sbc e                                         ; $7969: $9b
    pop de                                        ; $796a: $d1
    and h                                         ; $796b: $a4
    push hl                                       ; $796c: $e5
    jp nz, $cef2                                  ; $796d: $c2 $f2 $ce

    jr jr_048_7956                                ; $7970: $18 $e4

    sub l                                         ; $7972: $95
    cp l                                          ; $7973: $bd
    adc b                                         ; $7974: $88
    ld c, d                                       ; $7975: $4a
    pop bc                                        ; $7976: $c1
    ld b, e                                       ; $7977: $43
    ld l, h                                       ; $7978: $6c
    adc $1b                                       ; $7979: $ce $1b
    xor a                                         ; $797b: $af
    call $a55d                                    ; $797c: $cd $5d $a5
    ld a, [hl-]                                   ; $797f: $3a
    rst $20                                       ; $7980: $e7
    ld [$1695], a                                 ; $7981: $ea $95 $16
    sub l                                         ; $7984: $95
    ld [hl], a                                    ; $7985: $77
    cp [hl]                                       ; $7986: $be
    dec l                                         ; $7987: $2d
    sub a                                         ; $7988: $97
    ld [hl], l                                    ; $7989: $75
    call nc, $cf30                                ; $798a: $d4 $30 $cf
    ret z                                         ; $798d: $c8

    ld [hl], c                                    ; $798e: $71
    inc e                                         ; $798f: $1c
    rra                                           ; $7990: $1f
    rst $10                                       ; $7991: $d7
    db $e4                                        ; $7992: $e4
    jp nz, $f30a                                  ; $7993: $c2 $0a $f3

    db $dd                                        ; $7996: $dd
    ld e, e                                       ; $7997: $5b
    ld a, [$ce57]                                 ; $7998: $fa $57 $ce
    or l                                          ; $799b: $b5
    sbc h                                         ; $799c: $9c
    rst $28                                       ; $799d: $ef
    xor [hl]                                      ; $799e: $ae
    sub d                                         ; $799f: $92
    add e                                         ; $79a0: $83
    ld d, b                                       ; $79a1: $50
    sub $51                                       ; $79a2: $d6 $51
    pop af                                        ; $79a4: $f1
    ld e, [hl]                                    ; $79a5: $5e
    ld c, a                                       ; $79a6: $4f
    inc d                                         ; $79a7: $14
    push bc                                       ; $79a8: $c5
    ld a, e                                       ; $79a9: $7b
    add l                                         ; $79aa: $85
    cp [hl]                                       ; $79ab: $be
    xor b                                         ; $79ac: $a8
    ld c, d                                       ; $79ad: $4a
    ld a, l                                       ; $79ae: $7d
    jp c, $84f3                                   ; $79af: $da $f3 $84

    add hl, hl                                    ; $79b2: $29
    xor e                                         ; $79b3: $ab
    ld [hl], a                                    ; $79b4: $77
    ld b, d                                       ; $79b5: $42
    dec a                                         ; $79b6: $3d
    ld l, a                                       ; $79b7: $6f
    inc a                                         ; $79b8: $3c
    sub h                                         ; $79b9: $94
    ld l, e                                       ; $79ba: $6b
    ld [hl], e                                    ; $79bb: $73
    ld e, h                                       ; $79bc: $5c
    ret nc                                        ; $79bd: $d0

    ld [hl], h                                    ; $79be: $74
    ld c, e                                       ; $79bf: $4b
    xor [hl]                                      ; $79c0: $ae
    cp $95                                        ; $79c1: $fe $95
    sbc b                                         ; $79c3: $98
    ld h, b                                       ; $79c4: $60
    ld l, $a6                                     ; $79c5: $2e $a6
    adc a                                         ; $79c7: $8f
    rst $30                                       ; $79c8: $f7
    add $2f                                       ; $79c9: $c6 $2f
    rst $00                                       ; $79cb: $c7
    ld a, e                                       ; $79cc: $7b
    sbc $c9                                       ; $79cd: $de $c9
    dec b                                         ; $79cf: $05
    ld e, l                                       ; $79d0: $5d
    call nc, $d585                                ; $79d1: $d4 $85 $d5
    ld d, b                                       ; $79d4: $50
    di                                            ; $79d5: $f3
    jp z, $9701                                   ; $79d6: $ca $01 $97

    push hl                                       ; $79d9: $e5
    and c                                         ; $79da: $a1
    ld e, d                                       ; $79db: $5a
    ld h, d                                       ; $79dc: $62
    ld a, c                                       ; $79dd: $79
    ld h, c                                       ; $79de: $61
    ld [hl], l                                    ; $79df: $75
    inc hl                                        ; $79e0: $23
    inc sp                                        ; $79e1: $33
    dec a                                         ; $79e2: $3d
    ld c, b                                       ; $79e3: $48
    dec sp                                        ; $79e4: $3b
    xor b                                         ; $79e5: $a8
    add [hl]                                      ; $79e6: $86
    cp c                                          ; $79e7: $b9
    or b                                          ; $79e8: $b0
    cp h                                          ; $79e9: $bc
    xor e                                         ; $79ea: $ab
    ld d, h                                       ; $79eb: $54
    rst $20                                       ; $79ec: $e7
    ld e, h                                       ; $79ed: $5c
    dec l                                         ; $79ee: $2d
    sbc l                                         ; $79ef: $9d
    db $f4                                        ; $79f0: $f4
    push de                                       ; $79f1: $d5
    ld e, a                                       ; $79f2: $5f
    sbc d                                         ; $79f3: $9a
    jp hl                                         ; $79f4: $e9


    ld a, b                                       ; $79f5: $78
    rst $10                                       ; $79f6: $d7
    db $e4                                        ; $79f7: $e4
    adc $06                                       ; $79f8: $ce $06
    and $8d                                       ; $79fa: $e6 $8d
    rst $30                                       ; $79fc: $f7
    db $ec                                        ; $79fd: $ec
    add a                                         ; $79fe: $87
    and b                                         ; $79ff: $a0
    xor [hl]                                      ; $7a00: $ae
    or h                                          ; $7a01: $b4
    inc l                                         ; $7a02: $2c
    cpl                                           ; $7a03: $2f
    ccf                                           ; $7a04: $3f
    jr jr_048_7a2d                                ; $7a05: $18 $26

    ret nz                                        ; $7a07: $c0

    inc b                                         ; $7a08: $04
    ld l, e                                       ; $7a09: $6b
    xor [hl]                                      ; $7a0a: $ae
    or h                                          ; $7a0b: $b4
    ld d, e                                       ; $7a0c: $53
    ld c, e                                       ; $7a0d: $4b
    ld [hl], e                                    ; $7a0e: $73
    sub b                                         ; $7a0f: $90
    push hl                                       ; $7a10: $e5
    ret                                           ; $7a11: $c9


    and d                                         ; $7a12: $a2
    ld hl, sp+$00                                 ; $7a13: $f8 $00
    rst $28                                       ; $7a15: $ef
    db $fd                                        ; $7a16: $fd
    jp z, Jump_000_1d05                           ; $7a17: $ca $05 $1d

    sub [hl]                                      ; $7a1a: $96
    push de                                       ; $7a1b: $d5
    cp b                                          ; $7a1c: $b8
    db $d3                                        ; $7a1d: $d3
    dec a                                         ; $7a1e: $3d
    scf                                           ; $7a1f: $37
    xor a                                         ; $7a20: $af
    inc e                                         ; $7a21: $1c
    ld l, a                                       ; $7a22: $6f
    sbc e                                         ; $7a23: $9b
    pop de                                        ; $7a24: $d1
    ld d, b                                       ; $7a25: $50
    dec l                                         ; $7a26: $2d
    inc l                                         ; $7a27: $2c
    ld c, a                                       ; $7a28: $4f
    ld hl, sp-$6b                                 ; $7a29: $f8 $95
    rla                                           ; $7a2b: $17
    ld a, e                                       ; $7a2c: $7b

jr_048_7a2d:
    or $43                                        ; $7a2d: $f6 $43
    ld d, b                                       ; $7a2f: $50
    xor a                                         ; $7a30: $af
    inc e                                         ; $7a31: $1c
    cpl                                           ; $7a32: $2f
    db $f4                                        ; $7a33: $f4
    call c, $aa1c                                 ; $7a34: $dc $1c $aa
    sbc l                                         ; $7a37: $9d
    rst $38                                       ; $7a38: $ff
    sub h                                         ; $7a39: $94
    add hl, de                                    ; $7a3a: $19
    add $7b                                       ; $7a3b: $c6 $7b
    and e                                         ; $7a3d: $a3
    cp d                                          ; $7a3e: $ba
    ld l, $2a                                     ; $7a3f: $2e $2a
    db $ec                                        ; $7a41: $ec
    inc h                                         ; $7a42: $24
    ld b, $b2                                     ; $7a43: $06 $b2
    ld a, c                                       ; $7a45: $79
    ld sp, $3c6f                                  ; $7a46: $31 $6f $3c
    ld d, h                                       ; $7a49: $54
    add e                                         ; $7a4a: $83
    ld c, h                                       ; $7a4b: $4c
    ld c, l                                       ; $7a4c: $4d
    rst $10                                       ; $7a4d: $d7
    sub c                                         ; $7a4e: $91
    pop af                                        ; $7a4f: $f1
    ld bc, $5897                                  ; $7a50: $01 $97 $58
    cp d                                          ; $7a53: $ba
    ret c                                         ; $7a54: $d8

    and l                                         ; $7a55: $a5
    ld de, $b989                                  ; $7a56: $11 $89 $b9
    sbc b                                         ; $7a59: $98
    add b                                         ; $7a5a: $80
    ld b, c                                       ; $7a5b: $41
    jp c, Jump_048_7fce                           ; $7a5c: $da $ce $7f

    ldh [$d7], a                                  ; $7a5f: $e0 $d7
    rst $08                                       ; $7a61: $cf
    or h                                          ; $7a62: $b4
    ld e, d                                       ; $7a63: $5a
    ld h, d                                       ; $7a64: $62
    sbc l                                         ; $7a65: $9d
    ld d, e                                       ; $7a66: $53
    ld a, h                                       ; $7a67: $7c
    nop                                           ; $7a68: $00
    ld d, a                                       ; $7a69: $57
    dec l                                         ; $7a6a: $2d
    push hl                                       ; $7a6b: $e5
    sbc h                                         ; $7a6c: $9c
    sbc l                                         ; $7a6d: $9d
    xor d                                         ; $7a6e: $aa
    db $e3                                        ; $7a6f: $e3
    cp l                                          ; $7a70: $bd
    pop af                                        ; $7a71: $f1
    set 6, c                                      ; $7a72: $cb $f1
    ld bc, $7def                                  ; $7a74: $01 $ef $7d
    db $d3                                        ; $7a77: $d3
    ld l, d                                       ; $7a78: $6a
    jr z, jr_048_7ae2                             ; $7a79: $28 $67

    ld a, d                                       ; $7a7b: $7a
    rst $20                                       ; $7a7c: $e7
    ld [c], a                                     ; $7a7d: $e2
    push bc                                       ; $7a7e: $c5
    ld l, [hl]                                    ; $7a7f: $6e
    inc de                                        ; $7a80: $13
    jr nc, jr_048_7acb                            ; $7a81: $30 $48

    cp e                                          ; $7a83: $bb
    dec l                                         ; $7a84: $2d
    ld a, $00                                     ; $7a85: $3e $00
    sub a                                         ; $7a87: $97
    and [hl]                                      ; $7a88: $a6
    push af                                       ; $7a89: $f5
    cp a                                          ; $7a8a: $bf
    ret c                                         ; $7a8b: $d8

    and l                                         ; $7a8c: $a5
    ld de, $8989                                  ; $7a8d: $11 $89 $89
    rst $30                                       ; $7a90: $f7
    sub $af                                       ; $7a91: $d6 $af
    ld e, [hl]                                    ; $7a93: $5e
    ret nc                                        ; $7a94: $d0

    dec b                                         ; $7a95: $05
    sbc l                                         ; $7a96: $9d
    ld d, b                                       ; $7a97: $50
    ld l, $5d                                     ; $7a98: $2e $5d
    add hl, sp                                    ; $7a9a: $39
    nop                                           ; $7a9b: $00
    rst $10                                       ; $7a9c: $d7
    dec l                                         ; $7a9d: $2d
    sbc $eb                                       ; $7a9e: $de $eb
    jp hl                                         ; $7aa0: $e9


    adc b                                         ; $7aa1: $88
    ld [c], a                                     ; $7aa2: $e2
    cp l                                          ; $7aa3: $bd
    ld l, b                                       ; $7aa4: $68
    ld b, [hl]                                    ; $7aa5: $46
    rrc a                                         ; $7aa6: $cb $0f
    sub [hl]                                      ; $7aa8: $96

Call_048_7aa9:
    ld e, b                                       ; $7aa9: $58
    ld e, [hl]                                    ; $7aaa: $5e
    ld e, b                                       ; $7aab: $58
    db $dd                                        ; $7aac: $dd
    ret z                                         ; $7aad: $c8

    ld c, h                                       ; $7aae: $4c
    rst $00                                       ; $7aaf: $c7
    rlca                                          ; $7ab0: $07
    ld c, a                                       ; $7ab1: $4f
    add [hl]                                      ; $7ab2: $86
    rla                                           ; $7ab3: $17
    di                                            ; $7ab4: $f3
    add $43                                       ; $7ab5: $c6 $43
    dec [hl]                                      ; $7ab7: $35
    and c                                         ; $7ab8: $a1
    ld e, h                                       ; $7ab9: $5c
    adc d                                         ; $7aba: $8a
    rst $30                                       ; $7abb: $f7
    ld c, h                                       ; $7abc: $4c
    ld c, $e5                                     ; $7abd: $0e $e5
    ld a, h                                       ; $7abf: $7c
    ld d, e                                       ; $7ac0: $53
    adc $1b                                       ; $7ac1: $ce $1b
    rrca                                          ; $7ac3: $0f
    push hl                                       ; $7ac4: $e5
    ld a, h                                       ; $7ac5: $7c
    rst $08                                       ; $7ac6: $cf
    sbc l                                         ; $7ac7: $9d
    add d                                         ; $7ac8: $82
    xor b                                         ; $7ac9: $a8
    adc [hl]                                      ; $7aca: $8e

jr_048_7acb:
    call c, Call_048_7aa9                         ; $7acb: $dc $a9 $7a
    jp nc, Jump_000_3f72                          ; $7ace: $d2 $72 $3f

    add hl, sp                                    ; $7ad1: $39
    db $fc                                        ; $7ad2: $fc
    adc [hl]                                      ; $7ad3: $8e
    ld l, a                                       ; $7ad4: $6f
    add $07                                       ; $7ad5: $c6 $07
    rst $10                                       ; $7ad7: $d7
    db $e4                                        ; $7ad8: $e4
    jp nz, Jump_000_0b0a                          ; $7ad9: $c2 $0a $0b

    rl e                                          ; $7adc: $cb $13
    ld a, [hl]                                    ; $7ade: $7e
    push hl                                       ; $7adf: $e5
    and d                                         ; $7ae0: $a2
    ld a, [c]                                     ; $7ae1: $f2

jr_048_7ae2:
    ld a, h                                       ; $7ae2: $7c
    rst $00                                       ; $7ae3: $c7
    dec b                                         ; $7ae4: $05
    ld c, l                                       ; $7ae5: $4d
    or a                                          ; $7ae6: $b7
    db $e4                                        ; $7ae7: $e4
    ld [$895f], a                                 ; $7ae8: $ea $5f $89
    add hl, bc                                    ; $7aeb: $09
    sbc d                                         ; $7aec: $9a
    inc bc                                        ; $7aed: $03
    ld [hl], l                                    ; $7aee: $75
    ld a, a                                       ; $7aef: $7f
    ld a, [$7c66]                                 ; $7af0: $fa $66 $7c
    nop                                           ; $7af3: $00
    ld l, a                                       ; $7af4: $6f
    sbc e                                         ; $7af5: $9b
    pop de                                        ; $7af6: $d1
    or h                                          ; $7af7: $b4
    add c                                         ; $7af8: $81
    add l                                         ; $7af9: $85
    push hl                                       ; $7afa: $e5
    ld h, c                                       ; $7afb: $61
    ld l, $6c                                     ; $7afc: $2e $6c
    ld d, h                                       ; $7afe: $54
    xor l                                         ; $7aff: $ad
    jp nc, $ba2c                                  ; $7b00: $d2 $2c $ba

    ld [hl], d                                    ; $7b03: $72
    nop                                           ; $7b04: $00
    rst $08                                       ; $7b05: $cf
    ld a, [hl]                                    ; $7b06: $7e
    ld [$42ea], sp                                ; $7b07: $08 $ea $42
    di                                            ; $7b0a: $f3
    dec bc                                        ; $7b0b: $0b
    bit 6, e                                      ; $7b0c: $cb $73
    ld c, e                                       ; $7b0e: $4b
    adc d                                         ; $7b0f: $8a
    ccf                                           ; $7b10: $3f
    call nz, Call_048_5cc3                        ; $7b11: $c4 $c3 $5c
    ld e, b                                       ; $7b14: $58
    sbc $55                                       ; $7b15: $de $55
    xor d                                         ; $7b17: $aa
    ld [hl], e                                    ; $7b18: $73
    xor [hl]                                      ; $7b19: $ae
    sub [hl]                                      ; $7b1a: $96
    ld c, [hl]                                    ; $7b1b: $4e
    ld a, [$2fea]                                 ; $7b1c: $fa $ea $2f
    call Call_048_7c74                            ; $7b1f: $cd $74 $7c
    nop                                           ; $7b22: $00
    rst $10                                       ; $7b23: $d7
    db $e4                                        ; $7b24: $e4
    ld b, d                                       ; $7b25: $42
    di                                            ; $7b26: $f3
    sub e                                         ; $7b27: $93
    ld c, [hl]                                    ; $7b28: $4e
    ld h, [hl]                                    ; $7b29: $66
    ld [hl], e                                    ; $7b2a: $73

Call_048_7b2b:
    and a                                         ; $7b2b: $a7
    ld [hl], d                                    ; $7b2c: $72
    ld [hl], e                                    ; $7b2d: $73
    sbc $78                                       ; $7b2e: $de $78
    ld h, c                                       ; $7b30: $61
    ld a, c                                       ; $7b31: $79
    rst $08                                       ; $7b32: $cf
    ld a, [hl]                                    ; $7b33: $7e
    ld [$4eea], sp                                ; $7b34: $08 $ea $4e
    and [hl]                                      ; $7b37: $a6
    ld [c], a                                     ; $7b38: $e2
    db $dd                                        ; $7b39: $dd
    rst $30                                       ; $7b3a: $f7
    ldh [rNR41], a                                ; $7b3b: $e0 $20
    daa                                           ; $7b3d: $27
    cp c                                          ; $7b3e: $b9
    add hl, sp                                    ; $7b3f: $39
    rst $30                                       ; $7b40: $f7
    ld a, a                                       ; $7b41: $7f
    jp c, $8473                                   ; $7b42: $da $73 $84

    ld [hl+], a                                   ; $7b45: $22
    pop de                                        ; $7b46: $d1
    ld l, a                                       ; $7b47: $6f
    ld a, [$fb4f]                                 ; $7b48: $fa $4f $fb
    sub c                                         ; $7b4b: $91
    scf                                           ; $7b4c: $37
    ld e, [hl]                                    ; $7b4d: $5e
    ret nc                                        ; $7b4e: $d0

    add c                                         ; $7b4f: $81
    ld a, [hl+]                                   ; $7b50: $2a
    cp $ba                                        ; $7b51: $fe $ba
    add hl, sp                                    ; $7b53: $39
    ld bc, $8d05                                  ; $7b54: $01 $05 $8d
    sbc a                                         ; $7b57: $9f
    jp Jump_000_0a56                              ; $7b58: $c3 $56 $0a


    dec a                                         ; $7b5b: $3d
    inc hl                                        ; $7b5c: $23
    cpl                                           ; $7b5d: $2f
    xor h                                         ; $7b5e: $ac
    ret nz                                        ; $7b5f: $c0

    inc bc                                        ; $7b60: $03
    ld [hl], l                                    ; $7b61: $75
    ld a, a                                       ; $7b62: $7f
    ld a, [$9ae6]                                 ; $7b63: $fa $e6 $9a
    db $e3                                        ; $7b66: $e3
    sub d                                         ; $7b67: $92
    inc bc                                        ; $7b68: $03
    ld b, b                                       ; $7b69: $40
    dec b                                         ; $7b6a: $05
    ld [hl-], a                                   ; $7b6b: $32
    ld a, b                                       ; $7b6c: $78
    ret z                                         ; $7b6d: $c8

    pop af                                        ; $7b6e: $f1
    sbc [hl]                                      ; $7b6f: $9e
    or e                                          ; $7b70: $b3
    and l                                         ; $7b71: $a5
    or e                                          ; $7b72: $b3
    inc [hl]                                      ; $7b73: $34
    and e                                         ; $7b74: $a3
    dec b                                         ; $7b75: $05
    sbc l                                         ; $7b76: $9d
    xor [hl]                                      ; $7b77: $ae
    jp c, $a55b                                   ; $7b78: $da $5b $a5

    ld d, e                                       ; $7b7b: $53
    ld c, e                                       ; $7b7c: $4b
    db $e3                                        ; $7b7d: $e3
    add d                                         ; $7b7e: $82
    and $7c                                       ; $7b7f: $e6 $7c
    rst $30                                       ; $7b81: $f7
    sbc $c9                                       ; $7b82: $de $c9
    adc b                                         ; $7b84: $88
    cp e                                          ; $7b85: $bb
    rst $20                                       ; $7b86: $e7
    sbc l                                         ; $7b87: $9d
    ld d, h                                       ; $7b88: $54
    call c, $8fdc                                 ; $7b89: $dc $dc $8f
    ld d, $74                                     ; $7b8c: $16 $74
    rra                                           ; $7b8e: $1f
    ld a, [c]                                     ; $7b8f: $f2
    ld h, h                                       ; $7b90: $64
    ldh a, [$90]                                  ; $7b91: $f0 $90
    ld h, a                                       ; $7b93: $67
    and d                                         ; $7b94: $a2
    ld [hl], c                                    ; $7b95: $71
    rla                                           ; $7b96: $17
    sbc c                                         ; $7b97: $99
    ld l, h                                       ; $7b98: $6c
    add $07                                       ; $7b99: $c6 $07
    ld l, a                                       ; $7b9b: $6f
    db $fd                                        ; $7b9c: $fd
    ld [$5d05], a                                 ; $7b9d: $ea $05 $5d
    ret nc                                        ; $7ba0: $d0

    add hl, bc                                    ; $7ba1: $09
    push hl                                       ; $7ba2: $e5
    jp nc, Jump_000_2ec5                          ; $7ba3: $d2 $c5 $2e

    adc l                                         ; $7ba6: $8d
    ld c, b                                       ; $7ba7: $48
    call z, $0395                                 ; $7ba8: $cc $95 $03
    rst $10                                       ; $7bab: $d7
    db $ed                                        ; $7bac: $ed
    ld h, d                                       ; $7bad: $62
    jr z, jr_048_7bc7                             ; $7bae: $28 $17

    ld d, [hl]                                    ; $7bb0: $56
    sbc b                                         ; $7bb1: $98
    rst $28                                       ; $7bb2: $ef
    cp b                                          ; $7bb3: $b8
    and b                                         ; $7bb4: $a0
    jp hl                                         ; $7bb5: $e9


    sub [hl]                                      ; $7bb6: $96
    ld e, h                                       ; $7bb7: $5c
    db $fd                                        ; $7bb8: $fd
    dec hl                                        ; $7bb9: $2b
    ld sp, $40c1                                  ; $7bba: $31 $c1 $40
    db $dd                                        ; $7bbd: $dd
    sbc a                                         ; $7bbe: $9f
    cp [hl]                                       ; $7bbf: $be
    add hl, de                                    ; $7bc0: $19
    rra                                           ; $7bc1: $1f
    rst $08                                       ; $7bc2: $cf
    db $fd                                        ; $7bc3: $fd
    ld a, [$7a81]                                 ; $7bc4: $fa $81 $7a

jr_048_7bc7:
    or e                                          ; $7bc7: $b3
    cp h                                          ; $7bc8: $bc
    ret c                                         ; $7bc9: $d8

    and l                                         ; $7bca: $a5
    ld de, $8989                                  ; $7bcb: $11 $89 $89
    rst $30                                       ; $7bce: $f7
    and d                                         ; $7bcf: $a2
    ld a, c                                       ; $7bd0: $79
    adc e                                         ; $7bd1: $8b
    cp d                                          ; $7bd2: $ba
    rst $10                                       ; $7bd3: $d7
    ld a, [hl]                                    ; $7bd4: $7e
    inc d                                         ; $7bd5: $14
    ld d, l                                       ; $7bd6: $55
    ld l, e                                       ; $7bd7: $6b
    db $db                                        ; $7bd8: $db
    reti                                          ; $7bd9: $d9


    db $f4                                        ; $7bda: $f4
    inc b                                         ; $7bdb: $04

Jump_048_7bdc:
    adc l                                         ; $7bdc: $8d
    pop bc                                        ; $7bdd: $c1
    adc $18                                       ; $7bde: $ce $18
    db $e4                                        ; $7be0: $e4
    cp h                                          ; $7be1: $bc
    pop af                                        ; $7be2: $f1
    cp h                                          ; $7be3: $bc
    pop af                                        ; $7be4: $f1
    add h                                         ; $7be5: $84
    ld e, a                                       ; $7be6: $5f
    cp c                                          ; $7be7: $b9
    ld d, e                                       ; $7be8: $53
    ld c, e                                       ; $7be9: $4b
    ei                                            ; $7bea: $fb
    ret nc                                        ; $7beb: $d0

    ld a, h                                       ; $7bec: $7c
    rlca                                          ; $7bed: $07
    ld l, c                                       ; $7bee: $69
    ld c, e                                       ; $7bef: $4b
    add hl, sp                                    ; $7bf0: $39
    push bc                                       ; $7bf1: $c5
    ld h, [hl]                                    ; $7bf2: $66
    inc e                                         ; $7bf3: $1c
    rra                                           ; $7bf4: $1f
    sub a                                         ; $7bf5: $97
    ld b, [hl]                                    ; $7bf6: $46
    inc h                                         ; $7bf7: $24
    ld b, [hl]                                    ; $7bf8: $46
    db $fc                                        ; $7bf9: $fc
    sbc [hl]                                      ; $7bfa: $9e
    ld l, e                                       ; $7bfb: $6b
    ld [hl], e                                    ; $7bfc: $73
    ldh [$2e], a                                  ; $7bfd: $e0 $2e
    ld [hl], b                                    ; $7bff: $70
    rla                                           ; $7c00: $17
    jr z, @+$01                                   ; $7c01: $28 $ff

    ld [hl], d                                    ; $7c03: $72
    ld l, c                                       ; $7c04: $69
    ld d, c                                       ; $7c05: $51
    ld c, e                                       ; $7c06: $4b
    dec sp                                        ; $7c07: $3b
    ld h, e                                       ; $7c08: $63
    add a                                         ; $7c09: $87
    ld [hl-], a                                   ; $7c0a: $32
    ld a, $00                                     ; $7c0b: $3e $00
    rst $10                                       ; $7c0d: $d7
    db $e4                                        ; $7c0e: $e4
    jp nz, Jump_000_0b0a                          ; $7c0f: $c2 $0a $0b

    rrc e                                         ; $7c12: $cb $0b
    inc e                                         ; $7c14: $1c
    ld d, h                                       ; $7c15: $54
    call c, $bf09                                 ; $7c16: $dc $09 $bf
    ld [hl], d                                    ; $7c19: $72
    ld d, c                                       ; $7c1a: $51
    ld a, c                                       ; $7c1b: $79
    cp [hl]                                       ; $7c1c: $be
    dec bc                                        ; $7c1d: $0b
    inc e                                         ; $7c1e: $1c
    ld d, h                                       ; $7c1f: $54
    call c, Call_048_4171                         ; $7c20: $dc $71 $41
    db $d3                                        ; $7c23: $d3
    dec l                                         ; $7c24: $2d
    cp c                                          ; $7c25: $b9
    ld a, [$6257]                                 ; $7c26: $fa $57 $62
    add d                                         ; $7c29: $82
    add c                                         ; $7c2a: $81
    cp d                                          ; $7c2b: $ba
    ccf                                           ; $7c2c: $3f
    ld a, l                                       ; $7c2d: $7d
    inc sp                                        ; $7c2e: $33
    adc [hl]                                      ; $7c2f: $8e
    db $e3                                        ; $7c30: $e3
    dec [hl]                                      ; $7c31: $35
    rst $00                                       ; $7c32: $c7
    dec h                                         ; $7c33: $25
    rlca                                          ; $7c34: $07
    add b                                         ; $7c35: $80
    ld a, [bc]                                    ; $7c36: $0a
    ld h, h                                       ; $7c37: $64
    ldh a, [$90]                                  ; $7c38: $f0 $90
    sub a                                         ; $7c3a: $97
    ld h, [hl]                                    ; $7c3b: $66
    inc [hl]                                      ; $7c3c: $34
    rst $18                                       ; $7c3d: $df
    add hl, bc                                    ; $7c3e: $09
    jr z, @+$6a                                   ; $7c3f: $28 $68

    db $fc                                        ; $7c41: $fc
    inc e                                         ; $7c42: $1c
    or [hl]                                       ; $7c43: $b6
    ld [hl-], a                                   ; $7c44: $32
    ld a, $00                                     ; $7c45: $3e $00
    ld l, a                                       ; $7c47: $6f
    sbc $e5                                       ; $7c48: $de $e5
    call c, Call_000_20e5                         ; $7c4a: $dc $e5 $20
    dec hl                                        ; $7c4d: $2b
    xor [hl]                                      ; $7c4e: $ae
    ld l, h                                       ; $7c4f: $6c
    ld a, [$5d8b]                                 ; $7c50: $fa $8b $5d
    ld a, [de]                                    ; $7c53: $1a
    sub c                                         ; $7c54: $91
    sbc b                                         ; $7c55: $98
    adc e                                         ; $7c56: $8b
    and c                                         ; $7c57: $a1
    ld e, h                                       ; $7c58: $5c
    ld l, b                                       ; $7c59: $68
    ld a, [hl]                                    ; $7c5a: $7e
    adc c                                         ; $7c5b: $89
    push hl                                       ; $7c5c: $e5
    ld e, c                                       ; $7c5d: $59
    ld a, [$9a92]                                 ; $7c5e: $fa $92 $9a
    ld e, e                                       ; $7c61: $5b
    ld a, [hl-]                                   ; $7c62: $3a
    add hl, de                                    ; $7c63: $19
    inc a                                         ; $7c64: $3c
    db $e4                                        ; $7c65: $e4

Call_048_7c66:
Jump_048_7c66:
    ld a, b                                       ; $7c66: $78
    rst $30                                       ; $7c67: $f7
    sbc $33                                       ; $7c68: $de $33
    ret z                                         ; $7c6a: $c8

    ld c, c                                       ; $7c6b: $49
    ld l, [hl]                                    ; $7c6c: $6e
    adc $fd                                       ; $7c6d: $ce $fd
    sbc a                                         ; $7c6f: $9f
    or $1c                                        ; $7c70: $f6 $1c
    db $dd                                        ; $7c72: $dd
    push af                                       ; $7c73: $f5

Call_048_7c74:
    inc e                                         ; $7c74: $1c
    db $dd                                        ; $7c75: $dd
    push af                                       ; $7c76: $f5

Call_048_7c77:
    inc e                                         ; $7c77: $1c
    and c                                         ; $7c78: $a1
    ld c, b                                       ; $7c79: $48
    db $f4                                        ; $7c7a: $f4
    sbc e                                         ; $7c7b: $9b
    cp $53                                        ; $7c7c: $fe $53
    ld a, h                                       ; $7c7e: $7c
    nop                                           ; $7c7f: $00
    rst $10                                       ; $7c80: $d7
    db $e4                                        ; $7c81: $e4
    jp nz, Jump_000_0b0a                          ; $7c82: $c2 $0a $0b

    rrc e                                         ; $7c85: $cb $0b
    inc e                                         ; $7c87: $1c
    ld d, h                                       ; $7c88: $54
    call c, $bf09                                 ; $7c89: $dc $09 $bf
    ld [hl], d                                    ; $7c8c: $72
    ld d, c                                       ; $7c8d: $51
    ld a, c                                       ; $7c8e: $79
    cp [hl]                                       ; $7c8f: $be
    dec bc                                        ; $7c90: $0b
    inc e                                         ; $7c91: $1c
    ld d, h                                       ; $7c92: $54
    call c, Call_048_4171                         ; $7c93: $dc $71 $41
    db $d3                                        ; $7c96: $d3
    dec l                                         ; $7c97: $2d
    cp c                                          ; $7c98: $b9
    ld a, [$6257]                                 ; $7c99: $fa $57 $62
    add d                                         ; $7c9c: $82
    add c                                         ; $7c9d: $81
    cp d                                          ; $7c9e: $ba
    ccf                                           ; $7c9f: $3f
    ld a, l                                       ; $7ca0: $7d
    inc sp                                        ; $7ca1: $33
    ld a, $00                                     ; $7ca2: $3e $00
    ld a, e                                       ; $7ca4: $7b
    di                                            ; $7ca5: $f3
    ld l, $e7                                     ; $7ca6: $2e $e7
    ld l, $07                                     ; $7ca8: $2e $07
    ld e, c                                       ; $7caa: $59
    ld [hl], c                                    ; $7cab: $71
    ld h, l                                       ; $7cac: $65
    db $d3                                        ; $7cad: $d3
    ld e, a                                       ; $7cae: $5f
    db $ec                                        ; $7caf: $ec
    jp nc, $c488                                  ; $7cb0: $d2 $88 $c4

    ld e, h                                       ; $7cb3: $5c
    inc c                                         ; $7cb4: $0c
    push hl                                       ; $7cb5: $e5
    ld b, d                                       ; $7cb6: $42
    di                                            ; $7cb7: $f3
    ld c, e                                       ; $7cb8: $4b

Jump_048_7cb9:
    inc l                                         ; $7cb9: $2c
    rst $08                                       ; $7cba: $cf
    jp nc, $d497                                  ; $7cbb: $d2 $97 $d4

    call c, $c9d2                                 ; $7cbe: $dc $d2 $c9
    ldh [rNR42], a                                ; $7cc1: $e0 $21

jr_048_7cc3:
    rst $00                                       ; $7cc3: $c7
    cp e                                          ; $7cc4: $bb
    rst $30                                       ; $7cc5: $f7
    sbc [hl]                                      ; $7cc6: $9e
    ld b, c                                       ; $7cc7: $41
    ld c, [hl]                                    ; $7cc8: $4e
    ld [hl], d                                    ; $7cc9: $72
    ld [hl], e                                    ; $7cca: $73
    xor $ff                                       ; $7ccb: $ee $ff
    or h                                          ; $7ccd: $b4
    rst $20                                       ; $7cce: $e7
    add sp, -$52                                  ; $7ccf: $e8 $ae
    rst $20                                       ; $7cd1: $e7
    add sp, -$52                                  ; $7cd2: $e8 $ae
    rst $20                                       ; $7cd4: $e7
    ld [$a245], sp                                ; $7cd5: $08 $45 $a2
    rst $18                                       ; $7cd8: $df
    db $f4                                        ; $7cd9: $f4
    sbc a                                         ; $7cda: $9f
    ld [c], a                                     ; $7cdb: $e2
    dec a                                         ; $7cdc: $3d
    rst $10                                       ; $7cdd: $d7
    adc d                                         ; $7cde: $8a
    ld d, $96                                     ; $7cdf: $16 $96
    daa                                           ; $7ce1: $27
    db $fc                                        ; $7ce2: $fc
    jp z, $e599                                   ; $7ce3: $ca $99 $e5

    ld [hl+], a                                   ; $7ce6: $22
    inc c                                         ; $7ce7: $0c
    halt                                          ; $7ce8: $76
    cp $de                                        ; $7ce9: $fe $de
    ld a, b                                       ; $7ceb: $78
    jr z, jr_048_7d05                             ; $7cec: $28 $17

    sub [hl]                                      ; $7cee: $96
    daa                                           ; $7cef: $27
    dec l                                         ; $7cf0: $2d
    rst $00                                       ; $7cf1: $c7
    dec h                                         ; $7cf2: $25
    rlca                                          ; $7cf3: $07
    ld [$04d4], sp                                ; $7cf4: $08 $d4 $04
    call Call_000_19a5                            ; $7cf7: $cd $a5 $19
    dec l                                         ; $7cfa: $2d
    ld [hl-], a                                   ; $7cfb: $32
    ld l, a                                       ; $7cfc: $6f
    ld d, c                                       ; $7cfd: $51
    rst $30                                       ; $7cfe: $f7
    jp c, $a28f                                   ; $7cff: $da $8f $a2

    ld l, d                                       ; $7d02: $6a
    ld l, l                                       ; $7d03: $6d
    pop af                                        ; $7d04: $f1

jr_048_7d05:
    ld bc, $5897                                  ; $7d05: $01 $97 $58
    ld a, [de]                                    ; $7d08: $1a
    xor d                                         ; $7d09: $aa
    add l                                         ; $7d0a: $85
    push hl                                       ; $7d0b: $e5
    ld hl, sp+$00                                 ; $7d0c: $f8 $00
    sub a                                         ; $7d0e: $97
    cp a                                          ; $7d0f: $bf
    inc bc                                        ; $7d10: $03
    ld h, [hl]                                    ; $7d11: $66
    cp h                                          ; $7d12: $bc
    or b                                          ; $7d13: $b0
    cp h                                          ; $7d14: $bc
    xor b                                         ; $7d15: $a8
    cp h                                          ; $7d16: $bc
    and b                                         ; $7d17: $a0
    ei                                            ; $7d18: $fb
    ret nc                                        ; $7d19: $d0

    ld e, l                                       ; $7d1a: $5d
    rra                                           ; $7d1b: $1f
    cp d                                          ; $7d1c: $ba
    db $eb                                        ; $7d1d: $eb
    ld b, e                                       ; $7d1e: $43
    sbc [hl]                                      ; $7d1f: $9e
    inc c                                         ; $7d20: $0c
    ld e, $f2                                     ; $7d21: $1e $f2
    push bc                                       ; $7d23: $c5
    ld l, $8d                                     ; $7d24: $2e $8d
    ld c, b                                       ; $7d26: $48
    call z, $0395                                 ; $7d27: $cc $95 $03
    xor a                                         ; $7d2a: $af
    and a                                         ; $7d2b: $a7
    inc hl                                        ; $7d2c: $23
    cp d                                          ; $7d2d: $ba
    ld e, b                                       ; $7d2e: $58
    ld l, b                                       ; $7d2f: $68
    xor h                                         ; $7d30: $ac
    add d                                         ; $7d31: $82
    rst $18                                       ; $7d32: $df
    jr c, jr_048_7cc3                             ; $7d33: $38 $8e

    rrca                                          ; $7d35: $0f
    ld c, a                                       ; $7d36: $4f
    sub l                                         ; $7d37: $95
    ld c, e                                       ; $7d38: $4b
    dec bc                                        ; $7d39: $0b
    ld a, [hl-]                                   ; $7d3a: $3a
    pop hl                                        ; $7d3b: $e1
    ld l, $e1                                     ; $7d3c: $2e $e1
    ld l, $a1                                     ; $7d3e: $2e $a1
    adc d                                         ; $7d40: $8a
    rst $20                                       ; $7d41: $e7
    ld a, a                                       ; $7d42: $7f
    di                                            ; $7d43: $f3
    ld h, d                                       ; $7d44: $62
    sub a                                         ; $7d45: $97
    ld b, [hl]                                    ; $7d46: $46
    inc h                                         ; $7d47: $24
    ld h, $3e                                     ; $7d48: $26 $3e

jr_048_7d4a:
    nop                                           ; $7d4a: $00
    rst $10                                       ; $7d4b: $d7
    cp e                                          ; $7d4c: $bb
    or b                                          ; $7d4d: $b0
    ld [bc], a                                    ; $7d4e: $02
    rst $08                                       ; $7d4f: $cf
    ld [hl], a                                    ; $7d50: $77
    cp d                                          ; $7d51: $ba
    ld l, d                                       ; $7d52: $6a
    ld l, [hl]                                    ; $7d53: $6e
    ld c, c                                       ; $7d54: $49
    pop af                                        ; $7d55: $f1
    rst $38                                       ; $7d56: $ff
    db $e4                                        ; $7d57: $e4
    push bc                                       ; $7d58: $c5
    rst $28                                       ; $7d59: $ef
    pop bc                                        ; $7d5a: $c1
    ld b, c                                       ; $7d5b: $41
    ld c, [hl]                                    ; $7d5c: $4e
    ld [hl], d                                    ; $7d5d: $72
    ld [hl], e                                    ; $7d5e: $73
    ld h, $62                                     ; $7d5f: $26 $62
    xor d                                         ; $7d61: $aa
    inc d                                         ; $7d62: $14
    ld a, a                                       ; $7d63: $7f
    nop                                           ; $7d64: $00
    ld [hl], c                                    ; $7d65: $71
    inc e                                         ; $7d66: $1c
    adc a                                         ; $7d67: $8f
    ld sp, $4df0                                  ; $7d68: $31 $f0 $4d
    dec [hl]                                      ; $7d6b: $35
    rst $18                                       ; $7d6c: $df
    sbc l                                         ; $7d6d: $9d
    ld d, b                                       ; $7d6e: $50
    ei                                            ; $7d6f: $fb
    xor $6d                                       ; $7d70: $ee $6d
    db $e3                                        ; $7d72: $e3
    sub d                                         ; $7d73: $92
    add d                                         ; $7d74: $82
    sbc h                                         ; $7d75: $9c
    ld d, e                                       ; $7d76: $53
    ld l, c                                       ; $7d77: $69
    xor a                                         ; $7d78: $af
    or e                                          ; $7d79: $b3
    ld c, c                                       ; $7d7a: $49
    ld c, h                                       ; $7d7b: $4c
    jr nc, jr_048_7d4a                            ; $7d7c: $30 $cc

    db $dd                                        ; $7d7e: $dd
    ei                                            ; $7d7f: $fb
    add sp, -$43                                  ; $7d80: $e8 $bd
    rst $30                                       ; $7d82: $f7
    ld e, [hl]                                    ; $7d83: $5e
    db $ec                                        ; $7d84: $ec
    ld h, h                                       ; $7d85: $64
    call nc, $ef9c                                ; $7d86: $d4 $9c $ef
    ld c, [hl]                                    ; $7d89: $4e
    xor b                                         ; $7d8a: $a8
    ld a, l                                       ; $7d8b: $7d
    ld [hl], e                                    ; $7d8c: $73
    ld h, [hl]                                    ; $7d8d: $66
    cp c                                          ; $7d8e: $b9
    or b                                          ; $7d8f: $b0
    cp h                                          ; $7d90: $bc
    inc de                                        ; $7d91: $13
    ld h, [hl]                                    ; $7d92: $66
    ld [hl], $c7                                  ; $7d93: $36 $c7
    cp a                                          ; $7d95: $bf
    add hl, de                                    ; $7d96: $19
    rst $00                                       ; $7d97: $c7
    pop af                                        ; $7d98: $f1
    ld bc, $35cf                                  ; $7d99: $01 $cf $35
    or c                                          ; $7d9c: $b1
    inc a                                         ; $7d9d: $3c
    rst $10                                       ; $7d9e: $d7
    ld [hl], d                                    ; $7d9f: $72
    cp [hl]                                       ; $7da0: $be
    ld a, e                                       ; $7da1: $7b
    ld [hl], b                                    ; $7da2: $70
    sub b                                         ; $7da3: $90
    sub e                                         ; $7da4: $93
    call c, $899c                                 ; $7da5: $dc $9c $89
    sbc b                                         ; $7da8: $98
    ld a, [hl+]                                   ; $7da9: $2a
    rst $20                                       ; $7daa: $e7
    or c                                          ; $7dab: $b1
    dec bc                                        ; $7dac: $0b
    cp d                                          ; $7dad: $ba
    or b                                          ; $7dae: $b0
    ld [bc], a                                    ; $7daf: $02
    rst $08                                       ; $7db0: $cf
    dec l                                         ; $7db1: $2d
    ld a, c                                       ; $7db2: $79
    ld l, h                                       ; $7db3: $6c
    ld a, [$fff9]                                 ; $7db4: $fa $f9 $ff
    ld l, c                                       ; $7db7: $69
    ld de, $3906                                  ; $7db8: $11 $06 $39
    ld e, l                                       ; $7dbb: $5d
    dec [hl]                                      ; $7dbc: $35
    xor $dc                                       ; $7dbd: $ee $dc
    sub d                                         ; $7dbf: $92
    ld [c], a                                     ; $7dc0: $e2
    ld c, a                                       ; $7dc1: $4f
    call $bd8b                                    ; $7dc2: $cd $8b $bd
    ld a, [c]                                     ; $7dc5: $f2
    sbc c                                         ; $7dc6: $99
    ld c, e                                       ; $7dc7: $4b
    ld [c], a                                     ; $7dc8: $e2
    rrca                                          ; $7dc9: $0f
    rrca                                          ; $7dca: $0f
    ld c, $72                                     ; $7dcb: $0e $72
    sub d                                         ; $7dcd: $92
    sbc e                                         ; $7dce: $9b
    inc sp                                        ; $7dcf: $33
    ld de, $e553                                  ; $7dd0: $11 $53 $e5
    push bc                                       ; $7dd3: $c5
    and d                                         ; $7dd4: $a2
    ld h, [hl]                                    ; $7dd5: $66
    ld c, e                                       ; $7dd6: $4b
    ld a, e                                       ; $7dd7: $7b
    push hl                                       ; $7dd8: $e5
    inc sp                                        ; $7dd9: $33
    sub a                                         ; $7dda: $97
    ld l, $f6                                     ; $7ddb: $2e $f6
    inc hl                                        ; $7ddd: $23
    ld l, a                                       ; $7dde: $6f
    cp h                                          ; $7ddf: $bc
    and b                                         ; $7de0: $a0
    ei                                            ; $7de1: $fb
    ret nc                                        ; $7de2: $d0

    ld [hl+], a                                   ; $7de3: $22
    inc c                                         ; $7de4: $0c
    ld [hl], d                                    ; $7de5: $72
    ld l, [hl]                                    ; $7de6: $6e
    or l                                          ; $7de7: $b5
    sbc a                                         ; $7de8: $9f
    ret nc                                        ; $7de9: $d0

    db $e4                                        ; $7dea: $e4
    add c                                         ; $7deb: $81
    ld l, d                                       ; $7dec: $6a
    ld c, e                                       ; $7ded: $4b
    cpl                                           ; $7dee: $2f
    cp $00                                        ; $7def: $fe $00
    rst $28                                       ; $7df1: $ef
    dec d                                         ; $7df2: $15
    call z, Call_048_6eb4                         ; $7df3: $cc $b4 $6e
    ld h, h                                       ; $7df6: $64
    and [hl]                                      ; $7df7: $a6
    rst $10                                       ; $7df8: $d7
    and [hl]                                      ; $7df9: $a6
    ld e, d                                       ; $7dfa: $5a
    ld l, b                                       ; $7dfb: $68
    ld e, d                                       ; $7dfc: $5a
    rst $38                                       ; $7dfd: $ff
    ld [hl], c                                    ; $7dfe: $71
    ld b, c                                       ; $7dff: $41
    ld [hl], e                                    ; $7e00: $73
    sub a                                         ; $7e01: $97
    ld b, [hl]                                    ; $7e02: $46
    inc h                                         ; $7e03: $24
    ld h, $de                                     ; $7e04: $26 $de
    inc sp                                        ; $7e06: $33
    cp c                                          ; $7e07: $b9
    nop                                           ; $7e08: $00
    add e                                         ; $7e09: $83
    ld e, l                                       ; $7e0a: $5d
    ld a, [de]                                    ; $7e0b: $1a
    sub c                                         ; $7e0c: $91
    sbc b                                         ; $7e0d: $98
    adc e                                         ; $7e0e: $8b
    sbc l                                         ; $7e0f: $9d
    dec bc                                        ; $7e10: $0b
    ld d, $99                                     ; $7e11: $16 $99
    pop de                                        ; $7e13: $d1
    cp h                                          ; $7e14: $bc
    add c                                         ; $7e15: $81
    ld b, l                                       ; $7e16: $45
    push hl                                       ; $7e17: $e5
    dec b                                         ; $7e18: $05
    ld e, l                                       ; $7e19: $5d
    ld l, b                                       ; $7e1a: $68
    jp hl                                         ; $7e1b: $e9


    add e                                         ; $7e1c: $83
    adc [hl]                                      ; $7e1d: $8e
    dec bc                                        ; $7e1e: $0b
    sbc d                                         ; $7e1f: $9a
    ld a, e                                       ; $7e20: $7b
    ld [hl], b                                    ; $7e21: $70
    sub b                                         ; $7e22: $90
    sub e                                         ; $7e23: $93
    call c, Call_048_778c                         ; $7e24: $dc $8c $77
    cp l                                          ; $7e27: $bd
    dec bc                                        ; $7e28: $0b
    dec hl                                        ; $7e29: $2b
    ldh a, [rNR43]                                ; $7e2a: $f0 $22
    inc c                                         ; $7e2c: $0c
    ld [hl], d                                    ; $7e2d: $72
    cp d                                          ; $7e2e: $ba
    ld l, d                                       ; $7e2f: $6a
    ld l, [hl]                                    ; $7e30: $6e
    ld c, c                                       ; $7e31: $49
    pop af                                        ; $7e32: $f1
    rst $38                                       ; $7e33: $ff
    db $e4                                        ; $7e34: $e4
    db $e3                                        ; $7e35: $e3
    inc bc                                        ; $7e36: $03
    rst $10                                       ; $7e37: $d7
    cp e                                          ; $7e38: $bb
    inc sp                                        ; $7e39: $33
    sub [hl]                                      ; $7e3a: $96
    rst $10                                       ; $7e3b: $d7
    and $84                                       ; $7e3c: $e6 $84
    sub [hl]                                      ; $7e3e: $96
    add e                                         ; $7e3f: $83
    ld c, $d0                                     ; $7e40: $0e $d0
    ld l, a                                       ; $7e42: $6f
    ld e, [hl]                                    ; $7e43: $5e
    db $ec                                        ; $7e44: $ec
    jp nc, $c488                                  ; $7e45: $d2 $88 $c4

    call nz, $cf07                                ; $7e48: $c4 $07 $cf
    sbc c                                         ; $7e4b: $99
    pop af                                        ; $7e4c: $f1
    jp nz, $c0f2                                  ; $7e4d: $c2 $f2 $c0

    xor a                                         ; $7e50: $af
    ld e, a                                       ; $7e51: $5f
    ld d, h                                       ; $7e52: $54
    ld e, [hl]                                    ; $7e53: $5e
    ret nc                                        ; $7e54: $d0

    adc e                                         ; $7e55: $8b
    ld e, l                                       ; $7e56: $5d
    ld a, [de]                                    ; $7e57: $1a
    sub c                                         ; $7e58: $91
    sbc b                                         ; $7e59: $98
    dec hl                                        ; $7e5a: $2b
    rlca                                          ; $7e5b: $07
    ld d, a                                       ; $7e5c: $57
    dec sp                                        ; $7e5d: $3b
    or a                                          ; $7e5e: $b7
    db $e4                                        ; $7e5f: $e4
    ld [$895f], a                                 ; $7e60: $ea $5f $89
    add hl, bc                                    ; $7e63: $09
    add [hl]                                      ; $7e64: $86
    ld l, d                                       ; $7e65: $6a
    ccf                                           ; $7e66: $3f
    ld b, c                                       ; $7e67: $41
    cp l                                          ; $7e68: $bd
    ld e, c                                       ; $7e69: $59
    ld c, $34                                     ; $7e6a: $0e $34
    ld [hl-], a                                   ; $7e6c: $32
    sub e                                         ; $7e6d: $93
    inc l                                         ; $7e6e: $2c
    cp $00                                        ; $7e6f: $fe $00
    ld l, a                                       ; $7e71: $6f
    db $fd                                        ; $7e72: $fd
    ld [$5d05], a                                 ; $7e73: $ea $05 $5d
    ret nc                                        ; $7e76: $d0

    dec h                                         ; $7e77: $25
    sub [hl]                                      ; $7e78: $96
    and a                                         ; $7e79: $a7
    dec hl                                        ; $7e7a: $2b
    ld h, l                                       ; $7e7b: $65
    jp hl                                         ; $7e7c: $e9


    ld h, d                                       ; $7e7d: $62
    sub a                                         ; $7e7e: $97
    ld b, [hl]                                    ; $7e7f: $46
    inc h                                         ; $7e80: $24
    and $ca                                       ; $7e81: $e6 $ca
    ld bc, $b52f                                  ; $7e83: $01 $2f $b5
    rla                                           ; $7e86: $17
    ld d, e                                       ; $7e87: $53
    adc c                                         ; $7e88: $89
    and d                                         ; $7e89: $a2
    xor c                                         ; $7e8a: $a9
    ld [hl], h                                    ; $7e8b: $74
    ld b, h                                       ; $7e8c: $44
    pop af                                        ; $7e8d: $f1
    sbc [hl]                                      ; $7e8e: $9e
    db $fd                                        ; $7e8f: $fd
    db $10                                        ; $7e90: $10
    call nc, $ad85                                ; $7e91: $d4 $85 $ad
    adc b                                         ; $7e94: $88
    rst $10                                       ; $7e95: $d7
    and $5c                                       ; $7e96: $e6 $5c
    db $fd                                        ; $7e98: $fd
    dec hl                                        ; $7e99: $2b
    rst $30                                       ; $7e9a: $f7
    db $dd                                        ; $7e9b: $dd
    jp nc, $cea2                                  ; $7e9c: $d2 $a2 $ce

    ld b, c                                       ; $7e9f: $41
    ld b, $55                                     ; $7ea0: $06 $55
    db $10                                        ; $7ea2: $10
    ld a, l                                       ; $7ea3: $7d
    reti                                          ; $7ea4: $d9


    ld e, h                                       ; $7ea5: $5c
    ld [hl], e                                    ; $7ea6: $73
    jp hl                                         ; $7ea7: $e9


    ld c, h                                       ; $7ea8: $4c
    ld l, b                                       ; $7ea9: $68
    ld c, $e5                                     ; $7eaa: $0e $e5
    adc $58                                       ; $7eac: $ce $58
    add hl, de                                    ; $7eae: $19
    rra                                           ; $7eaf: $1f
    rst $10                                       ; $7eb0: $d7
    ld [$6d4b], a                                 ; $7eb1: $ea $4b $6d
    xor $f4                                       ; $7eb4: $ee $f4
    ret                                           ; $7eb6: $c9


    di                                            ; $7eb7: $f3
    adc $58                                       ; $7eb8: $ce $58
    add hl, sp                                    ; $7eba: $39
    rst $10                                       ; $7ebb: $d7
    ld [hl], d                                    ; $7ebc: $72
    ld h, c                                       ; $7ebd: $61
    and e                                         ; $7ebe: $a3
    ld a, b                                       ; $7ebf: $78
    rst $10                                       ; $7ec0: $d7
    db $e4                                        ; $7ec1: $e4
    ld a, h                                       ; $7ec2: $7c
    ld d, e                                       ; $7ec3: $53
    adc $1b                                       ; $7ec4: $ce $1b
    cpl                                           ; $7ec6: $2f
    inc l                                         ; $7ec7: $2c
    xor a                                         ; $7ec8: $af
    call Call_000_1e15                            ; $7ec9: $cd $15 $1e
    ld [hl], d                                    ; $7ecc: $72
    rst $20                                       ; $7ecd: $e7
    sub [hl]                                      ; $7ece: $96
    ld e, h                                       ; $7ecf: $5c
    db $fd                                        ; $7ed0: $fd
    dec hl                                        ; $7ed1: $2b
    ld sp, $50c1                                  ; $7ed2: $31 $c1 $50
    push bc                                       ; $7ed5: $c5
    ld a, e                                       ; $7ed6: $7b
    adc $16                                       ; $7ed7: $ce $16
    sbc c                                         ; $7ed9: $99
    pop de                                        ; $7eda: $d1
    jp nc, $068c                                  ; $7edb: $d2 $8c $06

    pop de                                        ; $7ede: $d1
    rla                                           ; $7edf: $17
    ld d, l                                       ; $7ee0: $55

jr_048_7ee1:
    xor c                                         ; $7ee1: $a9
    ld c, a                                       ; $7ee2: $4f
    ld a, e                                       ; $7ee3: $7b
    sbc [hl]                                      ; $7ee4: $9e
    jr nc, jr_048_7f4c                            ; $7ee5: $30 $65

    push af                                       ; $7ee7: $f5
    ld a, $34                                     ; $7ee8: $3e $34
    rst $18                                       ; $7eea: $df
    ld sp, hl                                     ; $7eeb: $f9
    sub d                                         ; $7eec: $92
    rst $28                                       ; $7eed: $ef
    call c, $c792                                 ; $7eee: $dc $92 $c7
    ld b, d                                       ; $7ef1: $42
    sbc b                                         ; $7ef2: $98
    jr nz, @-$20                                  ; $7ef3: $20 $de

    dec h                                         ; $7ef5: $25
    ld b, $43                                     ; $7ef6: $06 $43
    or l                                          ; $7ef8: $b5
    db $10                                        ; $7ef9: $10
    ld c, e                                       ; $7efa: $4b
    di                                            ; $7efb: $f3
    sbc l                                         ; $7efc: $9d
    xor a                                         ; $7efd: $af
    sub d                                         ; $7efe: $92
    ld c, [hl]                                    ; $7eff: $4e
    ld a, d                                       ; $7f00: $7a
    inc b                                         ; $7f01: $04
    db $dd                                        ; $7f02: $dd
    add a                                         ; $7f03: $87
    ld d, $96                                     ; $7f04: $16 $96
    rlca                                          ; $7f06: $07
    ld a, [hl+]                                   ; $7f07: $2a
    ld h, b                                       ; $7f08: $60
    db $fd                                        ; $7f09: $fd
    ld e, h                                       ; $7f0a: $5c
    res 7, c                                      ; $7f0b: $cb $b9
    dec h                                         ; $7f0d: $25
    ld d, a                                       ; $7f0e: $57
    rst $38                                       ; $7f0f: $ff
    ld c, d                                       ; $7f10: $4a
    ld c, h                                       ; $7f11: $4c
    ret nc                                        ; $7f12: $d0

    adc h                                         ; $7f13: $8c
    rrca                                          ; $7f14: $0f
    rst $10                                       ; $7f15: $d7
    cp e                                          ; $7f16: $bb
    add sp, -$69                                  ; $7f17: $e8 $97
    sub a                                         ; $7f19: $97
    ld h, [hl]                                    ; $7f1a: $66
    inc [hl]                                      ; $7f1b: $34
    adc b                                         ; $7f1c: $88
    cp [hl]                                       ; $7f1d: $be
    xor b                                         ; $7f1e: $a8
    ld c, d                                       ; $7f1f: $4a
    ld a, l                                       ; $7f20: $7d
    jp c, $84f3                                   ; $7f21: $da $f3 $84

    add hl, hl                                    ; $7f24: $29
    xor e                                         ; $7f25: $ab
    rst $30                                       ; $7f26: $f7
    and c                                         ; $7f27: $a1
    ld sp, hl                                     ; $7f28: $f9
    adc $97                                       ; $7f29: $ce $97
    ld a, h                                       ; $7f2b: $7c
    rst $20                                       ; $7f2c: $e7
    sub [hl]                                      ; $7f2d: $96
    inc a                                         ; $7f2e: $3c
    ld d, $c2                                     ; $7f2f: $16 $c2
    inc b                                         ; $7f31: $04
    pop af                                        ; $7f32: $f1
    ld l, $31                                     ; $7f33: $2e $31
    jr jr_048_7ee1                                ; $7f35: $18 $aa

    add l                                         ; $7f37: $85
    ld e, b                                       ; $7f38: $58
    sbc d                                         ; $7f39: $9a
    rst $28                                       ; $7f3a: $ef
    ld a, h                                       ; $7f3b: $7c
    sub l                                         ; $7f3c: $95
    ld [hl], h                                    ; $7f3d: $74
    jp nc, $e823                                  ; $7f3e: $d2 $23 $e8

    ld a, $b4                                     ; $7f41: $3e $b4
    or b                                          ; $7f43: $b0
    inc a                                         ; $7f44: $3c
    ld d, b                                       ; $7f45: $50
    ld bc, $e7eb                                  ; $7f46: $01 $eb $e7
    ld e, d                                       ; $7f49: $5a
    adc $2d                                       ; $7f4a: $ce $2d

jr_048_7f4c:
    cp c                                          ; $7f4c: $b9
    ld a, [$6257]                                 ; $7f4d: $fa $57 $62
    add d                                         ; $7f50: $82
    ld h, [hl]                                    ; $7f51: $66
    ld a, h                                       ; $7f52: $7c
    nop                                           ; $7f53: $00
    rst $10                                       ; $7f54: $d7
    db $e4                                        ; $7f55: $e4
    add h                                         ; $7f56: $84
    and $d2                                       ; $7f57: $e6 $d2
    adc h                                         ; $7f59: $8c
    and $3b                                       ; $7f5a: $e6 $3b
    dec b                                         ; $7f5c: $05
    ld d, c                                       ; $7f5d: $51
    dec e                                         ; $7f5e: $1d
    reti                                          ; $7f5f: $d9


    ld d, h                                       ; $7f60: $54
    ldh a, [$f0]                                  ; $7f61: $f0 $f0
    ld a, a                                       ; $7f63: $7f
    dec a                                         ; $7f64: $3d
    ret nc                                        ; $7f65: $d0

    ld d, e                                       ; $7f66: $53
    xor e                                         ; $7f67: $ab
    ld a, b                                       ; $7f68: $78
    db $fc                                        ; $7f69: $fc
    sbc e                                         ; $7f6a: $9b
    ld b, e                                       ; $7f6b: $43
    add hl, sp                                    ; $7f6c: $39
    xor c                                         ; $7f6d: $a9
    adc e                                         ; $7f6e: $8b
    cp c                                          ; $7f6f: $b9
    sub e                                         ; $7f70: $93
    xor c                                         ; $7f71: $a9
    adc e                                         ; $7f72: $8b
    ld b, l                                       ; $7f73: $45
    ld h, [hl]                                    ; $7f74: $66
    inc [hl]                                      ; $7f75: $34
    ld l, a                                       ; $7f76: $6f
    inc a                                         ; $7f77: $3c
    db $dd                                        ; $7f78: $dd
    jp z, $5885                                   ; $7f79: $ca $85 $58

    ld e, d                                       ; $7f7c: $5a
    ld e, b                                       ; $7f7d: $58
    db $dd                                        ; $7f7e: $dd
    ret z                                         ; $7f7f: $c8

    ld c, h                                       ; $7f80: $4c
    cpl                                           ; $7f81: $2f
    or c                                          ; $7f82: $b1
    cp h                                          ; $7f83: $bc
    rrca                                          ; $7f84: $0f
    push bc                                       ; $7f85: $c5
    rlca                                          ; $7f86: $07
    cpl                                           ; $7f87: $2f
    ld e, d                                       ; $7f88: $5a
    or h                                          ; $7f89: $b4
    ld [hl], e                                    ; $7f8a: $73
    ld bc, $1bcf                                  ; $7f8b: $01 $cf $1b
    rrca                                          ; $7f8e: $0f
    push hl                                       ; $7f8f: $e5
    ld e, h                                       ; $7f90: $5c
    res 4, l                                      ; $7f91: $cb $a5
    or c                                          ; $7f93: $b1
    ld b, e                                       ; $7f94: $43
    ld e, l                                       ; $7f95: $5d
    sbc e                                         ; $7f96: $9b
    ld d, e                                       ; $7f97: $53
    db $10                                        ; $7f98: $10
    push de                                       ; $7f99: $d5
    sub c                                         ; $7f9a: $91
    daa                                           ; $7f9b: $27
    db $e3                                        ; $7f9c: $e3
    sub d                                         ; $7f9d: $92
    ld l, e                                       ; $7f9e: $6b
    ld a, d                                       ; $7f9f: $7a
    ld b, d                                       ; $7fa0: $42
    di                                            ; $7fa1: $f3
    ld h, d                                       ; $7fa2: $62
    sub c                                         ; $7fa3: $91
    add hl, de                                    ; $7fa4: $19
    call Call_000_1afd                            ; $7fa5: $cd $fd $1a
    inc [hl]                                      ; $7fa8: $34
    push de                                       ; $7fa9: $d5
    ld [hl+], a                                   ; $7faa: $22
    inc c                                         ; $7fab: $0c
    ld d, $56                                     ; $7fac: $16 $56
    ld b, e                                       ; $7fae: $43
    inc a                                         ; $7faf: $3c
    ld l, a                                       ; $7fb0: $6f
    cp h                                          ; $7fb1: $bc
    call nz, Call_000_30f2                        ; $7fb2: $c4 $f2 $30
    rst $20                                       ; $7fb5: $e7
    ld a, e                                       ; $7fb6: $7b
    xor $74                                       ; $7fb7: $ee $74
    ld d, l                                       ; $7fb9: $55
    ld a, h                                       ; $7fba: $7c
    nop                                           ; $7fbb: $00
    rst $10                                       ; $7fbc: $d7
    db $e4                                        ; $7fbd: $e4
    adc $d8                                       ; $7fbe: $ce $d8
    ld a, c                                       ; $7fc0: $79
    db $e3                                        ; $7fc1: $e3
    dec b                                         ; $7fc2: $05
    ld e, l                                       ; $7fc3: $5d
    ld h, d                                       ; $7fc4: $62
    ld a, c                                       ; $7fc5: $79
    ld h, c                                       ; $7fc6: $61
    ld a, c                                       ; $7fc7: $79
    jp nz, Jump_048_5caf                          ; $7fc8: $c2 $af $5c

    ld e, b                                       ; $7fcb: $58
    add c                                         ; $7fcc: $81
    rlca                                          ; $7fcd: $07

Jump_048_7fce:
    ld a, [hl+]                                   ; $7fce: $2a
    sub b                                         ; $7fcf: $90
    add e                                         ; $7fd0: $83
    sub d                                         ; $7fd1: $92
    rst $30                                       ; $7fd2: $f7
    and e                                         ; $7fd3: $a3
    ld sp, hl                                     ; $7fd4: $f9
    adc $2d                                       ; $7fd5: $ce $2d
    cp c                                          ; $7fd7: $b9
    ld a, [$6257]                                 ; $7fd8: $fa $57 $62
    add d                                         ; $7fdb: $82
    db $fd                                        ; $7fdc: $fd
    inc b                                         ; $7fdd: $04
    push af                                       ; $7fde: $f5
    ld h, [hl]                                    ; $7fdf: $66
    add hl, sp                                    ; $7fe0: $39
    xor $22                                       ; $7fe1: $ee $22
    sub e                                         ; $7fe3: $93
    call $d778                                    ; $7fe4: $cd $78 $d7
    db $e4                                        ; $7fe7: $e4
    adc $a6                                       ; $7fe8: $ce $a6
    rla                                           ; $7fea: $17
    ld [hl], $da                                  ; $7feb: $36 $da
    ld c, a                                       ; $7fed: $4f
    ld d, b                                       ; $7fee: $50
    ld l, a                                       ; $7fef: $6f
    sub [hl]                                      ; $7ff0: $96
    adc e                                         ; $7ff1: $8b
    ld c, h                                       ; $7ff2: $4c
    ld [hl], $e3                                  ; $7ff3: $36 $e3
    inc bc                                        ; $7ff5: $03
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
