; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

    ld c, h                                       ; $4000: $4c
    ld d, a                                       ; $4001: $57
    dec sp                                        ; $4002: $3b
    ld l, c                                       ; $4003: $69
    ld b, [hl]                                    ; $4004: $46
    call c, Call_04c_441c                         ; $4005: $dc $1c $44
    rst $18                                       ; $4008: $df
    dec sp                                        ; $4009: $3b
    ldh a, [rHDMA2]                               ; $400a: $f0 $52
    ld [hl], e                                    ; $400c: $73
    ld l, l                                       ; $400d: $6d
    xor $b9                                       ; $400e: $ee $b9
    rst $28                                       ; $4010: $ef
    ld hl, sp-$1a                                 ; $4011: $f8 $e6
    ld e, [hl]                                    ; $4013: $5e
    ld c, a                                       ; $4014: $4f
    inc sp                                        ; $4015: $33
    sbc h                                         ; $4016: $9c
    rst $00                                       ; $4017: $c7
    xor $47                                       ; $4018: $ee $47
    dec bc                                        ; $401a: $0b
    rrc e                                         ; $401b: $cb $0b
    rst $38                                       ; $401d: $ff
    rla                                           ; $401e: $17
    ld sp, hl                                     ; $401f: $f9
    cp c                                          ; $4020: $b9
    sub [hl]                                      ; $4021: $96
    ld l, e                                       ; $4022: $6b
    ld [hl], e                                    ; $4023: $73
    ld e, h                                       ; $4024: $5c
    ret nc                                        ; $4025: $d0

    ld d, h                                       ; $4026: $54
    ld l, h                                       ; $4027: $6c
    jp hl                                         ; $4028: $e9


    ld c, e                                       ; $4029: $4b
    add e                                         ; $402a: $83
    inc hl                                        ; $402b: $23
    ret                                           ; $402c: $c9


    ld l, d                                       ; $402d: $6a
    ld e, [hl]                                    ; $402e: $5e
    ld [hl], e                                    ; $402f: $73
    ld h, c                                       ; $4030: $61

jr_04c_4031:
    and e                                         ; $4031: $a3
    sbc c                                         ; $4032: $99
    ld c, b                                       ; $4033: $48
    rla                                           ; $4034: $17
    dec a                                         ; $4035: $3d
    rst $00                                       ; $4036: $c7
    rlca                                          ; $4037: $07
    ld d, a                                       ; $4038: $57
    dec sp                                        ; $4039: $3b
    ld l, c                                       ; $403a: $69
    ld b, [hl]                                    ; $403b: $46
    call c, Call_04c_585c                         ; $403c: $dc $5c $58
    ld b, c                                       ; $403f: $41
    ld l, b                                       ; $4040: $68
    ld l, $e8                                     ; $4041: $2e $e8
    jp c, $ca9c                                   ; $4043: $da $9c $ca

    ld e, a                                       ; $4046: $5f
    jr z, jr_04c_4031                             ; $4047: $28 $e8

    ld b, b                                       ; $4049: $40
    ld b, c                                       ; $404a: $41
    db $dd                                        ; $404b: $dd
    and [hl]                                      ; $404c: $a6
    ld hl, sp+$03                                 ; $404d: $f8 $03
    ld d, a                                       ; $404f: $57
    dec sp                                        ; $4050: $3b
    ld l, c                                       ; $4051: $69
    ld b, [hl]                                    ; $4052: $46
    call c, Call_04c_585c                         ; $4053: $dc $5c $58
    ld b, c                                       ; $4056: $41
    ld l, b                                       ; $4057: $68
    ld l, $2c                                     ; $4058: $2e $2c

jr_04c_405a:
    rst $08                                       ; $405a: $cf
    inc l                                         ; $405b: $2c
    reti                                          ; $405c: $d9


    db $f4                                        ; $405d: $f4
    ld c, d                                       ; $405e: $4a
    xor [hl]                                      ; $405f: $ae
    ld de, $5026                                  ; $4060: $11 $26 $50
    sub b                                         ; $4063: $90
    sub e                                         ; $4064: $93
    call c, $5b9c                                 ; $4065: $dc $9c $5b
    ld a, [bc]                                    ; $4068: $0a
    rst $38                                       ; $4069: $ff
    rlca                                          ; $406a: $07
    ld a, [hl]                                    ; $406b: $7e
    sbc $78                                       ; $406c: $de $78
    ld b, c                                       ; $406e: $41
    daa                                           ; $406f: $27
    add hl, bc                                    ; $4070: $09
    inc bc                                        ; $4071: $03
    ret nz                                        ; $4072: $c0

    inc sp                                        ; $4073: $33
    xor l                                         ; $4074: $ad
    ld d, $74                                     ; $4075: $16 $74
    cp [hl]                                       ; $4077: $be
    rst $20                                       ; $4078: $e7
    ld c, [hl]                                    ; $4079: $4e
    sub d                                         ; $407a: $92
    pop bc                                        ; $407b: $c1
    ld b, e                                       ; $407c: $43
    adc [hl]                                      ; $407d: $8e
    jp z, Jump_04c_6098                           ; $407e: $ca $98 $60

    daa                                           ; $4081: $27
    ld c, h                                       ; $4082: $4c
    ld d, $7f                                     ; $4083: $16 $7f
    nop                                           ; $4085: $00
    ld d, a                                       ; $4086: $57
    dec sp                                        ; $4087: $3b
    ld l, c                                       ; $4088: $69
    ld b, [hl]                                    ; $4089: $46
    call c, Call_04c_645c                         ; $408a: $dc $5c $64
    or d                                          ; $408d: $b2
    add hl, sp                                    ; $408e: $39
    rst $18                                       ; $408f: $df
    ld d, l                                       ; $4090: $55
    inc h                                         ; $4091: $24
    ld a, [hl+]                                   ; $4092: $2a
    sbc h                                         ; $4093: $9c
    sbc e                                         ; $4094: $9b
    ld [hl], e                                    ; $4095: $73
    dec l                                         ; $4096: $2d
    rst $10                                       ; $4097: $d7
    and $00                                       ; $4098: $e6 $00
    adc d                                         ; $409a: $8a
    call z, Call_000_35d2                         ; $409b: $cc $d2 $35
    cp l                                          ; $409e: $bd
    sbc a                                         ; $409f: $9f
    and b                                         ; $40a0: $a0
    sbc $2c                                       ; $40a1: $de $2c
    rlca                                          ; $40a3: $07
    ld [$6a1d], a                                 ; $40a4: $ea $1d $6a
    ld a, [$f7ce]                                 ; $40a7: $fa $ce $f7
    call c, Call_000_3249                         ; $40aa: $dc $49 $32
    ld a, b                                       ; $40ad: $78
    ret z                                         ; $40ae: $c8

    ld d, c                                       ; $40af: $51
    add hl, de                                    ; $40b0: $19
    inc de                                        ; $40b1: $13
    adc b                                         ; $40b2: $88
    ccf                                           ; $40b3: $3f
    nop                                           ; $40b4: $00
    ld d, a                                       ; $40b5: $57
    dec sp                                        ; $40b6: $3b
    ld l, c                                       ; $40b7: $69
    ld b, [hl]                                    ; $40b8: $46
    call c, Call_04c_645c                         ; $40b9: $dc $5c $64
    or d                                          ; $40bc: $b2
    add hl, sp                                    ; $40bd: $39
    db $d3                                        ; $40be: $d3
    cp d                                          ; $40bf: $ba
    ld [hl], e                                    ; $40c0: $73
    push af                                       ; $40c1: $f5
    xor a                                         ; $40c2: $af
    ld l, h                                       ; $40c3: $6c
    xor $27                                       ; $40c4: $ee $27
    xor b                                         ; $40c6: $a8
    scf                                           ; $40c7: $37
    bit 7, c                                      ; $40c8: $cb $79
    db $ec                                        ; $40ca: $ec
    and d                                         ; $40cb: $a2
    and $be                                       ; $40cc: $e6 $be
    ld e, e                                       ; $40ce: $5b
    ld e, d                                       ; $40cf: $5a
    ret nc                                        ; $40d0: $d0

    add l                                         ; $40d1: $85
    xor l                                         ; $40d2: $ad
    adc b                                         ; $40d3: $88
    rst $20                                       ; $40d4: $e7
    jr nz, jr_04c_405a                            ; $40d5: $20 $83

    ld a, [hl+]                                   ; $40d7: $2a
    adc b                                         ; $40d8: $88
    cp [hl]                                       ; $40d9: $be
    ld l, h                                       ; $40da: $6c
    adc d                                         ; $40db: $8a
    ccf                                           ; $40dc: $3f
    nop                                           ; $40dd: $00
    ld d, a                                       ; $40de: $57
    dec sp                                        ; $40df: $3b
    ld l, c                                       ; $40e0: $69
    ld b, [hl]                                    ; $40e1: $46
    call c, $f9dc                                 ; $40e2: $dc $dc $f9
    inc de                                        ; $40e5: $13
    ld l, b                                       ; $40e6: $68
    xor [hl]                                      ; $40e7: $ae
    db $e4                                        ; $40e8: $e4
    cp $4f                                        ; $40e9: $fe $4f
    di                                            ; $40eb: $f3
    add $0b                                       ; $40ec: $c6 $0b
    cp d                                          ; $40ee: $ba
    add sp, $17                                   ; $40ef: $e8 $17
    dec [hl]                                      ; $40f1: $35

Call_04c_40f2:
Jump_04c_40f2:
    ld b, $b2                                     ; $40f2: $06 $b2
    inc [hl]                                      ; $40f4: $34
    or e                                          ; $40f5: $b3
    inc e                                         ; $40f6: $1c
    ld [hl], a                                    ; $40f7: $77
    xor [hl]                                      ; $40f8: $ae
    ld l, c                                       ; $40f9: $69
    db $dd                                        ; $40fa: $dd
    sbc h                                         ; $40fb: $9c
    ret nc                                        ; $40fc: $d0

    ld h, h                                       ; $40fd: $64
    pop af                                        ; $40fe: $f1
    rlca                                          ; $40ff: $07
    ld d, a                                       ; $4100: $57
    dec sp                                        ; $4101: $3b

jr_04c_4102:
    ld l, c                                       ; $4102: $69
    ld b, [hl]                                    ; $4103: $46
    call c, Call_000_2c9c                         ; $4104: $dc $9c $2c
    xor e                                         ; $4107: $ab
    and $da                                       ; $4108: $e6 $da
    sbc h                                         ; $410a: $9c
    ld l, a                                       ; $410b: $6f
    push af                                       ; $410c: $f5
    ld e, h                                       ; $410d: $5c
    set 7, c                                      ; $410e: $cb $f9
    ld c, [hl]                                    ; $4110: $4e
    pop bc                                        ; $4111: $c1
    ld b, e                                       ; $4112: $43
    di                                            ; $4113: $f3
    sbc l                                         ; $4114: $9d
    adc c                                         ; $4115: $89
    and $b1                                       ; $4116: $e6 $b1
    di                                            ; $4118: $f3
    rst $38                                       ; $4119: $ff
    db $d3                                        ; $411a: $d3
    ld b, h                                       ; $411b: $44
    ld h, d                                       ; $411c: $62
    inc d                                         ; $411d: $14
    ld d, [hl]                                    ; $411e: $56
    halt                                          ; $411f: $76
    ld e, a                                       ; $4120: $5f
    or h                                          ; $4121: $b4
    ret z                                         ; $4122: $c8

    nop                                           ; $4123: $00
    ld a, [hl+]                                   ; $4124: $2a
    ld a, b                                       ; $4125: $78
    ret c                                         ; $4126: $d8

    sbc c                                         ; $4127: $99
    and l                                         ; $4128: $a5
    ld l, e                                       ; $4129: $6b
    ld e, d                                       ; $412a: $5a
    scf                                           ; $412b: $37
    ld [hl], a                                    ; $412c: $77
    ld a, [$79e4]                                 ; $412d: $fa $e4 $79
    ld l, [hl]                                    ; $4130: $6e
    jp hl                                         ; $4131: $e9


    ld a, a                                       ; $4132: $7f
    ld a, [hl-]                                   ; $4133: $3a
    sbc e                                         ; $4134: $9b
    ld c, c                                       ; $4135: $49
    ld d, $7f                                     ; $4136: $16 $7f
    nop                                           ; $4138: $00
    rst $10                                       ; $4139: $d7
    dec sp                                        ; $413a: $3b
    rst $30                                       ; $413b: $f7
    ld d, a                                       ; $413c: $57
    di                                            ; $413d: $f3
    add d                                         ; $413e: $82
    ld c, [hl]                                    ; $413f: $4e
    ld [hl], c                                    ; $4140: $71
    ld c, c                                       ; $4141: $49
    sub [hl]                                      ; $4142: $96
    ld [c], a                                     ; $4143: $e2
    ld e, l                                       ; $4144: $5d
    sub [hl]                                      ; $4145: $96
    daa                                           ; $4146: $27
    dec l                                         ; $4147: $2d
    ld [hl], a                                    ; $4148: $77
    add $20                                       ; $4149: $c6 $20
    rst $20                                       ; $414b: $e7
    adc l                                         ; $414c: $8d
    rla                                           ; $414d: $17
    ld [hl], h                                    ; $414e: $74
    rst $08                                       ; $414f: $cf
    ld l, d                                       ; $4150: $6a
    add h                                         ; $4151: $84
    sbc d                                         ; $4152: $9a
    cp $df                                        ; $4153: $fe $df
    and l                                         ; $4155: $a5
    jr nz, jr_04c_4102                            ; $4156: $20 $aa

    inc hl                                        ; $4158: $23
    sub a                                         ; $4159: $97
    adc $24                                       ; $415a: $ce $24
    add hl, de                                    ; $415c: $19
    inc a                                         ; $415d: $3c
    ld h, h                                       ; $415e: $64
    inc b                                         ; $415f: $04
    and l                                         ; $4160: $a5
    and c                                         ; $4161: $a1
    adc d                                         ; $4162: $8a
    rrca                                          ; $4163: $0f
    ld d, a                                       ; $4164: $57
    dec sp                                        ; $4165: $3b
    ld l, c                                       ; $4166: $69
    ld b, [hl]                                    ; $4167: $46

Call_04c_4168:
    call c, Call_04c_585c                         ; $4168: $dc $5c $58
    ld b, c                                       ; $416b: $41
    ld l, b                                       ; $416c: $68
    adc [hl]                                      ; $416d: $8e
    ld c, a                                       ; $416e: $4f
    db $ed                                        ; $416f: $ed
    inc d                                         ; $4170: $14

Call_04c_4171:
    db $f4                                        ; $4171: $f4
    cp a                                          ; $4172: $bf
    inc [hl]                                      ; $4173: $34
    ld a, b                                       ; $4174: $78
    ret z                                         ; $4175: $c8

    ld [$f93a], sp                                ; $4176: $08 $3a $f9
    ld hl, $29bc                                  ; $4179: $21 $bc $29
    rst $20                                       ; $417c: $e7
    ld e, d                                       ; $417d: $5a
    ld l, $f8                                     ; $417e: $2e $f8
    adc $40                                       ; $4180: $ce $40
    inc hl                                        ; $4182: $23
    inc sp                                        ; $4183: $33
    ret                                           ; $4184: $c9


    ld [c], a                                     ; $4185: $e2
    ld [hl], a                                    ; $4186: $77

jr_04c_4187:
    cp l                                          ; $4187: $bd
    ld [hl], e                                    ; $4188: $73
    ld sp, $f4b0                                  ; $4189: $31 $b0 $f4
    db $d3                                        ; $418c: $d3
    jr jr_04c_41d7                                ; $418d: $18 $48

    ld e, [hl]                                    ; $418f: $5e
    ret                                           ; $4190: $c9


    rst $38                                       ; $4191: $ff
    ld c, a                                       ; $4192: $4f
    db $e3                                        ; $4193: $e3
    xor $f4                                       ; $4194: $ee $f4
    ret                                           ; $4196: $c9


    scf                                           ; $4197: $37
    ld h, a                                       ; $4198: $67
    ld [hl+], a                                   ; $4199: $22
    ld d, b                                       ; $419a: $50
    ld e, l                                       ; $419b: $5d
    db $f4                                        ; $419c: $f4
    pop af                                        ; $419d: $f1
    ld bc, $3b57                                  ; $419e: $01 $57 $3b
    ld l, c                                       ; $41a1: $69
    ld b, [hl]                                    ; $41a2: $46
    call c, Call_04c_585c                         ; $41a3: $dc $5c $58
    ld b, c                                       ; $41a6: $41
    ld l, b                                       ; $41a7: $68
    ld l, $b1                                     ; $41a8: $2e $b1
    xor h                                         ; $41aa: $ac
    and $fe                                       ; $41ab: $e6 $fe
    ld c, a                                       ; $41ad: $4f
    dec bc                                        ; $41ae: $0b

Call_04c_41af:
    ld a, [hl-]                                   ; $41af: $3a
    ld d, b                                       ; $41b0: $50
    ld l, a                                       ; $41b1: $6f
    sub [hl]                                      ; $41b2: $96
    pop af                                        ; $41b3: $f1
    ld e, [hl]                                    ; $41b4: $5e
    inc [hl]                                      ; $41b5: $34
    and e                                         ; $41b6: $a3
    dec b                                         ; $41b7: $05
    sbc l                                         ; $41b8: $9d
    adc e                                         ; $41b9: $8b
    add c                                         ; $41ba: $81
    and l                                         ; $41bb: $a5
    rst $18                                       ; $41bc: $df
    add hl, de                                    ; $41bd: $19
    sra e                                         ; $41be: $cb $2b
    xor l                                         ; $41c0: $ad
    call $2d09                                    ; $41c1: $cd $09 $2d
    rlca                                          ; $41c4: $07
    sbc l                                         ; $41c5: $9d
    ld [c], a                                     ; $41c6: $e2
    sub d                                         ; $41c7: $92
    inc l                                         ; $41c8: $2c
    call $8e41                                    ; $41c9: $cd $41 $8e
    rrca                                          ; $41cc: $0f
    ld d, a                                       ; $41cd: $57
    dec sp                                        ; $41ce: $3b
    ld l, c                                       ; $41cf: $69
    ld b, [hl]                                    ; $41d0: $46
    call c, $369c                                 ; $41d1: $dc $9c $36
    ld l, [hl]                                    ; $41d4: $6e
    ld l, $e8                                     ; $41d5: $2e $e8

jr_04c_41d7:
    cp b                                          ; $41d7: $b8
    and b                                         ; $41d8: $a0
    xor c                                         ; $41d9: $a9
    ret c                                         ; $41da: $d8

    jp nc, $d497                                  ; $41db: $d2 $97 $d4

    jr nc, jr_04c_4187                            ; $41de: $30 $a7

    or h                                          ; $41e0: $b4
    add hl, de                                    ; $41e1: $19
    inc [hl]                                      ; $41e2: $34
    ld l, l                                       ; $41e3: $6d
    call c, Call_04c_6b9c                         ; $41e4: $dc $9c $6b
    ld e, d                                       ; $41e7: $5a
    scf                                           ; $41e8: $37
    push bc                                       ; $41e9: $c5
    rst $28                                       ; $41ea: $ef
    cp l                                          ; $41eb: $bd
    ld c, [hl]                                    ; $41ec: $4e
    ld a, [hl-]                                   ; $41ed: $3a
    sbc c                                         ; $41ee: $99
    call Call_04c_5d05                            ; $41ef: $cd $05 $5d
    ld a, [de]                                    ; $41f2: $1a
    dec sp                                        ; $41f3: $3b
    ld c, $69                                     ; $41f4: $0e $69
    inc c                                         ; $41f6: $0c
    db $e4                                        ; $41f7: $e4
    ld [de], a                                    ; $41f8: $12
    swap e                                        ; $41f9: $cb $33
    ld c, e                                       ; $41fb: $4b
    rst $10                                       ; $41fc: $d7
    or h                                          ; $41fd: $b4
    ld l, [hl]                                    ; $41fe: $6e
    adc $b4                                       ; $41ff: $ce $b4
    jp c, $6bb9                                   ; $4201: $da $b9 $6b

    ld [hl], e                                    ; $4204: $73
    sbc $e1                                       ; $4205: $de $e1
    and b                                         ; $4207: $a0
    di                                            ; $4208: $f3
    cp a                                          ; $4209: $bf

Jump_04c_420a:
    add hl, de                                    ; $420a: $19
    rra                                           ; $420b: $1f
    ld d, a                                       ; $420c: $57
    dec sp                                        ; $420d: $3b
    ld l, c                                       ; $420e: $69
    ld b, [hl]                                    ; $420f: $46
    call c, Call_04c_585c                         ; $4210: $dc $5c $58
    ld b, c                                       ; $4213: $41
    ld l, b                                       ; $4214: $68
    xor [hl]                                      ; $4215: $ae
    call $ffb9                                    ; $4216: $cd $b9 $ff
    db $d3                                        ; $4219: $d3
    xor c                                         ; $421a: $a9
    inc b                                         ; $421b: $04
    dec c                                         ; $421c: $0d
    ld [hl], e                                    ; $421d: $73
    ld b, c                                       ; $421e: $41
    add a                                         ; $421f: $87
    jp hl                                         ; $4220: $e9


    ld [hl], $d9                                  ; $4221: $36 $d9
    ld [$dcd5], sp                                ; $4223: $08 $d5 $dc
    sub d                                         ; $4226: $92
    and l                                         ; $4227: $a5
    cpl                                           ; $4228: $2f
    ld sp, hl                                     ; $4229: $f9
    ld h, c                                       ; $422a: $61
    add $71                                       ; $422b: $c6 $71
    inc a                                         ; $422d: $3c
    call z, Call_000_39b5                         ; $422e: $cc $b5 $39
    push bc                                       ; $4231: $c5
    db $e4                                        ; $4232: $e4
    and b                                         ; $4233: $a0
    ld [hl], d                                    ; $4234: $72
    ccf                                           ; $4235: $3f
    xor b                                         ; $4236: $a8
    halt                                          ; $4237: $76
    ld e, e                                       ; $4238: $5b
    cp d                                          ; $4239: $ba
    ld [hl+], a                                   ; $423a: $22
    cp $00                                        ; $423b: $fe $00
    ld d, a                                       ; $423d: $57
    dec sp                                        ; $423e: $3b
    ld l, c                                       ; $423f: $69
    ld b, [hl]                                    ; $4240: $46
    call c, Call_04c_645c                         ; $4241: $dc $5c $64
    or d                                          ; $4244: $b2
    add hl, sp                                    ; $4245: $39
    ld d, b                                       ; $4246: $50
    rst $28                                       ; $4247: $ef
    ld d, b                                       ; $4248: $50
    db $d3                                        ; $4249: $d3
    ld [hl], a                                    ; $424a: $77
    cp [hl]                                       ; $424b: $be
    rst $20                                       ; $424c: $e7
    ld c, [hl]                                    ; $424d: $4e
    sub d                                         ; $424e: $92
    pop bc                                        ; $424f: $c1
    ld b, e                                       ; $4250: $43
    adc [hl]                                      ; $4251: $8e
    jp z, Jump_04c_6098                           ; $4252: $ca $98 $60

    pop bc                                        ; $4255: $c1
    ld [hl], a                                    ; $4256: $77
    ld c, [hl]                                    ; $4257: $4e
    ld d, e                                       ; $4258: $53
    db $10                                        ; $4259: $10
    push de                                       ; $425a: $d5
    sub c                                         ; $425b: $91
    call $3489                                    ; $425c: $cd $89 $34
    and [hl]                                      ; $425f: $a6

Jump_04c_4260:
    call c, Call_04c_78c9                         ; $4260: $dc $c9 $78
    ld a, [bc]                                    ; $4263: $0a
    ld e, $9a                                     ; $4264: $1e $9a
    xor a                                         ; $4266: $af
    add $40                                       ; $4267: $c6 $40
    sub [hl]                                      ; $4269: $96
    ld [c], a                                     ; $426a: $e2
    inc bc                                        ; $426b: $03
    ld d, a                                       ; $426c: $57
    dec sp                                        ; $426d: $3b
    ld l, c                                       ; $426e: $69
    ld b, [hl]                                    ; $426f: $46
    call c, Call_04c_645c                         ; $4270: $dc $5c $64
    or d                                          ; $4273: $b2
    cp c                                          ; $4274: $b9
    and b                                         ; $4275: $a0
    jp Jump_04c_7228                              ; $4276: $c3 $28 $72


    sbc h                                         ; $4279: $9c
    sbc h                                         ; $427a: $9c
    ei                                            ; $427b: $fb
    ccf                                           ; $427c: $3f
    dec c                                         ; $427d: $0d
    and b                                         ; $427e: $a0
    add sp, $62                                   ; $427f: $e8 $62
    sub c                                         ; $4281: $91
    add hl, de                                    ; $4282: $19
    call Call_04c_6eb4                            ; $4283: $cd $b4 $6e
    ld [hl], e                                    ; $4286: $73
    and b                                         ; $4287: $a0
    sbc $a1                                       ; $4288: $de $a1
    and [hl]                                      ; $428a: $a6
    rst $28                                       ; $428b: $ef
    ld a, h                                       ; $428c: $7c
    rst $08                                       ; $428d: $cf
    sbc l                                         ; $428e: $9d
    inc h                                         ; $428f: $24
    add e                                         ; $4290: $83
    add a                                         ; $4291: $87
    inc e                                         ; $4292: $1c
    sub l                                         ; $4293: $95
    ld sp, $7c41                                  ; $4294: $31 $41 $7c
    nop                                           ; $4297: $00
    ld d, a                                       ; $4298: $57
    dec sp                                        ; $4299: $3b
    ld l, c                                       ; $429a: $69
    ld b, [hl]                                    ; $429b: $46
    call c, Call_04c_441c                         ; $429c: $dc $1c $44
    rst $18                                       ; $429f: $df
    dec sp                                        ; $42a0: $3b
    ldh a, [rHDMA2]                               ; $42a1: $f0 $52
    ld [hl], e                                    ; $42a3: $73
    ld l, l                                       ; $42a4: $6d
    adc $44                                       ; $42a5: $ce $44
    ld a, [bc]                                    ; $42a7: $0a
    ld e, $12                                     ; $42a8: $1e $12
    jp z, $a553                                   ; $42aa: $ca $53 $a5

    ld l, h                                       ; $42ad: $6c
    ld a, [$6a81]                                 ; $42ae: $fa $81 $6a
    rlca                                          ; $42b1: $07
    db $fd                                        ; $42b2: $fd
    ld c, [hl]                                    ; $42b3: $4e
    ld h, [hl]                                    ; $42b4: $66
    db $e4                                        ; $42b5: $e4
    rst $38                                       ; $42b6: $ff
    and a                                         ; $42b7: $a7
    db $dd                                        ; $42b8: $dd
    ld [hl], b                                    ; $42b9: $70
    ld b, e                                       ; $42ba: $43
    adc [hl]                                      ; $42bb: $8e
    dec bc                                        ; $42bc: $0b
    sbc d                                         ; $42bd: $9a
    adc d                                         ; $42be: $8a
    dec l                                         ; $42bf: $2d
    ld a, l                                       ; $42c0: $7d
    ld l, c                                       ; $42c1: $69
    rra                                           ; $42c2: $1f
    sbc d                                         ; $42c3: $9a
    rst $28                                       ; $42c4: $ef
    ld e, h                                       ; $42c5: $5c
    db $ed                                        ; $42c6: $ed
    ret nz                                        ; $42c7: $c0

    ld b, e                                       ; $42c8: $43
    sbc [hl]                                      ; $42c9: $9e
    jp nc, Jump_000_1c66                          ; $42ca: $d2 $66 $1c

    rra                                           ; $42cd: $1f
    ld d, a                                       ; $42ce: $57
    dec sp                                        ; $42cf: $3b
    ld l, c                                       ; $42d0: $69
    ld b, [hl]                                    ; $42d1: $46
    call c, Call_04c_441c                         ; $42d2: $dc $1c $44
    rst $18                                       ; $42d5: $df
    dec sp                                        ; $42d6: $3b
    ldh a, [rHDMA2]                               ; $42d7: $f0 $52
    ld [hl], e                                    ; $42d9: $73
    sub c                                         ; $42da: $91
    ld [hl], e                                    ; $42db: $73
    add $ca                                       ; $42dc: $c6 $ca
    ld a, b                                       ; $42de: $78
    rst $10                                       ; $42df: $d7
    dec sp                                        ; $42e0: $3b
    ld l, $68                                     ; $42e1: $2e $68
    ld a, [hl+]                                   ; $42e3: $2a
    or [hl]                                       ; $42e4: $b6
    db $f4                                        ; $42e5: $f4
    dec h                                         ; $42e6: $25
    or l                                          ; $42e7: $b5
    db $d3                                        ; $42e8: $d3
    daa                                           ; $42e9: $27
    rst $18                                       ; $42ea: $df
    sbc h                                         ; $42eb: $9c
    adc c                                         ; $42ec: $89
    ld b, b                                       ; $42ed: $40
    ld [hl], l                                    ; $42ee: $75
    pop de                                        ; $42ef: $d1
    xor a                                         ; $42f0: $af
    add hl, sp                                    ; $42f1: $39
    and l                                         ; $42f2: $a5
    call Call_04c_6d72                            ; $42f3: $cd $72 $6d
    ld c, [hl]                                    ; $42f6: $4e
    xor b                                         ; $42f7: $a8
    ld b, e                                       ; $42f8: $43
    cp h                                          ; $42f9: $bc
    rst $28                                       ; $42fa: $ef
    sub [hl]                                      ; $42fb: $96
    ld [c], a                                     ; $42fc: $e2
    inc bc                                        ; $42fd: $03
    ld d, a                                       ; $42fe: $57
    dec sp                                        ; $42ff: $3b
    ld l, c                                       ; $4300: $69
    ld b, [hl]                                    ; $4301: $46
    call c, Call_04c_441c                         ; $4302: $dc $1c $44
    rst $18                                       ; $4305: $df
    dec sp                                        ; $4306: $3b
    ldh a, [rHDMA2]                               ; $4307: $f0 $52
    ld [hl], e                                    ; $4309: $73
    jp nc, $5474                                  ; $430a: $d2 $74 $54

    ld l, d                                       ; $430d: $6a
    ld a, [$722e]                                 ; $430e: $fa $2e $72
    adc $58                                       ; $4311: $ce $58
    cp c                                          ; $4313: $b9
    sub e                                         ; $4314: $93
    add hl, de                                    ; $4315: $19
    ld sp, hl                                     ; $4316: $f9
    rst $38                                       ; $4317: $ff
    ld l, c                                       ; $4318: $69
    scf                                           ; $4319: $37
    call c, Call_04c_7390                         ; $431a: $dc $90 $73
    ld sp, $f4b0                                  ; $431d: $31 $b0 $f4
    jp $d29c                                      ; $4320: $c3 $9c $d2


    ld h, [hl]                                    ; $4323: $66
    ret nc                                        ; $4324: $d0

    ld e, h                                       ; $4325: $5c
    db $d3                                        ; $4326: $d3
    inc e                                         ; $4327: $1c
    rra                                           ; $4328: $1f
    ld d, a                                       ; $4329: $57
    dec sp                                        ; $432a: $3b
    ld l, c                                       ; $432b: $69
    ld b, [hl]                                    ; $432c: $46
    call c, $369c                                 ; $432d: $dc $9c $36
    ld l, [hl]                                    ; $4330: $6e
    ld l, $32                                     ; $4331: $2e $32
    add b                                         ; $4333: $80
    ld a, [bc]                                    ; $4334: $0a
    ld e, $76                                     ; $4335: $1e $76
    add d                                         ; $4337: $82
    cp $8d                                        ; $4338: $fe $8d
    sbc d                                         ; $433a: $9a
    inc bc                                        ; $433b: $03
    db $f4                                        ; $433c: $f4
    adc e                                         ; $433d: $8b
    ld c, l                                       ; $433e: $4d
    pop af                                        ; $433f: $f1
    ld a, e                                       ; $4340: $7b
    xor a                                         ; $4341: $af
    ld d, e                                       ; $4342: $53
    adc h                                         ; $4343: $8c
    add hl, hl                                    ; $4344: $29
    sbc e                                         ; $4345: $9b
    ld [c], a                                     ; $4346: $e2
    ld [hl], a                                    ; $4347: $77
    dec e                                         ; $4348: $1d
    add e                                         ; $4349: $83
    cp c                                          ; $434a: $b9
    cp a                                          ; $434b: $bf
    sbc d                                         ; $434c: $9a
    rla                                           ; $434d: $17
    ld [hl], h                                    ; $434e: $74
    db $10                                        ; $434f: $10
    ld h, c                                       ; $4350: $61
    ld h, h                                       ; $4351: $64
    rla                                           ; $4352: $17
    adc e                                         ; $4353: $8b
    call z, Call_04c_4168                         ; $4354: $cc $68 $41
    rst $00                                       ; $4357: $c7
    dec b                                         ; $4358: $05
    ld c, l                                       ; $4359: $4d
    push bc                                       ; $435a: $c5
    sub [hl]                                      ; $435b: $96
    cp [hl]                                       ; $435c: $be
    and h                                         ; $435d: $a4
    halt                                          ; $435e: $76
    add $e6                                       ; $435f: $c6 $e6
    ld c, d                                       ; $4361: $4a
    dec sp                                        ; $4362: $3b
    add hl, de                                    ; $4363: $19
    rrca                                          ; $4364: $0f
    ld b, d                                       ; $4365: $42
    ld c, b                                       ; $4366: $48
    call $8e41                                    ; $4367: $cd $41 $8e
    rrca                                          ; $436a: $0f
    ld d, a                                       ; $436b: $57
    dec sp                                        ; $436c: $3b
    ld l, c                                       ; $436d: $69
    ld b, [hl]                                    ; $436e: $46
    call c, $c69c                                 ; $436f: $dc $9c $c6
    ld b, b                                       ; $4372: $40
    ld [hl], $17                                  ; $4373: $36 $17
    ld [hl], h                                    ; $4375: $74
    ld e, h                                       ; $4376: $5c
    ret nc                                        ; $4377: $d0

    ld d, h                                       ; $4378: $54
    ld l, h                                       ; $4379: $6c
    jp hl                                         ; $437a: $e9


    ld c, e                                       ; $437b: $4b
    ld l, d                                       ; $437c: $6a
    ld c, h                                       ; $437d: $4c
    ld b, $4a                                     ; $437e: $06 $4a
    db $e3                                        ; $4380: $e3
    ld l, $ac                                     ; $4381: $2e $ac
    jr nz, jr_04c_43b9                            ; $4383: $20 $34

    rlca                                          ; $4385: $07
    ld a, [de]                                    ; $4386: $1a
    sbc c                                         ; $4387: $99
    ld c, c                                       ; $4388: $49
    ld d, $7f                                     ; $4389: $16 $7f
    nop                                           ; $438b: $00
    rst $10                                       ; $438c: $d7
    dec sp                                        ; $438d: $3b
    and c                                         ; $438e: $a1
    and a                                         ; $438f: $a7
    ld d, $f0                                     ; $4390: $16 $f0
    add d                                         ; $4392: $82
    xor [hl]                                      ; $4393: $ae
    inc b                                         ; $4394: $04
    and [hl]                                      ; $4395: $a6
    dec l                                         ; $4396: $2d
    pop bc                                        ; $4397: $c1
    reti                                          ; $4398: $d9


    inc l                                         ; $4399: $2c
    adc d                                         ; $439a: $8a
    ld [hl], a                                    ; $439b: $77
    dec d                                         ; $439c: $15
    ld a, c                                       ; $439d: $79
    pop de                                        ; $439e: $d1
    cpl                                           ; $439f: $2f
    scf                                           ; $43a0: $37
    rst $20                                       ; $43a1: $e7
    dec sp                                        ; $43a2: $3b
    ld l, c                                       ; $43a3: $69
    ld b, [hl]                                    ; $43a4: $46
    call c, Call_04c_585c                         ; $43a5: $dc $5c $58
    ld b, c                                       ; $43a8: $41
    ld l, b                                       ; $43a9: $68
    ld c, $d4                                     ; $43aa: $0e $d4
    sbc e                                         ; $43ac: $9b
    and l                                         ; $43ad: $a5
    ld hl, sp+$03                                 ; $43ae: $f8 $03
    ld d, a                                       ; $43b0: $57
    dec sp                                        ; $43b1: $3b
    ld l, c                                       ; $43b2: $69
    ld b, [hl]                                    ; $43b3: $46
    call c, Call_04c_585c                         ; $43b4: $dc $5c $58
    ld b, c                                       ; $43b7: $41
    ld l, b                                       ; $43b8: $68

jr_04c_43b9:
    xor [hl]                                      ; $43b9: $ae
    call Call_000_309d                            ; $43ba: $cd $9d $30
    ld a, l                                       ; $43bd: $7d
    ld hl, sp-$41                                 ; $43be: $f8 $bf
    ld a, [de]                                    ; $43c0: $1a
    ld l, b                                       ; $43c1: $68
    ld h, h                                       ; $43c2: $64
    ld h, $79                                     ; $43c3: $26 $79
    ld e, $bb                                     ; $43c5: $1e $bb
    ld [hl], $c7                                  ; $43c7: $36 $c7
    dec b                                         ; $43c9: $05
    ld c, l                                       ; $43ca: $4d
    push bc                                       ; $43cb: $c5
    sub [hl]                                      ; $43cc: $96
    cp [hl]                                       ; $43cd: $be
    or h                                          ; $43ce: $b4
    ld d, e                                       ; $43cf: $53
    add c                                         ; $43d0: $81
    and b                                         ; $43d1: $a0
    call $8b14                                    ; $43d2: $cd $14 $8b
    ccf                                           ; $43d5: $3f
    nop                                           ; $43d6: $00
    ld d, a                                       ; $43d7: $57
    dec sp                                        ; $43d8: $3b
    ld l, c                                       ; $43d9: $69
    ld b, [hl]                                    ; $43da: $46
    call c, Call_04c_585c                         ; $43db: $dc $5c $58
    ld b, c                                       ; $43de: $41
    ld l, b                                       ; $43df: $68
    xor [hl]                                      ; $43e0: $ae
    call Call_04c_4171                            ; $43e1: $cd $71 $41
    ld d, e                                       ; $43e4: $53
    or c                                          ; $43e5: $b1
    and l                                         ; $43e6: $a5
    cpl                                           ; $43e7: $2f
    dec c                                         ; $43e8: $0d
    sub h                                         ; $43e9: $94
    ret                                           ; $43ea: $c9


    ld d, d                                       ; $43eb: $52
    adc c                                         ; $43ec: $89
    ld a, $45                                     ; $43ed: $3e $45
    dec l                                         ; $43ef: $2d
    ld sp, hl                                     ; $43f0: $f9
    ld h, c                                       ; $43f1: $61
    add $71                                       ; $43f2: $c6 $71
    inc a                                         ; $43f4: $3c
    call z, Call_04c_5961                         ; $43f5: $cc $61 $59
    call $97d2                                    ; $43f8: $cd $d2 $97
    ld d, h                                       ; $43fb: $54
    ld a, h                                       ; $43fc: $7c
    nop                                           ; $43fd: $00
    ld d, a                                       ; $43fe: $57
    dec sp                                        ; $43ff: $3b
    ld l, c                                       ; $4400: $69
    ld b, [hl]                                    ; $4401: $46
    call c, $5b9c                                 ; $4402: $dc $9c $5b
    ld a, [c]                                     ; $4405: $f2
    adc [hl]                                      ; $4406: $8e
    jr nz, jr_04c_445d                            ; $4407: $20 $54

    scf                                           ; $4409: $37
    rla                                           ; $440a: $17
    ld [hl], h                                    ; $440b: $74
    cpl                                           ; $440c: $2f
    cp h                                          ; $440d: $bc
    ld [hl-], a                                   ; $440e: $32
    rst $30                                       ; $440f: $f7
    ld a, a                                       ; $4410: $7f
    sbc d                                         ; $4411: $9a
    rst $28                                       ; $4412: $ef
    cp h                                          ; $4413: $bc
    db $e3                                        ; $4414: $e3
    ret nc                                        ; $4415: $d0

    ld e, h                                       ; $4416: $5c
    set 7, c                                      ; $4417: $cb $f9
    sbc [hl]                                      ; $4419: $9e
    dec sp                                        ; $441a: $3b
    ld c, c                                       ; $441b: $49

Call_04c_441c:
Jump_04c_441c:
    ld b, $0f                                     ; $441c: $06 $0f
    add hl, sp                                    ; $441e: $39
    ld a, [hl+]                                   ; $441f: $2a
    ld h, e                                       ; $4420: $63
    ld [bc], a                                    ; $4421: $02
    pop af                                        ; $4422: $f1
    rlca                                          ; $4423: $07
    ld d, a                                       ; $4424: $57
    dec sp                                        ; $4425: $3b
    ld l, c                                       ; $4426: $69
    ld b, [hl]                                    ; $4427: $46
    call c, $d65c                                 ; $4428: $dc $5c $d6
    ld h, c                                       ; $442b: $61
    ld [hl-], a                                   ; $442c: $32
    adc l                                         ; $442d: $8d
    xor d                                         ; $442e: $aa
    call nc, $401c                                ; $442f: $d4 $1c $40
    pop de                                        ; $4432: $d1
    cp [hl]                                       ; $4433: $be
    ld l, b                                       ; $4434: $68
    ld a, [bc]                                    ; $4435: $0a
    ld e, $9a                                     ; $4436: $1e $9a
    xor a                                         ; $4438: $af
    add $40                                       ; $4439: $c6 $40
    halt                                          ; $443b: $76
    db $fc                                        ; $443c: $fc
    db $dd                                        ; $443d: $dd
    sub d                                         ; $443e: $92
    add d                                         ; $443f: $82
    xor b                                         ; $4440: $a8
    adc [hl]                                      ; $4441: $8e
    ld l, h                                       ; $4442: $6c
    adc d                                         ; $4443: $8a
    ccf                                           ; $4444: $3f
    nop                                           ; $4445: $00
    ld d, a                                       ; $4446: $57
    dec sp                                        ; $4447: $3b
    ld l, c                                       ; $4448: $69
    ld b, [hl]                                    ; $4449: $46
    call c, $a81c                                 ; $444a: $dc $1c $a8
    db $db                                        ; $444d: $db
    ld e, h                                       ; $444e: $5c
    ret nc                                        ; $444f: $d0

    or l                                          ; $4450: $b5
    add hl, sp                                    ; $4451: $39
    and c                                         ; $4452: $a1
    ld e, h                                       ; $4453: $5c
    ld a, [de]                                    ; $4454: $1a
    ld a, [$ae76]                                 ; $4455: $fa $76 $ae
    push hl                                       ; $4458: $e5
    ld c, [hl]                                    ; $4459: $4e
    ld h, [hl]                                    ; $445a: $66
    or h                                          ; $445b: $b4
    and b                                         ; $445c: $a0

jr_04c_445d:
    ld c, e                                       ; $445d: $4b
    inc sp                                        ; $445e: $33
    jp c, $b519                                   ; $445f: $da $19 $b5

    ld e, e                                       ; $4462: $5b
    ld l, d                                       ; $4463: $6a
    xor $75                                       ; $4464: $ee $75
    sub h                                         ; $4466: $94
    or d                                          ; $4467: $b2
    ld e, d                                       ; $4468: $5a
    dec l                                         ; $4469: $2d
    ld a, [$9de5]                                 ; $446a: $fa $e5 $9d
    ld a, a                                       ; $446d: $7f
    ld h, l                                       ; $446e: $65
    ld d, e                                       ; $446f: $53
    db $fc                                        ; $4470: $fc
    ld bc, $3b57                                  ; $4471: $01 $57 $3b
    ld l, c                                       ; $4474: $69
    ld b, [hl]                                    ; $4475: $46
    call c, Call_04c_441c                         ; $4476: $dc $1c $44
    rst $18                                       ; $4479: $df
    dec sp                                        ; $447a: $3b
    ldh a, [rHDMA2]                               ; $447b: $f0 $52
    ld [hl], e                                    ; $447d: $73
    ld l, l                                       ; $447e: $6d
    ld l, $fa                                     ; $447f: $2e $fa
    xor c                                         ; $4481: $a9
    cp b                                          ; $4482: $b8
    and h                                         ; $4483: $a4
    cp a                                          ; $4484: $bf
    adc h                                         ; $4485: $8c
    ret nc                                        ; $4486: $d0

    ei                                            ; $4487: $fb
    ld [$d778], a                                 ; $4488: $ea $78 $d7
    cp e                                          ; $448b: $bb
    add sp, -$69                                  ; $448c: $e8 $97
    rst $00                                       ; $448e: $c7
    jr @-$06                                      ; $448f: $18 $f8

    ld l, d                                       ; $4491: $6a
    inc c                                         ; $4492: $0c
    db $e4                                        ; $4493: $e4
    and d                                         ; $4494: $a2
    sub [hl]                                      ; $4495: $96
    ld h, $c9                                     ; $4496: $26 $c9
    ldh [rNR42], a                                ; $4498: $e0 $21
    ld b, a                                       ; $449a: $47
    ld h, l                                       ; $449b: $65

Jump_04c_449c:
    ld c, h                                       ; $449c: $4c
    ret nc                                        ; $449d: $d0

    sbc h                                         ; $449e: $9c
    ld e, c                                       ; $449f: $59
    ld [bc], a                                    ; $44a0: $02
    or e                                          ; $44a1: $b3
    sbc h                                         ; $44a2: $9c
    or a                                          ; $44a3: $b7
    sbc h                                         ; $44a4: $9c
    and l                                         ; $44a5: $a5
    cpl                                           ; $44a6: $2f
    xor c                                         ; $44a7: $a9
    ld hl, sp+$00                                 ; $44a8: $f8 $00
    ld d, a                                       ; $44aa: $57
    ld a, e                                       ; $44ab: $7b
    xor $a4                                       ; $44ac: $ee $a4
    add hl, de                                    ; $44ae: $19
    ld [hl], c                                    ; $44af: $71
    ld [hl], e                                    ; $44b0: $73
    adc d                                         ; $44b1: $8a
    dec e                                         ; $44b2: $1d
    ld l, d                                       ; $44b3: $6a
    ld l, $e8                                     ; $44b4: $2e $e8
    cp b                                          ; $44b6: $b8
    and b                                         ; $44b7: $a0
    xor c                                         ; $44b8: $a9
    ret c                                         ; $44b9: $d8

    jp nc, $d697                                  ; $44ba: $d2 $97 $d6

    and $42                                       ; $44bd: $e6 $42
    ld c, h                                       ; $44bf: $4c
    sbc $77                                       ; $44c0: $de $77
    ld c, e                                       ; $44c2: $4b
    dec sp                                        ; $44c3: $3b
    add hl, de                                    ; $44c4: $19
    cpl                                           ; $44c5: $2f
    ret nz                                        ; $44c6: $c0

    ld h, b                                       ; $44c7: $60
    xor [hl]                                      ; $44c8: $ae
    push hl                                       ; $44c9: $e5
    jr nz, @+$6f                                  ; $44ca: $20 $6d

    add hl, sp                                    ; $44cc: $39
    and c                                         ; $44cd: $a1
    ret                                           ; $44ce: $c9


    rla                                           ; $44cf: $17
    dec sp                                        ; $44d0: $3b
    sbc c                                         ; $44d1: $99
    sub c                                         ; $44d2: $91
    rst $38                                       ; $44d3: $ff
    sbc a                                         ; $44d4: $9f
    ld d, $62                                     ; $44d5: $16 $62
    or b                                          ; $44d7: $b0
    inc sp                                        ; $44d8: $33
    jp nz, Jump_000_09c3                          ; $44d9: $c2 $c3 $09

    push hl                                       ; $44dc: $e5
    jp nc, $e5a4                                  ; $44dd: $d2 $a4 $e5

    call c, $af92                                 ; $44e0: $dc $92 $af
    ld b, a                                       ; $44e3: $47
    ret nc                                        ; $44e4: $d0

    adc h                                         ; $44e5: $8c
    rrca                                          ; $44e6: $0f
    ld d, a                                       ; $44e7: $57
    dec sp                                        ; $44e8: $3b
    ld l, c                                       ; $44e9: $69
    ld b, [hl]                                    ; $44ea: $46
    call c, $5b9c                                 ; $44eb: $dc $9c $5b
    sub d                                         ; $44ee: $92
    jp c, $a820                                   ; $44ef: $da $20 $a8

    cp c                                          ; $44f2: $b9
    and b                                         ; $44f3: $a0
    di                                            ; $44f4: $f3
    db $dd                                        ; $44f5: $dd
    ld sp, hl                                     ; $44f6: $f9
    ld h, h                                       ; $44f7: $64
    ld d, d                                       ; $44f8: $52
    halt                                          ; $44f9: $76
    sub b                                         ; $44fa: $90
    xor [hl]                                      ; $44fb: $ae
    sub h                                         ; $44fc: $94
    call $96b9                                    ; $44fd: $cd $b9 $96
    dec bc                                        ; $4500: $0b
    ld a, [hl-]                                   ; $4501: $3a
    ld l, $68                                     ; $4502: $2e $68
    ld a, [hl+]                                   ; $4504: $2a
    or [hl]                                       ; $4505: $b6
    db $f4                                        ; $4506: $f4
    dec h                                         ; $4507: $25
    ld [hl], l                                    ; $4508: $75
    or c                                          ; $4509: $b1
    di                                            ; $450a: $f3
    rst $30                                       ; $450b: $f7
    add $0b                                       ; $450c: $c6 $0b
    ld a, [hl-]                                   ; $450e: $3a
    and c                                         ; $450f: $a1
    ld e, h                                       ; $4510: $5c
    ld a, [de]                                    ; $4511: $1a
    and $14                                       ; $4512: $e6 $14
    sbc e                                         ; $4514: $9b
    pop af                                        ; $4515: $f1
    add h                                         ; $4516: $84
    ld h, $ef                                     ; $4517: $26 $ef
    ld b, a                                       ; $4519: $47
    inc bc                                        ; $451a: $03
    cp a                                          ; $451b: $bf
    cp [hl]                                       ; $451c: $be
    ld d, e                                       ; $451d: $53
    db $10                                        ; $451e: $10
    push de                                       ; $451f: $d5
    sub c                                         ; $4520: $91
    call $c839                                    ; $4521: $cd $39 $c8
    db $e3                                        ; $4524: $e3
    ld c, [hl]                                    ; $4525: $4e
    ld b, c                                       ; $4526: $41
    ld d, h                                       ; $4527: $54
    reti                                          ; $4528: $d9


    adc h                                         ; $4529: $8c
    rrca                                          ; $452a: $0f
    ld d, a                                       ; $452b: $57
    dec sp                                        ; $452c: $3b
    ld l, c                                       ; $452d: $69
    ld b, [hl]                                    ; $452e: $46

jr_04c_452f:
    call c, $eb9c                                 ; $452f: $dc $9c $eb
    ld l, b                                       ; $4532: $68
    db $dd                                        ; $4533: $dd
    ld e, h                                       ; $4534: $5c
    ret nc                                        ; $4535: $d0

    cp l                                          ; $4536: $bd
    pop af                                        ; $4537: $f1
    jp z, Jump_000_0c04                           ; $4538: $ca $04 $0c

    add $9f                                       ; $453b: $c6 $9f
    rla                                           ; $453d: $17
    sub [hl]                                      ; $453e: $96
    rla                                           ; $453f: $17
    add hl, de                                    ; $4540: $19
    ld l, h                                       ; $4541: $6c
    adc h                                         ; $4542: $8c
    sbc h                                         ; $4543: $9c
    ld c, b                                       ; $4544: $48
    db $fc                                        ; $4545: $fc
    ld bc, $3b57                                  ; $4546: $01 $57 $3b
    ld l, c                                       ; $4549: $69
    ld b, [hl]                                    ; $454a: $46
    call c, Call_04c_645c                         ; $454b: $dc $5c $64
    or d                                          ; $454e: $b2
    add hl, sp                                    ; $454f: $39
    rst $18                                       ; $4550: $df
    add l                                         ; $4551: $85
    ld b, l                                       ; $4552: $45
    ld a, l                                       ; $4553: $7d
    or [hl]                                       ; $4554: $b6
    xor b                                         ; $4555: $a8
    ei                                            ; $4556: $fb
    and d                                         ; $4557: $a2
    add hl, hl                                    ; $4558: $29
    ld a, b                                       ; $4559: $78
    ld l, b                                       ; $455a: $68
    cp [hl]                                       ; $455b: $be
    ld a, [de]                                    ; $455c: $1a
    inc bc                                        ; $455d: $03
    reti                                          ; $455e: $d9


    add hl, sp                                    ; $455f: $39
    ret z                                         ; $4560: $c8

    and a                                         ; $4561: $a7
    sub d                                         ; $4562: $92
    call nz, $fb04                                ; $4563: $c4 $04 $fb
    add hl, bc                                    ; $4566: $09
    ld [$72cd], a                                 ; $4567: $ea $cd $72
    xor [hl]                                      ; $456a: $ae
    push hl                                       ; $456b: $e5
    inc d                                         ; $456c: $14
    ld b, h                                       ; $456d: $44
    ld [hl], l                                    ; $456e: $75
    ld h, h                                       ; $456f: $64
    ld [hl], e                                    ; $4570: $73
    ld e, $bb                                     ; $4571: $1e $bb
    sub [hl]                                      ; $4573: $96
    ld a, h                                       ; $4574: $7c
    ld l, c                                       ; $4575: $69
    rst $18                                       ; $4576: $df
    dec l                                         ; $4577: $2d
    dec l                                         ; $4578: $2d
    add sp, $1c                                   ; $4579: $e8 $1c
    ld h, h                                       ; $457b: $64
    ld d, b                                       ; $457c: $50
    dec b                                         ; $457d: $05
    pop de                                        ; $457e: $d1
    sub a                                         ; $457f: $97
    call Call_04c_4a9d                            ; $4580: $cd $9d $4a
    cp [hl]                                       ; $4583: $be
    add hl, de                                    ; $4584: $19
    rra                                           ; $4585: $1f
    ld d, a                                       ; $4586: $57
    dec sp                                        ; $4587: $3b
    ld l, c                                       ; $4588: $69
    ld b, [hl]                                    ; $4589: $46
    call c, Call_04c_681c                         ; $458a: $dc $1c $68
    or $dc                                        ; $458d: $f6 $dc
    sbc h                                         ; $458f: $9c
    jp hl                                         ; $4590: $e9


    dec b                                         ; $4591: $05
    db $dd                                        ; $4592: $dd
    jp hl                                         ; $4593: $e9


    and a                                         ; $4594: $a7
    ld l, a                                       ; $4595: $6f
    xor [hl]                                      ; $4596: $ae
    add hl, sp                                    ; $4597: $39
    rst $10                                       ; $4598: $d7
    pop de                                        ; $4599: $d1
    cp d                                          ; $459a: $ba
    cp c                                          ; $459b: $b9
    and b                                         ; $459c: $a0
    ld a, e                                       ; $459d: $7b
    pop hl                                        ; $459e: $e1
    sub l                                         ; $459f: $95
    add hl, bc                                    ; $45a0: $09
    jr jr_04c_452f                                ; $45a1: $18 $8c

    ccf                                           ; $45a3: $3f
    cpl                                           ; $45a4: $2f
    inc l                                         ; $45a5: $2c
    cpl                                           ; $45a6: $2f
    ld [hl-], a                                   ; $45a7: $32
    ret c                                         ; $45a8: $d8

    jr @+$3b                                      ; $45a9: $18 $39

    sub c                                         ; $45ab: $91
    ld hl, sp+$03                                 ; $45ac: $f8 $03
    ld d, a                                       ; $45ae: $57
    dec sp                                        ; $45af: $3b
    ld l, c                                       ; $45b0: $69
    ld b, [hl]                                    ; $45b1: $46
    call c, Call_04c_585c                         ; $45b2: $dc $5c $58
    ld b, c                                       ; $45b5: $41
    ld l, b                                       ; $45b6: $68
    ld l, $e8                                     ; $45b7: $2e $e8
    or b                                          ; $45b9: $b0
    xor h                                         ; $45ba: $ac
    ld b, $0a                                     ; $45bb: $06 $0a
    ld [$e336], a                                 ; $45bd: $ea $36 $e3
    jr c, jr_04c_4620                             ; $45c0: $38 $5e

    sbc e                                         ; $45c2: $9b
    add e                                         ; $45c3: $83
    adc h                                         ; $45c4: $8c
    inc c                                         ; $45c5: $0c
    jp nc, $15ce                                  ; $45c6: $d2 $ce $15

    pop af                                        ; $45c9: $f1
    rlca                                          ; $45ca: $07
    ld d, a                                       ; $45cb: $57
    dec sp                                        ; $45cc: $3b
    ld l, c                                       ; $45cd: $69
    ld b, [hl]                                    ; $45ce: $46
    call c, Call_04c_645c                         ; $45cf: $dc $5c $64
    or d                                          ; $45d2: $b2
    cp c                                          ; $45d3: $b9
    and b                                         ; $45d4: $a0
    ld d, e                                       ; $45d5: $53
    ld a, [de]                                    ; $45d6: $1a

Jump_04c_45d7:
    inc hl                                        ; $45d7: $23
    pop af                                        ; $45d8: $f1
    cp e                                          ; $45d9: $bb
    sbc $85                                       ; $45da: $de $85
    dec d                                         ; $45dc: $15
    ld a, b                                       ; $45dd: $78
    cp [hl]                                       ; $45de: $be
    dec bc                                        ; $45df: $0b
    xor e                                         ; $45e0: $ab
    ld b, l                                       ; $45e1: $45
    cp h                                          ; $45e2: $bc
    ld [$97d3], sp                                ; $45e3: $08 $d3 $97
    or $c6                                        ; $45e6: $f6 $c6
    dec hl                                        ; $45e8: $2b
    set 5, a                                      ; $45e9: $cb $ef
    ld de, $47ec                                  ; $45eb: $11 $ec $47
    ld l, e                                       ; $45ee: $6b
    ld [hl], e                                    ; $45ef: $73
    ld a, [bc]                                    ; $45f0: $0a
    and d                                         ; $45f1: $a2
    ld a, [hl-]                                   ; $45f2: $3a
    ld [hl], d                                    ; $45f3: $72
    ld c, $f2                                     ; $45f4: $0e $f2
    cp b                                          ; $45f6: $b8
    ld d, e                                       ; $45f7: $53
    db $10                                        ; $45f8: $10
    ld d, l                                       ; $45f9: $55
    ld [hl], $c5                                  ; $45fa: $36 $c5
    rra                                           ; $45fc: $1f
    ld d, a                                       ; $45fd: $57
    dec sp                                        ; $45fe: $3b
    ld l, c                                       ; $45ff: $69
    ld b, [hl]                                    ; $4600: $46
    call c, Call_04c_509c                         ; $4601: $dc $9c $50
    cp $6e                                        ; $4604: $fe $6e
    xor c                                         ; $4606: $a9
    cp c                                          ; $4607: $b9
    ld [hl], $c7                                  ; $4608: $36 $c7
    dec b                                         ; $460a: $05
    ld c, l                                       ; $460b: $4d

jr_04c_460c:
    push bc                                       ; $460c: $c5
    sub [hl]                                      ; $460d: $96
    cp [hl]                                       ; $460e: $be
    or h                                          ; $460f: $b4
    di                                            ; $4610: $f3
    rst $30                                       ; $4611: $f7
    add $0b                                       ; $4612: $c6 $0b
    sbc l                                         ; $4614: $9d
    sbc h                                         ; $4615: $9c
    ld c, b                                       ; $4616: $48
    adc h                                         ; $4617: $8c
    jp nz, $ceca                                  ; $4618: $c2 $ca $ce

    inc l                                         ; $461b: $2c
    ld e, l                                       ; $461c: $5d
    db $d3                                        ; $461d: $d3
    cp d                                          ; $461e: $ba
    cp c                                          ; $461f: $b9

jr_04c_4620:
    ldh [$3b], a                                  ; $4620: $e0 $3b
    dec sp                                        ; $4622: $3b
    dec sp                                        ; $4623: $3b
    ld e, d                                       ; $4624: $5a
    scf                                           ; $4625: $37
    rlca                                          ; $4626: $07
    sbc d                                         ; $4627: $9a
    dec a                                         ; $4628: $3d
    scf                                           ; $4629: $37
    push bc                                       ; $462a: $c5
    rra                                           ; $462b: $1f
    ld d, a                                       ; $462c: $57
    dec sp                                        ; $462d: $3b
    ld l, c                                       ; $462e: $69
    ld b, [hl]                                    ; $462f: $46
    call c, Call_04c_585c                         ; $4630: $dc $5c $58
    ld b, c                                       ; $4633: $41
    ld l, b                                       ; $4634: $68
    ld l, $e8                                     ; $4635: $2e $e8
    ld [de], a                                    ; $4637: $12
    db $dd                                        ; $4638: $dd
    sbc d                                         ; $4639: $9a
    inc sp                                        ; $463a: $33
    or a                                          ; $463b: $b7
    inc d                                         ; $463c: $14
    cp $0f                                        ; $463d: $fe $0f
    cp h                                          ; $463f: $bc
    ld hl, sp+$5d                                 ; $4640: $f8 $5d
    db $ed                                        ; $4642: $ed
    cp c                                          ; $4643: $b9
    add e                                         ; $4644: $83
    rst $38                                       ; $4645: $ff
    ld c, b                                       ; $4646: $48
    ret nz                                        ; $4647: $c0

    inc [hl]                                      ; $4648: $34
    add $ee                                       ; $4649: $c6 $ee
    ld d, h                                       ; $464b: $54
    sub d                                         ; $464c: $92
    cp h                                          ; $464d: $bc
    ret z                                         ; $464e: $c8

    adc h                                         ; $464f: $8c
    halt                                          ; $4650: $76
    jp Jump_000_390d                              ; $4651: $c3 $0d $39


    reti                                          ; $4654: $d9


    ld d, d                                       ; $4655: $52
    ld a, h                                       ; $4656: $7c
    nop                                           ; $4657: $00
    ld d, a                                       ; $4658: $57
    dec sp                                        ; $4659: $3b
    ld l, c                                       ; $465a: $69
    ld b, [hl]                                    ; $465b: $46
    call c, $a81c                                 ; $465c: $dc $1c $a8
    db $db                                        ; $465f: $db
    ld e, h                                       ; $4660: $5c
    ret nc                                        ; $4661: $d0

    add hl, bc                                    ; $4662: $09
    ld a, [de]                                    ; $4663: $1a
    inc bc                                        ; $4664: $03
    or a                                          ; $4665: $b7
    jp hl                                         ; $4666: $e9


    rst $10                                       ; $4667: $d7
    and $0a                                       ; $4668: $e6 $0a
    sbc e                                         ; $466a: $9b
    ret                                           ; $466b: $c9


    ld d, $fe                                     ; $466c: $16 $fe
    cp d                                          ; $466e: $ba
    xor l                                         ; $466f: $ad
    ld c, $8b                                     ; $4670: $0e $8b
    ld a, [hl]                                    ; $4672: $7e
    cpl                                           ; $4673: $2f
    cp h                                          ; $4674: $bc
    ld [hl+], a                                   ; $4675: $22
    ld a, [hl]                                    ; $4676: $7e
    ld d, a                                       ; $4677: $57
    ld a, e                                       ; $4678: $7b
    xor $e0                                       ; $4679: $ee $e0
    ccf                                           ; $467b: $3f
    ld [de], a                                    ; $467c: $12
    jr nc, jr_04c_460c                            ; $467d: $30 $8d

    or c                                          ; $467f: $b1
    dec sp                                        ; $4680: $3b
    sub l                                         ; $4681: $95
    inc h                                         ; $4682: $24
    cpl                                           ; $4683: $2f
    ld [hl-], a                                   ; $4684: $32
    and e                                         ; $4685: $a3
    db $dd                                        ; $4686: $dd
    ld [hl], b                                    ; $4687: $70
    ld b, e                                       ; $4688: $43
    ld c, [hl]                                    ; $4689: $4e
    or [hl]                                       ; $468a: $b6
    inc d                                         ; $468b: $14
    rra                                           ; $468c: $1f
    ld d, a                                       ; $468d: $57
    dec sp                                        ; $468e: $3b
    ld l, c                                       ; $468f: $69
    ld b, [hl]                                    ; $4690: $46
    call c, $a81c                                 ; $4691: $dc $1c $a8
    db $db                                        ; $4694: $db
    ld e, h                                       ; $4695: $5c
    ret nc                                        ; $4696: $d0

    add hl, bc                                    ; $4697: $09
    ld a, [de]                                    ; $4698: $1a
    inc bc                                        ; $4699: $03
    or a                                          ; $469a: $b7
    jp hl                                         ; $469b: $e9


    rst $10                                       ; $469c: $d7
    and $0a                                       ; $469d: $e6 $0a
    sbc e                                         ; $469f: $9b
    ret                                           ; $46a0: $c9


    ld d, $fe                                     ; $46a1: $16 $fe
    cp d                                          ; $46a3: $ba
    xor l                                         ; $46a4: $ad
    ld c, $8b                                     ; $46a5: $0e $8b
    ld a, [hl]                                    ; $46a7: $7e
    ld l, a                                       ; $46a8: $6f

jr_04c_46a9:
    cp h                                          ; $46a9: $bc
    ld [hl+], a                                   ; $46aa: $22
    ld a, [hl]                                    ; $46ab: $7e
    ld d, a                                       ; $46ac: $57
    ld a, e                                       ; $46ad: $7b
    xor $e0                                       ; $46ae: $ee $e0
    ccf                                           ; $46b0: $3f
    ld [de], a                                    ; $46b1: $12
    jr nc, @-$71                                  ; $46b2: $30 $8d

    or c                                          ; $46b4: $b1
    dec sp                                        ; $46b5: $3b
    sub l                                         ; $46b6: $95
    inc h                                         ; $46b7: $24
    cpl                                           ; $46b8: $2f
    ld [hl-], a                                   ; $46b9: $32
    and e                                         ; $46ba: $a3
    db $dd                                        ; $46bb: $dd
    ld [hl], b                                    ; $46bc: $70
    ld b, e                                       ; $46bd: $43
    ld c, [hl]                                    ; $46be: $4e
    or [hl]                                       ; $46bf: $b6
    inc d                                         ; $46c0: $14
    rra                                           ; $46c1: $1f
    ld c, a                                       ; $46c2: $4f
    ld [$dd05], a                                 ; $46c3: $ea $05 $dd
    dec de                                        ; $46c6: $1b
    xor a                                         ; $46c7: $af
    call z, $f92d                                 ; $46c8: $cc $2d $f9
    inc de                                        ; $46cb: $13
    ld b, $d9                                     ; $46cc: $06 $d9
    inc d                                         ; $46ce: $14
    cp a                                          ; $46cf: $bf
    daa                                           ; $46d0: $27
    ld b, l                                       ; $46d1: $45
    ld a, [bc]                                    ; $46d2: $0a
    ld e, $3a                                     ; $46d3: $1e $3a
    and a                                         ; $46d5: $a7
    ld l, d                                       ; $46d6: $6a
    inc c                                         ; $46d7: $0c
    and h                                         ; $46d8: $a4
    ld hl, sp+$3d                                 ; $46d9: $f8 $3d
    add hl, hl                                    ; $46db: $29
    ld d, d                                       ; $46dc: $52
    ldh a, [$d0]                                  ; $46dd: $f0 $d0
    add hl, sp                                    ; $46df: $39
    ld d, l                                       ; $46e0: $55
    ld h, e                                       ; $46e1: $63

jr_04c_46e2:
    jr nz, jr_04c_46a9                            ; $46e2: $20 $c5

    rra                                           ; $46e4: $1f
    cpl                                           ; $46e5: $2f
    sub [hl]                                      ; $46e6: $96
    rst $10                                       ; $46e7: $d7
    and $14                                       ; $46e8: $e6 $14
    inc a                                         ; $46ea: $3c
    db $fc                                        ; $46eb: $fc
    ld [hl], d                                    ; $46ec: $72
    ld a, [c]                                     ; $46ed: $f2
    ld b, a                                       ; $46ee: $47
    dec bc                                        ; $46ef: $0b
    ld a, [hl-]                                   ; $46f0: $3a
    cp $3c                                        ; $46f1: $fe $3c
    rst $18                                       ; $46f3: $df
    db $fd                                        ; $46f4: $fd
    ld h, h                                       ; $46f5: $64
    ld e, a                                       ; $46f6: $5f
    add hl, hl                                    ; $46f7: $29
    ld sp, $bcc1                                  ; $46f8: $31 $c1 $bc
    pop af                                        ; $46fb: $f1
    add d                                         ; $46fc: $82
    xor $85                                       ; $46fd: $ee $85
    ld d, a                                       ; $46ff: $57
    sub $dc                                       ; $4700: $d6 $dc
    dec de                                        ; $4702: $1b
    xor a                                         ; $4703: $af
    adc h                                         ; $4704: $8c
    ccf                                           ; $4705: $3f
    rst $08                                       ; $4706: $cf
    inc l                                         ; $4707: $2c
    rla                                           ; $4708: $17
    sub [hl]                                      ; $4709: $96
    rla                                           ; $470a: $17
    add hl, de                                    ; $470b: $19
    ld l, h                                       ; $470c: $6c
    adc h                                         ; $470d: $8c
    sbc h                                         ; $470e: $9c
    ld l, b                                       ; $470f: $68
    ld h, a                                       ; $4710: $67
    inc c                                         ; $4711: $0c
    ld [hl], d                                    ; $4712: $72
    ld [bc], a                                    ; $4713: $02
    ld b, $a0                                     ; $4714: $06 $a0
    xor [hl]                                      ; $4716: $ae
    and e                                         ; $4717: $a3
    cp l                                          ; $4718: $bd
    ld hl, sp+$03                                 ; $4719: $f8 $03
    sub a                                         ; $471b: $97
    push hl                                       ; $471c: $e5
    cp c                                          ; $471d: $b9
    and l                                         ; $471e: $a5
    add sp, -$29                                  ; $471f: $e8 $d7
    scf                                           ; $4721: $37
    daa                                           ; $4722: $27
    ld d, h                                       ; $4723: $54
    sub d                                         ; $4724: $92
    add e                                         ; $4725: $83
    db $10                                        ; $4726: $10
    cpl                                           ; $4727: $2f
    add sp, -$44                                  ; $4728: $e8 $bc
    pop af                                        ; $472a: $f1
    add d                                         ; $472b: $82
    adc [hl]                                      ; $472c: $8e
    ld sp, $d5f0                                  ; $472d: $31 $f0 $d5
    jr @-$36                                      ; $4730: $18 $c8

    ld h, c                                       ; $4732: $61
    inc d                                         ; $4733: $14
    add hl, sp                                    ; $4734: $39
    ld c, [hl]                                    ; $4735: $4e
    ld c, [hl]                                    ; $4736: $4e
    ld l, b                                       ; $4737: $68
    ld a, [c]                                     ; $4738: $f2
    call c, Call_04c_69ff                         ; $4739: $dc $ff $69
    and [hl]                                      ; $473c: $a6
    ld [hl], l                                    ; $473d: $75
    rst $20                                       ; $473e: $e7
    ld a, [hl]                                    ; $473f: $7e
    adc d                                         ; $4740: $8a
    sbc d                                         ; $4741: $9a
    ld [hl], e                                    ; $4742: $73
    dec l                                         ; $4743: $2d
    rst $00                                       ; $4744: $c7
    rst $18                                       ; $4745: $df
    dec l                                         ; $4746: $2d
    ld c, c                                       ; $4747: $49
    ld [hl-], a                                   ; $4748: $32
    ld a, b                                       ; $4749: $78
    ret z                                         ; $474a: $c8

    ld [c], a                                     ; $474b: $e2
    rrca                                          ; $474c: $0f
    ld d, a                                       ; $474d: $57
    ld a, e                                       ; $474e: $7b
    xor $e0                                       ; $474f: $ee $e0
    ccf                                           ; $4751: $3f
    ld [de], a                                    ; $4752: $12
    jr nc, jr_04c_46e2                            ; $4753: $30 $8d

    or c                                          ; $4755: $b1
    ld [hl], e                                    ; $4756: $73
    dec l                                         ; $4757: $2d
    daa                                           ; $4758: $27
    call $9b88                                    ; $4759: $cd $88 $9b
    adc e                                         ; $475c: $8b
    call z, Call_000_2f24                         ; $475d: $cc $24 $2f
    add sp, $30                                   ; $4760: $e8 $30
    adc d                                         ; $4762: $8a
    inc e                                         ; $4763: $1c
    daa                                           ; $4764: $27
    rst $20                                       ; $4765: $e7
    cp $4f                                        ; $4766: $fe $4f
    inc sp                                        ; $4768: $33
    xor l                                         ; $4769: $ad
    cp e                                          ; $476a: $bb
    call nz, Call_04c_5df2                        ; $476b: $c4 $f2 $5d
    sub c                                         ; $476e: $91
    ld bc, $f054                                  ; $476f: $01 $54 $f0
    or b                                          ; $4772: $b0
    inc sp                                        ; $4773: $33
    ld c, e                                       ; $4774: $4b
    rst $10                                       ; $4775: $d7
    or h                                          ; $4776: $b4
    ld l, [hl]                                    ; $4777: $6e
    adc [hl]                                      ; $4778: $8e
    ld sp, $4df0                                  ; $4779: $31 $f0 $4d
    or l                                          ; $477c: $b5
    ld [hl], $27                                  ; $477d: $36 $27
    ret                                           ; $477f: $c9


    ldh [rNR42], a                                ; $4780: $e0 $21
    ld b, a                                       ; $4782: $47
    ld h, l                                       ; $4783: $65
    ld c, h                                       ; $4784: $4c
    db $10                                        ; $4785: $10
    rra                                           ; $4786: $1f
    cpl                                           ; $4787: $2f
    sbc c                                         ; $4788: $99
    scf                                           ; $4789: $37
    ld e, [hl]                                    ; $478a: $5e
    ret nc                                        ; $478b: $d0

    ld sp, hl                                     ; $478c: $f9
    sbc [hl]                                      ; $478d: $9e
    dec sp                                        ; $478e: $3b
    ld l, c                                       ; $478f: $69
    ld b, [hl]                                    ; $4790: $46
    call c, Call_04c_585c                         ; $4791: $dc $5c $58
    add c                                         ; $4794: $81
    rlca                                          ; $4795: $07
    ld a, [bc]                                    ; $4796: $0a
    rst $38                                       ; $4797: $ff
    sub c                                         ; $4798: $91
    add b                                         ; $4799: $80
    reti                                          ; $479a: $d9


    sub d                                         ; $479b: $92
    cp a                                          ; $479c: $bf
    ret c                                         ; $479d: $d8

    add hl, de                                    ; $479e: $19
    rrc e                                         ; $479f: $cb $0b
    ld a, [hl-]                                   ; $47a1: $3a
    ld l, $68                                     ; $47a2: $2e $68
    ld a, [hl+]                                   ; $47a4: $2a
    or [hl]                                       ; $47a5: $b6
    db $f4                                        ; $47a6: $f4
    and l                                         ; $47a7: $a5
    sub l                                         ; $47a8: $95
    ld d, [hl]                                    ; $47a9: $56
    ld [bc], a                                    ; $47aa: $02
    rla                                           ; $47ab: $17
    dec hl                                        ; $47ac: $2b
    add c                                         ; $47ad: $81
    sbc l                                         ; $47ae: $9d
    ld c, a                                       ; $47af: $4f
    ld h, $e7                                     ; $47b0: $26 $e7
    jr nz, @-$37                                  ; $47b2: $20 $c7

    ld [hl], c                                    ; $47b4: $71
    ld a, h                                       ; $47b5: $7c
    nop                                           ; $47b6: $00
    rst $28                                       ; $47b7: $ef
    ld a, l                                       ; $47b8: $7d
    rst $00                                       ; $47b9: $c7
    scf                                           ; $47ba: $37
    rst $20                                       ; $47bb: $e7
    ld a, e                                       ; $47bc: $7b
    xor $a4                                       ; $47bd: $ee $a4
    add hl, de                                    ; $47bf: $19
    ld [hl], c                                    ; $47c0: $71
    ld [hl], e                                    ; $47c1: $73
    ld b, c                                       ; $47c2: $41
    and a                                         ; $47c3: $a7
    jr nz, @-$54                                  ; $47c4: $20 $aa

    inc hl                                        ; $47c6: $23
    sbc e                                         ; $47c7: $9b
    ld [hl], e                                    ; $47c8: $73
    ld e, e                                       ; $47c9: $5b
    dec a                                         ; $47ca: $3d
    ld c, c                                       ; $47cb: $49
    ld b, $0f                                     ; $47cc: $06 $0f
    add hl, de                                    ; $47ce: $19
    ld b, c                                       ; $47cf: $41

jr_04c_47d0:
    ld l, c                                       ; $47d0: $69
    sub c                                         ; $47d1: $91
    ret                                           ; $47d2: $c9


    and $95                                       ; $47d3: $e6 $95
    inc bc                                        ; $47d5: $03
    ld d, a                                       ; $47d6: $57
    dec sp                                        ; $47d7: $3b
    ld l, c                                       ; $47d8: $69
    ld b, [hl]                                    ; $47d9: $46
    call c, Call_04c_585c                         ; $47da: $dc $5c $58
    ld b, c                                       ; $47dd: $41
    ld l, b                                       ; $47de: $68
    adc $77                                       ; $47df: $ce $77
    ld a, [bc]                                    ; $47e1: $0a
    ld e, $9a                                     ; $47e2: $1e $9a
    rst $28                                       ; $47e4: $ef
    inc a                                         ; $47e5: $3c
    halt                                          ; $47e6: $76
    ld b, c                                       ; $47e7: $41
    rst $00                                       ; $47e8: $c7
    jr @-$06                                      ; $47e9: $18 $f8

    and [hl]                                      ; $47eb: $a6
    ld e, d                                       ; $47ec: $5a
    sbc e                                         ; $47ed: $9b
    sub e                                         ; $47ee: $93
    ld h, h                                       ; $47ef: $64
    ldh a, [$90]                                  ; $47f0: $f0 $90
    and e                                         ; $47f2: $a3
    ld [hl-], a                                   ; $47f3: $32
    ld h, $98                                     ; $47f4: $26 $98
    ld e, e                                       ; $47f6: $5b
    ld a, [$ce9f]                                 ; $47f7: $fa $9f $ce
    ld h, [hl]                                    ; $47fa: $66
    sub d                                         ; $47fb: $92
    cpl                                           ; $47fc: $2f
    sub $fc                                       ; $47fd: $d6 $fc
    inc d                                         ; $47ff: $14
    call $852d                                    ; $4800: $cd $2d $85
    rst $38                                       ; $4803: $ff
    inc bc                                        ; $4804: $03
    rra                                           ; $4805: $1f
    rra                                           ; $4806: $1f
    ld d, a                                       ; $4807: $57
    rst $38                                       ; $4808: $ff
    and a                                         ; $4809: $a7
    ld sp, hl                                     ; $480a: $f9
    ld c, [hl]                                    ; $480b: $4e
    sbc d                                         ; $480c: $9a
    ld de, $b5cf                                  ; $480d: $11 $cf $b5
    call c, $11a5                                 ; $4810: $dc $a5 $11
    adc c                                         ; $4813: $89
    reti                                          ; $4814: $d9


    dec hl                                        ; $4815: $2b
    sbc a                                         ; $4816: $9f
    cp c                                          ; $4817: $b9
    or h                                          ; $4818: $b4
    or b                                          ; $4819: $b0
    jp nz, Jump_000_2e82                          ; $481a: $c2 $82 $2e

    sbc l                                         ; $481d: $9d
    sbc c                                         ; $481e: $99
    sub $1d                                       ; $481f: $d6 $1d
    ld a, a                                       ; $4821: $7f
    or a                                          ; $4822: $b7
    and h                                         ; $4823: $a4
    jr nz, jr_04c_47d0                            ; $4824: $20 $aa

    inc hl                                        ; $4826: $23
    sbc e                                         ; $4827: $9b
    ei                                            ; $4828: $fb
    ret nc                                        ; $4829: $d0

    jp nz, $c2f2                                  ; $482a: $c2 $f2 $c2

    rst $38                                       ; $482d: $ff
    add c                                         ; $482e: $81
    ld [c], a                                     ; $482f: $e2
    ld l, $d1                                     ; $4830: $2e $d1
    xor l                                         ; $4832: $ad
    add hl, sp                                    ; $4833: $39
    ld l, e                                       ; $4834: $6b
    adc $77                                       ; $4835: $ce $77
    jp nc, $b88c                                  ; $4837: $d2 $8c $b8

    add hl, sp                                    ; $483a: $39
    call z, $dd05                                 ; $483b: $cc $05 $dd
    or e                                          ; $483e: $b3
    ld e, a                                       ; $483f: $5f
    db $e3                                        ; $4840: $e3
    rst $18                                       ; $4841: $df
    adc e                                         ; $4842: $8b
    ld b, $70                                     ; $4843: $06 $70
    ld h, a                                       ; $4845: $67
    inc c                                         ; $4846: $0c
    ld [hl], d                                    ; $4847: $72
    rra                                           ; $4848: $1f
    sbc d                                         ; $4849: $9a
    call nc, Call_04c_6875                        ; $484a: $d4 $75 $68
    and b                                         ; $484d: $a0
    ld [$b713], a                                 ; $484e: $ea $13 $b7
    db $e4                                        ; $4851: $e4
    rlca                                          ; $4852: $07
    sub l                                         ; $4853: $95
    and [hl]                                      ; $4854: $a6
    jp z, $0fe2                                   ; $4855: $ca $e2 $0f

    rst $10                                       ; $4858: $d7
    cp e                                          ; $4859: $bb
    or b                                          ; $485a: $b0
    ld [bc], a                                    ; $485b: $02
    xor a                                         ; $485c: $af
    call $ffb9                                    ; $485d: $cd $b9 $ff
    db $d3                                        ; $4860: $d3
    xor c                                         ; $4861: $a9
    inc b                                         ; $4862: $04
    call $9d2d                                    ; $4863: $cd $2d $9d
    ld a, $b9                                     ; $4866: $3e $b9
    call $e379                                    ; $4868: $cd $79 $e3
    ld c, c                                       ; $486b: $49
    res 3, l                                      ; $486c: $cb $9d
    ld a, $f9                                     ; $486e: $3e $f9
    and $1c                                       ; $4870: $e6 $1c
    ld h, h                                       ; $4872: $64
    ld d, b                                       ; $4873: $50
    ld [hl], d                                    ; $4874: $72
    inc d                                         ; $4875: $14
    rst $00                                       ; $4876: $c7
    ld a, e                                       ; $4877: $7b
    add hl, sp                                    ; $4878: $39
    ld e, d                                       ; $4879: $5a
    ret nc                                        ; $487a: $d0

    ld b, l                                       ; $487b: $45
    push hl                                       ; $487c: $e5
    or l                                          ; $487d: $b5
    add hl, sp                                    ; $487e: $39
    rst $30                                       ; $487f: $f7
    ld a, a                                       ; $4880: $7f
    ld a, [hl-]                                   ; $4881: $3a
    sub l                                         ; $4882: $95
    and b                                         ; $4883: $a0
    add hl, sp                                    ; $4884: $39
    ret z                                         ; $4885: $c8

    db $e3                                        ; $4886: $e3
    adc [hl]                                      ; $4887: $8e
    inc e                                         ; $4888: $1c
    push bc                                       ; $4889: $c5
    call $798b                                    ; $488a: $cd $8b $79
    ld [hl], d                                    ; $488d: $72
    db $e4                                        ; $488e: $e4
    add d                                         ; $488f: $82
    xor $43                                       ; $4890: $ee $43
    ld a, e                                       ; $4892: $7b
    sbc l                                         ; $4893: $9d
    adc l                                         ; $4894: $8d
    ld a, b                                       ; $4895: $78
    ccf                                           ; $4896: $3f
    ld e, d                                       ; $4897: $5a
    ld e, b                                       ; $4898: $58
    ld e, [hl]                                    ; $4899: $5e
    ld hl, sp-$41                                 ; $489a: $f8 $bf
    ret z                                         ; $489c: $c8

    ld b, a                                       ; $489d: $47
    ld c, l                                       ; $489e: $4d
    ld h, a                                       ; $489f: $67
    rra                                           ; $48a0: $1f
    ld a, [de]                                    ; $48a1: $1a
    ld [hl], a                                    ; $48a2: $77
    db $f4                                        ; $48a3: $f4
    dec bc                                        ; $48a4: $0b
    dec [hl]                                      ; $48a5: $35
    rst $10                                       ; $48a6: $d7
    sbc h                                         ; $48a7: $9c
    xor d                                         ; $48a8: $aa
    ld l, $9c                                     ; $48a9: $2e $9c
    ld e, e                                       ; $48ab: $5b
    ld e, d                                       ; $48ac: $5a
    ret nc                                        ; $48ad: $d0

    cp l                                          ; $48ae: $bd
    adc $c6                                       ; $48af: $ce $c6
    adc [hl]                                      ; $48b1: $8e
    cp d                                          ; $48b2: $ba
    ei                                            ; $48b3: $fb
    ld c, l                                       ; $48b4: $4d
    ld h, h                                       ; $48b5: $64
    ld [hl], d                                    ; $48b6: $72
    inc d                                         ; $48b7: $14
    ld h, e                                       ; $48b8: $63
    add d                                         ; $48b9: $82
    ld a, b                                       ; $48ba: $78
    ld c, a                                       ; $48bb: $4f
    ld l, d                                       ; $48bc: $6a
    or l                                          ; $48bd: $b5
    and b                                         ; $48be: $a0
    dec bc                                        ; $48bf: $0b
    cp d                                          ; $48c0: $ba
    xor b                                         ; $48c1: $a8
    cp h                                          ; $48c2: $bc
    or b                                          ; $48c3: $b0
    inc a                                         ; $48c4: $3c
    rst $30                                       ; $48c5: $f7
    ld a, a                                       ; $48c6: $7f
    ld a, [hl-]                                   ; $48c7: $3a
    sub l                                         ; $48c8: $95
    and b                                         ; $48c9: $a0
    sbc l                                         ; $48ca: $9d
    ld d, b                                       ; $48cb: $50
    di                                            ; $48cc: $f3
    inc e                                         ; $48cd: $1c
    ld h, h                                       ; $48ce: $64
    ld [hl], d                                    ; $48cf: $72
    inc d                                         ; $48d0: $14
    scf                                           ; $48d1: $37
    cpl                                           ; $48d2: $2f
    and [hl]                                      ; $48d3: $a6
    xor d                                         ; $48d4: $aa
    dec bc                                        ; $48d5: $0b
    rst $20                                       ; $48d6: $e7
    sub [hl]                                      ; $48d7: $96
    ld d, $74                                     ; $48d8: $16 $74
    cp [hl]                                       ; $48da: $be
    add e                                         ; $48db: $83
    ld [hl], h                                    ; $48dc: $74
    push hl                                       ; $48dd: $e5
    ld a, $b4                                     ; $48de: $3e $b4
    ld c, e                                       ; $48e0: $4b
    inc hl                                        ; $48e1: $23
    ld [de], a                                    ; $48e2: $12
    ld [hl], e                                    ; $48e3: $73
    sbc e                                         ; $48e4: $9b
    ld a, [de]                                    ; $48e5: $1a
    db $f4                                        ; $48e6: $f4
    adc c                                         ; $48e7: $89
    xor c                                         ; $48e8: $a9
    cp h                                          ; $48e9: $bc
    sub e                                         ; $48ea: $93
    add hl, de                                    ; $48eb: $19
    dec l                                         ; $48ec: $2d
    add sp, -$3e                                  ; $48ed: $e8 $c2
    ld a, [c]                                     ; $48ef: $f2
    call c, $e9ff                                 ; $48f0: $dc $ff $e9
    ld d, h                                       ; $48f3: $54
    add d                                         ; $48f4: $82
    halt                                          ; $48f5: $76
    ld b, d                                       ; $48f6: $42
    call Call_000_2b0b                            ; $48f7: $cd $0b $2b
    ld [$35cd], sp                                ; $48fa: $08 $cd $35
    rst $20                                       ; $48fd: $e7
    ret                                           ; $48fe: $c9


    sub c                                         ; $48ff: $91
    dec bc                                        ; $4900: $0b
    cp d                                          ; $4901: $ba
    rrca                                          ; $4902: $0f
    call Call_04c_4f77                            ; $4903: $cd $77 $4f
    sbc $25                                       ; $4906: $de $25
    di                                            ; $4908: $f3
    ld b, e                                       ; $4909: $43
    pop af                                        ; $490a: $f1
    xor [hl]                                      ; $490b: $ae
    push hl                                       ; $490c: $e5
    inc a                                         ; $490d: $3c
    ld a, [c]                                     ; $490e: $f2
    inc d                                         ; $490f: $14
    inc a                                         ; $4910: $3c
    inc l                                         ; $4911: $2c
    ld b, l                                       ; $4912: $45
    sub e                                         ; $4913: $93
    ld c, [hl]                                    ; $4914: $4e
    ld l, $e8                                     ; $4915: $2e $e8
    cp $97                                        ; $4917: $fe $97
    jp Jump_04c_7d14                              ; $4919: $c3 $14 $7d


    adc d                                         ; $491c: $8a
    adc h                                         ; $491d: $8c
    or c                                          ; $491e: $b1
    ld [hl], e                                    ; $491f: $73
    ld sp, $737d                                  ; $4920: $31 $7d $73
    rst $18                                       ; $4923: $df
    dec l                                         ; $4924: $2d
    db $ed                                        ; $4925: $ed
    ld [hl], l                                    ; $4926: $75
    ld [hl], $46                                  ; $4927: $36 $46
    push bc                                       ; $4929: $c5
    ld e, b                                       ; $492a: $58
    reti                                          ; $492b: $d9


    cp h                                          ; $492c: $bc
    ret c                                         ; $492d: $d8

    ld c, e                                       ; $492e: $4b
    add sp, -$2a                                  ; $492f: $e8 $d6
    sbc h                                         ; $4931: $9c
    adc e                                         ; $4932: $8b
    dec a                                         ; $4933: $3d
    ld b, e                                       ; $4934: $43
    xor [hl]                                      ; $4935: $ae
    ld de, $5826                                  ; $4936: $11 $26 $58
    ld [hl], e                                    ; $4939: $73
    xor a                                         ; $493a: $af
    and e                                         ; $493b: $a3
    sub h                                         ; $493c: $94
    push de                                       ; $493d: $d5
    ld a, [hl+]                                   ; $493e: $2a
    ld a, $00                                     ; $493f: $3e $00
    cpl                                           ; $4941: $2f
    ld b, a                                       ; $4942: $47
    ld l, e                                       ; $4943: $6b
    ld [hl], e                                    ; $4944: $73
    xor $ff                                       ; $4945: $ee $ff
    ld [hl], h                                    ; $4947: $74
    ld a, [hl+]                                   ; $4948: $2a
    ld b, c                                       ; $4949: $41
    db $e3                                        ; $494a: $e3
    ld c, $54                                     ; $494b: $0e $54
    jr nz, jr_04c_4956                            ; $494d: $20 $07

    ld h, l                                       ; $494f: $65
    di                                            ; $4950: $f3
    ld h, d                                       ; $4951: $62
    sbc [hl]                                      ; $4952: $9e
    inc e                                         ; $4953: $1c
    cp c                                          ; $4954: $b9
    and b                                         ; $4955: $a0

jr_04c_4956:
    ei                                            ; $4956: $fb
    ret nc                                        ; $4957: $d0

    ld e, [hl]                                    ; $4958: $5e
    ld h, a                                       ; $4959: $67
    inc hl                                        ; $495a: $23
    sbc $8f                                       ; $495b: $de $8f
    ld d, $96                                     ; $495d: $16 $96
    rla                                           ; $495f: $17
    cp $2f                                        ; $4960: $fe $2f
    ld a, [c]                                     ; $4962: $f2
    ld d, c                                       ; $4963: $51
    db $d3                                        ; $4964: $d3
    reti                                          ; $4965: $d9


    add a                                         ; $4966: $87
    add $1d                                       ; $4967: $c6 $1d
    db $fd                                        ; $4969: $fd
    ld b, d                                       ; $496a: $42
    call $af78                                    ; $496b: $cd $78 $af
    ld d, a                                       ; $496e: $57
    rla                                           ; $496f: $17
    adc $2d                                       ; $4970: $ce $2d
    call $b92d                                    ; $4972: $cd $2d $b9
    ld e, a                                       ; $4975: $5f
    add e                                         ; $4976: $83
    and [hl]                                      ; $4977: $a6
    jp c, $ff5b                                   ; $4978: $da $5b $ff

    db $d3                                        ; $497b: $d3
    xor c                                         ; $497c: $a9
    inc b                                         ; $497d: $04
    db $ed                                        ; $497e: $ed
    ld b, a                                       ; $497f: $47
    db $e3                                        ; $4980: $e3
    ld c, [hl]                                    ; $4981: $4e
    xor b                                         ; $4982: $a8
    call nz, Call_000_3640                        ; $4983: $c4 $40 $36
    ld [hl], a                                    ; $4986: $77
    xor d                                         ; $4987: $aa
    sub [hl]                                      ; $4988: $96
    sbc l                                         ; $4989: $9d
    ei                                            ; $498a: $fb
    ccf                                           ; $498b: $3f
    sbc l                                         ; $498c: $9d
    ld c, d                                       ; $498d: $4a
    ld d, b                                       ; $498e: $50
    ld [hl], e                                    ; $498f: $73
    ld b, c                                       ; $4990: $41
    ld h, a                                       ; $4991: $67
    ld e, d                                       ; $4992: $5a
    scf                                           ; $4993: $37
    ld [hl-], a                                   ; $4994: $32
    db $d3                                        ; $4995: $d3
    dec bc                                        ; $4996: $0b
    dec hl                                        ; $4997: $2b
    ld [hl], b                                    ; $4998: $70
    cp h                                          ; $4999: $bc
    rst $10                                       ; $499a: $d7
    xor e                                         ; $499b: $ab
    dec bc                                        ; $499c: $0b
    rst $20                                       ; $499d: $e7
    sub [hl]                                      ; $499e: $96
    ld d, $96                                     ; $499f: $16 $96
    rst $20                                       ; $49a1: $e7
    cp $4f                                        ; $49a2: $fe $4f
    and a                                         ; $49a4: $a7
    ld [de], a                                    ; $49a5: $12
    inc [hl]                                      ; $49a6: $34
    ld l, a                                       ; $49a7: $6f
    cp h                                          ; $49a8: $bc
    and b                                         ; $49a9: $a0
    dec sp                                        ; $49aa: $3b
    and c                                         ; $49ab: $a1
    and $81                                       ; $49ac: $e6 $81
    ld a, [bc]                                    ; $49ae: $0a
    db $e4                                        ; $49af: $e4
    and b                                         ; $49b0: $a0
    ld l, h                                       ; $49b1: $6c
    xor [hl]                                      ; $49b2: $ae
    add hl, sp                                    ; $49b3: $39
    ld c, a                                       ; $49b4: $4f
    adc [hl]                                      ; $49b5: $8e
    call c, $e687                                 ; $49b6: $dc $87 $e6
    cp e                                          ; $49b9: $bb
    daa                                           ; $49ba: $27
    rst $28                                       ; $49bb: $ef
    sub d                                         ; $49bc: $92
    ld sp, hl                                     ; $49bd: $f9
    and c                                         ; $49be: $a1
    ld hl, sp+$00                                 ; $49bf: $f8 $00
    ld c, a                                       ; $49c1: $4f
    ld l, d                                       ; $49c2: $6a

Jump_04c_49c3:
    db $dd                                        ; $49c3: $dd
    pop af                                        ; $49c4: $f1
    ld [hl], a                                    ; $49c5: $77
    ld c, e                                       ; $49c6: $4b
    sbc [hl]                                      ; $49c7: $9e
    inc l                                         ; $49c8: $2c
    ld h, l                                       ; $49c9: $65
    ld [hl], e                                    ; $49ca: $73
    and a                                         ; $49cb: $a7
    ld c, a                                       ; $49cc: $4f
    cp [hl]                                       ; $49cd: $be
    add hl, sp                                    ; $49ce: $39
    call z, Call_04c_72c9                         ; $49cf: $cc $c9 $72
    or l                                          ; $49d2: $b5
    ld a, [de]                                    ; $49d3: $1a
    xor b                                         ; $49d4: $a8
    ld b, b                                       ; $49d5: $40
    rst $18                                       ; $49d6: $df
    add hl, sp                                    ; $49d7: $39
    dec [hl]                                      ; $49d8: $35
    db $e3                                        ; $49d9: $e3
    dec a                                         ; $49da: $3d
    xor c                                         ; $49db: $a9
    push de                                       ; $49dc: $d5
    add d                                         ; $49dd: $82
    ld l, $e8                                     ; $49de: $2e $e8
    sbc [hl]                                      ; $49e0: $9e
    cpl                                           ; $49e1: $2f
    ld d, a                                       ; $49e2: $57
    ld c, a                                       ; $49e3: $4f
    ld d, l                                       ; $49e4: $55
    rla                                           ; $49e5: $17
    adc $2d                                       ; $49e6: $ce $2d
    pop af                                        ; $49e8: $f1
    sbc d                                         ; $49e9: $9a
    inc bc                                        ; $49ea: $03
    dec d                                         ; $49eb: $15
    ret z                                         ; $49ec: $c8

    ld b, c                                       ; $49ed: $41
    ret                                           ; $49ee: $c9


    rla                                           ; $49ef: $17
    ld [hl], e                                    ; $49f0: $73
    ld c, e                                       ; $49f1: $4b
    ld a, [bc]                                    ; $49f2: $0a
    ld e, $62                                     ; $49f3: $1e $62
    sub b                                         ; $49f5: $90
    cp h                                          ; $49f6: $bc
    jp nc, $9cda                                  ; $49f7: $d2 $da $9c

    add d                                         ; $49fa: $82
    add a                                         ; $49fb: $87
    and l                                         ; $49fc: $a5
    ld l, b                                       ; $49fd: $68
    ld d, c                                       ; $49fe: $51
    ld a, c                                       ; $49ff: $79
    and [hl]                                      ; $4a00: $a6
    ld [hl], l                                    ; $4a01: $75
    add a                                         ; $4a02: $87
    add hl, bc                                    ; $4a03: $09
    xor b                                         ; $4a04: $a8
    ld e, $6f                                     ; $4a05: $1e $6f
    ld c, d                                       ; $4a07: $4a
    ld l, [hl]                                    ; $4a08: $6e
    adc $63                                       ; $4a09: $ce $63
    rla                                           ; $4a0b: $17
    ld [hl], h                                    ; $4a0c: $74
    ld h, c                                       ; $4a0d: $61
    dec b                                         ; $4a0e: $05
    adc [hl]                                      ; $4a0f: $8e
    rst $30                                       ; $4a10: $f7
    ld a, d                                       ; $4a11: $7a
    ld [hl], l                                    ; $4a12: $75
    pop hl                                        ; $4a13: $e1
    call c, Call_04c_7cd2                         ; $4a14: $dc $d2 $7c
    add a                                         ; $4a17: $87
    add hl, bc                                    ; $4a18: $09
    xor b                                         ; $4a19: $a8
    ld e, $6f                                     ; $4a1a: $1e $6f
    ld c, d                                       ; $4a1c: $4a
    ld l, [hl]                                    ; $4a1d: $6e
    adc $63                                       ; $4a1e: $ce $63
    rla                                           ; $4a20: $17
    ld [hl], h                                    ; $4a21: $74
    daa                                           ; $4a22: $27
    call nc, Call_04c_503c                        ; $4a23: $d4 $3c $50
    add c                                         ; $4a26: $81
    inc e                                         ; $4a27: $1c
    sub h                                         ; $4a28: $94
    call $e735                                    ; $4a29: $cd $35 $e7
    ret                                           ; $4a2c: $c9


    sub c                                         ; $4a2d: $91
    ld [hl], e                                    ; $4a2e: $73
    ld c, e                                       ; $4a2f: $4b
    xor $d7                                       ; $4a30: $ee $d7
    and b                                         ; $4a32: $a0
    xor c                                         ; $4a33: $a9
    or $a1                                        ; $4a34: $f6 $a1
    cp l                                          ; $4a36: $bd
    adc $46                                       ; $4a37: $ce $46
    cp h                                          ; $4a39: $bc
    rra                                           ; $4a3a: $1f
    db $ed                                        ; $4a3b: $ed
    call c, $1771                                 ; $4a3c: $dc $71 $17
    dec [hl]                                      ; $4a3f: $35
    ld b, c                                       ; $4a40: $41
    inc sp                                        ; $4a41: $33
    ld a, $00                                     ; $4a42: $3e $00
    rst $10                                       ; $4a44: $d7
    cp e                                          ; $4a45: $bb
    or b                                          ; $4a46: $b0
    ld [bc], a                                    ; $4a47: $02
    xor a                                         ; $4a48: $af
    call Call_04c_4b5d                            ; $4a49: $cd $5d $4b
    ld b, b                                       ; $4a4c: $40
    push af                                       ; $4a4d: $f5
    ld a, b                                       ; $4a4e: $78
    ld d, e                                       ; $4a4f: $53
    ld [hl], d                                    ; $4a50: $72
    ld [hl], e                                    ; $4a51: $73
    rst $08                                       ; $4a52: $cf
    inc h                                         ; $4a53: $24
    ld e, h                                       ; $4a54: $5c
    inc c                                         ; $4a55: $0c
    ld e, h                                       ; $4a56: $5c
    ld a, a                                       ; $4a57: $7f
    xor b                                         ; $4a58: $a8
    ld e, $1b                                     ; $4a59: $1e $1b
    rst $28                                       ; $4a5b: $ef
    dec h                                         ; $4a5c: $25
    ld h, a                                       ; $4a5d: $67
    jp nc, Jump_000_05c9                          ; $4a5e: $d2 $c9 $05

    dec e                                         ; $4a61: $1d
    ld a, a                                       ; $4a62: $7f
    or a                                          ; $4a63: $b7
    db $e4                                        ; $4a64: $e4
    ret                                           ; $4a65: $c9


    ld d, d                                       ; $4a66: $52
    ld c, $13                                     ; $4a67: $0e $13
    ld d, b                                       ; $4a69: $50
    dec a                                         ; $4a6a: $3d
    sbc $94                                       ; $4a6b: $de $94
    call c, $5b9c                                 ; $4a6d: $dc $9c $5b
    ld a, [hl-]                                   ; $4a70: $3a
    ld e, e                                       ; $4a71: $5b
    ld d, h                                       ; $4a72: $54
    db $dd                                        ; $4a73: $dd
    ld e, h                                       ; $4a74: $5c
    ld [hl], e                                    ; $4a75: $73
    db $fc                                        ; $4a76: $fc
    db $dd                                        ; $4a77: $dd
    sub d                                         ; $4a78: $92
    daa                                           ; $4a79: $27
    ld c, e                                       ; $4a7a: $4b
    ld c, c                                       ; $4a7b: $49
    add l                                         ; $4a7c: $85
    rla                                           ; $4a7d: $17
    ld [c], a                                     ; $4a7e: $e2
    and $84                                       ; $4a7f: $e6 $84
    sbc [hl]                                      ; $4a81: $9e
    adc h                                         ; $4a82: $8c
    sbc d                                         ; $4a83: $9a
    pop af                                        ; $4a84: $f1
    xor [hl]                                      ; $4a85: $ae
    sub d                                         ; $4a86: $92
    inc hl                                        ; $4a87: $23
    rst $30                                       ; $4a88: $f7
    and c                                         ; $4a89: $a1
    cp l                                          ; $4a8a: $bd
    adc $46                                       ; $4a8b: $ce $46
    cp h                                          ; $4a8d: $bc
    and $54                                       ; $4a8e: $e6 $54
    ld [hl], l                                    ; $4a90: $75
    pop hl                                        ; $4a91: $e1
    call c, $dcd2                                 ; $4a92: $dc $d2 $dc
    sub d                                         ; $4a95: $92
    ei                                            ; $4a96: $fb
    dec [hl]                                      ; $4a97: $35
    ld l, b                                       ; $4a98: $68
    xor d                                         ; $4a99: $aa
    add hl, sp                                    ; $4a9a: $39
    ret z                                         ; $4a9b: $c8

    dec bc                                        ; $4a9c: $0b

Call_04c_4a9d:
    rrc e                                         ; $4a9d: $cb $0b
    rst $38                                       ; $4a9f: $ff
    rla                                           ; $4aa0: $17
    ld sp, hl                                     ; $4aa1: $f9
    xor b                                         ; $4aa2: $a8
    jp hl                                         ; $4aa3: $e9


    call z, $d777                                 ; $4aa4: $cc $77 $d7
    ld [de], a                                    ; $4aa7: $12
    ld d, b                                       ; $4aa8: $50
    dec a                                         ; $4aa9: $3d
    sbc $94                                       ; $4aaa: $de $94
    call c, $33dc                                 ; $4aac: $dc $dc $33
    add hl, bc                                    ; $4aaf: $09
    rla                                           ; $4ab0: $17
    inc bc                                        ; $4ab1: $03
    rst $10                                       ; $4ab2: $d7
    rra                                           ; $4ab3: $1f
    xor d                                         ; $4ab4: $aa
    rst $00                                       ; $4ab5: $c7
    add $bb                                       ; $4ab6: $c6 $bb
    call nz, $a4d2                                ; $4ab8: $c4 $d2 $a4
    sub e                                         ; $4abb: $93
    dec bc                                        ; $4abc: $0b
    cp d                                          ; $4abd: $ba
    inc sp                                        ; $4abe: $33
    ld [hl], $77                                  ; $4abf: $36 $77
    xor d                                         ; $4ac1: $aa
    sub [hl]                                      ; $4ac2: $96
    dec e                                         ; $4ac3: $1d
    ld h, $a0                                     ; $4ac4: $26 $a0
    ld a, d                                       ; $4ac6: $7a
    cp h                                          ; $4ac7: $bc
    add hl, hl                                    ; $4ac8: $29
    cp c                                          ; $4ac9: $b9
    cp c                                          ; $4aca: $b9
    and $a8                                       ; $4acb: $e6 $a8
    ldh a, [rSCY]                                 ; $4acd: $f0 $42
    call c, $d05c                                 ; $4acf: $dc $5c $d0
    add l                                         ; $4ad2: $85
    dec d                                         ; $4ad3: $15
    jr c, jr_04c_4b14                             ; $4ad4: $38 $3e

    nop                                           ; $4ad6: $00
    ld c, a                                       ; $4ad7: $4f
    ld l, d                                       ; $4ad8: $6a
    or l                                          ; $4ad9: $b5
    and b                                         ; $4ada: $a0
    dec bc                                        ; $4adb: $0b
    cp d                                          ; $4adc: $ba
    ld h, a                                       ; $4add: $67
    cp a                                          ; $4ade: $bf
    add $bf                                       ; $4adf: $c6 $bf
    rla                                           ; $4ae1: $17
    dec c                                         ; $4ae2: $0d
    ldh [$9a], a                                  ; $4ae3: $e0 $9a
    ld a, e                                       ; $4ae5: $7b
    or $6b                                        ; $4ae6: $f6 $6b
    db $fc                                        ; $4ae8: $fc
    ld a, e                                       ; $4ae9: $7b
    add e                                         ; $4aea: $83
    db $10                                        ; $4aeb: $10
    jp nc, Jump_04c_7708                          ; $4aec: $d2 $08 $77

    call nc, $a84e                                ; $4aef: $d4 $4e $a8
    ld a, c                                       ; $4af2: $79
    ld b, d                                       ; $4af3: $42
    dec h                                         ; $4af4: $25
    ld b, $b2                                     ; $4af5: $06 $b2
    ld a, c                                       ; $4af7: $79
    ld sp, $8e4f                                  ; $4af8: $31 $4f $8e
    ld e, h                                       ; $4afb: $5c
    ret nc                                        ; $4afc: $d0

    ld a, l                                       ; $4afd: $7d
    ld l, b                                       ; $4afe: $68
    xor a                                         ; $4aff: $af
    or e                                          ; $4b00: $b3
    ld de, $47ef                                  ; $4b01: $11 $ef $47
    dec bc                                        ; $4b04: $0b
    rrc e                                         ; $4b05: $cb $0b
    rst $38                                       ; $4b07: $ff
    rla                                           ; $4b08: $17
    ld sp, hl                                     ; $4b09: $f9

Jump_04c_4b0a:
jr_04c_4b0a:
    xor b                                         ; $4b0a: $a8
    jp hl                                         ; $4b0b: $e9


    db $ec                                        ; $4b0c: $ec
    ld b, e                                       ; $4b0d: $43
    db $e3                                        ; $4b0e: $e3
    adc [hl]                                      ; $4b0f: $8e
    ld a, [hl]                                    ; $4b10: $7e
    and c                                         ; $4b11: $a1
    ld h, [hl]                                    ; $4b12: $66
    cp h                                          ; $4b13: $bc

jr_04c_4b14:
    rst $10                                       ; $4b14: $d7
    xor e                                         ; $4b15: $ab
    dec bc                                        ; $4b16: $0b
    rst $20                                       ; $4b17: $e7
    sub [hl]                                      ; $4b18: $96
    and $96                                       ; $4b19: $e6 $96
    call c, Call_04c_41af                         ; $4b1b: $dc $af $41
    ld d, e                                       ; $4b1e: $53
    db $ed                                        ; $4b1f: $ed
    reti                                          ; $4b20: $d9


    xor a                                         ; $4b21: $af
    pop af                                        ; $4b22: $f1
    rst $28                                       ; $4b23: $ef
    ld b, l                                       ; $4b24: $45
    inc bc                                        ; $4b25: $03
    cp b                                          ; $4b26: $b8
    cpl                                           ; $4b27: $2f
    jp c, Jump_04c_5fb3                           ; $4b28: $da $b3 $5f

    db $e3                                        ; $4b2b: $e3
    rst $18                                       ; $4b2c: $df

jr_04c_4b2d:
    dec de                                        ; $4b2d: $1b
    add h                                         ; $4b2e: $84
    sub b                                         ; $4b2f: $90
    ld b, [hl]                                    ; $4b30: $46
    cp b                                          ; $4b31: $b8
    and e                                         ; $4b32: $a3

Call_04c_4b33:
    ld [c], a                                     ; $4b33: $e2
    inc bc                                        ; $4b34: $03
    rst $10                                       ; $4b35: $d7
    dec sp                                        ; $4b36: $3b
    push bc                                       ; $4b37: $c5
    ld h, [hl]                                    ; $4b38: $66
    cp h                                          ; $4b39: $bc
    rrca                                          ; $4b3a: $0f
    dec l                                         ; $4b3b: $2d
    inc l                                         ; $4b3c: $2c
    rrca                                          ; $4b3d: $0f
    ld [hl], d                                    ; $4b3e: $72
    sub d                                         ; $4b3f: $92
    rst $10                                       ; $4b40: $d7
    and $9e                                       ; $4b41: $e6 $9e
    daa                                           ; $4b43: $27
    add e                                         ; $4b44: $83
    add a                                         ; $4b45: $87
    inc e                                         ; $4b46: $1c
    sub l                                         ; $4b47: $95
    ld sp, $ccc1                                  ; $4b48: $31 $c1 $cc
    ld [hl], d                                    ; $4b4b: $72
    call c, $b301                                 ; $4b4c: $dc $01 $b3
    ld e, h                                       ; $4b4f: $5c
    ld [hl], e                                    ; $4b50: $73
    ld b, c                                       ; $4b51: $41
    rla                                           ; $4b52: $17
    ld d, [hl]                                    ; $4b53: $56
    ldh [$b9], a                                  ; $4b54: $e0 $b9
    dec h                                         ; $4b56: $25
    dec b                                         ; $4b57: $05
    rrca                                          ; $4b58: $0f
    ld d, c                                       ; $4b59: $51
    db $eb                                        ; $4b5a: $eb
    and [hl]                                      ; $4b5b: $a6
    rst $28                                       ; $4b5c: $ef

Call_04c_4b5d:
    and d                                         ; $4b5d: $a2
    rrca                                          ; $4b5e: $0f
    xor d                                         ; $4b5f: $aa
    ld sp, $6190                                  ; $4b60: $31 $90 $61
    ld a, l                                       ; $4b63: $7d
    di                                            ; $4b64: $f3
    or c                                          ; $4b65: $b1
    ld sp, hl                                     ; $4b66: $f9
    rst $38                                       ; $4b67: $ff
    ld l, c                                       ; $4b68: $69
    xor a                                         ; $4b69: $af
    ld b, e                                       ; $4b6a: $43
    ld d, h                                       ; $4b6b: $54
    ld b, a                                       ; $4b6c: $47
    adc [hl]                                      ; $4b6d: $8e
    dec sp                                        ; $4b6e: $3b
    ld d, l                                       ; $4b6f: $55
    ld e, l                                       ; $4b70: $5d
    jr c, jr_04c_4b0a                             ; $4b71: $38 $97

    sbc d                                         ; $4b73: $9a
    rla                                           ; $4b74: $17
    sub e                                         ; $4b75: $93
    ld c, [hl]                                    ; $4b76: $4e

Call_04c_4b77:
Jump_04c_4b77:
    ld l, $e8                                     ; $4b77: $2e $e8
    jp c, $829c                                   ; $4b79: $da $9c $82

    xor b                                         ; $4b7c: $a8
    adc [hl]                                      ; $4b7d: $8e
    sbc h                                         ; $4b7e: $9c
    add e                                         ; $4b7f: $83
    xor h                                         ; $4b80: $ac
    jr nz, jr_04c_4b2d                            ; $4b81: $20 $aa

    ld l, h                                       ; $4b83: $6c
    ld e, [hl]                                    ; $4b84: $5e
    inc l                                         ; $4b85: $2c
    ld a, [hl+]                                   ; $4b86: $2a
    rst $28                                       ; $4b87: $ef
    xor l                                         ; $4b88: $ad
    rst $38                                       ; $4b89: $ff
    jp hl                                         ; $4b8a: $e9


    ld d, h                                       ; $4b8b: $54
    add d                                         ; $4b8c: $82
    ld h, $9d                                     ; $4b8d: $26 $9d
    ld e, h                                       ; $4b8f: $5c
    ret nc                                        ; $4b90: $d0

    or l                                          ; $4b91: $b5
    add hl, sp                                    ; $4b92: $39
    rst $30                                       ; $4b93: $f7
    ld a, a                                       ; $4b94: $7f
    ld a, [hl-]                                   ; $4b95: $3a
    sub l                                         ; $4b96: $95
    and b                                         ; $4b97: $a0
    add c                                         ; $4b98: $81
    ld a, [bc]                                    ; $4b99: $0a
    db $e4                                        ; $4b9a: $e4
    and b                                         ; $4b9b: $a0
    ld l, h                                       ; $4b9c: $6c
    ld e, [hl]                                    ; $4b9d: $5e
    inc l                                         ; $4b9e: $2c
    ld a, [hl+]                                   ; $4b9f: $2a
    rst $28                                       ; $4ba0: $ef
    ld a, c                                       ; $4ba1: $79
    inc sp                                        ; $4ba2: $33
    ld [c], a                                     ; $4ba3: $e2
    ld c, c                                       ; $4ba4: $49
    daa                                           ; $4ba5: $27
    rla                                           ; $4ba6: $17
    ld [hl], h                                    ; $4ba7: $74
    and b                                         ; $4ba8: $a0
    ld [bc], a                                    ; $4ba9: $02
    add hl, sp                                    ; $4baa: $39
    jr z, jr_04c_4bd0                             ; $4bab: $28 $23

    sub e                                         ; $4bad: $93
    call $96b9                                    ; $4bae: $cd $b9 $96
    di                                            ; $4bb1: $f3
    sbc l                                         ; $4bb2: $9d
    inc [hl]                                      ; $4bb3: $34
    inc hl                                        ; $4bb4: $23
    ld l, [hl]                                    ; $4bb5: $6e
    adc $b5                                       ; $4bb6: $ce $b5
    call c, $a553                                 ; $4bb8: $dc $53 $a5
    rst $18                                       ; $4bbb: $df
    ret z                                         ; $4bbc: $c8

    ld [hl], a                                    ; $4bbd: $77
    sub a                                         ; $4bbe: $97
    sub l                                         ; $4bbf: $95
    xor d                                         ; $4bc0: $aa
    cp c                                          ; $4bc1: $b9
    and $de                                       ; $4bc2: $e6 $de
    ld hl, sp+$6e                                 ; $4bc4: $f8 $6e
    db $d3                                        ; $4bc6: $d3
    adc h                                         ; $4bc7: $8c
    call nc, $b47e                                ; $4bc8: $d4 $7e $b4
    ld [hl], $27                                  ; $4bcb: $36 $27
    inc d                                         ; $4bcd: $14
    ld [hl-], a                                   ; $4bce: $32
    db $d3                                        ; $4bcf: $d3

jr_04c_4bd0:
    ld a, [hl]                                    ; $4bd0: $7e
    dec d                                         ; $4bd1: $15
    adc c                                         ; $4bd2: $89
    ld a, [bc]                                    ; $4bd3: $0a
    rst $20                                       ; $4bd4: $e7
    ld [hl], c                                    ; $4bd5: $71
    rst $20                                       ; $4bd6: $e7
    sub [hl]                                      ; $4bd7: $96
    cp $a7                                        ; $4bd8: $fe $a7
    or e                                          ; $4bda: $b3
    ret                                           ; $4bdb: $c9


    and $c5                                       ; $4bdc: $e6 $c5
    sbc d                                         ; $4bde: $9a
    inc sp                                        ; $4bdf: $33
    xor l                                         ; $4be0: $ad
    ld d, $74                                     ; $4be1: $16 $74
    ld l, a                                       ; $4be3: $6f
    ld l, c                                       ; $4be4: $69
    rlca                                          ; $4be5: $07
    ld e, $72                                     ; $4be6: $1e $72
    ld [hl], e                                    ; $4be8: $73
    ld [de], a                                    ; $4be9: $12
    xor e                                         ; $4bea: $ab
    ld a, b                                       ; $4beb: $78
    jp nc, Jump_000_05c9                          ; $4bec: $d2 $c9 $05

    dec e                                         ; $4bef: $1d
    ld b, h                                       ; $4bf0: $44
    ld e, a                                       ; $4bf1: $5f
    jr z, @+$37                                   ; $4bf2: $28 $35

    rst $20                                       ; $4bf4: $e7
    cp e                                          ; $4bf5: $bb
    rst $20                                       ; $4bf6: $e7
    ret                                           ; $4bf7: $c9


    ldh [rNR42], a                                ; $4bf8: $e0 $21
    ld b, a                                       ; $4bfa: $47
    ld h, l                                       ; $4bfb: $65
    ld c, h                                       ; $4bfc: $4c
    jr nc, @-$10                                  ; $4bfd: $30 $ee

    ld a, [hl]                                    ; $4bff: $7e
    or d                                          ; $4c00: $b2
    cp $50                                        ; $4c01: $fe $50
    inc sp                                        ; $4c03: $33

jr_04c_4c04:
    sbc $6b                                       ; $4c04: $de $6b
    add l                                         ; $4c06: $85
    add a                                         ; $4c07: $87
    xor h                                         ; $4c08: $ac
    add [hl]                                      ; $4c09: $86
    cp c                                          ; $4c0a: $b9
    or b                                          ; $4c0b: $b0
    inc a                                         ; $4c0c: $3c
    dec b                                         ; $4c0d: $05
    rrca                                          ; $4c0e: $0f
    ld c, e                                       ; $4c0f: $4b
    pop de                                        ; $4c10: $d1
    adc $d8                                       ; $4c11: $ce $d8
    dec b                                         ; $4c13: $05
    ld e, l                                       ; $4c14: $5d
    ret nc                                        ; $4c15: $d0

    cp l                                          ; $4c16: $bd
    ld d, b                                       ; $4c17: $50
    or a                                          ; $4c18: $b7
    xor c                                         ; $4c19: $a9
    xor $5a                                       ; $4c1a: $ee $5a
    ld [hl], e                                    ; $4c1c: $73
    ld l, a                                       ; $4c1d: $6f
    ld a, h                                       ; $4c1e: $7c
    or a                                          ; $4c1f: $b7
    inc b                                         ; $4c20: $04
    add hl, sp                                    ; $4c21: $39
    ret                                           ; $4c22: $c9


    call $00f8                                    ; $4c23: $cd $f8 $00
    ld l, a                                       ; $4c26: $6f
    ld d, a                                       ; $4c27: $57
    rr a                                          ; $4c28: $cb $1f
    dec c                                         ; $4c2a: $0d
    ld [hl], e                                    ; $4c2b: $73
    cp [hl]                                       ; $4c2c: $be
    ld a, e                                       ; $4c2d: $7b
    xor d                                         ; $4c2e: $aa
    rst $20                                       ; $4c2f: $e7
    ld d, e                                       ; $4c30: $53
    add hl, bc                                    ; $4c31: $09
    inc de                                        ; $4c32: $13
    inc [hl]                                      ; $4c33: $34
    ld [hl], l                                    ; $4c34: $75
    ld d, l                                       ; $4c35: $55
    cp h                                          ; $4c36: $bc
    xor e                                         ; $4c37: $ab
    cp a                                          ; $4c38: $bf
    adc e                                         ; $4c39: $8b
    jr nc, jr_04c_4c04                            ; $4c3a: $30 $c8

    add hl, bc                                    ; $4c3c: $09
    dec a                                         ; $4c3d: $3d
    dec d                                         ; $4c3e: $15
    ld h, b                                       ; $4c3f: $60
    add d                                         ; $4c40: $82
    and $d2                                       ; $4c41: $e6 $d2
    or $a3                                        ; $4c43: $f6 $a3
    or l                                          ; $4c45: $b5
    add hl, sp                                    ; $4c46: $39
    ld l, d                                       ; $4c47: $6a
    and l                                         ; $4c48: $a5
    sbc d                                         ; $4c49: $9a
    ei                                            ; $4c4a: $fb
    ccf                                           ; $4c4b: $3f
    sbc l                                         ; $4c4c: $9d
    ld c, d                                       ; $4c4d: $4a
    ld d, b                                       ; $4c4e: $50
    ld [hl], e                                    ; $4c4f: $73
    call c, $e369                                 ; $4c50: $dc $69 $e3
    and $ce                                       ; $4c53: $e6 $ce
    and a                                         ; $4c55: $a7
    cp d                                          ; $4c56: $ba
    call $4f78                                    ; $4c57: $cd $78 $4f
    ld l, d                                       ; $4c5a: $6a
    or l                                          ; $4c5b: $b5
    and b                                         ; $4c5c: $a0
    ld l, e                                       ; $4c5d: $6b
    ld [hl], e                                    ; $4c5e: $73
    xor $ff                                       ; $4c5f: $ee $ff

jr_04c_4c61:
    ld [hl], h                                    ; $4c61: $74
    ld a, [hl+]                                   ; $4c62: $2a
    ld b, c                                       ; $4c63: $41
    ei                                            ; $4c64: $fb
    ret nc                                        ; $4c65: $d0

    ld a, h                                       ; $4c66: $7c
    rla                                           ; $4c67: $17
    jr c, @-$56                                   ; $4c68: $38 $a8

Jump_04c_4c6a:
    cp b                                          ; $4c6a: $b8
    dec bc                                        ; $4c6b: $0b
    rst $38                                       ; $4c6c: $ff
    rlca                                          ; $4c6d: $07
    call c, $3369                                 ; $4c6e: $dc $69 $33
    sbc $f9                                       ; $4c71: $de $f9
    ld d, h                                       ; $4c73: $54
    or a                                          ; $4c74: $b7
    ld a, c                                       ; $4c75: $79
    ld sp, $e4e9                                  ; $4c76: $31 $e9 $e4
    add d                                         ; $4c79: $82
    ld l, $2c                                     ; $4c7a: $2e $2c
    cpl                                           ; $4c7c: $2f
    ld a, [hl+]                                   ; $4c7d: $2a
    xor a                                         ; $4c7e: $af
    call Call_04c_4f9d                            ; $4c7f: $cd $9d $4f
    ld h, [hl]                                    ; $4c82: $66
    db $e4                                        ; $4c83: $e4
    ld c, e                                       ; $4c84: $4b
    ld [hl], e                                    ; $4c85: $73
    rst $38                                       ; $4c86: $ff
    and a                                         ; $4c87: $a7
    ld d, e                                       ; $4c88: $53
    add hl, bc                                    ; $4c89: $09
    ld a, [de]                                    ; $4c8a: $1a
    ld b, h                                       ; $4c8b: $44
    ld e, a                                       ; $4c8c: $5f
    jr z, jr_04c_4cc4                             ; $4c8d: $28 $35

    db $e3                                        ; $4c8f: $e3
    dec a                                         ; $4c90: $3d
    xor c                                         ; $4c91: $a9
    push de                                       ; $4c92: $d5
    add d                                         ; $4c93: $82
    adc [hl]                                      ; $4c94: $8e
    dec sp                                        ; $4c95: $3b
    or a                                          ; $4c96: $b7
    push de                                       ; $4c97: $d5
    inc de                                        ; $4c98: $13
    ld a, l                                       ; $4c99: $7d
    add a                                         ; $4c9a: $87
    sbc e                                         ; $4c9b: $9b
    adc e                                         ; $4c9c: $8b
    call z, Call_04c_5f24                         ; $4c9d: $cc $24 $5f
    inc l                                         ; $4ca0: $2c
    ld a, [$05e5]                                 ; $4ca1: $fa $e5 $05
    db $dd                                        ; $4ca4: $dd
    ld [hl], a                                    ; $4ca5: $77
    ld c, e                                       ; $4ca6: $4b
    adc c                                         ; $4ca7: $89
    ld [hl], l                                    ; $4ca8: $75
    ld c, [hl]                                    ; $4ca9: $4e
    inc de                                        ; $4caa: $13
    ld a, [bc]                                    ; $4cab: $0a
    jr nc, jr_04c_4c61                            ; $4cac: $30 $b3

    add hl, de                                    ; $4cae: $19
    rra                                           ; $4caf: $1f
    xor a                                         ; $4cb0: $af
    ld d, a                                       ; $4cb1: $57
    rla                                           ; $4cb2: $17
    adc $2d                                       ; $4cb3: $ce $2d
    call $8177                                    ; $4cb5: $cd $77 $81
    add e                                         ; $4cb8: $83
    adc d                                         ; $4cb9: $8a
    dec sp                                        ; $4cba: $3b
    ld hl, sp-$71                                 ; $4cbb: $f8 $8f
    inc b                                         ; $4cbd: $04
    ld c, h                                       ; $4cbe: $4c
    ld h, e                                       ; $4cbf: $63
    db $ec                                        ; $4cc0: $ec
    ld e, h                                       ; $4cc1: $5c
    set 1, c                                      ; $4cc2: $cb $c9

jr_04c_4cc4:
    ld [hl], d                                    ; $4cc4: $72
    push af                                       ; $4cc5: $f5
    sbc d                                         ; $4cc6: $9a
    jp Jump_04c_5404                              ; $4cc7: $c3 $04 $54


    adc a                                         ; $4cca: $8f
    scf                                           ; $4ccb: $37
    dec h                                         ; $4ccc: $25
    scf                                           ; $4ccd: $37
    rst $30                                       ; $4cce: $f7
    and e                                         ; $4ccf: $a3
    ld sp, hl                                     ; $4cd0: $f9
    xor $8d                                       ; $4cd1: $ee $8d
    rst $28                                       ; $4cd3: $ef
    sub [hl]                                      ; $4cd4: $96
    inc a                                         ; $4cd5: $3c
    ld e, c                                       ; $4cd6: $59
    jp z, $790f                                   ; $4cd7: $ca $0f $79

    ld [hl-], a                                   ; $4cda: $32
    ld a, b                                       ; $4cdb: $78
    ret z                                         ; $4cdc: $c8

    db $e3                                        ; $4cdd: $e3
    adc $fd                                       ; $4cde: $ce $fd
    sbc d                                         ; $4ce0: $9a
    rst $38                                       ; $4ce1: $ff
    rst $00                                       ; $4ce2: $c7
    ld h, [hl]                                    ; $4ce3: $66
    cp h                                          ; $4ce4: $bc
    xor e                                         ; $4ce5: $ab
    db $e4                                        ; $4ce6: $e4
    ret z                                         ; $4ce7: $c8

    ld a, l                                       ; $4ce8: $7d
    ld l, b                                       ; $4ce9: $68
    cp [hl]                                       ; $4cea: $be
    ld [hl], e                                    ; $4ceb: $73
    or c                                          ; $4cec: $b1
    inc b                                         ; $4ced: $04
    add hl, sp                                    ; $4cee: $39
    ret                                           ; $4cef: $c9


    jp z, Jump_000_2393                           ; $4cf0: $ca $93 $23

    ld sp, hl                                     ; $4cf3: $f9
    sub a                                         ; $4cf4: $97
    push de                                       ; $4cf5: $d5
    ld e, [hl]                                    ; $4cf6: $5e
    adc [hl]                                      ; $4cf7: $8e
    jp nz, $c1ff                                  ; $4cf8: $c2 $ff $c1

    cp [hl]                                       ; $4cfb: $be
    ld l, b                                       ; $4cfc: $68
    cpl                                           ; $4cfd: $2f
    ld b, a                                       ; $4cfe: $47
    jp c, $ec0c                                   ; $4cff: $da $0c $ec

    ld b, a                                       ; $4d02: $47
    dec bc                                        ; $4d03: $0b
    ld a, [hl-]                                   ; $4d04: $3a
    ld e, c                                       ; $4d05: $59
    rst $20                                       ; $4d06: $e7
    call c, $1771                                 ; $4d07: $dc $71 $17
    sbc c                                         ; $4d0a: $99
    ld l, h                                       ; $4d0b: $6c
    add $bb                                       ; $4d0c: $c6 $bb

jr_04c_4d0e:
    ld c, d                                       ; $4d0e: $4a
    adc [hl]                                      ; $4d0f: $8e
    call c, $e687                                 ; $4d10: $dc $87 $e6
    dec sp                                        ; $4d13: $3b
    rla                                           ; $4d14: $17
    ld c, e                                       ; $4d15: $4b
    sub b                                         ; $4d16: $90
    sub e                                         ; $4d17: $93
    xor h                                         ; $4d18: $ac
    inc a                                         ; $4d19: $3c
    add hl, sp                                    ; $4d1a: $39
    sub d                                         ; $4d1b: $92
    ld a, a                                       ; $4d1c: $7f
    ld e, c                                       ; $4d1d: $59
    db $ed                                        ; $4d1e: $ed
    or l                                          ; $4d1f: $b5
    jp nz, Jump_04c_5643                          ; $4d20: $c2 $43 $56

    ei                                            ; $4d23: $fb
    pop de                                        ; $4d24: $d1
    jp nc, $e68c                                  ; $4d25: $d2 $8c $e6

    dec sp                                        ; $4d28: $3b
    rst $30                                       ; $4d29: $f7
    ld l, e                                       ; $4d2a: $6b
    ret nc                                        ; $4d2b: $d0

    db $f4                                        ; $4d2c: $f4
    sbc l                                         ; $4d2d: $9d
    xor h                                         ; $4d2e: $ac
    ld [hl], e                                    ; $4d2f: $73
    xor $b8                                       ; $4d30: $ee $b8
    inc bc                                        ; $4d32: $03
    ld h, [hl]                                    ; $4d33: $66
    cp c                                          ; $4d34: $b9
    cpl                                           ; $4d35: $2f
    jp c, $980b                                   ; $4d36: $da $0b $98

    ld d, d                                       ; $4d39: $52
    db $ed                                        ; $4d3a: $ed
    ld b, a                                       ; $4d3b: $47
    db $e3                                        ; $4d3c: $e3
    sub d                                         ; $4d3d: $92
    inc bc                                        ; $4d3e: $03
    add $1d                                       ; $4d3f: $c6 $1d
    jr nc, jr_04c_4d0e                            ; $4d41: $30 $cb

    dec [hl]                                      ; $4d43: $35
    add a                                         ; $4d44: $87
    ld h, l                                       ; $4d45: $65
    dec [hl]                                      ; $4d46: $35
    ld c, e                                       ; $4d47: $4b
    ld e, a                                       ; $4d48: $5f
    ld d, d                                       ; $4d49: $52
    db $e3                                        ; $4d4a: $e3
    ld c, [hl]                                    ; $4d4b: $4e
    ld h, d                                       ; $4d4c: $62
    rst $08                                       ; $4d4d: $cf
    call $4f78                                    ; $4d4e: $cd $78 $4f
    ld l, d                                       ; $4d51: $6a
    or l                                          ; $4d52: $b5
    and b                                         ; $4d53: $a0
    inc de                                        ; $4d54: $13
    inc [hl]                                      ; $4d55: $34
    ld b, $13                                     ; $4d56: $06 $13
    sbc d                                         ; $4d58: $9a
    cp h                                          ; $4d59: $bc
    xor b                                         ; $4d5a: $a8
    cp h                                          ; $4d5b: $bc
    and b                                         ; $4d5c: $a0
    sub e                                         ; $4d5d: $93
    ld [hl], l                                    ; $4d5e: $75
    adc $55                                       ; $4d5f: $ce $55
    rla                                           ; $4d61: $17
    di                                            ; $4d62: $f3
    db $e4                                        ; $4d63: $e4
    ret z                                         ; $4d64: $c8

    dec b                                         ; $4d65: $05
    db $dd                                        ; $4d66: $dd
    add a                                         ; $4d67: $87
    and $bb                                       ; $4d68: $e6 $bb
    daa                                           ; $4d6a: $27
    rst $28                                       ; $4d6b: $ef
    sub d                                         ; $4d6c: $92
    ld sp, hl                                     ; $4d6d: $f9
    and c                                         ; $4d6e: $a1
    db $fd                                        ; $4d6f: $fd
    ld l, b                                       ; $4d70: $68
    call c, Call_04c_7509                         ; $4d71: $dc $09 $75
    xor e                                         ; $4d74: $ab
    jr jr_04c_4db8                                ; $4d75: $18 $41

    inc sp                                        ; $4d77: $33
    sbc $d5                                       ; $4d78: $de $d5
    xor $7c                                       ; $4d7a: $ee $7c
    ld [hl-], a                                   ; $4d7c: $32
    ld [c], a                                     ; $4d7d: $e2
    adc [hl]                                      ; $4d7e: $8e
    dec hl                                        ; $4d7f: $2b
    sbc e                                         ; $4d80: $9b
    ld l, d                                       ; $4d81: $6a
    ld l, c                                       ; $4d82: $69
    and [hl]                                      ; $4d83: $a6
    ld a, b                                       ; $4d84: $78
    ld b, c                                       ; $4d85: $41
    daa                                           ; $4d86: $27
    db $eb                                        ; $4d87: $eb
    sbc h                                         ; $4d88: $9c
    xor e                                         ; $4d89: $ab
    ld b, $ea                                     ; $4d8a: $06 $ea
    ld [hl], $67                                  ; $4d8c: $36 $67
    sub [hl]                                      ; $4d8e: $96
    di                                            ; $4d8f: $f3
    add $f3                                       ; $4d90: $c6 $f3
    ret c                                         ; $4d92: $d8

    add c                                         ; $4d93: $81
    ld e, a                                       ; $4d94: $5f
    cp a                                          ; $4d95: $bf
    inc sp                                        ; $4d96: $33
    ld b, $b9                                     ; $4d97: $06 $b9
    cp e                                          ; $4d99: $bb
    ld d, $fe                                     ; $4d9a: $16 $fe
    ld l, $6a                                     ; $4d9c: $2e $6a

jr_04c_4d9e:
    jp hl                                         ; $4d9e: $e9


    ld h, d                                       ; $4d9f: $62
    pop hl                                        ; $4da0: $e1
    rst $28                                       ; $4da1: $ef
    add h                                         ; $4da2: $84
    ld [hl], d                                    ; $4da3: $72
    ld c, c                                       ; $4da4: $49
    db $fc                                        ; $4da5: $fc
    sbc [hl]                                      ; $4da6: $9e
    call nc, $416a                                ; $4da7: $d4 $6a $41
    rst $20                                       ; $4daa: $e7
    cp e                                          ; $4dab: $bb
    ret nz                                        ; $4dac: $c0

    ld b, c                                       ; $4dad: $41
    push bc                                       ; $4dae: $c5
    sbc l                                         ; $4daf: $9d
    inc l                                         ; $4db0: $2c
    ld d, a                                       ; $4db1: $57
    xor a                                         ; $4db2: $af
    add hl, sp                                    ; $4db3: $39
    rst $18                                       ; $4db4: $df
    dec b                                         ; $4db5: $05
    ld c, $2a                                     ; $4db6: $0e $2a

jr_04c_4db8:
    xor $30                                       ; $4db8: $ee $30
    ld bc, $e3d5                                  ; $4dba: $01 $d5 $e3
    ld c, l                                       ; $4dbd: $4d
    ret                                           ; $4dbe: $c9


    call $0771                                    ; $4dbf: $cd $71 $07
    sbc c                                         ; $4dc2: $99
    sub h                                         ; $4dc3: $94
    call Call_000_1585                            ; $4dc4: $cd $85 $15
    ld hl, sp+$62                                 ; $4dc7: $f8 $62
    daa                                           ; $4dc9: $27
    call z, $9d05                                 ; $4dca: $cc $05 $9d
    rst $28                                       ; $4dcd: $ef
    inc e                                         ; $4dce: $1c
    ld h, h                                       ; $4dcf: $64
    ld l, a                                       ; $4dd0: $6f
    nop                                           ; $4dd1: $00
    inc de                                        ; $4dd2: $13
    adc b                                         ; $4dd3: $88
    rst $18                                       ; $4dd4: $df
    push af                                       ; $4dd5: $f5
    ld l, $ac                                     ; $4dd6: $2e $ac
    ret nz                                        ; $4dd8: $c0

    cp e                                          ; $4dd9: $bb
    rst $30                                       ; $4dda: $f7
    cp [hl]                                       ; $4ddb: $be
    ld c, c                                       ; $4ddc: $49
    ld c, e                                       ; $4ddd: $4b
    push de                                       ; $4dde: $d5
    call c, $e68f                                 ; $4ddf: $dc $8f $e6
    cp e                                          ; $4de2: $bb
    ret nz                                        ; $4de3: $c0

    ld b, c                                       ; $4de4: $41
    push bc                                       ; $4de5: $c5
    dec e                                         ; $4de6: $1d
    db $fc                                        ; $4de7: $fc
    ld b, a                                       ; $4de8: $47
    ld [bc], a                                    ; $4de9: $02
    and [hl]                                      ; $4dea: $a6
    ld sp, $dc76                                  ; $4deb: $31 $76 $dc
    cp c                                          ; $4dee: $b9
    sbc b                                         ; $4def: $98
    cp [hl]                                       ; $4df0: $be
    add hl, de                                    ; $4df1: $19
    rra                                           ; $4df2: $1f
    xor a                                         ; $4df3: $af
    ret nc                                        ; $4df4: $d0

    rla                                           ; $4df5: $17
    ld e, d                                       ; $4df6: $5a
    sbc d                                         ; $4df7: $9a
    rst $28                                       ; $4df8: $ef
    jr nz, jr_04c_4d9e                            ; $4df9: $20 $a3

    and $04                                       ; $4dfb: $e6 $04
    inc c                                         ; $4dfd: $0c
    ld d, [hl]                                    ; $4dfe: $56
    dec l                                         ; $4dff: $2d
    call $dc68                                    ; $4e00: $cd $68 $dc
    cp c                                          ; $4e03: $b9
    sbc b                                         ; $4e04: $98
    cp [hl]                                       ; $4e05: $be
    add hl, de                                    ; $4e06: $19
    rst $28                                       ; $4e07: $ef
    xor l                                         ; $4e08: $ad
    ld [de], a                                    ; $4e09: $12
    and h                                         ; $4e0a: $a4
    call $cd58                                    ; $4e0b: $cd $58 $cd
    ld [hl], a                                    ; $4e0e: $77
    ld [hl], b                                    ; $4e0f: $70
    add a                                         ; $4e10: $87
    call nc, $35a7                                ; $4e11: $d4 $a7 $35
    rst $20                                       ; $4e14: $e7
    ret                                           ; $4e15: $c9


    sub c                                         ; $4e16: $91
    ei                                            ; $4e17: $fb
    ret nc                                        ; $4e18: $d0

    ld a, h                                       ; $4e19: $7c
    rst $30                                       ; $4e1a: $f7
    db $e4                                        ; $4e1b: $e4
    ld e, l                                       ; $4e1c: $5d
    ld [hl-], a                                   ; $4e1d: $32
    ccf                                           ; $4e1e: $3f
    or h                                          ; $4e1f: $b4
    rra                                           ; $4e20: $1f
    xor l                                         ; $4e21: $ad
    call Call_000_3349                            ; $4e22: $cd $49 $33
    ld [c], a                                     ; $4e25: $e2
    db $fd                                        ; $4e26: $fd
    ld l, b                                       ; $4e27: $68
    call c, Call_000_3279                         ; $4e28: $dc $79 $32
    jp $bc66                                      ; $4e2b: $c3 $66 $bc


    bit 2, d                                      ; $4e2e: $cb $52
    ld l, b                                       ; $4e30: $68
    and [hl]                                      ; $4e31: $a6
    rst $20                                       ; $4e32: $e7
    sub c                                         ; $4e33: $91
    rla                                           ; $4e34: $17
    sub l                                         ; $4e35: $95
    rst $10                                       ; $4e36: $d7
    and $f8                                       ; $4e37: $e6 $f8
    call nc, Call_04c_4efa                        ; $4e39: $d4 $fa $4e
    sbc d                                         ; $4e3c: $9a
    ld de, $7bc7                                  ; $4e3d: $11 $c7 $7b
    ld d, d                                       ; $4e40: $52
    xor e                                         ; $4e41: $ab
    ld sp, hl                                     ; $4e42: $f9
    adc [hl]                                      ; $4e43: $8e
    ld c, a                                       ; $4e44: $4f
    db $ed                                        ; $4e45: $ed
    and h                                         ; $4e46: $a4
    add hl, de                                    ; $4e47: $19
    ld [hl], c                                    ; $4e48: $71
    ld [hl], e                                    ; $4e49: $73
    ld [bc], a                                    ; $4e4a: $02
    ld b, $ab                                     ; $4e4b: $06 $ab
    sub [hl]                                      ; $4e4d: $96
    ld h, [hl]                                    ; $4e4e: $66
    inc [hl]                                      ; $4e4f: $34
    ret z                                         ; $4e50: $c8

    sub h                                         ; $4e51: $94
    ld l, d                                       ; $4e52: $6a
    ld e, [hl]                                    ; $4e53: $5e
    call z, $f92d                                 ; $4e54: $cc $2d $f9
    inc de                                        ; $4e57: $13
    ld b, $d9                                     ; $4e58: $06 $d9
    call c, $f1b9                                 ; $4e5a: $dc $b9 $f1
    ld e, [hl]                                    ; $4e5d: $5e
    adc [hl]                                      ; $4e5e: $8e
    add $dd                                       ; $4e5f: $c6 $dd
    add hl, bc                                    ; $4e61: $09
    inc sp                                        ; $4e62: $33
    sbc e                                         ; $4e63: $9b
    adc e                                         ; $4e64: $8b
    ld a, [hl]                                    ; $4e65: $7e
    ld a, c                                       ; $4e66: $79
    ld b, c                                       ; $4e67: $41
    rst $20                                       ; $4e68: $e7
    cp $4f                                        ; $4e69: $fe $4f
    xor e                                         ; $4e6b: $ab

jr_04c_4e6c:
    sub [hl]                                      ; $4e6c: $96
    sbc l                                         ; $4e6d: $9d
    inc [hl]                                      ; $4e6e: $34
    inc hl                                        ; $4e6f: $23
    sbc [hl]                                      ; $4e70: $9e
    rst $28                                       ; $4e71: $ef
    inc b                                         ; $4e72: $04
    inc c                                         ; $4e73: $0c
    add h                                         ; $4e74: $84
    add [hl]                                      ; $4e75: $86
    sbc a                                         ; $4e76: $9f
    sbc d                                         ; $4e77: $9a
    cp [hl]                                       ; $4e78: $be
    sub e                                         ; $4e79: $93
    ld h, [hl]                                    ; $4e7a: $66
    call nz, Call_000_3173                        ; $4e7b: $c4 $73 $31
    ld a, l                                       ; $4e7e: $7d
    inc sp                                        ; $4e7f: $33
    ld a, $00                                     ; $4e80: $3e $00

Jump_04c_4e82:
    ld c, a                                       ; $4e82: $4f
    ld l, d                                       ; $4e83: $6a
    or l                                          ; $4e84: $b5
    and b                                         ; $4e85: $a0
    ei                                            ; $4e86: $fb
    rra                                           ; $4e87: $1f
    ld a, c                                       ; $4e88: $79
    ld l, [hl]                                    ; $4e89: $6e
    ret                                           ; $4e8a: $c9


    sbc a                                         ; $4e8b: $9f
    call z, Call_000_1fb4                         ; $4e8c: $cc $b4 $1f
    sbc c                                         ; $4e8f: $99
    ld c, c                                       ; $4e90: $49
    cp [hl]                                       ; $4e91: $be
    sbc b                                         ; $4e92: $98
    ld [hl], h                                    ; $4e93: $74
    ld [hl], d                                    ; $4e94: $72
    ld b, c                                       ; $4e95: $41
    rst $30                                       ; $4e96: $f7
    and c                                         ; $4e97: $a1
    cp l                                          ; $4e98: $bd
    ld e, [hl]                                    ; $4e99: $5e
    ld e, l                                       ; $4e9a: $5d
    jr c, jr_04c_4e6c                             ; $4e9b: $38 $cf

    sub e                                         ; $4e9d: $93
    inc hl                                        ; $4e9e: $23
    ld h, l                                       ; $4e9f: $65
    ld [hl], e                                    ; $4ea0: $73
    ccf                                           ; $4ea1: $3f
    ld a, [de]                                    ; $4ea2: $1a
    ld [hl], a                                    ; $4ea3: $77
    ld h, a                                       ; $4ea4: $67
    ld l, h                                       ; $4ea5: $6c
    xor $64                                       ; $4ea6: $ee $64
    ld b, [hl]                                    ; $4ea8: $46
    dec bc                                        ; $4ea9: $0b
    cp d                                          ; $4eaa: $ba
    and b                                         ; $4eab: $a0
    inc de                                        ; $4eac: $13
    ld [$7a62], a                                 ; $4ead: $ea $62 $7a
    adc [hl]                                      ; $4eb0: $8e
    rrca                                          ; $4eb1: $0f
    rst $08                                       ; $4eb2: $cf
    reti                                          ; $4eb3: $d9


    xor b                                         ; $4eb4: $a8
    ldh a, [$90]                                  ; $4eb5: $f0 $90
    rst $20                                       ; $4eb7: $e7
    cp $4f                                        ; $4eb8: $fe $4f
    jp $9ab2                                      ; $4eba: $c3 $b2 $9a


    ld h, d                                       ; $4ebd: $62
    or e                                          ; $4ebe: $b3
    ld e, h                                       ; $4ebf: $5c
    ld [hl], e                                    ; $4ec0: $73
    sbc [hl]                                      ; $4ec1: $9e
    inc e                                         ; $4ec2: $1c
    cp c                                          ; $4ec3: $b9
    rrca                                          ; $4ec4: $0f
    call Call_04c_4f77                            ; $4ec5: $cd $77 $4f
    sbc $25                                       ; $4ec8: $de $25
    di                                            ; $4eca: $f3
    ld b, e                                       ; $4ecb: $43
    ei                                            ; $4ecc: $fb
    pop de                                        ; $4ecd: $d1
    jp nc, $e68c                                  ; $4ece: $d2 $8c $e6

    sub [hl]                                      ; $4ed1: $96
    add h                                         ; $4ed2: $84
    ld c, a                                       ; $4ed3: $4f
    and b                                         ; $4ed4: $a0
    add hl, sp                                    ; $4ed5: $39
    rst $30                                       ; $4ed6: $f7
    ld a, a                                       ; $4ed7: $7f
    ld a, [hl-]                                   ; $4ed8: $3a
    sub l                                         ; $4ed9: $95
    and b                                         ; $4eda: $a0
    and $b8                                       ; $4edb: $e6 $b8
    dec sp                                        ; $4edd: $3b
    rst $38                                       ; $4ede: $ff
    jp z, $bc66                                   ; $4edf: $ca $66 $bc

    daa                                           ; $4ee2: $27
    or l                                          ; $4ee3: $b5
    ld e, d                                       ; $4ee4: $5a
    ret nc                                        ; $4ee5: $d0

Call_04c_4ee6:
    ld h, c                                       ; $4ee6: $61
    ld e, c                                       ; $4ee7: $59
    call $f4c5                                    ; $4ee8: $cd $c5 $f4
    ld a, h                                       ; $4eeb: $7c
    ld sp, $a4b7                                  ; $4eec: $31 $b7 $a4
    ldh [rNR42], a                                ; $4eef: $e0 $21
    ld b, $c9                                     ; $4ef1: $06 $c9
    dec hl                                        ; $4ef3: $2b
    xor l                                         ; $4ef4: $ad
    call $2509                                    ; $4ef5: $cd $09 $25
    add h                                         ; $4ef8: $84

Call_04c_4ef9:
    add a                                         ; $4ef9: $87

Call_04c_4efa:
    inc e                                         ; $4efa: $1c
    rra                                           ; $4efb: $1f
    rst $08                                       ; $4efc: $cf
    reti                                          ; $4efd: $d9


    ld [hl+], a                                   ; $4efe: $22

jr_04c_4eff:
    inc sp                                        ; $4eff: $33
    ld e, d                                       ; $4f00: $5a

jr_04c_4f01:
    sbc d                                         ; $4f01: $9a
    pop de                                        ; $4f02: $d1
    jr nz, jr_04c_4eff                            ; $4f03: $20 $fa

    and d                                         ; $4f05: $a2
    ld a, [hl+]                                   ; $4f06: $2a

Call_04c_4f07:
    push af                                       ; $4f07: $f5
    ld l, c                                       ; $4f08: $69
    xor a                                         ; $4f09: $af
    ld h, a                                       ; $4f0a: $67
    dec bc                                        ; $4f0b: $0b
    db $ed                                        ; $4f0c: $ed
    ld b, a                                       ; $4f0d: $47
    dec bc                                        ; $4f0e: $0b
    ld a, [hl-]                                   ; $4f0f: $3a
    cp $6e                                        ; $4f10: $fe $6e
    ret                                           ; $4f12: $c9


    sub e                                         ; $4f13: $93
    and l                                         ; $4f14: $a5
    and h                                         ; $4f15: $a4
    jp nz, Jump_04c_710b                          ; $4f16: $c2 $0b $71

    ld [hl], e                                    ; $4f19: $73
    rra                                           ; $4f1a: $1f

Call_04c_4f1b:
    ld a, [de]                                    ; $4f1b: $1a
    ld [hl], a                                    ; $4f1c: $77
    and c                                         ; $4f1d: $a1
    jp hl                                         ; $4f1e: $e9


    and $c5                                       ; $4f1f: $e6 $c5
    ld l, $8d                                     ; $4f21: $2e $8d
    ld c, b                                       ; $4f23: $48
    ld c, h                                       ; $4f24: $4c
    ld a, h                                       ; $4f25: $7c
    nop                                           ; $4f26: $00
    ld d, a                                       ; $4f27: $57
    rst $38                                       ; $4f28: $ff
    and a                                         ; $4f29: $a7
    di                                            ; $4f2a: $f3
    xor a                                         ; $4f2b: $af
    inc e                                         ; $4f2c: $1c
    jr z, jr_04c_4f68                             ; $4f2d: $28 $39

    adc d                                         ; $4f2f: $8a
    rst $20                                       ; $4f30: $e7
    dec sp                                        ; $4f31: $3b
    ld c, b                                       ; $4f32: $48
    ld e, e                                       ; $4f33: $5b
    jp z, $bc66                                   ; $4f34: $ca $66 $bc

    db $eb                                        ; $4f37: $eb
    db $dd                                        ; $4f38: $dd
    xor c                                         ; $4f39: $a9
    push hl                                       ; $4f3a: $e5
    ld b, l                                       ; $4f3b: $45
    ld h, [hl]                                    ; $4f3c: $66
    or h                                          ; $4f3d: $b4
    db $fc                                        ; $4f3e: $fc
    rra                                           ; $4f3f: $1f
    ld a, c                                       ; $4f40: $79
    daa                                           ; $4f41: $27
    db $e3                                        ; $4f42: $e3
    cp c                                          ; $4f43: $b9
    rst $38                                       ; $4f44: $ff
    db $d3                                        ; $4f45: $d3
    jr nc, jr_04c_4f01                            ; $4f46: $30 $b9

    ld d, h                                       ; $4f48: $54
    and l                                         ; $4f49: $a5
    inc l                                         ; $4f4a: $2c
    cp c                                          ; $4f4b: $b9
    di                                            ; $4f4c: $f3
    sbc b                                         ; $4f4d: $98
    and b                                         ; $4f4e: $a0
    cp c                                          ; $4f4f: $b9
    and b                                         ; $4f50: $a0
    sub e                                         ; $4f51: $93
    ld c, [hl]                                    ; $4f52: $4e
    ld a, [c]                                     ; $4f53: $f2
    ld e, h                                       ; $4f54: $5c
    ld c, h                                       ; $4f55: $4c
    rst $18                                       ; $4f56: $df
    adc h                                         ; $4f57: $8c
    rrca                                          ; $4f58: $0f
    cpl                                           ; $4f59: $2f
    ld h, c                                       ; $4f5a: $61
    inc hl                                        ; $4f5b: $23
    ld c, e                                       ; $4f5c: $4b
    cp a                                          ; $4f5d: $bf
    ret z                                         ; $4f5e: $c8

    ret nz                                        ; $4f5f: $c0

    adc $3f                                       ; $4f60: $ce $3f
    ld a, l                                       ; $4f62: $7d
    ld l, c                                       ; $4f63: $69
    db $fc                                        ; $4f64: $fc
    xor e                                         ; $4f65: $ab
    cp b                                          ; $4f66: $b8
    ld d, c                                       ; $4f67: $51

jr_04c_4f68:
    add h                                         ; $4f68: $84
    add hl, bc                                    ; $4f69: $09
    or $a1                                        ; $4f6a: $f6 $a1
    ld sp, hl                                     ; $4f6c: $f9
    xor $ad                                       ; $4f6d: $ee $ad
    sub d                                         ; $4f6f: $92
    ldh a, [$7d]                                  ; $4f70: $f0 $7d
    ld [hl], e                                    ; $4f72: $73
    ld c, a                                       ; $4f73: $4f
    adc d                                         ; $4f74: $8a
    ld a, h                                       ; $4f75: $7c
    dec [hl]                                      ; $4f76: $35

Call_04c_4f77:
    ld h, $98                                     ; $4f77: $26 $98
    db $fc                                        ; $4f79: $fc
    ld d, c                                       ; $4f7a: $51
    inc sp                                        ; $4f7b: $33
    ld a, $00                                     ; $4f7c: $3e $00
    rst $10                                       ; $4f7e: $d7
    cp e                                          ; $4f7f: $bb
    di                                            ; $4f80: $f3
    ld [hl], a                                    ; $4f81: $77
    ld b, $d1                                     ; $4f82: $06 $d1
    rla                                           ; $4f84: $17
    ld d, l                                       ; $4f85: $55
    xor c                                         ; $4f86: $a9
    ld c, a                                       ; $4f87: $4f
    ld a, e                                       ; $4f88: $7b
    sbc [hl]                                      ; $4f89: $9e
    jr nc, jr_04c_4ff1                            ; $4f8a: $30 $65

    push af                                       ; $4f8c: $f5
    and d                                         ; $4f8d: $a2
    ld e, a                                       ; $4f8e: $5f
    ld l, [hl]                                    ; $4f8f: $6e
    adc $2d                                       ; $4f90: $ce $2d
    ld [hl], c                                    ; $4f92: $71
    or l                                          ; $4f93: $b5
    ld l, [hl]                                    ; $4f94: $6e
    adc $1b                                       ; $4f95: $ce $1b
    cpl                                           ; $4f97: $2f
    add sp, -$26                                  ; $4f98: $e8 $da
    inc e                                         ; $4f9a: $1c
    ld l, b                                       ; $4f9b: $68
    or [hl]                                       ; $4f9c: $b6

Call_04c_4f9d:
    ld a, [hl+]                                   ; $4f9d: $2a
    ld b, d                                       ; $4f9e: $42
    rst $28                                       ; $4f9f: $ef
    xor e                                         ; $4fa0: $ab
    rla                                           ; $4fa1: $17
    ld d, [hl]                                    ; $4fa2: $56
    ldh [$81], a                                  ; $4fa3: $e0 $81
    cp d                                          ; $4fa5: $ba
    ccf                                           ; $4fa6: $3f
    ld a, l                                       ; $4fa7: $7d
    ld [hl], e                                    ; $4fa8: $73
    xor $ff                                       ; $4fa9: $ee $ff
    or h                                          ; $4fab: $b4
    and b                                         ; $4fac: $a0
    dec sp                                        ; $4fad: $3b
    ld h, e                                       ; $4fae: $63
    dec h                                         ; $4faf: $25
    scf                                           ; $4fb0: $37
    ld a, $00                                     ; $4fb1: $3e $00
    rst $10                                       ; $4fb3: $d7
    db $e4                                        ; $4fb4: $e4
    ld c, [hl]                                    ; $4fb5: $4e
    rst $18                                       ; $4fb6: $df
    sbc c                                         ; $4fb7: $99
    scf                                           ; $4fb8: $37
    ld e, [hl]                                    ; $4fb9: $5e
    ld l, c                                       ; $4fba: $69
    daa                                           ; $4fbb: $27
    db $e3                                        ; $4fbc: $e3
    ld b, l                                       ; $4fbd: $45
    sbc b                                         ; $4fbe: $98
    cp [hl]                                       ; $4fbf: $be
    inc [hl]                                      ; $4fc0: $34
    adc c                                         ; $4fc1: $89
    db $10                                        ; $4fc2: $10
    call nc, $87dc                                ; $4fc3: $d4 $dc $87
    ld d, $96                                     ; $4fc6: $16 $96
    rst $00                                       ; $4fc8: $c7
    dec h                                         ; $4fc9: $25
    ld a, [hl+]                                   ; $4fca: $2a
    and $4e                                       ; $4fcb: $e6 $4e
    ld b, [hl]                                    ; $4fcd: $46
    call $00f8                                    ; $4fce: $cd $f8 $00
    cpl                                           ; $4fd1: $2f
    sub [hl]                                      ; $4fd2: $96
    ld h, a                                       ; $4fd3: $67
    ld a, d                                       ; $4fd4: $7a
    ld e, $3b                                     ; $4fd5: $1e $3b
    adc c                                         ; $4fd7: $89
    db $10                                        ; $4fd8: $10
    call nc, $e09c                                ; $4fd9: $d4 $9c $e0
    jr nz, jr_04c_5015                            ; $4fdc: $20 $37

    ld [hl], a                                    ; $4fde: $77
    ld a, [$79e4]                                 ; $4fdf: $fa $e4 $79
    ld l, l                                       ; $4fe2: $6d
    xor $64                                       ; $4fe3: $ee $64
    jp hl                                         ; $4fe5: $e9


    xor e                                         ; $4fe6: $ab
    ld sp, $3941                                  ; $4fe7: $31 $41 $39
    add sp, $22                                   ; $4fea: $e8 $22
    sub e                                         ; $4fec: $93
    call Call_000_39b5                            ; $4fed: $cd $b5 $39
    sub e                                         ; $4ff0: $93

jr_04c_4ff1:
    push de                                       ; $4ff1: $d5
    ld [$92ba], sp                                ; $4ff2: $08 $ba $92
    ld l, e                                       ; $4ff5: $6b
    add h                                         ; $4ff6: $84
    add hl, bc                                    ; $4ff7: $09
    ld [c], a                                     ; $4ff8: $e2
    inc bc                                        ; $4ff9: $03
    cpl                                           ; $4ffa: $2f
    ld h, d                                       ; $4ffb: $62
    sub b                                         ; $4ffc: $90
    ld c, e                                       ; $4ffd: $4b
    xor h                                         ; $4ffe: $ac

Call_04c_4fff:
    ld [hl], e                                    ; $4fff: $73
    ld [$7394], a                                 ; $5000: $ea $94 $73
    and e                                         ; $5003: $a3
    rst $28                                       ; $5004: $ef
    inc d                                         ; $5005: $14
    inc a                                         ; $5006: $3c
    db $fc                                        ; $5007: $fc
    call $cee6                                    ; $5008: $cd $e6 $ce
    jr jr_04c_4ff1                                ; $500b: $18 $e4

    call c, Call_04c_5412                         ; $500d: $dc $12 $54
    push bc                                       ; $5010: $c5
    ld c, e                                       ; $5011: $4b
    di                                            ; $5012: $f3
    add $43                                       ; $5013: $c6 $43

jr_04c_5015:
    add hl, sp                                    ; $5015: $39
    pop bc                                        ; $5016: $c1
    ld b, c                                       ; $5017: $41
    ld l, [hl]                                    ; $5018: $6e
    xor $43                                       ; $5019: $ee $43
    ld l, e                                       ; $501b: $6b
    ld [hl], e                                    ; $501c: $73
    sub b                                         ; $501d: $90
    add hl, de                                    ; $501e: $19
    xor l                                         ; $501f: $ad
    ld e, b                                       ; $5020: $58
    ld l, d                                       ; $5021: $6a
    ld l, $ac                                     ; $5022: $2e $ac
    jr nc, jr_04c_5076                            ; $5024: $30 $50

    push bc                                       ; $5026: $c5
    ld h, [hl]                                    ; $5027: $66
    add hl, de                                    ; $5028: $19
    rra                                           ; $5029: $1f
    rst $10                                       ; $502a: $d7
    db $e4                                        ; $502b: $e4
    add h                                         ; $502c: $84
    ld [bc], a                                    ; $502d: $02
    jp nz, Jump_04c_5a00                          ; $502e: $c2 $00 $5a

    ld h, d                                       ; $5031: $62
    ld a, c                                       ; $5032: $79
    daa                                           ; $5033: $27
    inc sp                                        ; $5034: $33
    ld a, [$ced1]                                 ; $5035: $fa $d1 $ce
    ld e, l                                       ; $5038: $5d
    ld h, d                                       ; $5039: $62
    ld a, c                                       ; $503a: $79
    xor [hl]                                      ; $503b: $ae

Call_04c_503c:
    ret                                           ; $503c: $c9


    jp nc, $4224                                  ; $503d: $d2 $24 $42

    ld d, e                                       ; $5040: $53
    dec h                                         ; $5041: $25
    or a                                          ; $5042: $b7
    call nc, Call_04c_699c                        ; $5043: $d4 $9c $69
    dec [hl]                                      ; $5046: $35
    ld [hl], e                                    ; $5047: $73
    ld a, a                                       ; $5048: $7f
    ld a, [$3372]                                 ; $5049: $fa $72 $33
    ld a, $00                                     ; $504c: $3e $00
    rst $08                                       ; $504e: $cf
    inc hl                                        ; $504f: $23
    inc b                                         ; $5050: $04
    dec [hl]                                      ; $5051: $35
    ld hl, $5c53                                  ; $5052: $21 $53 $5c
    sbc h                                         ; $5055: $9c
    call nc, $9298                                ; $5056: $d4 $98 $92
    rla                                           ; $5059: $17
    ld [hl], l                                    ; $505a: $75
    jp hl                                         ; $505b: $e9


    inc c                                         ; $505c: $0c
    db $fc                                        ; $505d: $fc
    ld a, [$ce61]                                 ; $505e: $fa $61 $ce
    ld [hl], a                                    ; $5061: $77
    sbc a                                         ; $5062: $9f
    sbc d                                         ; $5063: $9a
    pop af                                        ; $5064: $f1
    ld bc, $1597                                  ; $5065: $01 $97 $15
    ld d, $74                                     ; $5068: $16 $74
    rst $38                                       ; $506a: $ff
    inc hl                                        ; $506b: $23
    rst $28                                       ; $506c: $ef
    ld d, h                                       ; $506d: $54
    cp l                                          ; $506e: $bd
    ld [hl], $d5                                  ; $506f: $36 $d5
    jp c, Jump_04c_449c                           ; $5071: $da $9c $44

    ld l, b                                       ; $5074: $68
    ld d, h                                       ; $5075: $54

jr_04c_5076:
    ld a, b                                       ; $5076: $78
    ret z                                         ; $5077: $c8

    jp $ef9c                                      ; $5078: $c3 $9c $ef


    ld a, $68                                     ; $507b: $3e $68
    ld c, $54                                     ; $507d: $0e $54
    ld d, [hl]                                    ; $507f: $56
    ld [hl], $af                                  ; $5080: $36 $af
    db $ec                                        ; $5082: $ec
    jp c, Jump_000_33f5                           ; $5083: $da $f5 $33

    ld h, $38                                     ; $5086: $26 $38
    ld d, l                                       ; $5088: $55
    jp z, $8fa6                                   ; $5089: $ca $a6 $8f

    rrca                                          ; $508c: $0f
    ld l, a                                       ; $508d: $6f
    sbc e                                         ; $508e: $9b
    pop de                                        ; $508f: $d1
    adc a                                         ; $5090: $8f
    ld d, $b6                                     ; $5091: $16 $b6
    ld [hl+], a                                   ; $5093: $22
    ld e, $d6                                     ; $5094: $1e $d6
    sub a                                         ; $5096: $97
    jp c, Jump_04c_585c                           ; $5097: $da $5c $58

    sbc $77                                       ; $509a: $de $77

Call_04c_509c:
    ld c, e                                       ; $509c: $4b
    sub e                                         ; $509d: $93
    ld [$cd41], sp                                ; $509e: $08 $41 $cd
    dec hl                                        ; $50a1: $2b
    rlca                                          ; $50a2: $07
    rst $10                                       ; $50a3: $d7
    db $e4                                        ; $50a4: $e4
    ld [hl+], a                                   ; $50a5: $22
    ld d, h                                       ; $50a6: $54
    adc e                                         ; $50a7: $8b
    jr nc, @-$36                                  ; $50a8: $30 $c8

    ld b, l                                       ; $50aa: $45
    cp a                                          ; $50ab: $bf
    cp [hl]                                       ; $50ac: $be
    and h                                         ; $50ad: $a4
    ld h, $11                                     ; $50ae: $26 $11
    ld d, d                                       ; $50b0: $52
    and [hl]                                      ; $50b1: $a6
    call Call_000_3e37                            ; $50b2: $cd $37 $3e
    nop                                           ; $50b5: $00
    ld c, a                                       ; $50b6: $4f
    ld l, d                                       ; $50b7: $6a
    dec [hl]                                      ; $50b8: $35
    sub h                                         ; $50b9: $94
    dec sp                                        ; $50ba: $3b
    or l                                          ; $50bb: $b5
    or h                                          ; $50bc: $b4
    inc [hl]                                      ; $50bd: $34
    and e                                         ; $50be: $a3
    ld sp, hl                                     ; $50bf: $f9
    ld c, [hl]                                    ; $50c0: $4e
    ld a, [de]                                    ; $50c1: $1a
    inc b                                         ; $50c2: $04
    sub l                                         ; $50c3: $95
    ld b, $ec                                     ; $50c4: $06 $ec
    ld h, d                                       ; $50c6: $62
    reti                                          ; $50c7: $d9


    ld b, [hl]                                    ; $50c8: $46
    ld b, e                                       ; $50c9: $43
    cp c                                          ; $50ca: $b9
    ld [hl], $17                                  ; $50cb: $36 $17
    ld e, d                                       ; $50cd: $5a
    ld [hl], $a5                                  ; $50ce: $36 $a5
    ld b, l                                       ; $50d0: $45
    pop af                                        ; $50d1: $f1
    ld bc, $b157                                  ; $50d2: $01 $57 $b1
    ld [hl], e                                    ; $50d5: $73
    ld c, e                                       ; $50d6: $4b
    daa                                           ; $50d7: $27
    or e                                          ; $50d8: $b3
    db $f4                                        ; $50d9: $f4
    db $dd                                        ; $50da: $dd
    ld a, e                                       ; $50db: $7b
    daa                                           ; $50dc: $27
    di                                            ; $50dd: $f3
    cp [hl]                                       ; $50de: $be
    ld h, h                                       ; $50df: $64
    ld b, [hl]                                    ; $50e0: $46
    ld c, d                                       ; $50e1: $4a
    db $fc                                        ; $50e2: $fc
    sbc $eb                                       ; $50e3: $de $eb
    ld c, [hl]                                    ; $50e5: $4e
    xor b                                         ; $50e6: $a8
    ld [hl], l                                    ; $50e7: $75
    ld [hl], e                                    ; $50e8: $73
    and [hl]                                      ; $50e9: $a6
    add hl, de                                    ; $50ea: $19
    inc bc                                        ; $50eb: $03
    cp a                                          ; $50ec: $bf
    ret nc                                        ; $50ed: $d0

    inc l                                         ; $50ee: $2c
    add hl, sp                                    ; $50ef: $39
    add sp, $7c                                   ; $50f0: $e8 $7c
    rst $20                                       ; $50f2: $e7
    cp $4f                                        ; $50f3: $fe $4f
    adc d                                         ; $50f5: $8a
    cp e                                          ; $50f6: $bb
    inc sp                                        ; $50f7: $33
    ld b, $19                                     ; $50f8: $06 $19
    rra                                           ; $50fa: $1f
    cpl                                           ; $50fb: $2f
    sbc d                                         ; $50fc: $9a
    ld d, $a1                                     ; $50fd: $16 $a1
    ld [hl], a                                    ; $50ff: $77
    call nc, Call_000_37f2                        ; $5100: $d4 $f2 $37
    ld a, [c]                                     ; $5103: $f2
    ld e, l                                       ; $5104: $5d
    call nc, Call_000_39b5                        ; $5105: $d4 $b5 $39
    pop bc                                        ; $5108: $c1
    ld [de], a                                    ; $5109: $12
    ld [hl], h                                    ; $510a: $74
    ld [de], a                                    ; $510b: $12
    and c                                         ; $510c: $a1
    pop af                                        ; $510d: $f1
    ld l, a                                       ; $510e: $6f
    ld c, $e5                                     ; $510f: $0e $e5
    ld [de], a                                    ; $5111: $12
    set 4, e                                      ; $5112: $cb $e3

jr_04c_5114:
    add d                                         ; $5114: $82
    and $c2                                       ; $5115: $e6 $c2
    ld b, [hl]                                    ; $5117: $46
    dec sp                                        ; $5118: $3b
    and c                                         ; $5119: $a1
    or $1d                                        ; $511a: $f6 $1d
    add hl, de                                    ; $511c: $19
    cp h                                          ; $511d: $bc
    cp c                                          ; $511e: $b9
    rrca                                          ; $511f: $0f
    xor l                                         ; $5120: $ad
    call Call_000_3d09                            ; $5121: $cd $09 $3d
    scf                                           ; $5124: $37
    ld d, d                                       ; $5125: $52
    call c, $f16a                                 ; $5126: $dc $6a $f1
    rlca                                          ; $5129: $07
    cpl                                           ; $512a: $2f
    ld h, d                                       ; $512b: $62
    sub b                                         ; $512c: $90
    ei                                            ; $512d: $fb
    sub c                                         ; $512e: $91
    dec l                                         ; $512f: $2d
    ld [hl-], a                                   ; $5130: $32
    sub e                                         ; $5131: $93
    inc a                                         ; $5132: $3c
    db $d3                                        ; $5133: $d3
    adc h                                         ; $5134: $8c
    add c                                         ; $5135: $81
    rst $18                                       ; $5136: $df
    reti                                          ; $5137: $d9


    inc [hl]                                      ; $5138: $34
    add d                                         ; $5139: $82
    ld c, [hl]                                    ; $513a: $4e
    ld [hl+], a                                   ; $513b: $22
    and h                                         ; $513c: $a4
    ldh [$e1], a                                  ; $513d: $e0 $e1
    rst $20                                       ; $513f: $e7
    ld l, d                                       ; $5140: $6a
    dec d                                         ; $5141: $15
    rra                                           ; $5142: $1f
    rst $10                                       ; $5143: $d7
    cp e                                          ; $5144: $bb
    inc sp                                        ; $5145: $33
    sub [hl]                                      ; $5146: $96
    sub a                                         ; $5147: $97
    ld e, b                                       ; $5148: $58
    sbc [hl]                                      ; $5149: $9e
    ld l, e                                       ; $514a: $6b
    ld h, $27                                     ; $514b: $26 $27
    ld de, $9a82                                  ; $514d: $11 $82 $9a
    inc de                                        ; $5150: $13
    cp [hl]                                       ; $5151: $be
    db $db                                        ; $5152: $db
    sbc h                                         ; $5153: $9c
    rst $28                                       ; $5154: $ef
    add h                                         ; $5155: $84
    ld [bc], a                                    ; $5156: $02
    rrc [hl]                                      ; $5157: $cb $0e
    ret nc                                        ; $5159: $d0

    ld c, a                                       ; $515a: $4f
    rra                                           ; $515b: $1f
    rst $28                                       ; $515c: $ef
    cp l                                          ; $515d: $bd
    adc [hl]                                      ; $515e: $8e
    ld c, h                                       ; $515f: $4c
    ld [hl], $87                                  ; $5160: $36 $87
    add hl, sp                                    ; $5162: $39
    rst $18                                       ; $5163: $df
    sbc l                                         ; $5164: $9d
    adc h                                         ; $5165: $8c
    and $5a                                       ; $5166: $e6 $5a
    adc [hl]                                      ; $5168: $8e
    ret                                           ; $5169: $c9


    jr nz, jr_04c_5114                            ; $516a: $20 $a8

    add hl, de                                    ; $516c: $19
    rra                                           ; $516d: $1f
    ld l, a                                       ; $516e: $6f
    ld h, c                                       ; $516f: $61
    ld a, [$1805]                                 ; $5170: $fa $05 $18
    call z, $ef1b                                 ; $5173: $cc $1b $ef
    ld a, a                                       ; $5176: $7f
    cp c                                          ; $5177: $b9
    di                                            ; $5178: $f3
    ld e, a                                       ; $5179: $5f
    add hl, bc                                    ; $517a: $09
    ld e, h                                       ; $517b: $5c
    call z, $9cb5                                 ; $517c: $cc $b5 $9c
    rst $00                                       ; $517f: $c7
    ld l, $6a                                     ; $5180: $2e $6a
    xor d                                         ; $5182: $aa
    and $3c                                       ; $5183: $e6 $3c
    halt                                          ; $5185: $76
    and [hl]                                      ; $5186: $a6
    push de                                       ; $5187: $d5
    jp c, Jump_04c_449c                           ; $5188: $da $9c $44

    ld l, b                                       ; $518b: $68
    rst $20                                       ; $518c: $e7
    sbc a                                         ; $518d: $9f
    cp [hl]                                       ; $518e: $be
    inc [hl]                                      ; $518f: $34
    ld sp, hl                                     ; $5190: $f9
    and c                                         ; $5191: $a1
    ld c, c                                       ; $5192: $49
    sub e                                         ; $5193: $93
    push de                                       ; $5194: $d5
    call Call_000_072b                            ; $5195: $cd $2b $07
    cpl                                           ; $5198: $2f
    ld h, d                                       ; $5199: $62
    sub b                                         ; $519a: $90
    ld [hl], e                                    ; $519b: $73
    call Call_04c_7697                            ; $519c: $cd $97 $76
    ld l, $e0                                     ; $519f: $2e $e0
    sbc c                                         ; $51a1: $99
    ld h, [hl]                                    ; $51a2: $66
    inc c                                         ; $51a3: $0c
    db $fc                                        ; $51a4: $fc
    ld h, e                                       ; $51a5: $63
    inc de                                        ; $51a6: $13
    jp z, $b5a5                                   ; $51a7: $ca $a5 $b5

    cp c                                          ; $51aa: $b9
    ret nc                                        ; $51ab: $d0

    or h                                          ; $51ac: $b4
    ld l, b                                       ; $51ad: $68
    push bc                                       ; $51ae: $c5
    ld a, c                                       ; $51af: $79
    res 6, l                                      ; $51b0: $cb $b5
    add hl, sp                                    ; $51b2: $39
    ld e, l                                       ; $51b3: $5d
    ret nc                                        ; $51b4: $d0

    ld sp, hl                                     ; $51b5: $f9
    rrca                                          ; $51b6: $0f
    push bc                                       ; $51b7: $c5
    rlca                                          ; $51b8: $07
    rst $10                                       ; $51b9: $d7
    db $e4                                        ; $51ba: $e4
    ld e, h                                       ; $51bb: $5c
    ld [hl-], a                                   ; $51bc: $32
    inc bc                                        ; $51bd: $03
    adc e                                         ; $51be: $8b
    ld a, [hl-]                                   ; $51bf: $3a
    inc de                                        ; $51c0: $13
    db $ed                                        ; $51c1: $ed
    adc e                                         ; $51c2: $8b
    ld d, $d5                                     ; $51c3: $16 $d5
    and l                                         ; $51c5: $a5
    rst $28                                       ; $51c6: $ef
    sbc h                                         ; $51c7: $9c
    or $d2                                        ; $51c8: $f6 $d2
    daa                                           ; $51ca: $27
    xor c                                         ; $51cb: $a9
    sub $e6                                       ; $51cc: $d6 $e6
    ld e, d                                       ; $51ce: $5a
    jp nc, $c818                                  ; $51cf: $d2 $18 $c8

    add c                                         ; $51d2: $81
    cp d                                          ; $51d3: $ba
    add l                                         ; $51d4: $85
    add a                                         ; $51d5: $87
    inc a                                         ; $51d6: $3c
    ld l, $68                                     ; $51d7: $2e $68
    xor [hl]                                      ; $51d9: $ae
    call $8449                                    ; $51da: $cd $49 $84
    halt                                          ; $51dd: $76
    cp $ce                                        ; $51de: $fe $ce
    and h                                         ; $51e0: $a4
    sub e                                         ; $51e1: $93
    reti                                          ; $51e2: $d9


    call c, $3309                                 ; $51e3: $dc $09 $33
    sbc e                                         ; $51e6: $9b
    ld d, a                                       ; $51e7: $57
    ld c, $d7                                     ; $51e8: $0e $d7
    dec sp                                        ; $51ea: $3b
    sub a                                         ; $51eb: $97
    or b                                          ; $51ec: $b0
    jp hl                                         ; $51ed: $e9


    ld sp, $5977                                  ; $51ee: $31 $77 $59
    adc d                                         ; $51f1: $8a
    xor d                                         ; $51f2: $aa
    or c                                          ; $51f3: $b1
    add hl, sp                                    ; $51f4: $39
    ld d, h                                       ; $51f5: $54
    dec sp                                        ; $51f6: $3b
    ld d, l                                       ; $51f7: $55
    ld c, a                                       ; $51f8: $4f
    ld [hl+], a                                   ; $51f9: $22
    inc b                                         ; $51fa: $04
    ld hl, $58b8                                  ; $51fb: $21 $b8 $58
    ld a, b                                       ; $51fe: $78
    db $e3                                        ; $51ff: $e3
    sub l                                         ; $5200: $95
    ld hl, sp+$00                                 ; $5201: $f8 $00
    rst $10                                       ; $5203: $d7
    db $e4                                        ; $5204: $e4
    call c, $bd5f                                 ; $5205: $dc $5f $bd
    xor b                                         ; $5208: $a8
    inc sp                                        ; $5209: $33
    xor l                                         ; $520a: $ad
    sub $e6                                       ; $520b: $d6 $e6
    jr nz, jr_04c_5262                            ; $520d: $20 $53

    and b                                         ; $520f: $a0
    jp nz, $e6a7                                  ; $5210: $c2 $a7 $e6

    and h                                         ; $5213: $a4
    add e                                         ; $5214: $83
    or d                                          ; $5215: $b2
    add hl, sp                                    ; $5216: $39
    add l                                         ; $5217: $85
    jp hl                                         ; $5218: $e9


    push de                                       ; $5219: $d5
    ld d, b                                       ; $521a: $50
    xor $43                                       ; $521b: $ee $43
    ld a, e                                       ; $521d: $7b
    rst $28                                       ; $521e: $ef
    ld d, h                                       ; $521f: $54
    ld c, h                                       ; $5220: $4c
    push bc                                       ; $5221: $c5
    push bc                                       ; $5222: $c5
    call c, Call_000_3919                         ; $5223: $dc $19 $39
    ld a, $00                                     ; $5226: $3e $00
    sub a                                         ; $5228: $97
    scf                                           ; $5229: $37
    ld e, h                                       ; $522a: $5c
    db $ec                                        ; $522b: $ec
    add h                                         ; $522c: $84
    ld e, l                                       ; $522d: $5d
    ret c                                         ; $522e: $d8

    adc d                                         ; $522f: $8a
    ld a, b                                       ; $5230: $78
    ld de, $3906                                  ; $5231: $11 $06 $39
    ld e, c                                       ; $5234: $59
    xor [hl]                                      ; $5235: $ae
    sub [hl]                                      ; $5236: $96
    cp a                                          ; $5237: $bf
    ld [hl], d                                    ; $5238: $72
    and b                                         ; $5239: $a0
    db $10                                        ; $523a: $10
    ld c, d                                       ; $523b: $4a
    cp [hl]                                       ; $523c: $be
    ld [hl], d                                    ; $523d: $72
    nop                                           ; $523e: $00
    rst $10                                       ; $523f: $d7
    db $e4                                        ; $5240: $e4
    jp nz, Jump_000_330a                          ; $5241: $c2 $0a $33

    call $f818                                    ; $5244: $cd $18 $f8
    add l                                         ; $5247: $85

jr_04c_5248:
    push hl                                       ; $5248: $e5
    add c                                         ; $5249: $81
    cp d                                          ; $524a: $ba
    cp a                                          ; $524b: $bf
    ld a, d                                       ; $524c: $7a
    sbc $78                                       ; $524d: $de $78
    jr z, jr_04c_5248                             ; $524f: $28 $f7

    and c                                         ; $5251: $a1
    dec d                                         ; $5252: $15
    ld c, e                                       ; $5253: $4b
    call $bf45                                    ; $5254: $cd $45 $bf
    inc a                                         ; $5257: $3c
    db $fd                                        ; $5258: $fd
    and c                                         ; $5259: $a1
    and $18                                       ; $525a: $e6 $18
    inc bc                                        ; $525c: $03
    rst $18                                       ; $525d: $df
    ld d, h                                       ; $525e: $54
    ld a, e                                       ; $525f: $7b
    dec a                                         ; $5260: $3d
    ld e, e                                       ; $5261: $5b

jr_04c_5262:
    ld c, b                                       ; $5262: $48
    ld c, l                                       ; $5263: $4d
    ld d, a                                       ; $5264: $57
    xor c                                         ; $5265: $a9
    ld h, [hl]                                    ; $5266: $66
    ld a, h                                       ; $5267: $7c
    nop                                           ; $5268: $00
    rst $10                                       ; $5269: $d7
    db $e4                                        ; $526a: $e4
    add h                                         ; $526b: $84
    and $ce                                       ; $526c: $e6 $ce
    ld a, a                                       ; $526e: $7f
    pop de                                        ; $526f: $d1
    ld l, a                                       ; $5270: $6f
    cp h                                          ; $5271: $bc
    ld l, e                                       ; $5272: $6b
    ld [hl], d                                    ; $5273: $72
    rst $20                                       ; $5274: $e7
    rst $28                                       ; $5275: $ef
    db $ec                                        ; $5276: $ec
    ld d, h                                       ; $5277: $54
    dec a                                         ; $5278: $3d
    call z, Call_000_39b5                         ; $5279: $cc $b5 $39
    ld e, l                                       ; $527c: $5d
    add hl, hl                                    ; $527d: $29
    ld c, e                                       ; $527e: $4b
    dec sp                                        ; $527f: $3b
    dec de                                        ; $5280: $1b
    inc a                                         ; $5281: $3c
    db $e4                                        ; $5282: $e4
    cp c                                          ; $5283: $b9
    and l                                         ; $5284: $a5
    and [hl]                                      ; $5285: $a6
    ld d, b                                       ; $5286: $50
    rra                                           ; $5287: $1f
    ld [hl], h                                    ; $5288: $74
    daa                                           ; $5289: $27
    call nc, $b9ba                                ; $528a: $d4 $ba $b9
    ld d, e                                       ; $528d: $53
    pop bc                                        ; $528e: $c1
    add hl, de                                    ; $528f: $19
    ld d, e                                       ; $5290: $53
    ld [hl], $e3                                  ; $5291: $36 $e3
    inc bc                                        ; $5293: $03
    ld d, a                                       ; $5294: $57
    dec sp                                        ; $5295: $3b
    adc c                                         ; $5296: $89
    db $10                                        ; $5297: $10
    call nc, $a794                                ; $5298: $d4 $94 $a7
    ld a, [hl+]                                   ; $529b: $2a
    add $4e                                       ; $529c: $c6 $4e
    ld [hl], b                                    ; $529e: $70
    sub b                                         ; $529f: $90
    sbc e                                         ; $52a0: $9b
    dec bc                                        ; $52a1: $0b
    ld e, e                                       ; $52a2: $5b
    ld de, $94af                                  ; $52a3: $11 $af $94
    adc d                                         ; $52a6: $8a
    ld de, $ee74                                  ; $52a7: $11 $74 $ee
    and a                                         ; $52aa: $a7
    xor b                                         ; $52ab: $a8
    add hl, sp                                    ; $52ac: $39
    or e                                          ; $52ad: $b3
    inc b                                         ; $52ae: $04
    call Call_000_351f                            ; $52af: $cd $1f $35
    db $e3                                        ; $52b2: $e3
    inc bc                                        ; $52b3: $03
    xor a                                         ; $52b4: $af
    ld a, a                                       ; $52b5: $7f
    ld [hl+], a                                   ; $52b6: $22
    ld sp, $4317                                  ; $52b7: $31 $17 $43
    cp c                                          ; $52ba: $b9
    inc de                                        ; $52bb: $13
    ld [$9625], a                                 ; $52bc: $ea $25 $96
    rlca                                          ; $52bf: $07
    sub c                                         ; $52c0: $91
    ld [hl], c                                    ; $52c1: $71
    inc sp                                        ; $52c2: $33
    sbc $35                                       ; $52c3: $de $35
    add hl, sp                                    ; $52c5: $39
    rst $30                                       ; $52c6: $f7
    ld d, a                                       ; $52c7: $57
    cpl                                           ; $52c8: $2f
    ld [$3bf2], a                                 ; $52c9: $ea $f2 $3b
    ld c, e                                       ; $52cc: $4b
    inc l                                         ; $52cd: $2c
    ld c, a                                       ; $52ce: $4f
    jr z, jr_04c_5335                             ; $52cf: $28 $64

    and [hl]                                      ; $52d1: $a6
    db $fd                                        ; $52d2: $fd
    inc h                                         ; $52d3: $24
    ld b, d                                       ; $52d4: $42
    cp d                                          ; $52d5: $ba
    ld d, d                                       ; $52d6: $52
    sub [hl]                                      ; $52d7: $96
    ld [c], a                                     ; $52d8: $e2
    inc bc                                        ; $52d9: $03
    rst $10                                       ; $52da: $d7
    db $e4                                        ; $52db: $e4
    ld e, h                                       ; $52dc: $5c
    ld c, h                                       ; $52dd: $4c
    cp a                                          ; $52de: $bf
    rst $10                                       ; $52df: $d7
    or e                                          ; $52e0: $b3
    add l                                         ; $52e1: $85
    ld d, [hl]                                    ; $52e2: $56
    ld a, b                                       ; $52e3: $78
    ret z                                         ; $52e4: $c8

    jp $9646                                      ; $52e5: $c3 $46 $96


    ld a, [hl]                                    ; $52e8: $7e
    ld e, $bb                                     ; $52e9: $1e $bb
    xor b                                         ; $52eb: $a8
    inc a                                         ; $52ec: $3c
    ld c, e                                       ; $52ed: $4b
    ld e, a                                       ; $52ee: $5f
    adc d                                         ; $52ef: $8a
    inc l                                         ; $52f0: $2c
    push de                                       ; $52f1: $d5
    call c, Call_04c_7352                         ; $52f2: $dc $52 $73
    rst $20                                       ; $52f5: $e7
    rst $28                                       ; $52f6: $ef
    inc c                                         ; $52f7: $0c
    and d                                         ; $52f8: $a2
    sbc a                                         ; $52f9: $9f
    or d                                          ; $52fa: $b2
    add hl, de                                    ; $52fb: $19
    rra                                           ; $52fc: $1f
    rst $10                                       ; $52fd: $d7
    db $e4                                        ; $52fe: $e4
    add b                                         ; $52ff: $80
    dec l                                         ; $5300: $2d
    call $6168                                    ; $5301: $cd $68 $61
    ld a, c                                       ; $5304: $79
    sub c                                         ; $5305: $91
    ld [hl], e                                    ; $5306: $73
    add $4a                                       ; $5307: $c6 $4a
    db $fd                                        ; $5309: $fd
    and l                                         ; $530a: $a5
    sbc c                                         ; $530b: $99
    sbc $8f                                       ; $530c: $de $8f
    ld d, $61                                     ; $530e: $16 $61
    sub b                                         ; $5310: $90
    ld c, e                                       ; $5311: $4b
    xor h                                         ; $5312: $ac
    ld [hl], e                                    ; $5313: $73
    ld [$393c], a                                 ; $5314: $ea $3c $39
    sub c                                         ; $5317: $91
    ld h, d                                       ; $5318: $62
    add h                                         ; $5319: $84
    ld c, e                                       ; $531a: $4b
    dec [hl]                                      ; $531b: $35
    rlca                                          ; $531c: $07
    ld a, c                                       ; $531d: $79
    call c, $f441                                 ; $531e: $dc $41 $f4
    add l                                         ; $5321: $85
    ld d, d                                       ; $5322: $52
    inc sp                                        ; $5323: $33
    ld a, $00                                     ; $5324: $3e $00
    rst $10                                       ; $5326: $d7
    db $e4                                        ; $5327: $e4
    jp nz, Jump_04c_4b0a                          ; $5328: $c2 $0a $4b

    inc l                                         ; $532b: $2c
    cpl                                           ; $532c: $2f
    inc [hl]                                      ; $532d: $34
    ld a, [c]                                     ; $532e: $f2
    inc bc                                        ; $532f: $03
    call Call_000_305f                            ; $5330: $cd $5f $30
    ld d, b                                       ; $5333: $50
    push bc                                       ; $5334: $c5

jr_04c_5335:
    adc [hl]                                      ; $5335: $8e
    ld l, a                                       ; $5336: $6f
    ret                                           ; $5337: $c9


    rst $08                                       ; $5338: $cf
    db $fd                                        ; $5339: $fd
    sbc a                                         ; $533a: $9f
    ld d, $96                                     ; $533b: $16 $96
    ld d, a                                       ; $533d: $57
    ret c                                         ; $533e: $d8

    ld d, $35                                     ; $533f: $16 $35
    db $e3                                        ; $5341: $e3
    ld e, l                                       ; $5342: $5d

jr_04c_5343:
    sub e                                         ; $5343: $93
    dec sp                                        ; $5344: $3b
    sbc e                                         ; $5345: $9b
    ld e, [hl]                                    ; $5346: $5e
    or c                                          ; $5347: $b1
    call nc, $fb9c                                ; $5348: $d4 $9c $fb
    ccf                                           ; $534b: $3f
    dec l                                         ; $534c: $2d
    jp nz, Jump_000_0720                          ; $534d: $c2 $20 $07

    xor d                                         ; $5350: $aa
    db $fd                                        ; $5351: $fd
    and d                                         ; $5352: $a2
    ld e, a                                       ; $5353: $5f
    ld l, [hl]                                    ; $5354: $6e
    ld c, [hl]                                    ; $5355: $4e
    ld h, d                                       ; $5356: $62
    rst $08                                       ; $5357: $cf
    call $00f8                                    ; $5358: $cd $f8 $00
    rst $10                                       ; $535b: $d7
    db $e4                                        ; $535c: $e4
    jp nz, $030a                                  ; $535d: $c2 $0a $03

    dec c                                         ; $5360: $0d
    rst $38                                       ; $5361: $ff
    daa                                           ; $5362: $27
    ccf                                           ; $5363: $3f
    ld l, a                                       ; $5364: $6f
    cp h                                          ; $5365: $bc
    rst $20                                       ; $5366: $e7
    add hl, bc                                    ; $5367: $09
    ld d, e                                       ; $5368: $53

jr_04c_5369:
    ld d, [hl]                                    ; $5369: $56
    ld c, a                                       ; $536a: $4f
    ld e, d                                       ; $536b: $5a
    adc $2d                                       ; $536c: $ce $2d
    ld sp, $ca55                                  ; $536e: $31 $55 $ca
    and $4c                                       ; $5371: $e6 $4c
    xor e                                         ; $5373: $ab
    add l                                         ; $5374: $85
    jr jr_04c_5343                                ; $5375: $18 $cc

    or h                                          ; $5377: $b4
    ld e, d                                       ; $5378: $5a
    sbc e                                         ; $5379: $9b
    sub e                                         ; $537a: $93
    ld [$fced], sp                                ; $537b: $08 $ed $fc
    db $d3                                        ; $537e: $d3
    sub a                                         ; $537f: $97
    ld h, $3f                                     ; $5380: $26 $3f
    inc [hl]                                      ; $5382: $34
    ld b, c                                       ; $5383: $41
    ld h, e                                       ; $5384: $63
    jr nz, jr_04c_5369                            ; $5385: $20 $e2

    ld c, c                                       ; $5387: $49
    ld e, l                                       ; $5388: $5d
    ld d, [hl]                                    ; $5389: $56
    call $00f8                                    ; $538a: $cd $f8 $00
    xor a                                         ; $538d: $af
    ret nc                                        ; $538e: $d0

    rla                                           ; $538f: $17
    ld d, l                                       ; $5390: $55
    xor c                                         ; $5391: $a9
    ld c, a                                       ; $5392: $4f
    ld a, e                                       ; $5393: $7b
    ld [hl-], a                                   ; $5394: $32
    ld a, l                                       ; $5395: $7d
    ld c, c                                       ; $5396: $49
    ld h, e                                       ; $5397: $63
    add d                                         ; $5398: $82
    and c                                         ; $5399: $a1
    sbc d                                         ; $539a: $9a
    ld l, c                                       ; $539b: $69
    or l                                          ; $539c: $b5
    ld [hl], $17                                  ; $539d: $36 $17
    db $fd                                        ; $539f: $fd
    ld a, [$d492]                                 ; $53a0: $fa $92 $d4
    cp a                                          ; $53a3: $bf
    ld [hl], d                                    ; $53a4: $72
    xor $ff                                       ; $53a5: $ee $ff
    inc [hl]                                      ; $53a7: $34
    db $d3                                        ; $53a8: $d3
    cp d                                          ; $53a9: $ba
    ld a, e                                       ; $53aa: $7b
    adc [hl]                                      ; $53ab: $8e
    ld d, b                                       ; $53ac: $50
    inc h                                         ; $53ad: $24
    ld a, [$ff4d]                                 ; $53ae: $fa $4d $ff
    ld c, c                                       ; $53b1: $49
    push bc                                       ; $53b2: $c5
    rlca                                          ; $53b3: $07
    ld d, a                                       ; $53b4: $57
    dec sp                                        ; $53b5: $3b
    adc c                                         ; $53b6: $89
    db $10                                        ; $53b7: $10
    call nc, $bf54                                ; $53b8: $d4 $54 $bf
    ret nc                                        ; $53bb: $d0

    inc a                                         ; $53bc: $3c
    halt                                          ; $53bd: $76
    and a                                         ; $53be: $a7
    ld c, [hl]                                    ; $53bf: $4e
    ret nz                                        ; $53c0: $c0

    ld h, b                                       ; $53c1: $60
    cp [hl]                                       ; $53c2: $be
    db $d3                                        ; $53c3: $d3
    ld c, [hl]                                    ; $53c4: $4e
    jp nz, Jump_04c_49c3                          ; $53c5: $c2 $c3 $49

    ld a, [hl+]                                   ; $53c8: $2a
    ld l, b                                       ; $53c9: $68
    xor $64                                       ; $53ca: $ee $64
    ld l, d                                       ; $53cc: $6a
    ld c, $b2                                     ; $53cd: $0e $b2
    ld [c], a                                     ; $53cf: $e2
    jp z, Jump_000_17a6                           ; $53d0: $ca $a6 $17

    ld a, a                                       ; $53d3: $7f
    nop                                           ; $53d4: $00
    rst $10                                       ; $53d5: $d7
    db $e4                                        ; $53d6: $e4
    inc h                                         ; $53d7: $24
    ld h, c                                       ; $53d8: $61
    nop                                           ; $53d9: $00
    ld d, [hl]                                    ; $53da: $56
    ld a, b                                       ; $53db: $78
    ret z                                         ; $53dc: $c8

    db $d3                                        ; $53dd: $d3
    ld e, a                                       ; $53de: $5f
    rrca                                          ; $53df: $0f
    ld [hl], e                                    ; $53e0: $73
    ld h, c                                       ; $53e1: $61
    ld a, c                                       ; $53e2: $79
    ld a, [bc]                                    ; $53e3: $0a
    ld e, $12                                     ; $53e4: $1e $12
    ld b, $6e                                     ; $53e6: $06 $6e
    ld [hl], e                                    ; $53e8: $73
    ld d, c                                       ; $53e9: $51
    ld a, c                                       ; $53ea: $79
    ld l, l                                       ; $53eb: $6d
    adc $6d                                       ; $53ec: $ce $6d
    add hl, hl                                    ; $53ee: $29
    ld a, $00                                     ; $53ef: $3e $00
    rst $08                                       ; $53f1: $cf
    db $fd                                        ; $53f2: $fd
    ld a, [$4a9d]                                 ; $53f3: $fa $9d $4a
    ld a, [c]                                     ; $53f6: $f2
    ld h, d                                       ; $53f7: $62
    sub a                                         ; $53f8: $97
    ld b, [hl]                                    ; $53f9: $46
    inc h                                         ; $53fa: $24
    ld b, [hl]                                    ; $53fb: $46
    db $fc                                        ; $53fc: $fc
    ld bc, $e4d7                                  ; $53fd: $01 $d7 $e4
    and h                                         ; $5400: $a4
    push hl                                       ; $5401: $e5
    ld b, d                                       ; $5402: $42
    inc sp                                        ; $5403: $33

Jump_04c_5404:
    push bc                                       ; $5404: $c5
    ld c, e                                       ; $5405: $4b
    inc l                                         ; $5406: $2c
    rst $28                                       ; $5407: $ef
    ld h, h                                       ; $5408: $64
    ldh a, [$90]                                  ; $5409: $f0 $90
    sbc e                                         ; $540b: $9b
    db $e3                                        ; $540c: $e3
    rst $08                                       ; $540d: $cf
    sbc $78                                       ; $540e: $de $78
    ld h, c                                       ; $5410: $61
    ld a, c                                       ; $5411: $79

Call_04c_5412:
    ld a, [bc]                                    ; $5412: $0a
    ld e, $fe                                     ; $5413: $1e $fe
    xor a                                         ; $5415: $af
    inc bc                                        ; $5416: $03
    inc sp                                        ; $5417: $33
    sbc d                                         ; $5418: $9a
    ld d, b                                       ; $5419: $50
    add b                                         ; $541a: $80
    ret                                           ; $541b: $c9


    ld [c], a                                     ; $541c: $e2
    rst $30                                       ; $541d: $f7
    and h                                         ; $541e: $a4
    sub $dd                                       ; $541f: $d6 $dd
    db $db                                        ; $5421: $db
    adc l                                         ; $5422: $8d
    xor d                                         ; $5423: $aa
    push de                                       ; $5424: $d5
    add b                                         ; $5425: $80
    ld e, c                                       ; $5426: $59
    ld l, $cd                                     ; $5427: $2e $cd
    ld l, b                                       ; $5429: $68
    rst $28                                       ; $542a: $ef
    sbc l                                         ; $542b: $9d
    adc d                                         ; $542c: $8a
    xor c                                         ; $542d: $a9
    cp b                                          ; $542e: $b8
    sbc b                                         ; $542f: $98
    pop af                                        ; $5430: $f1
    ld bc, $fdcf                                  ; $5431: $01 $cf $fd
    ld a, [$bf9d]                                 ; $5434: $fa $9d $bf
    ld hl, sp+$5d                                 ; $5437: $f8 $5d
    sub e                                         ; $5439: $93
    dec bc                                        ; $543a: $0b
    rst $38                                       ; $543b: $ff
    add a                                         ; $543c: $87
    and $8d                                       ; $543d: $e6 $8d
    add a                                         ; $543f: $87
    ld [hl], d                                    ; $5440: $72
    rst $38                                       ; $5441: $ff
    rrc c                                         ; $5442: $cb $09
    jr @-$12                                      ; $5444: $18 $ec

    add hl, sp                                    ; $5446: $39
    ld b, d                                       ; $5447: $42
    sub c                                         ; $5448: $91
    add sp, $37                                   ; $5449: $e8 $37
    db $fd                                        ; $544b: $fd
    and a                                         ; $544c: $a7
    sbc l                                         ; $544d: $9d
    ld a, $f9                                     ; $544e: $3e $f9
    ld h, c                                       ; $5450: $61
    add d                                         ; $5451: $82
    ld a, [$7b56]                                 ; $5452: $fa $56 $7b
    pop af                                        ; $5455: $f1
    rlca                                          ; $5456: $07
    xor a                                         ; $5457: $af
    rst $38                                       ; $5458: $ff
    jr z, jr_04c_549d                             ; $5459: $28 $42

    ret nc                                        ; $545b: $d0

    ld bc, $9142                                  ; $545c: $01 $42 $91
    ld [$b37f], sp                                ; $545f: $08 $7f $b3
    cp c                                          ; $5462: $b9
    or b                                          ; $5463: $b0
    add d                                         ; $5464: $82
    ret nc                                        ; $5465: $d0

    ld e, h                                       ; $5466: $5c
    ld h, d                                       ; $5467: $62
    ld a, c                                       ; $5468: $79
    and [hl]                                      ; $5469: $a6
    ld [hl], l                                    ; $546a: $75
    sbc e                                         ; $546b: $9b
    ld l, e                                       ; $546c: $6b
    ld [hl], e                                    ; $546d: $73
    ld b, d                                       ; $546e: $42
    push hl                                       ; $546f: $e5
    push bc                                       ; $5470: $c5
    ld [hl+], a                                   ; $5471: $22
    inc sp                                        ; $5472: $33
    jp c, Jump_04c_72ff                           ; $5473: $da $ff $72

    ld l, h                                       ; $5476: $6c
    jp hl                                         ; $5477: $e9


    sbc e                                         ; $5478: $9b
    pop af                                        ; $5479: $f1
    ld bc, $23cf                                  ; $547a: $01 $cf $23
    inc b                                         ; $547d: $04
    dec [hl]                                      ; $547e: $35
    rla                                           ; $547f: $17
    ld a, l                                       ; $5480: $7d
    ret nc                                        ; $5481: $d0

    sbc h                                         ; $5482: $9c
    or a                                          ; $5483: $b7
    inc e                                         ; $5484: $1c
    ld l, b                                       ; $5485: $68
    ld [hl], e                                    ; $5486: $73
    ld a, [de]                                    ; $5487: $1a
    ld hl, $b9a8                                  ; $5488: $21 $a8 $b9
    or b                                          ; $548b: $b0
    add d                                         ; $548c: $82
    ret nc                                        ; $548d: $d0

    cp h                                          ; $548e: $bc
    ld e, b                                       ; $548f: $58
    ld h, h                                       ; $5490: $64
    ld b, [hl]                                    ; $5491: $46
    ld d, e                                       ; $5492: $53
    ccf                                           ; $5493: $3f
    adc d                                         ; $5494: $8a
    db $10                                        ; $5495: $10
    ld [hl], h                                    ; $5496: $74
    add b                                         ; $5497: $80

jr_04c_5498:
    ld d, b                                       ; $5498: $50
    inc h                                         ; $5499: $24
    jp nz, Jump_04c_6cdf                          ; $549a: $c2 $df $6c

jr_04c_549d:
    ld l, $ac                                     ; $549d: $2e $ac
    jr nz, jr_04c_54d5                            ; $549f: $20 $34

    ld [hl], a                                    ; $54a1: $77
    xor d                                         ; $54a2: $aa
    ld e, $5b                                     ; $54a3: $1e $5b
    ld a, [$7c66]                                 ; $54a5: $fa $66 $7c
    nop                                           ; $54a8: $00
    rst $10                                       ; $54a9: $d7
    db $e4                                        ; $54aa: $e4
    add h                                         ; $54ab: $84
    and $ce                                       ; $54ac: $e6 $ce
    ld a, a                                       ; $54ae: $7f
    rra                                           ; $54af: $1f
    ld [bc], a                                    ; $54b0: $02
    dec a                                         ; $54b1: $3d
    db $fd                                        ; $54b2: $fd
    db $f4                                        ; $54b3: $f4

jr_04c_54b4:
    call Call_04c_5885                            ; $54b4: $cd $85 $58
    ld a, [de]                                    ; $54b7: $1a
    ld [hl], a                                    ; $54b8: $77
    ld h, a                                       ; $54b9: $67
    inc c                                         ; $54ba: $0c
    ld d, d                                       ; $54bb: $52
    db $fc                                        ; $54bc: $fc
    xor [hl]                                      ; $54bd: $ae
    ret                                           ; $54be: $c9


    ld bc, $f9db                                  ; $54bf: $01 $db $f9
    cp e                                          ; $54c2: $bb
    xor l                                         ; $54c3: $ad
    sbc [hl]                                      ; $54c4: $9e
    ld l, $35                                     ; $54c5: $2e $35
    rst $10                                       ; $54c7: $d7
    call c, Call_000_2ff9                         ; $54c8: $dc $f9 $2f
    inc [hl]                                      ; $54cb: $34
    ld a, [c]                                     ; $54cc: $f2
    adc e                                         ; $54cd: $8b
    jr nc, jr_04c_5498                            ; $54ce: $30 $c8

    add hl, bc                                    ; $54d0: $09
    ld d, l                                       ; $54d1: $55
    inc a                                         ; $54d2: $3c
    rst $38                                       ; $54d3: $ff
    sbc e                                         ; $54d4: $9b

jr_04c_54d5:
    ld [c], a                                     ; $54d5: $e2

jr_04c_54d6:
    rrca                                          ; $54d6: $0f
    ld l, a                                       ; $54d7: $6f
    sbc e                                         ; $54d8: $9b
    pop de                                        ; $54d9: $d1
    adc a                                         ; $54da: $8f
    add [hl]                                      ; $54db: $86
    ld l, d                                       ; $54dc: $6a
    ld h, c                                       ; $54dd: $61
    ld a, c                                       ; $54de: $79
    and [hl]                                      ; $54df: $a6
    add hl, de                                    ; $54e0: $19
    inc bc                                        ; $54e1: $03
    cp a                                          ; $54e2: $bf
    di                                            ; $54e3: $f3
    sbc a                                         ; $54e4: $9f
    ld c, e                                       ; $54e5: $4b
    cp a                                          ; $54e6: $bf
    ld h, b                                       ; $54e7: $60
    rra                                           ; $54e8: $1f
    ld e, $72                                     ; $54e9: $1e $72
    db $d3                                        ; $54eb: $d3
    ld e, a                                       ; $54ec: $5f
    add hl, sp                                    ; $54ed: $39
    nop                                           ; $54ee: $00
    rst $28                                       ; $54ef: $ef
    ld a, l                                       ; $54f0: $7d
    ld c, a                                       ; $54f1: $4f
    ld [hl], $94                                  ; $54f2: $36 $94
    dec sp                                        ; $54f4: $3b
    sbc c                                         ; $54f5: $99
    sub h                                         ; $54f6: $94
    and l                                         ; $54f7: $a5
    sbc l                                         ; $54f8: $9d
    ld a, $f9                                     ; $54f9: $3e $f9
    ld bc, $ca1b                                  ; $54fb: $01 $1b $ca
    dec [hl]                                      ; $54fe: $35
    add hl, sp                                    ; $54ff: $39
    db $fc                                        ; $5500: $fc
    adc [hl]                                      ; $5501: $8e
    ld b, d                                       ; $5502: $42
    ld d, e                                       ; $5503: $53
    cp h                                          ; $5504: $bc
    db $d3                                        ; $5505: $d3
    daa                                           ; $5506: $27
    rst $18                                       ; $5507: $df
    call c, Call_04c_4b77                         ; $5508: $dc $77 $4b
    adc e                                         ; $550b: $8b
    jr nc, jr_04c_54d6                            ; $550c: $30 $c8

    or l                                          ; $550e: $b5
    and h                                         ; $550f: $a4
    cp b                                          ; $5510: $b8
    ld d, e                                       ; $5511: $53
    ldh a, [$f0]                                  ; $5512: $f0 $f0
    ld a, a                                       ; $5514: $7f
    db $ed                                        ; $5515: $ed
    dec c                                         ; $5516: $0d
    call nz, $d707                                ; $5517: $c4 $07 $d7
    dec sp                                        ; $551a: $3b
    reti                                          ; $551b: $d9


    db $e4                                        ; $551c: $e4
    add c                                         ; $551d: $81
    ld [hl], $27                                  ; $551e: $36 $27
    call $e188                                    ; $5520: $cd $88 $e1
    ccf                                           ; $5523: $3f
    ld [de], a                                    ; $5524: $12
    jr nc, jr_04c_54b4                            ; $5525: $30 $8d

    or c                                          ; $5527: $b1
    ld c, d                                       ; $5528: $4a
    db $fc                                        ; $5529: $fc
    ld bc, $576f                                  ; $552a: $01 $6f $57
    rr a                                          ; $552d: $cb $1f
    adc l                                         ; $552f: $8d
    ld c, e                                       ; $5530: $4b
    ld c, $b8                                     ; $5531: $0e $b8
    ret c                                         ; $5533: $d8

    and l                                         ; $5534: $a5
    ld de, $8989                                  ; $5535: $11 $89 $89
    rst $30                                       ; $5538: $f7
    ld [hl], d                                    ; $5539: $72
    db $e4                                        ; $553a: $e4
    adc l                                         ; $553b: $8d
    rla                                           ; $553c: $17
    ld [hl], h                                    ; $553d: $74
    ld h, c                                       ; $553e: $61
    ld a, c                                       ; $553f: $79
    and l                                         ; $5540: $a5
    sbc l                                         ; $5541: $9d
    rst $38                                       ; $5542: $ff
    ret nz                                        ; $5543: $c0

    xor a                                         ; $5544: $af
    sbc a                                         ; $5545: $9f
    ld l, e                                       ; $5546: $6b
    add hl, sp                                    ; $5547: $39
    inc de                                        ; $5548: $13
    add hl, bc                                    ; $5549: $09
    ld h, h                                       ; $554a: $64
    ldh a, [$90]                                  ; $554b: $f0 $90
    rst $30                                       ; $554d: $f7
    and c                                         ; $554e: $a1
    dec b                                         ; $554f: $05
    sbc l                                         ; $5550: $9d
    ret nc                                        ; $5551: $d0

    ld [hl], e                                    ; $5552: $73
    and e                                         ; $5553: $a3
    ld a, c                                       ; $5554: $79
    inc sp                                        ; $5555: $33
    ld d, d                                       ; $5556: $52
    ld c, h                                       ; $5557: $4c
    ld h, $d5                                     ; $5558: $26 $d5
    push bc                                       ; $555a: $c5
    ld [hl+], a                                   ; $555b: $22
    inc bc                                        ; $555c: $03
    dec bc                                        ; $555d: $0b
    ld a, [hl-]                                   ; $555e: $3a
    rst $10                                       ; $555f: $d7
    ld [hl], d                                    ; $5560: $72
    ld de, $fb06                                  ; $5561: $11 $06 $fb
    dec d                                         ; $5564: $15
    dec [hl]                                      ; $5565: $35
    sbc e                                         ; $5566: $9b
    jp Jump_04c_585c                              ; $5567: $c3 $5c $58


    ld e, [hl]                                    ; $556a: $5e
    ld e, d                                       ; $556b: $5a
    ld h, b                                       ; $556c: $60
    and b                                         ; $556d: $a0
    add hl, sp                                    ; $556e: $39

jr_04c_556f:
    rst $10                                       ; $556f: $d7
    ld [hl], d                                    ; $5570: $72
    ld l, l                                       ; $5571: $6d
    adc $41                                       ; $5572: $ce $41
    dec e                                         ; $5574: $1d
    rra                                           ; $5575: $1f
    rst $08                                       ; $5576: $cf
    db $fd                                        ; $5577: $fd
    ld a, [$ff9d]                                 ; $5578: $fa $9d $ff
    push bc                                       ; $557b: $c5
    ld l, $8d                                     ; $557c: $2e $8d
    ld c, b                                       ; $557e: $48
    ld c, h                                       ; $557f: $4c
    cp h                                          ; $5580: $bc
    db $eb                                        ; $5581: $eb
    ld e, l                                       ; $5582: $5d
    ld h, h                                       ; $5583: $64
    ld h, b                                       ; $5584: $60
    ld hl, $6696                                  ; $5585: $21 $96 $66
    sbc d                                         ; $5588: $9a
    ld sp, $93f0                                  ; $5589: $31 $f0 $93
    ccf                                           ; $558c: $3f
    ld l, d                                       ; $558d: $6a
    adc $d5                                       ; $558e: $ce $d5
    ld e, b                                       ; $5590: $58
    ret nc                                        ; $5591: $d0

    adc h                                         ; $5592: $8c
    rrca                                          ; $5593: $0f
    rst $10                                       ; $5594: $d7
    ld a, [de]                                    ; $5595: $1a
    ld e, c                                       ; $5596: $59
    ld a, [$8b9d]                                 ; $5597: $fa $9d $8b
    adc e                                         ; $559a: $8b
    cp d                                          ; $559b: $ba
    rrca                                          ; $559c: $0f
    db $ed                                        ; $559d: $ed
    db $fc                                        ; $559e: $fc
    dec hl                                        ; $559f: $2b
    rst $00                                       ; $55a0: $c7
    dec e                                         ; $55a1: $1d
    jr nc, jr_04c_556f                            ; $55a2: $30 $cb

    and l                                         ; $55a4: $a5
    add hl, de                                    ; $55a5: $19
    dec l                                         ; $55a6: $2d
    inc l                                         ; $55a7: $2c
    ld c, a                                       ; $55a8: $4f
    ld b, c                                       ; $55a9: $41
    rst $38                                       ; $55aa: $ff
    res 7, c                                      ; $55ab: $cb $b9
    sub [hl]                                      ; $55ad: $96
    ld a, e                                       ; $55ae: $7b
    adc [hl]                                      ; $55af: $8e
    ld d, b                                       ; $55b0: $50
    inc h                                         ; $55b1: $24
    ld a, [$ff4d]                                 ; $55b2: $fa $4d $ff
    add hl, hl                                    ; $55b5: $29
    sbc $8b                                       ; $55b6: $de $8b
    ld h, [hl]                                    ; $55b8: $66
    inc [hl]                                      ; $55b9: $34
    sub h                                         ; $55ba: $94
    dec sp                                        ; $55bb: $3b
    ld h, e                                       ; $55bc: $63
    rla                                           ; $55bd: $17
    ld [hl], $5a                                  ; $55be: $36 $5a
    adc b                                         ; $55c0: $88
    and l                                         ; $55c1: $a5
    dec h                                         ; $55c2: $25
    sub [hl]                                      ; $55c3: $96
    db $e3                                        ; $55c4: $e3
    inc bc                                        ; $55c5: $03
    ld d, a                                       ; $55c6: $57
    dec sp                                        ; $55c7: $3b
    dec b                                         ; $55c8: $05
    ld a, l                                       ; $55c9: $7d
    reti                                          ; $55ca: $d9


    sbc h                                         ; $55cb: $9c
    ld l, h                                       ; $55cc: $6c
    ld h, [hl]                                    ; $55cd: $66
    ld [hl], e                                    ; $55ce: $73
    ld h, c                                       ; $55cf: $61
    ld a, c                                       ; $55d0: $79
    daa                                           ; $55d1: $27
    add e                                         ; $55d2: $83
    add a                                         ; $55d3: $87
    ld a, h                                       ; $55d4: $7c
    ld a, [$fc9f]                                 ; $55d5: $fa $9f $fc
    ld e, h                                       ; $55d8: $5c
    res 0, l                                      ; $55d9: $cb $85
    ld c, [hl]                                    ; $55db: $4e
    adc $44                                       ; $55dc: $ce $44
    cp [hl]                                       ; $55de: $be
    ld a, [de]                                    ; $55df: $1a
    inc de                                        ; $55e0: $13
    ld e, h                                       ; $55e1: $5c
    inc l                                         ; $55e2: $2c
    ld [hl-], a                                   ; $55e3: $32
    and e                                         ; $55e4: $a3
    and c                                         ; $55e5: $a1
    sbc h                                         ; $55e6: $9c
    ld [hl], a                                    ; $55e7: $77
    ld c, b                                       ; $55e8: $48
    or h                                          ; $55e9: $b4
    ld [hl], e                                    ; $55ea: $73
    sub a                                         ; $55eb: $97
    ld e, b                                       ; $55ec: $58
    sbc [hl]                                      ; $55ed: $9e
    ld e, c                                       ; $55ee: $59
    adc [hl]                                      ; $55ef: $8e
    dec sp                                        ; $55f0: $3b
    dec b                                         ; $55f1: $05
    ld d, c                                       ; $55f2: $51
    ld h, l                                       ; $55f3: $65
    inc sp                                        ; $55f4: $33
    ld a, $00                                     ; $55f5: $3e $00
    ld c, a                                       ; $55f7: $4f
    adc d                                         ; $55f8: $8a
    ld a, h                                       ; $55f9: $7c
    dec [hl]                                      ; $55fa: $35
    ld h, $50                                     ; $55fb: $26 $50
    ld a, [bc]                                    ; $55fd: $0a
    ld a, [$39b2]                                 ; $55fe: $fa $b2 $39
    reti                                          ; $5601: $d9


    call z, Call_04c_4ee6                         ; $5602: $cc $e6 $4e
    ld b, $0f                                     ; $5605: $06 $0f
    ld sp, hl                                     ; $5607: $f9
    db $f4                                        ; $5608: $f4
    ccf                                           ; $5609: $3f
    ld sp, hl                                     ; $560a: $f9
    ld h, [hl]                                    ; $560b: $66
    cp h                                          ; $560c: $bc
    rst $20                                       ; $560d: $e7
    ld l, h                                       ; $560e: $6c
    rra                                           ; $560f: $1f
    jp c, Jump_04c_57f9                           ; $5610: $da $f9 $57

    ld l, $cd                                     ; $5613: $2e $cd
    ld l, b                                       ; $5615: $68
    ld l, l                                       ; $5616: $6d
    adc $7f                                       ; $5617: $ce $7f
    rst $18                                       ; $5619: $df
    dec [hl]                                      ; $561a: $35
    rst $20                                       ; $561b: $e7
    sub d                                         ; $561c: $92
    add hl, de                                    ; $561d: $19
    ld e, b                                       ; $561e: $58
    ld h, h                                       ; $561f: $64
    ld b, [hl]                                    ; $5620: $46
    inc hl                                        ; $5621: $23
    inc sp                                        ; $5622: $33
    add hl, de                                    ; $5623: $19
    rra                                           ; $5624: $1f
    xor a                                         ; $5625: $af
    ld b, e                                       ; $5626: $43
    ld e, a                                       ; $5627: $5f
    ld [hl], $77                                  ; $5628: $36 $77
    ld [hl-], a                                   ; $562a: $32
    ld l, d                                       ; $562b: $6a
    xor $36                                       ; $562c: $ee $36
    or l                                          ; $562e: $b5
    inc [hl]                                      ; $562f: $34
    ld a, b                                       ; $5630: $78
    ret z                                         ; $5631: $c8

    ld l, d                                       ; $5632: $6a
    db $f4                                        ; $5633: $f4
    db $d3                                        ; $5634: $d3
    xor a                                         ; $5635: $af
    add hl, sp                                    ; $5636: $39
    reti                                          ; $5637: $d9


    call z, $dce6                                 ; $5638: $cc $e6 $dc
    ld [$340e], a                                 ; $563b: $ea $0e $34
    inc l                                         ; $563e: $2c
    ld b, [hl]                                    ; $563f: $46
    call $cf78                                    ; $5640: $cd $78 $cf

Jump_04c_5643:
    db $e4                                        ; $5643: $e4
    ld [hl+], a                                   ; $5644: $22
    ld d, h                                       ; $5645: $54
    ld a, [bc]                                    ; $5646: $0a
    ld e, $62                                     ; $5647: $1e $62
    ld [hl], e                                    ; $5649: $73
    rst $38                                       ; $564a: $ff
    res 3, l                                      ; $564b: $cb $9d
    xor d                                         ; $564d: $aa
    ld [hl], a                                    ; $564e: $77
    ld [hl-], a                                   ; $564f: $32
    ld a, b                                       ; $5650: $78
    ret z                                         ; $5651: $c8

    and a                                         ; $5652: $a7
    rst $38                                       ; $5653: $ff
    ret                                           ; $5654: $c9


    scf                                           ; $5655: $37
    db $e3                                        ; $5656: $e3
    inc bc                                        ; $5657: $03
    rst $08                                       ; $5658: $cf

jr_04c_5659:
    reti                                          ; $5659: $d9


    jp nc, $e68c                                  ; $565a: $d2 $8c $e6

    cp e                                          ; $565d: $bb
    add a                                         ; $565e: $87
    ld a, h                                       ; $565f: $7c
    rst $20                                       ; $5660: $e7
    sub [hl]                                      ; $5661: $96
    inc a                                         ; $5662: $3c
    ld d, $c2                                     ; $5663: $16 $c2
    inc b                                         ; $5665: $04
    ld l, e                                       ; $5666: $6b
    adc $25                                       ; $5667: $ce $25
    inc sp                                        ; $5669: $33
    or b                                          ; $566a: $b0
    db $db                                        ; $566b: $db
    ld a, b                                       ; $566c: $78
    ld h, c                                       ; $566d: $61
    ld a, c                                       ; $566e: $79
    dec l                                         ; $566f: $2d
    add hl, hl                                    ; $5670: $29
    xor $14                                       ; $5671: $ee $14
    db $f4                                        ; $5673: $f4
    cp a                                          ; $5674: $bf
    sbc h                                         ; $5675: $9c
    scf                                           ; $5676: $37
    ld e, [hl]                                    ; $5677: $5e
    ret nc                                        ; $5678: $d0

    ld [hl], c                                    ; $5679: $71
    ld b, c                                       ; $567a: $41
    ld d, e                                       ; $567b: $53
    cp $88                                        ; $567c: $fe $88
    db $e3                                        ; $567e: $e3
    inc bc                                        ; $567f: $03
    sub a                                         ; $5680: $97
    ld h, [hl]                                    ; $5681: $66
    adc d                                         ; $5682: $8a
    rst $30                                       ; $5683: $f7
    ld [hl], d                                    ; $5684: $72
    ld [hl], d                                    ; $5685: $72
    ld hl, sp-$41                                 ; $5686: $f8 $bf
    ret z                                         ; $5688: $c8

    ld [hl], a                                    ; $5689: $77
    sub a                                         ; $568a: $97
    ld c, l                                       ; $568b: $4d
    cp c                                          ; $568c: $b9
    inc sp                                        ; $568d: $33
    ld a, [c]                                     ; $568e: $f2
    ld c, h                                       ; $568f: $4c
    ld c, a                                       ; $5690: $4f
    ld e, e                                       ; $5691: $5b
    add d                                         ; $5692: $82
    jp nc, Jump_000_0c04                          ; $5693: $d2 $04 $0c

    or $1c                                        ; $5696: $f6 $1c
    and c                                         ; $5698: $a1

Call_04c_5699:
    ld c, b                                       ; $5699: $48
    db $f4                                        ; $569a: $f4
    sbc e                                         ; $569b: $9b
    cp $d3                                        ; $569c: $fe $d3
    cp h                                          ; $569e: $bc
    push hl                                       ; $569f: $e5
    ld c, [hl]                                    ; $56a0: $4e
    ret c                                         ; $56a1: $d8

    ld a, c                                       ; $56a2: $79
    set 7, l                                      ; $56a3: $cb $fd
    cpl                                           ; $56a5: $2f
    db $e3                                        ; $56a6: $e3
    ld e, l                                       ; $56a7: $5d
    ld h, d                                       ; $56a8: $62
    or b                                          ; $56a9: $b0
    ld d, e                                       ; $56aa: $53
    rrc e                                         ; $56ab: $cb $0b
    srl e                                         ; $56ad: $cb $3b
    sbc c                                         ; $56af: $99
    sub c                                         ; $56b0: $91
    add d                                         ; $56b1: $82
    add a                                         ; $56b2: $87
    jr jr_04c_5659                                ; $56b3: $18 $a4

    add $40                                       ; $56b5: $c6 $40
    xor $54                                       ; $56b7: $ee $54
    dec e                                         ; $56b9: $1d
    rra                                           ; $56ba: $1f
    rst $08                                       ; $56bb: $cf
    reti                                          ; $56bc: $d9


    jp nc, $168c                                  ; $56bd: $d2 $8c $16

    sub [hl]                                      ; $56c0: $96
    and a                                         ; $56c1: $a7
    and b                                         ; $56c2: $a0
    rst $38                                       ; $56c3: $ff
    push hl                                       ; $56c4: $e5
    ld e, h                                       ; $56c5: $5c
    srl l                                         ; $56c6: $cb $3d
    ld b, a                                       ; $56c8: $47
    jr z, jr_04c_56dd                             ; $56c9: $28 $12

    db $fd                                        ; $56cb: $fd
    and [hl]                                      ; $56cc: $a6
    rst $38                                       ; $56cd: $ff
    ld [hl], h                                    ; $56ce: $74
    or c                                          ; $56cf: $b1
    ei                                            ; $56d0: $fb
    rst $20                                       ; $56d1: $e7
    sub [hl]                                      ; $56d2: $96
    inc a                                         ; $56d3: $3c
    ld d, $c2                                     ; $56d4: $16 $c2
    inc b                                         ; $56d6: $04
    call $1f85                                    ; $56d7: $cd $85 $1f
    sub h                                         ; $56da: $94
    ld [c], a                                     ; $56db: $e2
    inc bc                                        ; $56dc: $03

jr_04c_56dd:
    xor a                                         ; $56dd: $af
    ret nc                                        ; $56de: $d0

    rla                                           ; $56df: $17
    ld e, d                                       ; $56e0: $5a
    ld e, d                                       ; $56e1: $5a
    ld e, b                                       ; $56e2: $58
    sbc $c9                                       ; $56e3: $de $c9
    ld a, b                                       ; $56e5: $78
    pop hl                                        ; $56e6: $e1
    rlca                                          ; $56e7: $07
    and l                                         ; $56e8: $a5
    ld [hl], c                                    ; $56e9: $71
    rst $20                                       ; $56ea: $e7
    sub d                                         ; $56eb: $92
    add c                                         ; $56ec: $81
    and $c5                                       ; $56ed: $e6 $c5
    inc a                                         ; $56ef: $3c
    jp nz, Jump_000_2e43                          ; $56f0: $c2 $43 $2e

    ld c, l                                       ; $56f3: $4d
    ret nz                                        ; $56f4: $c0

    ld h, b                                       ; $56f5: $60
    rst $08                                       ; $56f6: $cf
    ld de, $448a                                  ; $56f7: $11 $8a $44
    cp a                                          ; $56fa: $bf
    jp hl                                         ; $56fb: $e9


    ccf                                           ; $56fc: $3f
    push bc                                       ; $56fd: $c5
    cp e                                          ; $56fe: $bb
    jp c, $e43d                                   ; $56ff: $da $3d $e4

    dec sp                                        ; $5702: $3b
    or a                                          ; $5703: $b7
    db $e4                                        ; $5704: $e4
    or c                                          ; $5705: $b1
    db $10                                        ; $5706: $10
    ld h, $98                                     ; $5707: $26 $98
    add b                                         ; $5709: $80
    add c                                         ; $570a: $81
    ei                                            ; $570b: $fb
    ccf                                           ; $570c: $3f
    add hl, bc                                    ; $570d: $09
    xor l                                         ; $570e: $ad
    or $f1                                        ; $570f: $f6 $f1
    ld bc, $8d57                                  ; $5711: $01 $57 $8d
    rla                                           ; $5714: $17
    db $fd                                        ; $5715: $fd
    ld a, [c]                                     ; $5716: $f2
    add d                                         ; $5717: $82
    adc $2c                                       ; $5718: $ce $2c
    ld [hl], a                                    ; $571a: $77
    ld l, c                                       ; $571b: $69
    and [hl]                                      ; $571c: $a6
    ld a, b                                       ; $571d: $78
    cpl                                           ; $571e: $2f
    daa                                           ; $571f: $27
    add a                                         ; $5720: $87
    rst $38                                       ; $5721: $ff
    adc e                                         ; $5722: $8b
    ld a, h                                       ; $5723: $7c
    ld [hl], a                                    ; $5724: $77
    reti                                          ; $5725: $d9


    sub h                                         ; $5726: $94
    ld [hl], e                                    ; $5727: $73
    ret                                           ; $5728: $c9


    ld b, b                                       ; $5729: $40
    di                                            ; $572a: $f3
    ld h, d                                       ; $572b: $62
    jp nz, $9b77                                  ; $572c: $c2 $77 $9b

    pop af                                        ; $572f: $f1
    ld bc, $916f                                  ; $5730: $01 $6f $91
    add hl, de                                    ; $5733: $19
    ld e, b                                       ; $5734: $58
    ld e, b                                       ; $5735: $58
    adc [hl]                                      ; $5736: $8e
    db $e3                                        ; $5737: $e3
    ld a, b                                       ; $5738: $78
    ld b, c                                       ; $5739: $41
    ld [hl], a                                    ; $573a: $77
    ld l, d                                       ; $573b: $6a
    ld a, c                                       ; $573c: $79
    and a                                         ; $573d: $a7
    ld [$798b], a                                 ; $573e: $ea $8b $79
    db $e3                                        ; $5741: $e3
    add hl, hl                                    ; $5742: $29
    add sp, $7f                                   ; $5743: $e8 $7f
    add hl, de                                    ; $5745: $19
    rst $00                                       ; $5746: $c7
    pop af                                        ; $5747: $f1
    ld l, $cd                                     ; $5748: $2e $cd
    inc d                                         ; $574a: $14
    rst $28                                       ; $574b: $ef
    cp c                                          ; $574c: $b9
    sbc [hl]                                      ; $574d: $9e
    inc e                                         ; $574e: $1c
    ld [bc], a                                    ; $574f: $02
    cp [hl]                                       ; $5750: $be
    ld a, e                                       ; $5751: $7b
    xor [hl]                                      ; $5752: $ae
    ld h, h                                       ; $5753: $64
    db $e4                                        ; $5754: $e4
    xor a                                         ; $5755: $af
    db $ec                                        ; $5756: $ec
    cp l                                          ; $5757: $bd
    adc a                                         ; $5758: $8f
    ld h, l                                       ; $5759: $65
    or l                                          ; $575a: $b5
    sub e                                         ; $575b: $93
    xor c                                         ; $575c: $a9
    add l                                         ; $575d: $85
    push hl                                       ; $575e: $e5
    ld hl, sp+$00                                 ; $575f: $f8 $00
    ld l, a                                       ; $5761: $6f
    sbc e                                         ; $5762: $9b
    pop de                                        ; $5763: $d1
    adc a                                         ; $5764: $8f
    halt                                          ; $5765: $76
    cp $95                                        ; $5766: $fe $95
    dec bc                                        ; $5768: $0b
    cp d                                          ; $5769: $ba
    db $10                                        ; $576a: $10
    ld c, e                                       ; $576b: $4b
    inc de                                        ; $576c: $13
    sbc d                                         ; $576d: $9a
    push af                                       ; $576e: $f5
    call Call_04c_7b2b                            ; $576f: $cd $2b $7b

Jump_04c_5772:
    adc e                                         ; $5772: $8b
    call z, $c2c0                                 ; $5773: $cc $c0 $c2
    ld a, [c]                                     ; $5776: $f2
    ld l, $9b                                     ; $5777: $2e $9b
    ld [hl], d                                    ; $5779: $72
    rra                                           ; $577a: $1f
    sbc d                                         ; $577b: $9a
    rst $28                                       ; $577c: $ef
    ld e, $f2                                     ; $577d: $1e $f2
    sbc l                                         ; $577f: $9d
    ld e, e                                       ; $5780: $5b
    ld a, [c]                                     ; $5781: $f2
    ld e, b                                       ; $5782: $58
    ld [$c413], sp                                ; $5783: $08 $13 $c4
    rlca                                          ; $5786: $07
    ld c, a                                       ; $5787: $4f
    adc d                                         ; $5788: $8a
    ld a, h                                       ; $5789: $7c
    dec [hl]                                      ; $578a: $35
    ld h, $50                                     ; $578b: $26 $50
    ld a, [bc]                                    ; $578d: $0a
    ld a, [$39b2]                                 ; $578e: $fa $b2 $39
    reti                                          ; $5791: $d9


    call z, Call_04c_4ee6                         ; $5792: $cc $e6 $4e
    ld b, $0f                                     ; $5795: $06 $0f
    ld sp, hl                                     ; $5797: $f9
    db $f4                                        ; $5798: $f4
    ccf                                           ; $5799: $3f
    ld sp, hl                                     ; $579a: $f9
    and $5c                                       ; $579b: $e6 $5c
    res 3, c                                      ; $579d: $cb $99
    ret z                                         ; $579f: $c8

    ld d, a                                       ; $57a0: $57
    ld h, e                                       ; $57a1: $63
    add d                                         ; $57a2: $82
    ld h, [hl]                                    ; $57a3: $66
    cp h                                          ; $57a4: $bc
    rst $20                                       ; $57a5: $e7
    xor d                                         ; $57a6: $aa
    dec e                                         ; $57a7: $1d
    add hl, hl                                    ; $57a8: $29
    ld de, $fdcc                                  ; $57a9: $11 $cc $fd
    sbc a                                         ; $57ac: $9f
    ld d, $7c                                     ; $57ad: $16 $7c
    ld h, a                                       ; $57af: $67
    jp nc, Jump_000_1e72                          ; $57b0: $d2 $72 $1e

    dec sp                                        ; $57b3: $3b
    rst $10                                       ; $57b4: $d7
    ld [hl], d                                    ; $57b5: $72
    add c                                         ; $57b6: $81
    and e                                         ; $57b7: $a3
    dec [hl]                                      ; $57b8: $35
    halt                                          ; $57b9: $76
    db $10                                        ; $57ba: $10
    add hl, de                                    ; $57bb: $19
    scf                                           ; $57bc: $37
    db $e3                                        ; $57bd: $e3
    ld e, l                                       ; $57be: $5d
    rst $28                                       ; $57bf: $ef
    and h                                         ; $57c0: $a4
    sub e                                         ; $57c1: $93
    cp h                                          ; $57c2: $bc
    or b                                          ; $57c3: $b0
    pop de                                        ; $57c4: $d1
    ld e, h                                       ; $57c5: $5c
    ld c, h                                       ; $57c6: $4c
    rst $18                                       ; $57c7: $df
    call c, $e687                                 ; $57c8: $dc $87 $e6
    cp e                                          ; $57cb: $bb
    add a                                         ; $57cc: $87
    ld a, h                                       ; $57cd: $7c
    rst $20                                       ; $57ce: $e7
    sub [hl]                                      ; $57cf: $96
    inc a                                         ; $57d0: $3c
    ld d, $c2                                     ; $57d1: $16 $c2
    inc b                                         ; $57d3: $04
    pop af                                        ; $57d4: $f1
    ld bc, $2d97                                  ; $57d5: $01 $97 $2d
    db $ed                                        ; $57d8: $ed
    or d                                          ; $57d9: $b2
    jp hl                                         ; $57da: $e9


    add hl, bc                                    ; $57db: $09
    push hl                                       ; $57dc: $e5
    ld e, h                                       ; $57dd: $5c
    res 7, l                                      ; $57de: $cb $bd
    ld l, b                                       ; $57e0: $68
    ld e, d                                       ; $57e1: $5a
    cp $e4                                        ; $57e2: $fe $e4
    ld h, $8f                                     ; $57e4: $26 $8f
    ccf                                           ; $57e6: $3f
    rst $28                                       ; $57e7: $ef
    ld b, l                                       ; $57e8: $45
    db $d3                                        ; $57e9: $d3
    sbc b                                         ; $57ea: $98
    ld h, b                                       ; $57eb: $60
    xor b                                         ; $57ec: $a8
    and $0b                                       ; $57ed: $e6 $0b
    sbc d                                         ; $57ef: $9a
    sbc l                                         ; $57f0: $9d
    rst $00                                       ; $57f1: $c7
    ld l, $e8                                     ; $57f2: $2e $e8
    and d                                         ; $57f4: $a2
    ld e, a                                       ; $57f5: $5f
    ld e, [hl]                                    ; $57f6: $5e
    ld e, b                                       ; $57f7: $58
    ld b, c                                       ; $57f8: $41

Jump_04c_57f9:
    ld l, b                                       ; $57f9: $68
    add $7b                                       ; $57fa: $c6 $7b
    add l                                         ; $57fc: $85
    cp [hl]                                       ; $57fd: $be
    ret nc                                        ; $57fe: $d0

    jp nc, $f77c                                  ; $57ff: $d2 $7c $f7

    sub b                                         ; $5802: $90
    rst $28                                       ; $5803: $ef
    call c, $c792                                 ; $5804: $dc $92 $c7
    ld b, d                                       ; $5807: $42
    sbc b                                         ; $5808: $98
    ld h, b                                       ; $5809: $60
    ld l, l                                       ; $580a: $6d
    xor d                                         ; $580b: $aa
    ld hl, sp+$00                                 ; $580c: $f8 $00
    rst $28                                       ; $580e: $ef
    db $fd                                        ; $580f: $fd
    jp z, $e585                                   ; $5810: $ca $85 $e5

    add hl, hl                                    ; $5813: $29
    add sp, $7f                                   ; $5814: $e8 $7f
    cp c                                          ; $5816: $b9
    xor b                                         ; $5817: $a8
    cp h                                          ; $5818: $bc
    or b                                          ; $5819: $b0
    cp h                                          ; $581a: $bc
    rrca                                          ; $581b: $0f
    sbc l                                         ; $581c: $9d
    ld sp, $a818                                  ; $581d: $31 $18 $a8
    call nc, Call_04c_7106                        ; $5820: $d4 $06 $71
    rla                                           ; $5823: $17
    cp $2f                                        ; $5824: $fe $2f
    ld a, [c]                                     ; $5826: $f2
    ei                                            ; $5827: $fb
    ret nc                                        ; $5828: $d0

    ld a, h                                       ; $5829: $7c
    rst $30                                       ; $582a: $f7
    sub b                                         ; $582b: $90
    rst $28                                       ; $582c: $ef
    call c, $c792                                 ; $582d: $dc $92 $c7
    ld b, d                                       ; $5830: $42
    sbc b                                         ; $5831: $98
    jr nz, @-$20                                  ; $5832: $20 $de

    sub e                                         ; $5834: $93
    sub [hl]                                      ; $5835: $96
    dec bc                                        ; $5836: $0b
    dec de                                        ; $5837: $1b
    dec l                                         ; $5838: $2d
    ld a, [$05e5]                                 ; $5839: $fa $e5 $05
    ld e, l                                       ; $583c: $5d
    ld e, b                                       ; $583d: $58
    sbc [hl]                                      ; $583e: $9e
    ld c, e                                       ; $583f: $4b
    ld b, $9a                                     ; $5840: $06 $9a
    pop af                                        ; $5842: $f1
    ld bc, $e597                                  ; $5843: $01 $97 $e5
    ld c, c                                       ; $5846: $49
    ld [hl], d                                    ; $5847: $72
    ld h, h                                       ; $5848: $64
    ret nc                                        ; $5849: $d0

    add hl, hl                                    ; $584a: $29
    ld [hl], $e3                                  ; $584b: $36 $e3
    push hl                                       ; $584d: $e5
    rlca                                          ; $584e: $07
    ld d, e                                       ; $584f: $53
    call c, $b57a                                 ; $5850: $dc $7a $b5
    rrca                                          ; $5853: $0f
    db $ed                                        ; $5854: $ed
    adc h                                         ; $5855: $8c
    ld b, c                                       ; $5856: $41
    ld c, $d2                                     ; $5857: $0e $d2
    ld h, [hl]                                    ; $5859: $66
    xor h                                         ; $585a: $ac
    ld [c], a                                     ; $585b: $e2

Call_04c_585c:
Jump_04c_585c:
    cp l                                          ; $585c: $bd
    ld b, d                                       ; $585d: $42
    ld e, a                                       ; $585e: $5f
    ld l, b                                       ; $585f: $68
    ld l, c                                       ; $5860: $69
    ld h, c                                       ; $5861: $61
    ld a, c                                       ; $5862: $79
    rra                                           ; $5863: $1f
    ld c, d                                       ; $5864: $4a
    xor h                                         ; $5865: $ac
    ld [hl], e                                    ; $5866: $73
    cp d                                          ; $5867: $ba
    ret c                                         ; $5868: $d8

    and l                                         ; $5869: $a5
    ld de, $8989                                  ; $586a: $11 $89 $89
    rrca                                          ; $586d: $0f
    rst $08                                       ; $586e: $cf
    cp l                                          ; $586f: $bd
    halt                                          ; $5870: $76
    db $ed                                        ; $5871: $ed
    sub l                                         ; $5872: $95
    scf                                           ; $5873: $37
    ld e, [hl]                                    ; $5874: $5e
    ld a, [hl]                                    ; $5875: $7e
    jp hl                                         ; $5876: $e9


    jp c, $cf1b                                   ; $5877: $da $1b $cf

    db $ec                                        ; $587a: $ec
    cp c                                          ; $587b: $b9
    daa                                           ; $587c: $27
    ld e, a                                       ; $587d: $5f
    ld a, h                                       ; $587e: $7c
    and $f5                                       ; $587f: $e6 $f5
    inc bc                                        ; $5881: $03
    dec sp                                        ; $5882: $3b
    nop                                           ; $5883: $00
    ld l, a                                       ; $5884: $6f

Call_04c_5885:
    ld [hl+], a                                   ; $5885: $22
    cp e                                          ; $5886: $bb
    cp a                                          ; $5887: $bf
    call nc, $83f4                                ; $5888: $d4 $f4 $83
    add sp, $7b                                   ; $588b: $e8 $7b
    rlca                                          ; $588d: $07
    sbc $e4                                       ; $588e: $de $e4
    inc bc                                        ; $5890: $03
    xor a                                         ; $5891: $af
    ld [hl], e                                    ; $5892: $73
    db $dd                                        ; $5893: $dd
    xor $19                                       ; $5894: $ee $19
    ld h, [hl]                                    ; $5896: $66
    ld c, h                                       ; $5897: $4c
    ld d, b                                       ; $5898: $50
    ld a, [hl-]                                   ; $5899: $3a
    nop                                           ; $589a: $00
    dec sp                                        ; $589b: $3b
    nop                                           ; $589c: $00
    cpl                                           ; $589d: $2f
    daa                                           ; $589e: $27

Jump_04c_589f:
    sbc a                                         ; $589f: $9f
    ld d, b                                       ; $58a0: $50
    jp z, Jump_04c_4c6a                           ; $58a1: $ca $6a $4c

    and b                                         ; $58a4: $a0
    ld [hl], h                                    ; $58a5: $74
    pop de                                        ; $58a6: $d1
    sub a                                         ; $58a7: $97
    ld c, $2f                                     ; $58a8: $0e $2f
    ld [hl+], a                                   ; $58aa: $22
    inc a                                         ; $58ab: $3c
    or h                                          ; $58ac: $b4
    ld [$fd5d], a                                 ; $58ad: $ea $5d $fd
    inc b                                         ; $58b0: $04
    inc l                                         ; $58b1: $2c
    rrca                                          ; $58b2: $0f
    dec sp                                        ; $58b3: $3b
    nop                                           ; $58b4: $00
    sub a                                         ; $58b5: $97
    rst $38                                       ; $58b6: $ff
    adc e                                         ; $58b7: $8b
    db $fc                                        ; $58b8: $fc

Call_04c_58b9:
    call c, Call_000_114f                         ; $58b9: $dc $4f $11
    xor b                                         ; $58bc: $a8
    adc e                                         ; $58bd: $8b
    add hl, bc                                    ; $58be: $09
    ld c, $2f                                     ; $58bf: $0e $2f
    and d                                         ; $58c1: $a2
    db $ec                                        ; $58c2: $ec
    ld e, [hl]                                    ; $58c3: $5e
    pop de                                        ; $58c4: $d1
    add $5c                                       ; $58c5: $c6 $5c
    ld l, $1d                                     ; $58c7: $2e $1d
    dec sp                                        ; $58c9: $3b
    nop                                           ; $58ca: $00
    cpl                                           ; $58cb: $2f
    daa                                           ; $58cc: $27
    sbc a                                         ; $58cd: $9f
    ld d, b                                       ; $58ce: $50
    jp z, Jump_000_336a                           ; $58cf: $ca $6a $33

    ld d, d                                       ; $58d2: $52
    rlca                                          ; $58d3: $07
    rst $10                                       ; $58d4: $d7
    cp a                                          ; $58d5: $bf
    ld a, [bc]                                    ; $58d6: $0a
    dec e                                         ; $58d7: $1d
    db $db                                        ; $58d8: $db
    adc e                                         ; $58d9: $8b
    xor l                                         ; $58da: $ad
    ld d, a                                       ; $58db: $57
    rlca                                          ; $58dc: $07
    xor a                                         ; $58dd: $af
    ld [hl], e                                    ; $58de: $73
    db $dd                                        ; $58df: $dd
    xor $2d                                       ; $58e0: $ee $2d
    db $d3                                        ; $58e2: $d3
    ld a, [$1e86]                                 ; $58e3: $fa $86 $1e
    ld d, a                                       ; $58e6: $57
    cp a                                          ; $58e7: $bf
    inc bc                                        ; $58e8: $03
    or $3a                                        ; $58e9: $f6 $3a
    inc a                                         ; $58eb: $3c
    ld b, h                                       ; $58ec: $44
    xor l                                         ; $58ed: $ad
    ld sp, $01c1                                  ; $58ee: $31 $c1 $01
    xor a                                         ; $58f1: $af
    ld [hl], e                                    ; $58f2: $73
    db $dd                                        ; $58f3: $dd
    xor $19                                       ; $58f4: $ee $19
    ld h, [hl]                                    ; $58f6: $66
    ld c, h                                       ; $58f7: $4c
    ld d, b                                       ; $58f8: $50
    ld a, [hl-]                                   ; $58f9: $3a
    nop                                           ; $58fa: $00
    dec sp                                        ; $58fb: $3b
    nop                                           ; $58fc: $00
    ld c, a                                       ; $58fd: $4f
    ld [de], a                                    ; $58fe: $12
    xor a                                         ; $58ff: $af
    add hl, sp                                    ; $5900: $39
    ld c, e                                       ; $5901: $4b
    adc h                                         ; $5902: $8c
    adc h                                         ; $5903: $8c
    or c                                          ; $5904: $b1
    ld [$cf00], a                                 ; $5905: $ea $00 $cf
    db $10                                        ; $5908: $10
    jp nz, Jump_04c_5977                          ; $5909: $c2 $77 $59

    db $e4                                        ; $590c: $e4
    ret z                                         ; $590d: $c8

    ld a, [c]                                     ; $590e: $f2
    nop                                           ; $590f: $00
    xor a                                         ; $5910: $af
    ld a, l                                       ; $5911: $7d
    ld b, c                                       ; $5912: $41
    ret c                                         ; $5913: $d8

    ld e, e                                       ; $5914: $5b
    ld d, l                                       ; $5915: $55
    ld a, h                                       ; $5916: $7c
    nop                                           ; $5917: $00
    rst $10                                       ; $5918: $d7
    ld c, e                                       ; $5919: $4b
    inc h                                         ; $591a: $24
    ld h, [hl]                                    ; $591b: $66
    ld l, a                                       ; $591c: $6f
    ld a, l                                       ; $591d: $7d
    ld a, [bc]                                    ; $591e: $0a
    or c                                          ; $591f: $b1
    ld [$3b00], a                                 ; $5920: $ea $00 $3b
    nop                                           ; $5923: $00
    xor a                                         ; $5924: $af
    jp $c243                                      ; $5925: $c3 $43 $c2


    ret nz                                        ; $5928: $c0

    dec l                                         ; $5929: $2d
    db $ed                                        ; $592a: $ed
    xor $bd                                       ; $592b: $ee $bd
    sbc h                                         ; $592d: $9c
    ld a, h                                       ; $592e: $7c
    ld a, [hl+]                                   ; $592f: $2a
    ld b, c                                       ; $5930: $41
    cp d                                          ; $5931: $ba
    add sp, $4b                                   ; $5932: $e8 $4b
    rlca                                          ; $5934: $07
    cpl                                           ; $5935: $2f
    ld [hl+], a                                   ; $5936: $22
    inc a                                         ; $5937: $3c
    or h                                          ; $5938: $b4
    ld [$3a5d], a                                 ; $5939: $ea $5d $3a
    ld d, c                                       ; $593c: $51
    push de                                       ; $593d: $d5
    ld bc, $003b                                  ; $593e: $01 $3b $00
    ld c, a                                       ; $5941: $4f
    ld a, a                                       ; $5942: $7f
    adc b                                         ; $5943: $88
    cp [hl]                                       ; $5944: $be
    ld [hl], a                                    ; $5945: $77
    ldh [rKEY1], a                                ; $5946: $e0 $4d
    ld a, $00                                     ; $5948: $3e $00
    ld c, a                                       ; $594a: $4f
    dec de                                        ; $594b: $1b

jr_04c_594c:
    reti                                          ; $594c: $d9


    xor [hl]                                      ; $594d: $ae
    ld h, d                                       ; $594e: $62
    jp Jump_000_00e8                              ; $594f: $c3 $e8 $00


    dec sp                                        ; $5952: $3b
    nop                                           ; $5953: $00
    cpl                                           ; $5954: $2f
    ld a, [hl-]                                   ; $5955: $3a
    ld h, a                                       ; $5956: $67
    xor h                                         ; $5957: $ac
    ld e, h                                       ; $5958: $5c
    ld [hl], e                                    ; $5959: $73
    and b                                         ; $595a: $a0
    jp c, $af41                                   ; $595b: $da $41 $af

    ld a, [hl+]                                   ; $595e: $2a
    ld [de], a                                    ; $595f: $12
    dec d                                         ; $5960: $15

Call_04c_5961:
Jump_04c_5961:
    adc $cd                                       ; $5961: $ce $cd
    inc bc                                        ; $5963: $03
    cpl                                           ; $5964: $2f
    ld a, [de]                                    ; $5965: $1a
    ret                                           ; $5966: $c9


    cp l                                          ; $5967: $bd
    db $db                                        ; $5968: $db
    and [hl]                                      ; $5969: $a6
    ccf                                           ; $596a: $3f
    nop                                           ; $596b: $00
    ld d, a                                       ; $596c: $57
    xor c                                         ; $596d: $a9
    and a                                         ; $596e: $a7
    dec a                                         ; $596f: $3d
    ld l, l                                       ; $5970: $6d
    ld e, [hl]                                    ; $5971: $5e
    call z, $d701                                 ; $5972: $cc $01 $d7
    inc l                                         ; $5975: $2c
    rst $30                                       ; $5976: $f7

Jump_04c_5977:
    jp c, Jump_04c_68f7                           ; $5977: $da $f7 $68

    rlca                                          ; $597a: $07
    dec sp                                        ; $597b: $3b
    nop                                           ; $597c: $00
    ld l, a                                       ; $597d: $6f
    ld d, h                                       ; $597e: $54
    ld [hl], c                                    ; $597f: $71
    di                                            ; $5980: $f3
    nop                                           ; $5981: $00
    cpl                                           ; $5982: $2f
    ldh [$f9], a                                  ; $5983: $e0 $f9
    cp h                                          ; $5985: $bc
    and a                                         ; $5986: $a7
    sbc l                                         ; $5987: $9d
    jr z, jr_04c_594c                             ; $5988: $28 $c2

    ld d, h                                       ; $598a: $54
    rlca                                          ; $598b: $07
    ld c, a                                       ; $598c: $4f
    ld de, $ee5a                                  ; $598d: $11 $5a $ee
    ld a, c                                       ; $5990: $79
    inc h                                         ; $5991: $24
    sbc c                                         ; $5992: $99
    ld d, l                                       ; $5993: $55
    ld [$4f00], a                                 ; $5994: $ea $00 $4f
    add a                                         ; $5997: $87
    dec h                                         ; $5998: $25
    ld sp, $af7a                                  ; $5999: $31 $7a $af
    inc [hl]                                      ; $599c: $34
    ld de, $0f2e                                  ; $599d: $11 $2e $0f
    ld c, a                                       ; $59a0: $4f
    ld h, $ea                                     ; $59a1: $26 $ea
    ld e, l                                       ; $59a3: $5d
    rst $38                                       ; $59a4: $ff
    ld a, [hl+]                                   ; $59a5: $2a
    call nz, Call_000_3b03                        ; $59a6: $c4 $03 $3b
    nop                                           ; $59a9: $00
    dec sp                                        ; $59aa: $3b
    nop                                           ; $59ab: $00
    ld c, a                                       ; $59ac: $4f
    cp [hl]                                       ; $59ad: $be
    ld hl, sp-$1c                                 ; $59ae: $f8 $e4
    ld a, e                                       ; $59b0: $7b
    rst $08                                       ; $59b1: $cf
    db $ec                                        ; $59b2: $ec
    sbc c                                         ; $59b3: $99
    sub a                                         ; $59b4: $97
    sbc $78                                       ; $59b5: $de $78
    and $b5                                       ; $59b7: $e6 $b5
    scf                                           ; $59b9: $37
    sbc [hl]                                      ; $59ba: $9e
    cp h                                          ; $59bb: $bc
    or $d2                                        ; $59bc: $f6 $d2
    adc e                                         ; $59be: $8b
    rst $08                                       ; $59bf: $cf
    cp h                                          ; $59c0: $bc
    db $f4                                        ; $59c1: $f4
    add $01                                       ; $59c2: $c6 $01
    dec sp                                        ; $59c4: $3b
    nop                                           ; $59c5: $00
    ld l, a                                       ; $59c6: $6f
    ld [hl+], a                                   ; $59c7: $22
    cp e                                          ; $59c8: $bb
    cp a                                          ; $59c9: $bf
    call nc, $83f4                                ; $59ca: $d4 $f4 $83
    add sp, $7b                                   ; $59cd: $e8 $7b
    rlca                                          ; $59cf: $07
    sbc $e4                                       ; $59d0: $de $e4
    and $01                                       ; $59d2: $e6 $01
    ld d, a                                       ; $59d4: $57
    dec l                                         ; $59d5: $2d
    rst $30                                       ; $59d6: $f7
    adc h                                         ; $59d7: $8c
    ld l, [hl]                                    ; $59d8: $6e
    ld a, [bc]                                    ; $59d9: $0a
    ld h, [hl]                                    ; $59da: $66
    ld [$5700], a                                 ; $59db: $ea $00 $57
    call $bf45                                    ; $59de: $cd $45 $bf
    rla                                           ; $59e1: $17
    dec l                                         ; $59e2: $2d
    di                                            ; $59e3: $f3
    nop                                           ; $59e4: $00
    dec sp                                        ; $59e5: $3b
    nop                                           ; $59e6: $00
    ld l, a                                       ; $59e7: $6f
    ld d, h                                       ; $59e8: $54
    ld [hl], c                                    ; $59e9: $71
    ld h, h                                       ; $59ea: $64
    ld l, c                                       ; $59eb: $69
    and b                                         ; $59ec: $a0
    ld [hl], h                                    ; $59ed: $74
    nop                                           ; $59ee: $00
    rst $10                                       ; $59ef: $d7
    dec c                                         ; $59f0: $0d
    ld l, $f7                                     ; $59f1: $2e $f7
    inc d                                         ; $59f3: $14
    add hl, sp                                    ; $59f4: $39
    ld d, c                                       ; $59f5: $51
    ld d, h                                       ; $59f6: $54
    ld a, $00                                     ; $59f7: $3e $00
    dec sp                                        ; $59f9: $3b
    nop                                           ; $59fa: $00
    ld c, a                                       ; $59fb: $4f
    ld d, e                                       ; $59fc: $53
    adc l                                         ; $59fd: $8d
    or c                                          ; $59fe: $b1
    ld l, [hl]                                    ; $59ff: $6e

Jump_04c_5a00:
    and a                                         ; $5a00: $a7
    adc e                                         ; $5a01: $8b
    cp [hl]                                       ; $5a02: $be
    ld [hl], h                                    ; $5a03: $74
    nop                                           ; $5a04: $00
    xor a                                         ; $5a05: $af
    add h                                         ; $5a06: $84
    xor b                                         ; $5a07: $a8
    rst $30                                       ; $5a08: $f7
    ld b, $39                                     ; $5a09: $06 $39
    sub c                                         ; $5a0b: $91
    ldh a, [rIF]                                  ; $5a0c: $f0 $0f
    dec sp                                        ; $5a0e: $3b
    nop                                           ; $5a0f: $00
    xor a                                         ; $5a10: $af
    cp a                                          ; $5a11: $bf
    ld a, [c]                                     ; $5a12: $f2
    call z, $d7d3                                 ; $5a13: $cc $d3 $d7
    sbc [hl]                                      ; $5a16: $9e
    ld a, h                                       ; $5a17: $7c
    pop hl                                        ; $5a18: $e1
    sbc c                                         ; $5a19: $99
    ld e, l                                       ; $5a1a: $5d
    ld a, l                                       ; $5a1b: $7d
    ld a, [c]                                     ; $5a1c: $f2
    and l                                         ; $5a1d: $a5
    rst $20                                       ; $5a1e: $e7
    rst $30                                       ; $5a1f: $f7
    db $e4                                        ; $5a20: $e4
    sub e                                         ; $5a21: $93
    cpl                                           ; $5a22: $2f
    dec e                                         ; $5a23: $1d
    xor a                                         ; $5a24: $af
    ld [hl], e                                    ; $5a25: $73
    and c                                         ; $5a26: $a1
    ret nc                                        ; $5a27: $d0

    ld [de], a                                    ; $5a28: $12
    cp e                                          ; $5a29: $bb
    rl d                                          ; $5a2a: $cb $12
    dec de                                        ; $5a2c: $1b
    jr z, @+$1f                                   ; $5a2d: $28 $1d

    xor a                                         ; $5a2f: $af
    dec sp                                        ; $5a30: $3b
    jp z, Jump_04c_5772                           ; $5a31: $ca $72 $57

    ei                                            ; $5a34: $fb
    ld h, d                                       ; $5a35: $62
    add hl, bc                                    ; $5a36: $09
    ld sp, hl                                     ; $5a37: $f9
    nop                                           ; $5a38: $00
    cpl                                           ; $5a39: $2f
    and d                                         ; $5a3a: $a2
    db $ec                                        ; $5a3b: $ec
    xor [hl]                                      ; $5a3c: $ae
    sub $f2                                       ; $5a3d: $d6 $f2
    nop                                           ; $5a3f: $00
    ld c, a                                       ; $5a40: $4f
    ld a, [de]                                    ; $5a41: $1a
    db $fd                                        ; $5a42: $fd
    call c, $086b                                 ; $5a43: $dc $6b $08
    rst $28                                       ; $5a46: $ef
    ld bc, $d7cf                                  ; $5a47: $01 $cf $d7
    push bc                                       ; $5a4a: $c5
    call c, $0e53                                 ; $5a4b: $dc $53 $0e
    ld a, c                                       ; $5a4e: $79
    add h                                         ; $5a4f: $84
    rlc e                                         ; $5a50: $cb $03
    rst $08                                       ; $5a52: $cf
    inc de                                        ; $5a53: $13
    xor d                                         ; $5a54: $aa
    cp l                                          ; $5a55: $bd
    xor $44                                       ; $5a56: $ee $44
    ld d, c                                       ; $5a58: $51
    ld c, c                                       ; $5a59: $49
    dec e                                         ; $5a5a: $1d
    dec sp                                        ; $5a5b: $3b
    nop                                           ; $5a5c: $00
    dec sp                                        ; $5a5d: $3b
    nop                                           ; $5a5e: $00
    dec sp                                        ; $5a5f: $3b
    nop                                           ; $5a60: $00
    rst $08                                       ; $5a61: $cf
    cp h                                          ; $5a62: $bc
    ldh a, [$cc]                                  ; $5a63: $f0 $cc
    db $d3                                        ; $5a65: $d3
    ld l, a                                       ; $5a66: $6f
    cp h                                          ; $5a67: $bc
    or $f2                                        ; $5a68: $f6 $f2
    ld c, e                                       ; $5a6a: $4b
    rst $10                                       ; $5a6b: $d7
    sbc [hl]                                      ; $5a6c: $9e
    sbc $93                                       ; $5a6d: $de $93
    xor a                                         ; $5a6f: $af
    cp l                                          ; $5a70: $bd
    pop af                                        ; $5a71: $f1
    ld a, [$3b01]                                 ; $5a72: $fa $01 $3b
    nop                                           ; $5a75: $00
    xor a                                         ; $5a76: $af
    ret nc                                        ; $5a77: $d0

    rst $30                                       ; $5a78: $f7
    ld c, $9c                                     ; $5a79: $0e $9c
    pop af                                        ; $5a7b: $f1
    rst $20                                       ; $5a7c: $e7
    sbc $a8                                       ; $5a7d: $de $a8
    ld b, l                                       ; $5a7f: $45
    rlca                                          ; $5a80: $07
    ld c, a                                       ; $5a81: $4f
    add a                                         ; $5a82: $87
    add h                                         ; $5a83: $84
    ld l, d                                       ; $5a84: $6a
    rst $08                                       ; $5a85: $cf
    sub c                                         ; $5a86: $91
    adc c                                         ; $5a87: $89
    add hl, sp                                    ; $5a88: $39
    nop                                           ; $5a89: $00
    ld c, a                                       ; $5a8a: $4f
    ld a, a                                       ; $5a8b: $7f
    adc l                                         ; $5a8c: $8d
    cp c                                          ; $5a8d: $b9
    rst $10                                       ; $5a8e: $d7
    cp [hl]                                       ; $5a8f: $be
    add b                                         ; $5a90: $80
    xor c                                         ; $5a91: $a9

Jump_04c_5a92:
    ld a, [hl]                                    ; $5a92: $7e
    ld e, $d7                                     ; $5a93: $1e $d7
    dec hl                                        ; $5a95: $2b
    ld [de], a                                    ; $5a96: $12
    db $ed                                        ; $5a97: $ed
    add hl, sp                                    ; $5a98: $39
    adc e                                         ; $5a99: $8b
    ld a, [hl]                                    ; $5a9a: $7e
    ld e, $2f                                     ; $5a9b: $1e $2f
    sbc a                                         ; $5a9d: $9f
    sbc d                                         ; $5a9e: $9a
    ld a, e                                       ; $5a9f: $7b
    ld sp, hl                                     ; $5aa0: $f9
    or [hl]                                       ; $5aa1: $b6
    and a                                         ; $5aa2: $a7
    ld [$079b], sp                                ; $5aa3: $08 $9b $07
    xor a                                         ; $5aa6: $af
    ld a, l                                       ; $5aa7: $7d
    ld h, c                                       ; $5aa8: $61
    cpl                                           ; $5aa9: $2f
    rst $18                                       ; $5aaa: $df
    or $ac                                        ; $5aab: $f6 $ac
    ld de, $eb55                                  ; $5aad: $11 $55 $eb
    inc bc                                        ; $5ab0: $03
    xor a                                         ; $5ab1: $af
    ld h, e                                       ; $5ab2: $63
    db $f4                                        ; $5ab3: $f4

Call_04c_5ab4:
    ld [hl], e                                    ; $5ab4: $73
    sub a                                         ; $5ab5: $97
    ld b, [hl]                                    ; $5ab6: $46
    add h                                         ; $5ab7: $84
    ld [$6f00], a                                 ; $5ab8: $ea $00 $6f
    sbc e                                         ; $5abb: $9b
    sbc b                                         ; $5abc: $98
    db $ec                                        ; $5abd: $ec
    sbc [hl]                                      ; $5abe: $9e
    and l                                         ; $5abf: $a5
    xor a                                         ; $5ac0: $af
    ld hl, sp+$00                                 ; $5ac1: $f8 $00
    dec sp                                        ; $5ac3: $3b
    nop                                           ; $5ac4: $00
    ld c, a                                       ; $5ac5: $4f
    ld a, d                                       ; $5ac6: $7a
    adc a                                         ; $5ac7: $8f
    adc h                                         ; $5ac8: $8c
    ccf                                           ; $5ac9: $3f
    xor e                                         ; $5aca: $ab
    dec sp                                        ; $5acb: $3b
    adc b                                         ; $5acc: $88
    ld a, $20                                     ; $5acd: $3e $20
    adc e                                         ; $5acf: $8b
    and d                                         ; $5ad0: $a2
    ld [de], a                                    ; $5ad1: $12
    ld h, $38                                     ; $5ad2: $26 $38
    nop                                           ; $5ad4: $00
    ld c, a                                       ; $5ad5: $4f
    dec [hl]                                      ; $5ad6: $35
    ld [hl], a                                    ; $5ad7: $77
    or l                                          ; $5ad8: $b5
    sub [hl]                                      ; $5ad9: $96
    dec a                                         ; $5ada: $3d
    nop                                           ; $5adb: $00
    dec sp                                        ; $5adc: $3b
    nop                                           ; $5add: $00
    xor a                                         ; $5ade: $af
    ld b, e                                       ; $5adf: $43
    push de                                       ; $5ae0: $d5
    add d                                         ; $5ae1: $82
    ld l, c                                       ; $5ae2: $69
    ld c, e                                       ; $5ae3: $4b
    ld a, b                                       ; $5ae4: $78
    add hl, bc                                    ; $5ae5: $09
    inc de                                        ; $5ae6: $13
    inc e                                         ; $5ae7: $1c
    ld d, a                                       ; $5ae8: $57
    dec l                                         ; $5ae9: $2d
    rst $30                                       ; $5aea: $f7
    ld a, [de]                                    ; $5aeb: $1a
    ld [$398a], a                                 ; $5aec: $ea $8a $39
    nop                                           ; $5aef: $00
    dec sp                                        ; $5af0: $3b
    nop                                           ; $5af1: $00
    rst $08                                       ; $5af2: $cf
    ld d, l                                       ; $5af3: $55
    dec sp                                        ; $5af4: $3b
    add sp, $15                                   ; $5af5: $e8 $15
    rst $10                                       ; $5af7: $d7
    and d                                         ; $5af8: $a2
    inc bc                                        ; $5af9: $03
    ld c, a                                       ; $5afa: $4f
    ld a, [$eeea]                                 ; $5afb: $fa $ea $ee
    ld sp, hl                                     ; $5afe: $f9
    ld l, d                                       ; $5aff: $6a
    ld e, l                                       ; $5b00: $5d
    and $03                                       ; $5b01: $e6 $03
    ld c, a                                       ; $5b03: $4f
    and c                                         ; $5b04: $a1
    sub $7b                                       ; $5b05: $d6 $7b
    pop bc                                        ; $5b07: $c1
    ld d, c                                       ; $5b08: $51
    inc l                                         ; $5b09: $2c
    and $00                                       ; $5b0a: $e6 $00
    rst $10                                       ; $5b0c: $d7
    ld c, e                                       ; $5b0d: $4b
    adc l                                         ; $5b0e: $8d
    call nz, $f5ec                                ; $5b0f: $c4 $ec $f5
    rst $28                                       ; $5b12: $ef
    add sp, $1e                                   ; $5b13: $e8 $1e
    cpl                                           ; $5b15: $2f
    ld hl, $ee5c                                  ; $5b16: $21 $5c $ee
    dec b                                         ; $5b19: $05
    ld [hl], e                                    ; $5b1a: $73
    or c                                          ; $5b1b: $b1
    and h                                         ; $5b1c: $a4
    ld c, $3b                                     ; $5b1d: $0e $3b
    nop                                           ; $5b1f: $00
    xor a                                         ; $5b20: $af
    ld a, $79                                     ; $5b21: $3e $79
    sub a                                         ; $5b23: $97
    adc c                                         ; $5b24: $89
    ld a, h                                       ; $5b25: $7c
    dec [hl]                                      ; $5b26: $35
    ld h, $38                                     ; $5b27: $26 $38
    nop                                           ; $5b29: $00
    ld c, a                                       ; $5b2a: $4f
    and [hl]                                      ; $5b2b: $a6
    rla                                           ; $5b2c: $17
    or e                                          ; $5b2d: $b3
    rla                                           ; $5b2e: $17
    ld d, c                                       ; $5b2f: $51
    db $eb                                        ; $5b30: $eb
    jp nc, $5701                                  ; $5b31: $d2 $01 $57

    adc l                                         ; $5b34: $8d
    xor b                                         ; $5b35: $a8
    cp c                                          ; $5b36: $b9
    scf                                           ; $5b37: $37
    inc e                                         ; $5b38: $1c
    cp b                                          ; $5b39: $b8
    xor h                                         ; $5b3a: $ac
    sbc b                                         ; $5b3b: $98
    inc bc                                        ; $5b3c: $03
    rst $10                                       ; $5b3d: $d7
    ld a, a                                       ; $5b3e: $7f
    rst $30                                       ; $5b3f: $f7
    sub d                                         ; $5b40: $92
    sub e                                         ; $5b41: $93
    ld a, c                                       ; $5b42: $79
    nop                                           ; $5b43: $00
    cpl                                           ; $5b44: $2f
    or h                                          ; $5b45: $b4
    ld a, e                                       ; $5b46: $7b
    pop de                                        ; $5b47: $d1
    jp nc, Jump_04c_45d7                          ; $5b48: $d2 $d7 $45

    xor l                                         ; $5b4b: $ad
    ld a, e                                       ; $5b4c: $7b
    nop                                           ; $5b4d: $00
    cpl                                           ; $5b4e: $2f
    ld a, [de]                                    ; $5b4f: $1a
    di                                            ; $5b50: $f3
    sbc [hl]                                      ; $5b51: $9e
    ld l, d                                       ; $5b52: $6a
    ld h, [hl]                                    ; $5b53: $66
    sbc c                                         ; $5b54: $99
    rrca                                          ; $5b55: $0f
    xor a                                         ; $5b56: $af
    sub h                                         ; $5b57: $94
    cp e                                          ; $5b58: $bb
    rst $10                                       ; $5b59: $d7
    dec l                                         ; $5b5a: $2d
    ld [hl], d                                    ; $5b5b: $72
    xor d                                         ; $5b5c: $aa
    push de                                       ; $5b5d: $d5
    ld bc, $60af                                  ; $5b5e: $01 $af $60
    ld c, c                                       ; $5b61: $49
    db $ed                                        ; $5b62: $ed
    dec b                                         ; $5b63: $05
    ld c, e                                       ; $5b64: $4b
    ld b, b                                       ; $5b65: $40
    add sp, $41                                   ; $5b66: $e8 $41
    rrca                                          ; $5b68: $0f
    xor a                                         ; $5b69: $af
    ld hl, $343c                                  ; $5b6a: $21 $3c $34
    ld a, [c]                                     ; $5b6d: $f2
    ld a, e                                       ; $5b6e: $7b
    dec de                                        ; $5b6f: $1b
    or l                                          ; $5b70: $b5
    cpl                                           ; $5b71: $2f
    add hl, hl                                    ; $5b72: $29
    ld [$00f3], sp                                ; $5b73: $08 $f3 $00
    xor a                                         ; $5b76: $af
    ld a, l                                       ; $5b77: $7d
    and l                                         ; $5b78: $a5
    halt                                          ; $5b79: $76
    push af                                       ; $5b7a: $f5
    dec sp                                        ; $5b7b: $3b
    ld b, b                                       ; $5b7c: $40
    sbc e                                         ; $5b7d: $9b
    ld a, [hl-]                                   ; $5b7e: $3a
    nop                                           ; $5b7f: $00
    xor a                                         ; $5b80: $af
    or e                                          ; $5b81: $b3
    or e                                          ; $5b82: $b3
    or a                                          ; $5b83: $b7
    ld d, c                                       ; $5b84: $51
    ld l, e                                       ; $5b85: $6b
    or h                                          ; $5b86: $b4
    ld c, b                                       ; $5b87: $48
    dec e                                         ; $5b88: $1d
    dec sp                                        ; $5b89: $3b
    nop                                           ; $5b8a: $00
    xor a                                         ; $5b8b: $af
    ld a, $79                                     ; $5b8c: $3e $79
    rla                                           ; $5b8e: $17
    rla                                           ; $5b8f: $17
    ld e, $26                                     ; $5b90: $1e $26
    ld d, [hl]                                    ; $5b92: $56
    ld e, $d7                                     ; $5b93: $1e $d7
    ld a, a                                       ; $5b95: $7f
    rst $30                                       ; $5b96: $f7
    inc e                                         ; $5b97: $1c
    ld e, c                                       ; $5b98: $59
    ld a, [c]                                     ; $5b99: $f2
    ld bc, $1a2f                                  ; $5b9a: $01 $2f $1a
    pop bc                                        ; $5b9d: $c1
    dec e                                         ; $5b9e: $1d
    or l                                          ; $5b9f: $b5
    ld d, a                                       ; $5ba0: $57
    inc e                                         ; $5ba1: $1c
    ld [hl], d                                    ; $5ba2: $72
    ld d, c                                       ; $5ba3: $51
    dec e                                         ; $5ba4: $1d
    ld l, a                                       ; $5ba5: $6f
    sbc e                                         ; $5ba6: $9b
    sbc b                                         ; $5ba7: $98
    db $ec                                        ; $5ba8: $ec
    sbc [hl]                                      ; $5ba9: $9e
    ld a, [$e062]                                 ; $5baa: $fa $62 $e0
    dec a                                         ; $5bad: $3d
    nop                                           ; $5bae: $00
    ld d, a                                       ; $5baf: $57
    ld a, a                                       ; $5bb0: $7f
    and [hl]                                      ; $5bb1: $a6
    db $ed                                        ; $5bb2: $ed
    ld [de], a                                    ; $5bb3: $12
    pop hl                                        ; $5bb4: $e1
    ld d, d                                       ; $5bb5: $52
    dec e                                         ; $5bb6: $1d
    dec sp                                        ; $5bb7: $3b
    nop                                           ; $5bb8: $00
    rst $08                                       ; $5bb9: $cf
    add sp, -$3e                                  ; $5bba: $e8 $c2
    sbc c                                         ; $5bbc: $99
    ld a, [hl]                                    ; $5bbd: $7e
    ld [hl+], a                                   ; $5bbe: $22
    ld a, h                                       ; $5bbf: $7c
    ld c, a                                       ; $5bc0: $4f
    ld [de], a                                    ; $5bc1: $12
    xor e                                         ; $5bc2: $ab
    db $dd                                        ; $5bc3: $dd
    or l                                          ; $5bc4: $b5
    rst $10                                       ; $5bc5: $d7
    and c                                         ; $5bc6: $a1
    jp nz, $74d1                                  ; $5bc7: $c2 $d1 $74

    rst $20                                       ; $5bca: $e7
    dec l                                         ; $5bcb: $2d
    push hl                                       ; $5bcc: $e5
    ld bc, $914f                                  ; $5bcd: $01 $4f $91
    inc bc                                        ; $5bd0: $03
    rst $28                                       ; $5bd1: $ef
    ld e, [hl]                                    ; $5bd2: $5e
    add h                                         ; $5bd3: $84
    cp a                                          ; $5bd4: $bf
    adc b                                         ; $5bd5: $88
    ld e, d                                       ; $5bd6: $5a
    ld e, e                                       ; $5bd7: $5b
    ld e, $4f                                     ; $5bd8: $1e $4f
    add a                                         ; $5bda: $87
    ld c, $5c                                     ; $5bdb: $0e $5c
    xor $69                                       ; $5bdd: $ee $69
    ld l, l                                       ; $5bdf: $6d
    ret                                           ; $5be0: $c9


    ccf                                           ; $5be1: $3f
    rrca                                          ; $5be2: $0f
    ld d, a                                       ; $5be3: $57
    dec l                                         ; $5be4: $2d
    ld d, e                                       ; $5be5: $53
    call z, $429e                                 ; $5be6: $cc $9e $42
    xor l                                         ; $5be9: $ad
    ld a, [hl]                                    ; $5bea: $7e
    ld e, $57                                     ; $5beb: $1e $57
    call $bf45                                    ; $5bed: $cd $45 $bf
    and a                                         ; $5bf0: $a7
    call nz, $f650                                ; $5bf1: $c4 $50 $f6
    nop                                           ; $5bf4: $00
    rst $08                                       ; $5bf5: $cf
    add hl, sp                                    ; $5bf6: $39
    ld h, d                                       ; $5bf7: $62
    or $22                                        ; $5bf8: $f6 $22
    ld l, d                                       ; $5bfa: $6a
    ld e, l                                       ; $5bfb: $5d
    ld a, [hl-]                                   ; $5bfc: $3a
    nop                                           ; $5bfd: $00
    rst $10                                       ; $5bfe: $d7
    inc l                                         ; $5bff: $2c
    rst $30                                       ; $5c00: $f7
    ld a, d                                       ; $5c01: $7a
    ld l, b                                       ; $5c02: $68
    and a                                         ; $5c03: $a7
    inc bc                                        ; $5c04: $03
    rst $10                                       ; $5c05: $d7
    ld a, a                                       ; $5c06: $7f
    sbc b                                         ; $5c07: $98
    ld a, e                                       ; $5c08: $7b
    pop bc                                        ; $5c09: $c1
    ld c, [hl]                                    ; $5c0a: $4e
    call nc, $f784                                ; $5c0b: $d4 $84 $f7
    nop                                           ; $5c0e: $00
    cpl                                           ; $5c0f: $2f
    and b                                         ; $5c10: $a0
    or d                                          ; $5c11: $b2
    cp l                                          ; $5c12: $bd
    adc $5f                                       ; $5c13: $ce $5f
    ld d, [hl]                                    ; $5c15: $56
    dec e                                         ; $5c16: $1d

jr_04c_5c17:
    cpl                                           ; $5c17: $2f
    and b                                         ; $5c18: $a0
    or d                                          ; $5c19: $b2
    cp l                                          ; $5c1a: $bd
    ld l, l                                       ; $5c1b: $6d
    call z, $af07                                 ; $5c1c: $cc $07 $af
    sbc b                                         ; $5c1f: $98
    and e                                         ; $5c20: $a3
    ld [hl], a                                    ; $5c21: $77
    or l                                          ; $5c22: $b5
    cpl                                           ; $5c23: $2f
    or $1f                                        ; $5c24: $f6 $1f
    xor a                                         ; $5c26: $af
    sbc b                                         ; $5c27: $98
    and e                                         ; $5c28: $a3
    rst $30                                       ; $5c29: $f7
    and d                                         ; $5c2a: $a2
    sub c                                         ; $5c2b: $91
    ld a, [c]                                     ; $5c2c: $f2
    call $af03                                    ; $5c2d: $cd $03 $af
    ld h, e                                       ; $5c30: $63
    db $f4                                        ; $5c31: $f4
    ld [hl], e                                    ; $5c32: $73
    xor a                                         ; $5c33: $af
    add h                                         ; $5c34: $84
    ld [$ea41], sp                                ; $5c35: $08 $41 $ea
    nop                                           ; $5c38: $00
    dec sp                                        ; $5c39: $3b
    nop                                           ; $5c3a: $00
    dec sp                                        ; $5c3b: $3b
    nop                                           ; $5c3c: $00
    dec sp                                        ; $5c3d: $3b
    nop                                           ; $5c3e: $00
    dec sp                                        ; $5c3f: $3b
    nop                                           ; $5c40: $00
    dec sp                                        ; $5c41: $3b
    nop                                           ; $5c42: $00
    dec sp                                        ; $5c43: $3b
    nop                                           ; $5c44: $00
    dec sp                                        ; $5c45: $3b
    nop                                           ; $5c46: $00
    dec sp                                        ; $5c47: $3b
    nop                                           ; $5c48: $00
    dec sp                                        ; $5c49: $3b
    nop                                           ; $5c4a: $00
    dec sp                                        ; $5c4b: $3b
    nop                                           ; $5c4c: $00
    dec sp                                        ; $5c4d: $3b
    nop                                           ; $5c4e: $00
    dec sp                                        ; $5c4f: $3b
    nop                                           ; $5c50: $00
    dec sp                                        ; $5c51: $3b
    nop                                           ; $5c52: $00
    dec sp                                        ; $5c53: $3b
    nop                                           ; $5c54: $00
    dec sp                                        ; $5c55: $3b
    nop                                           ; $5c56: $00
    dec sp                                        ; $5c57: $3b
    nop                                           ; $5c58: $00
    dec sp                                        ; $5c59: $3b
    nop                                           ; $5c5a: $00
    dec sp                                        ; $5c5b: $3b
    nop                                           ; $5c5c: $00
    dec sp                                        ; $5c5d: $3b
    nop                                           ; $5c5e: $00
    dec sp                                        ; $5c5f: $3b
    nop                                           ; $5c60: $00
    dec sp                                        ; $5c61: $3b
    nop                                           ; $5c62: $00
    dec sp                                        ; $5c63: $3b
    nop                                           ; $5c64: $00
    dec sp                                        ; $5c65: $3b
    nop                                           ; $5c66: $00
    dec sp                                        ; $5c67: $3b
    nop                                           ; $5c68: $00
    dec sp                                        ; $5c69: $3b
    nop                                           ; $5c6a: $00
    dec sp                                        ; $5c6b: $3b
    nop                                           ; $5c6c: $00
    dec sp                                        ; $5c6d: $3b
    nop                                           ; $5c6e: $00
    dec sp                                        ; $5c6f: $3b
    nop                                           ; $5c70: $00
    dec sp                                        ; $5c71: $3b
    nop                                           ; $5c72: $00
    dec sp                                        ; $5c73: $3b
    nop                                           ; $5c74: $00
    dec sp                                        ; $5c75: $3b
    nop                                           ; $5c76: $00
    dec sp                                        ; $5c77: $3b
    nop                                           ; $5c78: $00
    dec sp                                        ; $5c79: $3b
    nop                                           ; $5c7a: $00
    dec sp                                        ; $5c7b: $3b
    nop                                           ; $5c7c: $00
    sub a                                         ; $5c7d: $97
    scf                                           ; $5c7e: $37
    ld e, h                                       ; $5c7f: $5c
    ld c, h                                       ; $5c80: $4c
    ld l, b                                       ; $5c81: $68
    ld l, $c0                                     ; $5c82: $2e $c0
    ld h, b                                       ; $5c84: $60
    adc c                                         ; $5c85: $89
    push hl                                       ; $5c86: $e5
    jr c, jr_04c_5c17                             ; $5c87: $38 $8e

    ld [hl], a                                    ; $5c89: $77
    ld l, c                                       ; $5c8a: $69
    ld b, h                                       ; $5c8b: $44
    ld h, d                                       ; $5c8c: $62
    or $ca                                        ; $5c8d: $f6 $ca
    ld h, a                                       ; $5c8f: $67
    ld l, $5d                                     ; $5c90: $2e $5d
    add hl, sp                                    ; $5c92: $39
    nop                                           ; $5c93: $00
    ld c, a                                       ; $5c94: $4f
    add [hl]                                      ; $5c95: $86
    ld c, [hl]                                    ; $5c96: $4e
    inc d                                         ; $5c97: $14
    rst $00                                       ; $5c98: $c7
    pop af                                        ; $5c99: $f1
    ld bc, $3bd7                                  ; $5c9a: $01 $d7 $3b
    and c                                         ; $5c9d: $a1
    ret                                           ; $5c9e: $c9


    dec bc                                        ; $5c9f: $0b
    sra e                                         ; $5ca0: $cb $2b
    inc a                                         ; $5ca2: $3c
    db $e4                                        ; $5ca3: $e4
    adc e                                         ; $5ca4: $8b
    pop af                                        ; $5ca5: $f1
    add a                                         ; $5ca6: $87
    add a                                         ; $5ca7: $87
    ld d, a                                       ; $5ca8: $57
    or $4c                                        ; $5ca9: $f6 $4c
    adc $b4                                       ; $5cab: $ce $b4
    ld e, d                                       ; $5cad: $5a
    ret nc                                        ; $5cae: $d0

    add l                                         ; $5caf: $85
    ld e, b                                       ; $5cb0: $58
    sbc d                                         ; $5cb1: $9a
    ret nc                                        ; $5cb2: $d0

    db $e4                                        ; $5cb3: $e4
    adc e                                         ; $5cb4: $8b
    add hl, bc                                    ; $5cb5: $09
    push hl                                       ; $5cb6: $e5
    jp z, $cf26                                   ; $5cb7: $ca $26 $cf

    inc hl                                        ; $5cba: $23
    rst $08                                       ; $5cbb: $cf
    dec de                                        ; $5cbc: $1b
    cpl                                           ; $5cbd: $2f
    add sp, -$2e                                  ; $5cbe: $e8 $d2
    ld e, c                                       ; $5cc0: $59
    ld sp, $357d                                  ; $5cc1: $31 $7d $35
    ld b, $72                                     ; $5cc4: $06 $72
    ld l, c                                       ; $5cc6: $69
    ld b, [hl]                                    ; $5cc7: $46
    ld a, e                                       ; $5cc8: $7b
    rst $28                                       ; $5cc9: $ef
    ld d, h                                       ; $5cca: $54
    ld c, h                                       ; $5ccb: $4c
    push bc                                       ; $5ccc: $c5
    push bc                                       ; $5ccd: $c5
    inc e                                         ; $5cce: $1c
    jr nc, jr_04c_5d34                            ; $5ccf: $30 $63

    pop af                                        ; $5cd1: $f1
    rlca                                          ; $5cd2: $07
    ld l, a                                       ; $5cd3: $6f
    or a                                          ; $5cd4: $b7
    inc a                                         ; $5cd5: $3c
    xor h                                         ; $5cd6: $ac
    cpl                                           ; $5cd7: $2f
    or l                                          ; $5cd8: $b5
    add hl, sp                                    ; $5cd9: $39
    db $d3                                        ; $5cda: $d3
    cp d                                          ; $5cdb: $ba
    ld l, d                                       ; $5cdc: $6a
    xor [hl]                                      ; $5cdd: $ae
    push hl                                       ; $5cde: $e5
    and d                                         ; $5cdf: $a2
    ld e, [hl]                                    ; $5ce0: $5e
    add hl, sp                                    ; $5ce1: $39
    nop                                           ; $5ce2: $00
    ld d, a                                       ; $5ce3: $57
    sub c                                         ; $5ce4: $91
    ld [hl], a                                    ; $5ce5: $77

Call_04c_5ce6:
    ld a, [$79e4]                                 ; $5ce6: $fa $e4 $79
    add l                                         ; $5ce9: $85
    add a                                         ; $5cea: $87
    inc a                                         ; $5ceb: $3c
    ld e, l                                       ; $5cec: $5d
    ld b, a                                       ; $5ced: $47
    adc d                                         ; $5cee: $8a
    rst $18                                       ; $5cef: $df
    and l                                         ; $5cf0: $a5
    ld de, $d989                                  ; $5cf1: $11 $89 $d9
    dec hl                                        ; $5cf4: $2b
    sbc a                                         ; $5cf5: $9f
    cp c                                          ; $5cf6: $b9
    ld [hl], h                                    ; $5cf7: $74
    or c                                          ; $5cf8: $b1
    rrca                                          ; $5cf9: $0f
    db $ed                                        ; $5cfa: $ed
    cp l                                          ; $5cfb: $bd
    ld d, e                                       ; $5cfc: $53
    ld sp, $1715                                  ; $5cfd: $31 $15 $17
    ld d, e                                       ; $5d00: $53
    db $fc                                        ; $5d01: $fc
    sbc [hl]                                      ; $5d02: $9e
    or a                                          ; $5d03: $b7
    inc e                                         ; $5d04: $1c

Call_04c_5d05:
    jp z, Jump_04c_5961                           ; $5d05: $ca $61 $59

    call $9ffd                                    ; $5d08: $cd $fd $9f
    ld d, $74                                     ; $5d0b: $16 $74
    cp $37                                        ; $5d0d: $fe $37
    xor a                                         ; $5d0f: $af
    db $ec                                        ; $5d10: $ec
    or d                                          ; $5d11: $b2
    jp nz, Jump_04c_4e82                          ; $5d12: $c2 $82 $4e

    sbc d                                         ; $5d15: $9a
    ld de, $e737                                  ; $5d16: $11 $37 $e7
    ld e, d                                       ; $5d19: $5a
    xor $a9                                       ; $5d1a: $ee $a9
    jp nc, $e46f                                  ; $5d1c: $d2 $6f $e4

    cp e                                          ; $5d1f: $bb
    bit 1, d                                      ; $5d20: $cb $4a
    push de                                       ; $5d22: $d5
    ld e, h                                       ; $5d23: $5c
    ld [hl], e                                    ; $5d24: $73
    ld l, a                                       ; $5d25: $6f
    ld a, h                                       ; $5d26: $7c
    or a                                          ; $5d27: $b7
    ld l, c                                       ; $5d28: $69

Call_04c_5d29:
    ld b, [hl]                                    ; $5d29: $46
    ld l, d                                       ; $5d2a: $6a
    ld sp, hl                                     ; $5d2b: $f9
    dec a                                         ; $5d2c: $3d
    add d                                         ; $5d2d: $82
    dec hl                                        ; $5d2e: $2b
    rlca                                          ; $5d2f: $07
    rst $10                                       ; $5d30: $d7
    db $e4                                        ; $5d31: $e4
    ld c, [hl]                                    ; $5d32: $4e
    dec l                                         ; $5d33: $2d

jr_04c_5d34:
    cpl                                           ; $5d34: $2f
    inc l                                         ; $5d35: $2c
    cpl                                           ; $5d36: $2f
    or c                                          ; $5d37: $b1
    inc e                                         ; $5d38: $1c
    rst $00                                       ; $5d39: $c7
    pop af                                        ; $5d3a: $f1
    ld c, [hl]                                    ; $5d3b: $4e
    add $3b                                       ; $5d3c: $c6 $3b
    ld h, e                                       ; $5d3e: $63
    sub b                                         ; $5d3f: $90
    di                                            ; $5d40: $f3
    add $57                                       ; $5d41: $c6 $57
    ld c, $2f                                     ; $5d43: $0e $2f
    add a                                         ; $5d45: $87
    rla                                           ; $5d46: $17
    dec sp                                        ; $5d47: $3b
    ld [hl], a                                    ; $5d48: $77
    ld h, a                                       ; $5d49: $67
    inc c                                         ; $5d4a: $0c
    ld [hl], d                                    ; $5d4b: $72
    add l                                         ; $5d4c: $85
    add a                                         ; $5d4d: $87
    inc a                                         ; $5d4e: $3c
    ret nc                                        ; $5d4f: $d0

    ld d, e                                       ; $5d50: $53
    or l                                          ; $5d51: $b5
    ld b, a                                       ; $5d52: $47
    jr nz, jr_04c_5dd3                            ; $5d53: $20 $7e

    sub a                                         ; $5d55: $97
    push hl                                       ; $5d56: $e5
    sbc l                                         ; $5d57: $9d
    ld sp, $49c8                                  ; $5d58: $31 $c8 $49
    inc sp                                        ; $5d5b: $33
    ld [c], a                                     ; $5d5c: $e2
    and $3c                                       ; $5d5d: $e6 $3c
    halt                                          ; $5d5f: $76
    ld b, c                                       ; $5d60: $41
    rst $20                                       ; $5d61: $e7
    sub [hl]                                      ; $5d62: $96
    adc $16                                       ; $5d63: $ce $16
    ld d, l                                       ; $5d65: $55
    di                                            ; $5d66: $f3
    sbc d                                         ; $5d67: $9a
    inc hl                                        ; $5d68: $23
    rlca                                          ; $5d69: $07
    dec [hl]                                      ; $5d6a: $35
    rst $00                                       ; $5d6b: $c7
    ld a, e                                       ; $5d6c: $7b
    ld h, $17                                     ; $5d6d: $26 $17
    ld [hl], h                                    ; $5d6f: $74
    jp nc, $9e49                                  ; $5d70: $d2 $49 $9e

    inc [hl]                                      ; $5d73: $34
    inc hl                                        ; $5d74: $23
    add [hl]                                      ; $5d75: $86
    rst $38                                       ; $5d76: $ff
    ld c, b                                       ; $5d77: $48
    ret nz                                        ; $5d78: $c0

    inc [hl]                                      ; $5d79: $34
    add $aa                                       ; $5d7a: $c6 $aa
    ld b, l                                       ; $5d7c: $45
    ld h, $9b                                     ; $5d7d: $26 $9b
    ei                                            ; $5d7f: $fb
    pop de                                        ; $5d80: $d1
    cp b                                          ; $5d81: $b8
    db $e3                                        ; $5d82: $e3
    rst $28                                       ; $5d83: $ef
    sub [hl]                                      ; $5d84: $96
    sbc d                                         ; $5d85: $9a
    ld [c], a                                     ; $5d86: $e2
    rrca                                          ; $5d87: $0f
    rst $08                                       ; $5d88: $cf
    ld l, e                                       ; $5d89: $6b
    ld c, h                                       ; $5d8a: $4c
    ret                                           ; $5d8b: $c9


    inc de                                        ; $5d8c: $13
    jp z, Jump_04c_79a5                           ; $5d8d: $ca $a5 $79

    res 6, l                                      ; $5d90: $cb $b5
    add hl, sp                                    ; $5d92: $39
    add sp, $73                                   ; $5d93: $e8 $73
    ret nc                                        ; $5d95: $d0

    ld b, c                                       ; $5d96: $41
    add $d8                                       ; $5d97: $c6 $d8
    add h                                         ; $5d99: $84
    scf                                           ; $5d9a: $37
    sbc $55                                       ; $5d9b: $de $55
    db $e3                                        ; $5d9d: $e3
    ld sp, hl                                     ; $5d9e: $f9
    sub $0f                                       ; $5d9f: $d6 $0f
    push hl                                       ; $5da1: $e5
    jp nz, $cf56                                  ; $5da2: $c2 $56 $cf

    dec [hl]                                      ; $5da5: $35
    sub e                                         ; $5da6: $93
    pop af                                        ; $5da7: $f1
    ld bc, $e4d7                                  ; $5da8: $01 $d7 $e4
    jp nz, Jump_04c_6b0a                          ; $5dab: $c2 $0a $6b

    ld [hl], e                                    ; $5dae: $73
    ld h, c                                       ; $5daf: $61
    ld [hl], l                                    ; $5db0: $75
    add l                                         ; $5db1: $85
    ld e, a                                       ; $5db2: $5f
    dec a                                         ; $5db3: $3d
    ld l, c                                       ; $5db4: $69
    ld b, [hl]                                    ; $5db5: $46
    call c, $77dc                                 ; $5db6: $dc $dc $77
    ld c, e                                       ; $5db9: $4b
    pop af                                        ; $5dba: $f1
    xor [hl]                                      ; $5dbb: $ae
    ret                                           ; $5dbc: $c9


    sbc l                                         ; $5dbd: $9d
    ld d, b                                       ; $5dbe: $50
    xor a                                         ; $5dbf: $af
    or h                                          ; $5dc0: $b4
    and b                                         ; $5dc1: $a0
    inc bc                                        ; $5dc2: $03
    ld h, h                                       ; $5dc3: $64
    ld b, $d6                                     ; $5dc4: $06 $d6
    and $20                                       ; $5dc6: $e6 $20
    inc sp                                        ; $5dc8: $33
    ld a, [de]                                    ; $5dc9: $1a
    xor b                                         ; $5dca: $a8
    db $db                                        ; $5dcb: $db
    adc h                                         ; $5dcc: $8c
    ld [hl], a                                    ; $5dcd: $77
    cp l                                          ; $5dce: $bd
    sub e                                         ; $5dcf: $93
    ld c, [hl]                                    ; $5dd0: $4e
    ld a, [c]                                     ; $5dd1: $f2
    ld e, h                                       ; $5dd2: $5c

jr_04c_5dd3:
    inc l                                         ; $5dd3: $2c
    ld c, l                                       ; $5dd4: $4d
    sub l                                         ; $5dd5: $95
    push de                                       ; $5dd6: $d5
    and h                                         ; $5dd7: $a4
    add hl, de                                    ; $5dd8: $19
    ld [hl], c                                    ; $5dd9: $71
    ld [hl], e                                    ; $5dda: $73
    ld l, [hl]                                    ; $5ddb: $6e
    jp hl                                         ; $5ddc: $e9


    ld l, h                                       ; $5ddd: $6c
    ld d, c                                       ; $5dde: $51
    ld [hl], l                                    ; $5ddf: $75
    inc sp                                        ; $5de0: $33
    sbc $25                                       ; $5de1: $de $25
    sub [hl]                                      ; $5de3: $96
    ld l, $26                                     ; $5de4: $2e $26
    or c                                          ; $5de6: $b1
    ld l, d                                       ; $5de7: $6a
    cp [hl]                                       ; $5de8: $be
    ld d, e                                       ; $5de9: $53
    push hl                                       ; $5dea: $e5
    sbc l                                         ; $5deb: $9d
    call z, $6a28                                 ; $5dec: $cc $28 $6a
    rla                                           ; $5def: $17
    ld [hl], h                                    ; $5df0: $74
    daa                                           ; $5df1: $27

Call_04c_5df2:
    call nc, $a13c                                ; $5df2: $d4 $3c $a1
    nop                                           ; $5df5: $00
    inc sp                                        ; $5df6: $33
    sbc e                                         ; $5df7: $9b
    pop af                                        ; $5df8: $f1
    ld bc, $7b57                                  ; $5df9: $01 $57 $7b
    xor $54                                       ; $5dfc: $ee $54
    ld a, c                                       ; $5dfe: $79
    ld h, a                                       ; $5dff: $67
    inc l                                         ; $5e00: $2c
    xor a                                         ; $5e01: $af
    inc [hl]                                      ; $5e02: $34
    ld c, h                                       ; $5e03: $4c
    ld l, $55                                     ; $5e04: $2e $55
    add hl, hl                                    ; $5e06: $29
    ld c, e                                       ; $5e07: $4b
    sbc [hl]                                      ; $5e08: $9e
    add e                                         ; $5e09: $83
    inc e                                         ; $5e0a: $1c
    rra                                           ; $5e0b: $1f
    rst $08                                       ; $5e0c: $cf
    ret nc                                        ; $5e0d: $d0

    adc $18                                       ; $5e0e: $ce $18
    db $e4                                        ; $5e10: $e4
    ld a, [c]                                     ; $5e11: $f2
    add e                                         ; $5e12: $83
    pop af                                        ; $5e13: $f1
    xor c                                         ; $5e14: $a9
    sbc l                                         ; $5e15: $9d
    rst $00                                       ; $5e16: $c7
    inc b                                         ; $5e17: $04
    call $ec79                                    ; $5e18: $cd $79 $ec
    add d                                         ; $5e1b: $82
    ld l, $bf                                     ; $5e1c: $2e $bf
    ld b, a                                       ; $5e1e: $47
    or b                                          ; $5e1f: $b0
    or b                                          ; $5e20: $b0
    ld [bc], a                                    ; $5e21: $02
    rst $00                                       ; $5e22: $c7
    cp e                                          ; $5e23: $bb
    inc l                                         ; $5e24: $2c
    xor a                                         ; $5e25: $af
    reti                                          ; $5e26: $d9


    and c                                         ; $5e27: $a1
    ld e, d                                       ; $5e28: $5a
    sbc e                                         ; $5e29: $9b
    ld a, e                                       ; $5e2a: $7b
    or $6b                                        ; $5e2b: $f6 $6b
    db $fc                                        ; $5e2d: $fc
    ld a, e                                       ; $5e2e: $7b
    pop de                                        ; $5e2f: $d1
    nop                                           ; $5e30: $00
    ld e, [hl]                                    ; $5e31: $5e
    db $ec                                        ; $5e32: $ec
    ld h, h                                       ; $5e33: $64
    ld b, [hl]                                    ; $5e34: $46

jr_04c_5e35:
    sbc b                                         ; $5e35: $98
    dec bc                                        ; $5e36: $0b
    cp d                                          ; $5e37: $ba
    and b                                         ; $5e38: $a0
    sub e                                         ; $5e39: $93
    ld h, [hl]                                    ; $5e3a: $66
    call nz, $aff0                                ; $5e3b: $c4 $f0 $af
    ld [hl], l                                    ; $5e3e: $75
    pop hl                                        ; $5e3f: $e1
    adc h                                         ; $5e40: $8c
    sbc l                                         ; $5e41: $9d
    ret nc                                        ; $5e42: $d0

    sub e                                         ; $5e43: $93
    add hl, de                                    ; $5e44: $19
    ld [hl], c                                    ; $5e45: $71
    ld a, h                                       ; $5e46: $7c
    nop                                           ; $5e47: $00
    sub a                                         ; $5e48: $97
    push hl                                       ; $5e49: $e5
    ld e, c                                       ; $5e4a: $59
    ld a, [$7752]                                 ; $5e4b: $fa $52 $77
    ld [hl-], a                                   ; $5e4e: $32
    ld e, [hl]                                    ; $5e4f: $5e
    ret nc                                        ; $5e50: $d0

    push hl                                       ; $5e51: $e5
    rst $30                                       ; $5e52: $f7
    ld [$5616], sp                                ; $5e53: $08 $16 $56
    ldh [$a1], a                                  ; $5e56: $e0 $a1
    ld e, d                                       ; $5e58: $5a
    sbc e                                         ; $5e59: $9b
    ld a, e                                       ; $5e5a: $7b
    or $6b                                        ; $5e5b: $f6 $6b
    db $fc                                        ; $5e5d: $fc
    ld a, e                                       ; $5e5e: $7b
    add e                                         ; $5e5f: $83
    db $10                                        ; $5e60: $10
    jp nc, Jump_04c_7708                          ; $5e61: $d2 $08 $77

    ld d, h                                       ; $5e64: $54
    cp h                                          ; $5e65: $bc
    ld c, e                                       ; $5e66: $4b
    inc l                                         ; $5e67: $2c
    ld h, c                                       ; $5e68: $61
    ld c, [hl]                                    ; $5e69: $4e
    ld a, [hl-]                                   ; $5e6a: $3a
    cp c                                          ; $5e6b: $b9
    and b                                         ; $5e6c: $a0
    dec bc                                        ; $5e6d: $0b
    ld a, [hl-]                                   ; $5e6e: $3a
    ld l, c                                       ; $5e6f: $69
    ld b, [hl]                                    ; $5e70: $46
    inc c                                         ; $5e71: $0c
    rst $38                                       ; $5e72: $ff
    sub c                                         ; $5e73: $91
    add b                                         ; $5e74: $80
    ld l, c                                       ; $5e75: $69
    adc h                                         ; $5e76: $8c
    ld d, l                                       ; $5e77: $55
    ei                                            ; $5e78: $fb
    sub b                                         ; $5e79: $90
    jp nc, $1966                                  ; $5e7a: $d2 $66 $19

    rst $28                                       ; $5e7d: $ef
    sbc d                                         ; $5e7e: $9a
    sbc h                                         ; $5e7f: $9c
    ld [c], a                                     ; $5e80: $e2
    rrca                                          ; $5e81: $0f
    xor l                                         ; $5e82: $ad
    or h                                          ; $5e83: $b4
    ld [hl], $07                                  ; $5e84: $36 $07
    sbc c                                         ; $5e86: $99
    pop de                                        ; $5e87: $d1
    ldh [$3f], a                                  ; $5e88: $e0 $3f
    ld [de], a                                    ; $5e8a: $12
    jr nc, @-$71                                  ; $5e8b: $30 $8d

    or c                                          ; $5e8d: $b1
    ld l, d                                       ; $5e8e: $6a
    xor $ff                                       ; $5e8f: $ee $ff
    or h                                          ; $5e91: $b4
    and b                                         ; $5e92: $a0
    jp Jump_000_18bc                              ; $5e93: $c3 $bc $18


    jr nz, @+$65                                  ; $5e96: $20 $63

    ld d, h                                       ; $5e98: $54
    ld l, e                                       ; $5e99: $6b
    adc $fd                                       ; $5e9a: $ce $fd
    sbc a                                         ; $5e9c: $9f

jr_04c_5e9d:
    sub [hl]                                      ; $5e9d: $96
    jr z, jr_04c_5e35                             ; $5e9e: $28 $95

    ld hl, sp+$03                                 ; $5ea0: $f8 $03
    ld d, a                                       ; $5ea2: $57
    dec l                                         ; $5ea3: $2d
    push hl                                       ; $5ea4: $e5
    add d                                         ; $5ea5: $82
    ld e, [hl]                                    ; $5ea6: $5e
    call z, $0f1b                                 ; $5ea7: $cc $1b $0f
    push de                                       ; $5eaa: $d5
    jp nz, $cf56                                  ; $5eab: $c2 $56 $cf

    adc h                                         ; $5eae: $8c
    inc a                                         ; $5eaf: $3c
    add d                                         ; $5eb0: $82
    cp c                                          ; $5eb1: $b9
    sub [hl]                                      ; $5eb2: $96
    dec bc                                        ; $5eb3: $0b
    ld a, [de]                                    ; $5eb4: $1a
    rra                                           ; $5eb5: $1f
    rst $08                                       ; $5eb6: $cf
    or l                                          ; $5eb7: $b5
    add hl, sp                                    ; $5eb8: $39
    adc b                                         ; $5eb9: $88
    cp [hl]                                       ; $5eba: $be
    and b                                         ; $5ebb: $a0
    db $db                                        ; $5ebc: $db
    jr z, jr_04c_5e9d                             ; $5ebd: $28 $de

    set 4, c                                      ; $5ebf: $cb $e1
    push bc                                       ; $5ec1: $c5
    ld c, h                                       ; $5ec2: $4c
    xor e                                         ; $5ec3: $ab
    ld sp, hl                                     ; $5ec4: $f9
    adc $d2                                       ; $5ec5: $ce $d2
    sub a                                         ; $5ec7: $97
    cp d                                          ; $5ec8: $ba
    ldh [$27], a                                  ; $5ec9: $e0 $27
    ld l, b                                       ; $5ecb: $68
    xor d                                         ; $5ecc: $aa
    add l                                         ; $5ecd: $85
    sbc a                                         ; $5ece: $9f
    sbc d                                         ; $5ecf: $9a
    di                                            ; $5ed0: $f3
    add $43                                       ; $5ed1: $c6 $43
    cp c                                          ; $5ed3: $b9
    ld c, e                                       ; $5ed4: $4b
    inc hl                                        ; $5ed5: $23
    ld [de], a                                    ; $5ed6: $12
    or e                                          ; $5ed7: $b3
    ld d, a                                       ; $5ed8: $57
    ld a, $73                                     ; $5ed9: $3e $73
    ld l, c                                       ; $5edb: $69
    ld h, c                                       ; $5edc: $61
    add l                                         ; $5edd: $85
    add c                                         ; $5ede: $81
    add [hl]                                      ; $5edf: $86
    ld e, a                                       ; $5ee0: $5f
    ld b, e                                       ; $5ee1: $43
    ld c, l                                       ; $5ee2: $4d
    pop af                                        ; $5ee3: $f1
    rlca                                          ; $5ee4: $07
    rst $10                                       ; $5ee5: $d7
    db $e4                                        ; $5ee6: $e4
    jp nz, $a1ff                                  ; $5ee7: $c2 $ff $a1

    ld a, c                                       ; $5eea: $79
    db $e3                                        ; $5eeb: $e3
    dec b                                         ; $5eec: $05
    sbc l                                         ; $5eed: $9d
    rst $28                                       ; $5eee: $ef
    and h                                         ; $5eef: $a4
    add hl, de                                    ; $5ef0: $19
    ld [hl], c                                    ; $5ef1: $71
    ld [hl], e                                    ; $5ef2: $73
    cp d                                          ; $5ef3: $ba
    adc [hl]                                      ; $5ef4: $8e
    sbc h                                         ; $5ef5: $9c
    adc e                                         ; $5ef6: $8b
    jp hl                                         ; $5ef7: $e9


    ld e, c                                       ; $5ef8: $59
    db $fc                                        ; $5ef9: $fc
    sbc $c3                                       ; $5efa: $de $c3
    ld l, $e8                                     ; $5efc: $2e $e8
    ld a, $b4                                     ; $5efe: $3e $b4
    rst $30                                       ; $5f00: $f7
    ld c, [hl]                                    ; $5f01: $4e
    push bc                                       ; $5f02: $c5
    ld d, h                                       ; $5f03: $54
    ld e, h                                       ; $5f04: $5c
    ld c, h                                       ; $5f05: $4c
    pop af                                        ; $5f06: $f1
    rlca                                          ; $5f07: $07
    rst $10                                       ; $5f08: $d7
    db $e4                                        ; $5f09: $e4
    and h                                         ; $5f0a: $a4
    push hl                                       ; $5f0b: $e5
    ld [hl+], a                                   ; $5f0c: $22
    inc sp                                        ; $5f0d: $33
    sbc d                                         ; $5f0e: $9a
    ld d, b                                       ; $5f0f: $50
    ld l, $2d                                     ; $5f10: $2e $2d
    or c                                          ; $5f12: $b1
    inc a                                         ; $5f13: $3c
    ld l, a                                       ; $5f14: $6f

jr_04c_5f15:
    ld b, [hl]                                    ; $5f15: $46
    ld c, e                                       ; $5f16: $4b
    inc sp                                        ; $5f17: $33
    sbc d                                         ; $5f18: $9a
    ldh a, [$dd]                                  ; $5f19: $f0 $dd
    and $80                                       ; $5f1b: $e6 $80
    ld e, c                                       ; $5f1d: $59
    add $bb                                       ; $5f1e: $c6 $bb
    inc l                                         ; $5f20: $2c
    ld b, l                                       ; $5f21: $45
    push de                                       ; $5f22: $d5
    ret c                                         ; $5f23: $d8

Call_04c_5f24:
    call c, $f4d9                                 ; $5f24: $dc $d9 $f4
    and d                                         ; $5f27: $a2
    xor $43                                       ; $5f28: $ee $43
    adc e                                         ; $5f2a: $8b
    ld l, [hl]                                    ; $5f2b: $6e
    set 7, c                                      ; $5f2c: $cb $f9
    sbc a                                         ; $5f2e: $9f
    cp [hl]                                       ; $5f2f: $be
    inc [hl]                                      ; $5f30: $34
    ld d, b                                       ; $5f31: $50
    or a                                          ; $5f32: $b7
    add hl, de                                    ; $5f33: $19
    rra                                           ; $5f34: $1f
    or a                                          ; $5f35: $b7
    cp l                                          ; $5f36: $bd
    db $e4                                        ; $5f37: $e4
    call z, $c92d                                 ; $5f38: $cc $2d $c9
    rst $38                                       ; $5f3b: $ff
    and c                                         ; $5f3c: $a1
    cp c                                          ; $5f3d: $b9
    sub [hl]                                      ; $5f3e: $96
    ld [hl], e                                    ; $5f3f: $73
    rst $38                                       ; $5f40: $ff
    and a                                         ; $5f41: $a7
    ld d, e                                       ; $5f42: $53
    add hl, bc                                    ; $5f43: $09
    ld l, d                                       ; $5f44: $6a
    adc $fd                                       ; $5f45: $ce $fd
    sbc a                                         ; $5f47: $9f
    ld b, [hl]                                    ; $5f48: $46
    push af                                       ; $5f49: $f5
    push de                                       ; $5f4a: $d5
    jr jr_04c_5f15                                ; $5f4b: $18 $c8

    ld c, $22                                     ; $5f4d: $0e $22

Jump_04c_5f4f:
    inc c                                         ; $5f4f: $0c
    adc $cd                                       ; $5f50: $ce $cd
    ld h, c                                       ; $5f52: $61
    adc $77                                       ; $5f53: $ce $77
    ld l, a                                       ; $5f55: $6f
    sub l                                         ; $5f56: $95
    adc $16                                       ; $5f57: $ce $16
    ld d, l                                       ; $5f59: $55
    sbc e                                         ; $5f5a: $9b
    sub c                                         ; $5f5b: $91
    add d                                         ; $5f5c: $82
    ld l, e                                       ; $5f5d: $6b
    ld b, a                                       ; $5f5e: $47
    adc b                                         ; $5f5f: $88
    rst $30                                       ; $5f60: $f7
    ld d, [hl]                                    ; $5f61: $56
    add hl, bc                                    ; $5f62: $09
    ret nc                                        ; $5f63: $d0

    rst $38                                       ; $5f64: $ff
    cp h                                          ; $5f65: $bc
    and b                                         ; $5f66: $a0
    ld [hl], e                                    ; $5f67: $73
    rst $38                                       ; $5f68: $ff
    daa                                           ; $5f69: $27
    ld [hl-], a                                   ; $5f6a: $32
    di                                            ; $5f6b: $f3
    dec sp                                        ; $5f6c: $3b
    ld a, a                                       ; $5f6d: $7f
    ld l, l                                       ; $5f6e: $6d
    add hl, bc                                    ; $5f6f: $09
    ld d, $96                                     ; $5f70: $16 $96
    sub a                                         ; $5f72: $97
    rra                                           ; $5f73: $1f
    call z, $0e3b                                 ; $5f74: $cc $3b $0e
    ld [hl], c                                    ; $5f77: $71
    cp h                                          ; $5f78: $bc
    or a                                          ; $5f79: $b7
    ld c, l                                       ; $5f7a: $4d
    dec c                                         ; $5f7b: $0d
    sub h                                         ; $5f7c: $94
    dec hl                                        ; $5f7d: $2b
    sbc e                                         ; $5f7e: $9b
    cp $62                                        ; $5f7f: $fe $62
    rst $08                                       ; $5f81: $cf
    ld d, d                                       ; $5f82: $52
    db $fd                                        ; $5f83: $fd
    sbc d                                         ; $5f84: $9a
    ld a, e                                       ; $5f85: $7b
    xor [hl]                                      ; $5f86: $ae
    sbc a                                         ; $5f87: $9f
    ld b, b                                       ; $5f88: $40
    rrca                                          ; $5f89: $0f
    rst $08                                       ; $5f8a: $cf
    ld h, e                                       ; $5f8b: $63
    push de                                       ; $5f8c: $d5
    add d                                         ; $5f8d: $82
    ld c, [hl]                                    ; $5f8e: $4e
    sub l                                         ; $5f8f: $95
    db $e3                                        ; $5f90: $e3
    inc bc                                        ; $5f91: $03
    or a                                          ; $5f92: $b7
    ld e, l                                       ; $5f93: $5d
    ld [hl], a                                    ; $5f94: $77
    inc d                                         ; $5f95: $14
    dec sp                                        ; $5f96: $3b
    ld l, d                                       ; $5f97: $6a
    xor a                                         ; $5f98: $af
    and b                                         ; $5f99: $a0
    sub $98                                       ; $5f9a: $d6 $98
    ldh [$b6], a                                  ; $5f9c: $e0 $b6
    xor c                                         ; $5f9e: $a9
    ld a, [c]                                     ; $5f9f: $f2
    ld bc, $bdb7                                  ; $5fa0: $01 $b7 $bd
    ld d, a                                       ; $5fa3: $57
    and c                                         ; $5fa4: $a1
    cp [hl]                                       ; $5fa5: $be
    or a                                          ; $5fa6: $b7
    xor b                                         ; $5fa7: $a8
    cp l                                          ; $5fa8: $bd
    add d                                         ; $5fa9: $82
    add l                                         ; $5faa: $85
    ld c, d                                       ; $5fab: $4a
    or a                                          ; $5fac: $b7
    ld c, l                                       ; $5fad: $4d
    sub l                                         ; $5fae: $95
    rrca                                          ; $5faf: $0f
    or a                                          ; $5fb0: $b7
    dec a                                         ; $5fb1: $3d
    ld b, a                                       ; $5fb2: $47

Jump_04c_5fb3:
    dec b                                         ; $5fb3: $05
    sbc a                                         ; $5fb4: $9f
    ret nc                                        ; $5fb5: $d0

    ld d, c                                       ; $5fb6: $51
    di                                            ; $5fb7: $f3
    db $dd                                        ; $5fb8: $dd
    di                                            ; $5fb9: $f3
    db $e4                                        ; $5fba: $e4
    jr nz, jr_04c_6011                            ; $5fbb: $20 $54

    cp d                                          ; $5fbd: $ba
    ld l, l                                       ; $5fbe: $6d
    xor d                                         ; $5fbf: $aa
    ld a, h                                       ; $5fc0: $7c
    nop                                           ; $5fc1: $00
    or a                                          ; $5fc2: $b7
    cp l                                          ; $5fc3: $bd
    ld e, b                                       ; $5fc4: $58
    ld a, [hl-]                                   ; $5fc5: $3a
    ld h, c                                       ; $5fc6: $61
    sub b                                         ; $5fc7: $90
    di                                            ; $5fc8: $f3
    db $dd                                        ; $5fc9: $dd
    di                                            ; $5fca: $f3
    daa                                           ; $5fcb: $27
    inc sp                                        ; $5fcc: $33
    ld a, a                                       ; $5fcd: $7f
    ld b, d                                       ; $5fce: $42
    xor l                                         ; $5fcf: $ad
    ld de, $b6f4                                  ; $5fd0: $11 $f4 $b6
    xor c                                         ; $5fd3: $a9
    ld a, [c]                                     ; $5fd4: $f2
    ld bc, $e4cf                                  ; $5fd5: $01 $cf $e4
    sub h                                         ; $5fd8: $94
    or [hl]                                       ; $5fd9: $b6
    inc b                                         ; $5fda: $04
    ld c, l                                       ; $5fdb: $4d
    or [hl]                                       ; $5fdc: $b6
    db $f4                                        ; $5fdd: $f4
    call Call_04c_7b2b                            ; $5fde: $cd $2b $7b

jr_04c_5fe1:
    cp e                                          ; $5fe1: $bb
    push hl                                       ; $5fe2: $e5
    dec b                                         ; $5fe3: $05
    sbc l                                         ; $5fe4: $9d
    scf                                           ; $5fe5: $37
    and e                                         ; $5fe6: $a3
    ld h, c                                       ; $5fe7: $61
    ld e, c                                       ; $5fe8: $59
    call $bcb5                                    ; $5fe9: $cd $b5 $bc
    ld [hl], d                                    ; $5fec: $72
    nop                                           ; $5fed: $00
    cpl                                           ; $5fee: $2f

jr_04c_5fef:
    ld a, l                                       ; $5fef: $7d
    rst $20                                       ; $5ff0: $e7
    ld h, d                                       ; $5ff1: $62
    db $10                                        ; $5ff2: $10
    ld a, l                                       ; $5ff3: $7d
    ld d, c                                       ; $5ff4: $51
    sub l                                         ; $5ff5: $95
    ld a, [$d7b4]                                 ; $5ff6: $fa $b4 $d7
    sbc c                                         ; $5ff9: $99
    ld a, [hl]                                    ; $5ffa: $7e
    jp z, $e685                                   ; $5ffb: $ca $85 $e6

    daa                                           ; $5ffe: $27
    ld h, b                                       ; $5fff: $60
    jr nc, jr_04c_5fe1                            ; $6000: $30 $df

    ld c, c                                       ; $6002: $49
    ld d, e                                       ; $6003: $53
    xor d                                         ; $6004: $aa
    add hl, sp                                    ; $6005: $39
    adc b                                         ; $6006: $88
    cp [hl]                                       ; $6007: $be
    and b                                         ; $6008: $a0
    db $db                                        ; $6009: $db

jr_04c_600a:
    ld [$aac2], sp                                ; $600a: $08 $c2 $aa
    ld b, l                                       ; $600d: $45
    push hl                                       ; $600e: $e5
    add l                                         ; $600f: $85
    push hl                                       ; $6010: $e5

jr_04c_6011:
    cp c                                          ; $6011: $b9
    and l                                         ; $6012: $a5
    ret nz                                        ; $6013: $c0

    ld b, b                                       ; $6014: $40
    ld [hl], e                                    ; $6015: $73
    xor [hl]                                      ; $6016: $ae
    push hl                                       ; $6017: $e5
    sub h                                         ; $6018: $94
    or [hl]                                       ; $6019: $b6
    inc b                                         ; $601a: $04
    call Call_000_2f78                            ; $601b: $cd $78 $2f
    and d                                         ; $601e: $a2
    ld d, d                                       ; $601f: $52
    ldh a, [rNR10]                                ; $6020: $f0 $10
    sbc e                                         ; $6022: $9b
    ld d, e                                       ; $6023: $53
    jr jr_04c_600a                                ; $6024: $18 $e4

    db $fc                                        ; $6026: $fc
    ld l, l                                       ; $6027: $6d
    or h                                          ; $6028: $b4
    ld [hl], $07                                  ; $6029: $36 $07
    sbc c                                         ; $602b: $99
    pop de                                        ; $602c: $d1
    inc c                                         ; $602d: $0c
    ld e, $72                                     ; $602e: $1e $72
    add hl, bc                                    ; $6030: $09
    ld d, h                                       ; $6031: $54
    ret nc                                        ; $6032: $d0

    ld [hl], l                                    ; $6033: $75
    sbc e                                         ; $6034: $9b
    pop af                                        ; $6035: $f1
    ld bc, $d54f                                  ; $6036: $01 $4f $d5
    ld e, e                                       ; $6039: $5b
    ld c, d                                       ; $603a: $4a
    cp [hl]                                       ; $603b: $be
    ret c                                         ; $603c: $d8

    and l                                         ; $603d: $a5
    ld bc, $1f42                                  ; $603e: $01 $42 $1f
    rra                                           ; $6041: $1f
    rst $08                                       ; $6042: $cf
    sub c                                         ; $6043: $91
    add hl, de                                    ; $6044: $19
    jr jr_04c_5fef                                ; $6045: $18 $a8

    scf                                           ; $6047: $37
    bit 7, b                                      ; $6048: $cb $78

Jump_04c_604a:
    rst $10                                       ; $604a: $d7
    db $e4                                        ; $604b: $e4
    adc $df                                       ; $604c: $ce $df
    ld e, c                                       ; $604e: $59
    ret nc                                        ; $604f: $d0

    ld bc, $0332                                  ; $6050: $01 $32 $03
    dec sp                                        ; $6053: $3b
    and c                                         ; $6054: $a1
    sub $cd                                       ; $6055: $d6 $cd
    add l                                         ; $6057: $85
    push de                                       ; $6058: $d5
    cp d                                          ; $6059: $ba
    sub b                                         ; $605a: $90
    ld [hl], e                                    ; $605b: $73
    or c                                          ; $605c: $b1
    ret z                                         ; $605d: $c8

    adc h                                         ; $605e: $8c
    add [hl]                                      ; $605f: $86
    ld [hl], d                                    ; $6060: $72
    ld b, d                                       ; $6061: $42
    ld [hl], e                                    ; $6062: $73
    sbc [hl]                                      ; $6063: $9e
    inc e                                         ; $6064: $1c
    add hl, sp                                    ; $6065: $39
    ret nc                                        ; $6066: $d0

    ld d, e                                       ; $6067: $53
    xor e                                         ; $6068: $ab
    ld a, b                                       ; $6069: $78
    ld d, c                                       ; $606a: $51
    ld a, c                                       ; $606b: $79
    ld h, c                                       ; $606c: $61
    ld a, c                                       ; $606d: $79
    ld b, d                                       ; $606e: $42
    dec d                                         ; $606f: $15
    ld b, h                                       ; $6070: $44
    cp a                                          ; $6071: $bf
    ret c                                         ; $6072: $d8

    sbc h                                         ; $6073: $9c
    ld l, e                                       ; $6074: $6b
    add hl, sp                                    ; $6075: $39
    ld e, c                                       ; $6076: $59
    or a                                          ; $6077: $b7
    and h                                         ; $6078: $a4
    sub $1c                                       ; $6079: $d6 $1c
    jp z, $bf45                                   ; $607b: $ca $45 $bf

    cp h                                          ; $607e: $bc
    ld [hl], h                                    ; $607f: $74
    ld d, [hl]                                    ; $6080: $56
    ld a, b                                       ; $6081: $78
    ret z                                         ; $6082: $c8

    xor e                                         ; $6083: $ab
    ld c, b                                       ; $6084: $48
    call nc, Call_000_39b5                        ; $6085: $d4 $b5 $39
    rst $28                                       ; $6088: $ef
    ld [hl], b                                    ; $6089: $70
    ret nc                                        ; $608a: $d0

    ld sp, hl                                     ; $608b: $f9
    rst $18                                       ; $608c: $df
    adc h                                         ; $608d: $8c
    rrca                                          ; $608e: $0f
    sub a                                         ; $608f: $97
    and [hl]                                      ; $6090: $a6
    push af                                       ; $6091: $f5
    cp a                                          ; $6092: $bf
    jr jr_04c_60d9                                ; $6093: $18 $44

    ld e, a                                       ; $6095: $5f
    ld d, h                                       ; $6096: $54
    and l                                         ; $6097: $a5

Jump_04c_6098:
    ld a, $ed                                     ; $6098: $3e $ed
    ld [hl], l                                    ; $609a: $75
    and [hl]                                      ; $609b: $a6
    sbc a                                         ; $609c: $9f
    ld [hl-], a                                   ; $609d: $32
    ld a, $00                                     ; $609e: $3e $00
    sub a                                         ; $60a0: $97
    and [hl]                                      ; $60a1: $a6
    push af                                       ; $60a2: $f5
    cp a                                          ; $60a3: $bf
    ret c                                         ; $60a4: $d8

    and l                                         ; $60a5: $a5
    ld de, $b989                                  ; $60a6: $11 $89 $b9
    ret c                                         ; $60a9: $d8

    ret                                           ; $60aa: $c9


    ld a, b                                       ; $60ab: $78
    ld a, [c]                                     ; $60ac: $f2
    ld b, a                                       ; $60ad: $47
    dec bc                                        ; $60ae: $0b
    jr nc, jr_04c_6109                            ; $60af: $30 $58

    adc b                                         ; $60b1: $88
    and l                                         ; $60b2: $a5
    ld sp, hl                                     ; $60b3: $f9
    rst $18                                       ; $60b4: $df
    cp h                                          ; $60b5: $bc
    ld [hl], d                                    ; $60b6: $72
    nop                                           ; $60b7: $00
    xor a                                         ; $60b8: $af
    ret nc                                        ; $60b9: $d0

    rla                                           ; $60ba: $17
    ld d, l                                       ; $60bb: $55
    xor c                                         ; $60bc: $a9
    ld c, a                                       ; $60bd: $4f
    ld a, e                                       ; $60be: $7b
    dec a                                         ; $60bf: $3d
    ld e, e                                       ; $60c0: $5b
    ld l, b                                       ; $60c1: $68
    ld h, c                                       ; $60c2: $61
    dec hl                                        ; $60c3: $2b
    ld [c], a                                     ; $60c4: $e2
    ld b, l                                       ; $60c5: $45
    dec e                                         ; $60c6: $1d
    xor b                                         ; $60c7: $a8
    ld c, e                                       ; $60c8: $4b
    ld h, [hl]                                    ; $60c9: $66
    ret nz                                        ; $60ca: $c0

    rst $28                                       ; $60cb: $ef
    ld b, a                                       ; $60cc: $47
    ei                                            ; $60cd: $fb
    ret nc                                        ; $60ce: $d0

    adc $bf                                       ; $60cf: $ce $bf
    ld [hl], d                                    ; $60d1: $72
    call c, $b301                                 ; $60d2: $dc $01 $b3
    ld e, h                                       ; $60d5: $5c
    sbc d                                         ; $60d6: $9a
    pop de                                        ; $60d7: $d1
    sub h                                         ; $60d8: $94

jr_04c_60d9:
    or [hl]                                       ; $60d9: $b6
    inc b                                         ; $60da: $04
    ld c, l                                       ; $60db: $4d
    or [hl]                                       ; $60dc: $b6
    db $f4                                        ; $60dd: $f4
    call Call_000_358b                            ; $60de: $cd $8b $35
    ld [hl], a                                    ; $60e1: $77
    ld l, c                                       ; $60e2: $69
    add b                                         ; $60e3: $80
    ret nc                                        ; $60e4: $d0

    rst $08                                       ; $60e5: $cf
    dec l                                         ; $60e6: $2d
    ld [hl], c                                    ; $60e7: $71
    or l                                          ; $60e8: $b5
    rst $28                                       ; $60e9: $ef
    and d                                         ; $60ea: $a2
    adc $1b                                       ; $60eb: $ce $1b
    rst $08                                       ; $60ed: $cf
    ld h, e                                       ; $60ee: $63
    rla                                           ; $60ef: $17
    ld h, d                                       ; $60f0: $62
    ld l, c                                       ; $60f1: $69
    ld de, $052a                                  ; $60f2: $11 $2a $05
    rrca                                          ; $60f5: $0f
    or c                                          ; $60f6: $b1
    cp c                                          ; $60f7: $b9
    ld d, e                                       ; $60f8: $53
    push af                                       ; $60f9: $f5
    cp b                                          ; $60fa: $b8
    ld [hl], e                                    ; $60fb: $73
    ld sp, $737d                                  ; $60fc: $31 $7d $73
    daa                                           ; $60ff: $27
    and e                                         ; $6100: $a3
    ld h, [hl]                                    ; $6101: $66
    ld a, h                                       ; $6102: $7c
    nop                                           ; $6103: $00
    cpl                                           ; $6104: $2f
    and d                                         ; $6105: $a2
    ld d, d                                       ; $6106: $52
    ldh a, [rNR10]                                ; $6107: $f0 $10

jr_04c_6109:
    sbc e                                         ; $6109: $9b
    dec sp                                        ; $610a: $3b
    ld d, l                                       ; $610b: $55
    rst $00                                       ; $610c: $c7
    ld [hl], c                                    ; $610d: $71
    cp h                                          ; $610e: $bc
    inc l                                         ; $610f: $2c
    rst $08                                       ; $6110: $cf
    or h                                          ; $6111: $b4
    sbc d                                         ; $6112: $9a
    rst $28                                       ; $6113: $ef
    sub h                                         ; $6114: $94
    or [hl]                                       ; $6115: $b6
    inc b                                         ; $6116: $04
    call $ec79                                    ; $6117: $cd $79 $ec
    inc b                                         ; $611a: $04
    inc c                                         ; $611b: $0c
    and $3b                                       ; $611c: $e6 $3b
    or [hl]                                       ; $611e: $b6
    db $f4                                        ; $611f: $f4
    call $9f85                                    ; $6120: $cd $85 $9f
    sbc d                                         ; $6123: $9a
    pop af                                        ; $6124: $f1
    ld bc, $616f                                  ; $6125: $01 $6f $61
    ld a, d                                       ; $6128: $7a
    sbc [hl]                                      ; $6129: $9e
    or e                                          ; $612a: $b3
    or b                                          ; $612b: $b0
    inc a                                         ; $612c: $3c
    ldh a, [$eb]                                  ; $612d: $f0 $eb
    ld h, a                                       ; $612f: $67
    ld e, d                                       ; $6130: $5a
    dec c                                         ; $6131: $0d
    push hl                                       ; $6132: $e5
    ld c, d                                       ; $6133: $4a
    ld l, c                                       ; $6134: $69
    ld b, [hl]                                    ; $6135: $46
    ei                                            ; $6136: $fb
    ret nc                                        ; $6137: $d0

    adc $bf                                       ; $6138: $ce $bf
    ld [hl], d                                    ; $613a: $72
    ret nz                                        ; $613b: $c0

    xor [hl]                                      ; $613c: $ae
    inc e                                         ; $613d: $1c
    rst $08                                       ; $613e: $cf
    or l                                          ; $613f: $b5
    add hl, sp                                    ; $6140: $39
    adc b                                         ; $6141: $88
    cp [hl]                                       ; $6142: $be
    and b                                         ; $6143: $a0
    db $db                                        ; $6144: $db
    add sp, $62                                   ; $6145: $e8 $62
    sub c                                         ; $6147: $91
    add hl, de                                    ; $6148: $19
    dec c                                         ; $6149: $0d
    ld [hl-], a                                   ; $614a: $32
    or l                                          ; $614b: $b5
    ld d, e                                       ; $614c: $53
    push af                                       ; $614d: $f5
    ld a, $14                                     ; $614e: $3e $14
    rra                                           ; $6150: $1f
    ld l, a                                       ; $6151: $6f
    ld [hl+], a                                   ; $6152: $22
    dec hl                                        ; $6153: $2b
    xor [hl]                                      ; $6154: $ae
    ld l, h                                       ; $6155: $6c
    ld a, [$7a81]                                 ; $6156: $fa $81 $7a
    or e                                          ; $6159: $b3
    cp h                                          ; $615a: $bc
    ret c                                         ; $615b: $d8

    and l                                         ; $615c: $a5
    ld de, $8989                                  ; $615d: $11 $89 $89
    ld [hl], a                                    ; $6160: $77
    rst $28                                       ; $6161: $ef
    jr nz, jr_04c_618b                            ; $6162: $20 $27

    ld a, c                                       ; $6164: $79
    dec h                                         ; $6165: $25
    ld bc, $b983                                  ; $6166: $01 $83 $b9
    rst $38                                       ; $6169: $ff
    db $d3                                        ; $616a: $d3
    ld a, [hl]                                    ; $616b: $7e
    add d                                         ; $616c: $82
    ld a, d                                       ; $616d: $7a
    inc l                                         ; $616e: $2c
    ld [hl], c                                    ; $616f: $71
    add l                                         ; $6170: $85
    ld a, [hl+]                                   ; $6171: $2a
    ld h, $0c                                     ; $6172: $26 $0c
    inc a                                         ; $6174: $3c
    ld h, $88                                     ; $6175: $26 $88
    rrca                                          ; $6177: $0f
    rst $08                                       ; $6178: $cf
    push af                                       ; $6179: $f5
    ld d, h                                       ; $617a: $54
    db $ed                                        ; $617b: $ed
    ld de, $2c5c                                  ; $617c: $11 $5c $2c
    call nz, $ced2                                ; $617f: $c4 $d2 $ce
    jr @-$1a                                      ; $6182: $18 $e4

    ld a, h                                       ; $6184: $7c
    and a                                         ; $6185: $a7
    or h                                          ; $6186: $b4
    dec h                                         ; $6187: $25
    ld l, b                                       ; $6188: $68
    or d                                          ; $6189: $b2
    and l                                         ; $618a: $a5

jr_04c_618b:
    ld l, a                                       ; $618b: $6f
    adc $63                                       ; $618c: $ce $63
    add a                                         ; $618e: $87
    ld [hl], d                                    ; $618f: $72
    ld sp, hl                                     ; $6190: $f9
    dec a                                         ; $6191: $3d
    add d                                         ; $6192: $82
    add l                                         ; $6193: $85
    dec d                                         ; $6194: $15
    ld [c], a                                     ; $6195: $e2
    inc bc                                        ; $6196: $03
    ld d, a                                       ; $6197: $57
    dec e                                         ; $6198: $1d
    dec [hl]                                      ; $6199: $35
    adc a                                         ; $619a: $8f
    inc a                                         ; $619b: $3c
    ld d, h                                       ; $619c: $54
    ld l, e                                       ; $619d: $6b
    ld [hl], e                                    ; $619e: $73
    ld l, a                                       ; $619f: $6f
    add hl, sp                                    ; $61a0: $39
    ld c, $9d                                     ; $61a1: $0e $9d
    ld c, d                                       ; $61a3: $4a
    ld [de], a                                    ; $61a4: $12
    jp nc, $1c96                                  ; $61a5: $d2 $96 $1c

    rra                                           ; $61a8: $1f
    rst $10                                       ; $61a9: $d7
    ld a, a                                       ; $61aa: $7f
    ld hl, $c5ec                                  ; $61ab: $21 $ec $c5
    ld a, [c]                                     ; $61ae: $f2
    add e                                         ; $61af: $83
    ld b, l                                       ; $61b0: $45
    dec l                                         ; $61b1: $2d
    db $ed                                        ; $61b2: $ed
    dec l                                         ; $61b3: $2d
    rst $00                                       ; $61b4: $c7
    and c                                         ; $61b5: $a1
    ld d, e                                       ; $61b6: $53
    ld c, c                                       ; $61b7: $49
    ld b, d                                       ; $61b8: $42
    jp c, $9b92                                   ; $61b9: $da $92 $9b

    pop af                                        ; $61bc: $f1
    ld bc, $3bd7                                  ; $61bd: $01 $d7 $3b
    jp hl                                         ; $61c0: $e9


    inc h                                         ; $61c1: $24
    cpl                                           ; $61c2: $2f
    rst $38                                       ; $61c3: $ff
    ld b, a                                       ; $61c4: $47
    ld e, $68                                     ; $61c5: $1e $68
    cp $82                                        ; $61c7: $fe $82
    cp l                                          ; $61c9: $bd
    push hl                                       ; $61ca: $e5
    jr c, jr_04c_6241                             ; $61cb: $38 $74

    ld a, [hl+]                                   ; $61cd: $2a
    ld c, c                                       ; $61ce: $49
    ld c, b                                       ; $61cf: $48
    ld e, e                                       ; $61d0: $5b
    ld [hl], d                                    ; $61d1: $72
    ld [hl], e                                    ; $61d2: $73
    ld h, c                                       ; $61d3: $61
    dec b                                         ; $61d4: $05
    and c                                         ; $61d5: $a1
    add hl, de                                    ; $61d6: $19
    rra                                           ; $61d7: $1f
    rst $10                                       ; $61d8: $d7
    db $e4                                        ; $61d9: $e4
    jp nz, Jump_04c_4b0a                          ; $61da: $c2 $0a $4b

    ld h, a                                       ; $61dd: $67
    ld l, l                                       ; $61de: $6d
    ld l, $ac                                     ; $61df: $2e $ac
    xor [hl]                                      ; $61e1: $ae
    ldh a, [$ab]                                  ; $61e2: $f0 $ab
    rst $30                                       ; $61e4: $f7
    sub [hl]                                      ; $61e5: $96
    db $e3                                        ; $61e6: $e3
    ret nc                                        ; $61e7: $d0

    xor c                                         ; $61e8: $a9
    inc h                                         ; $61e9: $24
    ld hl, $c96d                                  ; $61ea: $21 $6d $c9
    call $00f8                                    ; $61ed: $cd $f8 $00
    sub a                                         ; $61f0: $97
    push hl                                       ; $61f1: $e5
    and c                                         ; $61f2: $a1
    jp c, $f293                                   ; $61f3: $da $93 $f2

    daa                                           ; $61f6: $27
    sub [hl]                                      ; $61f7: $96
    db $e3                                        ; $61f8: $e3
    inc bc                                        ; $61f9: $03
    rst $10                                       ; $61fa: $d7
    ld a, a                                       ; $61fb: $7f
    ld hl, $c5ec                                  ; $61fc: $21 $ec $c5
    ld a, [c]                                     ; $61ff: $f2
    add e                                         ; $6200: $83
    ld b, l                                       ; $6201: $45
    dec l                                         ; $6202: $2d
    db $ed                                        ; $6203: $ed
    ld c, c                                       ; $6204: $49
    ld sp, hl                                     ; $6205: $f9
    inc de                                        ; $6206: $13
    set 6, c                                      ; $6207: $cb $f1
    ld bc, $3bd7                                  ; $6209: $01 $d7 $3b
    jp hl                                         ; $620c: $e9


    inc h                                         ; $620d: $24
    cpl                                           ; $620e: $2f
    rst $38                                       ; $620f: $ff
    ld b, a                                       ; $6210: $47
    ld e, $68                                     ; $6211: $1e $68
    cp $82                                        ; $6213: $fe $82
    dec a                                         ; $6215: $3d
    add hl, hl                                    ; $6216: $29
    ld a, a                                       ; $6217: $7f
    ld h, d                                       ; $6218: $62
    ld a, c                                       ; $6219: $79
    ld h, c                                       ; $621a: $61
    dec b                                         ; $621b: $05
    and c                                         ; $621c: $a1
    add hl, de                                    ; $621d: $19
    rra                                           ; $621e: $1f
    rst $10                                       ; $621f: $d7
    db $e4                                        ; $6220: $e4
    jp nz, Jump_04c_4b0a                          ; $6221: $c2 $0a $4b

    ld h, a                                       ; $6224: $67
    ld l, l                                       ; $6225: $6d
    ld l, $ac                                     ; $6226: $2e $ac
    xor [hl]                                      ; $6228: $ae
    ldh a, [$ab]                                  ; $6229: $f0 $ab
    rst $30                                       ; $622b: $f7
    and h                                         ; $622c: $a4
    db $fc                                        ; $622d: $fc
    adc c                                         ; $622e: $89
    push hl                                       ; $622f: $e5
    ld hl, sp+$00                                 ; $6230: $f8 $00
    rst $10                                       ; $6232: $d7
    dec sp                                        ; $6233: $3b
    jp hl                                         ; $6234: $e9


    inc h                                         ; $6235: $24
    cpl                                           ; $6236: $2f
    rst $38                                       ; $6237: $ff
    ld b, a                                       ; $6238: $47
    ld e, $68                                     ; $6239: $1e $68
    cp $82                                        ; $623b: $fe $82
    cp l                                          ; $623d: $bd
    db $fd                                        ; $623e: $fd
    or l                                          ; $623f: $b5
    ld c, b                                       ; $6240: $48

jr_04c_6241:
    sbc l                                         ; $6241: $9d
    ld a, $71                                     ; $6242: $3e $71
    push af                                       ; $6244: $f5
    jp nz, Jump_04c_420a                          ; $6245: $c2 $0a $42

    inc sp                                        ; $6248: $33
    ld a, $00                                     ; $6249: $3e $00
    rst $10                                       ; $624b: $d7
    ld a, a                                       ; $624c: $7f
    ld hl, $c5ec                                  ; $624d: $21 $ec $c5
    ld a, [c]                                     ; $6250: $f2
    add e                                         ; $6251: $83
    ld b, l                                       ; $6252: $45
    dec l                                         ; $6253: $2d
    db $ed                                        ; $6254: $ed
    db $ed                                        ; $6255: $ed
    xor a                                         ; $6256: $af
    ld b, l                                       ; $6257: $45
    ld [$89f4], a                                 ; $6258: $ea $f4 $89
    xor e                                         ; $625b: $ab
    ld d, l                                       ; $625c: $55
    ld a, h                                       ; $625d: $7c
    nop                                           ; $625e: $00
    rst $10                                       ; $625f: $d7
    db $e4                                        ; $6260: $e4
    jp nz, Jump_04c_4b0a                          ; $6261: $c2 $0a $4b

    ld h, a                                       ; $6264: $67
    ld l, l                                       ; $6265: $6d
    ld l, $ac                                     ; $6266: $2e $ac
    xor [hl]                                      ; $6268: $ae
    ldh a, [$ab]                                  ; $6269: $f0 $ab
    rst $30                                       ; $626b: $f7
    or $d7                                        ; $626c: $f6 $d7
    ld [hl+], a                                   ; $626e: $22
    ld [hl], l                                    ; $626f: $75
    ld a, [$d5c4]                                 ; $6270: $fa $c4 $d5
    ld a, [hl+]                                   ; $6273: $2a
    ld a, $00                                     ; $6274: $3e $00
    ld c, a                                       ; $6276: $4f
    sub c                                         ; $6277: $91
    and l                                         ; $6278: $a5
    rst $08                                       ; $6279: $cf
    ld [hl], d                                    ; $627a: $72
    or l                                          ; $627b: $b5
    adc d                                         ; $627c: $8a
    ld [hl], a                                    ; $627d: $77
    or l                                          ; $627e: $b5
    ld h, e                                       ; $627f: $63
    rlca                                          ; $6280: $07
    ld [hl], e                                    ; $6281: $73
    xor [hl]                                      ; $6282: $ae
    push hl                                       ; $6283: $e5
    ld a, h                                       ; $6284: $7c
    ld [hl], a                                    ; $6285: $77
    push de                                       ; $6286: $d5
    ld de, $aa89                                  ; $6287: $11 $89 $aa
    ld sp, $7341                                  ; $628a: $31 $41 $73
    adc d                                         ; $628d: $8a
    ld a, a                                       ; $628e: $7f
    ld a, [$e695]                                 ; $628f: $fa $95 $e6
    ld a, [hl]                                    ; $6292: $7e
    cp l                                          ; $6293: $bd
    xor b                                         ; $6294: $a8
    adc l                                         ; $6295: $8d
    rrca                                          ; $6296: $0f
    rst $10                                       ; $6297: $d7
    ld a, a                                       ; $6298: $7f
    ld hl, $c5ec                                  ; $6299: $21 $ec $c5
    ld a, [c]                                     ; $629c: $f2
    add e                                         ; $629d: $83
    ld b, l                                       ; $629e: $45
    dec l                                         ; $629f: $2d
    db $ed                                        ; $62a0: $ed
    add hl, hl                                    ; $62a1: $29
    or d                                          ; $62a2: $b2
    db $f4                                        ; $62a3: $f4
    ld e, c                                       ; $62a4: $59
    xor [hl]                                      ; $62a5: $ae
    ld d, [hl]                                    ; $62a6: $56
    pop af                                        ; $62a7: $f1
    ld bc, $e597                                  ; $62a8: $01 $97 $e5
    add hl, bc                                    ; $62ab: $09
    cp a                                          ; $62ac: $bf
    ld [hl], d                                    ; $62ad: $72
    rst $20                                       ; $62ae: $e7
    ld [bc], a                                    ; $62af: $02
    sbc [hl]                                      ; $62b0: $9e
    scf                                           ; $62b1: $37
    sbc [hl]                                      ; $62b2: $9e
    ld b, a                                       ; $62b3: $47
    sbc $93                                       ; $62b4: $de $93
    sbc d                                         ; $62b6: $9a
    inc e                                         ; $62b7: $1c
    call z, Call_000_27d3                         ; $62b8: $cc $d3 $27
    xor [hl]                                      ; $62bb: $ae
    ld e, $aa                                     ; $62bc: $1e $aa
    ld hl, sp+$00                                 ; $62be: $f8 $00
    rst $10                                       ; $62c0: $d7
    ld a, a                                       ; $62c1: $7f
    ld hl, $c5ec                                  ; $62c2: $21 $ec $c5
    ld a, [c]                                     ; $62c5: $f2
    add e                                         ; $62c6: $83
    ld b, l                                       ; $62c7: $45
    dec l                                         ; $62c8: $2d
    db $ed                                        ; $62c9: $ed
    ld c, c                                       ; $62ca: $49
    ld c, l                                       ; $62cb: $4d
    ld c, $e6                                     ; $62cc: $0e $e6
    jp hl                                         ; $62ce: $e9


    inc de                                        ; $62cf: $13
    ld d, a                                       ; $62d0: $57
    xor e                                         ; $62d1: $ab
    ld hl, sp+$00                                 ; $62d2: $f8 $00
    rst $10                                       ; $62d4: $d7
    dec sp                                        ; $62d5: $3b
    jp hl                                         ; $62d6: $e9


    inc h                                         ; $62d7: $24
    cpl                                           ; $62d8: $2f
    rst $38                                       ; $62d9: $ff
    ld b, a                                       ; $62da: $47
    ld e, $68                                     ; $62db: $1e $68
    cp $82                                        ; $62dd: $fe $82
    dec a                                         ; $62df: $3d
    xor c                                         ; $62e0: $a9
    ret                                           ; $62e1: $c9


    pop bc                                        ; $62e2: $c1
    inc a                                         ; $62e3: $3c
    ld a, l                                       ; $62e4: $7d
    ld [c], a                                     ; $62e5: $e2
    ld l, d                                       ; $62e6: $6a
    or l                                          ; $62e7: $b5
    or b                                          ; $62e8: $b0
    add d                                         ; $62e9: $82
    ret nc                                        ; $62ea: $d0

    adc h                                         ; $62eb: $8c
    rrca                                          ; $62ec: $0f
    rst $10                                       ; $62ed: $d7
    db $e4                                        ; $62ee: $e4
    jp nz, Jump_04c_4b0a                          ; $62ef: $c2 $0a $4b

    ld h, a                                       ; $62f2: $67
    ld l, l                                       ; $62f3: $6d
    ld l, $ac                                     ; $62f4: $2e $ac
    xor [hl]                                      ; $62f6: $ae
    ldh a, [$ab]                                  ; $62f7: $f0 $ab
    rst $30                                       ; $62f9: $f7
    and h                                         ; $62fa: $a4
    ld h, $07                                     ; $62fb: $26 $07

jr_04c_62fd:
    di                                            ; $62fd: $f3
    db $f4                                        ; $62fe: $f4
    adc c                                         ; $62ff: $89
    xor e                                         ; $6300: $ab
    ld d, l                                       ; $6301: $55
    ld a, h                                       ; $6302: $7c
    nop                                           ; $6303: $00
    cpl                                           ; $6304: $2f
    cp $4c                                        ; $6305: $fe $4c
    sub h                                         ; $6307: $94
    ld c, d                                       ; $6308: $4a
    ld a, [de]                                    ; $6309: $1a
    inc d                                         ; $630a: $14
    rst $28                                       ; $630b: $ef
    xor d                                         ; $630c: $aa
    pop af                                        ; $630d: $f1
    ld d, b                                       ; $630e: $50
    xor l                                         ; $630f: $ad
    or h                                          ; $6310: $b4
    ld d, e                                       ; $6311: $53
    ld c, e                                       ; $6312: $4b
    ld l, e                                       ; $6313: $6b
    ld [hl], e                                    ; $6314: $73
    ld de, $2fa6                                  ; $6315: $11 $a6 $2f
    push bc                                       ; $6318: $c5
    rlca                                          ; $6319: $07
    ld c, a                                       ; $631a: $4f
    ld l, d                                       ; $631b: $6a
    push de                                       ; $631c: $d5
    jr z, jr_04c_62fd                             ; $631d: $28 $de

    ld d, l                                       ; $631f: $55
    db $e3                                        ; $6320: $e3
    and c                                         ; $6321: $a1
    ld e, d                                       ; $6322: $5a
    sbc e                                         ; $6323: $9b
    inc bc                                        ; $6324: $03
    sub l                                         ; $6325: $95
    or d                                          ; $6326: $b2
    ld c, e                                       ; $6327: $4b
    or e                                          ; $6328: $b3
    jr z, @+$40                                   ; $6329: $28 $3e

    nop                                           ; $632b: $00
    rst $10                                       ; $632c: $d7
    ld a, a                                       ; $632d: $7f
    ld hl, $c5ec                                  ; $632e: $21 $ec $c5
    ld a, [c]                                     ; $6331: $f2
    add e                                         ; $6332: $83
    ld b, l                                       ; $6333: $45

jr_04c_6334:
    dec l                                         ; $6334: $2d
    db $ed                                        ; $6335: $ed
    ld c, c                                       ; $6336: $49
    xor l                                         ; $6337: $ad
    ld a, [de]                                    ; $6338: $1a
    push bc                                       ; $6339: $c5
    rlca                                          ; $633a: $07

Jump_04c_633b:
    rst $10                                       ; $633b: $d7
    dec sp                                        ; $633c: $3b
    jp hl                                         ; $633d: $e9


    inc h                                         ; $633e: $24
    cpl                                           ; $633f: $2f
    rst $38                                       ; $6340: $ff
    ld b, a                                       ; $6341: $47
    ld e, $68                                     ; $6342: $1e $68
    cp $82                                        ; $6344: $fe $82
    dec a                                         ; $6346: $3d
    xor c                                         ; $6347: $a9
    ld d, l                                       ; $6348: $55
    and e                                         ; $6349: $a3
    add l                                         ; $634a: $85
    dec d                                         ; $634b: $15
    add h                                         ; $634c: $84
    ld h, [hl]                                    ; $634d: $66
    ld a, h                                       ; $634e: $7c
    nop                                           ; $634f: $00
    rst $10                                       ; $6350: $d7
    db $e4                                        ; $6351: $e4
    jp nz, Jump_04c_4b0a                          ; $6352: $c2 $0a $4b

    ld h, a                                       ; $6355: $67
    ld l, l                                       ; $6356: $6d
    ld l, $ac                                     ; $6357: $2e $ac
    xor [hl]                                      ; $6359: $ae
    ldh a, [$ab]                                  ; $635a: $f0 $ab
    rst $30                                       ; $635c: $f7
    and h                                         ; $635d: $a4
    ld d, [hl]                                    ; $635e: $56
    adc l                                         ; $635f: $8d
    ld [c], a                                     ; $6360: $e2
    inc bc                                        ; $6361: $03
    ld d, a                                       ; $6362: $57
    dec e                                         ; $6363: $1d
    or l                                          ; $6364: $b5
    ld [hl], h                                    ; $6365: $74
    ld d, $56                                     ; $6366: $16 $56
    jr jr_04c_6334                                ; $6368: $18 $ca

    dec a                                         ; $636a: $3d
    add hl, hl                                    ; $636b: $29
    ld [de], a                                    ; $636c: $12
    ld a, l                                       ; $636d: $7d
    adc a                                         ; $636e: $8f
    ld a, [$89f4]                                 ; $636f: $fa $f4 $89
    xor e                                         ; $6372: $ab
    db $e3                                        ; $6373: $e3
    inc bc                                        ; $6374: $03
    rst $10                                       ; $6375: $d7
    dec sp                                        ; $6376: $3b
    jp hl                                         ; $6377: $e9


    inc h                                         ; $6378: $24
    cpl                                           ; $6379: $2f
    rst $38                                       ; $637a: $ff
    ld b, a                                       ; $637b: $47
    ld e, $68                                     ; $637c: $1e $68
    cp $82                                        ; $637e: $fe $82
    dec a                                         ; $6380: $3d
    add hl, hl                                    ; $6381: $29
    ld [de], a                                    ; $6382: $12
    ld a, l                                       ; $6383: $7d
    adc a                                         ; $6384: $8f
    ld a, [$89f4]                                 ; $6385: $fa $f4 $89
    xor e                                         ; $6388: $ab
    push de                                       ; $6389: $d5
    jp nz, Jump_04c_420a                          ; $638a: $c2 $0a $42

    inc sp                                        ; $638d: $33
    ld a, $00                                     ; $638e: $3e $00
    rst $10                                       ; $6390: $d7
    db $e4                                        ; $6391: $e4
    jp nz, Jump_04c_4b0a                          ; $6392: $c2 $0a $4b

    ld h, a                                       ; $6395: $67
    ld l, l                                       ; $6396: $6d
    ld l, $ac                                     ; $6397: $2e $ac
    xor [hl]                                      ; $6399: $ae
    ldh a, [$ab]                                  ; $639a: $f0 $ab
    rst $30                                       ; $639c: $f7
    and h                                         ; $639d: $a4
    ld c, b                                       ; $639e: $48
    db $f4                                        ; $639f: $f4
    dec a                                         ; $63a0: $3d
    ld [$27d3], a                                 ; $63a1: $ea $d3 $27
    xor [hl]                                      ; $63a4: $ae
    ld d, [hl]                                    ; $63a5: $56
    pop af                                        ; $63a6: $f1
    ld bc, $e4d7                                  ; $63a7: $01 $d7 $e4
    add h                                         ; $63aa: $84
    and $04                                       ; $63ab: $e6 $04
    adc l                                         ; $63ad: $8d
    pop bc                                        ; $63ae: $c1
    cp h                                          ; $63af: $bc
    pop af                                        ; $63b0: $f1
    ld d, b                                       ; $63b1: $50
    ld l, $9d                                     ; $63b2: $2e $9d
    add hl, hl                                    ; $63b4: $29
    ld l, l                                       ; $63b5: $6d
    add hl, bc                                    ; $63b6: $09
    sbc d                                         ; $63b7: $9a
    ld l, h                                       ; $63b8: $6c
    jp hl                                         ; $63b9: $e9


    sbc e                                         ; $63ba: $9b
    dec bc                                        ; $63bb: $0b
    dec hl                                        ; $63bc: $2b
    ld e, h                                       ; $63bd: $5c
    inc l                                         ; $63be: $2c
    ld [hl-], a                                   ; $63bf: $32
    and e                                         ; $63c0: $a3
    and c                                         ; $63c1: $a1
    ld e, h                                       ; $63c2: $5c
    ld e, b                                       ; $63c3: $58

jr_04c_63c4:
    ld h, c                                       ; $63c4: $61
    and a                                         ; $63c5: $a7
    ld [$f545], a                                 ; $63c6: $ea $45 $f5
    push de                                       ; $63c9: $d5
    jr jr_04c_63c4                                ; $63ca: $18 $f8

    and $a2                                       ; $63cc: $e6 $a2
    ld a, [c]                                     ; $63ce: $f2
    ld a, h                                       ; $63cf: $7c
    and a                                         ; $63d0: $a7
    or h                                          ; $63d1: $b4
    dec h                                         ; $63d2: $25
    adc b                                         ; $63d3: $88
    rrca                                          ; $63d4: $0f
    rst $10                                       ; $63d5: $d7
    ld a, a                                       ; $63d6: $7f
    ld hl, $c5ec                                  ; $63d7: $21 $ec $c5
    ld a, [c]                                     ; $63da: $f2
    add e                                         ; $63db: $83
    ld b, l                                       ; $63dc: $45
    dec l                                         ; $63dd: $2d
    ld c, l                                       ; $63de: $4d
    ld l, c                                       ; $63df: $69
    ld c, e                                       ; $63e0: $4b
    ret nc                                        ; $63e1: $d0

    ld h, h                                       ; $63e2: $64
    ld c, e                                       ; $63e3: $4b
    rst $18                                       ; $63e4: $df
    adc h                                         ; $63e5: $8c
    rrca                                          ; $63e6: $0f
    rst $10                                       ; $63e7: $d7
    dec sp                                        ; $63e8: $3b
    jp hl                                         ; $63e9: $e9


    inc h                                         ; $63ea: $24
    cpl                                           ; $63eb: $2f
    rst $38                                       ; $63ec: $ff
    ld b, a                                       ; $63ed: $47
    ld e, $68                                     ; $63ee: $1e $68
    cp $82                                        ; $63f0: $fe $82
    add hl, hl                                    ; $63f2: $29
    ld l, l                                       ; $63f3: $6d
    add hl, bc                                    ; $63f4: $09
    sbc d                                         ; $63f5: $9a
    ld l, h                                       ; $63f6: $6c
    jp hl                                         ; $63f7: $e9


    sbc e                                         ; $63f8: $9b
    dec bc                                        ; $63f9: $0b
    dec hl                                        ; $63fa: $2b
    ld [$38cd], sp                                ; $63fb: $08 $cd $38
    adc [hl]                                      ; $63fe: $8e
    rst $00                                       ; $63ff: $c7
    call Call_000_0633                            ; $6400: $cd $33 $06
    di                                            ; $6403: $f3
    sbc l                                         ; $6404: $9d
    jp nc, $a096                                  ; $6405: $d2 $96 $a0

    cp c                                          ; $6408: $b9
    jp nc, $83f2                                  ; $6409: $d2 $f2 $83

    sbc c                                         ; $640c: $99
    push hl                                       ; $640d: $e5
    ld e, h                                       ; $640e: $5c
    ld d, e                                       ; $640f: $53
    cp h                                          ; $6410: $bc
    inc sp                                        ; $6411: $33
    ld [hl-], a                                   ; $6412: $32
    scf                                           ; $6413: $37

Call_04c_6414:
    db $e3                                        ; $6414: $e3
    inc bc                                        ; $6415: $03
    rst $10                                       ; $6416: $d7
    db $e4                                        ; $6417: $e4
    jp nz, Jump_04c_4b0a                          ; $6418: $c2 $0a $4b

    ld h, a                                       ; $641b: $67

Jump_04c_641c:
    ld l, l                                       ; $641c: $6d
    ld l, $ac                                     ; $641d: $2e $ac
    xor [hl]                                      ; $641f: $ae
    ldh a, [$ab]                                  ; $6420: $f0 $ab
    and a                                         ; $6422: $a7
    or h                                          ; $6423: $b4
    dec h                                         ; $6424: $25
    ld l, b                                       ; $6425: $68
    or d                                          ; $6426: $b2
    and l                                         ; $6427: $a5
    ld l, a                                       ; $6428: $6f
    add $07                                       ; $6429: $c6 $07
    sub a                                         ; $642b: $97
    ld e, b                                       ; $642c: $58
    ld a, [de]                                    ; $642d: $1a
    xor d                                         ; $642e: $aa
    sbc l                                         ; $642f: $9d
    adc h                                         ; $6430: $8c
    daa                                           ; $6431: $27
    db $fc                                        ; $6432: $fc
    rra                                           ; $6433: $1f
    add hl, hl                                    ; $6434: $29
    ld l, l                                       ; $6435: $6d
    add hl, bc                                    ; $6436: $09
    ld b, d                                       ; $6437: $42
    rlca                                          ; $6438: $07
    ld a, l                                       ; $6439: $7d
    ld a, h                                       ; $643a: $7c
    nop                                           ; $643b: $00
    xor a                                         ; $643c: $af
    ld [hl], e                                    ; $643d: $73
    ld h, l                                       ; $643e: $65
    or l                                          ; $643f: $b5
    ld l, e                                       ; $6440: $6b
    inc h                                         ; $6441: $24
    sbc e                                         ; $6442: $9b
    adc d                                         ; $6443: $8a
    dec hl                                        ; $6444: $2b
    xor e                                         ; $6445: $ab
    ld d, l                                       ; $6446: $55
    cp h                                          ; $6447: $bc
    xor e                                         ; $6448: $ab
    ld h, [hl]                                    ; $6449: $66
    inc [hl]                                      ; $644a: $34
    ld l, c                                       ; $644b: $69
    add hl, sp                                    ; $644c: $39
    sub h                                         ; $644d: $94
    adc e                                         ; $644e: $8b
    call z, $4268                                 ; $644f: $cc $68 $42
    cp c                                          ; $6452: $b9
    inc [hl]                                      ; $6453: $34
    rst $30                                       ; $6454: $f7
    ld a, a                                       ; $6455: $7f
    ld a, [hl-]                                   ; $6456: $3a
    inc hl                                        ; $6457: $23
    inc a                                         ; $6458: $3c
    ld h, h                                       ; $6459: $64
    inc b                                         ; $645a: $04
    adc e                                         ; $645b: $8b

Call_04c_645c:
    jp c, Jump_000_319d                           ; $645c: $da $9d $31

    ret z                                         ; $645f: $c8

    ld hl, sp+$00                                 ; $6460: $f8 $00
    rst $10                                       ; $6462: $d7
    db $e4                                        ; $6463: $e4
    ld e, h                                       ; $6464: $5c
    ld [hl-], a                                   ; $6465: $32
    inc bc                                        ; $6466: $03
    adc e                                         ; $6467: $8b
    ld a, [hl-]                                   ; $6468: $3a
    inc de                                        ; $6469: $13
    dec l                                         ; $646a: $2d
    db $fc                                        ; $646b: $fc
    sbc l                                         ; $646c: $9d
    ld b, a                                       ; $646d: $47
    sbc $87                                       ; $646e: $de $87
    di                                            ; $6470: $f3
    add a                                         ; $6471: $87
    inc e                                         ; $6472: $1c
    dec b                                         ; $6473: $05
    db $fd                                        ; $6474: $fd
    ld a, [$42d2]                                 ; $6475: $fa $d2 $42
    inc l                                         ; $6478: $2c
    adc l                                         ; $6479: $8d
    ld c, e                                       ; $647a: $4b
    add l                                         ; $647b: $85
    add a                                         ; $647c: $87
    inc a                                         ; $647d: $3c
    ld d, h                                       ; $647e: $54
    inc bc                                        ; $647f: $03
    sub l                                         ; $6480: $95
    ccf                                           ; $6481: $3f
    ld l, d                                       ; $6482: $6a
    ld e, [hl]                                    ; $6483: $5e
    add hl, sp                                    ; $6484: $39
    nop                                           ; $6485: $00
    rst $08                                       ; $6486: $cf
    rst $10                                       ; $6487: $d7
    dec l                                         ; $6488: $2d
    ld a, l                                       ; $6489: $7d
    ret nc                                        ; $648a: $d0

    adc h                                         ; $648b: $8c
    db $e3                                        ; $648c: $e3
    ld a, b                                       ; $648d: $78
    ld e, $bb                                     ; $648e: $1e $bb
    or b                                          ; $6490: $b0
    jp nz, $ae50                                  ; $6491: $c2 $50 $ae

    dec h                                         ; $6494: $25
    ld e, a                                       ; $6495: $5f
    ld a, [de]                                    ; $6496: $1a
    add sp, $19                                   ; $6497: $e8 $19
    sbc e                                         ; $6499: $9b
    pop af                                        ; $649a: $f1
    ld bc, $7fd7                                  ; $649b: $01 $d7 $7f
    ld hl, $c5ec                                  ; $649e: $21 $ec $c5
    ld a, [c]                                     ; $64a1: $f2
    add e                                         ; $64a2: $83
    ld b, l                                       ; $64a3: $45
    dec l                                         ; $64a4: $2d
    db $ed                                        ; $64a5: $ed
    ld sp, hl                                     ; $64a6: $f9
    cp d                                          ; $64a7: $ba
    and l                                         ; $64a8: $a5
    rrca                                          ; $64a9: $0f
    sbc d                                         ; $64aa: $9a
    pop af                                        ; $64ab: $f1
    ld bc, $3bd7                                  ; $64ac: $01 $d7 $3b
    jp hl                                         ; $64af: $e9


    inc h                                         ; $64b0: $24
    cpl                                           ; $64b1: $2f
    rst $38                                       ; $64b2: $ff
    ld b, a                                       ; $64b3: $47
    ld e, $68                                     ; $64b4: $1e $68
    cp $82                                        ; $64b6: $fe $82
    dec a                                         ; $64b8: $3d
    ld e, a                                       ; $64b9: $5f
    or a                                          ; $64ba: $b7
    db $f4                                        ; $64bb: $f4
    ld b, c                                       ; $64bc: $41
    ld [hl], e                                    ; $64bd: $73
    ld h, c                                       ; $64be: $61
    dec b                                         ; $64bf: $05
    and c                                         ; $64c0: $a1
    add hl, de                                    ; $64c1: $19
    rra                                           ; $64c2: $1f
    rst $10                                       ; $64c3: $d7
    db $e4                                        ; $64c4: $e4
    jp nz, Jump_04c_4b0a                          ; $64c5: $c2 $0a $4b

    ld h, a                                       ; $64c8: $67
    ld l, l                                       ; $64c9: $6d
    ld l, $ac                                     ; $64ca: $2e $ac
    xor [hl]                                      ; $64cc: $ae
    ldh a, [$ab]                                  ; $64cd: $f0 $ab
    rst $30                                       ; $64cf: $f7
    ld a, h                                       ; $64d0: $7c
    db $dd                                        ; $64d1: $dd
    jp nc, $cd07                                  ; $64d2: $d2 $07 $cd

    ld hl, sp+$00                                 ; $64d5: $f8 $00
    rst $10                                       ; $64d7: $d7
    db $e4                                        ; $64d8: $e4
    jp nz, Jump_04c_4b0a                          ; $64d9: $c2 $0a $4b

    ld h, a                                       ; $64dc: $67
    ld l, l                                       ; $64dd: $6d
    ld l, $fc                                     ; $64de: $2e $fc
    sbc a                                         ; $64e0: $9f
    ld [hl], d                                    ; $64e1: $72
    xor [hl]                                      ; $64e2: $ae
    push hl                                       ; $64e3: $e5
    jp c, $9f1c                                   ; $64e4: $da $1c $9f

    jp c, Jump_04c_7ff0                           ; $64e7: $da $f0 $7f

    jp z, $00f8                                   ; $64ea: $ca $f8 $00

    rst $10                                       ; $64ed: $d7
    ld a, a                                       ; $64ee: $7f
    ld hl, $c5ec                                  ; $64ef: $21 $ec $c5
    ld a, [c]                                     ; $64f2: $f2
    add e                                         ; $64f3: $83
    ld b, l                                       ; $64f4: $45
    dec l                                         ; $64f5: $2d
    dec l                                         ; $64f6: $2d
    db $fc                                        ; $64f7: $fc
    sbc a                                         ; $64f8: $9f
    ld d, d                                       ; $64f9: $52
    call $1cb5                                    ; $64fa: $cd $b5 $1c
    sbc a                                         ; $64fd: $9f
    jp c, Jump_04c_7ff0                           ; $64fe: $da $f0 $7f

    ld c, d                                       ; $6501: $4a
    dec d                                         ; $6502: $15
    rra                                           ; $6503: $1f
    rst $10                                       ; $6504: $d7
    dec sp                                        ; $6505: $3b
    jp hl                                         ; $6506: $e9


    inc h                                         ; $6507: $24
    cpl                                           ; $6508: $2f
    rst $38                                       ; $6509: $ff
    ld b, a                                       ; $650a: $47
    ld e, $68                                     ; $650b: $1e $68
    cp $82                                        ; $650d: $fe $82
    add l                                         ; $650f: $85
    rst $38                                       ; $6510: $ff
    ld d, e                                       ; $6511: $53
    xor d                                         ; $6512: $aa
    cp c                                          ; $6513: $b9
    sub [hl]                                      ; $6514: $96
    db $e3                                        ; $6515: $e3
    ld d, e                                       ; $6516: $53
    dec de                                        ; $6517: $1b
    cp $4f                                        ; $6518: $fe $4f
    xor c                                         ; $651a: $a9
    ld d, $56                                     ; $651b: $16 $56
    db $10                                        ; $651d: $10
    sbc d                                         ; $651e: $9a
    pop af                                        ; $651f: $f1
    ld bc, $e4d7                                  ; $6520: $01 $d7 $e4
    jp nz, Jump_04c_4b0a                          ; $6523: $c2 $0a $4b

    ld h, a                                       ; $6526: $67
    ld l, l                                       ; $6527: $6d
    ld l, $ac                                     ; $6528: $2e $ac
    xor [hl]                                      ; $652a: $ae
    ldh a, [$ab]                                  ; $652b: $f0 $ab
    rla                                           ; $652d: $17
    cp $4f                                        ; $652e: $fe $4f
    xor c                                         ; $6530: $a9
    and $5a                                       ; $6531: $e6 $5a
    adc [hl]                                      ; $6533: $8e
    ld c, a                                       ; $6534: $4f
    ld l, l                                       ; $6535: $6d
    ld hl, sp+$3f                                 ; $6536: $f8 $3f
    and l                                         ; $6538: $a5
    adc d                                         ; $6539: $8a
    rrca                                          ; $653a: $0f
    ld c, a                                       ; $653b: $4f
    push af                                       ; $653c: $f5
    db $fc                                        ; $653d: $fc
    adc l                                         ; $653e: $8d
    xor $52                                       ; $653f: $ee $52
    call c, Call_000_1c66                         ; $6541: $dc $66 $1c
    rst $00                                       ; $6544: $c7
    ld a, e                                       ; $6545: $7b
    dec a                                         ; $6546: $3d
    ld e, e                                       ; $6547: $5b
    ld l, b                                       ; $6548: $68
    rst $20                                       ; $6549: $e7
    ld [c], a                                     ; $654a: $e2
    cp h                                          ; $654b: $bc
    pop af                                        ; $654c: $f1
    inc a                                         ; $654d: $3c
    ld a, [c]                                     ; $654e: $f2
    ld c, [hl]                                    ; $654f: $4e
    sbc a                                         ; $6550: $9f
    inc a                                         ; $6551: $3c
    rrca                                          ; $6552: $0f
    ld d, h                                       ; $6553: $54
    jr nz, jr_04c_655d                            ; $6554: $20 $07

    dec h                                         ; $6556: $25
    rst $08                                       ; $6557: $cf
    db $fd                                        ; $6558: $fd
    sbc a                                         ; $6559: $9f
    add $05                                       ; $655a: $c6 $05
    ld c, l                                       ; $655c: $4d

jr_04c_655d:
    add b                                         ; $655d: $80
    and d                                         ; $655e: $a2
    ld hl, sp+$00                                 ; $655f: $f8 $00
    rst $10                                       ; $6561: $d7
    ld a, a                                       ; $6562: $7f
    ld hl, $c5ec                                  ; $6563: $21 $ec $c5
    ld a, [c]                                     ; $6566: $f2
    add e                                         ; $6567: $83
    ld b, l                                       ; $6568: $45
    dec l                                         ; $6569: $2d
    ld c, l                                       ; $656a: $4d
    add sp, -$07                                  ; $656b: $e8 $f9
    dec de                                        ; $656d: $1b
    db $dd                                        ; $656e: $dd
    and l                                         ; $656f: $a5
    cp b                                          ; $6570: $b8
    reti                                          ; $6571: $d9


    adc h                                         ; $6572: $8c
    rrca                                          ; $6573: $0f
    rst $10                                       ; $6574: $d7
    dec sp                                        ; $6575: $3b
    jp hl                                         ; $6576: $e9


    inc h                                         ; $6577: $24
    cpl                                           ; $6578: $2f
    rst $38                                       ; $6579: $ff
    ld b, a                                       ; $657a: $47
    ld e, $68                                     ; $657b: $1e $68
    cp $82                                        ; $657d: $fe $82
    add hl, bc                                    ; $657f: $09
    dec a                                         ; $6580: $3d
    ld a, a                                       ; $6581: $7f
    and e                                         ; $6582: $a3
    cp e                                          ; $6583: $bb
    inc d                                         ; $6584: $14
    scf                                           ; $6585: $37
    sbc e                                         ; $6586: $9b
    dec bc                                        ; $6587: $0b
    dec hl                                        ; $6588: $2b
    ld [$f8cd], sp                                ; $6589: $08 $cd $f8
    nop                                           ; $658c: $00
    rst $10                                       ; $658d: $d7
    db $e4                                        ; $658e: $e4
    jp nz, Jump_04c_4b0a                          ; $658f: $c2 $0a $4b

    ld h, a                                       ; $6592: $67
    ld l, l                                       ; $6593: $6d
    ld l, $ac                                     ; $6594: $2e $ac
    xor [hl]                                      ; $6596: $ae
    ldh a, [$ab]                                  ; $6597: $f0 $ab
    daa                                           ; $6599: $27
    db $f4                                        ; $659a: $f4
    db $fc                                        ; $659b: $fc
    adc l                                         ; $659c: $8d
    xor $52                                       ; $659d: $ee $52
    call c, $c66c                                 ; $659f: $dc $6c $c6
    rlca                                          ; $65a2: $07
    rst $08                                       ; $65a3: $cf
    inc [hl]                                      ; $65a4: $34
    ld [hl], a                                    ; $65a5: $77
    ld b, [hl]                                    ; $65a6: $46
    db $ed                                        ; $65a7: $ed
    sub [hl]                                      ; $65a8: $96
    sbc d                                         ; $65a9: $9a
    dec bc                                        ; $65aa: $0b
    rst $38                                       ; $65ab: $ff
    and a                                         ; $65ac: $a7
    sbc h                                         ; $65ad: $9c
    ld l, e                                       ; $65ae: $6b
    cp c                                          ; $65af: $b9
    ld [hl], $d7                                  ; $65b0: $36 $d7
    ld h, [hl]                                    ; $65b2: $66
    ld hl, sp+$3f                                 ; $65b3: $f8 $3f
    and l                                         ; $65b5: $a5
    ld hl, sp+$5d                                 ; $65b6: $f8 $5d
    sub e                                         ; $65b8: $93
    dec sp                                        ; $65b9: $3b
    push de                                       ; $65ba: $d5
    rst $08                                       ; $65bb: $cf
    dec de                                        ; $65bc: $1b
    rst $08                                       ; $65bd: $cf
    ld h, e                                       ; $65be: $63
    rla                                           ; $65bf: $17
    or [hl]                                       ; $65c0: $b6
    ld a, d                                       ; $65c1: $7a
    ld l, [hl]                                    ; $65c2: $6e
    xor e                                         ; $65c3: $ab
    ld [hl], a                                    ; $65c4: $77
    ld [hl-], a                                   ; $65c5: $32
    inc hl                                        ; $65c6: $23
    ccf                                           ; $65c7: $3f
    ld d, h                                       ; $65c8: $54
    ld [c], a                                     ; $65c9: $e2
    rrca                                          ; $65ca: $0f
    rst $10                                       ; $65cb: $d7
    ld a, a                                       ; $65cc: $7f
    ld hl, $c5ec                                  ; $65cd: $21 $ec $c5
    ld a, [c]                                     ; $65d0: $f2
    add e                                         ; $65d1: $83
    ld b, l                                       ; $65d2: $45
    dec l                                         ; $65d3: $2d
    db $ed                                        ; $65d4: $ed
    adc h                                         ; $65d5: $8c
    jp c, Jump_000_352d                           ; $65d6: $da $2d $35

    rla                                           ; $65d9: $17
    cp $4f                                        ; $65da: $fe $4f
    xor c                                         ; $65dc: $a9
    and $5a                                       ; $65dd: $e6 $5a
    xor [hl]                                      ; $65df: $ae
    call Call_04c_7ff0                            ; $65e0: $cd $f0 $7f
    ld c, d                                       ; $65e3: $4a
    dec d                                         ; $65e4: $15
    rra                                           ; $65e5: $1f
    rst $10                                       ; $65e6: $d7
    dec sp                                        ; $65e7: $3b
    jp hl                                         ; $65e8: $e9


    inc h                                         ; $65e9: $24
    cpl                                           ; $65ea: $2f
    rst $38                                       ; $65eb: $ff
    ld b, a                                       ; $65ec: $47
    ld e, $68                                     ; $65ed: $1e $68
    cp $82                                        ; $65ef: $fe $82
    sbc l                                         ; $65f1: $9d
    ld d, c                                       ; $65f2: $51
    cp e                                          ; $65f3: $bb
    and l                                         ; $65f4: $a5
    and $c2                                       ; $65f5: $e6 $c2
    rst $38                                       ; $65f7: $ff
    add hl, hl                                    ; $65f8: $29
    push de                                       ; $65f9: $d5
    ld e, h                                       ; $65fa: $5c
    res 6, l                                      ; $65fb: $cb $b5
    add hl, de                                    ; $65fd: $19
    cp $4f                                        ; $65fe: $fe $4f
    xor c                                         ; $6600: $a9
    ld d, $56                                     ; $6601: $16 $56
    db $10                                        ; $6603: $10
    sbc d                                         ; $6604: $9a

Call_04c_6605:
    pop af                                        ; $6605: $f1
    ld bc, $e4d7                                  ; $6606: $01 $d7 $e4
    jp nz, Jump_04c_4b0a                          ; $6609: $c2 $0a $4b

    ld h, a                                       ; $660c: $67
    ld l, l                                       ; $660d: $6d
    ld l, $ac                                     ; $660e: $2e $ac
    xor [hl]                                      ; $6610: $ae
    ldh a, [$ab]                                  ; $6611: $f0 $ab
    ld [hl], a                                    ; $6613: $77
    ld b, [hl]                                    ; $6614: $46
    db $ed                                        ; $6615: $ed
    sub [hl]                                      ; $6616: $96
    sbc d                                         ; $6617: $9a
    dec bc                                        ; $6618: $0b
    rst $38                                       ; $6619: $ff
    and a                                         ; $661a: $a7
    ld d, h                                       ; $661b: $54
    ld [hl], e                                    ; $661c: $73
    dec l                                         ; $661d: $2d
    rst $10                                       ; $661e: $d7
    ld h, [hl]                                    ; $661f: $66
    ld hl, sp+$3f                                 ; $6620: $f8 $3f
    and l                                         ; $6622: $a5
    adc d                                         ; $6623: $8a
    rrca                                          ; $6624: $0f
    xor a                                         ; $6625: $af
    jp $2c43                                      ; $6626: $c3 $43 $2c


    rst $28                                       ; $6629: $ef
    ld b, e                                       ; $662a: $43
    ld l, e                                       ; $662b: $6b
    xor $fc                                       ; $662c: $ee $fc
    dec hl                                        ; $662e: $2b
    rla                                           ; $662f: $17
    ld [hl], h                                    ; $6630: $74
    ld l, h                                       ; $6631: $6c
    and d                                         ; $6632: $a2
    ld [$5d8b], a                                 ; $6633: $ea $8b $5d
    ld a, [de]                                    ; $6636: $1a
    sub c                                         ; $6637: $91
    sbc b                                         ; $6638: $98
    ld hl, sp+$00                                 ; $6639: $f8 $00
    rst $10                                       ; $663b: $d7
    dec sp                                        ; $663c: $3b
    rst $38                                       ; $663d: $ff
    rrc e                                         ; $663e: $cb $0b
    rl e                                          ; $6640: $cb $13
    jp z, Jump_04c_79a5                           ; $6642: $ca $a5 $79

    rlc l                                         ; $6645: $cb $05
    ld e, l                                       ; $6647: $5d
    ret                                           ; $6648: $c9


    ld b, c                                       ; $6649: $41
    sbc $19                                       ; $664a: $de $19
    rl a                                          ; $664c: $cb $17
    ld a, e                                       ; $664e: $7b
    push hl                                       ; $664f: $e5
    inc sp                                        ; $6650: $33
    sub a                                         ; $6651: $97
    ld [c], a                                     ; $6652: $e2
    cp l                                          ; $6653: $bd
    inc e                                         ; $6654: $1c
    dec l                                         ; $6655: $2d
    add sp, -$48                                  ; $6656: $e8 $b8
    db $d3                                        ; $6658: $d3
    add $cd                                       ; $6659: $c6 $cd
    sbc l                                         ; $665b: $9d
    or c                                          ; $665c: $b1
    add hl, sp                                    ; $665d: $39
    ld l, a                                       ; $665e: $6f
    inc a                                         ; $665f: $3c
    sub h                                         ; $6660: $94
    dec bc                                        ; $6661: $0b
    cp d                                          ; $6662: $ba
    ld b, h                                       ; $6663: $44
    xor c                                         ; $6664: $a9
    ld h, $4f                                     ; $6665: $26 $4f
    and [hl]                                      ; $6667: $a6
    ld sp, $cb90                                  ; $6668: $31 $90 $cb
    ld [hl], $ba                                  ; $666b: $36 $ba
    jr jr_04c_66d7                                ; $666d: $18 $68

    ld b, l                                       ; $666f: $45
    ld b, e                                       ; $6670: $43
    cp c                                          ; $6671: $b9
    and b                                         ; $6672: $a0
    ld l, e                                       ; $6673: $6b
    ld [hl], e                                    ; $6674: $73
    jp nc, Jump_000_188c                          ; $6675: $d2 $8c $18

    cp $23                                        ; $6678: $fe $23
    ld bc, $18d3                                  ; $667a: $01 $d3 $18
    dec sp                                        ; $667d: $3b
    rst $30                                       ; $667e: $f7
    ld a, a                                       ; $667f: $7f
    ld e, d                                       ; $6680: $5a
    ret nc                                        ; $6681: $d0

    dec a                                         ; $6682: $3d
    ei                                            ; $6683: $fb
    dec [hl]                                      ; $6684: $35
    cp $bd                                        ; $6685: $fe $bd
    ld b, c                                       ; $6687: $41
    ld [$8469], sp                                ; $6688: $08 $69 $84
    dec sp                                        ; $668b: $3b
    ld a, [hl+]                                   ; $668c: $2a
    sbc $73                                       ; $668d: $de $73
    dec d                                         ; $668f: $15
    ret z                                         ; $6690: $c8

    ld b, c                                       ; $6691: $41
    add hl, sp                                    ; $6692: $39
    adc a                                         ; $6693: $8f
    sbc l                                         ; $6694: $9d
    ld l, c                                       ; $6695: $69
    or l                                          ; $6696: $b5
    and b                                         ; $6697: $a0
    jp $a01c                                      ; $6698: $c3 $1c $a0


    rst $38                                       ; $669b: $ff
    ld a, c                                       ; $669c: $79
    and b                                         ; $669d: $a0
    xor [hl]                                      ; $669e: $ae
    add hl, de                                    ; $669f: $19
    call $c92d                                    ; $66a0: $cd $2d $c9
    sub [hl]                                      ; $66a3: $96
    jr c, jr_04c_66e4                             ; $66a4: $38 $3e

    nop                                           ; $66a6: $00
    rst $10                                       ; $66a7: $d7
    db $e4                                        ; $66a8: $e4
    cp h                                          ; $66a9: $bc
    pop bc                                        ; $66aa: $c1
    ld b, e                                       ; $66ab: $43
    sbc [hl]                                      ; $66ac: $9e
    scf                                           ; $66ad: $37
    ld e, [hl]                                    ; $66ae: $5e

jr_04c_66af:
    ret nc                                        ; $66af: $d0

    add hl, bc                                    ; $66b0: $09
    push hl                                       ; $66b1: $e5
    jp nc, $a64e                                  ; $66b2: $d2 $4e $a6

    add [hl]                                      ; $66b5: $86
    add hl, sp                                    ; $66b6: $39
    cp $6e                                        ; $66b7: $fe $6e
    ld c, c                                       ; $66b9: $49
    ld b, c                                       ; $66ba: $41
    ld d, h                                       ; $66bb: $54
    ld b, a                                       ; $66bc: $47
    ld [hl], $2f                                  ; $66bd: $36 $2f
    or $ca                                        ; $66bf: $f6 $ca
    ld h, a                                       ; $66c1: $67
    ld l, $c5                                     ; $66c2: $2e $c5
    cp e                                          ; $66c4: $bb
    sbc $9d                                       ; $66c5: $de $9d
    ld c, a                                       ; $66c7: $4f
    ld h, $c3                                     ; $66c8: $26 $c3
    and d                                         ; $66ca: $a2
    rst $18                                       ; $66cb: $df
    xor c                                         ; $66cc: $a9
    sub d                                         ; $66cd: $92
    rla                                           ; $66ce: $17
    ld h, c                                       ; $66cf: $61
    sub b                                         ; $66d0: $90
    adc e                                         ; $66d1: $8b
    ld [$31ab], a                                 ; $66d2: $ea $ab $31
    ldh a, [$cd]                                  ; $66d5: $f0 $cd

jr_04c_66d7:
    ld a, l                                       ; $66d7: $7d
    jr z, @-$20                                   ; $66d8: $28 $de

    dec h                                         ; $66da: $25
    sub [hl]                                      ; $66db: $96
    add [hl]                                      ; $66dc: $86
    ld l, d                                       ; $66dd: $6a
    ld l, l                                       ; $66de: $6d
    ld c, [hl]                                    ; $66df: $4e
    sbc d                                         ; $66e0: $9a
    ld de, $7fc3                                  ; $66e1: $11 $c3 $7f

jr_04c_66e4:
    inc h                                         ; $66e4: $24

jr_04c_66e5:
    ld h, b                                       ; $66e5: $60
    ld a, [de]                                    ; $66e6: $1a
    ld h, e                                       ; $66e7: $63
    rst $20                                       ; $66e8: $e7
    cp $4f                                        ; $66e9: $fe $4f
    dec bc                                        ; $66eb: $0b
    cp d                                          ; $66ec: $ba
    ld h, a                                       ; $66ed: $67
    cp a                                          ; $66ee: $bf
    add $bf                                       ; $66ef: $c6 $bf
    scf                                           ; $66f1: $37
    ld [$8d21], sp                                ; $66f2: $08 $21 $8d
    ld [hl], b                                    ; $66f5: $70
    ld b, a                                       ; $66f6: $47
    push bc                                       ; $66f7: $c5
    ld a, e                                       ; $66f8: $7b
    xor [hl]                                      ; $66f9: $ae
    ld [bc], a                                    ; $66fa: $02
    add hl, sp                                    ; $66fb: $39
    jr z, jr_04c_66e5                             ; $66fc: $28 $e7

    or c                                          ; $66fe: $b1
    inc sp                                        ; $66ff: $33
    xor l                                         ; $6700: $ad
    ld d, $74                                     ; $6701: $16 $74
    sbc b                                         ; $6703: $98
    inc bc                                        ; $6704: $03
    db $f4                                        ; $6705: $f4
    ccf                                           ; $6706: $3f
    rrca                                          ; $6707: $0f
    call nc, $a335                                ; $6708: $d4 $35 $a3
    cp c                                          ; $670b: $b9
    dec h                                         ; $670c: $25
    reti                                          ; $670d: $d9


    ld [de], a                                    ; $670e: $12
    rst $00                                       ; $670f: $c7
    rlca                                          ; $6710: $07
    sub a                                         ; $6711: $97
    ld e, b                                       ; $6712: $58
    ld a, [de]                                    ; $6713: $1a
    xor d                                         ; $6714: $aa
    dec b                                         ; $6715: $05
    ld e, l                                       ; $6716: $5d
    ld h, d                                       ; $6717: $62
    sbc l                                         ; $6718: $9d
    ld d, e                                       ; $6719: $53
    daa                                           ; $671a: $27
    call $e188                                    ; $671b: $cd $88 $e1
    ccf                                           ; $671e: $3f
    ld [de], a                                    ; $671f: $12
    jr nc, jr_04c_66af                            ; $6720: $30 $8d

    or c                                          ; $6722: $b1
    rla                                           ; $6723: $17
    cp e                                          ; $6724: $bb
    inc [hl]                                      ; $6725: $34
    ld [hl+], a                                   ; $6726: $22
    ld sp, $01f1                                  ; $6727: $31 $f1 $01
    sub a                                         ; $672a: $97
    ld e, b                                       ; $672b: $58
    ld a, [de]                                    ; $672c: $1a
    xor d                                         ; $672d: $aa
    or l                                          ; $672e: $b5
    cp c                                          ; $672f: $b9
    call nz, $a73a                                ; $6730: $c4 $3a $a7
    ld c, [hl]                                    ; $6733: $4e
    sbc d                                         ; $6734: $9a
    ld de, $7fc3                                  ; $6735: $11 $c3 $7f
    inc h                                         ; $6738: $24
    ld h, b                                       ; $6739: $60
    ld a, [de]                                    ; $673a: $1a
    ld h, e                                       ; $673b: $63
    cpl                                           ; $673c: $2f
    and $96                                       ; $673d: $e6 $96
    call nc, $cb5c                                ; $673f: $d4 $5c $cb
    ld sp, hl                                     ; $6742: $f9
    ld c, [hl]                                    ; $6743: $4e
    sbc e                                         ; $6744: $9b
    or c                                          ; $6745: $b1
    ld [c], a                                     ; $6746: $e2

jr_04c_6747:
    adc $41                                       ; $6747: $ce $41
    dec e                                         ; $6749: $1d
    rra                                           ; $674a: $1f
    rst $08                                       ; $674b: $cf
    inc [hl]                                      ; $674c: $34
    rlca                                          ; $674d: $07
    db $f4                                        ; $674e: $f4
    xor a                                         ; $674f: $af
    ld c, a                                       ; $6750: $4f
    xor h                                         ; $6751: $ac
    ld [hl], e                                    ; $6752: $73
    ld [$19a4], a                                 ; $6753: $ea $a4 $19
    ld sp, $47fc                                  ; $6756: $31 $fc $47
    ld [bc], a                                    ; $6759: $02
    and [hl]                                      ; $675a: $a6
    ld sp, $62f6                                  ; $675b: $31 $f6 $62
    sub a                                         ; $675e: $97
    ld b, [hl]                                    ; $675f: $46
    inc h                                         ; $6760: $24
    ld h, $de                                     ; $6761: $26 $de
    dec [hl]                                      ; $6763: $35
    cp c                                          ; $6764: $b9
    ldh a, [$7f]                                  ; $6765: $f0 $7f
    ld l, b                                       ; $6767: $68
    sbc $78                                       ; $6768: $de $78
    ld h, c                                       ; $676a: $61
    ld a, c                                       ; $676b: $79
    ld l, l                                       ; $676c: $6d
    ld c, $fc                                     ; $676d: $0e $fc
    ld a, [$550e]                                 ; $676f: $fa $0e $55
    ld a, h                                       ; $6772: $7c
    nop                                           ; $6773: $00
    cpl                                           ; $6774: $2f
    sub l                                         ; $6775: $95
    rst $30                                       ; $6776: $f7
    and c                                         ; $6777: $a1
    ld sp, $7e06                                  ; $6778: $31 $06 $7e
    xor $ff                                       ; $677b: $ee $ff
    inc [hl]                                      ; $677d: $34
    rst $18                                       ; $677e: $df
    dec h                                         ; $677f: $25
    sub $39                                       ; $6780: $d6 $39
    ld [hl], l                                    ; $6782: $75
    jp nc, Jump_000_188c                          ; $6783: $d2 $8c $18

    cp $23                                        ; $6786: $fe $23
    ld bc, $18d3                                  ; $6788: $01 $d3 $18
    ld a, e                                       ; $678b: $7b
    or c                                          ; $678c: $b1
    ld c, e                                       ; $678d: $4b
    inc hl                                        ; $678e: $23
    ld [de], a                                    ; $678f: $12
    inc de                                        ; $6790: $13
    rst $28                                       ; $6791: $ef
    sbc d                                         ; $6792: $9a
    ld e, h                                       ; $6793: $5c
    ld hl, sp+$3f                                 ; $6794: $f8 $3f
    inc [hl]                                      ; $6796: $34
    ld l, a                                       ; $6797: $6f
    cp h                                          ; $6798: $bc
    or b                                          ; $6799: $b0
    cp h                                          ; $679a: $bc
    jp nc, $e4da                                  ; $679b: $d2 $da $e4

    and b                                         ; $679e: $a0
    ld b, e                                       ; $679f: $43
    dec [hl]                                      ; $67a0: $35
    adc a                                         ; $67a1: $8f
    ld e, l                                       ; $67a2: $5d
    ret nc                                        ; $67a3: $d0

    ld c, c                                       ; $67a4: $49
    daa                                           ; $67a5: $27
    ld a, c                                       ; $67a6: $79
    and b                                         ; $67a7: $a0
    ld [bc], a                                    ; $67a8: $02
    add hl, sp                                    ; $67a9: $39
    jr z, jr_04c_6747                             ; $67aa: $28 $9b

    pop af                                        ; $67ac: $f1
    ld bc, $5897                                  ; $67ad: $01 $97 $58
    ld a, [de]                                    ; $67b0: $1a
    xor d                                         ; $67b1: $aa
    dec b                                         ; $67b2: $05
    sbc l                                         ; $67b3: $9d
    ei                                            ; $67b4: $fb
    dec [hl]                                      ; $67b5: $35
    ld l, b                                       ; $67b6: $68
    ld a, [$9a4e]                                 ; $67b7: $fa $4e $9a
    ld de, $7fc3                                  ; $67ba: $11 $c3 $7f
    inc h                                         ; $67bd: $24
    ld h, b                                       ; $67be: $60
    ld a, [de]                                    ; $67bf: $1a
    ld h, e                                       ; $67c0: $63
    cpl                                           ; $67c1: $2f
    halt                                          ; $67c2: $76
    ld l, c                                       ; $67c3: $69
    ld b, h                                       ; $67c4: $44
    ld h, d                                       ; $67c5: $62
    ld [c], a                                     ; $67c6: $e2
    ld e, l                                       ; $67c7: $5d
    sub e                                         ; $67c8: $93
    dec bc                                        ; $67c9: $0b
    rst $38                                       ; $67ca: $ff
    add a                                         ; $67cb: $87
    and $8d                                       ; $67cc: $e6 $8d
    rla                                           ; $67ce: $17
    ld [hl], h                                    ; $67cf: $74
    and b                                         ; $67d0: $a0
    call Call_04c_5d29                            ; $67d1: $cd $29 $5d
    ld a, b                                       ; $67d4: $78
    ret z                                         ; $67d5: $c8

    dec e                                         ; $67d6: $1d
    db $fc                                        ; $67d7: $fc
    ld b, a                                       ; $67d8: $47
    ld [bc], a                                    ; $67d9: $02
    and [hl]                                      ; $67da: $a6
    ld sp, $4d56                                  ; $67db: $31 $56 $4d
    ld [de], a                                    ; $67de: $12
    ld b, $80                                     ; $67df: $06 $80
    db $e3                                        ; $67e1: $e3
    inc bc                                        ; $67e2: $03
    rst $10                                       ; $67e3: $d7
    db $e4                                        ; $67e4: $e4
    ld c, [hl]                                    ; $67e5: $4e
    xor b                                         ; $67e6: $a8
    ld a, b                                       ; $67e7: $78
    sbc $78                                       ; $67e8: $de $78
    ld b, c                                       ; $67ea: $41
    ld [hl], a                                    ; $67eb: $77
    cp $ce                                        ; $67ec: $fe $ce
    db $e4                                        ; $67ee: $e4
    adc a                                         ; $67ef: $8f
    sbc d                                         ; $67f0: $9a
    ld [hl], e                                    ; $67f1: $73
    rst $38                                       ; $67f2: $ff
    and a                                         ; $67f3: $a7
    or l                                          ; $67f4: $b5
    cp c                                          ; $67f5: $b9
    call nz, $a73a                                ; $67f6: $c4 $3a $a7
    ld c, [hl]                                    ; $67f9: $4e
    sbc d                                         ; $67fa: $9a
    ld de, $7fc3                                  ; $67fb: $11 $c3 $7f
    inc h                                         ; $67fe: $24
    ld h, b                                       ; $67ff: $60
    ld a, [de]                                    ; $6800: $1a
    ld h, e                                       ; $6801: $63
    cpl                                           ; $6802: $2f
    halt                                          ; $6803: $76
    ld l, c                                       ; $6804: $69
    ld b, h                                       ; $6805: $44
    ld h, d                                       ; $6806: $62
    ld [c], a                                     ; $6807: $e2
    inc bc                                        ; $6808: $03
    sub a                                         ; $6809: $97
    ld h, [hl]                                    ; $680a: $66
    ld a, d                                       ; $680b: $7a
    ld hl, $d696                                  ; $680c: $21 $96 $d6
    and $12                                       ; $680f: $e6 $12
    db $eb                                        ; $6811: $eb
    sbc h                                         ; $6812: $9c
    ld a, [hl-]                                   ; $6813: $3a
    ld l, c                                       ; $6814: $69
    ld b, [hl]                                    ; $6815: $46
    inc c                                         ; $6816: $0c
    rst $38                                       ; $6817: $ff
    sub c                                         ; $6818: $91
    add b                                         ; $6819: $80
    ld l, c                                       ; $681a: $69
    adc h                                         ; $681b: $8c

Call_04c_681c:
    dec d                                         ; $681c: $15
    cp a                                          ; $681d: $bf
    daa                                           ; $681e: $27
    dec [hl]                                      ; $681f: $35
    ld h, e                                       ; $6820: $63
    ldh [$d7], a                                  ; $6821: $e0 $d7
    and $f8                                       ; $6823: $e6 $f8
    ld b, e                                       ; $6825: $43
    ld d, b                                       ; $6826: $50
    ld c, c                                       ; $6827: $49
    db $fc                                        ; $6828: $fc
    ld bc, $6697                                  ; $6829: $01 $97 $66
    ld a, d                                       ; $682c: $7a
    ld hl, $1696                                  ; $682d: $21 $96 $16
    ld [hl], h                                    ; $6830: $74
    adc c                                         ; $6831: $89
    ld [hl], l                                    ; $6832: $75
    ld c, [hl]                                    ; $6833: $4e
    sbc l                                         ; $6834: $9d
    inc [hl]                                      ; $6835: $34
    inc hl                                        ; $6836: $23
    add [hl]                                      ; $6837: $86
    rst $38                                       ; $6838: $ff
    ld c, b                                       ; $6839: $48
    ret nz                                        ; $683a: $c0

    inc [hl]                                      ; $683b: $34
    add $8a                                       ; $683c: $c6 $8a
    rst $18                                       ; $683e: $df
    dec bc                                        ; $683f: $0b
    push hl                                       ; $6840: $e5
    add c                                         ; $6841: $81
    ld e, a                                       ; $6842: $5f
    cp a                                          ; $6843: $bf
    rrca                                          ; $6844: $0f
    adc l                                         ; $6845: $8d
    ld sp, $4df0                                  ; $6846: $31 $f0 $4d
    or l                                          ; $6849: $b5
    or b                                          ; $684a: $b0
    inc a                                         ; $684b: $3c
    dec b                                         ; $684c: $05
    rrca                                          ; $684d: $0f
    dec e                                         ; $684e: $1d
    rst $28                                       ; $684f: $ef
    sbc e                                         ; $6850: $9b
    ld [c], a                                     ; $6851: $e2
    rrca                                          ; $6852: $0f
    rst $10                                       ; $6853: $d7
    db $e4                                        ; $6854: $e4
    jp nz, $a1ff                                  ; $6855: $c2 $ff $a1

    ld a, c                                       ; $6858: $79
    db $e3                                        ; $6859: $e3
    ld sp, hl                                     ; $685a: $f9
    sbc [hl]                                      ; $685b: $9e
    cp e                                          ; $685c: $bb
    call nz, $a73a                                ; $685d: $c4 $3a $a7
    ld c, [hl]                                    ; $6860: $4e
    sbc d                                         ; $6861: $9a
    ld de, $7fc3                                  ; $6862: $11 $c3 $7f
    inc h                                         ; $6865: $24
    ld h, b                                       ; $6866: $60
    ld a, [de]                                    ; $6867: $1a
    ld h, e                                       ; $6868: $63
    daa                                           ; $6869: $27
    ld h, b                                       ; $686a: $60
    or b                                          ; $686b: $b0
    and b                                         ; $686c: $a0
    ld d, e                                       ; $686d: $53
    push hl                                       ; $686e: $e5
    ld b, c                                       ; $686f: $41
    and [hl]                                      ; $6870: $a6
    ld hl, sp+$62                                 ; $6871: $f8 $62
    sub a                                         ; $6873: $97
    ld b, [hl]                                    ; $6874: $46

Call_04c_6875:
    inc h                                         ; $6875: $24
    ld h, $3e                                     ; $6876: $26 $3e
    nop                                           ; $6878: $00
    ld c, a                                       ; $6879: $4f
    ld l, d                                       ; $687a: $6a
    dec [hl]                                      ; $687b: $35
    sub h                                         ; $687c: $94
    ld l, e                                       ; $687d: $6b
    ld [hl], e                                    ; $687e: $73
    ldh [rWX], a                                  ; $687f: $e0 $4b
    ld e, c                                       ; $6881: $59
    jp c, $d4c9                                   ; $6882: $da $c9 $d4

    push bc                                       ; $6885: $c5
    adc $df                                       ; $6886: $ce $df
    add hl, de                                    ; $6888: $19
    jp z, Jump_000_0b9d                           ; $6889: $ca $9d $0b

    ld b, b                                       ; $688c: $40
    ld [hl], e                                    ; $688d: $73
    sbc $78                                       ; $688e: $de $78
    ld e, $79                                     ; $6890: $1e $79
    ld l, l                                       ; $6892: $6d
    ld c, $fc                                     ; $6893: $0e $fc
    ld a, [$9a4e]                                 ; $6895: $fa $4e $9a
    ld de, $7fc3                                  ; $6898: $11 $c3 $7f
    inc h                                         ; $689b: $24
    ld h, b                                       ; $689c: $60
    ld a, [de]                                    ; $689d: $1a
    ld h, e                                       ; $689e: $63
    ld [hl], a                                    ; $689f: $77
    ld [hl-], a                                   ; $68a0: $32
    ld [hl], l                                    ; $68a1: $75
    or c                                          ; $68a2: $b1
    ld c, e                                       ; $68a3: $4b
    inc hl                                        ; $68a4: $23
    ld [de], a                                    ; $68a5: $12
    inc de                                        ; $68a6: $13
    rra                                           ; $68a7: $1f
    ld l, a                                       ; $68a8: $6f
    ld [hl], a                                    ; $68a9: $77
    jp c, $b9b8                                   ; $68aa: $da $b8 $b9

    and b                                         ; $68ad: $a0
    dec sp                                        ; $68ae: $3b
    sub l                                         ; $68af: $95
    sbc e                                         ; $68b0: $9b
    dec sp                                        ; $68b1: $3b
    ld e, c                                       ; $68b2: $59
    ld h, [hl]                                    ; $68b3: $66
    ld c, e                                       ; $68b4: $4b
    dec hl                                        ; $68b5: $2b
    xor l                                         ; $68b6: $ad
    call $d625                                    ; $68b7: $cd $25 $d6
    add hl, sp                                    ; $68ba: $39
    ld [hl], l                                    ; $68bb: $75
    ldh a, [$1f]                                  ; $68bc: $f0 $1f
    add hl, bc                                    ; $68be: $09
    sbc b                                         ; $68bf: $98
    add $d8                                       ; $68c0: $c6 $d8
    and c                                         ; $68c2: $a1
    adc d                                         ; $68c3: $8a
    rrca                                          ; $68c4: $0f
    ld d, a                                       ; $68c5: $57
    sub c                                         ; $68c6: $91
    add a                                         ; $68c7: $87
    ld l, d                                       ; $68c8: $6a
    and [hl]                                      ; $68c9: $a6
    ld [hl], l                                    ; $68ca: $75
    push de                                       ; $68cb: $d5
    ld c, [hl]                                    ; $68cc: $4e
    add $43                                       ; $68cd: $c6 $43
    cp c                                          ; $68cf: $b9
    ld [hl], h                                    ; $68d0: $74
    ld d, $56                                     ; $68d1: $16 $56
    cp b                                          ; $68d3: $b8
    ret c                                         ; $68d4: $d8

    and l                                         ; $68d5: $a5
    ld de, $8989                                  ; $68d6: $11 $89 $89
    rrca                                          ; $68d9: $0f
    rst $10                                       ; $68da: $d7
    db $e4                                        ; $68db: $e4
    jp nz, Jump_04c_4b0a                          ; $68dc: $c2 $0a $4b

    ld h, a                                       ; $68df: $67
    and b                                         ; $68e0: $a0
    call Call_04c_7fc1                            ; $68e1: $cd $c1 $7f
    inc h                                         ; $68e4: $24
    ld h, b                                       ; $68e5: $60
    ld a, [de]                                    ; $68e6: $1a
    ld h, e                                       ; $68e7: $63
    push de                                       ; $68e8: $d5
    and d                                         ; $68e9: $a2
    sub [hl]                                      ; $68ea: $96
    ld l, $76                                     ; $68eb: $2e $76
    ld l, c                                       ; $68ed: $69
    ld b, h                                       ; $68ee: $44
    ld h, d                                       ; $68ef: $62
    ld [c], a                                     ; $68f0: $e2
    inc bc                                        ; $68f1: $03
    xor a                                         ; $68f2: $af
    ret nc                                        ; $68f3: $d0

    rla                                           ; $68f4: $17
    ld e, d                                       ; $68f5: $5a
    ld e, d                                       ; $68f6: $5a

Jump_04c_68f7:
    ld e, b                                       ; $68f7: $58
    sbc [hl]                                      ; $68f8: $9e
    ld [hl], $2e                                  ; $68f9: $36 $2e
    dec l                                         ; $68fb: $2d
    ccf                                           ; $68fc: $3f
    ld e, b                                       ; $68fd: $58
    sbc e                                         ; $68fe: $9b
    ld [$9762], a                                 ; $68ff: $ea $62 $97
    ld b, [hl]                                    ; $6902: $46
    inc h                                         ; $6903: $24
    ld h, $de                                     ; $6904: $26 $de
    inc sp                                        ; $6906: $33
    inc [hl]                                      ; $6907: $34
    ld sp, hl                                     ; $6908: $f9
    and e                                         ; $6909: $a3
    and $14                                       ; $690a: $e6 $14
    or a                                          ; $690c: $b7
    ld e, [hl]                                    ; $690d: $5e
    dec l                                         ; $690e: $2d
    or c                                          ; $690f: $b1
    adc $a9                                       ; $6910: $ce $a9
    add e                                         ; $6912: $83
    rst $38                                       ; $6913: $ff
    ld c, b                                       ; $6914: $48
    ret nz                                        ; $6915: $c0

    inc [hl]                                      ; $6916: $34
    add $aa                                       ; $6917: $c6 $aa
    add hl, bc                                    ; $6919: $09
    sbc b                                         ; $691a: $98
    reti                                          ; $691b: $d9


    adc h                                         ; $691c: $8c
    rrca                                          ; $691d: $0f
    sub a                                         ; $691e: $97
    ld c, a                                       ; $691f: $4f
    cp [hl]                                       ; $6920: $be
    or $da                                        ; $6921: $f6 $da
    cp e                                          ; $6923: $bb
    ld a, e                                       ; $6924: $7b
    push hl                                       ; $6925: $e5
    push hl                                       ; $6926: $e5
    scf                                           ; $6927: $37
    sbc $78                                       ; $6928: $de $78
    and $b5                                       ; $692a: $e6 $b5

Call_04c_692c:
    adc e                                         ; $692c: $8b
    pop bc                                        ; $692d: $c1
    ld b, e                                       ; $692e: $43
    inc hl                                        ; $692f: $23
    add e                                         ; $6930: $83
    ld [hl], e                                    ; $6931: $73
    ld c, c                                       ; $6932: $49
    ld e, l                                       ; $6933: $5d
    inc l                                         ; $6934: $2c
    dec l                                         ; $6935: $2d
    xor d                                         ; $6936: $aa
    sbc d                                         ; $6937: $9a
    and l                                         ; $6938: $a5
    rra                                           ; $6939: $1f
    ld d, l                                       ; $693a: $55
    dec de                                        ; $693b: $1b
    rst $10                                       ; $693c: $d7
    rrca                                          ; $693d: $0f
    db $d3                                        ; $693e: $d3
    inc hl                                        ; $693f: $23
    inc e                                         ; $6940: $1c
    ld l, l                                       ; $6941: $6d
    ld b, [hl]                                    ; $6942: $46
    dec e                                         ; $6943: $1d
    sub e                                         ; $6944: $93
    ld sp, hl                                     ; $6945: $f9
    ld b, [hl]                                    ; $6946: $46
    ld b, [hl]                                    ; $6947: $46
    ld d, d                                       ; $6948: $52
    db $ed                                        ; $6949: $ed
    adc e                                         ; $694a: $8b
    ld h, [hl]                                    ; $694b: $66
    jp hl                                         ; $694c: $e9


    daa                                           ; $694d: $27
    halt                                          ; $694e: $76
    ld l, a                                       ; $694f: $6f
    dec de                                        ; $6950: $1b
    ld h, l                                       ; $6951: $65
    ld l, c                                       ; $6952: $69
    ld c, a                                       ; $6953: $4f
    pop de                                        ; $6954: $d1
    ld d, a                                       ; $6955: $57
    pop af                                        ; $6956: $f1
    ld h, b                                       ; $6957: $60
    call c, $eeae                                 ; $6958: $dc $ae $ee
    cp c                                          ; $695b: $b9
    rst $30                                       ; $695c: $f7
    adc [hl]                                      ; $695d: $8e
    inc bc                                        ; $695e: $03
    rst $10                                       ; $695f: $d7
    cp e                                          ; $6960: $bb
    or b                                          ; $6961: $b0
    ld [bc], a                                    ; $6962: $02
    cpl                                           ; $6963: $2f
    add sp, -$08                                  ; $6964: $e8 $f8
    cp e                                          ; $6966: $bb
    dec h                                         ; $6967: $25
    push bc                                       ; $6968: $c5
    ld h, $1a                                     ; $6969: $26 $1a
    xor b                                         ; $696b: $a8
    and h                                         ; $696c: $a4
    add d                                         ; $696d: $82
    and $c5                                       ; $696e: $e6 $c5
    jp c, $fb9c                                   ; $6970: $da $9c $fb

    ccf                                           ; $6973: $3f
    sbc l                                         ; $6974: $9d
    ld c, d                                       ; $6975: $4a
    ret nc                                        ; $6976: $d0

    cp h                                          ; $6977: $bc
    pop af                                        ; $6978: $f1
    xor d                                         ; $6979: $aa
    ld h, l                                       ; $697a: $65
    rla                                           ; $697b: $17
    ld d, [hl]                                    ; $697c: $56
    xor d                                         ; $697d: $aa
    ld a, l                                       ; $697e: $7d
    pop de                                        ; $697f: $d1
    ld hl, sp-$45                                 ; $6980: $f8 $bb
    ld c, l                                       ; $6982: $4d
    inc sp                                        ; $6983: $33
    sbc d                                         ; $6984: $9a
    add hl, bc                                    ; $6985: $09
    ld [$c76b], a                                 ; $6986: $ea $6b $c7
    pop hl                                        ; $6989: $e1
    push hl                                       ; $698a: $e5
    rst $30                                       ; $698b: $f7
    ld [$b616], sp                                ; $698c: $08 $16 $b6
    ld [hl+], a                                   ; $698f: $22
    ld d, $bf                                     ; $6990: $16 $bf
    db $eb                                        ; $6992: $eb
    sbc l                                         ; $6993: $9d
    ld [hl], h                                    ; $6994: $74
    sub d                                         ; $6995: $92
    sub a                                         ; $6996: $97
    adc $7c                                       ; $6997: $ce $7c
    rst $10                                       ; $6999: $d7
    sub d                                         ; $699a: $92
    ld [c], a                                     ; $699b: $e2

Call_04c_699c:
    adc [hl]                                      ; $699c: $8e
    cp a                                          ; $699d: $bf
    ld e, e                                       ; $699e: $5b
    ld d, d                                       ; $699f: $52
    db $10                                        ; $69a0: $10
    push de                                       ; $69a1: $d5
    sub c                                         ; $69a2: $91
    call $c839                                    ; $69a3: $cd $39 $c8
    xor $2f                                       ; $69a6: $ee $2f
    dec [hl]                                      ; $69a8: $35
    rst $20                                       ; $69a9: $e7
    ld e, d                                       ; $69aa: $5a
    adc $77                                       ; $69ab: $ce $77
    ld l, [hl]                                    ; $69ad: $6e
    ld [hl], l                                    ; $69ae: $75
    rst $20                                       ; $69af: $e7
    or c                                          ; $69b0: $b1
    dec bc                                        ; $69b1: $0b
    cp d                                          ; $69b2: $ba
    or e                                          ; $69b3: $b3
    and e                                         ; $69b4: $a3
    ld a, c                                       ; $69b5: $79
    cp d                                          ; $69b6: $ba
    call nc, $0f8c                                ; $69b7: $d4 $8c $0f
    rst $10                                       ; $69ba: $d7
    dec sp                                        ; $69bb: $3b
    and c                                         ; $69bc: $a1
    ret                                           ; $69bd: $c9


    dec hl                                        ; $69be: $2b
    and [hl]                                      ; $69bf: $a6
    xor a                                         ; $69c0: $af
    add $40                                       ; $69c1: $c6 $40
    ld c, $73                                     ; $69c3: $0e $73
    cp [hl]                                       ; $69c5: $be
    sub e                                         ; $69c6: $93
    jp c, Jump_000_3541                           ; $69c7: $da $41 $35

    rst $10                                       ; $69ca: $d7
    ld [hl], d                                    ; $69cb: $72
    ld b, c                                       ; $69cc: $41
    daa                                           ; $69cd: $27
    or d                                          ; $69ce: $b2
    ld [$5635], sp                                ; $69cf: $08 $35 $56
    db $fc                                        ; $69d2: $fc
    sbc [hl]                                      ; $69d3: $9e
    xor e                                         ; $69d4: $ab
    sbc h                                         ; $69d5: $9c
    scf                                           ; $69d6: $37
    ld e, [hl]                                    ; $69d7: $5e
    ret nc                                        ; $69d8: $d0

    sub l                                         ; $69d9: $95
    sub [hl]                                      ; $69da: $96
    rst $38                                       ; $69db: $ff
    inc hl                                        ; $69dc: $23
    xor a                                         ; $69dd: $af
    dec h                                         ; $69de: $25
    ld e, a                                       ; $69df: $5f
    ld a, [de]                                    ; $69e0: $1a
    sub [hl]                                      ; $69e1: $96
    push de                                       ; $69e2: $d5
    cp [hl]                                       ; $69e3: $be
    ld e, e                                       ; $69e4: $5b
    ld a, [de]                                    ; $69e5: $1a
    ld l, b                                       ; $69e6: $68
    ld hl, sp+$3f                                 ; $69e7: $f8 $3f
    ld sp, hl                                     ; $69e9: $f9
    add l                                         ; $69ea: $85
    and $c5                                       ; $69eb: $e6 $c5
    rra                                           ; $69ed: $1f
    rst $10                                       ; $69ee: $d7
    cp e                                          ; $69ef: $bb
    or b                                          ; $69f0: $b0
    ld [bc], a                                    ; $69f1: $02
    rst $08                                       ; $69f2: $cf
    or h                                          ; $69f3: $b4
    xor $dc                                       ; $69f4: $ee $dc
    rst $38                                       ; $69f6: $ff
    jp hl                                         ; $69f7: $e9


    ld d, h                                       ; $69f8: $54
    add d                                         ; $69f9: $82
    sbc d                                         ; $69fa: $9a
    ld [hl], e                                    ; $69fb: $73
    dec l                                         ; $69fc: $2d
    rla                                           ; $69fd: $17
    ld [hl], h                                    ; $69fe: $74

Call_04c_69ff:
    ld a, [de]                                    ; $69ff: $1a
    inc bc                                        ; $6a00: $03
    push bc                                       ; $6a01: $c5
    inc bc                                        ; $6a02: $03
    sub l                                         ; $6a03: $95
    rra                                           ; $6a04: $1f
    ld e, $b2                                     ; $6a05: $1e $b2
    ld hl, sp+$5d                                 ; $6a07: $f8 $5d
    rst $28                                       ; $6a09: $ef
    and h                                         ; $6a0a: $a4
    sub e                                         ; $6a0b: $93
    cp h                                          ; $6a0c: $bc
    ld [hl], h                                    ; $6a0d: $74
    and $96                                       ; $6a0e: $e6 $96
    sbc b                                         ; $6a10: $98
    ld a, [hl+]                                   ; $6a11: $2a
    ld h, l                                       ; $6a12: $65
    ld [hl], e                                    ; $6a13: $73
    ld l, c                                       ; $6a14: $69
    ld b, [hl]                                    ; $6a15: $46
    ld a, e                                       ; $6a16: $7b
    rst $28                                       ; $6a17: $ef
    ld d, h                                       ; $6a18: $54
    ld c, h                                       ; $6a19: $4c
    push bc                                       ; $6a1a: $c5
    push bc                                       ; $6a1b: $c5
    inc d                                         ; $6a1c: $14
    ld a, a                                       ; $6a1d: $7f
    nop                                           ; $6a1e: $00
    rst $10                                       ; $6a1f: $d7
    cp e                                          ; $6a20: $bb
    or b                                          ; $6a21: $b0
    ld [bc], a                                    ; $6a22: $02
    rst $08                                       ; $6a23: $cf
    ld h, e                                       ; $6a24: $63
    rst $20                                       ; $6a25: $e7
    sub [hl]                                      ; $6a26: $96
    call c, $a6ea                                 ; $6a27: $dc $ea $a6
    rst $28                                       ; $6a2a: $ef
    jp z, Jump_000_125c                           ; $6a2b: $ca $5c $12

    ld c, h                                       ; $6a2e: $4c
    xor $2a                                       ; $6a2f: $ee $2a
    add hl, de                                    ; $6a31: $19
    db $fc                                        ; $6a32: $fc
    cpl                                           ; $6a33: $2f
    ld a, [hl+]                                   ; $6a34: $2a
    adc a                                         ; $6a35: $8f
    cp a                                          ; $6a36: $bf
    ld e, e                                       ; $6a37: $5b
    ld d, d                                       ; $6a38: $52
    db $10                                        ; $6a39: $10
    push de                                       ; $6a3a: $d5
    sub c                                         ; $6a3b: $91
    call Call_000_25b9                            ; $6a3c: $cd $b9 $25

jr_04c_6a3f:
    and l                                         ; $6a3f: $a5
    dec c                                         ; $6a40: $0d
    inc [hl]                                      ; $6a41: $34
    push bc                                       ; $6a42: $c5
    rst $28                                       ; $6a43: $ef
    and l                                         ; $6a44: $a5
    ld a, [c]                                     ; $6a45: $f2
    ret nz                                        ; $6a46: $c0

    xor a                                         ; $6a47: $af
    cp a                                          ; $6a48: $bf
    ret c                                         ; $6a49: $d8

    cp c                                          ; $6a4a: $b9
    or d                                          ; $6a4b: $b2
    or h                                          ; $6a4c: $b4
    rra                                           ; $6a4d: $1f
    ld a, c                                       ; $6a4e: $79
    db $e3                                        ; $6a4f: $e3
    add l                                         ; $6a50: $85
    jr jr_04c_6a3f                                ; $6a51: $18 $ec

    db $ec                                        ; $6a53: $ec
    ld l, b                                       ; $6a54: $68
    reti                                          ; $6a55: $d9


    cp c                                          ; $6a56: $b9
    dec h                                         ; $6a57: $25
    or a                                          ; $6a58: $b7
    cp d                                          ; $6a59: $ba
    jp hl                                         ; $6a5a: $e9


    dec sp                                        ; $6a5b: $3b
    adc a                                         ; $6a5c: $8f
    add hl, bc                                    ; $6a5d: $09
    sbc d                                         ; $6a5e: $9a
    dec sp                                        ; $6a5f: $3b
    rla                                           ; $6a60: $17
    rst $30                                       ; $6a61: $f7
    db $dd                                        ; $6a62: $dd
    jp nc, Jump_000_2e82                          ; $6a63: $d2 $82 $2e

    or c                                          ; $6a66: $b1
    adc $a9                                       ; $6a67: $ce $a9
    ld [hl], e                                    ; $6a69: $73
    add hl, bc                                    ; $6a6a: $09
    sbc e                                         ; $6a6b: $9b
    cp [hl]                                       ; $6a6c: $be
    add hl, hl                                    ; $6a6d: $29
    cp $00                                        ; $6a6e: $fe $00
    rst $10                                       ; $6a70: $d7
    dec sp                                        ; $6a71: $3b
    and c                                         ; $6a72: $a1
    ret                                           ; $6a73: $c9


    dec bc                                        ; $6a74: $0b
    res 1, e                                      ; $6a75: $cb $8b
    ld e, d                                       ; $6a77: $5a
    jp c, Jump_04c_4b77                           ; $6a78: $da $77 $4b

    and b                                         ; $6a7b: $a0
    adc d                                         ; $6a7c: $8a
    cp a                                          ; $6a7d: $bf
    ld l, h                                       ; $6a7e: $6c
    xor [hl]                                      ; $6a7f: $ae
    cp c                                          ; $6a80: $b9
    or b                                          ; $6a81: $b0
    ld [bc], a                                    ; $6a82: $02
    cpl                                           ; $6a83: $2f
    add sp, $4e                                   ; $6a84: $e8 $4e
    dec b                                         ; $6a86: $05
    inc bc                                        ; $6a87: $03
    ld [hl], l                                    ; $6a88: $75
    ld a, a                                       ; $6a89: $7f
    ld a, [$fce6]                                 ; $6a8a: $fa $e6 $fc
    rst $38                                       ; $6a8d: $ff
    inc [hl]                                      ; $6a8e: $34
    rst $18                                       ; $6a8f: $df
    ret                                           ; $6a90: $c9


    sub d                                         ; $6a91: $92
    inc l                                         ; $6a92: $2c
    push bc                                       ; $6a93: $c5
    ld a, e                                       ; $6a94: $7b
    ld h, $97                                     ; $6a95: $26 $97
    adc $84                                       ; $6a97: $ce $84
    and $82                                       ; $6a99: $e6 $82
    xor [hl]                                      ; $6a9b: $ae
    sbc b                                         ; $6a9c: $98
    cp [hl]                                       ; $6a9d: $be
    ld a, [de]                                    ; $6a9e: $1a
    inc bc                                        ; $6a9f: $03
    cp c                                          ; $6aa0: $b9
    db $10                                        ; $6aa1: $10
    ld c, e                                       ; $6aa2: $4b
    ld [hl], c                                    ; $6aa3: $71
    inc e                                         ; $6aa4: $1c
    rst $28                                       ; $6aa5: $ef
    ld b, e                                       ; $6aa6: $43
    ld a, e                                       ; $6aa7: $7b
    rst $28                                       ; $6aa8: $ef
    ld d, h                                       ; $6aa9: $54
    ld c, h                                       ; $6aaa: $4c
    push bc                                       ; $6aab: $c5
    push bc                                       ; $6aac: $c5
    inc d                                         ; $6aad: $14
    ld a, a                                       ; $6aae: $7f
    nop                                           ; $6aaf: $00
    rst $10                                       ; $6ab0: $d7
    dec sp                                        ; $6ab1: $3b
    rla                                           ; $6ab2: $17
    db $d3                                        ; $6ab3: $d3
    di                                            ; $6ab4: $f3
    jp nz, Jump_04c_40f2                          ; $6ab5: $c2 $f2 $40

    ld c, a                                       ; $6ab8: $4f
    push de                                       ; $6ab9: $d5
    ld e, $c1                                     ; $6aba: $1e $c1
    cp h                                          ; $6abc: $bc
    pop af                                        ; $6abd: $f1
    add d                                         ; $6abe: $82
    ld c, [hl]                                    ; $6abf: $4e
    ld l, b                                       ; $6ac0: $68
    ld a, [c]                                     ; $6ac1: $f2
    jr nc, @+$43                                  ; $6ac2: $30 $41

    ld a, l                                       ; $6ac4: $7d
    xor e                                         ; $6ac5: $ab
    db $fd                                        ; $6ac6: $fd
    inc b                                         ; $6ac7: $04
    inc c                                         ; $6ac8: $0c
    or $1c                                        ; $6ac9: $f6 $1c
    and c                                         ; $6acb: $a1
    ld c, b                                       ; $6acc: $48
    db $f4                                        ; $6acd: $f4
    sbc e                                         ; $6ace: $9b
    cp $53                                        ; $6acf: $fe $53
    cp h                                          ; $6ad1: $bc
    db $eb                                        ; $6ad2: $eb
    ld e, l                                       ; $6ad3: $5d
    ld hl, sp+$3f                                 ; $6ad4: $f8 $3f
    pop af                                        ; $6ad6: $f1
    jp c, $281c                                   ; $6ad7: $da $1c $28

    add hl, sp                                    ; $6ada: $39
    ldh a, [$90]                                  ; $6adb: $f0 $90
    rst $20                                       ; $6add: $e7
    adc l                                         ; $6ade: $8d
    ld d, a                                       ; $6adf: $57
    ld e, d                                       ; $6ae0: $5a
    sbc e                                         ; $6ae1: $9b
    ld c, e                                       ; $6ae2: $4b
    xor h                                         ; $6ae3: $ac
    ld [hl], e                                    ; $6ae4: $73
    ld [$19a4], a                                 ; $6ae5: $ea $a4 $19
    ld sp, $47fc                                  ; $6ae8: $31 $fc $47
    ld [bc], a                                    ; $6aeb: $02
    and [hl]                                      ; $6aec: $a6
    ld sp, $4276                                  ; $6aed: $31 $76 $42
    dec d                                         ; $6af0: $15
    inc a                                         ; $6af1: $3c
    ld b, h                                       ; $6af2: $44
    add hl, hl                                    ; $6af3: $29
    sbc b                                         ; $6af4: $98
    pop de                                        ; $6af5: $d1
    ld d, b                                       ; $6af6: $50
    dec c                                         ; $6af7: $0d
    ld [hl], e                                    ; $6af8: $73
    cp [hl]                                       ; $6af9: $be
    ld a, e                                       ; $6afa: $7b
    xor e                                         ; $6afb: $ab
    ld [hl], h                                    ; $6afc: $74
    or [hl]                                       ; $6afd: $b6
    xor b                                         ; $6afe: $a8
    jp c, $148c                                   ; $6aff: $da $8c $14

    ld e, h                                       ; $6b02: $5c
    dec sp                                        ; $6b03: $3b
    jp nz, $ffdc                                  ; $6b04: $c2 $dc $ff

    ld l, c                                       ; $6b07: $69
    ld l, a                                       ; $6b08: $6f
    ld a, h                                       ; $6b09: $7c

Jump_04c_6b0a:
    or a                                          ; $6b0a: $b7
    ld l, c                                       ; $6b0b: $69
    ld b, [hl]                                    ; $6b0c: $46
    ld c, d                                       ; $6b0d: $4a
    sbc d                                         ; $6b0e: $9a
    ld de, $e337                                  ; $6b0f: $11 $37 $e3
    inc bc                                        ; $6b12: $03
    rst $10                                       ; $6b13: $d7
    cp e                                          ; $6b14: $bb
    or b                                          ; $6b15: $b0
    ld [bc], a                                    ; $6b16: $02
    rst $08                                       ; $6b17: $cf
    ld [hl], a                                    ; $6b18: $77
    sbc b                                         ; $6b19: $98
    add b                                         ; $6b1a: $80
    ld [$a6f1], a                                 ; $6b1b: $ea $f1 $a6
    db $e4                                        ; $6b1e: $e4
    and $dc                                       ; $6b1f: $e6 $dc
    jp nc, $a2d9                                  ; $6b21: $d2 $d9 $a2

    ld l, d                                       ; $6b24: $6a
    cp a                                          ; $6b25: $bf
    sub e                                         ; $6b26: $93
    add hl, de                                    ; $6b27: $19
    db $ed                                        ; $6b28: $ed
    push af                                       ; $6b29: $f5
    ld l, h                                       ; $6b2a: $6c
    and c                                         ; $6b2b: $a1
    db $fd                                        ; $6b2c: $fd
    ld l, b                                       ; $6b2d: $68
    ld l, $fd                                     ; $6b2e: $2e $fd
    ld [bc], a                                    ; $6b30: $02
    pop af                                        ; $6b31: $f1
    cp e                                          ; $6b32: $bb
    sub $c8                                       ; $6b33: $d6 $c8
    jp nc, Jump_000_2dcf                          ; $6b35: $d2 $cf $2d

    ld [hl], c                                    ; $6b38: $71
    dec [hl]                                      ; $6b39: $35
    cpl                                           ; $6b3a: $2f
    add sp, -$44                                  ; $6b3b: $e8 $bc
    pop af                                        ; $6b3d: $f1
    ld c, d                                       ; $6b3e: $4a
    ld l, e                                       ; $6b3f: $6b
    ld [hl], e                                    ; $6b40: $73
    adc c                                         ; $6b41: $89
    ld [hl], l                                    ; $6b42: $75
    ld c, [hl]                                    ; $6b43: $4e
    sbc l                                         ; $6b44: $9d
    inc [hl]                                      ; $6b45: $34
    inc hl                                        ; $6b46: $23
    add [hl]                                      ; $6b47: $86
    rst $38                                       ; $6b48: $ff
    ld c, b                                       ; $6b49: $48
    ret nz                                        ; $6b4a: $c0

    inc [hl]                                      ; $6b4b: $34
    add $4e                                       ; $6b4c: $c6 $4e
    xor b                                         ; $6b4e: $a8
    add d                                         ; $6b4f: $82
    add a                                         ; $6b50: $87
    jr z, @+$07                                   ; $6b51: $28 $05

    inc sp                                        ; $6b53: $33
    ld a, [de]                                    ; $6b54: $1a
    xor d                                         ; $6b55: $aa
    ld h, c                                       ; $6b56: $61
    adc $77                                       ; $6b57: $ce $77
    ld l, a                                       ; $6b59: $6f
    sub l                                         ; $6b5a: $95
    adc $16                                       ; $6b5b: $ce $16
    ld d, l                                       ; $6b5d: $55
    sbc e                                         ; $6b5e: $9b
    sub c                                         ; $6b5f: $91
    add d                                         ; $6b60: $82
    ld l, e                                       ; $6b61: $6b
    ld b, a                                       ; $6b62: $47
    sbc b                                         ; $6b63: $98
    ei                                            ; $6b64: $fb
    ccf                                           ; $6b65: $3f
    db $ed                                        ; $6b66: $ed
    adc l                                         ; $6b67: $8d
    rst $28                                       ; $6b68: $ef
    ld [hl], $cd                                  ; $6b69: $36 $cd
    ld c, b                                       ; $6b6b: $48
    ld c, c                                       ; $6b6c: $49
    inc sp                                        ; $6b6d: $33
    ld [c], a                                     ; $6b6e: $e2
    ld h, [hl]                                    ; $6b6f: $66
    ld a, h                                       ; $6b70: $7c
    nop                                           ; $6b71: $00
    rst $10                                       ; $6b72: $d7
    cp e                                          ; $6b73: $bb
    or b                                          ; $6b74: $b0
    ld [bc], a                                    ; $6b75: $02
    rst $28                                       ; $6b76: $ef
    cp l                                          ; $6b77: $bd
    ld d, e                                       ; $6b78: $53
    ld sp, $1715                                  ; $6b79: $31 $15 $17
    ld [hl], e                                    ; $6b7c: $73
    and b                                         ; $6b7d: $a0
    ld d, h                                       ; $6b7e: $54
    ccf                                           ; $6b7f: $3f
    rst $10                                       ; $6b80: $d7
    ld [hl], d                                    ; $6b81: $72
    cp [hl]                                       ; $6b82: $be
    di                                            ; $6b83: $f3
    ld d, h                                       ; $6b84: $54
    inc b                                         ; $6b85: $04
    sbc b                                         ; $6b86: $98
    ld h, b                                       ; $6b87: $60
    xor [hl]                                      ; $6b88: $ae
    push hl                                       ; $6b89: $e5
    jp c, $409c                                   ; $6b8a: $da $9c $40

    sub [hl]                                      ; $6b8d: $96
    cp [hl]                                       ; $6b8e: $be
    jp hl                                         ; $6b8f: $e9


    rlca                                          ; $6b90: $07
    sbc c                                         ; $6b91: $99
    sub c                                         ; $6b92: $91
    sbc d                                         ; $6b93: $9a
    db $fc                                        ; $6b94: $fc
    adc c                                         ; $6b95: $89
    ld b, c                                       ; $6b96: $41
    adc d                                         ; $6b97: $8a
    rst $18                                       ; $6b98: $df
    ld h, l                                       ; $6b99: $65
    ld a, c                                       ; $6b9a: $79
    and b                                         ; $6b9b: $a0

Call_04c_6b9c:
    db $e4                                        ; $6b9c: $e4
    ret nz                                        ; $6b9d: $c0

    ld b, e                                       ; $6b9e: $43
    sbc $77                                       ; $6b9f: $de $77
    ld c, e                                       ; $6ba1: $4b
    ld l, e                                       ; $6ba2: $6b
    ld [hl], e                                    ; $6ba3: $73
    adc c                                         ; $6ba4: $89
    ld [hl], l                                    ; $6ba5: $75
    ld c, [hl]                                    ; $6ba6: $4e
    sbc l                                         ; $6ba7: $9d
    inc [hl]                                      ; $6ba8: $34
    inc hl                                        ; $6ba9: $23
    add [hl]                                      ; $6baa: $86
    rst $38                                       ; $6bab: $ff
    ld c, b                                       ; $6bac: $48
    ret nz                                        ; $6bad: $c0

    inc [hl]                                      ; $6bae: $34
    add $0e                                       ; $6baf: $c6 $0e
    ld [hl], e                                    ; $6bb1: $73
    cp [hl]                                       ; $6bb2: $be
    ld a, e                                       ; $6bb3: $7b
    xor e                                         ; $6bb4: $ab
    ld [hl], h                                    ; $6bb5: $74
    or [hl]                                       ; $6bb6: $b6
    xor b                                         ; $6bb7: $a8
    jp c, $148c                                   ; $6bb8: $da $8c $14

    ld e, h                                       ; $6bbb: $5c
    dec sp                                        ; $6bbc: $3b
    jp nz, $1980                                  ; $6bbd: $c2 $80 $19

    rst $08                                       ; $6bc0: $cf
    or h                                          ; $6bc1: $b4
    ld e, d                                       ; $6bc2: $5a
    sbc e                                         ; $6bc3: $9b
    db $d3                                        ; $6bc4: $d3
    rra                                           ; $6bc5: $1f
    ld l, d                                       ; $6bc6: $6a
    ld a, [$8eb9]                                 ; $6bc7: $fa $b9 $8e
    ld b, e                                       ; $6bca: $43
    inc e                                         ; $6bcb: $1c
    ld [hl], h                                    ; $6bcc: $74
    cp $7f                                        ; $6bcd: $fe $7f
    sbc d                                         ; $6bcf: $9a
    rst $28                                       ; $6bd0: $ef
    inc d                                         ; $6bd1: $14
    inc a                                         ; $6bd2: $3c
    db $fc                                        ; $6bd3: $fc
    ld e, a                                       ; $6bd4: $5f
    rst $00                                       ; $6bd5: $c7
    rlca                                          ; $6bd6: $07
    rst $10                                       ; $6bd7: $d7
    cp e                                          ; $6bd8: $bb
    or b                                          ; $6bd9: $b0
    ld [bc], a                                    ; $6bda: $02
    rst $08                                       ; $6bdb: $cf
    ld [hl], a                                    ; $6bdc: $77
    rra                                           ; $6bdd: $1f
    ld a, [c]                                     ; $6bde: $f2
    ld h, h                                       ; $6bdf: $64
    ldh a, [$90]                                  ; $6be0: $f0 $90
    rst $20                                       ; $6be2: $e7
    cp $4f                                        ; $6be3: $fe $4f
    ld a, e                                       ; $6be5: $7b
    sbc [hl]                                      ; $6be6: $9e
    inc e                                         ; $6be7: $1c
    db $f4                                        ; $6be8: $f4
    ld c, l                                       ; $6be9: $4d
    jp hl                                         ; $6bea: $e9


    and h                                         ; $6beb: $a4
    rst $28                                       ; $6bec: $ef
    call c, $f9af                                 ; $6bed: $dc $af $f9
    ld a, a                                       ; $6bf0: $7f
    db $f4                                        ; $6bf1: $f4
    ld l, e                                       ; $6bf2: $6b
    adc [hl]                                      ; $6bf3: $8e
    cp a                                          ; $6bf4: $bf
    ld e, e                                       ; $6bf5: $5b
    ld a, [c]                                     ; $6bf6: $f2
    ld h, h                                       ; $6bf7: $64
    add hl, hl                                    ; $6bf8: $29
    xor c                                         ; $6bf9: $a9
    ldh a, [rSCY]                                 ; $6bfa: $f0 $42
    call c, $a81c                                 ; $6bfc: $dc $1c $a8
    and h                                         ; $6bff: $a4
    add d                                         ; $6c00: $82
    and [hl]                                      ; $6c01: $a6
    ld hl, sp+$3d                                 ; $6c02: $f8 $3d
    ld b, e                                       ; $6c04: $43
    ld b, e                                       ; $6c05: $43
    or l                                          ; $6c06: $b5
    ld [hl], $97                                  ; $6c07: $36 $97
    ld e, b                                       ; $6c09: $58
    rst $20                                       ; $6c0a: $e7
    call nc, Call_000_3349                        ; $6c0b: $d4 $49 $33
    ld h, d                                       ; $6c0e: $62
    ld hl, sp-$71                                 ; $6c0f: $f8 $8f
    inc b                                         ; $6c11: $04
    ld c, h                                       ; $6c12: $4c
    ld h, e                                       ; $6c13: $63
    db $ec                                        ; $6c14: $ec
    add h                                         ; $6c15: $84
    ld a, [hl+]                                   ; $6c16: $2a
    ld a, b                                       ; $6c17: $78
    adc b                                         ; $6c18: $88
    ld d, d                                       ; $6c19: $52
    jr nc, @-$5b                                  ; $6c1a: $30 $a3

    ld h, c                                       ; $6c1c: $61
    adc $77                                       ; $6c1d: $ce $77
    ld l, a                                       ; $6c1f: $6f
    sub l                                         ; $6c20: $95
    adc $16                                       ; $6c21: $ce $16
    ld d, l                                       ; $6c23: $55
    sbc e                                         ; $6c24: $9b
    sub c                                         ; $6c25: $91
    add d                                         ; $6c26: $82
    ld l, e                                       ; $6c27: $6b
    ld b, a                                       ; $6c28: $47
    sbc b                                         ; $6c29: $98
    ei                                            ; $6c2a: $fb
    ccf                                           ; $6c2b: $3f
    db $ed                                        ; $6c2c: $ed
    adc l                                         ; $6c2d: $8d
    rst $28                                       ; $6c2e: $ef
    ld [hl], $cd                                  ; $6c2f: $36 $cd
    ld c, b                                       ; $6c31: $48
    ld c, c                                       ; $6c32: $49
    inc sp                                        ; $6c33: $33
    ld [c], a                                     ; $6c34: $e2
    ld h, [hl]                                    ; $6c35: $66
    ld a, h                                       ; $6c36: $7c
    nop                                           ; $6c37: $00
    rst $10                                       ; $6c38: $d7
    dec sp                                        ; $6c39: $3b
    and c                                         ; $6c3a: $a1
    ret                                           ; $6c3b: $c9


    ld a, e                                       ; $6c3c: $7b
    or $43                                        ; $6c3d: $f6 $43
    ld d, b                                       ; $6c3f: $50
    rst $00                                       ; $6c40: $c7
    sbc l                                         ; $6c41: $9d
    jp nc, $cd18                                  ; $6c42: $d2 $18 $cd

    ld b, h                                       ; $6c45: $44
    inc bc                                        ; $6c46: $03
    dec a                                         ; $6c47: $3d
    or l                                          ; $6c48: $b5
    adc d                                         ; $6c49: $8a
    rst $10                                       ; $6c4a: $d7
    ld e, h                                       ; $6c4b: $5c
    ld e, b                                       ; $6c4c: $58
    add c                                         ; $6c4d: $81
    rla                                           ; $6c4e: $17
    sub [hl]                                      ; $6c4f: $96
    daa                                           ; $6c50: $27
    db $fc                                        ; $6c51: $fc
    jp z, $ba81                                   ; $6c52: $ca $81 $ba

    ccf                                           ; $6c55: $3f
    ld a, l                                       ; $6c56: $7d
    ld [hl], e                                    ; $6c57: $73
    sbc $78                                       ; $6c58: $de $78
    daa                                           ; $6c5a: $27
    ld d, e                                       ; $6c5b: $53
    inc bc                                        ; $6c5c: $03
    ld d, l                                       ; $6c5d: $55
    db $fc                                        ; $6c5e: $fc
    ld [hl], l                                    ; $6c5f: $75
    ld [hl], e                                    ; $6c60: $73
    ld c, $f2                                     ; $6c61: $0e $f2
    ld a, h                                       ; $6c63: $7c
    daa                                           ; $6c64: $27
    and b                                         ; $6c65: $a0
    and b                                         ; $6c66: $a0
    pop af                                        ; $6c67: $f1
    ld [hl], e                                    ; $6c68: $73
    ret c                                         ; $6c69: $d8

    ld c, d                                       ; $6c6a: $4a
    pop af                                        ; $6c6b: $f1
    ld a, e                                       ; $6c6c: $7b
    add [hl]                                      ; $6c6d: $86

jr_04c_6c6e:
    add [hl]                                      ; $6c6e: $86
    ld l, d                                       ; $6c6f: $6a
    ld l, l                                       ; $6c70: $6d
    ld l, $b1                                     ; $6c71: $2e $b1
    adc $a9                                       ; $6c73: $ce $a9
    sub e                                         ; $6c75: $93
    ld h, [hl]                                    ; $6c76: $66
    call nz, Call_000_1ff0                        ; $6c77: $c4 $f0 $1f
    add hl, bc                                    ; $6c7a: $09
    sbc b                                         ; $6c7b: $98
    add $d8                                       ; $6c7c: $c6 $d8
    ld h, c                                       ; $6c7e: $61
    adc $77                                       ; $6c7f: $ce $77
    ld l, a                                       ; $6c81: $6f
    sub l                                         ; $6c82: $95
    adc $16                                       ; $6c83: $ce $16
    ld d, l                                       ; $6c85: $55
    sbc e                                         ; $6c86: $9b
    sub c                                         ; $6c87: $91
    add d                                         ; $6c88: $82
    ld l, e                                       ; $6c89: $6b
    ld b, a                                       ; $6c8a: $47
    sbc b                                         ; $6c8b: $98

jr_04c_6c8c:
    ei                                            ; $6c8c: $fb
    ccf                                           ; $6c8d: $3f
    db $ed                                        ; $6c8e: $ed
    adc l                                         ; $6c8f: $8d
    rst $28                                       ; $6c90: $ef
    ld [hl], $cd                                  ; $6c91: $36 $cd
    ld c, b                                       ; $6c93: $48
    ld c, c                                       ; $6c94: $49
    inc sp                                        ; $6c95: $33
    ld [c], a                                     ; $6c96: $e2
    ld h, [hl]                                    ; $6c97: $66
    ld a, h                                       ; $6c98: $7c
    nop                                           ; $6c99: $00
    rst $10                                       ; $6c9a: $d7
    cp e                                          ; $6c9b: $bb
    or b                                          ; $6c9c: $b0
    ld [bc], a                                    ; $6c9d: $02
    cpl                                           ; $6c9e: $2f
    ld l, d                                       ; $6c9f: $6a
    ld l, c                                       ; $6ca0: $69
    pop de                                        ; $6ca1: $d1
    rlca                                          ; $6ca2: $07
    push de                                       ; $6ca3: $d5
    jr jr_04c_6c6e                                ; $6ca4: $18 $c8

    or b                                          ; $6ca6: $b0
    cp [hl]                                       ; $6ca7: $be
    cp c                                          ; $6ca8: $b9
    ld [hl], h                                    ; $6ca9: $74
    ld d, $74                                     ; $6caa: $16 $74
    cp [hl]                                       ; $6cac: $be
    dec sp                                        ; $6cad: $3b
    rst $38                                       ; $6cae: $ff
    ld c, d                                       ; $6caf: $4a
    cp $f0                                        ; $6cb0: $fe $f0
    sub b                                         ; $6cb2: $90
    rst $20                                       ; $6cb3: $e7
    cp $4f                                        ; $6cb4: $fe $4f
    add e                                         ; $6cb6: $83
    add sp, -$75                                  ; $6cb7: $e8 $8b
    xor d                                         ; $6cb9: $aa
    call nc, Call_000_3da7                        ; $6cba: $d4 $a7 $3d
    adc a                                         ; $6cbd: $8f
    adc d                                         ; $6cbe: $8a
    rla                                           ; $6cbf: $17
    ld d, [hl]                                    ; $6cc0: $56
    ldh [$b9], a                                  ; $6cc1: $e0 $b9
    ld e, a                                       ; $6cc3: $5f
    di                                            ; $6cc4: $f3
    rst $38                                       ; $6cc5: $ff
    add sp, -$3b                                  ; $6cc6: $e8 $c5
    rst $28                                       ; $6cc8: $ef
    push hl                                       ; $6cc9: $e5
    ld l, b                                       ; $6cca: $68
    ld b, c                                       ; $6ccb: $41
    and a                                         ; $6ccc: $a7
    inc e                                         ; $6ccd: $1c
    jr c, jr_04c_6c8c                             ; $6cce: $38 $bc

    ld l, d                                       ; $6cd0: $6a
    call c, Call_04c_58b9                         ; $6cd1: $dc $b9 $58
    ld l, d                                       ; $6cd4: $6a
    ld e, [hl]                                    ; $6cd5: $5e
    inc c                                         ; $6cd6: $0c
    push de                                       ; $6cd7: $d5
    ld c, d                                       ; $6cd8: $4a
    ld l, e                                       ; $6cd9: $6b
    ld [hl], e                                    ; $6cda: $73
    adc c                                         ; $6cdb: $89
    ld [hl], l                                    ; $6cdc: $75
    ld c, [hl]                                    ; $6cdd: $4e
    sbc l                                         ; $6cde: $9d

Jump_04c_6cdf:
    inc [hl]                                      ; $6cdf: $34
    inc hl                                        ; $6ce0: $23
    add [hl]                                      ; $6ce1: $86
    rst $38                                       ; $6ce2: $ff
    ld c, b                                       ; $6ce3: $48
    ret nz                                        ; $6ce4: $c0

    inc [hl]                                      ; $6ce5: $34
    add $0e                                       ; $6ce6: $c6 $0e
    ld [hl], e                                    ; $6ce8: $73
    cp [hl]                                       ; $6ce9: $be
    ld a, e                                       ; $6cea: $7b
    xor e                                         ; $6ceb: $ab
    ld [hl], h                                    ; $6cec: $74
    or [hl]                                       ; $6ced: $b6
    xor b                                         ; $6cee: $a8
    jp c, $148c                                   ; $6cef: $da $8c $14

    ld e, h                                       ; $6cf2: $5c
    dec sp                                        ; $6cf3: $3b
    jp nz, $ffdc                                  ; $6cf4: $c2 $dc $ff

    ld l, c                                       ; $6cf7: $69
    ld l, a                                       ; $6cf8: $6f
    ld a, h                                       ; $6cf9: $7c
    or a                                          ; $6cfa: $b7
    ld l, c                                       ; $6cfb: $69
    ld b, [hl]                                    ; $6cfc: $46
    ld c, d                                       ; $6cfd: $4a
    sbc d                                         ; $6cfe: $9a
    ld de, $e337                                  ; $6cff: $11 $37 $e3
    inc bc                                        ; $6d02: $03
    rst $10                                       ; $6d03: $d7
    cp e                                          ; $6d04: $bb
    or b                                          ; $6d05: $b0
    ld [bc], a                                    ; $6d06: $02
    rst $08                                       ; $6d07: $cf
    ld [hl], a                                    ; $6d08: $77
    rst $08                                       ; $6d09: $cf
    dec [hl]                                      ; $6d0a: $35
    xor h                                         ; $6d0b: $ac
    inc bc                                        ; $6d0c: $03
    sbc d                                         ; $6d0d: $9a
    adc d                                         ; $6d0e: $8a
    db $db                                        ; $6d0f: $db
    sbc h                                         ; $6d10: $9c
    ld l, e                                       ; $6d11: $6b
    cp c                                          ; $6d12: $b9
    rla                                           ; $6d13: $17
    adc l                                         ; $6d14: $8d
    ldh [$d5], a                                  ; $6d15: $e0 $d5
    db $e3                                        ; $6d17: $e3
    sub d                                         ; $6d18: $92
    inc bc                                        ; $6d19: $03
    call nz, $b2ef                                ; $6d1a: $c4 $ef $b2
    cp h                                          ; $6d1d: $bc
    call nz, $273a                                ; $6d1e: $c4 $3a $27
    dec [hl]                                      ; $6d21: $35
    rst $10                                       ; $6d22: $d7
    ld [hl], d                                    ; $6d23: $72
    ld l, l                                       ; $6d24: $6d
    ld l, $b1                                     ; $6d25: $2e $b1
    adc $a9                                       ; $6d27: $ce $a9
    sub e                                         ; $6d29: $93
    ld h, [hl]                                    ; $6d2a: $66
    call nz, Call_000_1ff0                        ; $6d2b: $c4 $f0 $1f
    add hl, bc                                    ; $6d2e: $09
    sbc b                                         ; $6d2f: $98
    add $d8                                       ; $6d30: $c6 $d8

jr_04c_6d32:
    ld h, c                                       ; $6d32: $61
    adc $77                                       ; $6d33: $ce $77
    ld l, a                                       ; $6d35: $6f
    sub l                                         ; $6d36: $95
    adc $16                                       ; $6d37: $ce $16
    ld d, l                                       ; $6d39: $55
    sbc e                                         ; $6d3a: $9b
    sub c                                         ; $6d3b: $91
    add d                                         ; $6d3c: $82
    ld l, e                                       ; $6d3d: $6b
    ld b, a                                       ; $6d3e: $47
    sbc b                                         ; $6d3f: $98
    ei                                            ; $6d40: $fb
    ccf                                           ; $6d41: $3f
    db $ed                                        ; $6d42: $ed
    adc l                                         ; $6d43: $8d
    rst $28                                       ; $6d44: $ef
    ld [hl], $cd                                  ; $6d45: $36 $cd
    ld c, b                                       ; $6d47: $48
    ld c, c                                       ; $6d48: $49
    inc sp                                        ; $6d49: $33
    ld [c], a                                     ; $6d4a: $e2
    and $fc                                       ; $6d4b: $e6 $fc
    cpl                                           ; $6d4d: $2f
    rst $08                                       ; $6d4e: $cf
    ld [hl], a                                    ; $6d4f: $77
    db $f4                                        ; $6d50: $f4
    db $d3                                        ; $6d51: $d3
    scf                                           ; $6d52: $37

jr_04c_6d53:
    ld a, $00                                     ; $6d53: $3e $00
    sub a                                         ; $6d55: $97
    push hl                                       ; $6d56: $e5
    add hl, hl                                    ; $6d57: $29
    ld l, l                                       ; $6d58: $6d
    and b                                         ; $6d59: $a0
    add hl, sp                                    ; $6d5a: $39
    rst $30                                       ; $6d5b: $f7
    ld a, a                                       ; $6d5c: $7f
    sbc d                                         ; $6d5d: $9a
    rst $28                                       ; $6d5e: $ef
    ld [hl], h                                    ; $6d5f: $74
    push de                                       ; $6d60: $d5
    ld e, [hl]                                    ; $6d61: $5e
    add a                                         ; $6d62: $87
    xor b                                         ; $6d63: $a8
    adc [hl]                                      ; $6d64: $8e
    ld l, h                                       ; $6d65: $6c
    xor [hl]                                      ; $6d66: $ae
    cp c                                          ; $6d67: $b9
    and a                                         ; $6d68: $a7
    ld a, d                                       ; $6d69: $7a
    ld a, $95                                     ; $6d6a: $3e $95
    jr nc, @+$43                                  ; $6d6c: $30 $41

    ld [hl], e                                    ; $6d6e: $73
    and a                                         ; $6d6f: $a7
    ld c, a                                       ; $6d70: $4f
    sbc [hl]                                      ; $6d71: $9e

Call_04c_6d72:
    rst $00                                       ; $6d72: $c7
    cp a                                          ; $6d73: $bf
    and b                                         ; $6d74: $a0
    xor $2f                                       ; $6d75: $ee $2f
    ldh a, [$33]                                  ; $6d77: $f0 $33
    rlc l                                         ; $6d79: $cb $05
    sbc l                                         ; $6d7b: $9d
    add $40                                       ; $6d7c: $c6 $40
    pop af                                        ; $6d7e: $f1
    and d                                         ; $6d7f: $a2
    ld a, [c]                                     ; $6d80: $f2
    ld c, [hl]                                    ; $6d81: $4e
    push hl                                       ; $6d82: $e5
    and [hl]                                      ; $6d83: $a6
    add d                                         ; $6d84: $82
    add a                                         ; $6d85: $87
    ld b, $41                                     ; $6d86: $06 $41
    push de                                       ; $6d88: $d5
    jr jr_04c_6d53                                ; $6d89: $18 $c8

    ld c, $a2                                     ; $6d8b: $0e $a2
    ld a, [hl+]                                   ; $6d8d: $2a
    ld [hl], $c6                                  ; $6d8e: $36 $c6
    xor d                                         ; $6d90: $aa
    ld a, b                                       ; $6d91: $78
    rst $08                                       ; $6d92: $cf
    ret nc                                        ; $6d93: $d0

    ld d, b                                       ; $6d94: $50
    db $ed                                        ; $6d95: $ed
    call nc, $dad2                                ; $6d96: $d4 $d2 $da
    ld e, h                                       ; $6d99: $5c
    ld h, d                                       ; $6d9a: $62
    sbc l                                         ; $6d9b: $9d
    ld d, e                                       ; $6d9c: $53
    daa                                           ; $6d9d: $27
    call $e188                                    ; $6d9e: $cd $88 $e1
    ccf                                           ; $6da1: $3f
    ld [de], a                                    ; $6da2: $12
    jr nc, jr_04c_6d32                            ; $6da3: $30 $8d

    or c                                          ; $6da5: $b1
    jp $ef9c                                      ; $6da6: $c3 $9c $ef


    sbc $2a                                       ; $6da9: $de $2a
    sbc l                                         ; $6dab: $9d

jr_04c_6dac:
    dec l                                         ; $6dac: $2d
    xor d                                         ; $6dad: $aa
    ld [hl], $23                                  ; $6dae: $36 $23
    dec b                                         ; $6db0: $05
    rst $10                                       ; $6db1: $d7
    adc [hl]                                      ; $6db2: $8e
    jr nc, jr_04c_6dac                            ; $6db3: $30 $f7

    ld a, a                                       ; $6db5: $7f
    jp c, $df1b                                   ; $6db6: $da $1b $df

    ld l, l                                       ; $6db9: $6d
    sbc d                                         ; $6dba: $9a
    sub c                                         ; $6dbb: $91
    sub d                                         ; $6dbc: $92
    ld h, [hl]                                    ; $6dbd: $66
    call nz, $f8cd                                ; $6dbe: $c4 $cd $f8
    nop                                           ; $6dc1: $00
    rst $08                                       ; $6dc2: $cf
    ld d, l                                       ; $6dc3: $55
    ld d, h                                       ; $6dc4: $54
    adc l                                         ; $6dc5: $8d
    ld [hl], b                                    ; $6dc6: $70
    db $e4                                        ; $6dc7: $e4
    sub [hl]                                      ; $6dc8: $96
    db $fc                                        ; $6dc9: $fc
    push bc                                       ; $6dca: $c5
    add d                                         ; $6dcb: $82
    ld l, $ac                                     ; $6dcc: $2e $ac
    ret nz                                        ; $6dce: $c0

    di                                            ; $6dcf: $f3
    db $dd                                        ; $6dd0: $dd
    sbc e                                         ; $6dd1: $9b
    xor b                                         ; $6dd2: $a8
    sbc e                                         ; $6dd3: $9b
    add c                                         ; $6dd4: $81
    pop bc                                        ; $6dd5: $c1
    ld b, e                                       ; $6dd6: $43
    ld e, $e8                                     ; $6dd7: $1e $e8
    jp hl                                         ; $6dd9: $e9


    ld h, a                                       ; $6dda: $67
    ld [hl], $c5                                  ; $6ddb: $36 $c5
    rst $28                                       ; $6ddd: $ef
    or d                                          ; $6dde: $b2
    cp h                                          ; $6ddf: $bc
    call nz, $273a                                ; $6de0: $c4 $3a $27
    dec [hl]                                      ; $6de3: $35
    rst $10                                       ; $6de4: $d7
    ld [hl], d                                    ; $6de5: $72
    ld l, l                                       ; $6de6: $6d
    ld l, $b1                                     ; $6de7: $2e $b1
    adc $a9                                       ; $6de9: $ce $a9
    sub e                                         ; $6deb: $93
    ld h, [hl]                                    ; $6dec: $66
    call nz, Call_000_1ff0                        ; $6ded: $c4 $f0 $1f
    add hl, bc                                    ; $6df0: $09
    sbc b                                         ; $6df1: $98
    add $d8                                       ; $6df2: $c6 $d8
    ld h, c                                       ; $6df4: $61
    adc $77                                       ; $6df5: $ce $77
    ld l, a                                       ; $6df7: $6f
    sub l                                         ; $6df8: $95
    adc $16                                       ; $6df9: $ce $16
    ld d, l                                       ; $6dfb: $55
    sbc e                                         ; $6dfc: $9b
    sub c                                         ; $6dfd: $91
    add d                                         ; $6dfe: $82
    ld l, e                                       ; $6dff: $6b
    ld b, a                                       ; $6e00: $47
    sbc b                                         ; $6e01: $98
    ei                                            ; $6e02: $fb
    ccf                                           ; $6e03: $3f
    db $ed                                        ; $6e04: $ed
    adc l                                         ; $6e05: $8d
    rst $28                                       ; $6e06: $ef
    ld [hl], $cd                                  ; $6e07: $36 $cd
    ld c, b                                       ; $6e09: $48
    ld c, c                                       ; $6e0a: $49
    inc sp                                        ; $6e0b: $33
    ld [c], a                                     ; $6e0c: $e2
    and $80                                       ; $6e0d: $e6 $80
    add hl, de                                    ; $6e0f: $19
    rst $08                                       ; $6e10: $cf
    or h                                          ; $6e11: $b4
    ld e, d                                       ; $6e12: $5a
    sbc e                                         ; $6e13: $9b
    db $d3                                        ; $6e14: $d3
    rra                                           ; $6e15: $1f
    ld l, d                                       ; $6e16: $6a
    ld a, [$8eb9]                                 ; $6e17: $fa $b9 $8e
    ld b, e                                       ; $6e1a: $43
    inc e                                         ; $6e1b: $1c
    inc [hl]                                      ; $6e1c: $34
    ld a, $00                                     ; $6e1d: $3e $00
    cpl                                           ; $6e1f: $2f
    sbc c                                         ; $6e20: $99
    scf                                           ; $6e21: $37
    ld e, [hl]                                    ; $6e22: $5e
    ret nc                                        ; $6e23: $d0

    add hl, bc                                    ; $6e24: $09
    ld c, l                                       ; $6e25: $4d
    ld e, $97                                     ; $6e26: $1e $97
    inc e                                         ; $6e28: $1c
    nop                                           ; $6e29: $00
    ld a, [hl+]                                   ; $6e2a: $2a
    ld e, e                                       ; $6e2b: $5b
    ld a, [c]                                     ; $6e2c: $f2
    ld [hl], e                                    ; $6e2d: $73
    dec l                                         ; $6e2e: $2d
    rst $20                                       ; $6e2f: $e7
    cp e                                          ; $6e30: $bb
    rst $10                                       ; $6e31: $d7
    ld hl, $a82c                                  ; $6e32: $21 $2c $a8
    sbc [hl]                                      ; $6e35: $9e
    ld l, e                                       ; $6e36: $6b
    cp c                                          ; $6e37: $b9
    sub a                                         ; $6e38: $97
    ld c, d                                       ; $6e39: $4a
    dec b                                         ; $6e3a: $05
    dec d                                         ; $6e3b: $15
    ld l, $06                                     ; $6e3c: $2e $06
    dec d                                         ; $6e3e: $15
    ld d, e                                       ; $6e3f: $53
    dec l                                         ; $6e40: $2d
    add sp, -$42                                  ; $6e41: $e8 $be
    ld e, e                                       ; $6e43: $5b
    sbc d                                         ; $6e44: $9a
    rst $28                                       ; $6e45: $ef
    or h                                          ; $6e46: $b4
    add hl, de                                    ; $6e47: $19
    dec hl                                        ; $6e48: $2b
    xor $7e                                       ; $6e49: $ee $7e
    ld a, [c]                                     ; $6e4b: $f2
    add hl, bc                                    ; $6e4c: $09
    and l                                         ; $6e4d: $a5
    xor h                                         ; $6e4e: $ac
    add $04                                       ; $6e4f: $c6 $04
    call $d778                                    ; $6e51: $cd $78 $d7
    call nc, $3b4a                                ; $6e54: $d4 $4a $3b
    ld d, l                                       ; $6e57: $55
    xor a                                         ; $6e58: $af
    ldh a, [$90]                                  ; $6e59: $f0 $90
    rst $10                                       ; $6e5b: $d7
    and $12                                       ; $6e5c: $e6 $12
    db $eb                                        ; $6e5e: $eb
    sbc h                                         ; $6e5f: $9c
    ld a, [hl-]                                   ; $6e60: $3a
    ld l, c                                       ; $6e61: $69
    ld b, [hl]                                    ; $6e62: $46
    inc c                                         ; $6e63: $0c
    rst $38                                       ; $6e64: $ff
    sub c                                         ; $6e65: $91
    add b                                         ; $6e66: $80
    ld l, c                                       ; $6e67: $69
    adc h                                         ; $6e68: $8c
    sbc l                                         ; $6e69: $9d
    ld d, b                                       ; $6e6a: $50
    dec b                                         ; $6e6b: $05
    rrca                                          ; $6e6c: $0f
    ld d, c                                       ; $6e6d: $51
    ld a, [bc]                                    ; $6e6e: $0a
    ld h, [hl]                                    ; $6e6f: $66
    inc [hl]                                      ; $6e70: $34
    call z, $eef9                                 ; $6e71: $cc $f9 $ee
    xor l                                         ; $6e74: $ad
    jp nc, $a2d9                                  ; $6e75: $d2 $d9 $a2

    ld l, d                                       ; $6e78: $6a
    inc sp                                        ; $6e79: $33
    ld d, d                                       ; $6e7a: $52
    ld [hl], b                                    ; $6e7b: $70
    db $ed                                        ; $6e7c: $ed
    ld [$ff73], sp                                ; $6e7d: $08 $73 $ff
    and a                                         ; $6e80: $a7
    cp l                                          ; $6e81: $bd
    pop af                                        ; $6e82: $f1
    db $dd                                        ; $6e83: $dd
    and [hl]                                      ; $6e84: $a6
    add hl, de                                    ; $6e85: $19
    add hl, hl                                    ; $6e86: $29
    ld l, c                                       ; $6e87: $69
    ld b, [hl]                                    ; $6e88: $46
    call c, $72bc                                 ; $6e89: $dc $bc $72
    nop                                           ; $6e8c: $00
    rst $10                                       ; $6e8d: $d7
    dec sp                                        ; $6e8e: $3b
    and c                                         ; $6e8f: $a1
    ret                                           ; $6e90: $c9


    ld [hl], e                                    ; $6e91: $73
    adc e                                         ; $6e92: $8b
    ld a, [de]                                    ; $6e93: $1a
    pop bc                                        ; $6e94: $c1
    cp b                                          ; $6e95: $b8
    db $e4                                        ; $6e96: $e4
    nop                                           ; $6e97: $00
    ld d, b                                       ; $6e98: $50
    reti                                          ; $6e99: $d9


    sub d                                         ; $6e9a: $92
    ld e, a                                       ; $6e9b: $5f
    sbc d                                         ; $6e9c: $9a
    pop de                                        ; $6e9d: $d1
    sbc [hl]                                      ; $6e9e: $9e
    inc hl                                        ; $6e9f: $23
    inc d                                         ; $6ea0: $14
    adc c                                         ; $6ea1: $89
    ld a, [hl]                                    ; $6ea2: $7e
    db $d3                                        ; $6ea3: $d3
    ld a, a                                       ; $6ea4: $7f
    ld e, d                                       ; $6ea5: $5a
    jp c, $ce82                                   ; $6ea6: $da $82 $ce

    call c, $ec9f                                 ; $6ea9: $dc $9f $ec
    jr c, @-$5a                                   ; $6eac: $38 $a4

    ld sp, $dd90                                  ; $6eae: $31 $90 $dd
    ld d, l                                       ; $6eb1: $55
    and a                                         ; $6eb2: $a7
    ld a, d                                       ; $6eb3: $7a

Call_04c_6eb4:
    ccf                                           ; $6eb4: $3f
    jp c, $e88b                                   ; $6eb5: $da $8b $e8

    ld a, l                                       ; $6eb8: $7d
    add hl, hl                                    ; $6eb9: $29
    dec c                                         ; $6eba: $0d
    ld e, $72                                     ; $6ebb: $1e $72
    cp h                                          ; $6ebd: $bc
    xor e                                         ; $6ebe: $ab
    dec e                                         ; $6ebf: $1d
    or b                                          ; $6ec0: $b0
    inc b                                         ; $6ec1: $04
    call $96b9                                    ; $6ec2: $cd $b9 $96
    ld a, e                                       ; $6ec5: $7b
    rst $28                                       ; $6ec6: $ef
    ld d, h                                       ; $6ec7: $54
    ld c, h                                       ; $6ec8: $4c
    push bc                                       ; $6ec9: $c5
    push bc                                       ; $6eca: $c5
    sbc h                                         ; $6ecb: $9c
    add $40                                       ; $6ecc: $c6 $40
    ld [hl], $97                                  ; $6ece: $36 $97
    adc $12                                       ; $6ed0: $ce $12
    res 1, e                                      ; $6ed2: $cb $8b
    ld e, d                                       ; $6ed4: $5a
    jp c, $cff9                                   ; $6ed5: $da $f9 $cf

    ld d, e                                       ; $6ed8: $53
    ld de, $7d34                                  ; $6ed9: $11 $34 $7d
    ld a, h                                       ; $6edc: $7c
    nop                                           ; $6edd: $00
    rst $10                                       ; $6ede: $d7
    cp e                                          ; $6edf: $bb
    or b                                          ; $6ee0: $b0
    ld [bc], a                                    ; $6ee1: $02
    rst $08                                       ; $6ee2: $cf
    ld [hl], a                                    ; $6ee3: $77
    ld c, h                                       ; $6ee4: $4c
    ld e, a                                       ; $6ee5: $5f
    rst $08                                       ; $6ee6: $cf
    dec l                                         ; $6ee7: $2d
    add hl, hl                                    ; $6ee8: $29
    ld l, l                                       ; $6ee9: $6d
    and b                                         ; $6eea: $a0
    cp c                                          ; $6eeb: $b9
    and $2e                                       ; $6eec: $e6 $2e
    ld c, e                                       ; $6eee: $4b
    ld d, c                                       ; $6eef: $51
    dec [hl]                                      ; $6ef0: $35
    ld [hl], $07                                  ; $6ef1: $36 $07
    ld c, d                                       ; $6ef3: $4a
    push af                                       ; $6ef4: $f5
    ld [c], a                                     ; $6ef5: $e2
    ld [hl], a                                    ; $6ef6: $77
    cp l                                          ; $6ef7: $bd
    ld [hl], e                                    ; $6ef8: $73
    ld sp, $cf3d                                  ; $6ef9: $31 $3d $cf
    dec de                                        ; $6efc: $1b
    rst $08                                       ; $6efd: $cf
    ld [hl], a                                    ; $6efe: $77
    adc c                                         ; $6eff: $89
    ld [hl], l                                    ; $6f00: $75
    ld c, [hl]                                    ; $6f01: $4e
    sbc l                                         ; $6f02: $9d
    inc [hl]                                      ; $6f03: $34
    inc hl                                        ; $6f04: $23
    add [hl]                                      ; $6f05: $86
    rst $38                                       ; $6f06: $ff
    ld c, b                                       ; $6f07: $48
    ret nz                                        ; $6f08: $c0

    inc [hl]                                      ; $6f09: $34
    add $0e                                       ; $6f0a: $c6 $0e
    ld [hl], e                                    ; $6f0c: $73
    cp [hl]                                       ; $6f0d: $be
    ld a, e                                       ; $6f0e: $7b
    xor e                                         ; $6f0f: $ab
    ld [hl], h                                    ; $6f10: $74
    or [hl]                                       ; $6f11: $b6
    xor b                                         ; $6f12: $a8
    jp c, $148c                                   ; $6f13: $da $8c $14

    ld e, h                                       ; $6f16: $5c
    dec sp                                        ; $6f17: $3b
    jp nz, $ffdc                                  ; $6f18: $c2 $dc $ff

    ld l, c                                       ; $6f1b: $69
    ld l, a                                       ; $6f1c: $6f
    ld a, h                                       ; $6f1d: $7c
    or a                                          ; $6f1e: $b7
    ld l, c                                       ; $6f1f: $69
    ld b, [hl]                                    ; $6f20: $46
    ld c, d                                       ; $6f21: $4a
    sbc d                                         ; $6f22: $9a
    ld de, $d737                                  ; $6f23: $11 $37 $d7
    and $c0                                       ; $6f26: $e6 $c0
    xor a                                         ; $6f28: $af
    rst $28                                       ; $6f29: $ef
    add h                                         ; $6f2a: $84
    ld [$989f], a                                 ; $6f2b: $ea $9f $98
    ld h, b                                       ; $6f2e: $60
    xor b                                         ; $6f2f: $a8
    and $fe                                       ; $6f30: $e6 $fe
    ld c, a                                       ; $6f32: $4f
    dec bc                                        ; $6f33: $0b
    cp d                                          ; $6f34: $ba
    or b                                          ; $6f35: $b0
    jp c, $a337                                   ; $6f36: $da $37 $a3

    ld e, a                                       ; $6f39: $5f
    rra                                           ; $6f3a: $1f
    rra                                           ; $6f3b: $1f
    rst $10                                       ; $6f3c: $d7
    cp e                                          ; $6f3d: $bb
    or b                                          ; $6f3e: $b0
    ld [bc], a                                    ; $6f3f: $02
    cpl                                           ; $6f40: $2f
    add sp, $64                                   ; $6f41: $e8 $64
    ld c, c                                       ; $6f43: $49
    ld sp, $7cdc                                  ; $6f44: $31 $dc $7c
    call $a0e1                                    ; $6f47: $cd $e1 $a0
    ld l, d                                       ; $6f4a: $6a
    call c, Call_000_2641                         ; $6f4b: $dc $41 $26
    ld h, l                                       ; $6f4e: $65
    ld d, e                                       ; $6f4f: $53
    db $fc                                        ; $6f50: $fc
    xor [hl]                                      ; $6f51: $ae
    halt                                          ; $6f52: $76
    ld l, a                                       ; $6f53: $6f
    sub l                                         ; $6f54: $95
    adc $16                                       ; $6f55: $ce $16
    ld d, l                                       ; $6f57: $55
    sbc e                                         ; $6f58: $9b
    sub c                                         ; $6f59: $91
    add d                                         ; $6f5a: $82
    ld l, e                                       ; $6f5b: $6b
    ld b, a                                       ; $6f5c: $47
    sbc b                                         ; $6f5d: $98
    ei                                            ; $6f5e: $fb
    ccf                                           ; $6f5f: $3f
    db $ed                                        ; $6f60: $ed
    adc l                                         ; $6f61: $8d
    rst $28                                       ; $6f62: $ef
    ld [hl], $cd                                  ; $6f63: $36 $cd
    ld c, b                                       ; $6f65: $48
    ld c, c                                       ; $6f66: $49
    inc sp                                        ; $6f67: $33
    ld [c], a                                     ; $6f68: $e2
    and $7c                                       ; $6f69: $e6 $7c
    ld d, e                                       ; $6f6b: $53
    ld a, [c]                                     ; $6f6c: $f2
    cp h                                          ; $6f6d: $bc
    pop af                                        ; $6f6e: $f1
    inc a                                         ; $6f6f: $3c
    ld a, [c]                                     ; $6f70: $f2
    ld c, [hl]                                    ; $6f71: $4e

jr_04c_6f72:
    push de                                       ; $6f72: $d5
    ld l, e                                       ; $6f73: $6b
    ld [hl], e                                    ; $6f74: $73
    ldh [$d7], a                                  ; $6f75: $e0 $d7
    cpl                                           ; $6f77: $2f
    ld a, [$9351]                                 ; $6f78: $fa $51 $93
    add a                                         ; $6f7b: $87
    ld l, d                                       ; $6f7c: $6a
    ccf                                           ; $6f7d: $3f
    ld e, d                                       ; $6f7e: $5a
    sbc e                                         ; $6f7f: $9b
    ld c, e                                       ; $6f80: $4b
    xor h                                         ; $6f81: $ac
    ld [hl], e                                    ; $6f82: $73
    ld [$19a4], a                                 ; $6f83: $ea $a4 $19
    ld sp, $47fc                                  ; $6f86: $31 $fc $47
    ld [bc], a                                    ; $6f89: $02
    and [hl]                                      ; $6f8a: $a6
    ld sp, $4276                                  ; $6f8b: $31 $76 $42
    dec d                                         ; $6f8e: $15
    inc a                                         ; $6f8f: $3c
    ld b, h                                       ; $6f90: $44
    add hl, hl                                    ; $6f91: $29
    sbc b                                         ; $6f92: $98
    pop de                                        ; $6f93: $d1
    cp b                                          ; $6f94: $b8
    adc e                                         ; $6f95: $8b
    ld c, h                                       ; $6f96: $4c
    ld [hl], $e3                                  ; $6f97: $36 $e3
    inc bc                                        ; $6f99: $03
    rst $10                                       ; $6f9a: $d7
    cp e                                          ; $6f9b: $bb
    or b                                          ; $6f9c: $b0
    ld [bc], a                                    ; $6f9d: $02
    ld c, a                                       ; $6f9e: $4f
    ld [hl+], a                                   ; $6f9f: $22
    inc b                                         ; $6fa0: $04
    dec [hl]                                      ; $6fa1: $35
    rlca                                          ; $6fa2: $07
    ld [$825a], a                                 ; $6fa3: $ea $5a $82
    and $dc                                       ; $6fa6: $e6 $dc
    rst $38                                       ; $6fa8: $ff
    ld l, c                                       ; $6fa9: $69
    sub a                                         ; $6faa: $97
    ld b, $08                                     ; $6fab: $06 $08
    cp l                                          ; $6fad: $bd
    ld a, [de]                                    ; $6fae: $1a
    xor b                                         ; $6faf: $a8
    add d                                         ; $6fb0: $82
    add a                                         ; $6fb1: $87
    adc [hl]                                      ; $6fb2: $8e
    ldh [$3b], a                                  ; $6fb3: $e0 $3b
    sub a                                         ; $6fb5: $97
    or b                                          ; $6fb6: $b0
    jp hl                                         ; $6fb7: $e9


    rst $30                                       ; $6fb8: $f7
    jp nc, $a127                                  ; $6fb9: $d2 $27 $a1

    call nz, Call_04c_77e2                        ; $6fbc: $c4 $e2 $77
    reti                                          ; $6fbf: $d9


    ld [$aff1], a                                 ; $6fc0: $ea $f1 $af
    ld l, e                                       ; $6fc3: $6b
    ld e, d                                       ; $6fc4: $5a
    inc hl                                        ; $6fc5: $23
    jr jr_04c_6f72                                ; $6fc6: $18 $aa

    sub l                                         ; $6fc8: $95
    sub [hl]                                      ; $6fc9: $96
    adc $fe                                       ; $6fca: $ce $fe
    sub a                                         ; $6fcc: $97
    ld l, e                                       ; $6fcd: $6b
    ld [hl], e                                    ; $6fce: $73
    adc c                                         ; $6fcf: $89
    ld [hl], l                                    ; $6fd0: $75
    ld c, [hl]                                    ; $6fd1: $4e
    sbc l                                         ; $6fd2: $9d
    inc [hl]                                      ; $6fd3: $34
    inc hl                                        ; $6fd4: $23
    add [hl]                                      ; $6fd5: $86
    rst $38                                       ; $6fd6: $ff
    ld c, b                                       ; $6fd7: $48
    ret nz                                        ; $6fd8: $c0

    inc [hl]                                      ; $6fd9: $34
    add $4e                                       ; $6fda: $c6 $4e
    xor b                                         ; $6fdc: $a8
    add d                                         ; $6fdd: $82
    add a                                         ; $6fde: $87
    jr z, jr_04c_6fe6                             ; $6fdf: $28 $05

    inc sp                                        ; $6fe1: $33
    ld a, [de]                                    ; $6fe2: $1a
    and $7c                                       ; $6fe3: $e6 $7c
    rst $30                                       ; $6fe5: $f7

jr_04c_6fe6:
    ld d, [hl]                                    ; $6fe6: $56
    jp hl                                         ; $6fe7: $e9


    ld l, h                                       ; $6fe8: $6c
    ld d, c                                       ; $6fe9: $51
    or l                                          ; $6fea: $b5
    add hl, de                                    ; $6feb: $19
    add hl, hl                                    ; $6fec: $29
    cp b                                          ; $6fed: $b8
    halt                                          ; $6fee: $76
    add h                                         ; $6fef: $84
    cp c                                          ; $6ff0: $b9
    rst $38                                       ; $6ff1: $ff
    db $d3                                        ; $6ff2: $d3
    sbc $f8                                       ; $6ff3: $de $f8
    ld l, [hl]                                    ; $6ff5: $6e
    db $d3                                        ; $6ff6: $d3
    adc h                                         ; $6ff7: $8c
    sub h                                         ; $6ff8: $94
    inc [hl]                                      ; $6ff9: $34
    inc hl                                        ; $6ffa: $23
    ld l, [hl]                                    ; $6ffb: $6e
    add $07                                       ; $6ffc: $c6 $07
    rst $10                                       ; $6ffe: $d7
    cp e                                          ; $6fff: $bb
    or b                                          ; $7000: $b0
    ld [bc], a                                    ; $7001: $02
    rst $28                                       ; $7002: $ef
    and l                                         ; $7003: $a5
    ld c, a                                       ; $7004: $4f
    ld b, d                                       ; $7005: $42
    adc c                                         ; $7006: $89
    rlca                                          ; $7007: $07
    ld [$825a], a                                 ; $7008: $ea $5a $82
    and $9a                                       ; $700b: $e6 $9a
    cp e                                          ; $700d: $bb
    inc [hl]                                      ; $700e: $34
    ld b, b                                       ; $700f: $40
    add sp, $07                                   ; $7010: $e8 $07
    ld a, [de]                                    ; $7012: $1a
    ld a, [hl]                                    ; $7013: $7e
    dec c                                         ; $7014: $0d
    dec [hl]                                      ; $7015: $35
    db $e3                                        ; $7016: $e3
    dec a                                         ; $7017: $3d
    ld b, e                                       ; $7018: $43
    ld b, e                                       ; $7019: $43
    dec [hl]                                      ; $701a: $35
    ret nc                                        ; $701b: $d0

    and $9a                                       ; $701c: $e6 $9a
    or d                                          ; $701e: $b2
    ld a, d                                       ; $701f: $7a
    ld l, [hl]                                    ; $7020: $6e
    ld c, c                                       ; $7021: $49
    or b                                          ; $7022: $b0
    db $f4                                        ; $7023: $f4
    ld h, e                                       ; $7024: $63
    ld b, a                                       ; $7025: $47
    xor c                                         ; $7026: $a9
    and $7c                                       ; $7027: $e6 $7c
    rst $08                                       ; $7029: $cf
    dec e                                         ; $702a: $1d
    xor b                                         ; $702b: $a8
    ld d, b                                       ; $702c: $50
    add a                                         ; $702d: $87
    cp b                                          ; $702e: $b8
    adc c                                         ; $702f: $89
    ld l, d                                       ; $7030: $6a
    call Call_000_2ef9                            ; $7031: $cd $f9 $2e
    or c                                          ; $7034: $b1
    adc $a9                                       ; $7035: $ce $a9
    sub e                                         ; $7037: $93
    ld h, [hl]                                    ; $7038: $66
    call nz, Call_000_1ff0                        ; $7039: $c4 $f0 $1f
    add hl, bc                                    ; $703c: $09
    sbc b                                         ; $703d: $98
    add $d8                                       ; $703e: $c6 $d8
    ld h, c                                       ; $7040: $61
    adc $77                                       ; $7041: $ce $77
    ld l, a                                       ; $7043: $6f
    sub l                                         ; $7044: $95
    adc $16                                       ; $7045: $ce $16
    ld d, l                                       ; $7047: $55
    sbc e                                         ; $7048: $9b
    sub c                                         ; $7049: $91
    add d                                         ; $704a: $82
    ld l, e                                       ; $704b: $6b
    ld b, a                                       ; $704c: $47
    sbc b                                         ; $704d: $98
    ei                                            ; $704e: $fb
    ccf                                           ; $704f: $3f
    db $ed                                        ; $7050: $ed
    adc l                                         ; $7051: $8d
    rst $28                                       ; $7052: $ef
    ld [hl], $cd                                  ; $7053: $36 $cd
    ld c, b                                       ; $7055: $48
    ld c, c                                       ; $7056: $49
    inc sp                                        ; $7057: $33
    ld [c], a                                     ; $7058: $e2
    ld h, [hl]                                    ; $7059: $66
    ld a, h                                       ; $705a: $7c
    nop                                           ; $705b: $00
    rst $10                                       ; $705c: $d7
    cp e                                          ; $705d: $bb
    or b                                          ; $705e: $b0
    ld [bc], a                                    ; $705f: $02
    rst $08                                       ; $7060: $cf
    ld [hl], a                                    ; $7061: $77
    db $fc                                        ; $7062: $fc
    xor c                                         ; $7063: $a9
    add hl, sp                                    ; $7064: $39
    and c                                         ; $7065: $a1
    ld d, h                                       ; $7066: $54
    sub h                                         ; $7067: $94
    cp h                                          ; $7068: $bc
    xor b                                         ; $7069: $a8
    cp h                                          ; $706a: $bc
    sub a                                         ; $706b: $97
    ld a, $09                                     ; $706c: $3e $09
    dec h                                         ; $706e: $25
    ld e, [hl]                                    ; $706f: $5e
    ld [hl], e                                    ; $7070: $73
    ld h, c                                       ; $7071: $61
    and e                                         ; $7072: $a3
    or l                                          ; $7073: $b5
    add hl, sp                                    ; $7074: $39
    ldh a, [$eb]                                  ; $7075: $f0 $eb
    dec sp                                        ; $7077: $3b
    ld a, [hl+]                                   ; $7078: $2a
    xor d                                         ; $7079: $aa
    pop af                                        ; $707a: $f1
    cpl                                           ; $707b: $2f
    add sp, -$57                                  ; $707c: $e8 $a9
    xor c                                         ; $707e: $a9
    ld e, b                                       ; $707f: $58
    db $fc                                        ; $7080: $fc
    ld e, [hl]                                    ; $7081: $5e
    add [hl]                                      ; $7082: $86
    ld b, b                                       ; $7083: $40
    or l                                          ; $7084: $b5
    inc bc                                        ; $7085: $03
    rrca                                          ; $7086: $0f
    ld a, c                                       ; $7087: $79
    ld h, c                                       ; $7088: $61
    add hl, bc                                    ; $7089: $09
    inc sp                                        ; $708a: $33
    ld c, e                                       ; $708b: $4b
    dec bc                                        ; $708c: $0b
    cp d                                          ; $708d: $ba
    and b                                         ; $708e: $a0
    di                                            ; $708f: $f3
    add $2b                                       ; $7090: $c6 $2b
    dec l                                         ; $7092: $2d
    ld a, [$9a04]                                 ; $7093: $fa $04 $9a
    rra                                           ; $7096: $1f
    ld e, $72                                     ; $7097: $1e $72
    db $d3                                        ; $7099: $d3
    xor a                                         ; $709a: $af
    call $d625                                    ; $709b: $cd $25 $d6
    add hl, sp                                    ; $709e: $39
    ld [hl], l                                    ; $709f: $75
    jp nc, Jump_000_188c                          ; $70a0: $d2 $8c $18

    cp $23                                        ; $70a3: $fe $23
    ld bc, $18d3                                  ; $70a5: $01 $d3 $18
    cp e                                          ; $70a8: $bb
    or e                                          ; $70a9: $b3
    jp hl                                         ; $70aa: $e9


    sbc l                                         ; $70ab: $9d
    ld sp, $61c8                                  ; $70ac: $31 $c8 $61
    adc $77                                       ; $70af: $ce $77
    ld l, a                                       ; $70b1: $6f
    sub l                                         ; $70b2: $95
    adc $16                                       ; $70b3: $ce $16
    ld d, l                                       ; $70b5: $55
    sbc e                                         ; $70b6: $9b
    sub c                                         ; $70b7: $91
    add d                                         ; $70b8: $82
    ld l, e                                       ; $70b9: $6b
    ld b, a                                       ; $70ba: $47
    sbc b                                         ; $70bb: $98
    ei                                            ; $70bc: $fb
    ccf                                           ; $70bd: $3f
    db $ed                                        ; $70be: $ed
    adc l                                         ; $70bf: $8d
    rst $28                                       ; $70c0: $ef
    ld [hl], $cd                                  ; $70c1: $36 $cd
    ld c, b                                       ; $70c3: $48
    ld c, c                                       ; $70c4: $49
    inc sp                                        ; $70c5: $33
    ld [c], a                                     ; $70c6: $e2
    ld h, [hl]                                    ; $70c7: $66
    ld a, h                                       ; $70c8: $7c
    nop                                           ; $70c9: $00
    rst $10                                       ; $70ca: $d7
    cp e                                          ; $70cb: $bb
    or b                                          ; $70cc: $b0
    ld [bc], a                                    ; $70cd: $02
    cpl                                           ; $70ce: $2f
    inc l                                         ; $70cf: $2c
    rst $28                                       ; $70d0: $ef
    xor l                                         ; $70d1: $ad
    sub d                                         ; $70d2: $92
    ldh a, [$7d]                                  ; $70d3: $f0 $7d
    ld [hl], e                                    ; $70d5: $73
    ld c, a                                       ; $70d6: $4f
    ld a, l                                       ; $70d7: $7d
    or l                                          ; $70d8: $b5
    rst $28                                       ; $70d9: $ef
    sub [hl]                                      ; $70da: $96
    ld [hl], h                                    ; $70db: $74
    dec hl                                        ; $70dc: $2b
    ld a, [c]                                     ; $70dd: $f2
    ld l, e                                       ; $70de: $6b
    xor [hl]                                      ; $70df: $ae
    call $9e81                                    ; $70e0: $cd $81 $9e
    ld a, [hl]                                    ; $70e3: $7e
    ld a, [$cdae]                                 ; $70e4: $fa $ae $cd
    ldh a, [$7f]                                  ; $70e7: $f0 $7f
    jp z, $ba81                                   ; $70e9: $ca $81 $ba

    ccf                                           ; $70ec: $3f
    ld a, l                                       ; $70ed: $7d
    ld d, e                                       ; $70ee: $53
    db $fc                                        ; $70ef: $fc
    xor [hl]                                      ; $70f0: $ae
    halt                                          ; $70f1: $76
    ld l, a                                       ; $70f2: $6f
    sub l                                         ; $70f3: $95
    adc $16                                       ; $70f4: $ce $16
    ld d, l                                       ; $70f6: $55
    sbc e                                         ; $70f7: $9b
    sub c                                         ; $70f8: $91
    add d                                         ; $70f9: $82
    ld l, e                                       ; $70fa: $6b
    ld b, a                                       ; $70fb: $47
    sbc b                                         ; $70fc: $98
    ei                                            ; $70fd: $fb
    ccf                                           ; $70fe: $3f
    db $ed                                        ; $70ff: $ed
    adc l                                         ; $7100: $8d
    rst $28                                       ; $7101: $ef
    ld [hl], $cd                                  ; $7102: $36 $cd
    ld c, b                                       ; $7104: $48
    ld c, c                                       ; $7105: $49

Call_04c_7106:
    inc sp                                        ; $7106: $33
    ld [c], a                                     ; $7107: $e2
    and $c2                                       ; $7108: $e6 $c2
    ld d, [hl]                                    ; $710a: $56

Jump_04c_710b:
    call nz, Call_04c_4b33                        ; $710b: $c4 $33 $4b
    ld d, b                                       ; $710e: $50
    ld sp, hl                                     ; $710f: $f9
    db $d3                                        ; $7110: $d3
    inc hl                                        ; $7111: $23
    ldh a, [$f3]                                  ; $7112: $f0 $f3
    add $2b                                       ; $7114: $c6 $2b
    xor l                                         ; $7116: $ad
    call $d625                                    ; $7117: $cd $25 $d6
    add hl, sp                                    ; $711a: $39
    ld [hl], l                                    ; $711b: $75
    jp nc, Jump_000_188c                          ; $711c: $d2 $8c $18

    cp $23                                        ; $711f: $fe $23
    ld bc, $18d3                                  ; $7121: $01 $d3 $18
    dec sp                                        ; $7124: $3b
    and c                                         ; $7125: $a1
    ld a, [bc]                                    ; $7126: $0a
    ld e, $a2                                     ; $7127: $1e $a2
    inc d                                         ; $7129: $14
    call z, $a868                                 ; $712a: $cc $68 $a8
    ld [c], a                                     ; $712d: $e2
    inc bc                                        ; $712e: $03
    rst $08                                       ; $712f: $cf
    ld de, $448a                                  ; $7130: $11 $8a $44
    cp a                                          ; $7133: $bf
    jp hl                                         ; $7134: $e9


    ccf                                           ; $7135: $3f
    dec l                                         ; $7136: $2d
    ld l, h                                       ; $7137: $6c
    ld b, l                                       ; $7138: $45
    inc a                                         ; $7139: $3c
    rst $18                                       ; $713a: $df
    add hl, bc                                    ; $713b: $09
    sub l                                         ; $713c: $95
    and l                                         ; $713d: $a5
    add c                                         ; $713e: $81
    sbc [hl]                                      ; $713f: $9e
    ld a, [hl]                                    ; $7140: $7e
    ld h, [hl]                                    ; $7141: $66
    ld d, e                                       ; $7142: $53
    db $fc                                        ; $7143: $fc
    xor [hl]                                      ; $7144: $ae
    halt                                          ; $7145: $76
    rst $18                                       ; $7146: $df
    dec l                                         ; $7147: $2d
    sbc l                                         ; $7148: $9d
    jr nc, jr_04c_715e                            ; $7149: $30 $13

    inc de                                        ; $714b: $13
    jr z, @+$6c                                   ; $714c: $28 $6a

    and l                                         ; $714e: $a5
    sbc d                                         ; $714f: $9a
    ld l, e                                       ; $7150: $6b
    cp c                                          ; $7151: $b9
    rst $30                                       ; $7152: $f7
    ld c, [hl]                                    ; $7153: $4e
    and $7d                                       ; $7154: $e6 $7d
    add hl, bc                                    ; $7156: $09
    pop hl                                        ; $7157: $e1

Call_04c_7158:
    pop hl                                        ; $7158: $e1
    ld d, b                                       ; $7159: $50
    call Call_04c_4fff                            ; $715a: $cd $ff $4f
    ld [bc], a                                    ; $715d: $02

jr_04c_715e:
    ld a, l                                       ; $715e: $7d
    reti                                          ; $715f: $d9


    inc d                                         ; $7160: $14
    cp a                                          ; $7161: $bf
    ld d, a                                       ; $7162: $57
    ld c, d                                       ; $7163: $4a
    jp nc, Jump_000_26a2                          ; $7164: $d2 $a2 $26

    dec sp                                        ; $7167: $3b
    ld l, d                                       ; $7168: $6a
    and b                                         ; $7169: $a0
    dec d                                         ; $716a: $15
    pop af                                        ; $716b: $f1
    add d                                         ; $716c: $82
    adc $77                                       ; $716d: $ce $77
    ld b, d                                       ; $716f: $42
    dec d                                         ; $7170: $15
    ld [hl], a                                    ; $7171: $77
    ld l, a                                       ; $7172: $6f
    ld a, h                                       ; $7173: $7c
    or a                                          ; $7174: $b7
    ld l, c                                       ; $7175: $69
    ld b, [hl]                                    ; $7176: $46
    ld c, d                                       ; $7177: $4a
    sbc d                                         ; $7178: $9a
    ld de, $b5cf                                  ; $7179: $11 $cf $b5
    sbc h                                         ; $717c: $9c
    ld l, c                                       ; $717d: $69
    db $dd                                        ; $717e: $dd
    ret z                                         ; $717f: $c8

    ld c, h                                       ; $7180: $4c
    rst $00                                       ; $7181: $c7
    ld [hl], c                                    ; $7182: $71
    inc a                                         ; $7183: $3c
    rst $18                                       ; $7184: $df
    ld c, c                                       ; $7185: $49
    inc sp                                        ; $7186: $33
    ld [c], a                                     ; $7187: $e2

jr_04c_7188:
    cp c                                          ; $7188: $b9
    sub [hl]                                      ; $7189: $96
    cp e                                          ; $718a: $bb
    inc [hl]                                      ; $718b: $34
    ld [hl+], a                                   ; $718c: $22
    ld sp, $e57b                                  ; $718d: $31 $7b $e5
    inc sp                                        ; $7190: $33
    sub a                                         ; $7191: $97
    call nz, $d71f                                ; $7192: $c4 $1f $d7
    cp e                                          ; $7195: $bb
    or b                                          ; $7196: $b0
    ld [bc], a                                    ; $7197: $02
    rst $28                                       ; $7198: $ef
    add hl, sp                                    ; $7199: $39
    ld b, d                                       ; $719a: $42
    sub c                                         ; $719b: $91
    add sp, $37                                   ; $719c: $e8 $37
    db $fd                                        ; $719e: $fd
    and a                                         ; $719f: $a7
    adc e                                         ; $71a0: $8b
    dec b                                         ; $71a1: $05
    sbc l                                         ; $71a2: $9d
    adc c                                         ; $71a3: $89
    ld a, h                                       ; $71a4: $7c
    dec [hl]                                      ; $71a5: $35
    ld h, $d8                                     ; $71a6: $26 $d8
    add a                                         ; $71a8: $87
    or $de                                        ; $71a9: $f6 $de
    xor c                                         ; $71ab: $a9
    sbc b                                         ; $71ac: $98
    adc d                                         ; $71ad: $8a
    adc e                                         ; $71ae: $8b
    ld a, c                                       ; $71af: $79
    ld sp, $f750                                  ; $71b0: $31 $50 $f7
    and a                                         ; $71b3: $a7
    ld l, a                                       ; $71b4: $6f
    add $bb                                       ; $71b5: $c6 $bb
    call nz, $ced2                                ; $71b7: $c4 $d2 $ce
    adc [hl]                                      ; $71ba: $8e
    ld e, [hl]                                    ; $71bb: $5e
    ret nc                                        ; $71bc: $d0

    sbc l                                         ; $71bd: $9d
    ld a, [hl]                                    ; $71be: $7e
    ld [hl], $d7                                  ; $71bf: $36 $d7
    sbc h                                         ; $71c1: $9c
    ld h, d                                       ; $71c2: $62
    rst $00                                       ; $71c3: $c7
    sub a                                         ; $71c4: $97
    sbc d                                         ; $71c5: $9a
    ld [c], a                                     ; $71c6: $e2
    rst $30                                       ; $71c7: $f7
    sub [hl]                                      ; $71c8: $96
    and l                                         ; $71c9: $a5
    adc c                                         ; $71ca: $89
    sub [hl]                                      ; $71cb: $96
    adc $50                                       ; $71cc: $ce $50
    xor l                                         ; $71ce: $ad
    or h                                          ; $71cf: $b4
    ld [hl], $97                                  ; $71d0: $36 $97
    ld e, b                                       ; $71d2: $58
    rst $20                                       ; $71d3: $e7
    call nc, Call_000_3349                        ; $71d4: $d4 $49 $33
    ld h, d                                       ; $71d7: $62
    ld hl, sp-$71                                 ; $71d8: $f8 $8f
    inc b                                         ; $71da: $04
    ld c, h                                       ; $71db: $4c
    ld h, e                                       ; $71dc: $63
    db $ec                                        ; $71dd: $ec
    add h                                         ; $71de: $84
    ld a, [hl+]                                   ; $71df: $2a
    ld a, b                                       ; $71e0: $78
    adc b                                         ; $71e1: $88
    ld d, d                                       ; $71e2: $52
    jr nc, jr_04c_7188                            ; $71e3: $30 $a3

    ld h, c                                       ; $71e5: $61
    adc $77                                       ; $71e6: $ce $77
    ld l, a                                       ; $71e8: $6f
    sub l                                         ; $71e9: $95
    adc $16                                       ; $71ea: $ce $16
    ld d, l                                       ; $71ec: $55
    sbc e                                         ; $71ed: $9b
    sub c                                         ; $71ee: $91
    add d                                         ; $71ef: $82
    ld l, e                                       ; $71f0: $6b
    ld b, a                                       ; $71f1: $47
    sbc b                                         ; $71f2: $98
    ei                                            ; $71f3: $fb
    ccf                                           ; $71f4: $3f
    db $ed                                        ; $71f5: $ed
    adc l                                         ; $71f6: $8d
    rst $28                                       ; $71f7: $ef
    ld [hl], $cd                                  ; $71f8: $36 $cd
    ld c, b                                       ; $71fa: $48
    ld c, c                                       ; $71fb: $49
    inc sp                                        ; $71fc: $33
    ld [c], a                                     ; $71fd: $e2
    ld h, [hl]                                    ; $71fe: $66
    ld a, h                                       ; $71ff: $7c
    nop                                           ; $7200: $00
    cpl                                           ; $7201: $2f
    add hl, sp                                    ; $7202: $39
    inc bc                                        ; $7203: $03
    or [hl]                                       ; $7204: $b6
    and b                                         ; $7205: $a0
    ld c, e                                       ; $7206: $4b
    inc sp                                        ; $7207: $33
    ld e, d                                       ; $7208: $5a
    ld e, b                                       ; $7209: $58
    sbc $f3                                       ; $720a: $de $f3
    sbc b                                         ; $720c: $98
    ldh [$36], a                                  ; $720d: $e0 $36
    or l                                          ; $720f: $b5
    and a                                         ; $7210: $a7
    jp hl                                         ; $7211: $e9


    dec hl                                        ; $7212: $2b
    or l                                          ; $7213: $b5
    rst $10                                       ; $7214: $d7
    reti                                          ; $7215: $d9


    jr jr_04c_7297                                ; $7216: $18 $7f

    ld e, [hl]                                    ; $7218: $5e
    db $ec                                        ; $7219: $ec
    jp nc, $c488                                  ; $721a: $d2 $88 $c4

    call nz, $ef7b                                ; $721d: $c4 $7b $ef
    ld d, a                                       ; $7220: $57
    ld l, $cd                                     ; $7221: $2e $cd
    ld l, b                                       ; $7223: $68
    xor a                                         ; $7224: $af
    sub h                                         ; $7225: $94
    add sp, -$19                                  ; $7226: $e8 $e7

Jump_04c_7228:
    ld e, $dd                                     ; $7228: $1e $dd
    db $fd                                        ; $722a: $fd
    ld [hl], a                                    ; $722b: $77
    ccf                                           ; $722c: $3f
    or b                                          ; $722d: $b0
    and $7c                                       ; $722e: $e6 $7c
    rst $30                                       ; $7230: $f7
    sbc $a9                                       ; $7231: $de $a9
    sbc b                                         ; $7233: $98
    adc d                                         ; $7234: $8a
    adc e                                         ; $7235: $8b
    ld e, c                                       ; $7236: $59
    ret c                                         ; $7237: $d8

    db $10                                        ; $7238: $10
    ld d, l                                       ; $7239: $55
    push bc                                       ; $723a: $c5
    rlca                                          ; $723b: $07
    ld d, a                                       ; $723c: $57
    dec sp                                        ; $723d: $3b
    ld a, l                                       ; $723e: $7d
    sub a                                         ; $723f: $97
    cp [hl]                                       ; $7240: $be
    ld c, e                                       ; $7241: $4b
    ld d, a                                       ; $7242: $57
    dec c                                         ; $7243: $0d
    push de                                       ; $7244: $d5
    ld c, h                                       ; $7245: $4c
    inc b                                         ; $7246: $04
    xor d                                         ; $7247: $aa
    ccf                                           ; $7248: $3f
    call nc, $0f8c                                ; $7249: $d4 $8c $0f
    ld [hl], a                                    ; $724c: $77
    ld a, $71                                     ; $724d: $3e $71
    rst $28                                       ; $724f: $ef
    ld c, $77                                     ; $7250: $0e $77
    dec a                                         ; $7252: $3d
    ld [hl], c                                    ; $7253: $71
    rst $28                                       ; $7254: $ef
    ld c, $d7                                     ; $7255: $0e $d7
    dec sp                                        ; $7257: $3b
    or a                                          ; $7258: $b7
    and h                                         ; $7259: $a4
    or c                                          ; $725a: $b1
    adc d                                         ; $725b: $8a
    rra                                           ; $725c: $1f
    dec sp                                        ; $725d: $3b
    nop                                           ; $725e: $00
    rst $10                                       ; $725f: $d7
    dec sp                                        ; $7260: $3b
    or a                                          ; $7261: $b7
    and h                                         ; $7262: $a4
    or c                                          ; $7263: $b1
    adc d                                         ; $7264: $8a
    rst $30                                       ; $7265: $f7
    call nz, Call_04c_7bbd                        ; $7266: $c4 $bd $7b
    pop hl                                        ; $7269: $e1
    dec d                                         ; $726a: $15
    pop af                                        ; $726b: $f1
    rlca                                          ; $726c: $07
    rst $10                                       ; $726d: $d7
    cp e                                          ; $726e: $bb
    inc de                                        ; $726f: $13
    ld h, $ef                                     ; $7270: $26 $ef
    adc c                                         ; $7272: $89
    ld a, e                                       ; $7273: $7b
    rst $30                                       ; $7274: $f7
    jp nz, $e22b                                  ; $7275: $c2 $2b $e2

    rrca                                          ; $7278: $0f
    ld c, a                                       ; $7279: $4f
    ld l, d                                       ; $727a: $6a
    or l                                          ; $727b: $b5
    and b                                         ; $727c: $a0
    rrc a                                         ; $727d: $cb $0f
    ld b, $da                                     ; $727f: $06 $da
    sbc h                                         ; $7281: $9c
    inc [hl]                                      ; $7282: $34
    inc hl                                        ; $7283: $23
    ld l, [hl]                                    ; $7284: $6e
    adc $b5                                       ; $7285: $ce $b5
    call c, $a553                                 ; $7287: $dc $53 $a5
    rst $18                                       ; $728a: $df
    ret z                                         ; $728b: $c8

    ld [hl], a                                    ; $728c: $77
    sub a                                         ; $728d: $97
    sub l                                         ; $728e: $95
    xor d                                         ; $728f: $aa
    cp c                                          ; $7290: $b9
    and $de                                       ; $7291: $e6 $de
    ld hl, sp+$6e                                 ; $7293: $f8 $6e
    db $d3                                        ; $7295: $d3
    adc h                                         ; $7296: $8c

jr_04c_7297:
    call nc, Call_04c_6414                        ; $7297: $d4 $14 $64
    ld b, [hl]                                    ; $729a: $46
    ld a, h                                       ; $729b: $7c
    or c                                          ; $729c: $b1
    add sp, -$69                                  ; $729d: $e8 $97
    rla                                           ; $729f: $17
    ld [hl], h                                    ; $72a0: $74
    sbc $8c                                       ; $72a1: $de $8c
    ld d, $99                                     ; $72a3: $16 $99
    pop de                                        ; $72a5: $d1
    ld d, h                                       ; $72a6: $54
    ld d, [hl]                                    ; $72a7: $56
    cpl                                           ; $72a8: $2f
    ld l, d                                       ; $72a9: $6a
    daa                                           ; $72aa: $27
    inc d                                         ; $72ab: $14
    ld h, b                                       ; $72ac: $60
    ld h, [hl]                                    ; $72ad: $66
    inc sp                                        ; $72ae: $33
    ld a, $00                                     ; $72af: $3e $00
    ld c, a                                       ; $72b1: $4f
    ld l, d                                       ; $72b2: $6a
    or l                                          ; $72b3: $b5
    and b                                         ; $72b4: $a0
    inc bc                                        ; $72b5: $03
    ld l, l                                       ; $72b6: $6d
    ld c, [hl]                                    ; $72b7: $4e
    ld b, c                                       ; $72b8: $41
    ld d, h                                       ; $72b9: $54
    ld b, a                                       ; $72ba: $47
    ld [hl], $17                                  ; $72bb: $36 $17
    or l                                          ; $72bd: $b5
    or h                                          ; $72be: $b4
    or b                                          ; $72bf: $b0
    ld [bc], a                                    ; $72c0: $02
    ld e, a                                       ; $72c1: $5f
    ld c, h                                       ; $72c2: $4c
    ld a, [hl-]                                   ; $72c3: $3a
    sbc c                                         ; $72c4: $99
    call Call_04c_4ef9                            ; $72c5: $cd $f9 $4e
    sbc d                                         ; $72c8: $9a

Call_04c_72c9:
    ld de, $e737                                  ; $72c9: $11 $37 $e7
    ld e, d                                       ; $72cc: $5a
    xor $a9                                       ; $72cd: $ee $a9
    jp nc, $e46f                                  ; $72cf: $d2 $6f $e4

    cp e                                          ; $72d2: $bb
    bit 1, d                                      ; $72d3: $cb $4a
    push de                                       ; $72d5: $d5
    ld e, h                                       ; $72d6: $5c
    ld [hl], e                                    ; $72d7: $73
    ld l, a                                       ; $72d8: $6f
    ld a, h                                       ; $72d9: $7c
    or a                                          ; $72da: $b7
    ld l, c                                       ; $72db: $69
    ld b, [hl]                                    ; $72dc: $46
    ld l, d                                       ; $72dd: $6a
    ld b, c                                       ; $72de: $41
    rla                                           ; $72df: $17
    ld d, [hl]                                    ; $72e0: $56
    ld b, e                                       ; $72e1: $43
    call $00f8                                    ; $72e2: $cd $f8 $00
    rst $28                                       ; $72e5: $ef
    ld a, l                                       ; $72e6: $7d
    ld [bc], a                                    ; $72e7: $02
    di                                            ; $72e8: $f3
    add $0b                                       ; $72e9: $c6 $0b
    ld a, [hl-]                                   ; $72eb: $3a
    ret nc                                        ; $72ec: $d0

    db $d3                                        ; $72ed: $d3
    rst $08                                       ; $72ee: $cf
    ld c, [hl]                                    ; $72ef: $4e
    sbc d                                         ; $72f0: $9a
    ld de, $e737                                  ; $72f1: $11 $37 $e7
    ld e, d                                       ; $72f4: $5a
    xor $a9                                       ; $72f5: $ee $a9
    jp nc, $e46f                                  ; $72f7: $d2 $6f $e4

    cp e                                          ; $72fa: $bb
    bit 1, d                                      ; $72fb: $cb $4a
    push de                                       ; $72fd: $d5
    ld e, h                                       ; $72fe: $5c

Jump_04c_72ff:
    ld [hl], e                                    ; $72ff: $73
    ld l, a                                       ; $7300: $6f
    ld a, h                                       ; $7301: $7c
    or a                                          ; $7302: $b7
    ld l, c                                       ; $7303: $69
    ld b, [hl]                                    ; $7304: $46
    ld l, d                                       ; $7305: $6a
    rra                                           ; $7306: $1f
    sbc d                                         ; $7307: $9a
    ei                                            ; $7308: $fb
    ccf                                           ; $7309: $3f
    sub c                                         ; $730a: $91
    sbc c                                         ; $730b: $99
    ld e, a                                       ; $730c: $5f
    ld e, b                                       ; $730d: $58
    add c                                         ; $730e: $81
    db $e3                                        ; $730f: $e3
    dec a                                         ; $7310: $3d
    rst $10                                       ; $7311: $d7
    db $d3                                        ; $7312: $d3
    rst $08                                       ; $7313: $cf
    ld c, [hl]                                    ; $7314: $4e
    sbc d                                         ; $7315: $9a
    ld de, $e737                                  ; $7316: $11 $37 $e7
    sub [hl]                                      ; $7319: $96
    inc b                                         ; $731a: $04
    or d                                          ; $731b: $b2
    db $f4                                        ; $731c: $f4
    call Call_04c_5699                            ; $731d: $cd $99 $56
    dec bc                                        ; $7320: $0b
    cp d                                          ; $7321: $ba
    ld [hl], e                                    ; $7322: $73
    and a                                         ; $7323: $a7
    inc e                                         ; $7324: $1c
    jr c, @-$42                                   ; $7325: $38 $bc

    jp z, Jump_04c_7afd                           ; $7327: $ca $fd $7a

    and b                                         ; $732a: $a0
    ld [bc], a                                    ; $732b: $02
    add hl, sp                                    ; $732c: $39
    jr z, jr_04c_73a8                             ; $732d: $28 $79

    sbc b                                         ; $732f: $98
    ld l, e                                       ; $7330: $6b
    ld [hl], e                                    ; $7331: $73
    jp nc, Jump_000_188c                          ; $7332: $d2 $8c $18

    cp $23                                        ; $7335: $fe $23
    ld bc, $18d3                                  ; $7337: $01 $d3 $18
    dec de                                        ; $733a: $1b
    rra                                           ; $733b: $1f
    rst $10                                       ; $733c: $d7
    db $e4                                        ; $733d: $e4
    jp nz, $030a                                  ; $733e: $c2 $0a $03

    dec c                                         ; $7341: $0d
    rst $38                                       ; $7342: $ff
    daa                                           ; $7343: $27
    ccf                                           ; $7344: $3f
    ld l, a                                       ; $7345: $6f
    inc a                                         ; $7346: $3c
    rst $18                                       ; $7347: $df
    cp l                                          ; $7348: $bd
    db $dd                                        ; $7349: $dd
    xor b                                         ; $734a: $a8
    ld a, [$3e2e]                                 ; $734b: $fa $2e $3e
    or l                                          ; $734e: $b5
    ld a, [de]                                    ; $734f: $1a
    inc de                                        ; $7350: $13
    ld c, h                                       ; $7351: $4c

Call_04c_7352:
    sbc d                                         ; $7352: $9a
    ld de, $e737                                  ; $7353: $11 $37 $e7
    ld e, d                                       ; $7356: $5a
    xor $a9                                       ; $7357: $ee $a9
    jp nc, $e46f                                  ; $7359: $d2 $6f $e4

    cp e                                          ; $735c: $bb
    bit 1, d                                      ; $735d: $cb $4a
    push de                                       ; $735f: $d5
    ld e, h                                       ; $7360: $5c
    ld [hl], e                                    ; $7361: $73
    ld l, a                                       ; $7362: $6f
    ld a, h                                       ; $7363: $7c
    or a                                          ; $7364: $b7
    ld l, c                                       ; $7365: $69
    ld b, [hl]                                    ; $7366: $46
    ld l, d                                       ; $7367: $6a
    ld l, [hl]                                    ; $7368: $6e
    ld c, c                                       ; $7369: $49
    cp $0f                                        ; $736a: $fe $0f
    pop af                                        ; $736c: $f1
    ld e, h                                       ; $736d: $5c
    or h                                          ; $736e: $b4
    ld sp, hl                                     ; $736f: $f9
    adc $2d                                       ; $7370: $ce $2d
    ld b, c                                       ; $7372: $41
    ld h, $25                                     ; $7373: $26 $25
    ld h, $98                                     ; $7375: $26 $98
    ld l, e                                       ; $7377: $6b
    cp c                                          ; $7378: $b9
    and a                                         ; $7379: $a7
    jp $ff0f                                      ; $737a: $c3 $0f $ff


    ld [de], a                                    ; $737d: $12
    and l                                         ; $737e: $a5
    inc l                                         ; $737f: $2c
    xor c                                         ; $7380: $a9
    ld hl, sp+$00                                 ; $7381: $f8 $00
    ld l, a                                       ; $7383: $6f
    db $fd                                        ; $7384: $fd
    ld c, a                                       ; $7385: $4f
    di                                            ; $7386: $f3
    ld e, l                                       ; $7387: $5d
    call nc, $9e2a                                ; $7388: $d4 $2a $9e
    inc h                                         ; $738b: $24
    add e                                         ; $738c: $83
    add a                                         ; $738d: $87
    adc h                                         ; $738e: $8c
    and b                                         ; $738f: $a0

Call_04c_7390:
    add e                                         ; $7390: $83
    rst $38                                       ; $7391: $ff
    ld c, b                                       ; $7392: $48
    ret nz                                        ; $7393: $c0

    inc [hl]                                      ; $7394: $34
    add $aa                                       ; $7395: $c6 $aa
    cp c                                          ; $7397: $b9
    sub [hl]                                      ; $7398: $96
    sub e                                         ; $7399: $93
    ld h, [hl]                                    ; $739a: $66
    call nz, $b9cd                                ; $739b: $c4 $cd $b9
    sub [hl]                                      ; $739e: $96
    ld a, e                                       ; $739f: $7b
    xor d                                         ; $73a0: $aa
    db $f4                                        ; $73a1: $f4
    dec de                                        ; $73a2: $1b
    ld sp, hl                                     ; $73a3: $f9
    xor $b2                                       ; $73a4: $ee $b2
    ld d, d                                       ; $73a6: $52
    dec [hl]                                      ; $73a7: $35

jr_04c_73a8:
    rst $10                                       ; $73a8: $d7
    call c, $df1b                                 ; $73a9: $dc $1b $df
    ld l, l                                       ; $73ac: $6d
    sbc d                                         ; $73ad: $9a
    sub c                                         ; $73ae: $91
    ld e, d                                       ; $73af: $5a
    ld e, b                                       ; $73b0: $58
    ld h, c                                       ; $73b1: $61
    ld b, c                                       ; $73b2: $41
    ld [hl], a                                    ; $73b3: $77
    xor [hl]                                      ; $73b4: $ae
    or $67                                        ; $73b5: $f6 $67
    adc e                                         ; $73b7: $8b
    cp d                                          ; $73b8: $ba
    cpl                                           ; $73b9: $2f
    jp c, $d04f                                   ; $73ba: $da $4f $d0

    db $d3                                        ; $73bd: $d3
    rst $08                                       ; $73be: $cf
    ld c, [hl]                                    ; $73bf: $4e
    sbc d                                         ; $73c0: $9a
    ld de, $9737                                  ; $73c1: $11 $37 $97
    rst $18                                       ; $73c4: $df
    inc hl                                        ; $73c5: $23
    adc b                                         ; $73c6: $88
    db $e3                                        ; $73c7: $e3
    ld hl, sp-$75                                 ; $73c8: $f8 $8b
    and [hl]                                      ; $73ca: $a6
    ld a, [hl]                                    ; $73cb: $7e
    and h                                         ; $73cc: $a4
    or $bf                                        ; $73cd: $f6 $bf
    sbc h                                         ; $73cf: $9c
    ld l, c                                       ; $73d0: $69
    ld e, l                                       ; $73d1: $5d
    and c                                         ; $73d2: $a1
    jr jr_04c_73f4                                ; $73d3: $18 $1f

    rst $08                                       ; $73d5: $cf
    ret nc                                        ; $73d6: $d0

    adc $18                                       ; $73d7: $ce $18
    db $e4                                        ; $73d9: $e4
    xor $bd                                       ; $73da: $ee $bd
    rst $20                                       ; $73dc: $e7
    sbc $49                                       ; $73dd: $de $49
    inc sp                                        ; $73df: $33
    ld [c], a                                     ; $73e0: $e2
    and $5c                                       ; $73e1: $e6 $5c
    srl l                                         ; $73e3: $cb $3d
    ld d, l                                       ; $73e5: $55
    ld a, [$7c8d]                                 ; $73e6: $fa $8d $7c
    ld [hl], a                                    ; $73e9: $77
    ld e, c                                       ; $73ea: $59
    xor c                                         ; $73eb: $a9
    sbc d                                         ; $73ec: $9a
    ld l, e                                       ; $73ed: $6b
    xor $8d                                       ; $73ee: $ee $8d
    rst $28                                       ; $73f0: $ef
    ld [hl], $cd                                  ; $73f1: $36 $cd
    ld c, b                                       ; $73f3: $48

jr_04c_73f4:
    ld e, l                                       ; $73f4: $5d
    db $ec                                        ; $73f5: $ec
    and a                                         ; $73f6: $a7
    cpl                                           ; $73f7: $2f
    cp c                                          ; $73f8: $b9
    dec h                                         ; $73f9: $25
    rst $18                                       ; $73fa: $df
    ld l, d                                       ; $73fb: $6a
    ccf                                           ; $73fc: $3f
    call z, Call_04c_7bdd                         ; $73fd: $cc $dd $7b
    rst $28                                       ; $7400: $ef
    and h                                         ; $7401: $a4
    xor [hl]                                      ; $7402: $ae
    ld b, e                                       ; $7403: $43
    call $00f8                                    ; $7404: $cd $f8 $00
    rst $08                                       ; $7407: $cf
    ret nc                                        ; $7408: $d0

    adc $18                                       ; $7409: $ce $18
    db $e4                                        ; $740b: $e4
    ld e, $bc                                     ; $740c: $1e $bc
    ld h, a                                       ; $740e: $67
    ldh a, [$1f]                                  ; $740f: $f0 $1f
    add hl, bc                                    ; $7411: $09
    sbc b                                         ; $7412: $98
    add $58                                       ; $7413: $c6 $58
    dec [hl]                                      ; $7415: $35
    rst $10                                       ; $7416: $d7
    ld [hl], d                                    ; $7417: $72
    jp nc, $b88c                                  ; $7418: $d2 $8c $b8

    add hl, sp                                    ; $741b: $39
    rst $10                                       ; $741c: $d7
    ld [hl], d                                    ; $741d: $72
    ld c, a                                       ; $741e: $4f
    sub l                                         ; $741f: $95
    ld a, [hl]                                    ; $7420: $7e
    inc hl                                        ; $7421: $23
    rst $18                                       ; $7422: $df
    ld e, l                                       ; $7423: $5d
    ld d, [hl]                                    ; $7424: $56
    xor d                                         ; $7425: $aa
    and $9a                                       ; $7426: $e6 $9a
    ld a, e                                       ; $7428: $7b
    db $e3                                        ; $7429: $e3
    cp e                                          ; $742a: $bb
    ld c, l                                       ; $742b: $4d
    inc sp                                        ; $742c: $33
    ld d, d                                       ; $742d: $52
    pop af                                        ; $742e: $f1
    xor [hl]                                      ; $742f: $ae
    halt                                          ; $7430: $76
    ld d, c                                       ; $7431: $51
    xor e                                         ; $7432: $ab
    cp b                                          ; $7433: $b8
    sub e                                         ; $7434: $93
    ld h, [hl]                                    ; $7435: $66
    call nz, Call_000_1ff0                        ; $7436: $c4 $f0 $1f
    add hl, bc                                    ; $7439: $09
    sbc b                                         ; $743a: $98
    add $58                                       ; $743b: $c6 $58
    or l                                          ; $743d: $b5
    or b                                          ; $743e: $b0
    ld a, [de]                                    ; $743f: $1a
    ld l, d                                       ; $7440: $6a
    ld l, $e8                                     ; $7441: $2e $e8
    push bc                                       ; $7443: $c5
    call nc, Call_000_228f                        ; $7444: $d4 $8f $22
    inc b                                         ; $7447: $04
    db $dd                                        ; $7448: $dd
    add hl, de                                    ; $7449: $19
    add e                                         ; $744a: $83
    sbc h                                         ; $744b: $9c
    rst $38                                       ; $744c: $ff
    pop de                                        ; $744d: $d1
    sbc d                                         ; $744e: $9a
    dec hl                                        ; $744f: $2b
    db $ed                                        ; $7450: $ed
    adc h                                         ; $7451: $8c
    ld b, c                                       ; $7452: $41
    xor [hl]                                      ; $7453: $ae
    or h                                          ; $7454: $b4
    rst $38                                       ; $7455: $ff
    push hl                                       ; $7456: $e5
    jp c, Jump_04c_641c                           ; $7457: $da $1c $64

    ld b, [hl]                                    ; $745a: $46
    di                                            ; $745b: $f3
    ret c                                         ; $745c: $d8

    add hl, hl                                    ; $745d: $29
    ld a, b                                       ; $745e: $78
    ld l, b                                       ; $745f: $68
    cp [hl]                                       ; $7460: $be
    sub e                                         ; $7461: $93
    ld c, [hl]                                    ; $7462: $4e
    ld h, [hl]                                    ; $7463: $66
    ld [hl], e                                    ; $7464: $73
    ld h, [hl]                                    ; $7465: $66
    ld c, c                                       ; $7466: $49
    ld [$b90f], sp                                ; $7467: $08 $0f $b9
    add hl, de                                    ; $746a: $19
    rra                                           ; $746b: $1f
    rst $08                                       ; $746c: $cf
    ret nc                                        ; $746d: $d0

    adc $18                                       ; $746e: $ce $18
    db $e4                                        ; $7470: $e4
    jp c, Jump_04c_641c                           ; $7471: $da $1c $64

    ld b, [hl]                                    ; $7474: $46
    sub e                                         ; $7475: $93
    ld h, [hl]                                    ; $7476: $66
    call nz, $b9cd                                ; $7477: $c4 $cd $b9
    sub [hl]                                      ; $747a: $96
    ld a, e                                       ; $747b: $7b
    xor d                                         ; $747c: $aa
    db $f4                                        ; $747d: $f4
    dec de                                        ; $747e: $1b
    ld sp, hl                                     ; $747f: $f9
    xor $b2                                       ; $7480: $ee $b2
    ld d, d                                       ; $7482: $52
    dec [hl]                                      ; $7483: $35
    rst $10                                       ; $7484: $d7
    call c, $df1b                                 ; $7485: $dc $1b $df
    ld l, l                                       ; $7488: $6d
    sbc d                                         ; $7489: $9a
    sub c                                         ; $748a: $91
    sbc d                                         ; $748b: $9a
    ld e, e                                       ; $748c: $5b
    ld d, d                                       ; $748d: $52
    db $fc                                        ; $748e: $fc
    ld hl, $87de                                  ; $748f: $21 $de $87
    or $de                                        ; $7492: $f6 $de
    xor c                                         ; $7494: $a9
    sbc b                                         ; $7495: $98
    adc d                                         ; $7496: $8a
    adc e                                         ; $7497: $8b
    add hl, de                                    ; $7498: $19
    rst $28                                       ; $7499: $ef
    cp l                                          ; $749a: $bd
    ld e, a                                       ; $749b: $5f
    add hl, sp                                    ; $749c: $39
    ldh a, [$eb]                                  ; $749d: $f0 $eb
    cpl                                           ; $749f: $2f
    and $2d                                       ; $74a0: $e6 $2d
    ld [hl], a                                    ; $74a2: $77
    halt                                          ; $74a3: $76
    db $f4                                        ; $74a4: $f4
    add d                                         ; $74a5: $82
    xor $dc                                       ; $74a6: $ee $dc
    ld b, l                                       ; $74a8: $45
    xor b                                         ; $74a9: $a8
    inc d                                         ; $74aa: $14
    inc a                                         ; $74ab: $3c
    call nz, Call_04c_5ce6                        ; $74ac: $c4 $e6 $5c
    ld c, h                                       ; $74af: $4c
    rst $18                                       ; $74b0: $df
    adc h                                         ; $74b1: $8c
    rrca                                          ; $74b2: $0f
    ld c, a                                       ; $74b3: $4f
    ld l, d                                       ; $74b4: $6a
    or l                                          ; $74b5: $b5
    and b                                         ; $74b6: $a0
    inc hl                                        ; $74b7: $23
    rlca                                          ; $74b8: $07
    dec [hl]                                      ; $74b9: $35
    rst $28                                       ; $74ba: $ef
    ld b, a                                       ; $74bb: $47
    rrc a                                         ; $74bc: $cb $0f
    ld d, $b5                                     ; $74be: $16 $b5
    inc [hl]                                      ; $74c0: $34
    ld l, c                                       ; $74c1: $69
    ld b, [hl]                                    ; $74c2: $46
    call c, Call_04c_6b9c                         ; $74c3: $dc $9c $6b
    cp c                                          ; $74c6: $b9
    and a                                         ; $74c7: $a7
    ld c, d                                       ; $74c8: $4a
    cp a                                          ; $74c9: $bf
    sub c                                         ; $74ca: $91
    rst $28                                       ; $74cb: $ef
    ld l, $2b                                     ; $74cc: $2e $2b
    ld d, l                                       ; $74ce: $55
    ld [hl], e                                    ; $74cf: $73
    call $f1bd                                    ; $74d0: $cd $bd $f1
    db $dd                                        ; $74d3: $dd
    and [hl]                                      ; $74d4: $a6
    add hl, de                                    ; $74d5: $19
    xor c                                         ; $74d6: $a9
    ld [hl], c                                    ; $74d7: $71
    daa                                           ; $74d8: $27
    add hl, bc                                    ; $74d9: $09
    inc bc                                        ; $74da: $03
    ret nc                                        ; $74db: $d0

    cp h                                          ; $74dc: $bc
    sbc b                                         ; $74dd: $98
    ld [hl], h                                    ; $74de: $74
    ld [hl], d                                    ; $74df: $72
    ld b, c                                       ; $74e0: $41
    rla                                           ; $74e1: $17
    or l                                          ; $74e2: $b5
    inc [hl]                                      ; $74e3: $34
    ld hl, sp-$71                                 ; $74e4: $f8 $8f
    inc b                                         ; $74e6: $04
    ld c, h                                       ; $74e7: $4c
    ld h, e                                       ; $74e8: $63
    xor h                                         ; $74e9: $ac
    ld a, [de]                                    ; $74ea: $1a
    xor b                                         ; $74eb: $a8
    ld b, b                                       ; $74ec: $40
    ld c, $ca                                     ; $74ed: $0e $ca
    ld h, [hl]                                    ; $74ef: $66
    ld a, h                                       ; $74f0: $7c
    nop                                           ; $74f1: $00
    sub a                                         ; $74f2: $97
    push hl                                       ; $74f3: $e5
    and c                                         ; $74f4: $a1
    ld e, d                                       ; $74f5: $5a
    ld h, d                                       ; $74f6: $62
    ld a, c                                       ; $74f7: $79
    rst $20                                       ; $74f8: $e7
    cp a                                          ; $74f9: $bf
    ld [de], a                                    ; $74fa: $12
    ret c                                         ; $74fb: $d8

    adc a                                         ; $74fc: $8f
    sub $e6                                       ; $74fd: $d6 $e6
    add h                                         ; $74ff: $84
    ld c, a                                       ; $7500: $4f
    adc d                                         ; $7501: $8a
    add l                                         ; $7502: $85
    ld d, [hl]                                    ; $7503: $56
    ei                                            ; $7504: $fb
    ld [hl], c                                    ; $7505: $71
    ld [hl], a                                    ; $7506: $77
    add $20                                       ; $7507: $c6 $20

Call_04c_7509:
    db $e3                                        ; $7509: $e3
    ld e, l                                       ; $750a: $5d
    sub e                                         ; $750b: $93
    inc de                                        ; $750c: $13
    sbc d                                         ; $750d: $9a
    inc de                                        ; $750e: $13
    ld a, [bc]                                    ; $750f: $0a
    ld a, [hl]                                    ; $7510: $7e
    ld h, [hl]                                    ; $7511: $66
    ld [hl], e                                    ; $7512: $73
    and [hl]                                      ; $7513: $a6
    push de                                       ; $7514: $d5
    jp c, Jump_04c_441c                           ; $7515: $da $1c $44

    ld d, l                                       ; $7518: $55
    xor d                                         ; $7519: $aa
    ld [hl], a                                    ; $751a: $77
    ld b, c                                       ; $751b: $41
    ld b, $61                                     ; $751c: $06 $61
    add hl, hl                                    ; $751e: $29
    ld a, $00                                     ; $751f: $3e $00
    xor a                                         ; $7521: $af
    ld a, h                                       ; $7522: $7c
    ld h, d                                       ; $7523: $62
    ld a, [hl+]                                   ; $7524: $2a
    ld [hl], e                                    ; $7525: $73
    ld [hl], e                                    ; $7526: $73
    ld h, a                                       ; $7527: $67
    inc c                                         ; $7528: $0c
    ld [hl], d                                    ; $7529: $72
    ld c, l                                       ; $752a: $4d
    db $10                                        ; $752b: $10
    rst $28                                       ; $752c: $ef
    jp nc, Jump_04c_7dc9                          ; $752d: $d2 $c9 $7d

    ret nc                                        ; $7530: $d0

jr_04c_7531:
    sbc h                                         ; $7531: $9c
    ei                                            ; $7532: $fb
    dec [hl]                                      ; $7533: $35
    ld l, b                                       ; $7534: $68
    ld l, $ea                                     ; $7535: $2e $ea
    db $fc                                        ; $7537: $fc
    rst $38                                       ; $7538: $ff
    inc [hl]                                      ; $7539: $34
    rst $18                                       ; $753a: $df
    ld c, c                                       ; $753b: $49
    adc e                                         ; $753c: $8b
    ld c, d                                       ; $753d: $4a
    pop af                                        ; $753e: $f1
    ld bc, $942f                                  ; $753f: $01 $2f $94
    rla                                           ; $7542: $17
    sbc c                                         ; $7543: $99
    pop de                                        ; $7544: $d1
    ld [de], a                                    ; $7545: $12
    set 7, e                                      ; $7546: $cb $fb
    ret nc                                        ; $7548: $d0

    ld a, h                                       ; $7549: $7c
    rlca                                          ; $754a: $07
    ret z                                         ; $754b: $c8

    ld [de], a                                    ; $754c: $12
    set 1, l                                      ; $754d: $cb $cd
    add hl, bc                                    ; $754f: $09
    sbc a                                         ; $7550: $9f
    inc d                                         ; $7551: $14
    dec bc                                        ; $7552: $0b
    xor l                                         ; $7553: $ad
    or $cd                                        ; $7554: $f6 $cd
    ld a, b                                       ; $7556: $78
    ld d, a                                       ; $7557: $57
    or c                                          ; $7558: $b1
    dec sp                                        ; $7559: $3b
    ld h, e                                       ; $755a: $63
    sub b                                         ; $755b: $90
    rrc a                                         ; $755c: $cb $0f
    ld c, h                                       ; $755e: $4c
    rst $28                                       ; $755f: $ef
    and a                                         ; $7560: $a7
    rst $38                                       ; $7561: $ff
    sbc a                                         ; $7562: $9f
    nop                                           ; $7563: $00
    db $fd                                        ; $7564: $fd
    db $f4                                        ; $7565: $f4
    push de                                       ; $7566: $d5
    jr jr_04c_7531                                ; $7567: $18 $c8

    ld hl, sp+$00                                 ; $7569: $f8 $00
    rst $10                                       ; $756b: $d7
    db $e4                                        ; $756c: $e4
    add h                                         ; $756d: $84
    and $84                                       ; $756e: $e6 $84
    add d                                         ; $7570: $82
    sbc a                                         ; $7571: $9f
    reti                                          ; $7572: $d9


    sbc h                                         ; $7573: $9c
    ld l, c                                       ; $7574: $69
    or l                                          ; $7575: $b5
    ld [hl], $e7                                  ; $7576: $36 $e7
    ld a, [hl]                                    ; $7578: $7e
    xor l                                         ; $7579: $ad
    db $eb                                        ; $757a: $eb
    ld de, $b14c                                  ; $757b: $11 $4c $b1
    and l                                         ; $757e: $a5
    rla                                           ; $757f: $17
    ld e, d                                       ; $7580: $5a
    db $ed                                        ; $7581: $ed
    cpl                                           ; $7582: $2f
    ld d, $99                                     ; $7583: $16 $99
    pop de                                        ; $7585: $d1
    inc e                                         ; $7586: $1c
    db $e4                                        ; $7587: $e4

jr_04c_7588:
    ld h, d                                       ; $7588: $62
    ld a, [$0c6a]                                 ; $7589: $fa $6a $0c
    db $e4                                        ; $758c: $e4
    add h                                         ; $758d: $84
    and $50                                       ; $758e: $e6 $50
    ld c, [hl]                                    ; $7590: $4e
    ld hl, sp-$5c                                 ; $7591: $f8 $a4
    ld e, b                                       ; $7593: $58
    ld l, b                                       ; $7594: $68
    or l                                          ; $7595: $b5
    rra                                           ; $7596: $1f
    add sp, -$17                                  ; $7597: $e8 $e9
    sub e                                         ; $7599: $93
    ld l, a                                       ; $759a: $6f
    add $07                                       ; $759b: $c6 $07
    ld d, a                                       ; $759d: $57
    or c                                          ; $759e: $b1
    add e                                         ; $759f: $83
    ld a, $31                                     ; $75a0: $3e $31
    sub l                                         ; $75a2: $95
    cp c                                          ; $75a3: $b9
    cp c                                          ; $75a4: $b9
    inc sp                                        ; $75a5: $33
    ld b, $b9                                     ; $75a6: $06 $b9
    ld [hl], $27                                  ; $75a8: $36 $27
    or h                                          ; $75aa: $b4
    inc e                                         ; $75ab: $1c
    ld [hl], h                                    ; $75ac: $74
    ld c, d                                       ; $75ad: $4a
    ld h, e                                       ; $75ae: $63
    db $10                                        ; $75af: $10
    sub l                                         ; $75b0: $95
    db $10                                        ; $75b1: $10
    ld e, h                                       ; $75b2: $5c
    call z, Call_04c_5ab4                         ; $75b3: $cc $b4 $5a
    ret nc                                        ; $75b6: $d0

    add l                                         ; $75b7: $85
    push hl                                       ; $75b8: $e5
    ld b, l                                       ; $75b9: $45
    jr jr_04c_7588                                ; $75ba: $18 $cc

    dec h                                         ; $75bc: $25
    inc sp                                        ; $75bd: $33
    ret nz                                        ; $75be: $c0

    pop af                                        ; $75bf: $f1
    ld bc, $e4d7                                  ; $75c0: $01 $d7 $e4
    jp nz, $8b0a                                  ; $75c3: $c2 $0a $8b

    ld a, [hl-]                                   ; $75c6: $3a
    db $d3                                        ; $75c7: $d3
    adc h                                         ; $75c8: $8c
    add c                                         ; $75c9: $81
    sbc a                                         ; $75ca: $9f
    adc c                                         ; $75cb: $89
    ld b, b                                       ; $75cc: $40
    ld e, l                                       ; $75cd: $5d
    ld [hl-], a                                   ; $75ce: $32
    inc bc                                        ; $75cf: $03
    ld a, [hl]                                    ; $75d0: $7e
    pop hl                                        ; $75d1: $e1
    rst $28                                       ; $75d2: $ef
    jp nz, $cef2                                  ; $75d3: $c2 $f2 $ce

    rst $18                                       ; $75d6: $df
    reti                                          ; $75d7: $d9


    add hl, de                                    ; $75d8: $19
    add e                                         ; $75d9: $83
    call c, $a68f                                 ; $75da: $dc $8f $a6
    ldh [$e1], a                                  ; $75dd: $e0 $e1
    ld [hl], a                                    ; $75df: $77
    ld a, h                                       ; $75e0: $7c
    ld c, c                                       ; $75e1: $49
    adc l                                         ; $75e2: $8d
    cp e                                          ; $75e3: $bb
    or b                                          ; $75e4: $b0
    add d                                         ; $75e5: $82
    ret nc                                        ; $75e6: $d0

    adc h                                         ; $75e7: $8c
    rrca                                          ; $75e8: $0f
    ld d, a                                       ; $75e9: $57
    cp e                                          ; $75ea: $bb
    ld h, $82                                     ; $75eb: $26 $82
    ld c, [hl]                                    ; $75ed: $4e
    ld a, a                                       ; $75ee: $7f
    dec a                                         ; $75ef: $3d
    adc a                                         ; $75f0: $8f
    dec e                                         ; $75f1: $1d
    jp z, Jump_000_1585                           ; $75f2: $ca $85 $15

    add [hl]                                      ; $75f5: $86
    ld l, d                                       ; $75f6: $6a
    and [hl]                                      ; $75f7: $a6
    push de                                       ; $75f8: $d5
    ld d, b                                       ; $75f9: $50
    ld c, $14                                     ; $75fa: $0e $14
    ld a, [$c565]                                 ; $75fc: $fa $65 $c5
    dec sp                                        ; $75ff: $3b
    ld a, l                                       ; $7600: $7d
    ld a, [c]                                     ; $7601: $f2
    pop af                                        ; $7602: $f1
    ld bc, $e4d7                                  ; $7603: $01 $d7 $e4
    adc $df                                       ; $7606: $ce $df
    reti                                          ; $7608: $d9


    add hl, bc                                    ; $7609: $09
    or l                                          ; $760a: $b5
    ld l, [hl]                                    ; $760b: $6e
    adc $1b                                       ; $760c: $ce $1b
    rrca                                          ; $760e: $0f
    push hl                                       ; $760f: $e5
    jp c, $d49c                                   ; $7610: $da $9c $d4

    ld e, a                                       ; $7613: $5f
    ld c, $73                                     ; $7614: $0e $73
    ld de, $3906                                  ; $7616: $11 $06 $39
    rst $30                                       ; $7619: $f7
    ld a, a                                       ; $761a: $7f
    ld a, [bc]                                    ; $761b: $0a
    rst $38                                       ; $761c: $ff
    rla                                           ; $761d: $17
    ld sp, hl                                     ; $761e: $f9
    add l                                         ; $761f: $85
    and $2f                                       ; $7620: $e6 $2f
    or $45                                        ; $7622: $f6 $45
    rst $20                                       ; $7624: $e7
    rra                                           ; $7625: $1f
    rst $28                                       ; $7626: $ef
    xor d                                         ; $7627: $aa
    push hl                                       ; $7628: $e5
    adc $df                                       ; $7629: $ce $df
    add hl, de                                    ; $762b: $19
    jp z, $1d45                                   ; $762c: $ca $45 $1d

    scf                                           ; $762f: $37
    inc hl                                        ; $7630: $23
    ld c, h                                       ; $7631: $4c
    push bc                                       ; $7632: $c5
    ld e, l                                       ; $7633: $5d
    ld a, [hl-]                                   ; $7634: $3a
    call z, $e608                                 ; $7635: $cc $08 $e6
    cp $ea                                        ; $7638: $fe $ea
    ld h, [hl]                                    ; $763a: $66
    ld a, h                                       ; $763b: $7c
    nop                                           ; $763c: $00
    sub a                                         ; $763d: $97
    push hl                                       ; $763e: $e5
    and c                                         ; $763f: $a1
    ld e, d                                       ; $7640: $5a
    ld h, d                                       ; $7641: $62
    ld a, c                                       ; $7642: $79
    rst $20                                       ; $7643: $e7
    cp a                                          ; $7644: $bf
    ld [de], a                                    ; $7645: $12
    ret c                                         ; $7646: $d8

    adc a                                         ; $7647: $8f
    and $5a                                       ; $7648: $e6 $5a
    ld c, $20                                     ; $764a: $0e $20
    and h                                         ; $764c: $a4
    add $dd                                       ; $764d: $c6 $dd
    add hl, de                                    ; $764f: $19
    add e                                         ; $7650: $83
    adc h                                         ; $7651: $8c
    rrca                                          ; $7652: $0f
    rst $10                                       ; $7653: $d7
    db $e4                                        ; $7654: $e4
    add h                                         ; $7655: $84
    and $7c                                       ; $7656: $e6 $7c
    and a                                         ; $7658: $a7
    cp b                                          ; $7659: $b8
    ld c, [hl]                                    ; $765a: $4e
    ld b, d                                       ; $765b: $42
    xor b                                         ; $765c: $a8
    call $ae68                                    ; $765d: $cd $68 $ae
    push hl                                       ; $7660: $e5
    ld a, h                                       ; $7661: $7c
    rlca                                          ; $7662: $07
    ld a, [de]                                    ; $7663: $1a
    or l                                          ; $7664: $b5
    xor c                                         ; $7665: $a9
    ldh [$a1], a                                  ; $7666: $e0 $a1
    ld b, c                                       ; $7668: $41
    pop af                                        ; $7669: $f1
    ld bc, $e4d7                                  ; $766a: $01 $d7 $e4
    call c, $bd5f                                 ; $766d: $dc $5f $bd
    xor b                                         ; $7670: $a8
    di                                            ; $7671: $f3
    sbc l                                         ; $7672: $9d
    ld [hl], $63                                  ; $7673: $36 $63
    push bc                                       ; $7675: $c5
    dec e                                         ; $7676: $1d
    ld h, e                                       ; $7677: $63
    ldh [$d7], a                                  ; $7678: $e0 $d7
    and $84                                       ; $767a: $e6 $84
    sub [hl]                                      ; $767c: $96
    add e                                         ; $767d: $83
    ld c, $d2                                     ; $767e: $0e $d2
    add $f1                                       ; $7680: $c6 $f1
    ld bc, $c24f                                  ; $7682: $01 $4f $c2
    ld b, e                                       ; $7685: $43
    ld l, $2d                                     ; $7686: $2e $2d
    jp nz, Jump_04c_4260                          ; $7688: $c2 $60 $42

    ld e, l                                       ; $768b: $5d
    ld c, h                                       ; $768c: $4c
    rst $08                                       ; $768d: $cf
    dec sp                                        ; $768e: $3b
    inc hl                                        ; $768f: $23
    inc a                                         ; $7690: $3c
    ld e, h                                       ; $7691: $5c
    sbc e                                         ; $7692: $9b
    db $d3                                        ; $7693: $d3
    sub [hl]                                      ; $7694: $96
    ld e, [hl]                                    ; $7695: $5e
    pop bc                                        ; $7696: $c1

Call_04c_7697:
    ld b, e                                       ; $7697: $43
    add e                                         ; $7698: $83
    sub $9c                                       ; $7699: $d6 $9c
    adc c                                         ; $769b: $89
    sub $1c                                       ; $769c: $d6 $1c
    rst $38                                       ; $769e: $ff
    ld c, $22                                     ; $769f: $0e $22
    sub h                                         ; $76a1: $94
    inc a                                         ; $76a2: $3c
    ld l, a                                       ; $76a3: $6f
    inc a                                         ; $76a4: $3c
    call z, Call_000_1845                         ; $76a5: $cc $45 $18
    db $e4                                        ; $76a8: $e4
    ret z                                         ; $76a9: $c8

    ld bc, $01f1                                  ; $76aa: $01 $f1 $01
    rst $10                                       ; $76ad: $d7
    db $e4                                        ; $76ae: $e4
    add h                                         ; $76af: $84
    add d                                         ; $76b0: $82
    sbc a                                         ; $76b1: $9f
    inc sp                                        ; $76b2: $33
    xor l                                         ; $76b3: $ad
    sub $e6                                       ; $76b4: $d6 $e6
    inc d                                         ; $76b6: $14
    inc a                                         ; $76b7: $3c
    inc l                                         ; $76b8: $2c
    xor e                                         ; $76b9: $ab
    ld b, l                                       ; $76ba: $45
    ld h, [hl]                                    ; $76bb: $66
    or h                                          ; $76bc: $b4
    or b                                          ; $76bd: $b0
    jp nz, Jump_04c_604a                          ; $76be: $c2 $4a $60

    and c                                         ; $76c1: $a1
    sub c                                         ; $76c2: $91
    rra                                           ; $76c3: $1f
    add sp, -$57                                  ; $76c4: $e8 $a9
    inc h                                         ; $76c6: $24
    ld a, c                                       ; $76c7: $79
    ccf                                           ; $76c8: $3f
    ld e, d                                       ; $76c9: $5a
    call nc, $b573                                ; $76ca: $d4 $73 $b5
    ld l, b                                       ; $76cd: $68
    ld d, c                                       ; $76ce: $51
    ld c, e                                       ; $76cf: $4b
    ld [hl], e                                    ; $76d0: $73
    ccf                                           ; $76d1: $3f
    ld b, l                                       ; $76d2: $45
    db $e3                                        ; $76d3: $e3
    ld c, $d4                                     ; $76d4: $0e $d4
    ld l, l                                       ; $76d6: $6d
    add $07                                       ; $76d7: $c6 $07
    cpl                                           ; $76d9: $2f
    ld h, c                                       ; $76da: $61
    ld a, c                                       ; $76db: $79
    and [hl]                                      ; $76dc: $a6
    ld [hl], l                                    ; $76dd: $75
    rlca                                          ; $76de: $07
    ld a, l                                       ; $76df: $7d
    ld h, d                                       ; $76e0: $62
    ld a, [hl+]                                   ; $76e1: $2a
    ld [hl], e                                    ; $76e2: $73
    ld [hl], e                                    ; $76e3: $73
    ld h, a                                       ; $76e4: $67
    inc c                                         ; $76e5: $0c
    ld [hl], d                                    ; $76e6: $72
    ccf                                           ; $76e7: $3f
    ld a, l                                       ; $76e8: $7d
    ret                                           ; $76e9: $c9


    or a                                          ; $76ea: $b7

jr_04c_76eb:
    ld a, d                                       ; $76eb: $7a
    xor [hl]                                      ; $76ec: $ae
    push hl                                       ; $76ed: $e5
    ld a, h                                       ; $76ee: $7c
    rlca                                          ; $76ef: $07
    sub l                                         ; $76f0: $95
    ld [hl+], a                                   ; $76f1: $22
    sla [hl]                                      ; $76f2: $cb $26
    ld [hl], a                                    ; $76f4: $77
    ldh a, [$af]                                  ; $76f5: $f0 $af
    ld [hl], l                                    ; $76f7: $75
    pop hl                                        ; $76f8: $e1
    adc h                                         ; $76f9: $8c
    adc l                                         ; $76fa: $8d
    rrca                                          ; $76fb: $0f
    rst $10                                       ; $76fc: $d7
    db $e4                                        ; $76fd: $e4
    ld b, b                                       ; $76fe: $40
    push af                                       ; $76ff: $f5
    rst $38                                       ; $7700: $ff
    and d                                         ; $7701: $a2
    ld a, c                                       ; $7702: $79
    db $e3                                        ; $7703: $e3
    ld b, l                                       ; $7704: $45
    jr jr_04c_76eb                                ; $7705: $18 $e4

    inc [hl]                                      ; $7707: $34

Jump_04c_7708:
    ld b, $8a                                     ; $7708: $06 $8a
    rla                                           ; $770a: $17
    ld h, c                                       ; $770b: $61
    sub b                                         ; $770c: $90
    inc de                                        ; $770d: $13
    xor d                                         ; $770e: $aa
    cp b                                          ; $770f: $b8
    inc sp                                        ; $7710: $33
    dec b                                         ; $7711: $05
    dec d                                         ; $7712: $15
    adc $43                                       ; $7713: $ce $43
    dec d                                         ; $7715: $15
    rra                                           ; $7716: $1f
    xor a                                         ; $7717: $af
    rst $38                                       ; $7718: $ff
    ld c, b                                       ; $7719: $48
    dec l                                         ; $771a: $2d
    ld b, d                                       ; $771b: $42
    dec [hl]                                      ; $771c: $35
    sub h                                         ; $771d: $94
    di                                            ; $771e: $f3
    db $dd                                        ; $771f: $dd
    ld c, a                                       ; $7720: $4f
    and c                                         ; $7721: $a1
    rst $20                                       ; $7722: $e7
    ld c, a                                       ; $7723: $4f
    ret nz                                        ; $7724: $c0

    ld [hl], a                                    ; $7725: $77
    sbc $40                                       ; $7726: $de $40
    ld [hl], e                                    ; $7728: $73
    xor [hl]                                      ; $7729: $ae
    push hl                                       ; $772a: $e5
    ld [hl+], a                                   ; $772b: $22
    inc c                                         ; $772c: $0c
    ld [hl], d                                    ; $772d: $72
    ld b, c                                       ; $772e: $41
    dec e                                         ; $772f: $1d
    ldh [$2f], a                                  ; $7730: $e0 $2f
    add $bf                                       ; $7732: $c6 $bf
    add hl, sp                                    ; $7734: $39
    sub h                                         ; $7735: $94
    rrc a                                         ; $7736: $cb $0f
    ld d, $99                                     ; $7738: $16 $99
    pop de                                        ; $773a: $d1
    jp c, $f41c                                   ; $773b: $da $1c $f4

    ld e, c                                       ; $773e: $59
    rst $38                                       ; $773f: $ff
    rst $28                                       ; $7740: $ef
    cp c                                          ; $7741: $b9
    or d                                          ; $7742: $b2
    adc c                                         ; $7743: $89
    add hl, bc                                    ; $7744: $09
    halt                                          ; $7745: $76
    ld [hl-], a                                   ; $7746: $32

jr_04c_7747:
    dec d                                         ; $7747: $15
    rra                                           ; $7748: $1f
    rst $10                                       ; $7749: $d7
    db $e4                                        ; $774a: $e4
    jr nz, jr_04c_7747                            ; $774b: $20 $fa

    ld b, d                                       ; $774d: $42
    ld c, e                                       ; $774e: $4b
    jp $fc1c                                      ; $774f: $c3 $1c $fc


    daa                                           ; $7752: $27
    dec de                                        ; $7753: $1b
    sbc h                                         ; $7754: $9c
    rst $00                                       ; $7755: $c7
    dec e                                         ; $7756: $1d
    ld d, e                                       ; $7757: $53
    ld a, l                                       ; $7758: $7d
    ld [hl], e                                    ; $7759: $73
    ld d, c                                       ; $775a: $51
    ld a, c                                       ; $775b: $79
    ld de, $3906                                  ; $775c: $11 $06 $39
    call z, Call_04c_692c                         ; $775f: $cc $2c $69
    inc c                                         ; $7762: $0c
    ld h, h                                       ; $7763: $64
    ld [hl], a                                    ; $7764: $77
    ld [hl-], a                                   ; $7765: $32
    ld l, $b9                                     ; $7766: $2e $b9
    dec h                                         ; $7768: $25
    ld d, c                                       ; $7769: $51
    ld a, h                                       ; $776a: $7c
    nop                                           ; $776b: $00
    rst $10                                       ; $776c: $d7
    db $e4                                        ; $776d: $e4
    ld [hl+], a                                   ; $776e: $22
    inc bc                                        ; $776f: $03
    di                                            ; $7770: $f3
    sub [hl]                                      ; $7771: $96
    dec sp                                        ; $7772: $3b
    ld d, l                                       ; $7773: $55
    xor a                                         ; $7774: $af
    call $9f41                                    ; $7775: $cd $41 $9f
    sbc b                                         ; $7778: $98
    jp z, Jump_04c_633b                           ; $7779: $ca $3b $63

    sub b                                         ; $777c: $90
    rla                                           ; $777d: $17
    adc e                                         ; $777e: $8b
    call z, $2d68                                 ; $777f: $cc $68 $2d
    ld l, c                                       ; $7782: $69
    inc c                                         ; $7783: $0c
    db $e4                                        ; $7784: $e4
    ld b, b                                       ; $7785: $40
    rst $08                                       ; $7786: $cf
    dec b                                         ; $7787: $05
    ld a, [hl]                                    ; $7788: $7e
    ld h, a                                       ; $7789: $67
    db $ec                                        ; $778a: $ec
    ld d, b                                       ; $778b: $50
    xor [hl]                                      ; $778c: $ae
    inc [hl]                                      ; $778d: $34
    and c                                         ; $778e: $a1
    ld e, h                                       ; $778f: $5c
    sbc d                                         ; $7790: $9a
    add e                                         ; $7791: $83
    inc a                                         ; $7792: $3c
    ld l, a                                       ; $7793: $6f
    add hl, sp                                    ; $7794: $39
    rst $18                                       ; $7795: $df
    ld b, c                                       ; $7796: $41
    dec h                                         ; $7797: $25
    push af                                       ; $7798: $f5
    ld a, a                                       ; $7799: $7f
    adc $63                                       ; $779a: $ce $63
    rla                                           ; $779c: $17
    ld a, l                                       ; $779d: $7d
    ld e, a                                       ; $779e: $5f
    dec a                                         ; $779f: $3d
    rst $30                                       ; $77a0: $f7
    ld a, a                                       ; $77a1: $7f
    ld e, d                                       ; $77a2: $5a
    add h                                         ; $77a3: $84
    pop bc                                        ; $77a4: $c1
    inc d                                         ; $77a5: $14
    rst $38                                       ; $77a6: $ff
    db $f4                                        ; $77a7: $f4
    pop af                                        ; $77a8: $f1
    ld bc, $e4d7                                  ; $77a9: $01 $d7 $e4
    ld c, [hl]                                    ; $77ac: $4e
    and [hl]                                      ; $77ad: $a6
    sub $a6                                       ; $77ae: $d6 $a6
    jp c, Jump_04c_5f4f                           ; $77b0: $da $4f $5f

    ld a, [c]                                     ; $77b3: $f2

jr_04c_77b4:
    xor l                                         ; $77b4: $ad
    sbc [hl]                                      ; $77b5: $9e
    ld l, e                                       ; $77b6: $6b
    cp c                                          ; $77b7: $b9
    ld [hl], $47                                  ; $77b8: $36 $47
    ccf                                           ; $77ba: $3f
    dec a                                         ; $77bb: $3d
    ld d, e                                       ; $77bc: $53
    and l                                         ; $77bd: $a5
    ld l, h                                       ; $77be: $6c
    ld a, [$9b8e]                                 ; $77bf: $fa $8e $9b
    db $fc                                        ; $77c2: $fc
    ld a, a                                       ; $77c3: $7f
    ld a, [hl+]                                   ; $77c4: $2a
    xor [hl]                                      ; $77c5: $ae
    sub $98                                       ; $77c6: $d6 $98
    ldh [$62], a                                  ; $77c8: $e0 $62
    call $3379                                    ; $77ca: $cd $79 $33
    sbc d                                         ; $77cd: $9a
    ret nc                                        ; $77ce: $d0

    inc e                                         ; $77cf: $1c
    jp z, $2a9d                                   ; $77d0: $ca $9d $2a

    sbc e                                         ; $77d3: $9b
    jp c, $cc12                                   ; $77d4: $da $12 $cc

    dec sp                                        ; $77d7: $3b
    ld a, b                                       ; $77d8: $78
    xor [hl]                                      ; $77d9: $ae
    ld b, [hl]                                    ; $77da: $46
    jr nc, jr_04c_77b4                            ; $77db: $30 $d7

    ld [hl], d                                    ; $77dd: $72
    and b                                         ; $77de: $a0
    and a                                         ; $77df: $a7
    ld d, [hl]                                    ; $77e0: $56
    ld [hl], c                                    ; $77e1: $71

Call_04c_77e2:
    ld a, h                                       ; $77e2: $7c
    nop                                           ; $77e3: $00
    rst $08                                       ; $77e4: $cf
    ld h, d                                       ; $77e5: $62
    sub b                                         ; $77e6: $90
    ei                                            ; $77e7: $fb
    pop de                                        ; $77e8: $d1
    add d                                         ; $77e9: $82
    adc [hl]                                      ; $77ea: $8e
    cp e                                          ; $77eb: $bb
    inc sp                                        ; $77ec: $33
    ld [hl], $e3                                  ; $77ed: $36 $e3
    cp l                                          ; $77ef: $bd
    db $dd                                        ; $77f0: $dd
    ld c, c                                       ; $77f1: $49
    jp nz, Jump_000_3400                          ; $77f2: $c2 $00 $34

    sub a                                         ; $77f5: $97
    ld e, b                                       ; $77f6: $58
    sbc [hl]                                      ; $77f7: $9e
    db $db                                        ; $77f8: $db
    ld [$3d09], a                                 ; $77f9: $ea $09 $3d
    rst $38                                       ; $77fc: $ff
    jp z, Jump_04c_5a92                           ; $77fd: $ca $92 $5a

    adc b                                         ; $7800: $88
    and l                                         ; $7801: $a5
    ld hl, sp+$00                                 ; $7802: $f8 $00
    cpl                                           ; $7804: $2f
    sbc d                                         ; $7805: $9a
    ld c, c                                       ; $7806: $49
    sbc [hl]                                      ; $7807: $9e
    rst $28                                       ; $7808: $ef
    cp c                                          ; $7809: $b9
    db $d3                                        ; $780a: $d3
    jr @+$2a                                      ; $780b: $18 $28

    ld e, [hl]                                    ; $780d: $5e
    call nc, $9479                                ; $780e: $d4 $79 $94
    ld d, a                                       ; $7811: $57
    ld c, $af                                     ; $7812: $0e $af
    ld a, a                                       ; $7814: $7f
    ld [hl+], a                                   ; $7815: $22
    ld sp, $0b17                                  ; $7816: $31 $17 $0b
    cp d                                          ; $7819: $ba
    or b                                          ; $781a: $b0
    ld [bc], a                                    ; $781b: $02
    rst $08                                       ; $781c: $cf
    dec l                                         ; $781d: $2d
    jp hl                                         ; $781e: $e9


    ld c, a                                       ; $781f: $4f
    call $af78                                    ; $7820: $cd $78 $af
    ret nc                                        ; $7823: $d0

    rla                                           ; $7824: $17
    ld e, d                                       ; $7825: $5a
    ld e, d                                       ; $7826: $5a
    ld e, b                                       ; $7827: $58
    sbc $87                                       ; $7828: $de $87
    ld [de], a                                    ; $782a: $12
    db $eb                                        ; $782b: $eb
    sbc h                                         ; $782c: $9c
    ld [c], a                                     ; $782d: $e2
    inc bc                                        ; $782e: $03
    cpl                                           ; $782f: $2f
    call nc, Call_000_1d91                        ; $7830: $d4 $91 $1d
    db $f4                                        ; $7833: $f4
    ld bc, $8826                                  ; $7834: $01 $26 $88
    rst $30                                       ; $7837: $f7
    ld a, [bc]                                    ; $7838: $0a
    ld a, l                                       ; $7839: $7d
    and c                                         ; $783a: $a1
    and l                                         ; $783b: $a5
    add l                                         ; $783c: $85
    push hl                                       ; $783d: $e5
    push hl                                       ; $783e: $e5
    rlca                                          ; $783f: $07
    ld l, e                                       ; $7840: $6b
    ld d, e                                       ; $7841: $53
    push bc                                       ; $7842: $c5
    rlca                                          ; $7843: $07
    cpl                                           ; $7844: $2f
    ld h, c                                       ; $7845: $61
    ld a, c                                       ; $7846: $79
    and b                                         ; $7847: $a0
    jp c, $1c91                                   ; $7848: $da $91 $1c

    rst $28                                       ; $784b: $ef
    ld b, l                                       ; $784c: $45
    inc sp                                        ; $784d: $33
    ld a, [de]                                    ; $784e: $1a
    ld l, b                                       ; $784f: $68
    ld b, l                                       ; $7850: $45
    ld c, e                                       ; $7851: $4b
    inc l                                         ; $7852: $2c
    rst $28                                       ; $7853: $ef
    ld b, e                                       ; $7854: $43
    pop af                                        ; $7855: $f1
    ld bc, $472f                                  ; $7856: $01 $2f $47
    dec bc                                        ; $7859: $0b
    ld a, [hl-]                                   ; $785a: $3a
    ld bc, $f383                                  ; $785b: $01 $83 $f3
    ld c, a                                       ; $785e: $4f
    ld e, a                                       ; $785f: $5f
    ld [$525a], a                                 ; $7860: $ea $5a $52
    call c, Call_04c_6605                         ; $7863: $dc $05 $66
    or h                                          ; $7866: $b4
    rrca                                          ; $7867: $0f
    db $ed                                        ; $7868: $ed
    cp l                                          ; $7869: $bd
    ld d, e                                       ; $786a: $53
    ld sp, $1715                                  ; $786b: $31 $15 $17
    ld [hl], e                                    ; $786e: $73
    call c, Call_04c_58b9                         ; $786f: $dc $b9 $58
    ld l, d                                       ; $7872: $6a
    ld e, [hl]                                    ; $7873: $5e
    inc c                                         ; $7874: $0c
    or h                                          ; $7875: $b4
    and d                                         ; $7876: $a2
    and c                                         ; $7877: $a1
    ld e, h                                       ; $7878: $5c
    ret nc                                        ; $7879: $d0

    or l                                          ; $787a: $b5
    add hl, sp                                    ; $787b: $39
    ld bc, $f383                                  ; $787c: $01 $83 $f3
    ld c, a                                       ; $787f: $4f
    ld e, a                                       ; $7880: $5f
    ld [$c220], a                                 ; $7881: $ea $20 $c2
    ld b, b                                       ; $7884: $40
    dec a                                         ; $7885: $3d
    or [hl]                                       ; $7886: $b6
    ld [hl], $77                                  ; $7887: $36 $77
    ld l, c                                       ; $7889: $69
    ld b, h                                       ; $788a: $44
    ld h, d                                       ; $788b: $62
    or $ca                                        ; $788c: $f6 $ca
    ld h, a                                       ; $788e: $67
    ld l, $ed                                     ; $788f: $2e $ed
    xor c                                         ; $7891: $a9
    jp nc, $e46f                                  ; $7892: $d2 $6f $e4

    cp e                                          ; $7895: $bb
    bit 1, d                                      ; $7896: $cb $4a
    push de                                       ; $7898: $d5
    ld e, h                                       ; $7899: $5c
    ld [hl], e                                    ; $789a: $73
    ld l, a                                       ; $789b: $6f
    ld a, h                                       ; $789c: $7c
    or a                                          ; $789d: $b7
    ld l, c                                       ; $789e: $69
    ld b, [hl]                                    ; $789f: $46
    ld c, d                                       ; $78a0: $4a
    sbc d                                         ; $78a1: $9a
    ld de, $df8b                                  ; $78a2: $11 $8b $df
    ld [hl], e                                    ; $78a5: $73
    dec d                                         ; $78a6: $15
    ld d, l                                       ; $78a7: $55
    inc hl                                        ; $78a8: $23
    inc e                                         ; $78a9: $1c
    cp c                                          ; $78aa: $b9
    dec h                                         ; $78ab: $25
    cpl                                           ; $78ac: $2f
    cp $00                                        ; $78ad: $fe $00
    ld d, a                                       ; $78af: $57
    adc l                                         ; $78b0: $8d
    daa                                           ; $78b1: $27
    db $fc                                        ; $78b2: $fc
    jp z, Jump_000_1a09                           ; $78b3: $ca $09 $1a

    inc bc                                        ; $78b6: $03
    ret                                           ; $78b7: $c9


    ld c, e                                       ; $78b8: $4b
    inc l                                         ; $78b9: $2c
    xor a                                         ; $78ba: $af
    ldh a, [$90]                                  ; $78bb: $f0 $90
    and a                                         ; $78bd: $a7
    ld de, $721e                                  ; $78be: $11 $1e $72
    daa                                           ; $78c1: $27
    cp a                                          ; $78c2: $bf
    ld [c], a                                     ; $78c3: $e2
    ld [hl], c                                    ; $78c4: $71
    ld [hl], a                                    ; $78c5: $77
    add $20                                       ; $78c6: $c6 $20
    db $e3                                        ; $78c8: $e3

Call_04c_78c9:
    cp l                                          ; $78c9: $bd
    ld b, d                                       ; $78ca: $42
    ld e, a                                       ; $78cb: $5f
    ld l, b                                       ; $78cc: $68
    ld l, c                                       ; $78cd: $69
    ld h, c                                       ; $78ce: $61
    ld a, c                                       ; $78cf: $79
    ld sp, hl                                     ; $78d0: $f9
    pop bc                                        ; $78d1: $c1
    jp c, Jump_000_1754                           ; $78d2: $da $54 $17

    cp e                                          ; $78d5: $bb
    inc [hl]                                      ; $78d6: $34
    ld [hl+], a                                   ; $78d7: $22
    ld sp, $01f1                                  ; $78d8: $31 $f1 $01
    sub a                                         ; $78db: $97
    push hl                                       ; $78dc: $e5
    ld c, c                                       ; $78dd: $49
    ld [hl], d                                    ; $78de: $72
    ld h, h                                       ; $78df: $64
    ret nc                                        ; $78e0: $d0

    add hl, hl                                    ; $78e1: $29
    ld [hl], $e3                                  ; $78e2: $36 $e3
    push hl                                       ; $78e4: $e5
    rlca                                          ; $78e5: $07
    ld d, e                                       ; $78e6: $53
    call c, $b57a                                 ; $78e7: $dc $7a $b5
    rrca                                          ; $78ea: $0f
    db $ed                                        ; $78eb: $ed
    adc h                                         ; $78ec: $8c
    ld b, c                                       ; $78ed: $41
    ld c, $d2                                     ; $78ee: $0e $d2
    ld h, [hl]                                    ; $78f0: $66
    xor h                                         ; $78f1: $ac
    ld [c], a                                     ; $78f2: $e2
    cp l                                          ; $78f3: $bd
    ld b, d                                       ; $78f4: $42
    ld e, a                                       ; $78f5: $5f
    ld l, b                                       ; $78f6: $68
    ld l, c                                       ; $78f7: $69
    ld h, c                                       ; $78f8: $61
    ld a, c                                       ; $78f9: $79
    rra                                           ; $78fa: $1f
    ld c, d                                       ; $78fb: $4a
    xor h                                         ; $78fc: $ac
    ld [hl], e                                    ; $78fd: $73
    cp d                                          ; $78fe: $ba
    ret c                                         ; $78ff: $d8

    and l                                         ; $7900: $a5
    ld de, $8989                                  ; $7901: $11 $89 $89
    rrca                                          ; $7904: $0f
    ld c, a                                       ; $7905: $4f
    adc d                                         ; $7906: $8a
    ld b, h                                       ; $7907: $44
    rst $18                                       ; $7908: $df
    and e                                         ; $7909: $a3
    ld a, $7d                                     ; $790a: $3e $7d
    ld [c], a                                     ; $790c: $e2
    ld [$cf03], a                                 ; $790d: $ea $03 $cf
    push de                                       ; $7910: $d5
    db $d3                                        ; $7911: $d3
    rst $38                                       ; $7912: $ff
    ret nz                                        ; $7913: $c0

    ld [hl], a                                    ; $7914: $77
    ld [bc], a                                    ; $7915: $02
    ld e, c                                       ; $7916: $59
    ld a, [$572c]                                 ; $7917: $fa $2c $57
    xor e                                         ; $791a: $ab
    inc bc                                        ; $791b: $03
    ld l, a                                       ; $791c: $6f
    add hl, sp                                    ; $791d: $39
    ld c, $9d                                     ; $791e: $0e $9d
    ld c, d                                       ; $7920: $4a
    ld [de], a                                    ; $7921: $12
    jp nc, Jump_04c_7c96                          ; $7922: $d2 $96 $7c

    nop                                           ; $7925: $00
    ld c, a                                       ; $7926: $4f
    ld l, d                                       ; $7927: $6a
    push de                                       ; $7928: $d5
    add sp, $00                                   ; $7929: $e8 $00
    ld c, a                                       ; $792b: $4f
    ld l, d                                       ; $792c: $6a
    ld [hl], d                                    ; $792d: $72
    jr nc, jr_04c_797f                            ; $792e: $30 $4f

    sbc a                                         ; $7930: $9f
    cp b                                          ; $7931: $b8
    ld a, [$4f00]                                 ; $7932: $fa $00 $4f
    jp z, Jump_04c_589f                           ; $7935: $ca $9f $58

    ld a, $00                                     ; $7938: $3e $00
    sub a                                         ; $793a: $97
    and [hl]                                      ; $793b: $a6
    push af                                       ; $793c: $f5
    cp a                                          ; $793d: $bf
    ret c                                         ; $793e: $d8

    and l                                         ; $793f: $a5
    ld de, $8989                                  ; $7940: $11 $89 $89
    rrca                                          ; $7943: $0f
    cpl                                           ; $7944: $2f
    ld a, l                                       ; $7945: $7d
    or b                                          ; $7946: $b0
    call nz, $273a                                ; $7947: $c4 $3a $27
    ld [hl], l                                    ; $794a: $75
    or c                                          ; $794b: $b1
    ld c, e                                       ; $794c: $4b
    inc hl                                        ; $794d: $23
    ld [de], a                                    ; $794e: $12
    ld [hl], e                                    ; $794f: $73
    push hl                                       ; $7950: $e5
    nop                                           ; $7951: $00
    cpl                                           ; $7952: $2f
    call nc, Call_000_0b91                        ; $7953: $d4 $91 $0b
    ld a, [hl-]                                   ; $7956: $3a
    xor $ce                                       ; $7957: $ee $ce
    ret c                                         ; $7959: $d8

    cp h                                          ; $795a: $bc
    ret c                                         ; $795b: $d8

    and l                                         ; $795c: $a5
    ld de, $8989                                  ; $795d: $11 $89 $89
    rrca                                          ; $7960: $0f
    cpl                                           ; $7961: $2f
    or l                                          ; $7962: $b5
    pop de                                        ; $7963: $d1
    jp c, $e89c                                   ; $7964: $da $9c $e8

    di                                            ; $7967: $f3
    cp a                                          ; $7968: $bf
    sbc b                                         ; $7969: $98
    rst $00                                       ; $796a: $c7
    ld c, $98                                     ; $796b: $0e $98
    pop af                                        ; $796d: $f1
    or h                                          ; $796e: $b4
    dec h                                         ; $796f: $25
    jr z, jr_04c_799f                             ; $7970: $28 $2d

    ld l, d                                       ; $7972: $6a
    db $e3                                        ; $7973: $e3
    inc bc                                        ; $7974: $03
    sub a                                         ; $7975: $97
    rra                                           ; $7976: $1f
    cpl                                           ; $7977: $2f
    halt                                          ; $7978: $76
    ld l, c                                       ; $7979: $69
    ld b, h                                       ; $797a: $44
    ld h, d                                       ; $797b: $62
    ld [c], a                                     ; $797c: $e2
    inc bc                                        ; $797d: $03
    sub a                                         ; $797e: $97

jr_04c_797f:
    add [hl]                                      ; $797f: $86
    rla                                           ; $7980: $17
    cp e                                          ; $7981: $bb
    inc [hl]                                      ; $7982: $34
    ld [hl+], a                                   ; $7983: $22
    ld sp, $01f1                                  ; $7984: $31 $f1 $01
    sub a                                         ; $7987: $97
    rra                                           ; $7988: $1f
    ld hl, $aa84                                  ; $7989: $21 $84 $aa
    ccf                                           ; $798c: $3f
    ld e, [hl]                                    ; $798d: $5e
    db $ec                                        ; $798e: $ec
    jp nc, $c488                                  ; $798f: $d2 $88 $c4

    call nz, Call_04c_4f07                        ; $7992: $c4 $07 $4f
    ld l, d                                       ; $7995: $6a
    add $c0                                       ; $7996: $c6 $c0
    ld c, a                                       ; $7998: $4f
    rst $10                                       ; $7999: $d7
    sub c                                         ; $799a: $91
    ei                                            ; $799b: $fb
    pop de                                        ; $799c: $d1
    add d                                         ; $799d: $82
    adc [hl]                                      ; $799e: $8e

jr_04c_799f:
    cp e                                          ; $799f: $bb
    inc sp                                        ; $79a0: $33
    ld [hl], $2f                                  ; $79a1: $36 $2f
    halt                                          ; $79a3: $76
    ld l, c                                       ; $79a4: $69

Jump_04c_79a5:
    ld b, h                                       ; $79a5: $44
    ld h, d                                       ; $79a6: $62
    ld [c], a                                     ; $79a7: $e2
    inc bc                                        ; $79a8: $03
    cpl                                           ; $79a9: $2f
    call nc, $fb91                                ; $79aa: $d4 $91 $fb
    pop de                                        ; $79ad: $d1
    adc $3f                                       ; $79ae: $ce $3f
    ld [hl-], a                                   ; $79b0: $32
    and e                                         ; $79b1: $a3
    pop de                                        ; $79b2: $d1
    ld c, a                                       ; $79b3: $4f
    ccf                                           ; $79b4: $3f
    xor $14                                       ; $79b5: $ee $14
    inc a                                         ; $79b7: $3c
    inc [hl]                                      ; $79b8: $34
    and d                                         ; $79b9: $a2
    ld [$c5e6], a                                 ; $79ba: $ea $e6 $c5
    ld e, h                                       ; $79bd: $5c
    ld c, h                                       ; $79be: $4c
    cp a                                          ; $79bf: $bf
    and b                                         ; $79c0: $a0
    ld c, e                                       ; $79c1: $4b
    inc l                                         ; $79c2: $2c
    ld e, a                                       ; $79c3: $5f
    add hl, sp                                    ; $79c4: $39
    nop                                           ; $79c5: $00
    rst $10                                       ; $79c6: $d7
    db $e4                                        ; $79c7: $e4
    inc a                                         ; $79c8: $3c
    db $fd                                        ; $79c9: $fd
    rra                                           ; $79ca: $1f
    ld c, l                                       ; $79cb: $4d
    ld [hl], c                                    ; $79cc: $71
    db $eb                                        ; $79cd: $eb
    push de                                       ; $79ce: $d5
    cp [hl]                                       ; $79cf: $be
    ld e, e                                       ; $79d0: $5b
    sbc d                                         ; $79d1: $9a
    ld b, h                                       ; $79d2: $44
    ld [$c66a], sp                                ; $79d3: $08 $6a $c6
    ld a, e                                       ; $79d6: $7b
    db $db                                        ; $79d7: $db
    ld a, b                                       ; $79d8: $78
    rst $20                                       ; $79d9: $e7
    rst $28                                       ; $79da: $ef
    call z, Call_04c_4f1b                         ; $79db: $cc $1b $4f
    jr z, jr_04c_7a37                             ; $79de: $28 $57

    ld [hl], $9b                                  ; $79e0: $36 $9b
    ld d, a                                       ; $79e2: $57
    ld c, $2f                                     ; $79e3: $0e $2f
    ld e, b                                       ; $79e5: $58
    add d                                         ; $79e6: $82
    or e                                          ; $79e7: $b3
    ld b, l                                       ; $79e8: $45
    sbc l                                         ; $79e9: $9d
    scf                                           ; $79ea: $37
    ld [hl], b                                    ; $79eb: $70
    or c                                          ; $79ec: $b1
    call nz, $c9f2                                ; $79ed: $c4 $f2 $c9
    adc h                                         ; $79f0: $8c
    ld l, $76                                     ; $79f1: $2e $76
    ld l, c                                       ; $79f3: $69
    ld b, h                                       ; $79f4: $44
    ld h, d                                       ; $79f5: $62
    xor [hl]                                      ; $79f6: $ae
    inc e                                         ; $79f7: $1c
    rst $10                                       ; $79f8: $d7
    db $e4                                        ; $79f9: $e4
    adc $df                                       ; $79fa: $ce $df
    reti                                          ; $79fc: $d9


    add hl, bc                                    ; $79fd: $09
    or l                                          ; $79fe: $b5
    ld l, [hl]                                    ; $79ff: $6e
    adc $1b                                       ; $7a00: $ce $1b
    rrca                                          ; $7a02: $0f
    push hl                                       ; $7a03: $e5
    cp b                                          ; $7a04: $b8
    db $e4                                        ; $7a05: $e4
    add b                                         ; $7a06: $80
    ret                                           ; $7a07: $c9


    sbc a                                         ; $7a08: $9f
    ld c, e                                       ; $7a09: $4b
    inc sp                                        ; $7a0a: $33
    sbc d                                         ; $7a0b: $9a
    ld d, b                                       ; $7a0c: $50
    rra                                           ; $7a0d: $1f
    rra                                           ; $7a0e: $1f
    rst $10                                       ; $7a0f: $d7
    db $e4                                        ; $7a10: $e4
    call c, $3f92                                 ; $7a11: $dc $92 $3f
    sbc c                                         ; $7a14: $99
    jp hl                                         ; $7a15: $e9


    add l                                         ; $7a16: $85
    ld e, b                                       ; $7a17: $58
    ld e, d                                       ; $7a18: $5a
    ld a, [hl]                                    ; $7a19: $7e
    jr nc, @-$39                                  ; $7a1a: $30 $c5

    xor l                                         ; $7a1c: $ad
    ld d, a                                       ; $7a1d: $57
    pop af                                        ; $7a1e: $f1
    ld bc, $e4d7                                  ; $7a1f: $01 $d7 $e4
    ld e, h                                       ; $7a22: $5c
    ld [hl-], a                                   ; $7a23: $32
    inc bc                                        ; $7a24: $03
    adc e                                         ; $7a25: $8b
    ld a, [hl-]                                   ; $7a26: $3a
    inc de                                        ; $7a27: $13
    db $ed                                        ; $7a28: $ed
    ld h, h                                       ; $7a29: $64
    ld b, [hl]                                    ; $7a2a: $46
    cp e                                          ; $7a2b: $bb
    inc [hl]                                      ; $7a2c: $34
    ld b, b                                       ; $7a2d: $40
    add sp, -$79                                  ; $7a2e: $e8 $87
    ld l, d                                       ; $7a30: $6a
    and b                                         ; $7a31: $a0
    and a                                         ; $7a32: $a7
    ld d, [hl]                                    ; $7a33: $56
    ld [hl], c                                    ; $7a34: $71
    ld a, h                                       ; $7a35: $7c
    nop                                           ; $7a36: $00

jr_04c_7a37:
    sub a                                         ; $7a37: $97
    dec d                                         ; $7a38: $15
    ld d, $74                                     ; $7a39: $16 $74
    ld d, c                                       ; $7a3b: $51
    ld a, c                                       ; $7a3c: $79
    sub a                                         ; $7a3d: $97
    ld b, $08                                     ; $7a3e: $06 $08
    db $fd                                        ; $7a40: $fd
    ld b, b                                       ; $7a41: $40
    ld hl, $e332                                  ; $7a42: $21 $32 $e3
    dec hl                                        ; $7a45: $2b
    cp e                                          ; $7a46: $bb
    call nz, $f260                                ; $7a47: $c4 $60 $f2
    ld b, a                                       ; $7a4a: $47
    cp h                                          ; $7a4b: $bc
    inc sp                                        ; $7a4c: $33
    ld b, $b9                                     ; $7a4d: $06 $b9
    ret nc                                        ; $7a4f: $d0

    pop hl                                        ; $7a50: $e1
    dec h                                         ; $7a51: $25
    sub [hl]                                      ; $7a52: $96
    rst $20                                       ; $7a53: $e7
    or [hl]                                       ; $7a54: $b6
    ld a, d                                       ; $7a55: $7a
    ld c, $f2                                     ; $7a56: $0e $f2

jr_04c_7a58:
    ld a, h                                       ; $7a58: $7c
    and a                                         ; $7a59: $a7
    call Call_04c_7158                            ; $7a5a: $cd $58 $71
    rst $00                                       ; $7a5d: $c7
    jr jr_04c_7a58                                ; $7a5e: $18 $f8

    ld hl, sp+$00                                 ; $7a60: $f8 $00
    rst $10                                       ; $7a62: $d7
    call nc, $0d2e                                ; $7a63: $d4 $2e $0d
    db $10                                        ; $7a66: $10
    ld a, [$b19d]                                 ; $7a67: $fa $9d $b1
    ld a, [c]                                     ; $7a6a: $f2
    jp z, $c9ae                                   ; $7a6b: $ca $ae $c9

    add l                                         ; $7a6e: $85
    dec d                                         ; $7a6f: $15
    halt                                          ; $7a70: $76
    ld e, e                                       ; $7a71: $5b
    inc [hl]                                      ; $7a72: $34
    db $d3                                        ; $7a73: $d3
    ld l, e                                       ; $7a74: $6b
    ld [hl], e                                    ; $7a75: $73
    adc h                                         ; $7a76: $8c
    add c                                         ; $7a77: $81
    rrca                                          ; $7a78: $0f
    cp d                                          ; $7a79: $ba
    call nz, Call_04c_40f2                        ; $7a7a: $c4 $f2 $40
    rst $08                                       ; $7a7d: $cf
    ret c                                         ; $7a7e: $d8

    adc h                                         ; $7a7f: $8c
    rrca                                          ; $7a80: $0f
    rst $08                                       ; $7a81: $cf
    inc [hl]                                      ; $7a82: $34
    rst $20                                       ; $7a83: $e7
    ld sp, $50c1                                  ; $7a84: $31 $c1 $50
    db $ed                                        ; $7a87: $ed
    ld e, h                                       ; $7a88: $5c
    ld e, c                                       ; $7a89: $59
    ld a, d                                       ; $7a8a: $7a
    ld l, h                                       ; $7a8b: $6c
    sub a                                         ; $7a8c: $97
    ld b, $08                                     ; $7a8d: $06 $08
    db $fd                                        ; $7a8f: $fd
    ld d, b                                       ; $7a90: $50
    dec l                                         ; $7a91: $2d
    or c                                          ; $7a92: $b1
    inc a                                         ; $7a93: $3c
    cp b                                          ; $7a94: $b8
    ld [hl], $47                                  ; $7a95: $36 $47
    ld sp, $d17d                                  ; $7a97: $31 $7d $d1
    rla                                           ; $7a9a: $17
    ld d, b                                       ; $7a9b: $50
    pop bc                                        ; $7a9c: $c1
    jp $9778                                      ; $7a9d: $c3 $78 $97


    jr @-$12                                      ; $7aa0: $18 $ec

    adc h                                         ; $7aa2: $8c
    cp h                                          ; $7aa3: $bc
    or b                                          ; $7aa4: $b0
    push de                                       ; $7aa5: $d5
    ld [hl], e                                    ; $7aa6: $73
    call $30e4                                    ; $7aa7: $cd $e4 $30
    ld [hl], a                                    ; $7aaa: $77
    cp [hl]                                       ; $7aab: $be
    dec l                                         ; $7aac: $2d
    rla                                           ; $7aad: $17
    ld a, [hl-]                                   ; $7aae: $3a
    inc a                                         ; $7aaf: $3c
    rst $18                                       ; $7ab0: $df
    ld l, c                                       ; $7ab1: $69
    inc sp                                        ; $7ab2: $33
    ld d, [hl]                                    ; $7ab3: $56
    call c, $0631                                 ; $7ab4: $dc $31 $06
    ld a, $3e                                     ; $7ab7: $3e $3e
    nop                                           ; $7ab9: $00
    sub a                                         ; $7aba: $97
    xor l                                         ; $7abb: $ad
    adc b                                         ; $7abc: $88
    ld [hl], a                                    ; $7abd: $77
    ld l, c                                       ; $7abe: $69
    add b                                         ; $7abf: $80
    ret nc                                        ; $7ac0: $d0

    cpl                                           ; $7ac1: $2f
    ld [hl], h                                    ; $7ac2: $74
    ld d, b                                       ; $7ac3: $50
    add hl, de                                    ; $7ac4: $19
    ld d, c                                       ; $7ac5: $51
    dec d                                         ; $7ac6: $15
    ld e, a                                       ; $7ac7: $5f
    add hl, sp                                    ; $7ac8: $39
    nop                                           ; $7ac9: $00
    rst $10                                       ; $7aca: $d7
    db $e4                                        ; $7acb: $e4
    jp nz, Jump_04c_6b0a                          ; $7acc: $c2 $0a $6b

    ld [hl], e                                    ; $7acf: $73
    ret nc                                        ; $7ad0: $d0

    rst $20                                       ; $7ad1: $e7
    and b                                         ; $7ad2: $a0
    add e                                         ; $7ad3: $83
    ld a, $07                                     ; $7ad4: $3e $07
    dec e                                         ; $7ad6: $1d
    db $f4                                        ; $7ad7: $f4
    add hl, sp                                    ; $7ad8: $39
    add sp, -$22                                  ; $7ad9: $e8 $de
    ld b, [hl]                                    ; $7adb: $46
    nop                                           ; $7adc: $00
    sbc d                                         ; $7add: $9a
    and a                                         ; $7ade: $a7
    ld l, d                                       ; $7adf: $6a
    rst $28                                       ; $7ae0: $ef
    ret                                           ; $7ae1: $c9


    ld d, d                                       ; $7ae2: $52
    ld e, [hl]                                    ; $7ae3: $5e
    call z, $3ef4                                 ; $7ae4: $cc $f4 $3e
    inc [hl]                                      ; $7ae7: $34
    rst $18                                       ; $7ae8: $df
    or c                                          ; $7ae9: $b1
    adc c                                         ; $7aea: $89
    xor d                                         ; $7aeb: $aa
    rlca                                          ; $7aec: $07
    ld a, [bc]                                    ; $7aed: $0a
    ld l, c                                       ; $7aee: $69
    ld c, e                                       ; $7aef: $4b
    adc [hl]                                      ; $7af0: $8e
    rst $30                                       ; $7af1: $f7
    add $a9                                       ; $7af2: $c6 $a9
    push af                                       ; $7af4: $f5
    dec e                                         ; $7af5: $1d
    db $fc                                        ; $7af6: $fc
    dec sp                                        ; $7af7: $3b
    sub b                                         ; $7af8: $90
    ld l, $c7                                     ; $7af9: $2e $c7
    ld [hl], c                                    ; $7afb: $71
    ld a, h                                       ; $7afc: $7c

Jump_04c_7afd:
    nop                                           ; $7afd: $00
    rst $10                                       ; $7afe: $d7
    db $e4                                        ; $7aff: $e4
    ld [hl+], a                                   ; $7b00: $22
    ld d, h                                       ; $7b01: $54
    adc e                                         ; $7b02: $8b
    jr nc, @-$36                                  ; $7b03: $30 $c8

jr_04c_7b05:
    ld b, l                                       ; $7b05: $45
    ld d, $59                                     ; $7b06: $16 $59
    ld a, h                                       ; $7b08: $7c
    nop                                           ; $7b09: $00
    sub a                                         ; $7b0a: $97
    ld c, $7a                                     ; $7b0b: $0e $7a
    inc b                                         ; $7b0d: $04
    db $dd                                        ; $7b0e: $dd
    ld sp, hl                                     ; $7b0f: $f9
    ld d, a                                       ; $7b10: $57
    ld a, [c]                                     ; $7b11: $f2
    add a                                         ; $7b12: $87
    add a                                         ; $7b13: $87
    ld a, h                                       ; $7b14: $7c
    nop                                           ; $7b15: $00
    rst $10                                       ; $7b16: $d7
    cp e                                          ; $7b17: $bb
    or b                                          ; $7b18: $b0
    ld [bc], a                                    ; $7b19: $02
    xor a                                         ; $7b1a: $af
    call $d625                                    ; $7b1b: $cd $25 $d6
    add hl, sp                                    ; $7b1e: $39
    ld [hl], l                                    ; $7b1f: $75
    ld a, [bc]                                    ; $7b20: $0a
    and d                                         ; $7b21: $a2
    ld a, [hl-]                                   ; $7b22: $3a
    ld [hl], d                                    ; $7b23: $72
    and b                                         ; $7b24: $a0
    cp d                                          ; $7b25: $ba
    dec h                                         ; $7b26: $25
    cpl                                           ; $7b27: $2f
    cp $00                                        ; $7b28: $fe $00
    xor a                                         ; $7b2a: $af

Call_04c_7b2b:
    ld b, e                                       ; $7b2b: $43
    push de                                       ; $7b2c: $d5
    ei                                            ; $7b2d: $fb
    sub b                                         ; $7b2e: $90
    jp nc, $1966                                  ; $7b2f: $d2 $66 $19

    rst $00                                       ; $7b32: $c7
    pop af                                        ; $7b33: $f1
    ld bc, $43af                                  ; $7b34: $01 $af $43
    push de                                       ; $7b37: $d5
    ei                                            ; $7b38: $fb
    db $10                                        ; $7b39: $10
    xor b                                         ; $7b3a: $a8
    jp nc, $9a06                                  ; $7b3b: $d2 $06 $9a

    ld [c], a                                     ; $7b3e: $e2
    rrca                                          ; $7b3f: $0f
    rst $10                                       ; $7b40: $d7
    cp e                                          ; $7b41: $bb
    or b                                          ; $7b42: $b0
    ld [bc], a                                    ; $7b43: $02
    cpl                                           ; $7b44: $2f
    or c                                          ; $7b45: $b1
    inc a                                         ; $7b46: $3c
    db $d3                                        ; $7b47: $d3
    cp d                                          ; $7b48: $ba
    sub e                                         ; $7b49: $93
    ld h, [hl]                                    ; $7b4a: $66
    call nz, $b9cd                                ; $7b4b: $c4 $cd $b9
    sub [hl]                                      ; $7b4e: $96
    ld a, e                                       ; $7b4f: $7b
    xor d                                         ; $7b50: $aa
    db $f4                                        ; $7b51: $f4
    dec de                                        ; $7b52: $1b
    ld sp, hl                                     ; $7b53: $f9
    xor $b2                                       ; $7b54: $ee $b2
    ld d, d                                       ; $7b56: $52
    dec [hl]                                      ; $7b57: $35
    rst $10                                       ; $7b58: $d7
    call c, $df1b                                 ; $7b59: $dc $1b $df
    ld l, l                                       ; $7b5c: $6d
    sbc d                                         ; $7b5d: $9a
    sub c                                         ; $7b5e: $91
    sbc d                                         ; $7b5f: $9a
    ld e, e                                       ; $7b60: $5b
    ld a, [hl-]                                   ; $7b61: $3a
    ld e, e                                       ; $7b62: $5b
    ld d, h                                       ; $7b63: $54
    db $ed                                        ; $7b64: $ed
    rst $20                                       ; $7b65: $e7
    or c                                          ; $7b66: $b1
    set 5, a                                      ; $7b67: $cb $ef
    ld de, $8cec                                  ; $7b69: $11 $ec $8c
    ld b, c                                       ; $7b6c: $41
    adc $fd                                       ; $7b6d: $ce $fd
    sbc a                                         ; $7b6f: $9f
    and $7b                                       ; $7b70: $e6 $7b
    xor $e0                                       ; $7b72: $ee $e0
    ccf                                           ; $7b74: $3f
    ld [de], a                                    ; $7b75: $12
    jr nc, jr_04c_7b05                            ; $7b76: $30 $8d

    or c                                          ; $7b78: $b1
    pop af                                        ; $7b79: $f1
    ld bc, $bbd7                                  ; $7b7a: $01 $d7 $bb
    add sp, -$69                                  ; $7b7d: $e8 $97
    rst $20                                       ; $7b7f: $e7
    cp e                                          ; $7b80: $bb
    rrca                                          ; $7b81: $0f
    ld sp, $b776                                  ; $7b82: $31 $76 $b7
    dec a                                         ; $7b85: $3d
    ld l, a                                       ; $7b86: $6f
    ld b, [hl]                                    ; $7b87: $46
    ld a, h                                       ; $7b88: $7c
    db $db                                        ; $7b89: $db
    ld d, h                                       ; $7b8a: $54
    ld [hl], l                                    ; $7b8b: $75
    pop hl                                        ; $7b8c: $e1
    ld e, h                                       ; $7b8d: $5c
    ld l, d                                       ; $7b8e: $6a
    adc [hl]                                      ; $7b8f: $8e
    ld sp, $4df0                                  ; $7b90: $31 $f0 $4d
    or l                                          ; $7b93: $b5
    ld [hl], $17                                  ; $7b94: $36 $17
    add hl, de                                    ; $7b96: $19
    ld b, b                                       ; $7b97: $40
    dec b                                         ; $7b98: $05
    rrca                                          ; $7b99: $0f
    dec sp                                        ; $7b9a: $3b
    ld c, c                                       ; $7b9b: $49
    ld b, $0f                                     ; $7b9c: $06 $0f
    add hl, sp                                    ; $7b9e: $39
    ld a, [hl+]                                   ; $7b9f: $2a
    ld h, e                                       ; $7ba0: $63
    add d                                         ; $7ba1: $82
    db $fd                                        ; $7ba2: $fd
    ld l, b                                       ; $7ba3: $68
    ld l, l                                       ; $7ba4: $6d
    ld c, [hl]                                    ; $7ba5: $4e
    sbc d                                         ; $7ba6: $9a
    ld de, $7fc3                                  ; $7ba7: $11 $c3 $7f
    inc h                                         ; $7baa: $24
    ld h, b                                       ; $7bab: $60
    ld a, [de]                                    ; $7bac: $1a
    ld h, e                                       ; $7bad: $63
    and a                                         ; $7bae: $a7
    inc l                                         ; $7baf: $2c
    ld l, d                                       ; $7bb0: $6a
    adc [hl]                                      ; $7bb1: $8e
    dec sp                                        ; $7bb2: $3b
    push bc                                       ; $7bb3: $c5
    push de                                       ; $7bb4: $d5
    cp d                                          ; $7bb5: $ba
    add hl, de                                    ; $7bb6: $19
    rra                                           ; $7bb7: $1f
    rst $10                                       ; $7bb8: $d7
    cp e                                          ; $7bb9: $bb
    or b                                          ; $7bba: $b0
    ld [bc], a                                    ; $7bbb: $02
    cpl                                           ; $7bbc: $2f

Call_04c_7bbd:
    or c                                          ; $7bbd: $b1
    inc a                                         ; $7bbe: $3c
    db $d3                                        ; $7bbf: $d3
    cp d                                          ; $7bc0: $ba
    sub e                                         ; $7bc1: $93
    ld h, [hl]                                    ; $7bc2: $66
    call nz, $b9cd                                ; $7bc3: $c4 $cd $b9
    sub [hl]                                      ; $7bc6: $96
    ld a, e                                       ; $7bc7: $7b
    xor d                                         ; $7bc8: $aa
    db $f4                                        ; $7bc9: $f4
    dec de                                        ; $7bca: $1b
    ld sp, hl                                     ; $7bcb: $f9
    xor $b2                                       ; $7bcc: $ee $b2
    ld d, d                                       ; $7bce: $52
    dec [hl]                                      ; $7bcf: $35
    rst $10                                       ; $7bd0: $d7
    call c, $df1b                                 ; $7bd1: $dc $1b $df
    ld l, l                                       ; $7bd4: $6d
    sbc d                                         ; $7bd5: $9a
    sub c                                         ; $7bd6: $91
    sbc d                                         ; $7bd7: $9a
    ld e, e                                       ; $7bd8: $5b
    ld a, [hl-]                                   ; $7bd9: $3a
    ld e, e                                       ; $7bda: $5b
    ld d, h                                       ; $7bdb: $54
    db $ed                                        ; $7bdc: $ed

Call_04c_7bdd:
    rst $20                                       ; $7bdd: $e7
    or c                                          ; $7bde: $b1
    set 5, a                                      ; $7bdf: $cb $ef
    ld de, $8cec                                  ; $7be1: $11 $ec $8c
    ld b, c                                       ; $7be4: $41
    adc $fd                                       ; $7be5: $ce $fd
    sbc a                                         ; $7be7: $9f
    and $7b                                       ; $7be8: $e6 $7b
    xor $a4                                       ; $7bea: $ee $a4
    add hl, de                                    ; $7bec: $19
    ld sp, $47fc                                  ; $7bed: $31 $fc $47
    ld [bc], a                                    ; $7bf0: $02
    and [hl]                                      ; $7bf1: $a6
    ld sp, $de36                                  ; $7bf2: $31 $36 $de
    inc sp                                        ; $7bf5: $33
    cp c                                          ; $7bf6: $b9
    and b                                         ; $7bf7: $a0
    adc e                                         ; $7bf8: $8b
    ld a, [hl]                                    ; $7bf9: $7e
    ld a, c                                       ; $7bfa: $79
    cp [hl]                                       ; $7bfb: $be
    ei                                            ; $7bfc: $fb
    db $10                                        ; $7bfd: $10
    ld h, e                                       ; $7bfe: $63
    ld [hl], a                                    ; $7bff: $77
    db $db                                        ; $7c00: $db
    di                                            ; $7c01: $f3
    ld h, [hl]                                    ; $7c02: $66
    call nz, $4db7                                ; $7c03: $c4 $b7 $4d
    ld d, l                                       ; $7c06: $55
    rla                                           ; $7c07: $17
    adc $a5                                       ; $7c08: $ce $a5
    and $18                                       ; $7c0a: $e6 $18
    inc bc                                        ; $7c0c: $03
    rst $18                                       ; $7c0d: $df
    ld d, h                                       ; $7c0e: $54
    ld l, e                                       ; $7c0f: $6b
    ld [hl], e                                    ; $7c10: $73
    sub c                                         ; $7c11: $91
    ld bc, $f054                                  ; $7c12: $01 $54 $f0
    or b                                          ; $7c15: $b0
    sub e                                         ; $7c16: $93
    ld h, h                                       ; $7c17: $64
    ldh a, [$90]                                  ; $7c18: $f0 $90
    and e                                         ; $7c1a: $a3
    ld [hl-], a                                   ; $7c1b: $32
    ld h, $d8                                     ; $7c1c: $26 $d8
    adc a                                         ; $7c1e: $8f
    sub $e6                                       ; $7c1f: $d6 $e6
    and h                                         ; $7c21: $a4
    add hl, de                                    ; $7c22: $19
    ld sp, $47fc                                  ; $7c23: $31 $fc $47
    ld [bc], a                                    ; $7c26: $02
    and [hl]                                      ; $7c27: $a6
    ld sp, $ca76                                  ; $7c28: $31 $76 $ca
    and d                                         ; $7c2b: $a2
    and $b8                                       ; $7c2c: $e6 $b8
    ld d, e                                       ; $7c2e: $53
    ld e, h                                       ; $7c2f: $5c
    xor l                                         ; $7c30: $ad
    sbc e                                         ; $7c31: $9b
    pop af                                        ; $7c32: $f1
    ld bc, $67af                                  ; $7c33: $01 $af $67
    push af                                       ; $7c36: $f5
    cp b                                          ; $7c37: $b8
    db $e4                                        ; $7c38: $e4
    add b                                         ; $7c39: $80
    and l                                         ; $7c3a: $a5
    add hl, de                                    ; $7c3b: $19
    ld c, l                                       ; $7c3c: $4d
    xor b                                         ; $7c3d: $a8
    ld e, a                                       ; $7c3e: $5f
    ld a, [hl-]                                   ; $7c3f: $3a
    rla                                           ; $7c40: $17
    cp e                                          ; $7c41: $bb
    inc [hl]                                      ; $7c42: $34
    ld [hl+], a                                   ; $7c43: $22
    ld sp, $01f1                                  ; $7c44: $31 $f1 $01
    rst $08                                       ; $7c47: $cf
    push de                                       ; $7c48: $d5
    ldh [rNR42], a                                ; $7c49: $e0 $21
    ld [hl], a                                    ; $7c4b: $77
    ld h, c                                       ; $7c4c: $61
    ld c, e                                       ; $7c4d: $4b
    ld a, e                                       ; $7c4e: $7b
    push hl                                       ; $7c4f: $e5
    inc sp                                        ; $7c50: $33
    sub a                                         ; $7c51: $97
    ld l, $0e                                     ; $7c52: $2e $0e
    ld l, a                                       ; $7c54: $6f
    ld c, [hl]                                    ; $7c55: $4e
    ld l, b                                       ; $7c56: $68
    ld a, [c]                                     ; $7c57: $f2
    call z, $3412                                 ; $7c58: $cc $12 $34
    ld a, a                                       ; $7c5b: $7f
    call nc, $87dc                                ; $7c5c: $d4 $dc $87
    or $de                                        ; $7c5f: $f6 $de
    xor c                                         ; $7c61: $a9

jr_04c_7c62:
    sbc b                                         ; $7c62: $98
    adc d                                         ; $7c63: $8a
    adc e                                         ; $7c64: $8b
    xor c                                         ; $7c65: $a9
    halt                                          ; $7c66: $76
    ld sp, hl                                     ; $7c67: $f9
    ld b, c                                       ; $7c68: $41
    dec d                                         ; $7c69: $15
    inc a                                         ; $7c6a: $3c
    db $fc                                        ; $7c6b: $fc
    ld e, a                                       ; $7c6c: $5f
    rst $08                                       ; $7c6d: $cf
    db $fd                                        ; $7c6e: $fd
    sbc a                                         ; $7c6f: $9f
    halt                                          ; $7c70: $76
    ld e, c                                       ; $7c71: $59
    xor c                                         ; $7c72: $a9
    ld c, d                                       ; $7c73: $4a
    jr jr_04c_7c62                                ; $7c74: $18 $ec

    sub $5d                                       ; $7c76: $d6 $5d
    ld a, [hl]                                    ; $7c78: $7e
    cp b                                          ; $7c79: $b8
    and e                                         ; $7c7a: $a3
    xor $7a                                       ; $7c7b: $ee $7a
    push hl                                       ; $7c7d: $e5
    jp $b51d                                      ; $7c7e: $c3 $1d $b5


    inc bc                                        ; $7c81: $03
    sub a                                         ; $7c82: $97
    rst $38                                       ; $7c83: $ff
    inc bc                                        ; $7c84: $03
    add e                                         ; $7c85: $83
    add a                                         ; $7c86: $87
    call c, $17f4                                 ; $7c87: $dc $f4 $17
    rlca                                          ; $7c8a: $07
    ld c, a                                       ; $7c8b: $4f
    ld l, d                                       ; $7c8c: $6a
    pop bc                                        ; $7c8d: $c1
    ld d, c                                       ; $7c8e: $51
    ld a, e                                       ; $7c8f: $7b
    and l                                         ; $7c90: $a5
    inc h                                         ; $7c91: $24
    dec l                                         ; $7c92: $2d
    ld l, d                                       ; $7c93: $6a
    or d                                          ; $7c94: $b2
    and e                                         ; $7c95: $a3

Jump_04c_7c96:
    ld c, $af                                     ; $7c96: $0e $af
    jp $ffc3                                      ; $7c98: $c3 $c3 $ff


    ld [hl], l                                    ; $7c9b: $75
    ld hl, sp-$41                                 ; $7c9c: $f8 $bf
    ret z                                         ; $7c9e: $c8

    rra                                           ; $7c9f: $1f
    rst $10                                       ; $7ca0: $d7
    dec sp                                        ; $7ca1: $3b
    ld c, c                                       ; $7ca2: $49
    jr jr_04c_7ca5                                ; $7ca3: $18 $00

jr_04c_7ca5:
    ld e, [hl]                                    ; $7ca5: $5e
    sbc e                                         ; $7ca6: $9b
    ld l, e                                       ; $7ca7: $6b
    sub [hl]                                      ; $7ca8: $96
    nop                                           ; $7ca9: $00
    ld d, [hl]                                    ; $7caa: $56
    pop af                                        ; $7cab: $f1
    rst $38                                       ; $7cac: $ff
    inc e                                         ; $7cad: $1c
    rra                                           ; $7cae: $1f
    rst $10                                       ; $7caf: $d7
    ld c, l                                       ; $7cb0: $4d
    ld c, d                                       ; $7cb1: $4a
    xor h                                         ; $7cb2: $ac
    ld hl, sp+$5d                                 ; $7cb3: $f8 $5d
    dec [hl]                                      ; $7cb5: $35
    ld e, $aa                                     ; $7cb6: $1e $aa
    add l                                         ; $7cb8: $85
    xor l                                         ; $7cb9: $ad
    ld e, [hl]                                    ; $7cba: $5e
    add hl, bc                                    ; $7cbb: $09
    call z, $aac5                                 ; $7cbc: $cc $c5 $aa
    ld hl, sp+$00                                 ; $7cbf: $f8 $00
    ld l, a                                       ; $7cc1: $6f
    ld a, h                                       ; $7cc2: $7c
    or a                                          ; $7cc3: $b7
    db $e4                                        ; $7cc4: $e4
    ret                                           ; $7cc5: $c9


    ld d, d                                       ; $7cc6: $52
    ld d, d                                       ; $7cc7: $52
    pop hl                                        ; $7cc8: $e1
    add l                                         ; $7cc9: $85
    ld hl, sp+$00                                 ; $7cca: $f8 $00
    rst $08                                       ; $7ccc: $cf
    ld l, d                                       ; $7ccd: $6a
    add h                                         ; $7cce: $84
    sbc d                                         ; $7ccf: $9a
    cp $1f                                        ; $7cd0: $fe $1f

Call_04c_7cd2:
    ld l, a                                       ; $7cd2: $6f
    sub l                                         ; $7cd3: $95
    ld [hl+], a                                   ; $7cd4: $22
    call nc, $bf1a                                ; $7cd5: $d4 $1a $bf
    and e                                         ; $7cd8: $a3
    ld c, $6f                                     ; $7cd9: $0e $6f
    sub l                                         ; $7cdb: $95
    inc a                                         ; $7cdc: $3c
    ld b, [hl]                                    ; $7cdd: $46
    xor b                                         ; $7cde: $a8
    dec [hl]                                      ; $7cdf: $35
    ld a, [hl]                                    ; $7ce0: $7e
    ld b, a                                       ; $7ce1: $47
    dec e                                         ; $7ce2: $1d
    rst $10                                       ; $7ce3: $d7
    ld [de], a                                    ; $7ce4: $12
    sbc $f4                                       ; $7ce5: $de $f4
    ld hl, sp+$0f                                 ; $7ce7: $f8 $0f
    dec sp                                        ; $7ce9: $3b
    nop                                           ; $7cea: $00
    dec sp                                        ; $7ceb: $3b
    nop                                           ; $7cec: $00
    dec sp                                        ; $7ced: $3b
    nop                                           ; $7cee: $00
    dec sp                                        ; $7cef: $3b
    nop                                           ; $7cf0: $00
    dec sp                                        ; $7cf1: $3b
    nop                                           ; $7cf2: $00
    dec sp                                        ; $7cf3: $3b
    nop                                           ; $7cf4: $00
    dec sp                                        ; $7cf5: $3b
    nop                                           ; $7cf6: $00
    dec sp                                        ; $7cf7: $3b
    nop                                           ; $7cf8: $00
    dec sp                                        ; $7cf9: $3b
    nop                                           ; $7cfa: $00
    dec sp                                        ; $7cfb: $3b
    nop                                           ; $7cfc: $00
    dec sp                                        ; $7cfd: $3b
    nop                                           ; $7cfe: $00
    dec sp                                        ; $7cff: $3b
    nop                                           ; $7d00: $00
    dec sp                                        ; $7d01: $3b
    nop                                           ; $7d02: $00
    dec sp                                        ; $7d03: $3b
    nop                                           ; $7d04: $00
    dec sp                                        ; $7d05: $3b
    nop                                           ; $7d06: $00
    dec sp                                        ; $7d07: $3b
    nop                                           ; $7d08: $00
    dec sp                                        ; $7d09: $3b
    nop                                           ; $7d0a: $00
    dec sp                                        ; $7d0b: $3b
    nop                                           ; $7d0c: $00
    dec sp                                        ; $7d0d: $3b
    nop                                           ; $7d0e: $00
    dec sp                                        ; $7d0f: $3b
    nop                                           ; $7d10: $00
    dec sp                                        ; $7d11: $3b
    nop                                           ; $7d12: $00
    dec sp                                        ; $7d13: $3b

Jump_04c_7d14:
    nop                                           ; $7d14: $00
    dec sp                                        ; $7d15: $3b
    nop                                           ; $7d16: $00
    dec sp                                        ; $7d17: $3b
    nop                                           ; $7d18: $00
    dec sp                                        ; $7d19: $3b
    nop                                           ; $7d1a: $00
    dec sp                                        ; $7d1b: $3b
    nop                                           ; $7d1c: $00
    dec sp                                        ; $7d1d: $3b
    nop                                           ; $7d1e: $00
    dec sp                                        ; $7d1f: $3b
    nop                                           ; $7d20: $00
    dec sp                                        ; $7d21: $3b
    nop                                           ; $7d22: $00
    dec sp                                        ; $7d23: $3b
    nop                                           ; $7d24: $00
    dec sp                                        ; $7d25: $3b
    nop                                           ; $7d26: $00
    dec sp                                        ; $7d27: $3b
    nop                                           ; $7d28: $00
    dec sp                                        ; $7d29: $3b
    nop                                           ; $7d2a: $00
    dec sp                                        ; $7d2b: $3b
    nop                                           ; $7d2c: $00
    dec sp                                        ; $7d2d: $3b
    nop                                           ; $7d2e: $00
    dec sp                                        ; $7d2f: $3b
    nop                                           ; $7d30: $00
    dec sp                                        ; $7d31: $3b
    nop                                           ; $7d32: $00
    dec sp                                        ; $7d33: $3b
    nop                                           ; $7d34: $00
    dec sp                                        ; $7d35: $3b
    nop                                           ; $7d36: $00
    dec sp                                        ; $7d37: $3b
    nop                                           ; $7d38: $00
    dec sp                                        ; $7d39: $3b
    nop                                           ; $7d3a: $00
    dec sp                                        ; $7d3b: $3b
    nop                                           ; $7d3c: $00
    ld l, a                                       ; $7d3d: $6f
    inc d                                         ; $7d3e: $14
    inc [hl]                                      ; $7d3f: $34
    ld bc, $0e8a                                  ; $7d40: $01 $8a $0e
    ld l, a                                       ; $7d43: $6f
    inc hl                                        ; $7d44: $23
    nop                                           ; $7d45: $00
    call $b553                                    ; $7d46: $cd $53 $b5
    rst $30                                       ; $7d49: $f7
    ld h, h                                       ; $7d4a: $64
    add hl, hl                                    ; $7d4b: $29
    rrca                                          ; $7d4c: $0f
    sub a                                         ; $7d4d: $97
    rst $38                                       ; $7d4e: $ff
    add e                                         ; $7d4f: $83
    ld d, e                                       ; $7d50: $53
    cp h                                          ; $7d51: $bc
    or a                                          ; $7d52: $b7
    ld de, $e680                                  ; $7d53: $11 $80 $e6
    xor c                                         ; $7d56: $a9
    jp c, $2f1f                                   ; $7d57: $da $1f $2f

    and a                                         ; $7d5a: $a7
    inc h                                         ; $7d5b: $24
    rlca                                          ; $7d5c: $07
    cp l                                          ; $7d5d: $bd
    ld e, e                                       ; $7d5e: $5b
    ld a, [c]                                     ; $7d5f: $f2
    push de                                       ; $7d60: $d5
    and b                                         ; $7d61: $a0
    ld [hl], h                                    ; $7d62: $74
    nop                                           ; $7d63: $00
    ld l, a                                       ; $7d64: $6f
    ld hl, $845b                                  ; $7d65: $21 $5b $84
    or b                                          ; $7d68: $b0
    dec a                                         ; $7d69: $3d
    ld e, c                                       ; $7d6a: $59
    jp z, $af03                                   ; $7d6b: $ca $03 $af

    inc d                                         ; $7d6e: $14
    ld a, [hl+]                                   ; $7d6f: $2a
    ld a, c                                       ; $7d70: $79
    or d                                          ; $7d71: $b2
    sub h                                         ; $7d72: $94
    rlca                                          ; $7d73: $07
    rst $08                                       ; $7d74: $cf
    pop de                                        ; $7d75: $d1
    rst $38                                       ; $7d76: $ff
    xor h                                         ; $7d77: $ac
    ld a, [hl-]                                   ; $7d78: $3a
    xor b                                         ; $7d79: $a8
    ld d, b                                       ; $7d7a: $50
    ret                                           ; $7d7b: $c9


    sub e                                         ; $7d7c: $93
    and l                                         ; $7d7d: $a5
    inc a                                         ; $7d7e: $3c
    nop                                           ; $7d7f: $00
    dec sp                                        ; $7d80: $3b
    nop                                           ; $7d81: $00
    dec sp                                        ; $7d82: $3b
    nop                                           ; $7d83: $00
    dec sp                                        ; $7d84: $3b
    nop                                           ; $7d85: $00
    dec sp                                        ; $7d86: $3b
    nop                                           ; $7d87: $00
    dec sp                                        ; $7d88: $3b
    nop                                           ; $7d89: $00
    dec sp                                        ; $7d8a: $3b
    nop                                           ; $7d8b: $00
    dec sp                                        ; $7d8c: $3b
    nop                                           ; $7d8d: $00
    dec sp                                        ; $7d8e: $3b
    nop                                           ; $7d8f: $00
    dec sp                                        ; $7d90: $3b
    nop                                           ; $7d91: $00
    dec sp                                        ; $7d92: $3b
    nop                                           ; $7d93: $00
    dec sp                                        ; $7d94: $3b
    nop                                           ; $7d95: $00
    ld l, a                                       ; $7d96: $6f
    sub l                                         ; $7d97: $95
    ld e, h                                       ; $7d98: $5c
    db $fd                                        ; $7d99: $fd
    dec hl                                        ; $7d9a: $2b
    ld sp, $5341                                  ; $7d9b: $31 $41 $53
    ld hl, sp-$6b                                 ; $7d9e: $f8 $95
    rlca                                          ; $7da0: $07
    dec sp                                        ; $7da1: $3b
    nop                                           ; $7da2: $00
    dec sp                                        ; $7da3: $3b
    nop                                           ; $7da4: $00
    dec sp                                        ; $7da5: $3b
    nop                                           ; $7da6: $00
    dec sp                                        ; $7da7: $3b
    nop                                           ; $7da8: $00
    dec sp                                        ; $7da9: $3b
    nop                                           ; $7daa: $00
    dec sp                                        ; $7dab: $3b
    nop                                           ; $7dac: $00
    dec sp                                        ; $7dad: $3b
    nop                                           ; $7dae: $00
    dec sp                                        ; $7daf: $3b
    nop                                           ; $7db0: $00
    dec sp                                        ; $7db1: $3b
    nop                                           ; $7db2: $00
    dec sp                                        ; $7db3: $3b
    nop                                           ; $7db4: $00
    dec sp                                        ; $7db5: $3b
    nop                                           ; $7db6: $00
    dec sp                                        ; $7db7: $3b
    nop                                           ; $7db8: $00
    dec sp                                        ; $7db9: $3b
    nop                                           ; $7dba: $00
    dec sp                                        ; $7dbb: $3b
    nop                                           ; $7dbc: $00
    dec sp                                        ; $7dbd: $3b
    nop                                           ; $7dbe: $00
    dec sp                                        ; $7dbf: $3b
    nop                                           ; $7dc0: $00
    dec sp                                        ; $7dc1: $3b
    nop                                           ; $7dc2: $00
    dec sp                                        ; $7dc3: $3b
    nop                                           ; $7dc4: $00
    dec sp                                        ; $7dc5: $3b
    nop                                           ; $7dc6: $00
    dec sp                                        ; $7dc7: $3b
    nop                                           ; $7dc8: $00

Jump_04c_7dc9:
    dec sp                                        ; $7dc9: $3b
    nop                                           ; $7dca: $00
    ld c, a                                       ; $7dcb: $4f
    ld l, d                                       ; $7dcc: $6a
    db $dd                                        ; $7dcd: $dd
    cp l                                          ; $7dce: $bd
    ld e, $99                                     ; $7dcf: $1e $99
    ld l, h                                       ; $7dd1: $6c
    xor $f5                                       ; $7dd2: $ee $f5
    xor b                                         ; $7dd4: $a8
    ld d, d                                       ; $7dd5: $52
    ld h, d                                       ; $7dd6: $62
    push de                                       ; $7dd7: $d5
    ld bc, $003b                                  ; $7dd8: $01 $3b $00
    ld c, a                                       ; $7ddb: $4f
    ld d, l                                       ; $7ddc: $55
    ld [hl], c                                    ; $7ddd: $71
    rst $30                                       ; $7dde: $f7
    sub h                                         ; $7ddf: $94
    inc hl                                        ; $7de0: $23
    ld [$c0d5], sp                                ; $7de1: $08 $d5 $c0
    adc c                                         ; $7de4: $89
    ld c, $af                                     ; $7de5: $0e $af
    db $fc                                        ; $7de7: $fc
    ld [$4dfa], sp                                ; $7de8: $08 $fa $4d
    ld [hl], $23                                  ; $7deb: $36 $23
    ld c, $aa                                     ; $7ded: $0e $aa
    ld c, $cf                                     ; $7def: $0e $cf
    sub a                                         ; $7df1: $97
    xor e                                         ; $7df2: $ab
    push hl                                       ; $7df3: $e5
    xor a                                         ; $7df4: $af
    inc a                                         ; $7df5: $3c
    nop                                           ; $7df6: $00
    ld d, a                                       ; $7df7: $57
    jp hl                                         ; $7df8: $e9


    ld b, e                                       ; $7df9: $43
    db $fc                                        ; $7dfa: $fc
    db $dd                                        ; $7dfb: $dd
    sub d                                         ; $7dfc: $92
    ld [c], a                                     ; $7dfd: $e2
    cpl                                           ; $7dfe: $2f
    ld h, l                                       ; $7dff: $65
    di                                            ; $7e00: $f3
    nop                                           ; $7e01: $00
    dec sp                                        ; $7e02: $3b
    nop                                           ; $7e03: $00
    dec sp                                        ; $7e04: $3b
    nop                                           ; $7e05: $00
    dec sp                                        ; $7e06: $3b
    nop                                           ; $7e07: $00
    dec sp                                        ; $7e08: $3b
    nop                                           ; $7e09: $00
    dec sp                                        ; $7e0a: $3b
    nop                                           ; $7e0b: $00
    dec sp                                        ; $7e0c: $3b
    nop                                           ; $7e0d: $00
    dec sp                                        ; $7e0e: $3b
    nop                                           ; $7e0f: $00
    dec sp                                        ; $7e10: $3b
    nop                                           ; $7e11: $00
    dec sp                                        ; $7e12: $3b
    nop                                           ; $7e13: $00
    dec sp                                        ; $7e14: $3b
    nop                                           ; $7e15: $00
    dec sp                                        ; $7e16: $3b
    nop                                           ; $7e17: $00
    dec sp                                        ; $7e18: $3b
    nop                                           ; $7e19: $00
    dec sp                                        ; $7e1a: $3b
    nop                                           ; $7e1b: $00
    dec sp                                        ; $7e1c: $3b
    nop                                           ; $7e1d: $00
    dec sp                                        ; $7e1e: $3b
    nop                                           ; $7e1f: $00
    dec sp                                        ; $7e20: $3b
    nop                                           ; $7e21: $00
    dec sp                                        ; $7e22: $3b
    nop                                           ; $7e23: $00
    dec sp                                        ; $7e24: $3b
    nop                                           ; $7e25: $00
    rst $08                                       ; $7e26: $cf
    ld l, d                                       ; $7e27: $6a
    rlca                                          ; $7e28: $07
    ld sp, hl                                     ; $7e29: $f9
    nop                                           ; $7e2a: $00
    dec sp                                        ; $7e2b: $3b
    nop                                           ; $7e2c: $00
    dec sp                                        ; $7e2d: $3b
    nop                                           ; $7e2e: $00
    dec sp                                        ; $7e2f: $3b
    nop                                           ; $7e30: $00
    dec sp                                        ; $7e31: $3b
    nop                                           ; $7e32: $00
    dec sp                                        ; $7e33: $3b
    nop                                           ; $7e34: $00
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

Call_04c_7fc1:
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

Call_04c_7ff0:
Jump_04c_7ff0:
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
