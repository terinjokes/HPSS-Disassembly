; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

    ld e, d                                       ; $4000: $5a
    ld l, [hl]                                    ; $4001: $6e
    rst $28                                       ; $4002: $ef
    db $fc                                        ; $4003: $fc
    dec de                                        ; $4004: $1b
    or a                                          ; $4005: $b7
    and d                                         ; $4006: $a2
    db $e4                                        ; $4007: $e4
    ld b, a                                       ; $4008: $47
    ld [hl], a                                    ; $4009: $77
    halt                                          ; $400a: $76
    ld h, a                                       ; $400b: $67
    halt                                          ; $400c: $76

jr_05a_400d:
    ld c, c                                       ; $400d: $49
    db $fc                                        ; $400e: $fc
    ld h, h                                       ; $400f: $64
    ld b, [hl]                                    ; $4010: $46
    jp nz, $bb92                                  ; $4011: $c2 $92 $bb

    db $ec                                        ; $4014: $ec
    cp l                                          ; $4015: $bd
    rst $30                                       ; $4016: $f7
    ld a, $04                                     ; $4017: $3e $04
    cp a                                          ; $4019: $bf
    sbc d                                         ; $401a: $9a
    call z, $1e48                                 ; $401b: $cc $48 $1e
    ld h, b                                       ; $401e: $60
    halt                                          ; $401f: $76
    ld [c], a                                     ; $4020: $e2
    ld [bc], a                                    ; $4021: $02
    cp h                                          ; $4022: $bc
    ld e, h                                       ; $4023: $5c
    inc l                                         ; $4024: $2c
    cp l                                          ; $4025: $bd
    nop                                           ; $4026: $00
    sbc [hl]                                      ; $4027: $9e
    ld [hl+], a                                   ; $4028: $22
    and [hl]                                      ; $4029: $a6
    rla                                           ; $402a: $17
    nop                                           ; $402b: $00
    inc e                                         ; $402c: $1c
    daa                                           ; $402d: $27
    ld a, d                                       ; $402e: $7a
    ld l, [hl]                                    ; $402f: $6e
    xor c                                         ; $4030: $a9
    ld l, b                                       ; $4031: $68
    ld [hl], d                                    ; $4032: $72
    pop bc                                        ; $4033: $c1
    ld b, h                                       ; $4034: $44
    dec h                                         ; $4035: $25
    jr jr_05a_400d                                ; $4036: $18 $d5

    sbc a                                         ; $4038: $9f
    ld a, a                                       ; $4039: $7f
    push de                                       ; $403a: $d5
    ld l, b                                       ; $403b: $68
    ld a, c                                       ; $403c: $79
    ld de, $276f                                  ; $403d: $11 $6f $27
    or d                                          ; $4040: $b2
    ld c, e                                       ; $4041: $4b
    ld a, [c]                                     ; $4042: $f2
    db $fc                                        ; $4043: $fc
    add hl, de                                    ; $4044: $19
    ld a, [hl+]                                   ; $4045: $2a
    rst $38                                       ; $4046: $ff
    dec l                                         ; $4047: $2d
    add hl, sp                                    ; $4048: $39
    call nz, Call_05a_60ee                        ; $4049: $c4 $ee $60
    ld c, c                                       ; $404c: $49
    push bc                                       ; $404d: $c5
    ld l, d                                       ; $404e: $6a
    ld a, [hl]                                    ; $404f: $7e
    push de                                       ; $4050: $d5
    rst $30                                       ; $4051: $f7
    ld l, e                                       ; $4052: $6b
    ld a, [hl]                                    ; $4053: $7e
    ld e, $c1                                     ; $4054: $1e $c1
    cp [hl]                                       ; $4056: $be
    ld e, a                                       ; $4057: $5f
    add hl, sp                                    ; $4058: $39
    ld de, $3aa3                                  ; $4059: $11 $a3 $3a
    cp a                                          ; $405c: $bf
    sub $51                                       ; $405d: $d6 $51
    sbc d                                         ; $405f: $9a
    ld e, a                                       ; $4060: $5f
    ld h, [hl]                                    ; $4061: $66

jr_05a_4062:
    ld a, a                                       ; $4062: $7f
    ld bc, $5b7c                                  ; $4063: $01 $7c $5b
    inc h                                         ; $4066: $24
    or h                                          ; $4067: $b4
    rst $38                                       ; $4068: $ff
    jp nc, $cecc                                  ; $4069: $d2 $cc $ce

    ld hl, $5b6d                                  ; $406c: $21 $6d $5b
    jr z, @+$01                                   ; $406f: $28 $ff

    or e                                          ; $4071: $b3
    db $fd                                        ; $4072: $fd
    or d                                          ; $4073: $b2
    jr jr_05a_4062                                ; $4074: $18 $ec

jr_05a_4076:
    ld l, e                                       ; $4076: $6b
    cpl                                           ; $4077: $2f
    nop                                           ; $4078: $00
    cp h                                          ; $4079: $bc
    ld e, a                                       ; $407a: $5f
    push af                                       ; $407b: $f5
    db $dd                                        ; $407c: $dd
    cp a                                          ; $407d: $bf
    or [hl]                                       ; $407e: $b6
    jp nz, Jump_05a_5e73                          ; $407f: $c2 $73 $5e

    add hl, sp                                    ; $4082: $39
    and l                                         ; $4083: $a5
    ld d, h                                       ; $4084: $54
    sbc d                                         ; $4085: $9a
    sbc b                                         ; $4086: $98
    halt                                          ; $4087: $76
    sbc h                                         ; $4088: $9c
    db $fd                                        ; $4089: $fd
    cp a                                          ; $408a: $bf
    db $fd                                        ; $408b: $fd
    ld c, l                                       ; $408c: $4d
    xor d                                         ; $408d: $aa
    ld a, a                                       ; $408e: $7f
    ld h, l                                       ; $408f: $65
    ld e, e                                       ; $4090: $5b
    jp $d5fa                                      ; $4091: $c3 $fa $d5


    db $e3                                        ; $4094: $e3
    ld b, h                                       ; $4095: $44
    ret z                                         ; $4096: $c8

    cp $fe                                        ; $4097: $fe $fe
    ld a, [hl-]                                   ; $4099: $3a
    cp a                                          ; $409a: $bf
    dec d                                         ; $409b: $15
    and l                                         ; $409c: $a5
    add hl, sp                                    ; $409d: $39
    or [hl]                                       ; $409e: $b6
    db $e4                                        ; $409f: $e4
    ld b, l                                       ; $40a0: $45
    cp h                                          ; $40a1: $bc
    sbc l                                         ; $40a2: $9d
    ret z                                         ; $40a3: $c8

    ld l, $00                                     ; $40a4: $2e $00
    ld a, h                                       ; $40a6: $7c
    ld d, c                                       ; $40a7: $51
    sub e                                         ; $40a8: $93
    ld c, b                                       ; $40a9: $48
    jr nc, jr_05a_4076                            ; $40aa: $30 $ca

    rst $00                                       ; $40ac: $c7
    or l                                          ; $40ad: $b5
    dec bc                                        ; $40ae: $0b
    nop                                           ; $40af: $00
    db $fc                                        ; $40b0: $fc
    cp a                                          ; $40b1: $bf
    sub b                                         ; $40b2: $90
    cp a                                          ; $40b3: $bf
    rst $28                                       ; $40b4: $ef
    sub b                                         ; $40b5: $90
    ld l, l                                       ; $40b6: $6d
    sub e                                         ; $40b7: $93
    and d                                         ; $40b8: $a2
    ld a, [hl+]                                   ; $40b9: $2a
    ld c, d                                       ; $40ba: $4a
    ret c                                         ; $40bb: $d8

    db $fd                                        ; $40bc: $fd
    xor a                                         ; $40bd: $af
    adc [hl]                                      ; $40be: $8e
    dec a                                         ; $40bf: $3d
    ld c, l                                       ; $40c0: $4d
    jp z, $a529                                   ; $40c1: $ca $29 $a5

    jp nc, $33fd                                  ; $40c4: $d2 $fd $33

    sub $f6                                       ; $40c7: $d6 $f6
    dec d                                         ; $40c9: $15
    add hl, sp                                    ; $40ca: $39
    pop de                                        ; $40cb: $d1
    or h                                          ; $40cc: $b4
    cp l                                          ; $40cd: $bd
    call nz, $d94b                                ; $40ce: $c4 $4b $d9
    inc h                                         ; $40d1: $24
    jp nc, $addc                                  ; $40d2: $d2 $dc $ad

    jp c, Jump_05a_7ca4                           ; $40d5: $da $a4 $7c

    add h                                         ; $40d8: $84
    cp a                                          ; $40d9: $bf
    ld bc, $f9bc                                  ; $40da: $01 $bc $f9
    xor $e4                                       ; $40dd: $ee $e4
    ld b, $1c                                     ; $40df: $06 $1c
    sub $3f                                       ; $40e1: $d6 $3f
    rst $38                                       ; $40e3: $ff
    dec d                                         ; $40e4: $15
    ld h, l                                       ; $40e5: $65
    xor e                                         ; $40e6: $ab
    add hl, de                                    ; $40e7: $19
    adc h                                         ; $40e8: $8c
    db $fd                                        ; $40e9: $fd
    add hl, sp                                    ; $40ea: $39
    cpl                                           ; $40eb: $2f
    cp h                                          ; $40ec: $bc
    cp a                                          ; $40ed: $bf
    dec [hl]                                      ; $40ee: $35
    sbc a                                         ; $40ef: $9f
    call Call_05a_55b9                            ; $40f0: $cd $b9 $55
    pop bc                                        ; $40f3: $c1
    dec c                                         ; $40f4: $0d
    nop                                           ; $40f5: $00
    db $fc                                        ; $40f6: $fc
    ld [hl], h                                    ; $40f7: $74
    sub e                                         ; $40f8: $93
    ld h, d                                       ; $40f9: $62
    dec b                                         ; $40fa: $05
    inc de                                        ; $40fb: $13
    xor c                                         ; $40fc: $a9
    add hl, hl                                    ; $40fd: $29
    and l                                         ; $40fe: $a5
    ld c, d                                       ; $40ff: $4a
    jp z, Jump_05a_7621                           ; $4100: $ca $21 $76

    rlca                                          ; $4103: $07
    db $e3                                        ; $4104: $e3
    ld b, $bc                                     ; $4105: $06 $bc
    cp e                                          ; $4107: $bb
    adc l                                         ; $4108: $8d
    sub [hl]                                      ; $4109: $96
    sub h                                         ; $410a: $94
    ld b, e                                       ; $410b: $43
    db $ec                                        ; $410c: $ec
    ld c, $76                                     ; $410d: $0e $76
    ld c, c                                       ; $410f: $49
    ld c, $b2                                     ; $4110: $0e $b2
    ld d, [hl]                                    ; $4112: $56
    ld l, a                                       ; $4113: $6f
    ld b, b                                       ; $4114: $40
    xor b                                         ; $4115: $a8
    sub e                                         ; $4116: $93
    adc d                                         ; $4117: $8a
    xor $58                                       ; $4118: $ee $58
    ld sp, hl                                     ; $411a: $f9
    rst $08                                       ; $411b: $cf
    ld [c], a                                     ; $411c: $e2
    cp [hl]                                       ; $411d: $be
    rst $30                                       ; $411e: $f7
    sbc h                                         ; $411f: $9c
    adc b                                         ; $4120: $88
    jp nc, $aafc                                  ; $4121: $d2 $fc $aa

    rst $28                                       ; $4124: $ef
    rla                                           ; $4125: $17
    bit 7, h                                      ; $4126: $cb $7c
    ccf                                           ; $4128: $3f
    db $db                                        ; $4129: $db
    ld [hl], e                                    ; $412a: $73
    add sp, $02                                   ; $412b: $e8 $02
    inc e                                         ; $412d: $1c
    ld h, a                                       ; $412e: $67
    push bc                                       ; $412f: $c5
    rst $30                                       ; $4130: $f7
    daa                                           ; $4131: $27
    ld b, c                                       ; $4132: $41
    call z, $584a                                 ; $4133: $cc $4a $58
    or l                                          ; $4136: $b5
    ld c, c                                       ; $4137: $49
    ld b, l                                       ; $4138: $45
    scf                                           ; $4139: $37
    jp hl                                         ; $413a: $e9


    sbc $22                                       ; $413b: $de $22
    ld b, l                                       ; $413d: $45
    add hl, bc                                    ; $413e: $09
    rst $08                                       ; $413f: $cf
    add hl, de                                    ; $4140: $19
    dec l                                         ; $4141: $2d
    rst $38                                       ; $4142: $ff
    ld [hl], a                                    ; $4143: $77
    cp $39                                        ; $4144: $fe $39
    rst $08                                       ; $4146: $cf
    dec l                                         ; $4147: $2d
    adc [hl]                                      ; $4148: $8e
    ld a, [hl]                                    ; $4149: $7e
    dec [hl]                                      ; $414a: $35
    ld e, c                                       ; $414b: $59
    sub e                                         ; $414c: $93
    ld a, b                                       ; $414d: $78
    and d                                         ; $414e: $a2
    rst $10                                       ; $414f: $d7
    ld l, a                                       ; $4150: $6f
    db $f4                                        ; $4151: $f4
    sbc l                                         ; $4152: $9d
    add c                                         ; $4153: $81
    rlca                                          ; $4154: $07
    sbc $ff                                       ; $4155: $de $ff
    ld c, c                                       ; $4157: $49
    ld e, c                                       ; $4158: $59
    ret z                                         ; $4159: $c8

    ld a, a                                       ; $415a: $7f
    or $d5                                        ; $415b: $f6 $d5
    rst $38                                       ; $415d: $ff
    or d                                          ; $415e: $b2
    xor l                                         ; $415f: $ad
    pop de                                        ; $4160: $d1
    rla                                           ; $4161: $17
    nop                                           ; $4162: $00
    ld c, $70                                     ; $4163: $0e $70
    ld c, e                                       ; $4165: $4b
    or l                                          ; $4166: $b5
    db $db                                        ; $4167: $db
    inc h                                         ; $4168: $24
    xor [hl]                                      ; $4169: $ae
    ld l, h                                       ; $416a: $6c
    ld c, [hl]                                    ; $416b: $4e
    ld h, d                                       ; $416c: $62
    or c                                          ; $416d: $b1
    ld c, l                                       ; $416e: $4d
    sbc d                                         ; $416f: $9a
    ld h, h                                       ; $4170: $64
    db $db                                        ; $4171: $db
    ld [hl], c                                    ; $4172: $71
    ld c, $51                                     ; $4173: $0e $51
    ld [hl], c                                    ; $4175: $71
    inc bc                                        ; $4176: $03
    inc a                                         ; $4177: $3c
    ld e, c                                       ; $4178: $59
    ld c, [hl]                                    ; $4179: $4e
    add d                                         ; $417a: $82
    ld b, a                                       ; $417b: $47
    rst $30                                       ; $417c: $f7
    ld c, b                                       ; $417d: $48
    adc d                                         ; $417e: $8a
    rst $20                                       ; $417f: $e7
    add hl, de                                    ; $4180: $19
    sra [hl]                                      ; $4181: $cb $2e
    nop                                           ; $4183: $00
    ld l, [hl]                                    ; $4184: $6e
    rst $28                                       ; $4185: $ef
    ld a, h                                       ; $4186: $7c
    ld sp, hl                                     ; $4187: $f9
    ld a, a                                       ; $4188: $7f
    ld h, b                                       ; $4189: $60
    inc l                                         ; $418a: $2c
    ld sp, hl                                     ; $418b: $f9
    ret z                                         ; $418c: $c8

    add $2b                                       ; $418d: $c6 $2b
    sbc e                                         ; $418f: $9b
    or [hl]                                       ; $4190: $b6
    sub $a4                                       ; $4191: $d6 $a4
    ei                                            ; $4193: $fb
    ld h, a                                       ; $4194: $67

Jump_05a_4195:
    xor h                                         ; $4195: $ac
    xor l                                         ; $4196: $ad
    push af                                       ; $4197: $f5
    ld e, a                                       ; $4198: $5f
    nop                                           ; $4199: $00
    inc a                                         ; $419a: $3c
    ld e, c                                       ; $419b: $59
    cp [hl]                                       ; $419c: $be
    and l                                         ; $419d: $a5
    add $bd                                       ; $419e: $c6 $bd
    or a                                          ; $41a0: $b7
    ld a, e                                       ; $41a1: $7b
    inc h                                         ; $41a2: $24
    push bc                                       ; $41a3: $c5
    di                                            ; $41a4: $f3
    adc h                                         ; $41a5: $8c
    ld h, l                                       ; $41a6: $65
    sub a                                         ; $41a7: $97
    ld a, b                                       ; $41a8: $78
    xor b                                         ; $41a9: $a8
    add h                                         ; $41aa: $84
    dec sp                                        ; $41ab: $3b
    ld h, e                                       ; $41ac: $63
    ld c, e                                       ; $41ad: $4b
    inc sp                                        ; $41ae: $33
    jr @+$4e                                      ; $41af: $18 $4c

    or [hl]                                       ; $41b1: $b6
    or d                                          ; $41b2: $b2
    ld l, l                                       ; $41b3: $6d
    cp d                                          ; $41b4: $ba
    nop                                           ; $41b5: $00
    ld c, $b2                                     ; $41b6: $0e $b2
    ld d, [hl]                                    ; $41b8: $56
    ld c, d                                       ; $41b9: $4a
    dec h                                         ; $41ba: $25
    inc l                                         ; $41bb: $2c
    push hl                                       ; $41bc: $e5
    cp a                                          ; $41bd: $bf
    and l                                         ; $41be: $a5
    xor b                                         ; $41bf: $a8
    ld e, [hl]                                    ; $41c0: $5e
    ld l, e                                       ; $41c1: $6b
    sub d                                         ; $41c2: $92
    rst $38                                       ; $41c3: $ff
    ld l, c                                       ; $41c4: $69

jr_05a_41c5:
    call c, Call_000_26fe                         ; $41c5: $dc $fe $26
    dec [hl]                                      ; $41c8: $35
    ld [hl], a                                    ; $41c9: $77
    dec de                                        ; $41ca: $1b
    ld c, l                                       ; $41cb: $4d
    or [hl]                                       ; $41cc: $b6
    dec [hl]                                      ; $41cd: $35
    adc d                                         ; $41ce: $8a
    dec de                                        ; $41cf: $1b
    nop                                           ; $41d0: $00
    ret nc                                        ; $41d1: $d0

    jp hl                                         ; $41d2: $e9


    inc h                                         ; $41d3: $24
    reti                                          ; $41d4: $d9


    ld d, $29                                     ; $41d5: $16 $29
    ld e, d                                       ; $41d7: $5a
    ld a, b                                       ; $41d8: $78
    ld h, d                                       ; $41d9: $62
    cp $97                                        ; $41da: $fe $97
    xor $df                                       ; $41dc: $ee $df
    adc d                                         ; $41de: $8a
    or b                                          ; $41df: $b0
    ld d, l                                       ; $41e0: $55
    ld e, $0c                                     ; $41e1: $1e $0c
    or a                                          ; $41e3: $b7
    and d                                         ; $41e4: $a2
    ld l, $00                                     ; $41e5: $2e $00
    sbc h                                         ; $41e7: $9c
    rst $38                                       ; $41e8: $ff
    ld sp, hl                                     ; $41e9: $f9
    cp b                                          ; $41ea: $b8
    rst $28                                       ; $41eb: $ef
    db $10                                        ; $41ec: $10
    ld a, a                                       ; $41ed: $7f
    halt                                          ; $41ee: $76
    ld [hl-], a                                   ; $41ef: $32
    rst $38                                       ; $41f0: $ff
    db $d3                                        ; $41f1: $d3
    ld sp, hl                                     ; $41f2: $f9
    ld e, a                                       ; $41f3: $5f
    sub a                                         ; $41f4: $97
    jr c, jr_05a_41c5                             ; $41f5: $38 $ce

    db $fc                                        ; $41f7: $fc
    ld d, a                                       ; $41f8: $57
    sbc d                                         ; $41f9: $9a
    push hl                                       ; $41fa: $e5
    inc h                                         ; $41fb: $24
    ld hl, sp-$1b                                 ; $41fc: $f8 $e5
    adc a                                         ; $41fe: $8f
    add hl, de                                    ; $41ff: $19
    di                                            ; $4200: $f3
    ld e, a                                       ; $4201: $5f
    db $fc                                        ; $4202: $fc
    reti                                          ; $4203: $d9


    ret                                           ; $4204: $c9


    db $fc                                        ; $4205: $fc
    ld c, a                                       ; $4206: $4f
    rst $20                                       ; $4207: $e7
    sub a                                         ; $4208: $97
    and $7f                                       ; $4209: $e6 $7f
    ld a, $5a                                     ; $420b: $3e $5a
    ld a, $d1                                     ; $420d: $3e $d1

jr_05a_420f:
    add hl, sp                                    ; $420f: $39
    ld d, c                                       ; $4210: $51
    dec d                                         ; $4211: $15
    adc d                                         ; $4212: $8a
    xor d                                         ; $4213: $aa
    jr z, jr_05a_420f                             ; $4214: $28 $f9

    pop bc                                        ; $4216: $c1
    or $9c                                        ; $4217: $f6 $9c
    sub b                                         ; $4219: $90
    db $fd                                        ; $421a: $fd
    ei                                            ; $421b: $fb
    db $e3                                        ; $421c: $e3
    ld e, [hl]                                    ; $421d: $5e
    db $eb                                        ; $421e: $eb
    cp a                                          ; $421f: $bf
    nop                                           ; $4220: $00
    cp h                                          ; $4221: $bc
    cp a                                          ; $4222: $bf
    ld [hl], e                                    ; $4223: $73
    xor [hl]                                      ; $4224: $ae
    ld a, [hl+]                                   ; $4225: $2a
    ld l, e                                       ; $4226: $6b
    dec [hl]                                      ; $4227: $35
    ld d, l                                       ; $4228: $55
    push bc                                       ; $4229: $c5
    dec b                                         ; $422a: $05
    nop                                           ; $422b: $00
    ld a, h                                       ; $422c: $7c
    and c                                         ; $422d: $a1
    dec sp                                        ; $422e: $3b
    xor d                                         ; $422f: $aa
    adc b                                         ; $4230: $88
    ld c, d                                       ; $4231: $4a
    ld c, l                                       ; $4232: $4d
    sub $24                                       ; $4233: $d6 $24
    rst $38                                       ; $4235: $ff
    cp a                                          ; $4236: $bf
    ld h, e                                       ; $4237: $63
    rst $08                                       ; $4238: $cf
    ld a, c                                       ; $4239: $79
    pop bc                                        ; $423a: $c1
    call nz, $28f2                                ; $423b: $c4 $f2 $28
    ld sp, hl                                     ; $423e: $f9
    cp b                                          ; $423f: $b8
    ld [hl], e                                    ; $4240: $73
    xor [hl]                                      ; $4241: $ae
    ld hl, sp-$4d                                 ; $4242: $f8 $b3
    sub e                                         ; $4244: $93
    ld sp, hl                                     ; $4245: $f9
    sbc a                                         ; $4246: $9f
    adc $ff                                       ; $4247: $ce $ff
    cp d                                          ; $4249: $ba
    db $e4                                        ; $424a: $e4
    ld [hl], b                                    ; $424b: $70
    sbc e                                         ; $424c: $9b
    ld h, $91                                     ; $424d: $26 $91
    ld l, h                                       ; $424f: $6c
    cp e                                          ; $4250: $bb
    and e                                         ; $4251: $a3
    inc [hl]                                      ; $4252: $34
    xor c                                         ; $4253: $a9
    and e                                         ; $4254: $a3
    ld a, [hl+]                                   ; $4255: $2a
    inc b                                         ; $4256: $04
    cp a                                          ; $4257: $bf
    ldh [$3f], a                                  ; $4258: $e0 $3f
    di                                            ; $425a: $f3
    xor e                                         ; $425b: $ab
    ld b, d                                       ; $425c: $42
    ld [hl], e                                    ; $425d: $73
    or b                                          ; $425e: $b0
    dec [hl]                                      ; $425f: $35
    ei                                            ; $4260: $fb
    and h                                         ; $4261: $a4
    ld h, d                                       ; $4262: $62
    daa                                           ; $4263: $27
    jp hl                                         ; $4264: $e9


    db $ec                                        ; $4265: $ec
    add hl, sp                                    ; $4266: $39
    and e                                         ; $4267: $a3
    db $e3                                        ; $4268: $e3
    sbc h                                         ; $4269: $9c
    ld d, a                                       ; $426a: $57
    db $ed                                        ; $426b: $ed
    ld [hl], $29                                  ; $426c: $36 $29
    rrca                                          ; $426e: $0f
    ld c, b                                       ; $426f: $48
    sbc b                                         ; $4270: $98
    pop de                                        ; $4271: $d1
    dec h                                         ; $4272: $25

Jump_05a_4273:
    rst $00                                       ; $4273: $c7
    adc $24                                       ; $4274: $ce $24
    sbc d                                         ; $4276: $9a
    and h                                         ; $4277: $a4
    sbc h                                         ; $4278: $9c
    adc $76                                       ; $4279: $ce $76
    db $d3                                        ; $427b: $d3
    db $e4                                        ; $427c: $e4
    jp nc, $d6bd                                  ; $427d: $d2 $bd $d6

    ld b, h                                       ; $4280: $44
    dec h                                         ; $4281: $25
    sbc b                                         ; $4282: $98
    cp d                                          ; $4283: $ba
    rst $30                                       ; $4284: $f7
    ld e, $d6                                     ; $4285: $1e $d6
    ld sp, $e0ff                                  ; $4287: $31 $ff $e0
    ld e, d                                       ; $428a: $5a
    cp a                                          ; $428b: $bf
    ld a, [$f757]                                 ; $428c: $fa $57 $f7
    ld e, b                                       ; $428f: $58
    db $eb                                        ; $4290: $eb
    rla                                           ; $4291: $17
    or $98                                        ; $4292: $f6 $98
    or [hl]                                       ; $4294: $b6
    sub $7f                                       ; $4295: $d6 $7f
    ld bc, $351c                                  ; $4297: $01 $1c $35
    ld d, c                                       ; $429a: $51
    ld c, l                                       ; $429b: $4d
    ld [hl], h                                    ; $429c: $74
    ld c, $29                                     ; $429d: $0e $29
    ld e, l                                       ; $429f: $5d
    sub [hl]                                      ; $42a0: $96
    cpl                                           ; $42a1: $2f
    rst $10                                       ; $42a2: $d7
    ld [hl], $41                                  ; $42a3: $36 $41
    ld bc, $f61c                                  ; $42a5: $01 $1c $f6
    ld l, e                                       ; $42a8: $6b
    ld e, e                                       ; $42a9: $5b
    cp $0b                                        ; $42aa: $fe $0b
    add $fe                                       ; $42ac: $c6 $fe
    dec l                                         ; $42ae: $2d
    dec e                                         ; $42af: $1d
    call c, $01b6                                 ; $42b0: $dc $b6 $01
    rst $38                                       ; $42b3: $ff
    dec b                                         ; $42b4: $05
    nop                                           ; $42b5: $00
    ld c, $50                                     ; $42b6: $0e $50
    or l                                          ; $42b8: $b5
    ld e, e                                       ; $42b9: $5b
    ld c, c                                       ; $42ba: $49
    push hl                                       ; $42bb: $e5
    ld d, c                                       ; $42bc: $51
    or c                                          ; $42bd: $b1
    or [hl]                                       ; $42be: $b6
    ld e, e                                       ; $42bf: $5b
    or d                                          ; $42c0: $b2
    db $dd                                        ; $42c1: $dd
    ld h, $d9                                     ; $42c2: $26 $d9
    halt                                          ; $42c4: $76
    ld b, a                                       ; $42c5: $47
    ld e, l                                       ; $42c6: $5d
    nop                                           ; $42c7: $00
    ld c, $50                                     ; $42c8: $0e $50
    ld d, $29                                     ; $42ca: $16 $29
    sub l                                         ; $42cc: $95
    ld a, [c]                                     ; $42cd: $f2
    ld h, l                                       ; $42ce: $65
    ld [hl], e                                    ; $42cf: $73
    xor l                                         ; $42d0: $ad
    rst $30                                       ; $42d1: $f7
    ld [de], a                                    ; $42d2: $12
    ld c, a                                       ; $42d3: $4f
    sub [hl]                                      ; $42d4: $96
    sub e                                         ; $42d5: $93
    ld d, d                                       ; $42d6: $52
    cp h                                          ; $42d7: $bc
    rst $28                                       ; $42d8: $ef
    ld c, a                                       ; $42d9: $4f
    adc d                                         ; $42da: $8a
    rst $20                                       ; $42db: $e7
    add hl, de                                    ; $42dc: $19
    sra [hl]                                      ; $42dd: $cb $2e
    nop                                           ; $42df: $00
    ld a, h                                       ; $42e0: $7c
    and e                                         ; $42e1: $a3
    ei                                            ; $42e2: $fb
    ld [hl], l                                    ; $42e3: $75
    ld l, a                                       ; $42e4: $6f
    pop de                                        ; $42e5: $d1
    ld [hl], l                                    ; $42e6: $75
    ld e, l                                       ; $42e7: $5d
    ld e, h                                       ; $42e8: $5c
    ld e, h                                       ; $42e9: $5c
    jp hl                                         ; $42ea: $e9


    ld [hl], l                                    ; $42eb: $75
    ld e, l                                       ; $42ec: $5d
    ld [hl], e                                    ; $42ed: $73
    or a                                          ; $42ee: $b7
    pop de                                        ; $42ef: $d1
    ld l, $00                                     ; $42f0: $2e $00
    ld c, $b2                                     ; $42f2: $0e $b2
    ld d, [hl]                                    ; $42f4: $56
    cp $5f                                        ; $42f5: $fe $5f
    ld h, d                                       ; $42f7: $62
    or c                                          ; $42f8: $b1
    cp $5b                                        ; $42f9: $fe $5b
    cp a                                          ; $42fb: $bf
    ld h, $e5                                     ; $42fc: $26 $e5
    ld [hl], c                                    ; $42fe: $71
    ld [hl-], a                                   ; $42ff: $32
    ld d, d                                       ; $4300: $52
    ld h, a                                       ; $4301: $67
    db $ec                                        ; $4302: $ec
    and [hl]                                      ; $4303: $a6
    jp nc, Jump_05a_7f21                          ; $4304: $d2 $21 $7f

    dec b                                         ; $4307: $05
    cp a                                          ; $4308: $bf
    ld hl, sp-$4d                                 ; $4309: $f8 $b3
    sub e                                         ; $430b: $93
    ld sp, hl                                     ; $430c: $f9
    sbc a                                         ; $430d: $9f
    adc $ff                                       ; $430e: $ce $ff
    cp d                                          ; $4310: $ba
    nop                                           ; $4311: $00
    inc a                                         ; $4312: $3c
    or c                                          ; $4313: $b1
    ld c, c                                       ; $4314: $49
    dec e                                         ; $4315: $1d
    xor [hl]                                      ; $4316: $ae
    call z, Call_000_27b6                         ; $4317: $cc $b6 $27
    sub a                                         ; $431a: $97
    ld l, h                                       ; $431b: $6c
    sub h                                         ; $431c: $94
    ld h, $56                                     ; $431d: $26 $56
    ld a, l                                       ; $431f: $7d
    ld b, c                                       ; $4320: $41
    ld bc, $731e                                  ; $4321: $01 $1e $73
    ld h, l                                       ; $4324: $65
    or [hl]                                       ; $4325: $b6
    sub l                                         ; $4326: $95
    inc d                                         ; $4327: $14
    ccf                                           ; $4328: $3f
    adc e                                         ; $4329: $8b
    inc e                                         ; $432a: $1c
    sbc c                                         ; $432b: $99
    or b                                          ; $432c: $b0
    call nc, Call_05a_4664                        ; $432d: $d4 $64 $46
    rla                                           ; $4330: $17
    nop                                           ; $4331: $00
    inc a                                         ; $4332: $3c
    ld e, c                                       ; $4333: $59
    ld c, [hl]                                    ; $4334: $4e
    sub a                                         ; $4335: $97
    inc e                                         ; $4336: $1c
    ld h, [hl]                                    ; $4337: $66
    sub [hl]                                      ; $4338: $96
    ld c, l                                       ; $4339: $4d
    ld [hl+], a                                   ; $433a: $22
    ld d, l                                       ; $433b: $55
    sub $3a                                       ; $433c: $d6 $3a
    dec sp                                        ; $433e: $3b
    db $e3                                        ; $433f: $e3
    inc e                                         ; $4340: $1c
    ld d, d                                       ; $4341: $52
    db $ec                                        ; $4342: $ec
    inc h                                         ; $4343: $24
    push bc                                       ; $4344: $c5
    or h                                          ; $4345: $b4
    xor h                                         ; $4346: $ac
    ld c, c                                       ; $4347: $49
    rst $30                                       ; $4348: $f7
    and [hl]                                      ; $4349: $a6
    ld e, e                                       ; $434a: $5b
    sub e                                         ; $434b: $93
    xor b                                         ; $434c: $a8
    ld l, $f1                                     ; $434d: $2e $f1
    ld d, d                                       ; $434f: $52
    sub $94                                       ; $4350: $d6 $94
    xor a                                         ; $4352: $af
    add hl, de                                    ; $4353: $19
    ret                                           ; $4354: $c9


    rst $08                                       ; $4355: $cf
    cp b                                          ; $4356: $b8
    ret c                                         ; $4357: $d8

    xor [hl]                                      ; $4358: $ae
    and $ef                                       ; $4359: $e6 $ef
    adc h                                         ; $435b: $8c
    ld a, [hl-]                                   ; $435c: $3a
    cp a                                          ; $435d: $bf
    or [hl]                                       ; $435e: $b6
    xor a                                         ; $435f: $af
    xor l                                         ; $4360: $ad
    inc d                                         ; $4361: $14
    pop hl                                        ; $4362: $e1
    rst $10                                       ; $4363: $d7
    call Call_000_26c5                            ; $4364: $cd $c5 $26
    rla                                           ; $4367: $17
    ld c, h                                       ; $4368: $4c
    sub a                                         ; $4369: $97
    and b                                         ; $436a: $a0
    ld [hl], a                                    ; $436b: $77
    sub d                                         ; $436c: $92
    xor $8d                                       ; $436d: $ee $8d
    sbc $26                                       ; $436f: $de $26
    push de                                       ; $4371: $d5
    ld l, [hl]                                    ; $4372: $6e
    sub e                                         ; $4373: $93
    ld l, h                                       ; $4374: $6c
    di                                            ; $4375: $f3
    ld sp, $6b29                                  ; $4376: $31 $29 $6b
    jp z, Jump_05a_4b77                           ; $4379: $ca $77 $4b

    cp $ee                                        ; $437c: $fe $ee
    pop bc                                        ; $437e: $c1
    adc [hl]                                      ; $437f: $8e
    xor $01                                       ; $4380: $ee $01
    cp a                                          ; $4382: $bf
    cp $59                                        ; $4383: $fe $59
    rst $00                                       ; $4385: $c7
    or $5f                                        ; $4386: $f6 $5f
    add d                                         ; $4388: $82
    ld e, [hl]                                    ; $4389: $5e
    call $ba51                                    ; $438a: $cd $51 $ba
    cp a                                          ; $438d: $bf
    rst $20                                       ; $438e: $e7
    ld a, a                                       ; $438f: $7f
    add hl, hl                                    ; $4390: $29
    rst $38                                       ; $4391: $ff
    xor a                                         ; $4392: $af
    dec bc                                        ; $4393: $0b
    nop                                           ; $4394: $00
    sbc h                                         ; $4395: $9c
    cp e                                          ; $4396: $bb
    ld b, l                                       ; $4397: $45
    add hl, hl                                    ; $4398: $29
    sub l                                         ; $4399: $95
    ld l, h                                       ; $439a: $6c
    adc e                                         ; $439b: $8b
    add h                                         ; $439c: $84
    daa                                           ; $439d: $27
    sbc d                                         ; $439e: $9a
    ld e, e                                       ; $439f: $5b

jr_05a_43a0:
    cp h                                          ; $43a0: $bc
    jr jr_05a_43a0                                ; $43a1: $18 $fd

    xor d                                         ; $43a3: $aa
    xor h                                         ; $43a4: $ac
    push hl                                       ; $43a5: $e5
    ld h, a                                       ; $43a6: $67
    sub [hl]                                      ; $43a7: $96
    sub c                                         ; $43a8: $91
    and $57                                       ; $43a9: $e6 $57
    pop hl                                        ; $43ab: $e1
    sbc [hl]                                      ; $43ac: $9e
    di                                            ; $43ad: $f3
    call c, $fc00                                 ; $43ae: $dc $00 $fc
    inc bc                                        ; $43b1: $03
    rst $08                                       ; $43b2: $cf
    ld a, c                                       ; $43b3: $79
    adc e                                         ; $43b4: $8b
    sub d                                         ; $43b5: $92
    cp a                                          ; $43b6: $bf
    ld d, c                                       ; $43b7: $51
    ld d, c                                       ; $43b8: $51
    ld a, [c]                                     ; $43b9: $f2
    ld de, $52fe                                  ; $43ba: $11 $fe $52
    xor h                                         ; $43bd: $ac
    ldh a, [$84]                                  ; $43be: $f0 $84
    jp nc, $272c                                  ; $43c0: $d2 $2c $27

    pop hl                                        ; $43c3: $e1
    add hl, sp                                    ; $43c4: $39
    xor a                                         ; $43c5: $af
    ld h, $3a                                     ; $43c6: $26 $3a
    add a                                         ; $43c8: $87
    or h                                          ; $43c9: $b4
    db $dd                                        ; $43ca: $dd
    ld sp, $a22d                                  ; $43cb: $31 $2d $a2
    ld l, $00                                     ; $43ce: $2e $00
    ld c, $ff                                     ; $43d0: $0e $ff
    ld a, l                                       ; $43d2: $7d
    rst $38                                       ; $43d3: $ff
    ld c, l                                       ; $43d4: $4d
    ld sp, hl                                     ; $43d5: $f9
    adc a                                         ; $43d6: $8f
    or h                                          ; $43d7: $b4
    rst $30                                       ; $43d8: $f7
    sub e                                         ; $43d9: $93
    adc d                                         ; $43da: $8a
    ld d, d                                       ; $43db: $52
    ld a, [$ac67]                                 ; $43dc: $fa $67 $ac
    jp hl                                         ; $43df: $e9


    ld d, b                                       ; $43e0: $50
    jp c, $4a11                                   ; $43e1: $da $11 $4a

    ld a, a                                       ; $43e4: $7f
    add $fd                                       ; $43e5: $c6 $fd
    ld e, a                                       ; $43e7: $5f
    sbc d                                         ; $43e8: $9a
    pop de                                        ; $43e9: $d1
    ld b, h                                       ; $43ea: $44
    ld [hl], l                                    ; $43eb: $75
    ld bc, $671c                                  ; $43ec: $01 $1c $67
    ld c, e                                       ; $43ef: $4b
    jp hl                                         ; $43f0: $e9


    ret nz                                        ; $43f1: $c0

    or e                                          ; $43f2: $b3
    ld h, [hl]                                    ; $43f3: $66
    cp a                                          ; $43f4: $bf
    dec h                                         ; $43f5: $25
    dec de                                        ; $43f6: $1b
    sub $9f                                       ; $43f7: $d6 $9f
    inc d                                         ; $43f9: $14
    rst $08                                       ; $43fa: $cf
    inc sp                                        ; $43fb: $33
    sub [hl]                                      ; $43fc: $96
    ld e, l                                       ; $43fd: $5d
    nop                                           ; $43fe: $00
    ret nc                                        ; $43ff: $d0

    dec hl                                        ; $4400: $2b
    inc a                                         ; $4401: $3c
    and c                                         ; $4402: $a1
    cp c                                          ; $4403: $b9
    ld sp, hl                                     ; $4404: $f9
    cp a                                          ; $4405: $bf
    and $28                                       ; $4406: $e6 $28
    ld sp, hl                                     ; $4408: $f9
    cp a                                          ; $4409: $bf
    dec d                                         ; $440a: $15
    daa                                           ; $440b: $27
    ld e, d                                       ; $440c: $5a
    ld a, b                                       ; $440d: $78
    rst $28                                       ; $440e: $ef
    add hl, sp                                    ; $440f: $39
    and c                                         ; $4410: $a1
    adc [hl]                                      ; $4411: $8e
    dec a                                         ; $4412: $3d
    daa                                           ; $4413: $27
    ld c, h                                       ; $4414: $4c
    ldh a, [rOCPD]                                ; $4415: $f0 $6b
    xor $b0                                       ; $4417: $ee $b0
    rst $38                                       ; $4419: $ff
    ld d, [hl]                                    ; $441a: $56
    cp $95                                        ; $441b: $fe $95
    cp $8b                                        ; $441d: $fe $8b
    rst $20                                       ; $441f: $e7
    inc de                                        ; $4420: $13
    ld h, d                                       ; $4421: $62
    dec bc                                        ; $4422: $0b
    cp c                                          ; $4423: $b9
    nop                                           ; $4424: $00
    cp h                                          ; $4425: $bc
    cp a                                          ; $4426: $bf
    ld [hl], e                                    ; $4427: $73
    xor [hl]                                      ; $4428: $ae
    xor $31                                       ; $4429: $ee $31
    ld e, d                                       ; $442b: $5a
    ld [hl], a                                    ; $442c: $77
    call nc, Call_05a_460a                        ; $442d: $d4 $0a $46
    reti                                          ; $4430: $d9


    ld a, [de]                                    ; $4431: $1a
    ld d, c                                       ; $4432: $51
    ld e, l                                       ; $4433: $5d
    nop                                           ; $4434: $00
    ld c, $22                                     ; $4435: $0e $22
    rst $18                                       ; $4437: $df
    ld [hl], e                                    ; $4438: $73
    and d                                         ; $4439: $a2
    call nz, $bf86                                ; $443a: $c4 $86 $bf
    inc de                                        ; $443d: $13
    xor e                                         ; $443e: $ab
    ld a, [hl]                                    ; $443f: $7e
    ld l, [hl]                                    ; $4440: $6e
    ret                                           ; $4441: $c9


    rst $08                                       ; $4442: $cf
    inc l                                         ; $4443: $2c
    set 4, h                                      ; $4444: $cb $e4
    ccf                                           ; $4446: $3f
    adc e                                         ; $4447: $8b
    ei                                            ; $4448: $fb
    sbc $d2                                       ; $4449: $de $d2
    inc e                                         ; $444b: $1c
    ld l, h                                       ; $444c: $6c
    call $735e                                    ; $444d: $cd $5e $73
    ld l, h                                       ; $4450: $6c
    ret                                           ; $4451: $c9


    or [hl]                                       ; $4452: $b6
    jr z, jr_05a_447e                             ; $4453: $28 $29

    sbc [hl]                                      ; $4455: $9e
    ld h, a                                       ; $4456: $67
    inc l                                         ; $4457: $2c
    db $e3                                        ; $4458: $e3
    ld b, $1c                                     ; $4459: $06 $1c
    rst $20                                       ; $445b: $e7
    db $fc                                        ; $445c: $fc
    sub a                                         ; $445d: $97
    ld h, $a6                                     ; $445e: $26 $a6
    db $fd                                        ; $4460: $fd
    ld a, [c]                                     ; $4461: $f2
    add e                                         ; $4462: $83
    db $ed                                        ; $4463: $ed

jr_05a_4464:
    add hl, sp                                    ; $4464: $39
    ld [hl], h                                    ; $4465: $74
    ld e, l                                       ; $4466: $5d
    sub a                                         ; $4467: $97
    ld h, b                                       ; $4468: $60
    inc [hl]                                      ; $4469: $34
    call $39df                                    ; $446a: $cd $df $39
    ld d, a                                       ; $446d: $57
    ld a, [hl]                                    ; $446e: $7e
    ld h, [hl]                                    ; $446f: $66
    ld e, c                                       ; $4470: $59
    and [hl]                                      ; $4471: $a6
    ld sp, hl                                     ; $4472: $f9
    or $66                                        ; $4473: $f6 $66
    ld a, a                                       ; $4475: $7f
    ld bc, $d00e                                  ; $4476: $01 $0e $d0
    ld a, [hl-]                                   ; $4479: $3a
    adc $f9                                       ; $447a: $ce $f9
    cpl                                           ; $447c: $2f
    push de                                       ; $447d: $d5

jr_05a_447e:
    ld l, [hl]                                    ; $447e: $6e
    sub e                                         ; $447f: $93
    ldh [$3f], a                                  ; $4480: $e0 $3f
    inc de                                        ; $4482: $13
    pop hl                                        ; $4483: $e1
    ld d, a                                       ; $4484: $57
    ld c, [hl]                                    ; $4485: $4e
    add hl, hl                                    ; $4486: $29
    sub l                                         ; $4487: $95
    ret c                                         ; $4488: $d8

    ld a, [$f711]                                 ; $4489: $fa $11 $f7
    cp l                                          ; $448c: $bd
    ld [hl], l                                    ; $448d: $75
    ld e, l                                       ; $448e: $5d
    sub a                                         ; $448f: $97
    xor $31                                       ; $4490: $ee $31
    ld a, [hl-]                                   ; $4492: $3a
    ld c, d                                       ; $4493: $4a
    jr nc, jr_05a_4464                            ; $4494: $30 $ce

    and c                                         ; $4496: $a1
    inc e                                         ; $4497: $1c
    ld d, a                                       ; $4498: $57
    sub e                                         ; $4499: $93
    ld [hl-], a                                   ; $449a: $32
    ld [$76a9], sp                                ; $449b: $08 $a9 $76
    db $d3                                        ; $449e: $d3
    push de                                       ; $449f: $d5
    inc h                                         ; $44a0: $24
    db $db                                        ; $44a1: $db
    ld l, c                                       ; $44a2: $69
    ld a, e                                       ; $44a3: $7b
    ld bc, $910e                                  ; $44a4: $01 $0e $91
    push af                                       ; $44a7: $f5
    ld l, a                                       ; $44a8: $6f

jr_05a_44a9:
    cp a                                          ; $44a9: $bf
    or d                                          ; $44aa: $b2
    jp Jump_05a_4965                              ; $44ab: $c3 $65 $49


    push de                                       ; $44ae: $d5
    ld l, [hl]                                    ; $44af: $6e
    add hl, bc                                    ; $44b0: $09
    rst $08                                       ; $44b1: $cf
    ld sp, hl                                     ; $44b2: $f9
    cpl                                           ; $44b3: $2f
    ld sp, hl                                     ; $44b4: $f9
    pop bc                                        ; $44b5: $c1
    or $1c                                        ; $44b6: $f6 $1c
    cp d                                          ; $44b8: $ba
    nop                                           ; $44b9: $00
    ret nc                                        ; $44ba: $d0

    di                                            ; $44bb: $f3
    rst $08                                       ; $44bc: $cf
    ret nz                                        ; $44bd: $c0

    add hl, sp                                    ; $44be: $39
    rst $38                                       ; $44bf: $ff
    db $fc                                        ; $44c0: $fc
    ld e, d                                       ; $44c1: $5a
    ld [hl], h                                    ; $44c2: $74
    ld d, d                                       ; $44c3: $52

jr_05a_44c4:
    ld a, $c3                                     ; $44c4: $3e $c3
    inc b                                         ; $44c6: $04
    jp $d90c                                      ; $44c7: $c3 $0c $d9


    adc d                                         ; $44ca: $8a
    cpl                                           ; $44cb: $2f
    ld bc, $9e0f                                  ; $44cc: $01 $0f $9e
    db $dd                                        ; $44cf: $dd
    sbc e                                         ; $44d0: $9b
    ldh a, [$5f]                                  ; $44d1: $f0 $5f
    nop                                           ; $44d3: $00
    db $fc                                        ; $44d4: $fc
    pop bc                                        ; $44d5: $c1
    ld a, [c]                                     ; $44d6: $f2
    add sp, $71                                   ; $44d7: $e8 $71
    ldh a, [$c5]                                  ; $44d9: $f0 $c5
    sbc a                                         ; $44db: $9f
    sbc l                                         ; $44dc: $9d
    call z, Call_05a_74ff                         ; $44dd: $cc $ff $74
    cp $d7                                        ; $44e0: $fe $d7
    dec h                                         ; $44e2: $25
    ld e, [hl]                                    ; $44e3: $5e
    ld c, h                                       ; $44e4: $4c
    ei                                            ; $44e5: $fb
    push af                                       ; $44e6: $f5
    ld h, a                                       ; $44e7: $67
    cp $eb                                        ; $44e8: $fe $eb
    inc a                                         ; $44ea: $3c
    cp h                                          ; $44eb: $bc
    db $dd                                        ; $44ec: $dd
    ld [hl], c                                    ; $44ed: $71
    add [hl]                                      ; $44ee: $86
    dec b                                         ; $44ef: $05
    adc e                                         ; $44f0: $8b
    dec de                                        ; $44f1: $1b
    ld l, e                                       ; $44f2: $6b
    ccf                                           ; $44f3: $3f
    add hl, hl                                    ; $44f4: $29
    jr jr_05a_44c4                                ; $44f5: $18 $cd

    ld e, [hl]                                    ; $44f7: $5e
    dec e                                         ; $44f8: $1d
    dec bc                                        ; $44f9: $0b
    and c                                         ; $44fa: $a1
    sub $4d                                       ; $44fb: $d6 $4d
    call nz, $89a8                                ; $44fd: $c4 $a8 $89
    ld c, d                                       ; $4500: $4a
    jr nc, jr_05a_44a9                            ; $4501: $30 $a6

    ld e, b                                       ; $4503: $58
    ld [hl], e                                    ; $4504: $73
    ld c, e                                       ; $4505: $4b
    dec d                                         ; $4506: $15
    rlca                                          ; $4507: $07
    ld h, $6b                                     ; $4508: $26 $6b
    ld d, d                                       ; $450a: $52
    adc a                                         ; $450b: $8f
    db $fc                                        ; $450c: $fc
    xor l                                         ; $450d: $ad
    rst $18                                       ; $450e: $df
    dec c                                         ; $450f: $0d
    ld a, c                                       ; $4510: $79
    adc d                                         ; $4511: $8a
    jp hl                                         ; $4512: $e9


    adc h                                         ; $4513: $8c
    or e                                          ; $4514: $b3
    ld [hl], e                                    ; $4515: $73
    ld [hl+], a                                   ; $4516: $22
    ld d, [hl]                                    ; $4517: $56
    ld d, d                                       ; $4518: $52
    ld c, $c7                                     ; $4519: $0e $c7
    or b                                          ; $451b: $b0
    add hl, sp                                    ; $451c: $39
    db $fc                                        ; $451d: $fc
    sub c                                         ; $451e: $91
    xor $56                                       ; $451f: $ee $56
    ld d, d                                       ; $4521: $52
    cp h                                          ; $4522: $bc
    ret z                                         ; $4523: $c8

    db $fc                                        ; $4524: $fc
    xor l                                         ; $4525: $ad
    sbc c                                         ; $4526: $99
    ld d, l                                       ; $4527: $55
    ld b, a                                       ; $4528: $47
    sub h                                         ; $4529: $94
    ld a, [$1e57]                                 ; $452a: $fa $57 $1e
    adc a                                         ; $452d: $8f
    ld c, l                                       ; $452e: $4d

Jump_05a_452f:
    rst $00                                       ; $452f: $c7
    ld e, d                                       ; $4530: $5a
    ld b, h                                       ; $4531: $44
    ld e, l                                       ; $4532: $5d
    ld [hl], d                                    ; $4533: $72
    db $db                                        ; $4534: $db
    ld b, [hl]                                    ; $4535: $46
    ld [hl], a                                    ; $4536: $77
    ld [$a17e], sp                                ; $4537: $08 $7e $a1
    cp a                                          ; $453a: $bf
    ld [hl], $e3                                  ; $453b: $36 $e3
    ld b, h                                       ; $453d: $44
    ld [hl], a                                    ; $453e: $77
    ld [$37ef], sp                                ; $453f: $08 $ef $37
    ld a, e                                       ; $4542: $7b
    push af                                       ; $4543: $f5
    ret z                                         ; $4544: $c8

    rst $18                                       ; $4545: $df
    db $ec                                        ; $4546: $ec
    xor e                                         ; $4547: $ab

Jump_05a_4548:
    ld [hl+], a                                   ; $4548: $22
    add hl, hl                                    ; $4549: $29
    ld hl, sp+$05                                 ; $454a: $f8 $05
    and e                                         ; $454c: $a3
    jp hl                                         ; $454d: $e9


    bit 7, [hl]                                   ; $454e: $cb $7e
    db $db                                        ; $4550: $db
    and d                                         ; $4551: $a2
    dec sp                                        ; $4552: $3b
    call nc, $fccf                                ; $4553: $d4 $cf $fc
    adc b                                         ; $4556: $88
    ld l, c                                       ; $4557: $69
    xor e                                         ; $4558: $ab
    ld e, $fe                                     ; $4559: $1e $fe
    ei                                            ; $455b: $fb
    ld l, e                                       ; $455c: $6b
    dec e                                         ; $455d: $1d
    db $db                                        ; $455e: $db
    sub h                                         ; $455f: $94
    ld d, h                                       ; $4560: $54
    rrca                                          ; $4561: $0f
    rst $38                                       ; $4562: $ff
    xor e                                         ; $4563: $ab
    ld b, d                                       ; $4564: $42
    add hl, sp                                    ; $4565: $39
    xor [hl]                                      ; $4566: $ae
    ld [hl], d                                    ; $4567: $72
    call c, Call_05a_7fee                         ; $4568: $dc $ee $7f
    push af                                       ; $456b: $f5
    ldh a, [$df]                                  ; $456c: $f0 $df
    rst $00                                       ; $456e: $c7
    ld sp, hl                                     ; $456f: $f9
    ld a, a                                       ; $4570: $7f
    or [hl]                                       ; $4571: $b6
    ld l, $00                                     ; $4572: $2e $00
    ld c, $cd                                     ; $4574: $0e $cd
    ld a, [$2eba]                                 ; $4576: $fa $ba $2e
    db $dd                                        ; $4579: $dd
    db $db                                        ; $457a: $db
    and h                                         ; $457b: $a4
    ld a, [bc]                                    ; $457c: $0a
    push af                                       ; $457d: $f5
    ldh a, [$df]                                  ; $457e: $f0 $df
    ld e, a                                       ; $4580: $5f
    db $eb                                        ; $4581: $eb
    adc b                                         ; $4582: $88
    ld d, $e6                                     ; $4583: $16 $e6
    rst $18                                       ; $4585: $df
    ld d, b                                       ; $4586: $50
    nop                                           ; $4587: $00
    ld c, $76                                     ; $4588: $0e $76

jr_05a_458a:
    sbc e                                         ; $458a: $9b
    db $f4                                        ; $458b: $f4
    ld h, l                                       ; $458c: $65
    cp a                                          ; $458d: $bf
    db $fd                                        ; $458e: $fd
    ld e, a                                       ; $458f: $5f
    ld a, [c]                                     ; $4590: $f2
    adc c                                         ; $4591: $89
    pop bc                                        ; $4592: $c1
    ld b, h                                       ; $4593: $44
    scf                                           ; $4594: $37
    sbc l                                         ; $4595: $9d
    ld b, e                                       ; $4596: $43
    ld c, d                                       ; $4597: $4a
    or e                                          ; $4598: $b3
    ld a, h                                       ; $4599: $7c
    dec hl                                        ; $459a: $2b
    add hl, hl                                    ; $459b: $29
    ld hl, sp+$55                                 ; $459c: $f8 $55
    cp e                                          ; $459e: $bb
    ld c, l                                       ; $459f: $4d
    cp d                                          ; $45a0: $ba
    and e                                         ; $45a1: $a3
    and d                                         ; $45a2: $a2
    and e                                         ; $45a3: $a3
    adc c                                         ; $45a4: $89
    ld c, d                                       ; $45a5: $4a
    ld l, h                                       ; $45a6: $6c
    rst $20                                       ; $45a7: $e7
    call nz, $cffb                                ; $45a8: $c4 $fb $cf
    ld a, c                                       ; $45ab: $79
    add hl, de                                    ; $45ac: $19
    ld d, c                                       ; $45ad: $51
    dec [hl]                                      ; $45ae: $35
    rla                                           ; $45af: $17
    ld c, h                                       ; $45b0: $4c
    sub a                                         ; $45b1: $97
    inc a                                         ; $45b2: $3c
    rra                                           ; $45b3: $1f
    ld [$d289], sp                                ; $45b4: $08 $89 $d2

Call_05a_45b7:
    ld b, c                                       ; $45b7: $41
    ld a, a                                       ; $45b8: $7f
    sbc b                                         ; $45b9: $98
    cp l                                          ; $45ba: $bd
    db $fc                                        ; $45bb: $fc
    or l                                          ; $45bc: $b5

Call_05a_45bd:
    adc [hl]                                      ; $45bd: $8e
    ld l, b                                       ; $45be: $68
    sbc l                                         ; $45bf: $9d
    or a                                          ; $45c0: $b7
    add hl, de                                    ; $45c1: $19
    db $fd                                        ; $45c2: $fd
    ld e, a                                       ; $45c3: $5f
    jp z, $8ed2                                   ; $45c4: $ca $d2 $8e

jr_05a_45c7:
    jr z, jr_05a_458a                             ; $45c7: $28 $c1

    xor a                                         ; $45c9: $af
    xor b                                         ; $45ca: $a8
    db $ed                                        ; $45cb: $ed
    jr z, jr_05a_45c7                             ; $45cc: $28 $f9

    ld l, e                                       ; $45ce: $6b
    dec e                                         ; $45cf: $1d
    db $db                                        ; $45d0: $db
    and h                                         ; $45d1: $a4
    add hl, de                                    ; $45d2: $19
    adc h                                         ; $45d3: $8c
    xor d                                         ; $45d4: $aa
    or d                                          ; $45d5: $b2
    ld d, [hl]                                    ; $45d6: $56
    rrca                                          ; $45d7: $0f
    rst $38                                       ; $45d8: $ff
    sub l                                         ; $45d9: $95
    db $e3                                        ; $45da: $e3
    halt                                          ; $45db: $76
    rst $38                                       ; $45dc: $ff
    set 0, a                                      ; $45dd: $cb $c7
    ld sp, hl                                     ; $45df: $f9
    ld a, a                                       ; $45e0: $7f
    or [hl]                                       ; $45e1: $b6
    ld l, $00                                     ; $45e2: $2e $00
    cp h                                          ; $45e4: $bc
    ld h, e                                       ; $45e5: $63
    ld l, e                                       ; $45e6: $6b
    cp [hl]                                       ; $45e7: $be
    xor $58                                       ; $45e8: $ee $58
    ld [$9cb5], sp                                ; $45ea: $08 $b5 $9c
    jr c, jr_05a_45fe                             ; $45ed: $38 $0f

    ld l, a                                       ; $45ef: $6f
    rst $00                                       ; $45f0: $c7
    add hl, sp                                    ; $45f1: $39
    rst $38                                       ; $45f2: $ff
    push hl                                       ; $45f3: $e5
    inc b                                         ; $45f4: $04
    inc d                                         ; $45f5: $14
    nop                                           ; $45f6: $00
    ld a, h                                       ; $45f7: $7c
    or c                                          ; $45f8: $b1
    db $10                                        ; $45f9: $10
    ld a, [hl+]                                   ; $45fa: $2a
    dec [hl]                                      ; $45fb: $35
    ld h, l                                       ; $45fc: $65
    sbc l                                         ; $45fd: $9d

jr_05a_45fe:
    ld h, l                                       ; $45fe: $65
    jp z, $dd9f                                   ; $45ff: $ca $9f $dd

    rst $38                                       ; $4602: $ff
    dec h                                         ; $4603: $25
    rst $38                                       ; $4604: $ff
    or a                                          ; $4605: $b7
    or $e5                                        ; $4606: $f6 $e5
    rst $00                                       ; $4608: $c7
    ld c, [hl]                                    ; $4609: $4e

Call_05a_460a:
    inc l                                         ; $460a: $2c
    call $b32f                                    ; $460b: $cd $2f $b3
    cp a                                          ; $460e: $bf
    nop                                           ; $460f: $00
    inc e                                         ; $4610: $1c
    ld h, a                                       ; $4611: $67
    cp $2b                                        ; $4612: $fe $2b
    call Call_000_1272                            ; $4614: $cd $72 $12
    db $fc                                        ; $4617: $fc
    or d                                          ; $4618: $b2
    jr @-$12                                      ; $4619: $18 $ec

    ld a, e                                       ; $461b: $7b
    cp $eb                                        ; $461c: $fe $eb
    sbc $1a                                       ; $461e: $de $1a
    ld a, a                                       ; $4620: $7f
    ld bc, $b8fc                                  ; $4621: $01 $fc $b8
    add hl, sp                                    ; $4624: $39
    halt                                          ; $4625: $76
    ld a, a                                       ; $4626: $7f
    cp $d6                                        ; $4627: $fe $d6
    xor e                                         ; $4629: $ab
    dec sp                                        ; $462a: $3b
    db $e4                                        ; $462b: $e4
    inc de                                        ; $462c: $13
    ld e, c                                       ; $462d: $59
    inc de                                        ; $462e: $13
    sub l                                         ; $462f: $95
    db $ec                                        ; $4630: $ec
    rst $28                                       ; $4631: $ef
    rst $38                                       ; $4632: $ff
    ld d, d                                       ; $4633: $52
    rrca                                          ; $4634: $0f
    rst $38                                       ; $4635: $ff
    cp a                                          ; $4636: $bf
    sub d                                         ; $4637: $92
    add d                                         ; $4638: $82
    or $90                                        ; $4639: $f6 $90
    rst $10                                       ; $463b: $d7
    ld sp, $3c79                                  ; $463c: $31 $79 $3c
    ld [hl], $1d                                  ; $463f: $36 $1d
    ld l, e                                       ; $4641: $6b
    ld de, $0975                                  ; $4642: $11 $75 $09
    ld a, d                                       ; $4645: $7a
    ld [hl], e                                    ; $4646: $73
    ld l, d                                       ; $4647: $6a
    ld d, l                                       ; $4648: $55
    ld l, b                                       ; $4649: $68
    cp $ce                                        ; $464a: $fe $ce
    cp c                                          ; $464c: $b9
    jp nz, $f213                                  ; $464d: $c2 $13 $f2

    ccf                                           ; $4650: $3f
    ld b, l                                       ; $4651: $45
    ld hl, sp-$6d                                 ; $4652: $f8 $93
    cp d                                          ; $4654: $ba
    ld b, a                                       ; $4655: $47
    rst $30                                       ; $4656: $f7
    swap [hl]                                     ; $4657: $cb $36
    adc $21                                       ; $4659: $ce $21
    cp l                                          ; $465b: $bd
    adc l                                         ; $465c: $8d
    ld hl, $b718                                  ; $465d: $21 $18 $b7
    ld a, a                                       ; $4660: $7f
    ld c, e                                       ; $4661: $4b
    adc l                                         ; $4662: $8d
    or [hl]                                       ; $4663: $b6

Call_05a_4664:
    jp c, Jump_05a_6333                           ; $4664: $da $33 $63

    sbc e                                         ; $4667: $9b
    call nc, $e659                                ; $4668: $d4 $59 $e6
    ei                                            ; $466b: $fb
    ld bc, $05d3                                  ; $466c: $01 $d3 $05
    nop                                           ; $466f: $00
    db $fc                                        ; $4670: $fc
    pop bc                                        ; $4671: $c1
    ld a, [c]                                     ; $4672: $f2
    ld c, b                                       ; $4673: $48
    ld hl, $2599                                  ; $4674: $21 $99 $25
    dec d                                         ; $4677: $15
    ld h, l                                       ; $4678: $65
    ld a, e                                       ; $4679: $7b
    rst $18                                       ; $467a: $df
    or h                                          ; $467b: $b4
    ld d, $a5                                     ; $467c: $16 $a5
    ld a, h                                       ; $467e: $7c
    jr nz, @+$26                                  ; $467f: $20 $24

    ld c, d                                       ; $4681: $4a
    add sp, -$05                                  ; $4682: $e8 $fb
    ld a, e                                       ; $4684: $7b
    cp $fb                                        ; $4685: $fe $fb
    ld [de], a                                    ; $4687: $12
    rst $18                                       ; $4688: $df
    ld d, $09                                     ; $4689: $16 $09
    ld c, a                                       ; $468b: $4f
    sub h                                         ; $468c: $94
    call c, $de3e                                 ; $468d: $dc $3e $de
    rrca                                          ; $4690: $0f
    sub e                                         ; $4691: $93
    ld a, e                                       ; $4692: $7b
    db $e3                                        ; $4693: $e3
    or $fe                                        ; $4694: $f6 $fe
    inc b                                         ; $4696: $04
    inc b                                         ; $4697: $04
    ld e, c                                       ; $4698: $59
    inc h                                         ; $4699: $24
    push bc                                       ; $469a: $c5
    sbc a                                         ; $469b: $9f
    sbc l                                         ; $469c: $9d
    call z, Call_05a_74ff                         ; $469d: $cc $ff $74
    ld a, [hl]                                    ; $46a0: $7e
    adc c                                         ; $46a1: $89
    ld b, l                                       ; $46a2: $45
    jp c, $f6c8                                   ; $46a3: $da $c8 $f6

    ld [de], a                                    ; $46a6: $12
    rst $00                                       ; $46a7: $c7
    sbc c                                         ; $46a8: $99
    rst $38                                       ; $46a9: $ff
    ld c, d                                       ; $46aa: $4a
    or e                                          ; $46ab: $b3
    sbc h                                         ; $46ac: $9c
    inc b                                         ; $46ad: $04
    cp a                                          ; $46ae: $bf
    xor $a8                                       ; $46af: $ee $a8
    ld c, c                                       ; $46b1: $49
    inc h                                         ; $46b2: $24
    sbc a                                         ; $46b3: $9f
    dec hl                                        ; $46b4: $2b

Jump_05a_46b5:
    db $eb                                        ; $46b5: $eb
    db $dd                                        ; $46b6: $dd
    xor d                                         ; $46b7: $aa
    sub b                                         ; $46b8: $90
    ld l, l                                       ; $46b9: $6d
    sub e                                         ; $46ba: $93
    xor $31                                       ; $46bb: $ee $31
    rst $38                                       ; $46bd: $ff
    sub e                                         ; $46be: $93
    sbc d                                         ; $46bf: $9a
    and e                                         ; $46c0: $a3
    call nc, Call_000_10b1                        ; $46c1: $d4 $b1 $10
    ld l, d                                       ; $46c4: $6a
    sbc l                                         ; $46c5: $9d
    add a                                         ; $46c6: $87
    or a                                          ; $46c7: $b7
    db $e3                                        ; $46c8: $e3
    sbc h                                         ; $46c9: $9c
    rst $38                                       ; $46ca: $ff
    ld d, d                                       ; $46cb: $52
    rrca                                          ; $46cc: $0f
    ld a, a                                       ; $46cd: $7f
    or a                                          ; $46ce: $b7
    ld l, $00                                     ; $46cf: $2e $00
    ld c, [hl]                                    ; $46d1: $4e
    sbc [hl]                                      ; $46d2: $9e
    rra                                           ; $46d3: $1f
    rst $20                                       ; $46d4: $e7
    rst $18                                       ; $46d5: $df
    add hl, hl                                    ; $46d6: $29
    ld a, c                                       ; $46d7: $79
    rst $20                                       ; $46d8: $e7
    jr nc, jr_05a_4726                            ; $46d9: $30 $4b

    ld h, l                                       ; $46db: $65
    ld e, a                                       ; $46dc: $5f

Call_05a_46dd:
    ld e, b                                       ; $46dd: $58

Jump_05a_46de:
    cp d                                          ; $46de: $ba
    add a                                         ; $46df: $87
    push af                                       ; $46e0: $f5
    sbc [hl]                                      ; $46e1: $9e
    inc de                                        ; $46e2: $13
    sbc d                                         ; $46e3: $9a
    push af                                       ; $46e4: $f5
    rst $20                                       ; $46e5: $e7
    call nz, Call_000_139e                        ; $46e6: $c4 $9e $13
    ld d, l                                       ; $46e9: $55
    ld bc, $f000                                  ; $46ea: $01 $00 $f0
    ld l, e                                       ; $46ed: $6b
    ld [hl+], a                                   ; $46ee: $22
    sbc e                                         ; $46ef: $9b
    or c                                          ; $46f0: $b1
    rst $20                                       ; $46f1: $e7
    add h                                         ; $46f2: $84
    ld l, h                                       ; $46f3: $6c
    rst $08                                       ; $46f4: $cf
    ld d, [hl]                                    ; $46f5: $56
    rlca                                          ; $46f6: $07
    adc e                                         ; $46f7: $8b
    dec a                                         ; $46f8: $3d
    daa                                           ; $46f9: $27
    sub d                                         ; $46fa: $92
    nop                                           ; $46fb: $00
    or [hl]                                       ; $46fc: $b6
    rst $20                                       ; $46fd: $e7
    sub b                                         ; $46fe: $90
    ld hl, sp-$4d                                 ; $46ff: $f8 $b3
    sub e                                         ; $4701: $93
    ld sp, hl                                     ; $4702: $f9
    sbc a                                         ; $4703: $9f
    adc $2f                                       ; $4704: $ce $2f
    sbc l                                         ; $4706: $9d
    add a                                         ; $4707: $87
    or a                                          ; $4708: $b7
    dec sp                                        ; $4709: $3b
    adc $48                                       ; $470a: $ce $48
    cp a                                          ; $470c: $bf
    ld a, e                                       ; $470d: $7b
    ld [$00b1], sp                                ; $470e: $08 $b1 $00
    ldh a, [$ab]                                  ; $4711: $f0 $ab
    jr z, jr_05a_4780                             ; $4713: $28 $6b

    ld a, [hl+]                                   ; $4715: $2a
    push af                                       ; $4716: $f5
    ld l, a                                       ; $4717: $6f
    cp $5f                                        ; $4718: $fe $5f
    cp d                                          ; $471a: $ba
    add e                                         ; $471b: $83
    call $d56d                                    ; $471c: $cd $6d $d5
    xor $39                                       ; $471f: $ee $39
    ld [hl], c                                    ; $4721: $71
    ld bc, $2bd0                                  ; $4722: $01 $d0 $2b
    ei                                            ; $4725: $fb

jr_05a_4726:
    di                                            ; $4726: $f3
    db $fd                                        ; $4727: $fd
    cp d                                          ; $4728: $ba
    or a                                          ; $4729: $b7
    adc c                                         ; $472a: $89
    ld c, d                                       ; $472b: $4a
    rst $30                                       ; $472c: $f7
    sub $38                                       ; $472d: $d6 $38
    db $fd                                        ; $472f: $fd
    nop                                           ; $4730: $00
    add hl, sp                                    ; $4731: $39
    xor [hl]                                      ; $4732: $ae
    ld l, h                                       ; $4733: $6c
    adc l                                         ; $4734: $8d
    xor b                                         ; $4735: $a8
    adc h                                         ; $4736: $8c
    ld h, h                                       ; $4737: $64
    and e                                         ; $4738: $a3
    db $e4                                        ; $4739: $e4
    db $e3                                        ; $473a: $e3
    add hl, sp                                    ; $473b: $39
    sbc a                                         ; $473c: $9f
    inc b                                         ; $473d: $04
    or [hl]                                       ; $473e: $b6
    ld l, e                                       ; $473f: $6b
    ld [hl-], a                                   ; $4740: $32
    call z, Call_05a_5fb7                         ; $4741: $cc $b7 $5f
    rst $30                                       ; $4744: $f7
    ld hl, sp-$5c                                 ; $4745: $f8 $a4
    ld l, d                                       ; $4747: $6a
    or a                                          ; $4748: $b7
    inc [hl]                                      ; $4749: $34
    add e                                         ; $474a: $83
    ld sp, $002c                                  ; $474b: $31 $2c $00
    rst $30                                       ; $474e: $f7
    sbc d                                         ; $474f: $9a
    sub c                                         ; $4750: $91
    ld l, h                                       ; $4751: $6c
    sub h                                         ; $4752: $94
    and $18                                       ; $4753: $e6 $18
    ld h, a                                       ; $4755: $67
    inc c                                         ; $4756: $0c
    pop hl                                        ; $4757: $e1
    add hl, sp                                    ; $4758: $39
    ld a, a                                       ; $4759: $7f
    add hl, sp                                    ; $475a: $39
    ld bc, $1e00                                  ; $475b: $01 $00 $1e
    or b                                          ; $475e: $b0
    xor a                                         ; $475f: $af
    add h                                         ; $4760: $84
    add d                                         ; $4761: $82
    dec h                                         ; $4762: $25
    push bc                                       ; $4763: $c5
    inc de                                        ; $4764: $13
    db $ec                                        ; $4765: $ec
    ld e, [hl]                                    ; $4766: $5e
    xor h                                         ; $4767: $ac
    ldh [rTMA], a                                 ; $4768: $e0 $06
    sbc [hl]                                      ; $476a: $9e
    ld h, d                                       ; $476b: $62
    ld a, [hl-]                                   ; $476c: $3a
    db $e3                                        ; $476d: $e3
    db $ec                                        ; $476e: $ec
    sbc h                                         ; $476f: $9c
    ret z                                         ; $4770: $c8

    dec c                                         ; $4771: $0d
    nop                                           ; $4772: $00
    ld c, $b1                                     ; $4773: $0e $b1
    dec sp                                        ; $4775: $3b
    ld e, b                                       ; $4776: $58
    ld d, d                                       ; $4777: $52
    inc a                                         ; $4778: $3c
    rst $08                                       ; $4779: $cf
    ld e, b                                       ; $477a: $58
    add $0d                                       ; $477b: $c6 $0d
    nop                                           ; $477d: $00
    ret nc                                        ; $477e: $d0

    dec hl                                        ; $477f: $2b

jr_05a_4780:
    adc a                                         ; $4780: $8f
    rst $00                                       ; $4781: $c7
    and [hl]                                      ; $4782: $a6
    ld h, e                                       ; $4783: $63
    dec l                                         ; $4784: $2d
    and d                                         ; $4785: $a2
    sub d                                         ; $4786: $92
    adc d                                         ; $4787: $8a
    sub l                                         ; $4788: $95
    rst $00                                       ; $4789: $c7
    ld h, e                                       ; $478a: $63
    db $d3                                        ; $478b: $d3
    or c                                          ; $478c: $b1
    ld d, $51                                     ; $478d: $16 $51
    rst $10                                       ; $478f: $d7
    ld [hl], l                                    ; $4790: $75
    ld bc, $300e                                  ; $4791: $01 $0e $30
    add hl, hl                                    ; $4794: $29

jr_05a_4795:
    jr jr_05a_47e4                                ; $4795: $18 $4d

    inc sp                                        ; $4797: $33
    jr jr_05a_4795                                ; $4798: $18 $fb

    ld [de], a                                    ; $479a: $12
    sbc [hl]                                      ; $479b: $9e
    ld l, b                                       ; $479c: $68
    push hl                                       ; $479d: $e5
    rst $08                                       ; $479e: $cf
    xor $bf                                       ; $479f: $ee $bf
    xor [hl]                                      ; $47a1: $ae
    ld c, e                                       ; $47a2: $4b
    ld a, b                                       ; $47a3: $78
    ld b, d                                       ; $47a4: $42
    or [hl]                                       ; $47a5: $b6
    db $dd                                        ; $47a6: $dd
    ld d, c                                       ; $47a7: $51
    ld a, [c]                                     ; $47a8: $f2
    sub h                                         ; $47a9: $94
    add e                                         ; $47aa: $83
    add a                                         ; $47ab: $87
    rla                                           ; $47ac: $17
    jp c, Jump_000_0f63                           ; $47ad: $da $63 $0f

    ld a, c                                       ; $47b0: $79
    ld a, c                                       ; $47b1: $79
    add hl, sp                                    ; $47b2: $39
    ld l, $00                                     ; $47b3: $2e $00
    sbc [hl]                                      ; $47b5: $9e
    ld h, d                                       ; $47b6: $62
    ld a, [hl-]                                   ; $47b7: $3a
    db $e3                                        ; $47b8: $e3
    db $ec                                        ; $47b9: $ec
    sbc h                                         ; $47ba: $9c
    jr z, jr_05a_47e9                             ; $47bb: $28 $2c

    reti                                          ; $47bd: $d9


    jr c, jr_05a_47e7                             ; $47be: $38 $27

    add h                                         ; $47c0: $84
    dec sp                                        ; $47c1: $3b
    db $e3                                        ; $47c2: $e3
    push de                                       ; $47c3: $d5
    jp $a4ff                                      ; $47c4: $c3 $ff $a4


    ld a, b                                       ; $47c7: $78
    sbc [hl]                                      ; $47c8: $9e
    or c                                          ; $47c9: $b1
    db $ec                                        ; $47ca: $ec
    ld [de], a                                    ; $47cb: $12
    ld e, a                                       ; $47cc: $5f
    ld d, h                                       ; $47cd: $54
    ld hl, sp+$3e                                 ; $47ce: $f8 $3e
    sbc c                                         ; $47d0: $99
    ld a, h                                       ; $47d1: $7c
    xor [hl]                                      ; $47d2: $ae
    xor h                                         ; $47d3: $ac
    adc c                                         ; $47d4: $89
    ld l, h                                       ; $47d5: $6c
    cpl                                           ; $47d6: $2f
    nop                                           ; $47d7: $00
    ld a, h                                       ; $47d8: $7c
    ld d, c                                       ; $47d9: $51
    ld hl, $2b9f                                  ; $47da: $21 $9f $2b
    ld l, e                                       ; $47dd: $6b
    ld [hl+], a                                   ; $47de: $22
    db $db                                        ; $47df: $db
    and h                                         ; $47e0: $a4
    inc e                                         ; $47e1: $1c
    ld h, d                                       ; $47e2: $62
    ld [hl], a                                    ; $47e3: $77

jr_05a_47e4:
    or b                                          ; $47e4: $b0
    and h                                         ; $47e5: $a4
    ld a, [c]                                     ; $47e6: $f2

jr_05a_47e7:
    ld e, a                                       ; $47e7: $5f
    and l                                         ; $47e8: $a5

jr_05a_47e9:
    ld a, a                                       ; $47e9: $7f
    add $f7                                       ; $47ea: $c6 $f7
    ld b, h                                       ; $47ec: $44
    db $dd                                        ; $47ed: $dd
    ld d, c                                       ; $47ee: $51
    pop de                                        ; $47ef: $d1
    ld c, l                                       ; $47f0: $4d
    and h                                         ; $47f1: $a4
    inc [hl]                                      ; $47f2: $34
    ld a, d                                       ; $47f3: $7a
    push de                                       ; $47f4: $d5
    jp Jump_05a_7f7f                              ; $47f5: $c3 $7f $7f


    xor l                                         ; $47f8: $ad
    ld h, e                                       ; $47f9: $63
    sbc e                                         ; $47fa: $9b
    and b                                         ; $47fb: $a0
    nop                                           ; $47fc: $00
    ld l, [hl]                                    ; $47fd: $6e
    adc a                                         ; $47fe: $8f
    db $f4                                        ; $47ff: $f4
    cp d                                          ; $4800: $ba
    ld l, $9f                                     ; $4801: $2e $9f
    ret z                                         ; $4803: $c8

    ld a, a                                       ; $4804: $7f
    ld [hl], $bf                                  ; $4805: $36 $bf
    or $ba                                        ; $4807: $f6 $ba
    ld l, $00                                     ; $4809: $2e $00
    ld a, h                                       ; $480b: $7c
    ld d, c                                       ; $480c: $51
    ld hl, $2b9f                                  ; $480d: $21 $9f $2b
    ld l, e                                       ; $4810: $6b
    ld [hl+], a                                   ; $4811: $22
    db $db                                        ; $4812: $db
    and h                                         ; $4813: $a4
    ld a, b                                       ; $4814: $78
    sbc [hl]                                      ; $4815: $9e
    or c                                          ; $4816: $b1
    inc l                                         ; $4817: $2c
    xor c                                         ; $4818: $a9
    ld a, e                                       ; $4819: $7b
    ld l, e                                       ; $481a: $6b
    sub h                                         ; $481b: $94
    sbc d                                         ; $481c: $9a
    or d                                          ; $481d: $b2
    adc $32                                       ; $481e: $ce $32
    push hl                                       ; $4820: $e5
    ld a, a                                       ; $4821: $7f
    ld [hl], d                                    ; $4822: $72
    ld a, h                                       ; $4823: $7c
    ld e, c                                       ; $4824: $59
    or b                                          ; $4825: $b0
    cp b                                          ; $4826: $b8
    or c                                          ; $4827: $b1
    or $ff                                        ; $4828: $f6 $ff
    ld [bc], a                                    ; $482a: $02
    cp h                                          ; $482b: $bc
    adc $4c                                       ; $482c: $ce $4c
    ld h, a                                       ; $482e: $67
    and $57                                       ; $482f: $e6 $57
    ld a, l                                       ; $4831: $7d
    rst $30                                       ; $4832: $f7
    cp a                                          ; $4833: $bf
    xor $a8                                       ; $4834: $ee $a8
    ld [hl+], a                                   ; $4836: $22
    ld sp, hl                                     ; $4837: $f9
    adc $f8                                       ; $4838: $ce $f8
    adc $f8                                       ; $483a: $ce $f8
    ld e, h                                       ; $483c: $5c
    ld e, c                                       ; $483d: $59
    inc de                                        ; $483e: $13
    push de                                       ; $483f: $d5
    ld [hl], l                                    ; $4840: $75
    ld e, l                                       ; $4841: $5d
    or d                                          ; $4842: $b2
    ld l, l                                       ; $4843: $6d
    ld d, d                                       ; $4844: $52
    xor h                                         ; $4845: $ac
    ld h, $da                                     ; $4846: $26 $da
    db $fc                                        ; $4848: $fc
    cpl                                           ; $4849: $2f
    push hl                                       ; $484a: $e5
    cp b                                          ; $484b: $b8
    ld [$268d], a                                 ; $484c: $ea $8d $26
    jp nc, $f31c                                  ; $484f: $d2 $1c $f3

    push de                                       ; $4852: $d5
    rst $08                                       ; $4853: $cf
    and $fc                                       ; $4854: $e6 $fc
    dec a                                         ; $4856: $3d
    ld de, $0017                                  ; $4857: $11 $17 $00
    db $fc                                        ; $485a: $fc
    reti                                          ; $485b: $d9


    ret                                           ; $485c: $c9


    db $fc                                        ; $485d: $fc
    ld c, a                                       ; $485e: $4f
    rst $20                                       ; $485f: $e7
    sbc e                                         ; $4860: $9b
    cp l                                          ; $4861: $bd
    or b                                          ; $4862: $b0
    ld h, h                                       ; $4863: $64
    ld e, e                                       ; $4864: $5b
    db $e3                                        ; $4865: $e3
    db $f4                                        ; $4866: $f4
    dec hl                                        ; $4867: $2b
    rst $18                                       ; $4868: $df
    jr c, @-$5a                                   ; $4869: $38 $a4

    cp c                                          ; $486b: $b9
    ld [hl], c                                    ; $486c: $71
    ld c, [hl]                                    ; $486d: $4e
    ld [hl], h                                    ; $486e: $74
    ld h, a                                       ; $486f: $67
    jr nc, @-$35                                  ; $4870: $30 $c9

    rst $38                                       ; $4872: $ff
    sbc l                                         ; $4873: $9d
    inc de                                        ; $4874: $13
    pop hl                                        ; $4875: $e1
    ld c, a                                       ; $4876: $4f
    adc d                                         ; $4877: $8a
    rst $20                                       ; $4878: $e7
    add hl, de                                    ; $4879: $19
    sra [hl]                                      ; $487a: $cb $2e
    nop                                           ; $487c: $00
    inc e                                         ; $487d: $1c
    dec [hl]                                      ; $487e: $35
    ld d, c                                       ; $487f: $51
    ld c, l                                       ; $4880: $4d
    scf                                           ; $4881: $37
    ret                                           ; $4882: $c9


    ld d, e                                       ; $4883: $53
    ld c, h                                       ; $4884: $4c
    ld h, a                                       ; $4885: $67
    sbc h                                         ; $4886: $9c
    sbc l                                         ; $4887: $9d
    ld e, b                                       ; $4888: $58
    ld a, [c]                                     ; $4889: $f2
    cp c                                          ; $488a: $b9
    or d                                          ; $488b: $b2
    ld h, $28                                     ; $488c: $26 $28
    nop                                           ; $488e: $00
    ret nc                                        ; $488f: $d0

    sbc e                                         ; $4890: $9b
    call nc, $c21d                                ; $4891: $d4 $1d $c2
    ld [hl], e                                    ; $4894: $73
    cp $4b                                        ; $4895: $fe $4b
    ld c, $c7                                     ; $4897: $0e $c7
    or b                                          ; $4899: $b0
    add hl, sp                                    ; $489a: $39
    db $fc                                        ; $489b: $fc
    sub c                                         ; $489c: $91
    ld e, [hl]                                    ; $489d: $5e
    nop                                           ; $489e: $00
    ld c, $c7                                     ; $489f: $0e $c7
    or b                                          ; $48a1: $b0
    add hl, sp                                    ; $48a2: $39
    db $fc                                        ; $48a3: $fc
    sub c                                         ; $48a4: $91
    ld a, [bc]                                    ; $48a5: $0a
    ld c, e                                       ; $48a6: $4b
    cp $b3                                        ; $48a7: $fe $b3
    scf                                           ; $48a9: $37
    ld l, [hl]                                    ; $48aa: $6e
    nop                                           ; $48ab: $00
    ld l, [hl]                                    ; $48ac: $6e
    ld d, a                                       ; $48ad: $57
    ld b, a                                       ; $48ae: $47
    ld c, h                                       ; $48af: $4c
    db $db                                        ; $48b0: $db
    and h                                         ; $48b1: $a4
    xor $d1                                       ; $48b2: $ee $d1
    db $fd                                        ; $48b4: $fd
    ld l, d                                       ; $48b5: $6a
    cp d                                          ; $48b6: $ba
    ld c, c                                       ; $48b7: $49
    ld e, b                                       ; $48b8: $58
    ld [c], a                                     ; $48b9: $e2
    ld b, l                                       ; $48ba: $45
    and $6f                                       ; $48bb: $e6 $6f
    call Call_05a_6cac                            ; $48bd: $cd $ac $6c
    cpl                                           ; $48c0: $2f
    nop                                           ; $48c1: $00
    cp h                                          ; $48c2: $bc
    ret z                                         ; $48c3: $c8

    db $fc                                        ; $48c4: $fc
    xor l                                         ; $48c5: $ad
    sbc c                                         ; $48c6: $99
    ld d, l                                       ; $48c7: $55
    scf                                           ; $48c8: $37
    add hl, hl                                    ; $48c9: $29
    ld d, [hl]                                    ; $48ca: $56
    add hl, sp                                    ; $48cb: $39
    ld l, [hl]                                    ; $48cc: $6e
    cp a                                          ; $48cd: $bf
    xor $9d                                       ; $48ce: $ee $9d
    ld b, h                                       ; $48d0: $44
    push bc                                       ; $48d1: $c5
    dec c                                         ; $48d2: $0d
    nop                                           ; $48d3: $00
    inc e                                         ; $48d4: $1c
    dec [hl]                                      ; $48d5: $35
    ld d, c                                       ; $48d6: $51
    dec a                                         ; $48d7: $3d
    db $fc                                        ; $48d8: $fc
    ld d, a                                       ; $48d9: $57
    sub [hl]                                      ; $48da: $96
    ld [hl], $c9                                  ; $48db: $36 $c9
    or b                                          ; $48dd: $b0
    rst $20                                       ; $48de: $e7
    ret c                                         ; $48df: $d8

    adc d                                         ; $48e0: $8a
    jp nc, Jump_05a_5b1c                          ; $48e1: $d2 $1c $5b

    ld l, d                                       ; $48e4: $6a
    cp d                                          ; $48e5: $ba
    ld c, c                                       ; $48e6: $49
    ld a, $57                                     ; $48e7: $3e $57
    sub $04                                       ; $48e9: $d6 $04
    dec b                                         ; $48eb: $05
    nop                                           ; $48ec: $00
    db $fc                                        ; $48ed: $fc
    ld [hl], h                                    ; $48ee: $74
    sub e                                         ; $48ef: $93
    or b                                          ; $48f0: $b0
    db $e4                                        ; $48f1: $e4
    pop af                                        ; $48f2: $f1
    ret c                                         ; $48f3: $d8

    ld [hl], h                                    ; $48f4: $74
    ld l, h                                       ; $48f5: $6c

jr_05a_48f6:
    ld b, l                                       ; $48f6: $45
    ld [hl], c                                    ; $48f7: $71
    inc bc                                        ; $48f8: $03
    cp h                                          ; $48f9: $bc
    ccf                                           ; $48fa: $3f
    cp [hl]                                       ; $48fb: $be
    inc d                                         ; $48fc: $14
    add a                                         ; $48fd: $87
    ld h, $17                                     ; $48fe: $26 $17
    ld d, a                                       ; $4900: $57
    ret                                           ; $4901: $c9


    db $e3                                        ; $4902: $e3
    or c                                          ; $4903: $b1
    jp hl                                         ; $4904: $e9


    ret c                                         ; $4905: $d8

    adc d                                         ; $4906: $8a
    ld [c], a                                     ; $4907: $e2
    ld b, $fc                                     ; $4908: $06 $fc
    inc bc                                        ; $490a: $03
    add l                                         ; $490b: $85
    dec h                                         ; $490c: $25
    ld c, [hl]                                    ; $490d: $4e
    ld l, b                                       ; $490e: $68
    pop af                                        ; $490f: $f1
    inc a                                         ; $4910: $3c
    ld h, e                                       ; $4911: $63
    sbc c                                         ; $4912: $99
    inc e                                         ; $4913: $1c
    ld h, d                                       ; $4914: $62
    ld [hl], a                                    ; $4915: $77
    jr nc, @+$70                                  ; $4916: $30 $6e

    nop                                           ; $4918: $00
    inc a                                         ; $4919: $3c
    rst $08                                       ; $491a: $cf
    xor $55                                       ; $491b: $ee $55
    ld [hl], h                                    ; $491d: $74
    rst $00                                       ; $491e: $c7
    jp z, $c6b6                                   ; $491f: $ca $b6 $c6

    add hl, sp                                    ; $4922: $39
    ld hl, $213c                                  ; $4923: $21 $3c $21
    cp h                                          ; $4926: $bc
    rst $38                                       ; $4927: $ff
    dec b                                         ; $4928: $05
    sub e                                         ; $4929: $93
    push af                                       ; $492a: $f5
    ld b, [hl]                                    ; $492b: $46
    ret                                           ; $492c: $c9


    rst $20                                       ; $492d: $e7
    jp z, Jump_000_289a                           ; $492e: $ca $9a $28

    add hl, hl                                    ; $4931: $29
    add a                                         ; $4932: $87
    ret c                                         ; $4933: $d8

    dec e                                         ; $4934: $1d
    db $ec                                        ; $4935: $ec
    ld [bc], a                                    ; $4936: $02
    sbc h                                         ; $4937: $9c
    set 4, h                                      ; $4938: $cb $e4
    ld h, b                                       ; $493a: $60
    inc de                                        ; $493b: $13
    ld c, b                                       ; $493c: $48
    pop af                                        ; $493d: $f1
    cp h                                          ; $493e: $bc
    add hl, bc                                    ; $493f: $09
    ld [de], a                                    ; $4940: $12
    ld [c], a                                     ; $4941: $e2
    db $db                                        ; $4942: $db
    db $db                                        ; $4943: $db
    ld [hl-], a                                   ; $4944: $32
    ld h, a                                       ; $4945: $67
    inc e                                         ; $4946: $1c
    ld [hl+], a                                   ; $4947: $22
    di                                            ; $4948: $f3
    or a                                          ; $4949: $b7
    ld [de], a                                    ; $494a: $12
    ld l, d                                       ; $494b: $6a
    xor h                                         ; $494c: $ac
    and h                                         ; $494d: $a4
    jr jr_05a_48f6                                ; $494e: $18 $a6

    inc sp                                        ; $4950: $33
    adc $ce                                       ; $4951: $ce $ce
    adc c                                         ; $4953: $89
    adc l                                         ; $4954: $8d
    xor h                                         ; $4955: $ac
    or [hl]                                       ; $4956: $b6
    inc [hl]                                      ; $4957: $34
    or c                                          ; $4958: $b1
    ld [hl], a                                    ; $4959: $77
    adc [hl]                                      ; $495a: $8e
    ei                                            ; $495b: $fb
    sbc $1e                                       ; $495c: $de $1e
    halt                                          ; $495e: $76
    ld c, c                                       ; $495f: $49
    cp h                                          ; $4960: $bc
    ld h, e                                       ; $4961: $63
    ld l, e                                       ; $4962: $6b
    cp [hl]                                       ; $4963: $be
    ld [hl], d                                    ; $4964: $72

Jump_05a_4965:
    call c, $8fd2                                 ; $4965: $dc $d2 $8f
    xor $7f                                       ; $4968: $ee $7f
    jr z, jr_05a_496c                             ; $496a: $28 $00

jr_05a_496c:
    ld c, $76                                     ; $496c: $0e $76
    ld c, e                                       ; $496e: $4b
    ld e, b                                       ; $496f: $58
    ld [hl], e                                    ; $4970: $73
    db $eb                                        ; $4971: $eb
    ld [de], a                                    ; $4972: $12
    rst $08                                       ; $4973: $cf
    ld b, [hl]                                    ; $4974: $46
    pop hl                                        ; $4975: $e1
    daa                                           ; $4976: $27
    dec d                                         ; $4977: $15
    db $dd                                        ; $4978: $dd
    inc h                                         ; $4979: $24
    ei                                            ; $497a: $fb
    cp l                                          ; $497b: $bd
    rst $28                                       ; $497c: $ef
    sub b                                         ; $497d: $90
    ld l, l                                       ; $497e: $6d
    adc l                                         ; $497f: $8d
    sub [hl]                                      ; $4980: $96
    db $fd                                        ; $4981: $fd
    db $fd                                        ; $4982: $fd

Jump_05a_4983:
    ld e, a                                       ; $4983: $5f
    ld [$ffe1], a                                 ; $4984: $ea $e1 $ff
    rst $10                                       ; $4987: $d7
    dec b                                         ; $4988: $05
    nop                                           ; $4989: $00
    rst $10                                       ; $498a: $d7
    ld [hl], l                                    ; $498b: $75
    ld bc, $280e                                  ; $498c: $01 $0e $28
    ld l, e                                       ; $498f: $6b
    ld l, d                                       ; $4990: $6a
    ld l, l                                       ; $4991: $6d
    ld a, [$39a5]                                 ; $4992: $fa $a5 $39
    xor d                                         ; $4995: $aa
    or b                                          ; $4996: $b0
    inc [hl]                                      ; $4997: $34
    ccf                                           ; $4998: $3f
    rrca                                          ; $4999: $0f
    or [hl]                                       ; $499a: $b6
    and a                                         ; $499b: $a7
    ccf                                           ; $499c: $3f
    xor c                                         ; $499d: $a9
    ld a, e                                       ; $499e: $7b
    ld [hl], h                                    ; $499f: $74
    cp a                                          ; $49a0: $bf
    sbc d                                         ; $49a1: $9a
    ld l, [hl]                                    ; $49a2: $6e
    ld d, d                                       ; $49a3: $52
    xor h                                         ; $49a4: $ac
    ld a, [$f217]                                 ; $49a5: $fa $17 $f2
    jp nz, Jump_05a_5e73                          ; $49a8: $c2 $73 $5e

    or [hl]                                       ; $49ab: $b6
    dec [hl]                                      ; $49ac: $35
    ld c, d                                       ; $49ad: $4a
    ld a, $57                                     ; $49ae: $3e $57
    sub $64                                       ; $49b0: $d6 $64
    ld a, e                                       ; $49b2: $7b
    ld bc, $74fc                                  ; $49b3: $01 $fc $74
    sub e                                         ; $49b6: $93
    ld h, d                                       ; $49b7: $62
    add l                                         ; $49b8: $85
    daa                                           ; $49b9: $27
    ld h, h                                       ; $49ba: $64
    ld e, e                                       ; $49bb: $5b
    and e                                         ; $49bc: $a3
    db $e4                                        ; $49bd: $e4
    ld [hl], e                                    ; $49be: $73
    ld h, l                                       ; $49bf: $65
    ld c, l                                       ; $49c0: $4d
    or [hl]                                       ; $49c1: $b6
    rst $10                                       ; $49c2: $d7
    ld [hl], l                                    ; $49c3: $75
    add hl, hl                                    ; $49c4: $29
    ld a, l                                       ; $49c5: $7d
    halt                                          ; $49c6: $76
    rst $28                                       ; $49c7: $ef
    ld [hl], l                                    ; $49c8: $75
    ld e, l                                       ; $49c9: $5d
    nop                                           ; $49ca: $00
    cp h                                          ; $49cb: $bc
    reti                                          ; $49cc: $d9


    add hl, sp                                    ; $49cd: $39
    inc h                                         ; $49ce: $24
    inc l                                         ; $49cf: $2c
    ld l, [hl]                                    ; $49d0: $6e
    pop af                                        ; $49d1: $f1
    ld a, l                                       ; $49d2: $7d
    jp c, $ff9f                                   ; $49d3: $da $9f $ff

    daa                                           ; $49d6: $27
    dec d                                         ; $49d7: $15
    db $dd                                        ; $49d8: $dd
    and h                                         ; $49d9: $a4
    add hl, sp                                    ; $49da: $39
    add $19                                       ; $49db: $c6 $19
    xor l                                         ; $49dd: $ad
    dec sp                                        ; $49de: $3b
    ld [hl], $dd                                  ; $49df: $36 $dd
    ld [c], a                                     ; $49e1: $e2
    ld b, $3c                                     ; $49e2: $06 $3c
    rst $08                                       ; $49e4: $cf
    ld e, b                                       ; $49e5: $58
    add $2d                                       ; $49e6: $c6 $2d
    ld a, [hl]                                    ; $49e8: $7e
    xor d                                         ; $49e9: $aa
    ld a, [bc]                                    ; $49ea: $0a
    ld sp, hl                                     ; $49eb: $f9
    or h                                          ; $49ec: $b4
    push bc                                       ; $49ed: $c5
    dec c                                         ; $49ee: $0d
    nop                                           ; $49ef: $00
    cp h                                          ; $49f0: $bc
    cp e                                          ; $49f1: $bb
    adc l                                         ; $49f2: $8d
    halt                                          ; $49f3: $76
    adc c                                         ; $49f4: $89
    rst $38                                       ; $49f5: $ff
    rst $10                                       ; $49f6: $d7
    or [hl]                                       ; $49f7: $b6

jr_05a_49f8:
    inc d                                         ; $49f8: $14
    db $d3                                        ; $49f9: $d3
    ld [hl-], a                                   ; $49fa: $32
    ld d, d                                       ; $49fb: $52
    ld c, [hl]                                    ; $49fc: $4e
    add hl, hl                                    ; $49fd: $29
    push de                                       ; $49fe: $d5
    ld [hl], l                                    ; $49ff: $75
    ld e, l                                       ; $4a00: $5d
    nop                                           ; $4a01: $00
    cp h                                          ; $4a02: $bc
    ld h, e                                       ; $4a03: $63
    cp [hl]                                       ; $4a04: $be
    ld a, d                                       ; $4a05: $7a
    and b                                         ; $4a06: $a0
    ld [hl-], a                                   ; $4a07: $32
    halt                                          ; $4a08: $76
    rlca                                          ; $4a09: $07
    sub l                                         ; $4a0a: $95
    adc d                                         ; $4a0b: $8a
    ld h, $d7                                     ; $4a0c: $26 $d7
    ld d, [hl]                                    ; $4a0e: $56
    sub h                                         ; $4a0f: $94
    xor $0d                                       ; $4a10: $ee $0d
    inc de                                        ; $4a12: $13
    ld d, $94                                     ; $4a13: $16 $94
    ld a, b                                       ; $4a15: $78
    xor b                                         ; $4a16: $a8
    ld d, h                                       ; $4a17: $54
    sub h                                         ; $4a18: $94
    ld [hl], l                                    ; $4a19: $75
    inc de                                        ; $4a1a: $13
    add hl, bc                                    ; $4a1b: $09
    ld b, [hl]                                    ; $4a1c: $46
    db $eb                                        ; $4a1d: $eb

Call_05a_4a1e:
    rst $18                                       ; $4a1e: $df
    sub d                                         ; $4a1f: $92
    ld h, l                                       ; $4a20: $65
    sbc c                                         ; $4a21: $99
    dec [hl]                                      ; $4a22: $35
    add hl, hl                                    ; $4a23: $29
    rst $18                                       ; $4a24: $df
    db $f4                                        ; $4a25: $f4
    ccf                                           ; $4a26: $3f
    rst $38                                       ; $4a27: $ff
    jp nc, Jump_000_35bd                          ; $4a28: $d2 $bd $35

    cp $02                                        ; $4a2b: $fe $02
    inc a                                         ; $4a2d: $3c
    ld d, h                                       ; $4a2e: $54
    jp nz, $ef12                                  ; $4a2f: $c2 $12 $ef

    sbc a                                         ; $4a32: $9f
    ld sp, hl                                     ; $4a33: $f9
    inc c                                         ; $4a34: $0c
    dec l                                         ; $4a35: $2d
    xor c                                         ; $4a36: $a9
    cp $9d                                        ; $4a37: $fe $9d
    rrca                                          ; $4a39: $0f

Jump_05a_4a3a:
    rrca                                          ; $4a3a: $0f
    cp h                                          ; $4a3b: $bc
    cp a                                          ; $4a3c: $bf
    ld b, a                                       ; $4a3d: $47
    push af                                       ; $4a3e: $f5
    ld b, [hl]                                    ; $4a3f: $46
    add hl, bc                                    ; $4a40: $09
    db $fd                                        ; $4a41: $fd
    add sp, $7e                                   ; $4a42: $e8 $7e
    ld hl, sp+$05                                 ; $4a44: $f8 $05
    cp a                                          ; $4a46: $bf
    adc $d8                                       ; $4a47: $ce $d8
    ld [hl], h                                    ; $4a49: $74
    xor h                                         ; $4a4a: $ac
    ld [hl], l                                    ; $4a4b: $75
    sub h                                         ; $4a4c: $94
    ld a, d                                       ; $4a4d: $7a
    db $e4                                        ; $4a4e: $e4
    ld e, a                                       ; $4a4f: $5f
    jr nc, jr_05a_49f8                            ; $4a50: $30 $a6

    db $fd                                        ; $4a52: $fd
    ldh a, [$5f]                                  ; $4a53: $f0 $5f
    ld [c], a                                     ; $4a55: $e2
    and c                                         ; $4a56: $a1
    ld l, d                                       ; $4a57: $6a
    jp nc, $aafc                                  ; $4a58: $d2 $fc $aa

    rst $28                                       ; $4a5b: $ef
    cp $57                                        ; $4a5c: $fe $57
    cp $0c                                        ; $4a5e: $fe $0c
    rst $38                                       ; $4a60: $ff
    ld [de], a                                    ; $4a61: $12
    rst $38                                       ; $4a62: $ff
    ld b, b                                       ; $4a63: $40
    push af                                       ; $4a64: $f5
    ld h, b                                       ; $4a65: $60
    sbc $ff                                       ; $4a66: $de $ff
    rst $10                                       ; $4a68: $d7
    ld a, [$15b4]                                 ; $4a69: $fa $b4 $15
    dec h                                         ; $4a6c: $25
    inc l                                         ; $4a6d: $2c
    ld [hl], c                                    ; $4a6e: $71
    or b                                          ; $4a6f: $b0
    rst $08                                       ; $4a70: $cf
    inc hl                                        ; $4a71: $23
    xor c                                         ; $4a72: $a9
    sub h                                         ; $4a73: $94
    ld c, d                                       ; $4a74: $4a
    add sp, $47                                   ; $4a75: $e8 $47
    rst $30                                       ; $4a77: $f7
    cp a                                          ; $4a78: $bf
    db $fc                                        ; $4a79: $fc
    cp l                                          ; $4a7a: $bd
    add e                                         ; $4a7b: $83
    ld c, d                                       ; $4a7c: $4a
    add hl, sp                                    ; $4a7d: $39
    xor $bd                                       ; $4a7e: $ee $bd
    and a                                         ; $4a80: $a7
    ld e, a                                       ; $4a81: $5f
    ld [hl], $10                                  ; $4a82: $36 $10
    cp $d1                                        ; $4a84: $fe $d1
    db $e3                                        ; $4a86: $e3
    ld e, [hl]                                    ; $4a87: $5e
    db $eb                                        ; $4a88: $eb
    cp a                                          ; $4a89: $bf
    call nz, Call_05a_67fb                        ; $4a8a: $c4 $fb $67
    ld a, $43                                     ; $4a8d: $3e $43
    ld d, e                                       ; $4a8f: $53
    ld a, [$fc67]                                 ; $4a90: $fa $67 $fc
    ld l, e                                       ; $4a93: $6b
    adc [hl]                                      ; $4a94: $8e
    ld [hl], c                                    ; $4a95: $71
    ld [c], a                                     ; $4a96: $e2
    cp [hl]                                       ; $4a97: $be
    ld e, a                                       ; $4a98: $5f
    add hl, hl                                    ; $4a99: $29
    ld d, l                                       ; $4a9a: $55
    sub h                                         ; $4a9b: $94
    db $fc                                        ; $4a9c: $fc
    rst $18                                       ; $4a9d: $df
    ld sp, hl                                     ; $4a9e: $f9
    rst $20                                       ; $4a9f: $e7
    ld b, h                                       ; $4aa0: $44
    call nc, Call_000_0005                        ; $4aa1: $d4 $05 $00
    ld a, h                                       ; $4aa4: $7c
    ld e, e                                       ; $4aa5: $5b
    and e                                         ; $4aa6: $a3
    ld [hl], l                                    ; $4aa7: $75
    ld e, $de                                     ; $4aa8: $1e $de
    adc [hl]                                      ; $4aaa: $8e
    db $d3                                        ; $4aab: $d3
    cp e                                          ; $4aac: $bb
    dec h                                         ; $4aad: $25
    ld c, a                                       ; $4aae: $4f
    ld sp, $719d                                  ; $4aaf: $31 $9d $71
    halt                                          ; $4ab2: $76
    ld c, [hl]                                    ; $4ab3: $4e
    call nz, Call_000_06e2                        ; $4ab4: $c4 $e2 $06
    inc a                                         ; $4ab7: $3c
    dec de                                        ; $4ab8: $1b
    add l                                         ; $4ab9: $85
    add d                                         ; $4aba: $82
    ld b, a                                       ; $4abb: $47
    rst $30                                       ; $4abc: $f7
    ld c, b                                       ; $4abd: $48
    jp z, Jump_000_2c53                           ; $4abe: $ca $53 $2c

    ld l, [hl]                                    ; $4ac1: $6e
    nop                                           ; $4ac2: $00
    ld c, $89                                     ; $4ac3: $0e $89
    ld l, h                                       ; $4ac5: $6c
    ld e, e                                       ; $4ac6: $5b
    ld [hl], a                                    ; $4ac7: $77
    inc l                                         ; $4ac8: $2c
    add h                                         ; $4ac9: $84
    ld c, d                                       ; $4aca: $4a
    di                                            ; $4acb: $f3
    set 5, h                                      ; $4acc: $cb $ec
    ld h, l                                       ; $4ace: $65
    ld a, a                                       ; $4acf: $7f
    rst $38                                       ; $4ad0: $ff
    sub a                                         ; $4ad1: $97
    ld a, d                                       ; $4ad2: $7a
    ld hl, sp-$01                                 ; $4ad3: $f8 $ff
    push bc                                       ; $4ad5: $c5
    dec c                                         ; $4ad6: $0d
    nop                                           ; $4ad7: $00
    ld a, h                                       ; $4ad8: $7c
    or c                                          ; $4ad9: $b1
    db $10                                        ; $4ada: $10
    ld a, [hl+]                                   ; $4adb: $2a
    jr z, jr_05a_4b17                             ; $4adc: $28 $39

    ret c                                         ; $4ade: $d8

    xor l                                         ; $4adf: $ad
    db $eb                                        ; $4ae0: $eb
    cp d                                          ; $4ae1: $ba
    cp b                                          ; $4ae2: $b8
    jp nc, $baeb                                  ; $4ae3: $d2 $eb $ba

    xor [hl]                                      ; $4ae6: $ae
    db $f4                                        ; $4ae7: $f4
    cp [hl]                                       ; $4ae8: $be
    xor a                                         ; $4ae9: $af
    db $eb                                        ; $4aea: $eb
    ld [bc], a                                    ; $4aeb: $02
    ld e, $3f                                     ; $4aec: $1e $3f
    cp h                                          ; $4aee: $bc
    db $dd                                        ; $4aef: $dd
    ld [hl], c                                    ; $4af0: $71
    add [hl]                                      ; $4af1: $86
    or b                                          ; $4af2: $b0
    call nc, Call_05a_7691                        ; $4af3: $d4 $91 $76
    halt                                          ; $4af6: $76
    adc c                                         ; $4af7: $89
    ccf                                           ; $4af8: $3f
    ld e, b                                       ; $4af9: $58
    ld e, $3d                                     ; $4afa: $1e $3d
    ld c, $be                                     ; $4afc: $0e $be
    cp $e0                                        ; $4afe: $fe $e0
    halt                                          ; $4b00: $76
    rst $38                                       ; $4b01: $ff
    db $fd                                        ; $4b02: $fd
    ld e, a                                       ; $4b03: $5f
    ld a, [de]                                    ; $4b04: $1a
    jp Jump_05a_6756                              ; $4b05: $c3 $56 $67


    call z, $0f91                                 ; $4b08: $cc $91 $0f
    or h                                          ; $4b0b: $b4
    sub l                                         ; $4b0c: $95
    ld b, a                                       ; $4b0d: $47
    inc hl                                        ; $4b0e: $23
    dec a                                         ; $4b0f: $3d
    rst $18                                       ; $4b10: $df
    ld [c], a                                     ; $4b11: $e2
    rst $08                                       ; $4b12: $cf
    ld c, [hl]                                    ; $4b13: $4e
    and $7f                                       ; $4b14: $e6 $7f
    ld a, [hl-]                                   ; $4b16: $3a

jr_05a_4b17:
    rst $18                                       ; $4b17: $df
    db $ec                                        ; $4b18: $ec
    push af                                       ; $4b19: $f5
    ld h, a                                       ; $4b1a: $67
    cp $44                                        ; $4b1b: $fe $44
    inc l                                         ; $4b1d: $2c
    ld l, [hl]                                    ; $4b1e: $6e
    nop                                           ; $4b1f: $00
    ld a, h                                       ; $4b20: $7c
    ld d, c                                       ; $4b21: $51
    and c                                         ; $4b22: $a1
    ld b, d                                       ; $4b23: $42
    ccf                                           ; $4b24: $3f
    sbc $7a                                       ; $4b25: $de $7a
    ld h, l                                       ; $4b27: $65
    ld h, e                                       ; $4b28: $63
    or b                                          ; $4b29: $b0
    adc b                                         ; $4b2a: $88
    sub d                                         ; $4b2b: $92
    db $fd                                        ; $4b2c: $fd
    reti                                          ; $4b2d: $d9


    dec l                                         ; $4b2e: $2d
    push af                                       ; $4b2f: $f5
    xor a                                         ; $4b30: $af
    and d                                         ; $4b31: $a2
    push hl                                       ; $4b32: $e5
    inc de                                        ; $4b33: $13

jr_05a_4b34:
    ld e, c                                       ; $4b34: $59
    add sp, $1e                                   ; $4b35: $e8 $1e
    di                                            ; $4b37: $f3

jr_05a_4b38:
    cp a                                          ; $4b38: $bf
    ld [hl], h                                    ; $4b39: $74
    ld e, $de                                     ; $4b3a: $1e $de
    xor $38                                       ; $4b3c: $ee $38
    ld h, e                                       ; $4b3e: $63
    inc d                                         ; $4b3f: $14
    scf                                           ; $4b40: $37
    nop                                           ; $4b41: $00
    ret nc                                        ; $4b42: $d0

    and l                                         ; $4b43: $a5
    ld c, b                                       ; $4b44: $48
    ld hl, $caab                                  ; $4b45: $21 $ab $ca
    ld e, d                                       ; $4b48: $5a
    ldh a, [$e8]                                  ; $4b49: $f0 $e8
    jr c, jr_05a_4b34                             ; $4b4b: $38 $e7

    sub e                                         ; $4b4d: $93
    ld l, d                                       ; $4b4e: $6a
    jp z, $cb3a                                   ; $4b4f: $ca $3a $cb

    ld [hl], h                                    ; $4b52: $74
    ld b, a                                       ; $4b53: $47
    dec d                                         ; $4b54: $15
    jp hl                                         ; $4b55: $e9


    inc a                                         ; $4b56: $3c
    cp h                                          ; $4b57: $bc
    db $dd                                        ; $4b58: $dd
    ld [hl], c                                    ; $4b59: $71
    add $a8                                       ; $4b5a: $c6 $a8
    dec bc                                        ; $4b5c: $0b
    nop                                           ; $4b5d: $00
    ret nc                                        ; $4b5e: $d0

    xor e                                         ; $4b5f: $ab
    ld h, $3a                                     ; $4b60: $26 $3a
    add a                                         ; $4b62: $87
    add h                                         ; $4b63: $84

jr_05a_4b64:
    daa                                           ; $4b64: $27
    ld [hl], h                                    ; $4b65: $74
    ld l, a                                       ; $4b66: $6f
    inc de                                        ; $4b67: $13
    sub l                                         ; $4b68: $95
    ld a, [hl-]                                   ; $4b69: $3a
    ld h, [hl]                                    ; $4b6a: $66
    call c, Call_05a_4d6b                         ; $4b6b: $dc $6b $4d
    sub a                                         ; $4b6e: $97
    jr c, jr_05a_4b38                             ; $4b6f: $38 $c7

Jump_05a_4b71:
    ld h, b                                       ; $4b71: $60
    ld h, c                                       ; $4b72: $61
    or $b2                                        ; $4b73: $f6 $b2
    ccf                                           ; $4b75: $3f
    ld l, e                                       ; $4b76: $6b

Jump_05a_4b77:
    or $c2                                        ; $4b77: $f6 $c2
    ld d, d                                       ; $4b79: $52
    ld d, e                                       ; $4b7a: $53
    ld h, [hl]                                    ; $4b7b: $66
    xor e                                         ; $4b7c: $ab
    add $74                                       ; $4b7d: $c6 $74
    db $eb                                        ; $4b7f: $eb
    push hl                                       ; $4b80: $e5
    inc de                                        ; $4b81: $13
    sbc l                                         ; $4b82: $9d
    ld b, e                                       ; $4b83: $43
    rla                                           ; $4b84: $17
    nop                                           ; $4b85: $00
    ld e, $a1                                     ; $4b86: $1e $a1
    ret                                           ; $4b88: $c9


    or [hl]                                       ; $4b89: $b6
    ld b, [hl]                                    ; $4b8a: $46
    xor c                                         ; $4b8b: $a9
    add hl, hl                                    ; $4b8c: $29
    db $eb                                        ; $4b8d: $eb
    inc l                                         ; $4b8e: $2c
    sub e                                         ; $4b8f: $93
    ld c, a                                       ; $4b90: $4f
    ld h, h                                       ; $4b91: $64
    ld c, l                                       ; $4b92: $4d
    ld a, [hl+]                                   ; $4b93: $2a
    db $f4                                        ; $4b94: $f4
    db $e3                                        ; $4b95: $e3
    xor l                                         ; $4b96: $ad
    ld d, a                                       ; $4b97: $57
    ld sp, hl                                     ; $4b98: $f9
    ld l, $24                                     ; $4b99: $2e $24
    xor d                                         ; $4b9b: $aa
    inc hl                                        ; $4b9c: $23
    ld c, d                                       ; $4b9d: $4a
    inc sp                                        ; $4b9e: $33
    jr jr_05a_4b64                                ; $4b9f: $18 $c3

    ld l, c                                       ; $4ba1: $69
    ld de, $5495                                  ; $4ba2: $11 $95 $54
    sub e                                         ; $4ba5: $93
    add hl, de                                    ; $4ba6: $19
    ld l, c                                       ; $4ba7: $69
    ld d, d                                       ; $4ba8: $52
    sub $94                                       ; $4ba9: $d6 $94
    sub e                                         ; $4bab: $93
    add hl, de                                    ; $4bac: $19

Jump_05a_4bad:
    add hl, bc                                    ; $4bad: $09
    ld c, e                                       ; $4bae: $4b
    db $fd                                        ; $4baf: $fd
    dec sp                                        ; $4bb0: $3b
    rra                                           ; $4bb1: $1f
    di                                            ; $4bb2: $f3
    ld c, l                                       ; $4bb3: $4d
    ld a, [bc]                                    ; $4bb4: $0a
    add $f9                                       ; $4bb5: $c6 $f9
    or d                                          ; $4bb7: $b2
    ld e, l                                       ; $4bb8: $5d
    sub $44                                       ; $4bb9: $d6 $44
    or d                                          ; $4bbb: $b2
    xor l                                         ; $4bbc: $ad
    pop de                                        ; $4bbd: $d1
    or d                                          ; $4bbe: $b2
    xor l                                         ; $4bbf: $ad
    adc d                                         ; $4bc0: $8a
    dec bc                                        ; $4bc1: $0b
    nop                                           ; $4bc2: $00
    db $fc                                        ; $4bc3: $fc
    and e                                         ; $4bc4: $a3
    ld a, d                                       ; $4bc5: $7a
    adc h                                         ; $4bc6: $8c
    and h                                         ; $4bc7: $a4
    and $d8                                       ; $4bc8: $e6 $d8
    ld [de], a                                    ; $4bca: $12
    rst $28                                       ; $4bcb: $ef
    sbc a                                         ; $4bcc: $9f
    ld sp, hl                                     ; $4bcd: $f9
    inc c                                         ; $4bce: $0c
    ld c, l                                       ; $4bcf: $4d
    ld a, b                                       ; $4bd0: $78
    sub $56                                       ; $4bd1: $d6 $56
    di                                            ; $4bd3: $f3
    ld [hl], a                                    ; $4bd4: $77
    adc $fd                                       ; $4bd5: $ce $fd
    ld [hl], e                                    ; $4bd7: $73
    ld e, [hl]                                    ; $4bd8: $5e
    or $f7                                        ; $4bd9: $f6 $f7
    ld a, a                                       ; $4bdb: $7f
    jp hl                                         ; $4bdc: $e9


    ld [hl], a                                    ; $4bdd: $77
    cp $57                                        ; $4bde: $fe $57
    ld d, d                                       ; $4be0: $52
    inc de                                        ; $4be1: $13
    ld l, l                                       ; $4be2: $6d
    cp [hl]                                       ; $4be3: $be
    ld d, d                                       ; $4be4: $52
    ld a, [hl+]                                   ; $4be5: $2a
    push af                                       ; $4be6: $f5
    ld b, [hl]                                    ; $4be7: $46
    inc de                                        ; $4be8: $13
    xor c                                         ; $4be9: $a9
    ld a, a                                       ; $4bea: $7f
    rst $20                                       ; $4beb: $e7
    ld h, e                                       ; $4bec: $63
    cp [hl]                                       ; $4bed: $be
    ld d, c                                       ; $4bee: $51
    or d                                          ; $4bef: $b2
    add l                                         ; $4bf0: $85
    ld a, a                                       ; $4bf1: $7f
    xor e                                         ; $4bf2: $ab
    or [hl]                                       ; $4bf3: $b6
    cpl                                           ; $4bf4: $2f
    pop af                                        ; $4bf5: $f1
    ld d, b                                       ; $4bf6: $50
    ld l, c                                       ; $4bf7: $69
    ld d, d                                       ; $4bf8: $52
    sub $4d                                       ; $4bf9: $d6 $4d
    and h                                         ; $4bfb: $a4
    ld h, $33                                     ; $4bfc: $26 $33

Call_05a_4bfe:
    jp nc, $aca4                                  ; $4bfe: $d2 $a4 $ac

    add hl, hl                                    ; $4c01: $29
    daa                                           ; $4c02: $27
    inc sp                                        ; $4c03: $33
    ld [de], a                                    ; $4c04: $12
    sbc [hl]                                      ; $4c05: $9e
    ret z                                         ; $4c06: $c8

    rst $38                                       ; $4c07: $ff
    push de                                       ; $4c08: $d5
    cp a                                          ; $4c09: $bf
    di                                            ; $4c0a: $f3
    ld sp, $d78f                                  ; $4c0b: $31 $8f $d7
    db $fc                                        ; $4c0e: $fc
    sbc l                                         ; $4c0f: $9d
    ld l, e                                       ; $4c10: $6b
    db $fd                                        ; $4c11: $fd
    adc d                                         ; $4c12: $8a
    jp c, $ba8e                                   ; $4c13: $da $8e $ba

jr_05a_4c16:
    nop                                           ; $4c16: $00
    cp h                                          ; $4c17: $bc
    ld a, a                                       ; $4c18: $7f
    and $33                                       ; $4c19: $e6 $33
    sbc h                                         ; $4c1b: $9c
    ld d, $a5                                     ; $4c1c: $16 $a5
    inc sp                                        ; $4c1e: $33
    ld [hl], b                                    ; $4c1f: $70
    adc $4f                                       ; $4c20: $ce $4f
    rlca                                          ; $4c22: $07
    ld d, [hl]                                    ; $4c23: $56
    ld [$757e], sp                                ; $4c24: $08 $7e $75
    add $95                                       ; $4c27: $c6 $95
    ld c, $ac                                     ; $4c29: $0e $ac
    db $10                                        ; $4c2b: $10
    and $df                                       ; $4c2c: $e6 $df
    ld l, d                                       ; $4c2e: $6a
    and d                                         ; $4c2f: $a2
    ld [hl], e                                    ; $4c30: $73
    add sp, $12                                   ; $4c31: $e8 $12
    rrca                                          ; $4c33: $0f
    sub l                                         ; $4c34: $95
    or b                                          ; $4c35: $b0
    inc [hl]                                      ; $4c36: $34
    ld a, a                                       ; $4c37: $7f
    rst $20                                       ; $4c38: $e7
    ld e, d                                       ; $4c39: $5a
    cp a                                          ; $4c3a: $bf
    db $fc                                        ; $4c3b: $fc
    jr c, jr_05a_4c16                             ; $4c3c: $38 $d8

    db $fd                                        ; $4c3e: $fd
    ld sp, hl                                     ; $4c3f: $f9
    sub [hl]                                      ; $4c40: $96
    ret nc                                        ; $4c41: $d0

    adc a                                         ; $4c42: $8f
    xor $87                                       ; $4c43: $ee $87
    rst $38                                       ; $4c45: $ff
    ld [bc], a                                    ; $4c46: $02
    ld a, h                                       ; $4c47: $7c
    add hl, bc                                    ; $4c48: $09
    ld a, b                                       ; $4c49: $78
    ldh a, [$ec]                                  ; $4c4a: $f0 $ec
    sbc $84                                       ; $4c4c: $de $84
    cp a                                          ; $4c4e: $bf
    call nc, Call_05a_5719                        ; $4c4f: $d4 $19 $57
    ld a, [hl-]                                   ; $4c52: $3a
    or b                                          ; $4c53: $b0
    ld b, d                                       ; $4c54: $42
    ld e, b                                       ; $4c55: $58
    ld l, d                                       ; $4c56: $6a
    ld [hl-], a                                   ; $4c57: $32
    inc hl                                        ; $4c58: $23
    call $0c60                                    ; $4c59: $cd $60 $0c
    and a                                         ; $4c5c: $a7
    add l                                         ; $4c5d: $85
    reti                                          ; $4c5e: $d9


    ld e, a                                       ; $4c5f: $5f
    ld [c], a                                     ; $4c60: $e2
    and c                                         ; $4c61: $a1
    adc d                                         ; $4c62: $8a
    ld d, d                                       ; $4c63: $52
    adc a                                         ; $4c64: $8f
    xor d                                         ; $4c65: $aa
    ret c                                         ; $4c66: $d8

    db $d3                                        ; $4c67: $d3
    rst $38                                       ; $4c68: $ff
    and l                                         ; $4c69: $a5
    ld e, b                                       ; $4c6a: $58
    call $faaf                                    ; $4c6b: $cd $af $fa
    ld a, [hl]                                    ; $4c6e: $7e
    db $dd                                        ; $4c6f: $dd
    add hl, de                                    ; $4c70: $19
    ld d, a                                       ; $4c71: $57
    ld c, d                                       ; $4c72: $4a
    sub $19                                       ; $4c73: $d6 $19
    ld [hl], c                                    ; $4c75: $71
    inc bc                                        ; $4c76: $03
    inc e                                         ; $4c77: $1c
    daa                                           ; $4c78: $27
    sub h                                         ; $4c79: $94
    ccf                                           ; $4c7a: $3f

Call_05a_4c7b:
    jp $b7fc                                      ; $4c7b: $c3 $fc $b7


    and d                                         ; $4c7e: $a2
    ld l, $f1                                     ; $4c7f: $2e $f1
    ld h, a                                       ; $4c81: $67
    add hl, hl                                    ; $4c82: $29
    cp h                                          ; $4c83: $bc
    ld h, [hl]                                    ; $4c84: $66
    and h                                         ; $4c85: $a4
    ld [hl], h                                    ; $4c86: $74
    ld h, b                                       ; $4c87: $60
    push bc                                       ; $4c88: $c5
    sbc d                                         ; $4c89: $9a
    cp l                                          ; $4c8a: $bd
    db $ec                                        ; $4c8b: $ec
    cp a                                          ; $4c8c: $bf
    ei                                            ; $4c8d: $fb
    ld e, a                                       ; $4c8e: $5f
    ld a, b                                       ; $4c8f: $78
    adc $6b                                       ; $4c90: $ce $6b
    cp $ce                                        ; $4c92: $fe $ce
    xor b                                         ; $4c94: $a8
    di                                            ; $4c95: $f3
    ld l, e                                       ; $4c96: $6b
    db $fd                                        ; $4c97: $fd
    ld a, [c]                                     ; $4c98: $f2
    db $e3                                        ; $4c99: $e3
    ld h, b                                       ; $4c9a: $60
    rst $30                                       ; $4c9b: $f7
    rst $20                                       ; $4c9c: $e7
    rst $38                                       ; $4c9d: $ff
    rla                                           ; $4c9e: $17
    nop                                           ; $4c9f: $00
    ret nc                                        ; $4ca0: $d0

    and l                                         ; $4ca1: $a5
    ld sp, hl                                     ; $4ca2: $f9
    ld l, l                                       ; $4ca3: $6d
    ld [hl], c                                    ; $4ca4: $71
    ld b, d                                       ; $4ca5: $42
    cp l                                          ; $4ca6: $bd
    ld a, e                                       ; $4ca7: $7b
    rst $38                                       ; $4ca8: $ff
    ld a, c                                       ; $4ca9: $79

jr_05a_4caa:
    dec bc                                        ; $4caa: $0b
    ld hl, sp-$1b                                 ; $4cab: $f8 $e5
    xor a                                         ; $4cad: $af
    ld [hl], l                                    ; $4cae: $75
    db $f4                                        ; $4caf: $f4
    sbc [hl]                                      ; $4cb0: $9e
    xor a                                         ; $4cb1: $af
    adc [hl]                                      ; $4cb2: $8e
    jr z, jr_05a_4caa                             ; $4cb3: $28 $f5

    rst $08                                       ; $4cb5: $cf
    db $fd                                        ; $4cb6: $fd
    and h                                         ; $4cb7: $a4
    ld a, [c]                                     ; $4cb8: $f2
    rst $38                                       ; $4cb9: $ff
    jp nc, $9b44                                  ; $4cba: $d2 $44 $9b

    xor a                                         ; $4cbd: $af
    ld a, [bc]                                    ; $4cbe: $0a
    call $ffbd                                    ; $4cbf: $cd $bd $ff
    ld [hl], h                                    ; $4cc2: $74
    sbc h                                         ; $4cc3: $9c
    ret z                                         ; $4cc4: $c8

    cp a                                          ; $4cc5: $bf
    sub l                                         ; $4cc6: $95
    ld l, [hl]                                    ; $4cc7: $6e
    inc d                                         ; $4cc8: $14
    ld e, d                                       ; $4cc9: $5a
    rst $28                                       ; $4cca: $ef
    dec b                                         ; $4ccb: $05
    nop                                           ; $4ccc: $00
    sbc [hl]                                      ; $4ccd: $9e
    inc hl                                        ; $4cce: $23
    jp $ed92                                      ; $4ccf: $c3 $92 $ed


    and $38                                       ; $4cd2: $e6 $38
    ld l, h                                       ; $4cd4: $6c

jr_05a_4cd5:
    ld [c], a                                     ; $4cd5: $e2
    dec e                                         ; $4cd6: $1d
    inc c                                         ; $4cd7: $0c
    call Call_05a_585e                            ; $4cd8: $cd $5e $58
    add d                                         ; $4cdb: $82
    or c                                          ; $4cdc: $b1
    ld a, a                                       ; $4cdd: $7f
    ld c, e                                       ; $4cde: $4b
    ld [hl], e                                    ; $4cdf: $73
    call c, $9ff7                                 ; $4ce0: $dc $f7 $9f
    or e                                          ; $4ce3: $b3
    sub $7f                                       ; $4ce4: $d6 $7f
    adc c                                         ; $4ce6: $89
    add a                                         ; $4ce7: $87
    ld c, d                                       ; $4ce8: $4a
    ld [hl], a                                    ; $4ce9: $77
    ld d, h                                       ; $4cea: $54
    add h                                         ; $4ceb: $84
    ld l, h                                       ; $4cec: $6c
    xor e                                         ; $4ced: $ab
    ld b, d                                       ; $4cee: $42
    or [hl]                                       ; $4cef: $b6
    ld b, [hl]                                    ; $4cf0: $46
    ld d, h                                       ; $4cf1: $54
    ld c, c                                       ; $4cf2: $49
    db $dd                                        ; $4cf3: $dd
    and e                                         ; $4cf4: $a3
    ei                                            ; $4cf5: $fb
    dec d                                         ; $4cf6: $15
    xor e                                         ; $4cf7: $ab
    ld e, $27                                     ; $4cf8: $1e $27
    inc [hl]                                      ; $4cfa: $34
    ld c, $da                                     ; $4cfb: $0e $da
    dec b                                         ; $4cfd: $05
    nop                                           ; $4cfe: $00
    inc e                                         ; $4cff: $1c
    ld a, [hl]                                    ; $4d00: $7e
    ld [hl], h                                    ; $4d01: $74
    ccf                                           ; $4d02: $3f
    db $fc                                        ; $4d03: $fc
    ld e, e                                       ; $4d04: $5b
    jp hl                                         ; $4d05: $e9


    ret nz                                        ; $4d06: $c0

    adc d                                         ; $4d07: $8a
    jr z, jr_05a_4d0f                             ; $4d08: $28 $05

    inc h                                         ; $4d0a: $24
    call z, Call_05a_7848                         ; $4d0b: $cc $48 $78
    ld [hl+], a                                   ; $4d0e: $22

jr_05a_4d0f:
    rst $38                                       ; $4d0f: $ff
    sub [hl]                                      ; $4d10: $96
    rst $38                                       ; $4d11: $ff
    ld l, l                                       ; $4d12: $6d
    rst $38                                       ; $4d13: $ff
    xor l                                         ; $4d14: $ad
    db $fc                                        ; $4d15: $fc
    ld e, c                                       ; $4d16: $59
    cpl                                           ; $4d17: $2f
    ld l, [hl]                                    ; $4d18: $6e
    cp $2d                                        ; $4d19: $fe $2d

Call_05a_4d1b:
    call z, $e5e3                                 ; $4d1b: $cc $e3 $e5
    db $d3                                        ; $4d1e: $d3
    and $6b                                       ; $4d1f: $e6 $6b
    ld e, e                                       ; $4d21: $5b
    ld c, c                                       ; $4d22: $49
    db $dd                                        ; $4d23: $dd
    and e                                         ; $4d24: $a3
    ei                                            ; $4d25: $fb
    push bc                                       ; $4d26: $c5
    or l                                          ; $4d27: $b5
    or [hl]                                       ; $4d28: $b6
    and l                                         ; $4d29: $a5
    ld a, [bc]                                    ; $4d2a: $0a
    push de                                       ; $4d2b: $d5
    sbc b                                         ; $4d2c: $98
    ld [hl], e                                    ; $4d2d: $73
    db $e4                                        ; $4d2e: $e4
    rst $18                                       ; $4d2f: $df
    rla                                           ; $4d30: $17
    nop                                           ; $4d31: $00
    db $fc                                        ; $4d32: $fc
    ld h, h                                       ; $4d33: $64
    ld b, [hl]                                    ; $4d34: $46
    sbc d                                         ; $4d35: $9a
    sub h                                         ; $4d36: $94
    dec [hl]                                      ; $4d37: $35
    push hl                                       ; $4d38: $e5
    ld h, h                                       ; $4d39: $64
    ld b, [hl]                                    ; $4d3a: $46
    jp nz, Jump_000_1cd2                          ; $4d3b: $c2 $d2 $1c

    db $e3                                        ; $4d3e: $e3
    call nz, $bf7d                                ; $4d3f: $c4 $7d $bf
    db $ec                                        ; $4d42: $ec
    rst $08                                       ; $4d43: $cf
    ld h, e                                       ; $4d44: $63
    cp [hl]                                       ; $4d45: $be
    xor d                                         ; $4d46: $aa
    jr c, @+$32                                   ; $4d47: $38 $30

    ld d, l                                       ; $4d49: $55
    ld b, a                                       ; $4d4a: $47
    sub h                                         ; $4d4b: $94
    ld h, [hl]                                    ; $4d4c: $66
    jr nc, jr_05a_4cd5                            ; $4d4d: $30 $86

    db $d3                                        ; $4d4f: $d3
    ld [hl+], a                                   ; $4d50: $22
    ld a, [hl+]                                   ; $4d51: $2a
    xor c                                         ; $4d52: $a9
    ld a, e                                       ; $4d53: $7b
    ld [hl], h                                    ; $4d54: $74
    cp a                                          ; $4d55: $bf
    and d                                         ; $4d56: $a2
    call nc, $101b                                ; $4d57: $d4 $1b $10
    ld d, d                                       ; $4d5a: $52
    sub [hl]                                      ; $4d5b: $96
    ld [hl], $51                                  ; $4d5c: $36 $51
    jp hl                                         ; $4d5e: $e9


    ld e, [hl]                                    ; $4d5f: $5e
    inc sp                                        ; $4d60: $33

jr_05a_4d61:
    cp d                                          ; $4d61: $ba
    nop                                           ; $4d62: $00
    cp h                                          ; $4d63: $bc
    ld a, b                                       ; $4d64: $78
    xor $af                                       ; $4d65: $ee $af
    ld a, [bc]                                    ; $4d67: $0a
    or e                                          ; $4d68: $b3
    rst $10                                       ; $4d69: $d7
    inc c                                         ; $4d6a: $0c

Call_05a_4d6b:
    add $70                                       ; $4d6b: $c6 $70
    ld e, d                                       ; $4d6d: $5a
    sbc b                                         ; $4d6e: $98
    cp l                                          ; $4d6f: $bd
    or b                                          ; $4d70: $b0
    ld [hl], h                                    ; $4d71: $74
    halt                                          ; $4d72: $76
    call z, $bec1                                 ; $4d73: $cc $c1 $be
    ccf                                           ; $4d76: $3f
    add hl, hl                                    ; $4d77: $29
    jr jr_05a_4d61                                ; $4d78: $18 $e7

    dec hl                                        ; $4d7a: $2b
    rst $18                                       ; $4d7b: $df
    sub b                                         ; $4d7c: $90
    rst $00                                       ; $4d7d: $c7
    db $eb                                        ; $4d7e: $eb
    ld b, a                                       ; $4d7f: $47
    ld l, a                                       ; $4d80: $6f
    xor c                                         ; $4d81: $a9
    inc sp                                        ; $4d82: $33
    xor [hl]                                      ; $4d83: $ae
    ld [hl], h                                    ; $4d84: $74
    ld h, b                                       ; $4d85: $60
    ld b, l                                       ; $4d86: $45
    sub h                                         ; $4d87: $94
    ld a, [c]                                     ; $4d88: $f2
    dec c                                         ; $4d89: $0d
    ld d, $51                                     ; $4d8a: $16 $51
    rla                                           ; $4d8c: $17
    nop                                           ; $4d8d: $00
    ld e, $a1                                     ; $4d8e: $1e $a1
    push af                                       ; $4d90: $f5
    ld l, a                                       ; $4d91: $6f
    xor c                                         ; $4d92: $a9

jr_05a_4d93:
    ld l, b                                       ; $4d93: $68
    xor l                                         ; $4d94: $ad
    ld c, c                                       ; $4d95: $49
    rst $38                                       ; $4d96: $ff
    xor h                                         ; $4d97: $ac
    halt                                          ; $4d98: $76
    ld h, d                                       ; $4d99: $62
    rst $08                                       ; $4d9a: $cf
    rst $30                                       ; $4d9b: $f7
    cp a                                          ; $4d9c: $bf
    db $ed                                        ; $4d9d: $ed
    rst $10                                       ; $4d9e: $d7
    ld a, [$13e5]                                 ; $4d9f: $fa $e5 $13
    ld e, c                                       ; $4da2: $59
    add h                                         ; $4da3: $84
    and $18                                       ; $4da4: $e6 $18
    daa                                           ; $4da6: $27
    xor $fb                                       ; $4da7: $ee $fb
    dec b                                         ; $4da9: $05
    ld h, e                                       ; $4daa: $63
    ld b, a                                       ; $4dab: $47
    call Call_000_352d                            ; $4dac: $cd $2d $35
    xor [hl]                                      ; $4daf: $ae
    ld b, l                                       ; $4db0: $45
    sub h                                         ; $4db1: $94
    ld h, $65                                     ; $4db2: $26 $65
    ld c, l                                       ; $4db4: $4d
    add hl, sp                                    ; $4db5: $39
    ld d, c                                       ; $4db6: $51
    ld e, l                                       ; $4db7: $5d
    nop                                           ; $4db8: $00

Call_05a_4db9:
    ld e, $e1                                     ; $4db9: $1e $e1
    inc e                                         ; $4dbb: $1c
    ld a, [hl+]                                   ; $4dbc: $2a
    ld e, d                                       ; $4dbd: $5a
    ld l, e                                       ; $4dbe: $6b
    jp nc, $ab3f                                  ; $4dbf: $d2 $3f $ab

    sbc l                                         ; $4dc2: $9d
    ret c                                         ; $4dc3: $d8

    ld [hl], e                                    ; $4dc4: $73
    xor l                                         ; $4dc5: $ad
    ld e, a                                       ; $4dc6: $5f
    ld sp, hl                                     ; $4dc7: $f9
    add [hl]                                      ; $4dc8: $86
    ld a, [de]                                    ; $4dc9: $1a
    rst $10                                       ; $4dca: $d7
    ld [hl+], a                                   ; $4dcb: $22
    ld c, d                                       ; $4dcc: $4a
    inc sp                                        ; $4dcd: $33
    jr jr_05a_4d93                                ; $4dce: $18 $c3

    ld l, c                                       ; $4dd0: $69
    ld de, $5d75                                  ; $4dd1: $11 $75 $5d
    sub a                                         ; $4dd4: $97
    ld a, [c]                                     ; $4dd5: $f2
    rst $18                                       ; $4dd6: $df
    add hl, sp                                    ; $4dd7: $39
    ld e, a                                       ; $4dd8: $5f
    or c                                          ; $4dd9: $b1
    ld a, [bc]                                    ; $4dda: $0a
    ld c, b                                       ; $4ddb: $48
    sbc b                                         ; $4ddc: $98
    adc $ee                                       ; $4ddd: $ce $ee
    inc e                                         ; $4ddf: $1c
    cp d                                          ; $4de0: $ba
    scf                                           ; $4de1: $37
    db $dd                                        ; $4de2: $dd
    sbc d                                         ; $4de3: $9a
    ld b, h                                       ; $4de4: $44
    ld [hl], l                                    ; $4de5: $75
    ld bc, $25d0                                  ; $4de6: $01 $d0 $25
    inc a                                         ; $4de9: $3c
    and c                                         ; $4dea: $a1
    adc c                                         ; $4deb: $89
    ld [hl], $ff                                  ; $4dec: $36 $ff
    ld c, e                                       ; $4dee: $4b
    ld b, l                                       ; $4def: $45
    ld l, c                                       ; $4df0: $69
    ld h, l                                       ; $4df1: $65
    xor l                                         ; $4df2: $ad
    add hl, de                                    ; $4df3: $19
    dec d                                         ; $4df4: $15
    dec [hl]                                      ; $4df5: $35
    adc c                                         ; $4df6: $89
    ld c, d                                       ; $4df7: $4a
    ld [hl], a                                    ; $4df8: $77
    ld d, h                                       ; $4df9: $54
    db $e4                                        ; $4dfa: $e4
    ld d, h                                       ; $4dfb: $54
    or d                                          ; $4dfc: $b2
    db $dd                                        ; $4dfd: $dd
    ld h, $1d                                     ; $4dfe: $26 $1d
    ld l, d                                       ; $4e00: $6a
    sbc d                                         ; $4e01: $9a
    ld e, h                                       ; $4e02: $5c
    and l                                         ; $4e03: $a5
    ld a, h                                       ; $4e04: $7c
    add e                                         ; $4e05: $83
    add l                                         ; $4e06: $85
    add hl, de                                    ; $4e07: $19
    add hl, bc                                    ; $4e08: $09
    ld c, a                                       ; $4e09: $4f
    db $e4                                        ; $4e0a: $e4
    ld l, a                                       ; $4e0b: $6f
    db $fd                                        ; $4e0c: $fd
    ld a, [hl-]                                   ; $4e0d: $3a
    ld h, e                                       ; $4e0e: $63
    ld l, [hl]                                    ; $4e0f: $6e
    rrca                                          ; $4e10: $0f
    db $eb                                        ; $4e11: $eb
    rla                                           ; $4e12: $17
    and $61                                       ; $4e13: $e6 $61
    db $fd                                        ; $4e15: $fd
    rla                                           ; $4e16: $17
    nop                                           ; $4e17: $00
    adc [hl]                                      ; $4e18: $8e
    dec e                                         ; $4e19: $1d
    jp nc, Jump_000_151d                          ; $4e1a: $d2 $1d $15

    ld a, [hl-]                                   ; $4e1d: $3a
    inc bc                                        ; $4e1e: $03
    rst $20                                       ; $4e1f: $e7
    db $fc                                        ; $4e20: $fc
    ld [hl], h                                    ; $4e21: $74
    ld h, b                                       ; $4e22: $60
    ld b, l                                       ; $4e23: $45
    ld e, b                                       ; $4e24: $58
    ld b, h                                       ; $4e25: $44
    dec h                                         ; $4e26: $25
    dec b                                         ; $4e27: $05
    and e                                         ; $4e28: $a3
    ret                                           ; $4e29: $c9


    ld [hl], $ce                                  ; $4e2a: $36 $ce
    ld hl, $0bf9                                  ; $4e2c: $21 $f9 $0b
    adc c                                         ; $4e2f: $89
    ld h, $2a                                     ; $4e30: $26 $2a
    and c                                         ; $4e32: $a1
    rst $28                                       ; $4e33: $ef
    ld l, a                                       ; $4e34: $6f
    adc a                                         ; $4e35: $8f
    ld [$4bfd], a                                 ; $4e36: $ea $fd $4b
    inc e                                         ; $4e39: $1c
    ld a, [hl]                                    ; $4e3a: $7e
    ld [hl], h                                    ; $4e3b: $74
    ccf                                           ; $4e3c: $3f
    db $fc                                        ; $4e3d: $fc
    dec l                                         ; $4e3e: $2d
    db $ec                                        ; $4e3f: $ec
    cp $fc                                        ; $4e40: $fe $fc
    ld e, e                                       ; $4e42: $5b
    reti                                          ; $4e43: $d9


    adc c                                         ; $4e44: $89
    jr z, jr_05a_4e6a                             ; $4e45: $28 $23

    ld sp, hl                                     ; $4e47: $f9
    cp b                                          ; $4e48: $b8
    and [hl]                                      ; $4e49: $a6
    ld e, $fe                                     ; $4e4a: $1e $fe
    ei                                            ; $4e4c: $fb
    ld l, e                                       ; $4e4d: $6b
    dec e                                         ; $4e4e: $1d
    db $db                                        ; $4e4f: $db
    sub h                                         ; $4e50: $94
    inc d                                         ; $4e51: $14
    adc h                                         ; $4e52: $8c
    and [hl]                                      ; $4e53: $a6
    inc [hl]                                      ; $4e54: $34
    ld d, $42                                     ; $4e55: $16 $42
    xor l                                         ; $4e57: $ad
    add hl, de                                    ; $4e58: $19
    ld [hl], $23                                  ; $4e59: $36 $23
    db $eb                                        ; $4e5b: $eb
    ld l, b                                       ; $4e5c: $68
    and d                                         ; $4e5d: $a2
    cp d                                          ; $4e5e: $ba
    nop                                           ; $4e5f: $00
    cp h                                          ; $4e60: $bc
    sub h                                         ; $4e61: $94
    dec [hl]                                      ; $4e62: $35
    push hl                                       ; $4e63: $e5
    ld d, h                                       ; $4e64: $54
    ld a, [c]                                     ; $4e65: $f2
    adc c                                         ; $4e66: $89
    call z, Call_05a_5848                         ; $4e67: $cc $48 $58

jr_05a_4e6a:
    sbc d                                         ; $4e6a: $9a
    call nc, $ba33                                ; $4e6b: $d4 $33 $ba
    inc sp                                        ; $4e6e: $33
    sbc l                                         ; $4e6f: $9d
    dec e                                         ; $4e70: $1d
    ld [hl], e                                    ; $4e71: $73
    or b                                          ; $4e72: $b0
    rst $28                                       ; $4e73: $ef
    ld c, a                                       ; $4e74: $4f
    ld a, [bc]                                    ; $4e75: $0a
    add $f9                                       ; $4e76: $c6 $f9
    jp z, $6437                                   ; $4e78: $ca $37 $64

    ld e, e                                       ; $4e7b: $5b
    and e                                         ; $4e7c: $a3
    ld d, l                                       ; $4e7d: $55
    add sp, -$39                                  ; $4e7e: $e8 $c7
    ld e, e                                       ; $4e80: $5b
    xor a                                         ; $4e81: $af
    and $cf                                       ; $4e82: $e6 $cf
    adc c                                         ; $4e84: $89
    ld [hl], $83                                  ; $4e85: $36 $83
    ld sp, $169c                                  ; $4e87: $31 $9c $16
    ld d, c                                       ; $4e8a: $51
    rla                                           ; $4e8b: $17
    nop                                           ; $4e8c: $00
    inc e                                         ; $4e8d: $1c
    daa                                           ; $4e8e: $27
    sub h                                         ; $4e8f: $94
    ccf                                           ; $4e90: $3f
    dec de                                        ; $4e91: $1b
    ld a, e                                       ; $4e92: $7b
    adc $db                                       ; $4e93: $ce $db
    ld h, $35                                     ; $4e95: $26 $35
    ld b, a                                       ; $4e97: $47
    jp hl                                         ; $4e98: $e9


    db $ec                                        ; $4e99: $ec
    adc $d1                                       ; $4e9a: $ce $d1
    ld l, d                                       ; $4e9c: $6a
    cp d                                          ; $4e9d: $ba
    xor c                                         ; $4e9e: $a9
    inc [hl]                                      ; $4e9f: $34
    add hl, hl                                    ; $4ea0: $29
    ld l, e                                       ; $4ea1: $6b
    jp z, $e4a9                                   ; $4ea2: $ca $a9 $e4

    ld h, e                                       ; $4ea5: $63
    ld a, [bc]                                    ; $4ea6: $0a
    db $e3                                        ; $4ea7: $e3
    sbc d                                         ; $4ea8: $9a
    ld c, a                                       ; $4ea9: $4f
    ld h, h                                       ; $4eaa: $64

jr_05a_4eab:
    ld b, [hl]                                    ; $4eab: $46
    sub a                                         ; $4eac: $97
    jr c, @+$01                                   ; $4ead: $38 $ff

    ei                                            ; $4eaf: $fb
    ld e, e                                       ; $4eb0: $5b
    ld a, $51                                     ; $4eb1: $3e $51
    ld h, a                                       ; $4eb3: $67
    and h                                         ; $4eb4: $a4
    add $b5                                       ; $4eb5: $c6 $b5
    adc b                                         ; $4eb7: $88
    jp nc, $c60c                                  ; $4eb8: $d2 $0c $c6

    ld [hl], b                                    ; $4ebb: $70
    ld e, d                                       ; $4ebc: $5a
    ld b, h                                       ; $4ebd: $44
    dec h                                         ; $4ebe: $25
    dec b                                         ; $4ebf: $05
    and e                                         ; $4ec0: $a3
    add hl, hl                                    ; $4ec1: $29
    ld e, d                                       ; $4ec2: $5a
    di                                            ; $4ec3: $f3
    db $db                                        ; $4ec4: $db
    ld d, b                                       ; $4ec5: $50
    rst $30                                       ; $4ec6: $f7
    ld d, [hl]                                    ; $4ec7: $56
    add l                                         ; $4ec8: $85
    sbc $7a                                       ; $4ec9: $de $7a
    db $f4                                        ; $4ecb: $f4
    dec b                                         ; $4ecc: $05
    nop                                           ; $4ecd: $00
    inc e                                         ; $4ece: $1c
    cp [hl]                                       ; $4ecf: $be
    cp a                                          ; $4ed0: $bf
    rst $20                                       ; $4ed1: $e7
    cp a                                          ; $4ed2: $bf
    dec [hl]                                      ; $4ed3: $35
    xor c                                         ; $4ed4: $a9
    ld h, a                                       ; $4ed5: $67
    db $e4                                        ; $4ed6: $e4
    call nc, $161a                                ; $4ed7: $d4 $1a $16
    ld e, e                                       ; $4eda: $5b
    ld [$9fcf], a                                 ; $4edb: $ea $cf $9f
    pop hl                                        ; $4ede: $e1
    or $7f                                        ; $4edf: $f6 $7f
    add hl, hl                                    ; $4ee1: $29
    cp e                                          ; $4ee2: $bb
    ld a, l                                       ; $4ee3: $7d
    ld h, d                                       ; $4ee4: $62
    xor e                                         ; $4ee5: $ab
    adc c                                         ; $4ee6: $89
    db $e3                                        ; $4ee7: $e3
    adc h                                         ; $4ee8: $8c
    cp a                                          ; $4ee9: $bf
    nop                                           ; $4eea: $00
    ld a, h                                       ; $4eeb: $7c
    db $db                                        ; $4eec: $db
    sub h                                         ; $4eed: $94
    ld d, d                                       ; $4eee: $52
    ret                                           ; $4eef: $c9


    ld [hl], $ce                                  ; $4ef0: $36 $ce
    ld hl, $e6d9                                  ; $4ef2: $21 $d9 $e6
    ld h, e                                       ; $4ef5: $63
    ld d, d                                       ; $4ef6: $52
    sub $94                                       ; $4ef7: $d6 $94
    sub e                                         ; $4ef9: $93
    add hl, de                                    ; $4efa: $19
    add hl, bc                                    ; $4efb: $09
    dec hl                                        ; $4efc: $2b
    add hl, hl                                    ; $4efd: $29
    jr jr_05a_4eab                                ; $4efe: $18 $ab

    ld b, d                                       ; $4f00: $42
    xor $8d                                       ; $4f01: $ee $8d
    db $db                                        ; $4f03: $db
    ei                                            ; $4f04: $fb
    inc de                                        ; $4f05: $13
    db $10                                        ; $4f06: $10
    ld h, h                                       ; $4f07: $64
    and c                                         ; $4f08: $a1
    cp c                                          ; $4f09: $b9
    ld [hl], c                                    ; $4f0a: $71
    ld l, h                                       ; $4f0b: $6c
    ld [hl], l                                    ; $4f0c: $75
    rst $00                                       ; $4f0d: $c7
    ld [hl], $e9                                  ; $4f0e: $36 $e9
    adc [hl]                                      ; $4f10: $8e
    adc d                                         ; $4f11: $8a
    sbc e                                         ; $4f12: $9b
    xor h                                         ; $4f13: $ac
    add hl, bc                                    ; $4f14: $09
    ld a, [bc]                                    ; $4f15: $0a
    nop                                           ; $4f16: $00
    inc e                                         ; $4f17: $1c
    db $ec                                        ; $4f18: $ec
    di                                            ; $4f19: $f3
    ld d, b                                       ; $4f1a: $50
    ld d, c                                       ; $4f1b: $51
    sub $4d                                       ; $4f1c: $d6 $4d
    inc h                                         ; $4f1e: $24
    ccf                                           ; $4f1f: $3f
    adc $24                                       ; $4f20: $ce $24
    jp z, Jump_000_34a9                           ; $4f22: $ca $a9 $34

    ld a, a                                       ; $4f25: $7f
    rst $20                                       ; $4f26: $e7
    adc h                                         ; $4f27: $8c
    cp a                                          ; $4f28: $bf
    call nz, $ba37                                ; $4f29: $c4 $37 $ba
    ld e, a                                       ; $4f2c: $5f
    rst $30                                       ; $4f2d: $f7
    ld d, $69                                     ; $4f2e: $16 $69
    ld d, d                                       ; $4f30: $52
    cp [hl]                                       ; $4f31: $be
    and l                                         ; $4f32: $a5
    add hl, de                                    ; $4f33: $19
    adc h                                         ; $4f34: $8c
    ld a, l                                       ; $4f35: $7d
    add hl, hl                                    ; $4f36: $29
    and l                                         ; $4f37: $a5
    adc d                                         ; $4f38: $8a
    ld d, d                                       ; $4f39: $52
    ld h, a                                       ; $4f3a: $67
    ld e, h                                       ; $4f3b: $5c

jr_05a_4f3c:
    jp hl                                         ; $4f3c: $e9


    ret nz                                        ; $4f3d: $c0

    adc d                                         ; $4f3e: $8a
    jr nc, jr_05a_4f3c                            ; $4f3f: $30 $fb

    xor a                                         ; $4f41: $af
    and h                                         ; $4f42: $a4
    ldh [$97], a                                  ; $4f43: $e0 $97
    add l                                         ; $4f45: $85
    ld a, [c]                                     ; $4f46: $f2
    or a                                          ; $4f47: $b7
    ld a, [hl]                                    ; $4f48: $7e
    ld sp, hl                                     ; $4f49: $f9
    ld [hl], c                                    ; $4f4a: $71
    or b                                          ; $4f4b: $b0
    ld a, e                                       ; $4f4c: $7b
    ld [hl], l                                    ; $4f4d: $75
    ld l, a                                       ; $4f4e: $6f
    adc l                                         ; $4f4f: $8d
    cp a                                          ; $4f50: $bf
    nop                                           ; $4f51: $00
    inc e                                         ; $4f52: $1c
    daa                                           ; $4f53: $27
    ld a, d                                       ; $4f54: $7a
    and d                                         ; $4f55: $a2
    ld h, $da                                     ; $4f56: $26 $da
    db $fc                                        ; $4f58: $fc
    cpl                                           ; $4f59: $2f
    ld c, l                                       ; $4f5a: $4d
    jp z, Jump_05a_6b2a                           ; $4f5b: $ca $2a $6b

    ld sp, hl                                     ; $4f5e: $f9
    ld a, a                                       ; $4f5f: $7f
    and $56                                       ; $4f60: $e6 $56
    ld h, e                                       ; $4f62: $63
    ld a, [hl-]                                   ; $4f63: $3a
    or b                                          ; $4f64: $b0
    ld [hl+], a                                   ; $4f65: $22
    call z, Call_05a_4a1e                         ; $4f66: $cc $1e $4a
    sbc [hl]                                      ; $4f69: $9e
    db $e3                                        ; $4f6a: $e3
    jp c, $f296                                   ; $4f6b: $da $96 $f2

    rst $18                                       ; $4f6e: $df
    add hl, sp                                    ; $4f6f: $39
    ld e, a                                       ; $4f70: $5f
    ld sp, hl                                     ; $4f71: $f9
    ld d, a                                       ; $4f72: $57
    pop hl                                        ; $4f73: $e1

jr_05a_4f74:
    daa                                           ; $4f74: $27
    dec d                                         ; $4f75: $15
    db $dd                                        ; $4f76: $dd
    and h                                         ; $4f77: $a4
    db $f4                                        ; $4f78: $f4
    sbc a                                         ; $4f79: $9f
    push de                                       ; $4f7a: $d5

Call_05a_4f7b:
    jp c, $d6fc                                   ; $4f7b: $da $fc $d6

    reti                                          ; $4f7e: $d9


    sbc l                                         ; $4f7f: $9d
    ld [hl], e                                    ; $4f80: $73
    db $e4                                        ; $4f81: $e4
    rst $18                                       ; $4f82: $df
    ld c, c                                       ; $4f83: $49
    call $9a51                                    ; $4f84: $cd $51 $9a
    rst $18                                       ; $4f87: $df
    add [hl]                                      ; $4f88: $86
    xor b                                         ; $4f89: $a8
    ld a, e                                       ; $4f8a: $7b
    adc h                                         ; $4f8b: $8c
    ccf                                           ; $4f8c: $3f
    daa                                           ; $4f8d: $27
    ld l, $00                                     ; $4f8e: $2e $00
    db $fc                                        ; $4f90: $fc
    ld [hl], h                                    ; $4f91: $74
    ld d, e                                       ; $4f92: $53
    ret                                           ; $4f93: $c9


    cp $6c                                        ; $4f94: $fe $6c
    xor c                                         ; $4f96: $a9
    ld [hl], c                                    ; $4f97: $71
    dec l                                         ; $4f98: $2d
    xor h                                         ; $4f99: $ac
    ld e, a                                       ; $4f9a: $5f
    ld a, $91                                     ; $4f9b: $3e $91
    dec [hl]                                      ; $4f9d: $35
    ret                                           ; $4f9e: $c9


    daa                                           ; $4f9f: $27
    or d                                          ; $4fa0: $b2
    ld [$fa15], sp                                ; $4fa1: $08 $15 $fa
    pop af                                        ; $4fa4: $f1
    sub $2b                                       ; $4fa5: $d6 $2b
    adc e                                         ; $4fa7: $8b
    ld l, l                                       ; $4fa8: $6d
    adc e                                         ; $4fa9: $8b
    sbc e                                         ; $4faa: $9b
    xor d                                         ; $4fab: $aa
    inc hl                                        ; $4fac: $23
    ld c, d                                       ; $4fad: $4a
    inc sp                                        ; $4fae: $33
    jr jr_05a_4f74                                ; $4faf: $18 $c3

    ld l, c                                       ; $4fb1: $69
    ld de, $0175                                  ; $4fb2: $11 $75 $01
    sbc [hl]                                      ; $4fb5: $9e
    ld h, d                                       ; $4fb6: $62
    ld a, [hl-]                                   ; $4fb7: $3a
    db $e3                                        ; $4fb8: $e3
    db $ec                                        ; $4fb9: $ec
    sbc h                                         ; $4fba: $9c
    adc b                                         ; $4fbb: $88
    dec h                                         ; $4fbc: $25
    sbc a                                         ; $4fbd: $9f
    ret z                                         ; $4fbe: $c8

    ld [hl+], a                                   ; $4fbf: $22
    call nc, $a744                                ; $4fc0: $d4 $44 $a7
    ld c, c                                       ; $4fc3: $49
    add l                                         ; $4fc4: $85
    ld a, [hl]                                    ; $4fc5: $7e
    db $ec                                        ; $4fc6: $ec
    ld a, l                                       ; $4fc7: $7d
    ld l, a                                       ; $4fc8: $6f
    ld l, c                                       ; $4fc9: $69
    ld d, d                                       ; $4fca: $52
    sub $94                                       ; $4fcb: $d6 $94
    ld d, e                                       ; $4fcd: $53
    ret                                           ; $4fce: $c9


    daa                                           ; $4fcf: $27
    ld [hl-], a                                   ; $4fd0: $32
    inc hl                                        ; $4fd1: $23
    pop hl                                        ; $4fd2: $e1
    adc c                                         ; $4fd3: $89
    db $fc                                        ; $4fd4: $fc
    xor l                                         ; $4fd5: $ad
    ld e, a                                       ; $4fd6: $5f
    db $fd                                        ; $4fd7: $fd
    dec sp                                        ; $4fd8: $3b
    rra                                           ; $4fd9: $1f
    di                                            ; $4fda: $f3
    or b                                          ; $4fdb: $b0
    cp $0b                                        ; $4fdc: $fe $0b
    nop                                           ; $4fde: $00
    cp h                                          ; $4fdf: $bc
    ld h, e                                       ; $4fe0: $63
    sbc h                                         ; $4fe1: $9c
    xor l                                         ; $4fe2: $ad
    and h                                         ; $4fe3: $a4
    and d                                         ; $4fe4: $a2
    sbc e                                         ; $4fe5: $9b
    call nc, Call_05a_5374                        ; $4fe6: $d4 $74 $53
    ld l, c                                       ; $4fe9: $69
    ld d, d                                       ; $4fea: $52
    sub $94                                       ; $4feb: $d6 $94

Jump_05a_4fed:
    ld d, e                                       ; $4fed: $53
    ld l, c                                       ; $4fee: $69
    sbc e                                         ; $4fef: $9b
    db $fc                                        ; $4ff0: $fc
    add c                                         ; $4ff1: $81
    daa                                           ; $4ff2: $27
    adc $79                                       ; $4ff3: $ce $79
    ld h, c                                       ; $4ff5: $61

jr_05a_4ff6:
    add hl, bc                                    ; $4ff6: $09
    ld [hl], a                                    ; $4ff7: $77
    ld h, d                                       ; $4ff8: $62
    ld l, a                                       ; $4ff9: $6f
    ld l, b                                       ; $4ffa: $68
    adc [hl]                                      ; $4ffb: $8e
    ld bc, $ea89                                  ; $4ffc: $01 $89 $ea
    adc b                                         ; $4fff: $88
    jp nc, $c60c                                  ; $5000: $d2 $0c $c6

    ld [hl], b                                    ; $5003: $70
    ld e, d                                       ; $5004: $5a
    ld b, h                                       ; $5005: $44
    ld e, l                                       ; $5006: $5d
    nop                                           ; $5007: $00
    sbc h                                         ; $5008: $9c
    cp a                                          ; $5009: $bf
    db $ec                                        ; $500a: $ec
    rst $38                                       ; $500b: $ff
    ld a, h                                       ; $500c: $7c
    add hl, bc                                    ; $500d: $09
    di                                            ; $500e: $f3
    jr z, jr_05a_4ff6                             ; $500f: $28 $e5

    dec de                                        ; $5011: $1b
    inc l                                         ; $5012: $2c
    call z, Call_05a_7848                         ; $5013: $cc $48 $78
    ld [hl+], a                                   ; $5016: $22
    ld a, a                                       ; $5017: $7f
    ld sp, hl                                     ; $5018: $f9
    or c                                          ; $5019: $b1
    ld h, a                                       ; $501a: $67
    sub l                                         ; $501b: $95
    ld l, a                                       ; $501c: $6f
    ld l, b                                       ; $501d: $68
    adc [hl]                                      ; $501e: $8e
    ld [hl], c                                    ; $501f: $71
    ld [c], a                                     ; $5020: $e2
    cp [hl]                                       ; $5021: $be
    ld e, a                                       ; $5022: $5f
    jr nc, jr_05a_507b                            ; $5023: $30 $56

    push bc                                       ; $5025: $c5
    call c, Call_000_00ba                         ; $5026: $dc $ba $00
    ld e, $1a                                     ; $5029: $1e $1a

jr_05a_502b:
    ld l, c                                       ; $502b: $69
    ld b, $6b                                     ; $502c: $06 $6b
    ld e, h                                       ; $502e: $5c
    db $dd                                        ; $502f: $dd
    ld e, e                                       ; $5030: $5b
    db $e3                                        ; $5031: $e3
    sbc h                                         ; $5032: $9c
    ld c, b                                       ; $5033: $48
    ld a, [hl+]                                   ; $5034: $2a
    cp d                                          ; $5035: $ba
    ld c, c                                       ; $5036: $49
    ld c, l                                       ; $5037: $4d
    scf                                           ; $5038: $37
    sub l                                         ; $5039: $95
    ld h, $65                                     ; $503a: $26 $65
    ld c, l                                       ; $503c: $4d
    add hl, sp                                    ; $503d: $39
    sub l                                         ; $503e: $95
    ld l, d                                       ; $503f: $6a
    or b                                          ; $5040: $b0
    ld sp, hl                                     ; $5041: $f9
    ld h, [hl]                                    ; $5042: $66
    cpl                                           ; $5043: $2f
    inc a                                         ; $5044: $3c
    sub c                                         ; $5045: $91
    ld a, a                                       ; $5046: $7f
    ret                                           ; $5047: $c9


    adc a                                         ; $5048: $8f
    dec a                                         ; $5049: $3d
    ld e, e                                       ; $504a: $5b
    ld [$5f9f], a                                 ; $504b: $ea $9f $5f
    cpl                                           ; $504e: $2f
    inc a                                         ; $504f: $3c
    dec hl                                        ; $5050: $2b
    ei                                            ; $5051: $fb
    di                                            ; $5052: $f3
    sbc b                                         ; $5053: $98
    rst $28                                       ; $5054: $ef
    dec b                                         ; $5055: $05
    nop                                           ; $5056: $00
    xor $6c                                       ; $5057: $ee $6c
    sub l                                         ; $5059: $95
    add hl, bc                                    ; $505a: $09
    db $fd                                        ; $505b: $fd
    add sp, -$02                                  ; $505c: $e8 $fe
    ld d, a                                       ; $505e: $57
    rst $38                                       ; $505f: $ff
    adc $31                                       ; $5060: $ce $31
    jr nz, jr_05a_50b5                            ; $5062: $20 $51

    ld c, d                                       ; $5064: $4a
    rst $10                                       ; $5065: $d7
    ld a, [de]                                    ; $5066: $1a
    reti                                          ; $5067: $d9


    cp $ab                                        ; $5068: $fe $ab
    ret                                           ; $506a: $c9


    adc h                                         ; $506b: $8c
    inc [hl]                                      ; $506c: $34
    add e                                         ; $506d: $83
    ld sp, $169c                                  ; $506e: $31 $9c $16
    ld h, [hl]                                    ; $5071: $66
    ld a, a                                       ; $5072: $7f
    ld e, l                                       ; $5073: $5d
    sub a                                         ; $5074: $97
    ld h, b                                       ; $5075: $60
    inc [hl]                                      ; $5076: $34
    reti                                          ; $5077: $d9


    ld [hl], $a9                                  ; $5078: $36 $a9
    or d                                          ; $507a: $b2

jr_05a_507b:
    ld d, $fa                                     ; $507b: $16 $fa
    pop de                                        ; $507d: $d1
    db $fd                                        ; $507e: $fd
    rst $30                                       ; $507f: $f7
    ld e, d                                       ; $5080: $5a
    ld c, h                                       ; $5081: $4c
    ld e, e                                       ; $5082: $5b
    push hl                                       ; $5083: $e5
    cp b                                          ; $5084: $b8
    sbc d                                         ; $5085: $9a
    and e                                         ; $5086: $a3
    ld l, l                                       ; $5087: $6d
    db $fc                                        ; $5088: $fc
    dec b                                         ; $5089: $05
    nop                                           ; $508a: $00
    ld e, $8f                                     ; $508b: $1e $8f
    ld [hl], c                                    ; $508d: $71
    and d                                         ; $508e: $a2
    inc d                                         ; $508f: $14
    db $dd                                        ; $5090: $dd
    inc h                                         ; $5091: $24
    ld [hl], a                                    ; $5092: $77
    or [hl]                                       ; $5093: $b6
    jp z, Jump_000_1cf6                           ; $5094: $ca $f6 $1c

    ld [de], a                                    ; $5097: $12
    sbc [hl]                                      ; $5098: $9e
    ld d, l                                       ; $5099: $55
    ld h, a                                       ; $509a: $67
    ld e, h                                       ; $509b: $5c
    jp hl                                         ; $509c: $e9


    ret nz                                        ; $509d: $c0

    ld a, [bc]                                    ; $509e: $0a
    dec [hl]                                      ; $509f: $35
    sbc c                                         ; $50a0: $99
    sub c                                         ; $50a1: $91
    ld h, [hl]                                    ; $50a2: $66
    jr nc, jr_05a_502b                            ; $50a3: $30 $86

    db $d3                                        ; $50a5: $d3
    jp nz, $93ec                                  ; $50a6: $c2 $ec $93

    cp d                                          ; $50a9: $ba
    ld b, a                                       ; $50aa: $47
    rst $30                                       ; $50ab: $f7
    ld l, e                                       ; $50ac: $6b
    ld c, $3c                                     ; $50ad: $0e $3c
    ld [hl], c                                    ; $50af: $71
    ld a, a                                       ; $50b0: $7f
    reti                                          ; $50b1: $d9


    dec bc                                        ; $50b2: $0b
    and [hl]                                      ; $50b3: $a6
    inc sp                                        ; $50b4: $33

jr_05a_50b5:
    inc hl                                        ; $50b5: $23
    ld c, d                                       ; $50b6: $4a
    ld d, $c2                                     ; $50b7: $16 $c2
    ld d, d                                       ; $50b9: $52
    cp [hl]                                       ; $50ba: $be
    pop de                                        ; $50bb: $d1
    ld c, l                                       ; $50bc: $4d
    sub l                                         ; $50bd: $95
    or l                                          ; $50be: $b5
    and $ef                                       ; $50bf: $e6 $ef
    adc h                                         ; $50c1: $8c
    ld d, d                                       ; $50c2: $52
    cp $fe                                        ; $50c3: $fe $fe
    cp a                                          ; $50c5: $bf
    inc sp                                        ; $50c6: $33
    cp a                                          ; $50c7: $bf
    di                                            ; $50c8: $f3
    bit 3, [hl]                                   ; $50c9: $cb $5e
    add sp, $47                                   ; $50cb: $e8 $47
    rst $30                                       ; $50cd: $f7
    jp $251b                                      ; $50ce: $c3 $1b $25


    inc a                                         ; $50d1: $3c
    ld h, c                                       ; $50d2: $61
    inc sp                                        ; $50d3: $33
    adc $48                                       ; $50d4: $ce $48
    rlca                                          ; $50d6: $07
    ld d, [hl]                                    ; $50d7: $56
    add h                                         ; $50d8: $84
    reti                                          ; $50d9: $d9


    ld e, a                                       ; $50da: $5f
    nop                                           ; $50db: $00
    sbc h                                         ; $50dc: $9c
    cp a                                          ; $50dd: $bf
    db $ec                                        ; $50de: $ec
    rst $38                                       ; $50df: $ff
    cp h                                          ; $50e0: $bc
    or b                                          ; $50e1: $b0
    call nc, Call_05a_4664                        ; $50e2: $d4 $64 $46
    sbc d                                         ; $50e5: $9a

jr_05a_50e6:
    pop bc                                        ; $50e6: $c1
    jr jr_05a_5137                                ; $50e7: $18 $4e

    dec bc                                        ; $50e9: $0b
    or e                                          ; $50ea: $b3
    cp a                                          ; $50eb: $bf
    db $e4                                        ; $50ec: $e4
    ld [hl], c                                    ; $50ed: $71
    add $55                                       ; $50ee: $c6 $55
    jp z, $e77f                                   ; $50f0: $ca $7f $e7

    ld a, h                                       ; $50f3: $7c
    push hl                                       ; $50f4: $e5
    pop de                                        ; $50f5: $d1
    ld hl, sp+$49                                 ; $50f6: $f8 $49
    ld b, l                                       ; $50f8: $45
    scf                                           ; $50f9: $37
    add hl, hl                                    ; $50fa: $29
    push bc                                       ; $50fb: $c5
    db $ed                                        ; $50fc: $ed
    add a                                         ; $50fd: $87
    ld e, a                                       ; $50fe: $5f
    ld c, $f1                                     ; $50ff: $0e $f1
    ld c, [hl]                                    ; $5101: $4e
    sub b                                         ; $5102: $90
    ld b, l                                       ; $5103: $45
    ld h, $a3                                     ; $5104: $26 $a3
    dec a                                         ; $5106: $3d
    ld e, c                                       ; $5107: $59
    scf                                           ; $5108: $37
    sub c                                         ; $5109: $91
    ld l, h                                       ; $510a: $6c
    db $e3                                        ; $510b: $e3
    inc e                                         ; $510c: $1c
    sub d                                         ; $510d: $92
    rst $38                                       ; $510e: $ff
    rlca                                          ; $510f: $07
    add $92                                       ; $5110: $c6 $92
    rst $38                                       ; $5112: $ff
    db $ec                                        ; $5113: $ec
    xor e                                         ; $5114: $ab
    ccf                                           ; $5115: $3f
    rst $18                                       ; $5116: $df
    ld d, a                                       ; $5117: $57
    ld a, [de]                                    ; $5118: $1a
    cp l                                          ; $5119: $bd
    ld a, [hl]                                    ; $511a: $7e
    and e                                         ; $511b: $a3
    rst $28                                       ; $511c: $ef
    inc c                                         ; $511d: $0c
    inc a                                         ; $511e: $3c
    ldh a, [$de]                                  ; $511f: $f0 $de
    cp a                                          ; $5121: $bf
    nop                                           ; $5122: $00
    db $fc                                        ; $5123: $fc
    ld h, h                                       ; $5124: $64
    ld b, [hl]                                    ; $5125: $46
    sbc d                                         ; $5126: $9a
    sub h                                         ; $5127: $94
    dec [hl]                                      ; $5128: $35
    push hl                                       ; $5129: $e5
    ld h, h                                       ; $512a: $64
    ld b, [hl]                                    ; $512b: $46
    jp nz, $ff52                                  ; $512c: $c2 $52 $ff

    adc $c7                                       ; $512f: $ce $c7
    ld a, h                                       ; $5131: $7c
    sub e                                         ; $5132: $93
    add d                                         ; $5133: $82
    ld [hl], c                                    ; $5134: $71
    cp [hl]                                       ; $5135: $be
    ld a, [c]                                     ; $5136: $f2

jr_05a_5137:
    dec c                                         ; $5137: $0d
    reti                                          ; $5138: $d9


    ld b, b                                       ; $5139: $40
    or $5f                                        ; $513a: $f6 $5f
    ld [$dd8c], a                                 ; $513c: $ea $8c $dd
    cp e                                          ; $513f: $bb
    ld [hl], l                                    ; $5140: $75
    adc c                                         ; $5141: $89
    ld [hl], e                                    ; $5142: $73
    or a                                          ; $5143: $b7
    ld c, c                                       ; $5144: $49
    ld e, b                                       ; $5145: $58
    ld a, d                                       ; $5146: $7a
    ld a, a                                       ; $5147: $7f
    ld a, h                                       ; $5148: $7c
    ld d, d                                       ; $5149: $52
    jr nc, jr_05a_50e6                            ; $514a: $30 $9a

    ldh a, [rLY]                                  ; $514c: $f0 $44
    db $eb                                        ; $514e: $eb
    adc $b8                                       ; $514f: $ce $b8
    ld d, d                                       ; $5151: $52
    or d                                          ; $5152: $b2
    adc $6e                                       ; $5153: $ce $6e
    ld [hl-], a                                   ; $5155: $32
    inc hl                                        ; $5156: $23
    pop af                                        ; $5157: $f1
    cp $99                                        ; $5158: $fe $99
    rst $08                                       ; $515a: $cf
    ld [hl], b                                    ; $515b: $70
    ld e, d                                       ; $515c: $5a
    sub h                                         ; $515d: $94
    ld a, d                                       ; $515e: $7a
    ld d, h                                       ; $515f: $54
    push bc                                       ; $5160: $c5
    sbc [hl]                                      ; $5161: $9e
    cp $0b                                        ; $5162: $fe $0b
    nop                                           ; $5164: $00
    cp h                                          ; $5165: $bc
    cp a                                          ; $5166: $bf
    ld [hl], e                                    ; $5167: $73
    xor [hl]                                      ; $5168: $ae
    ld h, b                                       ; $5169: $60
    or d                                          ; $516a: $b2

Call_05a_516b:
    sbc $1e                                       ; $516b: $de $1e
    ld d, l                                       ; $516d: $55
    db $db                                        ; $516e: $db
    ld a, [c]                                     ; $516f: $f2
    rla                                           ; $5170: $17
    ld [de], a                                    ; $5171: $12
    ld c, l                                       ; $5172: $4d
    ld d, h                                       ; $5173: $54
    ld l, d                                       ; $5174: $6a
    ld [hl-], a                                   ; $5175: $32
    inc hl                                        ; $5176: $23
    call $0c60                                    ; $5177: $cd $60 $0c
    and a                                         ; $517a: $a7
    add l                                         ; $517b: $85
    reti                                          ; $517c: $d9


    daa                                           ; $517d: $27
    ld [hl], l                                    ; $517e: $75
    ld h, a                                       ; $517f: $67
    ld e, h                                       ; $5180: $5c
    ld h, $98                                     ; $5181: $26 $98
    xor h                                         ; $5183: $ac
    or a                                          ; $5184: $b7
    ld a, a                                       ; $5185: $7f
    dec sp                                        ; $5186: $3b
    and d                                         ; $5187: $a2
    inc b                                         ; $5188: $04
    cp a                                          ; $5189: $bf
    sbc h                                         ; $518a: $9c
    cp c                                          ; $518b: $b9
    add a                                         ; $518c: $87
    db $ed                                        ; $518d: $ed
    adc $2d                                       ; $518e: $ce $2d
    push af                                       ; $5190: $f5
    xor b                                         ; $5191: $a8
    jp c, $00be                                   ; $5192: $da $be $00

    db $fc                                        ; $5195: $fc
    ld h, h                                       ; $5196: $64
    ld c, l                                       ; $5197: $4d
    sbc d                                         ; $5198: $9a
    sub h                                         ; $5199: $94
    dec [hl]                                      ; $519a: $35
    push hl                                       ; $519b: $e5
    ld h, h                                       ; $519c: $64
    ld c, l                                       ; $519d: $4d
    ld a, [hl-]                                   ; $519e: $3a
    ld e, h                                       ; $519f: $5c
    ld e, c                                       ; $51a0: $59
    ld h, a                                       ; $51a1: $67
    sbc c                                         ; $51a2: $99
    ld a, [$3e77]                                 ; $51a3: $fa $77 $3e
    and $9b                                       ; $51a6: $e6 $9b
    inc d                                         ; $51a8: $14
    adc h                                         ; $51a9: $8c
    di                                            ; $51aa: $f3
    sub l                                         ; $51ab: $95
    ld l, a                                       ; $51ac: $6f
    add sp, $50                                   ; $51ad: $e8 $50
    ld a, [de]                                    ; $51af: $1a
    rst $20                                       ; $51b0: $e7
    add h                                         ; $51b1: $84
    inc a                                         ; $51b2: $3c
    ld e, [hl]                                    ; $51b3: $5e
    ccf                                           ; $51b4: $3f
    ld a, d                                       ; $51b5: $7a

Call_05a_51b6:
    ld a, e                                       ; $51b6: $7b
    ld c, e                                       ; $51b7: $4b
    ld h, a                                       ; $51b8: $67
    ldh [$9c], a                                  ; $51b9: $e0 $9c
    rst $38                                       ; $51bb: $ff
    rla                                           ; $51bc: $17
    nop                                           ; $51bd: $00
    inc e                                         ; $51be: $1c
    daa                                           ; $51bf: $27
    sub h                                         ; $51c0: $94
    ccf                                           ; $51c1: $3f
    jp $b7fc                                      ; $51c2: $c3 $fc $b7


    and d                                         ; $51c5: $a2
    sub d                                         ; $51c6: $92
    add d                                         ; $51c7: $82
    pop de                                        ; $51c8: $d1
    ld [hl], h                                    ; $51c9: $74
    ld b, a                                       ; $51ca: $47
    ld b, l                                       ; $51cb: $45
    xor e                                         ; $51cc: $ab
    or e                                          ; $51cd: $b3
    inc d                                         ; $51ce: $14
    sbc $2d                                       ; $51cf: $de $2d
    sbc l                                         ; $51d1: $9d
    add c                                         ; $51d2: $81
    ld [hl], e                                    ; $51d3: $73
    ld a, [hl]                                    ; $51d4: $7e
    ld a, [hl-]                                   ; $51d5: $3a
    or b                                          ; $51d6: $b0
    ld h, d                                       ; $51d7: $62
    ld l, l                                       ; $51d8: $6d
    or a                                          ; $51d9: $b7
    xor [hl]                                      ; $51da: $ae
    db $eb                                        ; $51db: $eb
    ld d, d                                       ; $51dc: $52
    db $ed                                        ; $51dd: $ed
    sbc d                                         ; $51de: $9a
    sub c                                         ; $51df: $91
    db $ec                                        ; $51e0: $ec

jr_05a_51e1:
    cp a                                          ; $51e1: $bf
    ei                                            ; $51e2: $fb
    ld e, a                                       ; $51e3: $5f
    ld a, b                                       ; $51e4: $78
    adc $6b                                       ; $51e5: $ce $6b
    cp $ce                                        ; $51e7: $fe $ce
    xor b                                         ; $51e9: $a8
    di                                            ; $51ea: $f3
    ld l, e                                       ; $51eb: $6b
    db $fd                                        ; $51ec: $fd
    jp c, Jump_000_3949                           ; $51ed: $da $49 $39

    pop de                                        ; $51f0: $d1
    dec b                                         ; $51f1: $05
    nop                                           ; $51f2: $00
    cp h                                          ; $51f3: $bc
    ld h, e                                       ; $51f4: $63
    sbc h                                         ; $51f5: $9c
    or c                                          ; $51f6: $b1
    or [hl]                                       ; $51f7: $b6
    ld d, c                                       ; $51f8: $51
    ld a, [hl+]                                   ; $51f9: $2a
    call c, Call_000_28de                         ; $51fa: $dc $de $28
    pop bc                                        ; $51fd: $c1
    xor a                                         ; $51fe: $af
    inc a                                         ; $51ff: $3c
    ld c, [hl]                                    ; $5200: $4e
    adc d                                         ; $5201: $8a
    ld [hl], b                                    ; $5202: $70
    sub h                                         ; $5203: $94
    ld h, [hl]                                    ; $5204: $66
    jr nc, jr_05a_51e1                            ; $5205: $30 $da

    or e                                          ; $5207: $b3
    jr nc, jr_05a_51e1                            ; $5208: $30 $d7

    ld b, d                                       ; $520a: $42
    and d                                         ; $520b: $a2
    inc [hl]                                      ; $520c: $34

jr_05a_520d:
    add e                                         ; $520d: $83
    and l                                         ; $520e: $a5
    ld l, b                                       ; $520f: $68
    or $c2                                        ; $5210: $f6 $c2
    ld d, d                                       ; $5212: $52
    sbc d                                         ; $5213: $9a
    push hl                                       ; $5214: $e5
    and h                                         ; $5215: $a4
    adc c                                         ; $5216: $89
    inc sp                                        ; $5217: $33
    or $9c                                        ; $5218: $f6 $9c
    ld d, a                                       ; $521a: $57
    or b                                          ; $521b: $b0
    dec a                                         ; $521c: $3d
    cp a                                          ; $521d: $bf
    or [hl]                                       ; $521e: $b6
    xor a                                         ; $521f: $af
    adc c                                         ; $5220: $89
    xor h                                         ; $5221: $ac
    ld a, e                                       ; $5222: $7b
    or e                                          ; $5223: $b3
    inc d                                         ; $5224: $14
    or d                                          ; $5225: $b2
    sub $71                                       ; $5226: $d6 $71
    xor $a5                                       ; $5228: $ee $a5
    dec bc                                        ; $522a: $0b
    nop                                           ; $522b: $00
    ld e, $36                                     ; $522c: $1e $36
    ld e, c                                       ; $522e: $59
    ld l, h                                       ; $522f: $6c
    sub c                                         ; $5230: $91
    add hl, de                                    ; $5231: $19
    add hl, bc                                    ; $5232: $09
    ld c, a                                       ; $5233: $4f
    db $e4                                        ; $5234: $e4
    ld l, a                                       ; $5235: $6f
    db $fd                                        ; $5236: $fd
    ld [$f9df], a                                 ; $5237: $ea $df $f9
    sbc b                                         ; $523a: $98
    add a                                         ; $523b: $87
    push af                                       ; $523c: $f5
    sla a                                         ; $523d: $cb $27
    or d                                          ; $523f: $b2
    ld [$1c55], sp                                ; $5240: $08 $55 $1c
    sbc b                                         ; $5243: $98
    xor d                                         ; $5244: $aa
    inc hl                                        ; $5245: $23
    ld c, d                                       ; $5246: $4a
    inc sp                                        ; $5247: $33
    jr jr_05a_520d                                ; $5248: $18 $c3

    ld l, c                                       ; $524a: $69
    ld de, $8975                                  ; $524b: $11 $75 $89
    inc sp                                        ; $524e: $33
    sub h                                         ; $524f: $94
    ld l, a                                       ; $5250: $6f
    add sp, $50                                   ; $5251: $e8 $50
    ld a, [de]                                    ; $5253: $1a
    rst $20                                       ; $5254: $e7
    add h                                         ; $5255: $84
    db $ec                                        ; $5256: $ec
    sub a                                         ; $5257: $97
    db $fd                                        ; $5258: $fd
    sbc a                                         ; $5259: $9f
    or a                                          ; $525a: $b7
    ld e, l                                       ; $525b: $5d
    ccf                                           ; $525c: $3f
    jr z, jr_05a_5288                             ; $525d: $28 $29

    jr jr_05a_52ae                                ; $525f: $18 $4d

    or $3d                                        ; $5261: $f6 $3d
    ld e, d                                       ; $5263: $5a
    rlca                                          ; $5264: $07
    rst $00                                       ; $5265: $c7
    sbc h                                         ; $5266: $9c
    rst $38                                       ; $5267: $ff
    rst $30                                       ; $5268: $f7
    ld a, a                                       ; $5269: $7f
    ld l, c                                       ; $526a: $69
    db $db                                        ; $526b: $db
    jp nz, Jump_000_02f6                          ; $526c: $c2 $f6 $02

    sbc [hl]                                      ; $526f: $9e
    ld a, a                                       ; $5270: $7f
    jp c, $877b                                   ; $5271: $da $7b $87

    push af                                       ; $5274: $f5
    or e                                          ; $5275: $b3
    sub l                                         ; $5276: $95
    rst $20                                       ; $5277: $e7
    ret z                                         ; $5278: $c8

    ld d, b                                       ; $5279: $50
    ld a, $91                                     ; $527a: $3e $91
    ld b, l                                       ; $527c: $45
    ret z                                         ; $527d: $c8

    rst $00                                       ; $527e: $c7
    inc d                                         ; $527f: $14
    cp $19                                        ; $5280: $fe $19
    adc h                                         ; $5282: $8c
    pop hl                                        ; $5283: $e1
    or h                                          ; $5284: $b4
    or b                                          ; $5285: $b0
    ld a, [hl]                                    ; $5286: $7e
    dec [hl]                                      ; $5287: $35

jr_05a_5288:
    ld d, l                                       ; $5288: $55
    add l                                         ; $5289: $85
    ld a, [hl]                                    ; $528a: $7e
    rst $20                                       ; $528b: $e7
    xor e                                         ; $528c: $ab
    ret nc                                        ; $528d: $d0

    adc a                                         ; $528e: $8f
    or a                                          ; $528f: $b7
    sbc $4b                                       ; $5290: $de $4b
    inc a                                         ; $5292: $3c
    ld d, h                                       ; $5293: $54
    ld d, c                                       ; $5294: $51
    ld [$2b8c], a                                 ; $5295: $ea $8c $2b
    dec e                                         ; $5298: $1d
    ld e, b                                       ; $5299: $58
    ld de, $ff66                                  ; $529a: $11 $66 $ff
    and l                                         ; $529d: $a5
    cp $95                                        ; $529e: $fe $95
    db $ed                                        ; $52a0: $ed
    and $38                                       ; $52a1: $e6 $38
    ld l, h                                       ; $52a3: $6c
    ld [c], a                                     ; $52a4: $e2
    dec e                                         ; $52a5: $1d
    inc c                                         ; $52a6: $0c
    call Call_05a_4bfe                            ; $52a7: $cd $fe $4b
    ld e, b                                       ; $52aa: $58
    jp z, $dd9f                                   ; $52ab: $ca $9f $dd

jr_05a_52ae:
    ld l, a                                       ; $52ae: $6f
    cp l                                          ; $52af: $bd
    add d                                         ; $52b0: $82
    or c                                          ; $52b1: $b1
    and $d6                                       ; $52b2: $e6 $d6
    ld sp, hl                                     ; $52b4: $f9
    xor l                                         ; $52b5: $ad
    jr z, @-$09                                   ; $52b6: $28 $f5

    rst $28                                       ; $52b8: $ef
    ld a, h                                       ; $52b9: $7c
    call z, $02f7                                 ; $52ba: $cc $f7 $02
    ld e, $a1                                     ; $52bd: $1e $a1
    add hl, hl                                    ; $52bf: $29
    db $fd                                        ; $52c0: $fd
    inc sp                                        ; $52c1: $33
    cp [hl]                                       ; $52c2: $be
    push hl                                       ; $52c3: $e5
    inc de                                        ; $52c4: $13
    ld e, c                                       ; $52c5: $59
    sub e                                         ; $52c6: $93
    ld a, [hl+]                                   ; $52c7: $2a
    ld c, $4c                                     ; $52c8: $0e $4c
    push de                                       ; $52ca: $d5
    ld de, $19a5                                  ; $52cb: $11 $a5 $19
    adc h                                         ; $52ce: $8c
    pop hl                                        ; $52cf: $e1
    or h                                          ; $52d0: $b4
    adc b                                         ; $52d1: $88
    ld d, d                                       ; $52d2: $52
    and c                                         ; $52d3: $a1
    rra                                           ; $52d4: $1f
    ld l, a                                       ; $52d5: $6f
    cp l                                          ; $52d6: $bd
    ld c, c                                       ; $52d7: $49
    call $faaf                                    ; $52d8: $cd $af $fa
    xor $7f                                       ; $52db: $ee $7f
    ld c, l                                       ; $52dd: $4d
    jp z, $89ba                                   ; $52de: $ca $ba $89

    inc d                                         ; $52e1: $14
    dec e                                         ; $52e2: $1d
    add a                                         ; $52e3: $87
    ld a, h                                       ; $52e4: $7c
    ld [hl+], a                                   ; $52e5: $22
    inc sp                                        ; $52e6: $33
    ld [de], a                                    ; $52e7: $12
    sbc [hl]                                      ; $52e8: $9e
    ret z                                         ; $52e9: $c8

    rst $30                                       ; $52ea: $f7
    push hl                                       ; $52eb: $e5
    inc hl                                        ; $52ec: $23
    db $eb                                        ; $52ed: $eb
    rst $18                                       ; $52ee: $df
    cp $0b                                        ; $52ef: $fe $0b
    nop                                           ; $52f1: $00
    sbc [hl]                                      ; $52f2: $9e
    ld a, a                                       ; $52f3: $7f
    jp c, $877b                                   ; $52f4: $da $7b $87

    push af                                       ; $52f7: $f5
    or e                                          ; $52f8: $b3
    sub l                                         ; $52f9: $95
    rst $20                                       ; $52fa: $e7
    ret z                                         ; $52fb: $c8

    or b                                          ; $52fc: $b0
    sub h                                         ; $52fd: $94
    ccf                                           ; $52fe: $3f
    ld a, e                                       ; $52ff: $7b
    ld l, e                                       ; $5300: $6b
    ld c, h                                       ; $5301: $4c
    rlca                                          ; $5302: $07
    ld d, [hl]                                    ; $5303: $56
    ld [$4d4b], sp                                ; $5304: $08 $4b $4d
    ld h, [hl]                                    ; $5307: $66
    and h                                         ; $5308: $a4
    add hl, de                                    ; $5309: $19

jr_05a_530a:
    adc h                                         ; $530a: $8c
    pop hl                                        ; $530b: $e1
    or h                                          ; $530c: $b4
    jr nc, jr_05a_530a                            ; $530d: $30 $fb

    ld c, e                                       ; $530f: $4b
    sbc h                                         ; $5310: $9c
    dec de                                        ; $5311: $1b
    rst $20                                       ; $5312: $e7
    sub b                                         ; $5313: $90
    or b                                          ; $5314: $b0
    inc [hl]                                      ; $5315: $34
    rst $00                                       ; $5316: $c7
    jr c, jr_05a_538a                             ; $5317: $38 $71

    rst $18                                       ; $5319: $df
    xor a                                         ; $531a: $af
    sbc l                                         ; $531b: $9d
    sub h                                         ; $531c: $94
    cpl                                           ; $531d: $2f
    add hl, hl                                    ; $531e: $29
    dec sp                                        ; $531f: $3b
    add a                                         ; $5320: $87
    ld a, [hl-]                                   ; $5321: $3a
    sbc e                                         ; $5322: $9b
    or [hl]                                       ; $5323: $b6
    ld [hl], h                                    ; $5324: $74
    ld bc, $cbbc                                  ; $5325: $01 $bc $cb
    ld h, b                                       ; $5328: $60
    call c, $961e                                 ; $5329: $dc $1e $96
    db $d3                                        ; $532c: $d3
    reti                                          ; $532d: $d9


    adc d                                         ; $532e: $8a
    ld l, l                                       ; $532f: $6d
    sub d                                         ; $5330: $92
    pop de                                        ; $5331: $d1
    sbc [hl]                                      ; $5332: $9e
    xor h                                         ; $5333: $ac
    and e                                         ; $5334: $a3
    adc c                                         ; $5335: $89
    ld c, d                                       ; $5336: $4a
    dec [hl]                                      ; $5337: $35
    ret c                                         ; $5338: $d8

    ld a, h                                       ; $5339: $7c
    or e                                          ; $533a: $b3
    rla                                           ; $533b: $17
    sbc [hl]                                      ; $533c: $9e
    ret z                                         ; $533d: $c8

    rst $18                                       ; $533e: $df
    db $ec                                        ; $533f: $ec
    dec [hl]                                      ; $5340: $35
    rst $38                                       ; $5341: $ff
    db $fd                                        ; $5342: $fd
    dec [hl]                                      ; $5343: $35
    ei                                            ; $5344: $fb
    ld c, e                                       ; $5345: $4b
    cp h                                          ; $5346: $bc
    ld h, e                                       ; $5347: $63
    sbc h                                         ; $5348: $9c
    dec l                                         ; $5349: $2d
    reti                                          ; $534a: $d9


    add $69                                       ; $534b: $c6 $69
    jp nc, $c60c                                  ; $534d: $d2 $0c $c6

    cp [hl]                                       ; $5350: $be
    inc [hl]                                      ; $5351: $34
    rst $00                                       ; $5352: $c7
    ld a, l                                       ; $5353: $7d
    rst $38                                       ; $5354: $ff
    add hl, sp                                    ; $5355: $39
    ld l, e                                       ; $5356: $6b
    ei                                            ; $5357: $fb
    ld [hl+], a                                   ; $5358: $22
    xor d                                         ; $5359: $aa
    and l                                         ; $535a: $a5
    dec bc                                        ; $535b: $0b
    nop                                           ; $535c: $00
    db $fc                                        ; $535d: $fc
    jp $96e6                                      ; $535e: $c3 $e6 $96


    xor $3f                                       ; $5361: $ee $3f
    db $fd                                        ; $5363: $fd
    dec h                                         ; $5364: $25
    add h                                         ; $5365: $84
    ld h, b                                       ; $5366: $60
    rst $30                                       ; $5367: $f7
    ld a, a                                       ; $5368: $7f
    ld d, d                                       ; $5369: $52
    pop de                                        ; $536a: $d1
    ld c, l                                       ; $536b: $4d
    ld a, [c]                                     ; $536c: $f2
    adc c                                         ; $536d: $89
    inc l                                         ; $536e: $2c
    ld c, d                                       ; $536f: $4a
    ld c, l                                       ; $5370: $4d
    ld l, c                                       ; $5371: $69
    ld l, a                                       ; $5372: $6f
    ld l, a                                       ; $5373: $6f

Call_05a_5374:
    ld [hl], h                                    ; $5374: $74
    ld b, h                                       ; $5375: $44
    xor c                                         ; $5376: $a9
    ld b, a                                       ; $5377: $47
    ld d, l                                       ; $5378: $55
    db $ec                                        ; $5379: $ec
    add hl, sp                                    ; $537a: $39
    ld [hl], c                                    ; $537b: $71
    adc c                                         ; $537c: $89
    ld a, a                                       ; $537d: $7f
    and b                                         ; $537e: $a0
    sbc d                                         ; $537f: $9a
    jp nc, Jump_05a_46de                          ; $5380: $d2 $de $46

    ld d, [hl]                                    ; $5383: $56
    cp e                                          ; $5384: $bb
    and l                                         ; $5385: $a5
    ld a, h                                       ; $5386: $7c
    inc hl                                        ; $5387: $23
    daa                                           ; $5388: $27
    ld h, c                                       ; $5389: $61

jr_05a_538a:
    cp [hl]                                       ; $538a: $be
    jp nz, $8c12                                  ; $538b: $c2 $12 $8c

    dec e                                         ; $538e: $1d
    dec [hl]                                      ; $538f: $35
    or a                                          ; $5390: $b7
    ld d, h                                       ; $5391: $54
    cp e                                          ; $5392: $bb
    and l                                         ; $5393: $a5
    inc d                                         ; $5394: $14
    rst $00                                       ; $5395: $c7
    inc e                                         ; $5396: $1c
    db $dd                                        ; $5397: $dd
    ld [hl], c                                    ; $5398: $71
    ld [hl+], a                                   ; $5399: $22
    rst $38                                       ; $539a: $ff

jr_05a_539b:
    dec bc                                        ; $539b: $0b
    nop                                           ; $539c: $00
    db $fc                                        ; $539d: $fc
    inc bc                                        ; $539e: $03
    push hl                                       ; $539f: $e5
    ld h, e                                       ; $53a0: $63
    ld a, [bc]                                    ; $53a1: $0a
    db $e3                                        ; $53a2: $e3
    sbc d                                         ; $53a3: $9a
    push bc                                       ; $53a4: $c5
    ld d, $9d                                     ; $53a5: $16 $9d
    ld b, e                                       ; $53a7: $43
    jp nz, $f913                                  ; $53a8: $c2 $13 $f9

    db $eb                                        ; $53ab: $eb
    ld e, $d8                                     ; $53ac: $1e $d8
    jr c, jr_05a_53f7                             ; $53ae: $38 $47

    cp $d7                                        ; $53b0: $fe $d7
    ld [hl], l                                    ; $53b2: $75
    ld l, c                                       ; $53b3: $69
    db $d3                                        ; $53b4: $d3
    cpl                                           ; $53b5: $2f
    call Call_000_25b1                            ; $53b6: $cd $b1 $25
    dec bc                                        ; $53b9: $0b
    db $dd                                        ; $53ba: $dd
    and e                                         ; $53bb: $a3
    rst $10                                       ; $53bc: $d7
    sub $56                                       ; $53bd: $d6 $56
    jr nc, jr_05a_539b                            ; $53bf: $30 $da

    inc e                                         ; $53c1: $1c
    and [hl]                                      ; $53c2: $a6
    ld l, l                                       ; $53c3: $6d
    adc e                                         ; $53c4: $8b
    ld l, c                                       ; $53c5: $69
    ld de, $0175                                  ; $53c6: $11 $75 $01

jr_05a_53c9:
    inc e                                         ; $53c9: $1c
    daa                                           ; $53ca: $27
    ld c, d                                       ; $53cb: $4a
    di                                            ; $53cc: $f3
    db $db                                        ; $53cd: $db
    ld [c], a                                     ; $53ce: $e2
    sbc h                                         ; $53cf: $9c
    pop de                                        ; $53d0: $d1
    or d                                          ; $53d1: $b2
    ld l, l                                       ; $53d2: $6d
    jp nc, $be1a                                  ; $53d3: $d2 $1a $be

    ld h, $5b                                     ; $53d6: $26 $5b
    db $eb                                        ; $53d8: $eb
    ccf                                           ; $53d9: $3f
    ld h, a                                       ; $53da: $67
    db $fd                                        ; $53db: $fd
    ccf                                           ; $53dc: $3f
    rlca                                          ; $53dd: $07
    ld e, a                                       ; $53de: $5f
    ld sp, hl                                     ; $53df: $f9
    rst $28                                       ; $53e0: $ef
    sbc h                                         ; $53e1: $9c
    xor a                                         ; $53e2: $af
    add hl, sp                                    ; $53e3: $39
    or [hl]                                       ; $53e4: $b6
    and $6b                                       ; $53e5: $e6 $6b
    cp $f8                                        ; $53e7: $fe $f8
    ld c, d                                       ; $53e9: $4a
    ld [$dd1e], a                                 ; $53ea: $ea $1e $dd
    xor a                                         ; $53ed: $af
    jr z, jr_05a_53c9                             ; $53ee: $28 $d9

    sbc [hl]                                      ; $53f0: $9e
    ld e, [hl]                                    ; $53f1: $5e
    dec d                                         ; $53f2: $15
    add l                                         ; $53f3: $85
    ld a, d                                       ; $53f4: $7a
    sbc h                                         ; $53f5: $9c
    ret z                                         ; $53f6: $c8

jr_05a_53f7:
    ld a, a                                       ; $53f7: $7f
    ld l, l                                       ; $53f8: $6d
    adc h                                         ; $53f9: $8c
    adc [hl]                                      ; $53fa: $8e
    xor b                                         ; $53fb: $a8
    dec bc                                        ; $53fc: $0b
    nop                                           ; $53fd: $00
    db $fc                                        ; $53fe: $fc
    cp b                                          ; $53ff: $b8
    add hl, sp                                    ; $5400: $39
    halt                                          ; $5401: $76
    ld a, a                                       ; $5402: $7f
    cp $d6                                        ; $5403: $fe $d6
    xor e                                         ; $5405: $ab
    ld a, [$dbd1]                                 ; $5406: $fa $d1 $db
    dec e                                         ; $5409: $1d
    sbc d                                         ; $540a: $9a
    cp a                                          ; $540b: $bf
    ld [hl], e                                    ; $540c: $73
    xor [hl]                                      ; $540d: $ae
    ld a, [hl-]                                   ; $540e: $3a
    ld e, b                                       ; $540f: $58
    ld e, $3d                                     ; $5410: $1e $3d
    adc $fe                                       ; $5412: $ce $fe
    ld a, [de]                                    ; $5414: $1a
    inc a                                         ; $5415: $3c
    jp nc, $d6b3                                  ; $5416: $d2 $b3 $d6

    ld a, a                                       ; $5419: $7f
    adc c                                         ; $541a: $89
    cpl                                           ; $541b: $2f
    ld l, d                                       ; $541c: $6a
    ld [de], a                                    ; $541d: $12
    and l                                         ; $541e: $a5
    ld d, h                                       ; $541f: $54
    xor d                                         ; $5420: $aa
    xor h                                         ; $5421: $ac
    dec d                                         ; $5422: $15
    ld l, l                                       ; $5423: $6d
    ld a, e                                       ; $5424: $7b
    inc de                                        ; $5425: $13
    sub l                                         ; $5426: $95
    ldh a, [$fe]                                  ; $5427: $f0 $fe
    ld d, [hl]                                    ; $5429: $56
    rrca                                          ; $542a: $0f
    rst $38                                       ; $542b: $ff
    xor e                                         ; $542c: $ab
    add d                                         ; $542d: $82
    dec de                                        ; $542e: $1b
    nop                                           ; $542f: $00
    ld a, h                                       ; $5430: $7c
    ld l, e                                       ; $5431: $6b
    ld b, [hl]                                    ; $5432: $46
    jp nz, $a792                                  ; $5433: $c2 $92 $a7

    sbc b                                         ; $5436: $98
    adc $38                                       ; $5437: $ce $38
    dec sp                                        ; $5439: $3b
    daa                                           ; $543a: $27
    ld b, d                                       ; $543b: $42
    ld bc, $830e                                  ; $543c: $01 $0e $83
    ld d, c                                       ; $543f: $51
    ld sp, hl                                     ; $5440: $f9
    db $db                                        ; $5441: $db
    inc b                                         ; $5442: $04
    ld d, e                                       ; $5443: $53
    ld d, c                                       ; $5444: $51
    ld d, d                                       ; $5445: $52
    ld [hl], c                                    ; $5446: $71
    ld c, [hl]                                    ; $5447: $4e
    sub h                                         ; $5448: $94
    ld a, [c]                                     ; $5449: $f2
    ccf                                           ; $544a: $3f
    rst $20                                       ; $544b: $e7
    ld c, e                                       ; $544c: $4b
    pop bc                                        ; $544d: $c1
    ld [hl+], a                                   ; $544e: $22
    add l                                         ; $544f: $85
    ld h, h                                       ; $5450: $64
    rla                                           ; $5451: $17
    nop                                           ; $5452: $00
    ld l, [hl]                                    ; $5453: $6e
    ld d, a                                       ; $5454: $57
    ld b, a                                       ; $5455: $47
    ld c, h                                       ; $5456: $4c
    db $db                                        ; $5457: $db
    and h                                         ; $5458: $a4
    ld [hl], d                                    ; $5459: $72
    ld [hl+], a                                   ; $545a: $22
    ld b, [hl]                                    ; $545b: $46
    ld [$ffe1], a                                 ; $545c: $ea $e1 $ff
    dec b                                         ; $545f: $05
    nop                                           ; $5460: $00
    ld l, [hl]                                    ; $5461: $6e
    ld d, a                                       ; $5462: $57
    ld b, a                                       ; $5463: $47
    ld c, h                                       ; $5464: $4c
    db $db                                        ; $5465: $db
    and h                                         ; $5466: $a4
    ld a, h                                       ; $5467: $7c
    add [hl]                                      ; $5468: $86
    add hl, bc                                    ; $5469: $09
    add [hl]                                      ; $546a: $86
    add hl, de                                    ; $546b: $19
    or d                                          ; $546c: $b2
    ld c, l                                       ; $546d: $4d
    ld [$dd1e], a                                 ; $546e: $ea $1e $dd
    xor a                                         ; $5471: $af
    ld a, e                                       ; $5472: $7b
    call Call_05a_5848                            ; $5473: $cd $48 $58
    ld a, [c]                                     ; $5476: $f2
    inc d                                         ; $5477: $14
    db $d3                                        ; $5478: $d3
    add hl, de                                    ; $5479: $19
    ld h, a                                       ; $547a: $67
    rst $20                                       ; $547b: $e7
    ld b, h                                       ; $547c: $44
    jr z, jr_05a_547f                             ; $547d: $28 $00

jr_05a_547f:
    ld e, [hl]                                    ; $547f: $5e
    or c                                          ; $5480: $b1
    ld l, l                                       ; $5481: $6d
    ld a, [c]                                     ; $5482: $f2
    ld c, c                                       ; $5483: $49
    add a                                         ; $5484: $87
    dec hl                                        ; $5485: $2b
    ld l, e                                       ; $5486: $6b
    ld [hl+], a                                   ; $5487: $22
    reti                                          ; $5488: $d9


    ld d, [hl]                                    ; $5489: $56
    add l                                         ; $548a: $85
    and d                                         ; $548b: $a2
    ld a, [hl+]                                   ; $548c: $2a
    ld c, d                                       ; $548d: $4a
    cp $de                                        ; $548e: $fe $de
    ld b, c                                       ; $5490: $41
    and l                                         ; $5491: $a5
    ld e, $07                                     ; $5492: $1e $07
    ccf                                           ; $5494: $3f
    add hl, hl                                    ; $5495: $29
    add a                                         ; $5496: $87
    ret c                                         ; $5497: $d8

    dec e                                         ; $5498: $1d
    db $ec                                        ; $5499: $ec
    ld [bc], a                                    ; $549a: $02
    ret nc                                        ; $549b: $d0

    and l                                         ; $549c: $a5
    ld a, e                                       ; $549d: $7b
    adc e                                         ; $549e: $8b
    call nc, $101b                                ; $549f: $d4 $1b $10
    cp d                                          ; $54a2: $ba
    nop                                           ; $54a3: $00
    sbc h                                         ; $54a4: $9c
    and c                                         ; $54a5: $a1
    inc e                                         ; $54a6: $1c
    ld d, a                                       ; $54a7: $57
    ld a, b                                       ; $54a8: $78
    adc $eb                                       ; $54a9: $ce $eb
    ld e, [hl]                                    ; $54ab: $5e
    inc sp                                        ; $54ac: $33
    ld d, d                                       ; $54ad: $52
    cp $5f                                        ; $54ae: $fe $5f
    rla                                           ; $54b0: $17
    nop                                           ; $54b1: $00
    ld a, h                                       ; $54b2: $7c
    ei                                            ; $54b3: $fb
    db $e3                                        ; $54b4: $e3
    ld [bc], a                                    ; $54b5: $02
    adc [hl]                                      ; $54b6: $8e
    sbc l                                         ; $54b7: $9d
    ld c, c                                       ; $54b8: $49
    and h                                         ; $54b9: $a4
    cp c                                          ; $54ba: $b9
    jp Jump_000_27be                              ; $54bb: $c3 $be $27


    ld a, [hl+]                                   ; $54be: $2a
    rst $38                                       ; $54bf: $ff
    ld c, d                                       ; $54c0: $4a
    rst $38                                       ; $54c1: $ff
    push hl                                       ; $54c2: $e5
    nop                                           ; $54c3: $00
    add hl, de                                    ; $54c4: $19
    ld e, e                                       ; $54c5: $5b
    sbc e                                         ; $54c6: $9b
    rst $38                                       ; $54c7: $ff
    call c, $dbe2                                 ; $54c8: $dc $e2 $db
    ld [hl+], a                                   ; $54cb: $22
    ld sp, hl                                     ; $54cc: $f9
    dec bc                                        ; $54cd: $0b
    and c                                         ; $54ce: $a1
    ld d, d                                       ; $54cf: $52
    rst $00                                       ; $54d0: $c7
    ld [hl], $69                                  ; $54d1: $36 $69
    cp $ce                                        ; $54d3: $fe $ce
    cp c                                          ; $54d5: $b9
    cpl                                           ; $54d6: $2f
    db $db                                        ; $54d7: $db
    ld [hl], e                                    ; $54d8: $73
    db $d3                                        ; $54d9: $d3
    add hl, sp                                    ; $54da: $39
    call nz, Call_000_000d                        ; $54db: $c4 $0d $00
    ret nc                                        ; $54de: $d0

    dec h                                         ; $54df: $25
    inc a                                         ; $54e0: $3c
    and c                                         ; $54e1: $a1
    db $fc                                        ; $54e2: $fc
    reti                                          ; $54e3: $d9


    db $fd                                        ; $54e4: $fd
    rst $10                                       ; $54e5: $d7
    ld [hl], l                                    ; $54e6: $75
    add hl, bc                                    ; $54e7: $09
    ld b, [hl]                                    ; $54e8: $46
    or e                                          ; $54e9: $b3
    rst $18                                       ; $54ea: $df
    ld d, d                                       ; $54eb: $52
    halt                                          ; $54ec: $76
    ld [c], a                                     ; $54ed: $e2
    or $a9                                        ; $54ee: $f6 $a9
    ld c, b                                       ; $54f0: $48
    ld [hl], e                                    ; $54f1: $73
    ld l, h                                       ; $54f2: $6c
    ld b, a                                       ; $54f3: $47
    call $ebad                                    ; $54f4: $cd $ad $eb
    cp d                                          ; $54f7: $ba
    nop                                           ; $54f8: $00
    sbc [hl]                                      ; $54f9: $9e
    db $e3                                        ; $54fa: $e3
    ld l, d                                       ; $54fb: $6a
    adc [hl]                                      ; $54fc: $8e
    sub d                                         ; $54fd: $92
    ld [hl], c                                    ; $54fe: $71
    ld sp, hl                                     ; $54ff: $f9
    ld e, h                                       ; $5500: $5c
    sub h                                         ; $5501: $94
    ld d, h                                       ; $5502: $54
    call z, Call_000_033f                         ; $5503: $cc $3f $03
    rst $20                                       ; $5506: $e7
    sub a                                         ; $5507: $97
    and d                                         ; $5508: $a2
    ld h, [hl]                                    ; $5509: $66
    sbc h                                         ; $550a: $9c
    ret c                                         ; $550b: $d8

    ld h, $c1                                     ; $550c: $26 $c1
    jr c, @+$61                                   ; $550e: $38 $5f

    cp $c0                                        ; $5510: $fe $c0
    inc de                                        ; $5512: $13
    rst $20                                       ; $5513: $e7
    db $fc                                        ; $5514: $fc
    dec b                                         ; $5515: $05
    nop                                           ; $5516: $00
    cp h                                          ; $5517: $bc
    and e                                         ; $5518: $a3
    ld a, [bc]                                    ; $5519: $0a
    rst $08                                       ; $551a: $cf
    ld sp, hl                                     ; $551b: $f9

Jump_05a_551c:
    and h                                         ; $551c: $a4
    inc a                                         ; $551d: $3c
    db $dd                                        ; $551e: $dd
    or b                                          ; $551f: $b0
    ld [hl], c                                    ; $5520: $71
    ld e, l                                       ; $5521: $5d
    sub a                                         ; $5522: $97
    ld a, [c]                                     ; $5523: $f2
    ld e, a                                       ; $5524: $5f
    ld sp, hl                                     ; $5525: $f9
    db $db                                        ; $5526: $db
    ld b, h                                       ; $5527: $44
    sub e                                         ; $5528: $93
    ld c, e                                       ; $5529: $4b
    rst $30                                       ; $552a: $f7
    sub $28                                       ; $552b: $d6 $28
    call $36d1                                    ; $552d: $cd $d1 $36
    ld e, [hl]                                    ; $5530: $5e
    ld a, c                                       ; $5531: $79
    or b                                          ; $5532: $b0
    xor l                                         ; $5533: $ad
    jr z, @-$05                                   ; $5534: $28 $f9

    rst $08                                       ; $5536: $cf
    or b                                          ; $5537: $b0
    ld d, $0a                                     ; $5538: $16 $0a
    nop                                           ; $553a: $00
    cp h                                          ; $553b: $bc
    and e                                         ; $553c: $a3
    jp nc, $e52f                                  ; $553d: $d2 $2f $e5

    cp a                                          ; $5540: $bf
    and l                                         ; $5541: $a5
    sbc h                                         ; $5542: $9c
    ld d, d                                       ; $5543: $52
    ld a, [hl+]                                   ; $5544: $2a
    and l                                         ; $5545: $a5
    inc hl                                        ; $5546: $23
    rst $18                                       ; $5547: $df
    ld l, c                                       ; $5548: $69
    ld d, c                                       ; $5549: $51
    xor e                                         ; $554a: $ab
    cp c                                          ; $554b: $b9
    jp $b6de                                      ; $554c: $c3 $de $b6


    xor [hl]                                      ; $554f: $ae
    db $eb                                        ; $5550: $eb
    ld [bc], a                                    ; $5551: $02
    cp h                                          ; $5552: $bc
    ld h, e                                       ; $5553: $63
    cp [hl]                                       ; $5554: $be
    inc l                                         ; $5555: $2c
    add h                                         ; $5556: $84
    ld h, a                                       ; $5557: $67
    and c                                         ; $5558: $a1
    nop                                           ; $5559: $00
    sbc [hl]                                      ; $555a: $9e
    ld d, d                                       ; $555b: $52
    sub [hl]                                      ; $555c: $96
    ld d, d                                       ; $555d: $52
    ld a, [de]                                    ; $555e: $1a
    dec [hl]                                      ; $555f: $35
    ld d, a                                       ; $5560: $57
    sbc [hl]                                      ; $5561: $9e
    ld l, [hl]                                    ; $5562: $6e
    ret c                                         ; $5563: $d8

    cp b                                          ; $5564: $b8
    call nz, Call_05a_4db9                        ; $5565: $c4 $b9 $4d
    sbc d                                         ; $5568: $9a
    ld e, a                                       ; $5569: $5f
    push af                                       ; $556a: $f5
    db $dd                                        ; $556b: $dd
    rst $38                                       ; $556c: $ff
    jp z, $e19f                                   ; $556d: $ca $9f $e1

    ld [hl], e                                    ; $5570: $73
    set 4, e                                      ; $5571: $cb $e3
    or c                                          ; $5573: $b1
    jp hl                                         ; $5574: $e9


    ld e, b                                       ; $5575: $58
    db $eb                                        ; $5576: $eb
    jr z, jr_05a_55c6                             ; $5577: $28 $4d

    db $ec                                        ; $5579: $ec

Jump_05a_557a:
    sbc l                                         ; $557a: $9d
    db $e3                                        ; $557b: $e3
    cp [hl]                                       ; $557c: $be
    or a                                          ; $557d: $b7
    add a                                         ; $557e: $87
    add hl, hl                                    ; $557f: $29
    rrca                                          ; $5580: $0f
    or [hl]                                       ; $5581: $b6
    dec d                                         ; $5582: $15
    dec h                                         ; $5583: $25
    rst $38                                       ; $5584: $ff
    add hl, de                                    ; $5585: $19
    sub $0a                                       ; $5586: $d6 $0a
    ld c, e                                       ; $5588: $4b
    cp a                                          ; $5589: $bf
    add l                                         ; $558a: $85
    sbc a                                         ; $558b: $9f
    inc d                                         ; $558c: $14
    adc h                                         ; $558d: $8c
    di                                            ; $558e: $f3
    push hl                                       ; $558f: $e5
    ld h, a                                       ; $5590: $67
    sub $59                                       ; $5591: $d6 $59
    ld h, $7f                                     ; $5593: $26 $7f
    sbc e                                         ; $5595: $9b
    ld l, [hl]                                    ; $5596: $6e
    and d                                         ; $5597: $a2
    sub d                                         ; $5598: $92
    ld b, l                                       ; $5599: $45
    ld l, c                                       ; $559a: $69
    ld c, $b6                                     ; $559b: $0e $b6
    ld h, [hl]                                    ; $559d: $66
    ld a, a                                       ; $559e: $7f
    ld bc, $6dd0                                  ; $559f: $01 $d0 $6d
    xor e                                         ; $55a2: $ab
    or e                                          ; $55a3: $b3
    jp hl                                         ; $55a4: $e9


    rst $20                                       ; $55a5: $e7
    xor a                                         ; $55a6: $af
    ld a, [$28ad]                                 ; $55a7: $fa $ad $28
    push hl                                       ; $55aa: $e5
    rst $38                                       ; $55ab: $ff
    daa                                           ; $55ac: $27
    cp [hl]                                       ; $55ad: $be
    db $fc                                        ; $55ae: $fc
    ld d, c                                       ; $55af: $51
    cp a                                          ; $55b0: $bf
    ld d, $66                                     ; $55b1: $16 $66
    xor a                                         ; $55b3: $af
    dec sp                                        ; $55b4: $3b
    ld h, $9a                                     ; $55b5: $26 $9a
    db $fd                                        ; $55b7: $fd
    ld [hl], l                                    ; $55b8: $75

Call_05a_55b9:
    ld e, l                                       ; $55b9: $5d
    or d                                          ; $55ba: $b2
    jr z, jr_05a_5602                             ; $55bb: $28 $45

    push bc                                       ; $55bd: $c5
    db $ed                                        ; $55be: $ed
    inc de                                        ; $55bf: $13
    add hl, hl                                    ; $55c0: $29
    ld c, d                                       ; $55c1: $4a
    cp l                                          ; $55c2: $bd
    ld bc, $0ba1                                  ; $55c3: $01 $a1 $0b

jr_05a_55c6:
    nop                                           ; $55c6: $00
    sbc h                                         ; $55c7: $9c
    ld hl, $cd2c                                  ; $55c8: $21 $2c $cd
    ld sp, $dc4e                                  ; $55cb: $31 $4e $dc
    rst $30                                       ; $55ce: $f7
    xor e                                         ; $55cf: $ab
    sub c                                         ; $55d0: $91
    push de                                       ; $55d1: $d5
    sbc d                                         ; $55d2: $9a
    db $fd                                        ; $55d3: $fd
    dec h                                         ; $55d4: $25
    add sp, $74                                   ; $55d5: $e8 $74
    sub d                                         ; $55d7: $92
    and $57                                       ; $55d8: $e6 $57
    ld a, l                                       ; $55da: $7d
    rst $30                                       ; $55db: $f7
    cp a                                          ; $55dc: $bf
    and d                                         ; $55dd: $a2
    ld l, l                                       ; $55de: $6d
    ld c, c                                       ; $55df: $49
    reti                                          ; $55e0: $d9


    adc c                                         ; $55e1: $89
    db $db                                        ; $55e2: $db
    daa                                           ; $55e3: $27
    cp d                                          ; $55e4: $ba
    nop                                           ; $55e5: $00
    cp h                                          ; $55e6: $bc
    rst $18                                       ; $55e7: $df
    add [hl]                                      ; $55e8: $86
    jp z, $970e                                   ; $55e9: $ca $0e $97

    dec h                                         ; $55ec: $25
    ld b, l                                       ; $55ed: $45
    add a                                         ; $55ee: $87
    ld h, $e9                                     ; $55ef: $26 $e9
    rst $08                                       ; $55f1: $cf
    db $db                                        ; $55f2: $db
    dec b                                         ; $55f3: $05
    nop                                           ; $55f4: $00
    sbc h                                         ; $55f5: $9c
    ld hl, $ab3c                                  ; $55f6: $21 $3c $ab
    add hl, sp                                    ; $55f9: $39
    add $89                                       ; $55fa: $c6 $89
    ei                                            ; $55fc: $fb
    ld a, [hl]                                    ; $55fd: $7e
    xor l                                         ; $55fe: $ad
    ld h, c                                       ; $55ff: $61
    ret                                           ; $5600: $c9


    rst $38                                       ; $5601: $ff

jr_05a_5602:
    ld [hl], e                                    ; $5602: $73
    or b                                          ; $5603: $b0
    ld [hl], h                                    ; $5604: $74
    jr z, @-$71                                   ; $5605: $28 $8d

Jump_05a_5607:
    ld [hl], e                                    ; $5607: $73
    add sp, $02                                   ; $5608: $e8 $02
    sbc h                                         ; $560a: $9c
    ld hl, $effb                                  ; $560b: $21 $fb $ef
    cp $17                                        ; $560e: $fe $17
    sbc [hl]                                      ; $5610: $9e
    di                                            ; $5611: $f3
    add d                                         ; $5612: $82
    or c                                          ; $5613: $b1
    and $28                                       ; $5614: $e6 $28
    call $7f91                                    ; $5616: $cd $91 $7f
    xor c                                         ; $5619: $a9
    ld a, a                                       ; $561a: $7f
    ld a, [hl]                                    ; $561b: $7e
    db $fd                                        ; $561c: $fd
    dec b                                         ; $561d: $05
    nop                                           ; $561e: $00
    ld c, $f1                                     ; $561f: $0e $f1
    ld [hl], h                                    ; $5621: $74
    rst $38                                       ; $5622: $ff
    ld e, a                                       ; $5623: $5f
    rst $10                                       ; $5624: $d7
    push hl                                       ; $5625: $e5
    db $e3                                        ; $5626: $e3
    jp hl                                         ; $5627: $e9


    cp $bf                                        ; $5628: $fe $bf
    nop                                           ; $562a: $00
    inc e                                         ; $562b: $1c
    or $df                                        ; $562c: $f6 $df
    inc de                                        ; $562e: $13
    push hl                                       ; $562f: $e5
    adc a                                         ; $5630: $8f
    ld [hl], h                                    ; $5631: $74
    inc a                                         ; $5632: $3c
    inc d                                         ; $5633: $14
    nop                                           ; $5634: $00
    ld a, h                                       ; $5635: $7c
    dec sp                                        ; $5636: $3b
    ld l, l                                       ; $5637: $6d
    dec d                                         ; $5638: $15
    and l                                         ; $5639: $a5
    ld a, e                                       ; $563a: $7b
    call z, $da17                                 ; $563b: $cc $17 $da
    xor a                                         ; $563e: $af
    xor l                                         ; $563f: $ad
    db $fc                                        ; $5640: $fc
    sub c                                         ; $5641: $91
    adc [hl]                                      ; $5642: $8e
    add a                                         ; $5643: $87
    ld [bc], a                                    ; $5644: $02
    db $fc                                        ; $5645: $fc
    dec de                                        ; $5646: $1b
    db $10                                        ; $5647: $10
    ld [$95c9], a                                 ; $5648: $ea $c9 $95
    call nc, $66bd                                ; $564b: $d4 $bd $66
    inc h                                         ; $564e: $24
    ld c, a                                       ; $564f: $4f
    ld sp, $719d                                  ; $5650: $31 $9d $71
    halt                                          ; $5653: $76
    ld c, [hl]                                    ; $5654: $4e
    inc d                                         ; $5655: $14
    ld d, $14                                     ; $5656: $16 $14
    nop                                           ; $5658: $00
    sbc h                                         ; $5659: $9c
    rst $18                                       ; $565a: $df
    and e                                         ; $565b: $a3
    call nc, Call_05a_4d1b                        ; $565c: $d4 $1b $4d
    scf                                           ; $565f: $37
    ld d, c                                       ; $5660: $51
    ld e, l                                       ; $5661: $5d
    ld [c], a                                     ; $5662: $e2
    jr c, jr_05a_56b6                             ; $5663: $38 $51

    xor d                                         ; $5665: $aa
    cp l                                          ; $5666: $bd
    or a                                          ; $5667: $b7
    sbc e                                         ; $5668: $9b
    or [hl]                                       ; $5669: $b6
    db $e4                                        ; $566a: $e4
    add hl, hl                                    ; $566b: $29
    and [hl]                                      ; $566c: $a6
    inc sp                                        ; $566d: $33
    adc $4e                                       ; $566e: $ce $4e
    inc l                                         ; $5670: $2c
    push hl                                       ; $5671: $e5
    rst $08                                       ; $5672: $cf
    ld a, d                                       ; $5673: $7a
    pop hl                                        ; $5674: $e1
    cp a                                          ; $5675: $bf
    nop                                           ; $5676: $00
    cp h                                          ; $5677: $bc
    ld h, e                                       ; $5678: $63
    ld l, e                                       ; $5679: $6b
    cp [hl]                                       ; $567a: $be
    ld a, h                                       ; $567b: $7c
    ld [hl+], a                                   ; $567c: $22
    adc e                                         ; $567d: $8b
    sub d                                         ; $567e: $92
    xor l                                         ; $567f: $ad
    ld de, $1415                                  ; $5680: $11 $15 $14
    nop                                           ; $5683: $00
    cp h                                          ; $5684: $bc
    pop bc                                        ; $5685: $c1
    ld a, [de]                                    ; $5686: $1a
    rst $28                                       ; $5687: $ef
    ccf                                           ; $5688: $3f
    rst $20                                       ; $5689: $e7
    ld [hl], l                                    ; $568a: $75
    ld l, a                                       ; $568b: $6f
    adc l                                         ; $568c: $8d
    ld [hl], e                                    ; $568d: $73
    ld b, d                                       ; $568e: $42
    or $e7                                        ; $568f: $f6 $e7
    rst $10                                       ; $5691: $d7
    and d                                         ; $5692: $a2
    call nc, Call_05a_6aa3                        ; $5693: $d4 $a3 $6a
    sbc b                                         ; $5696: $98
    ld a, l                                       ; $5697: $7d
    ld a, l                                       ; $5698: $7d
    ld e, l                                       ; $5699: $5d
    nop                                           ; $569a: $00
    ld a, h                                       ; $569b: $7c
    and e                                         ; $569c: $a3
    ei                                            ; $569d: $fb
    ld [hl], l                                    ; $569e: $75
    rst $28                                       ; $569f: $ef
    inc h                                         ; $56a0: $24
    ld e, c                                       ; $56a1: $59
    ret z                                         ; $56a2: $c8

    cp $fc                                        ; $56a3: $fe $fc
    ld d, [hl]                                    ; $56a5: $56
    sub h                                         ; $56a6: $94
    ld a, d                                       ; $56a7: $7a
    ld d, h                                       ; $56a8: $54
    dec c                                         ; $56a9: $0d
    or e                                          ; $56aa: $b3
    xor a                                         ; $56ab: $af
    rla                                           ; $56ac: $17
    add a                                         ; $56ad: $87
    inc bc                                        ; $56ae: $03
    jr z, jr_05a_56b1                             ; $56af: $28 $00

jr_05a_56b1:
    inc a                                         ; $56b1: $3c
    jp $91b7                                      ; $56b2: $c3 $b7 $91


    inc d                                         ; $56b5: $14

jr_05a_56b6:
    adc h                                         ; $56b6: $8c
    and [hl]                                      ; $56b7: $a6
    add hl, de                                    ; $56b8: $19
    xor h                                         ; $56b9: $ac
    ld [hl], c                                    ; $56ba: $71
    ld l, l                                       ; $56bb: $6d
    ld c, e                                       ; $56bc: $4b
    or l                                          ; $56bd: $b5
    ld e, e                                       ; $56be: $5b
    adc d                                         ; $56bf: $8a
    push de                                       ; $56c0: $d5
    db $fc                                        ; $56c1: $fc
    sub l                                         ; $56c2: $95
    add l                                         ; $56c3: $85
    ld l, h                                       ; $56c4: $6c
    cp e                                          ; $56c5: $bb
    and e                                         ; $56c6: $a3
    add h                                         ; $56c7: $84
    ld h, a                                       ; $56c8: $67
    ld l, l                                       ; $56c9: $6d
    ld h, l                                       ; $56ca: $65
    ld a, a                                       ; $56cb: $7f
    ld a, [hl]                                    ; $56cc: $7e
    dec hl                                        ; $56cd: $2b
    ld [$e712], a                                 ; $56ce: $ea $12 $e7
    sub $28                                       ; $56d1: $d6 $28

jr_05a_56d3:
    dec [hl]                                      ; $56d3: $35
    ld h, l                                       ; $56d4: $65
    sbc l                                         ; $56d5: $9d
    ld h, l                                       ; $56d6: $65
    or d                                          ; $56d7: $b2
    jr c, jr_05a_56d3                             ; $56d8: $38 $f9

    halt                                          ; $56da: $76
    inc de                                        ; $56db: $13
    ret                                           ; $56dc: $c9


    ld b, d                                       ; $56dd: $42
    ld a, b                                       ; $56de: $78
    ld l, a                                       ; $56df: $6f
    xor c                                         ; $56e0: $a9
    ld h, d                                       ; $56e1: $62
    db $e4                                        ; $56e2: $e4
    cp b                                          ; $56e3: $b8
    ld [hl], l                                    ; $56e4: $75
    ld bc, $1bfc                                  ; $56e5: $01 $fc $1b
    db $10                                        ; $56e8: $10
    ld [$25c9], a                                 ; $56e9: $ea $c9 $25
    db $db                                        ; $56ec: $db
    ld [hl+], a                                   ; $56ed: $22
    push af                                       ; $56ee: $f5
    xor b                                         ; $56ef: $a8
    ld a, [de]                                    ; $56f0: $1a
    ld h, [hl]                                    ; $56f1: $66
    ld e, a                                       ; $56f2: $5f

jr_05a_56f3:
    ld e, a                                       ; $56f3: $5f
    ld a, [c]                                     ; $56f4: $f2
    inc d                                         ; $56f5: $14
    db $d3                                        ; $56f6: $d3
    add hl, de                                    ; $56f7: $19
    ld h, a                                       ; $56f8: $67
    rst $20                                       ; $56f9: $e7
    ld b, h                                       ; $56fa: $44
    inc l                                         ; $56fb: $2c
    jr z, jr_05a_56fe                             ; $56fc: $28 $00

jr_05a_56fe:
    cp h                                          ; $56fe: $bc
    sbc c                                         ; $56ff: $99
    ld h, l                                       ; $5700: $65
    add d                                         ; $5701: $82
    pop af                                        ; $5702: $f1
    db $f4                                        ; $5703: $f4
    ld l, a                                       ; $5704: $6f
    adc c                                         ; $5705: $89
    ld h, c                                       ; $5706: $61
    ld a, [hl-]                                   ; $5707: $3a
    db $e3                                        ; $5708: $e3
    db $ec                                        ; $5709: $ec
    call nz, Call_05a_7fd3                        ; $570a: $c4 $d3 $7f
    ld bc, $a5d0                                  ; $570d: $01 $d0 $a5
    sbc $80                                       ; $5710: $de $80
    sub b                                         ; $5712: $90
    ld [bc], a                                    ; $5713: $02
    ld [de], a                                    ; $5714: $12
    ld h, $bc                                     ; $5715: $26 $bc
    rst $38                                       ; $5717: $ff
    push de                                       ; $5718: $d5

Call_05a_5719:
    and e                                         ; $5719: $a3
    ld l, d                                       ; $571a: $6a
    ret c                                         ; $571b: $d8

    rst $10                                       ; $571c: $d7
    ld a, a                                       ; $571d: $7f
    db $ed                                        ; $571e: $ed
    dec b                                         ; $571f: $05
    nop                                           ; $5720: $00
    db $fc                                        ; $5721: $fc
    dec de                                        ; $5722: $1b
    db $10                                        ; $5723: $10
    ld [$25c9], a                                 ; $5724: $ea $c9 $25
    db $db                                        ; $5727: $db
    and d                                         ; $5728: $a2
    and h                                         ; $5729: $a4
    xor $3d                                       ; $572a: $ee $3d
    add a                                         ; $572c: $87
    call nc, Call_05a_6aa3                        ; $572d: $d4 $a3 $6a
    sbc b                                         ; $5730: $98
    ld a, l                                       ; $5731: $7d
    db $fd                                        ; $5732: $fd
    add hl, sp                                    ; $5733: $39
    cpl                                           ; $5734: $2f
    sbc a                                         ; $5735: $9f
    ret z                                         ; $5736: $c8

    ld [hl+], a                                   ; $5737: $22
    db $e4                                        ; $5738: $e4
    add hl, hl                                    ; $5739: $29
    and [hl]                                      ; $573a: $a6
    inc sp                                        ; $573b: $33
    adc $ce                                       ; $573c: $ce $ce
    adc c                                         ; $573e: $89
    ld e, b                                       ; $573f: $58
    ld d, b                                       ; $5740: $50
    nop                                           ; $5741: $00
    ret nc                                        ; $5742: $d0

    push hl                                       ; $5743: $e5
    sub e                                         ; $5744: $93
    ldh a, [$ac]                                  ; $5745: $f0 $ac
    xor l                                         ; $5747: $ad
    ld d, d                                       ; $5748: $52
    ld [hl+], a                                   ; $5749: $22
    rst $18                                       ; $574a: $df
    rst $20                                       ; $574b: $e7
    jp c, $d28a                                   ; $574c: $da $8a $d2

    call nz, Call_000_39de                        ; $574f: $c4 $de $39
    xor $7b                                       ; $5752: $ee $7b
    ld a, e                                       ; $5754: $7b
    ld e, b                                       ; $5755: $58
    ld d, d                                       ; $5756: $52
    jr nc, jr_05a_56f3                            ; $5757: $30 $9a

    and d                                         ; $5759: $a2
    call nc, Call_05a_4d1b                        ; $575a: $d4 $1b $4d
    ld l, e                                       ; $575d: $6b
    rrc l                                         ; $575e: $cb $0d
    nop                                           ; $5760: $00
    ld a, h                                       ; $5761: $7c
    dec sp                                        ; $5762: $3b
    ld c, c                                       ; $5763: $49
    ld d, $c2                                     ; $5764: $16 $c2
    add d                                         ; $5766: $82
    ld [bc], a                                    ; $5767: $02
    ret nc                                        ; $5768: $d0

    ld h, l                                       ; $5769: $65
    ld e, e                                       ; $576a: $5b
    rst $10                                       ; $576b: $d7
    ld [hl], l                                    ; $576c: $75
    add hl, hl                                    ; $576d: $29
    jp nc, $3e49                                  ; $576e: $d2 $49 $3e

    add hl, hl                                    ; $5771: $29
    rst $00                                       ; $5772: $c7
    or l                                          ; $5773: $b5
    ld l, l                                       ; $5774: $6d
    ld [hl], l                                    ; $5775: $75
    and h                                         ; $5776: $a4
    db $10                                        ; $5777: $10
    jp nc, Jump_000_35bd                          ; $5778: $d2 $bd $35

    adc $09                                       ; $577b: $ce $09
    ld sp, hl                                     ; $577d: $f9
    dec de                                        ; $577e: $1b
    dec d                                         ; $577f: $15
    dec h                                         ; $5780: $25
    rst $38                                       ; $5781: $ff
    ld c, a                                       ; $5782: $4f
    ld e, $67                                     ; $5783: $1e $67
    ld c, h                                       ; $5785: $4c
    adc e                                         ; $5786: $8b
    cp d                                          ; $5787: $ba
    xor [hl]                                      ; $5788: $ae
    dec bc                                        ; $5789: $0b
    nop                                           ; $578a: $00
    ld a, h                                       ; $578b: $7c
    ld a, e                                       ; $578c: $7b
    adc $af                                       ; $578d: $ce $af
    ld b, l                                       ; $578f: $45
    ret                                           ; $5790: $c9


    rst $38                                       ; $5791: $ff
    sub e                                         ; $5792: $93
    rst $00                                       ; $5793: $c7
    add hl, de                                    ; $5794: $19
    db $d3                                        ; $5795: $d3
    and d                                         ; $5796: $a2
    and b                                         ; $5797: $a0
    nop                                           ; $5798: $00
    ld c, $68                                     ; $5799: $0e $68
    call $9348                                    ; $579b: $cd $48 $93
    or d                                          ; $579e: $b2
    and [hl]                                      ; $579f: $a6
    ld a, h                                       ; $57a0: $7c
    call $7948                                    ; $57a1: $cd $48 $79
    inc [hl]                                      ; $57a4: $34
    sub c                                         ; $57a5: $91
    ld a, [hl]                                    ; $57a6: $7e
    rst $20                                       ; $57a7: $e7
    db $eb                                        ; $57a8: $eb
    db $fc                                        ; $57a9: $fc
    sbc [hl]                                      ; $57aa: $9e
    di                                            ; $57ab: $f3
    rst $10                                       ; $57ac: $d7
    ld [hl], l                                    ; $57ad: $75
    ret                                           ; $57ae: $c9


    daa                                           ; $57af: $27
    ld d, d                                       ; $57b0: $52
    rrca                                          ; $57b1: $0f
    rst $18                                       ; $57b2: $df
    rst $38                                       ; $57b3: $ff
    ld d, a                                       ; $57b4: $57
    ld a, [de]                                    ; $57b5: $1a
    ld a, e                                       ; $57b6: $7b
    add $fd                                       ; $57b7: $c6 $fd
    ld e, a                                       ; $57b9: $5f
    cp d                                          ; $57ba: $ba
    or a                                          ; $57bb: $b7
    ld a, [hl+]                                   ; $57bc: $2a
    ld h, h                                       ; $57bd: $64
    rst $18                                       ; $57be: $df
    dec a                                         ; $57bf: $3d
    add $05                                       ; $57c0: $c6 $05
    nop                                           ; $57c2: $00
    ret nc                                        ; $57c3: $d0

    jp hl                                         ; $57c4: $e9


    inc h                                         ; $57c5: $24
    reti                                          ; $57c6: $d9


    sub $38                                       ; $57c7: $d6 $38
    rst $20                                       ; $57c9: $e7
    add l                                         ; $57ca: $85
    ld h, a                                       ; $57cb: $67
    ld l, l                                       ; $57cc: $6d
    dec b                                         ; $57cd: $05
    ld h, e                                       ; $57ce: $63
    rst $38                                       ; $57cf: $ff
    ld d, [hl]                                    ; $57d0: $56
    ld d, d                                       ; $57d1: $52
    rst $30                                       ; $57d2: $f7
    sbc [hl]                                      ; $57d3: $9e
    ld b, e                                       ; $57d4: $43
    or d                                          ; $57d5: $b2
    sub b                                         ; $57d6: $90
    sbc a                                         ; $57d7: $9f
    ld e, c                                       ; $57d8: $59
    or [hl]                                       ; $57d9: $b6
    or [hl]                                       ; $57da: $b6
    ld a, [c]                                     ; $57db: $f2
    sbc a                                         ; $57dc: $9f
    push bc                                       ; $57dd: $c5
    ld a, l                                       ; $57de: $7d
    ld l, a                                       ; $57df: $6f
    ret                                           ; $57e0: $c9


    rst $38                                       ; $57e1: $ff
    sbc l                                         ; $57e2: $9d
    ld a, a                                       ; $57e3: $7f
    adc $7f                                       ; $57e4: $ce $7f
    ld e, l                                       ; $57e6: $5d
    nop                                           ; $57e7: $00
    ld a, h                                       ; $57e8: $7c
    db $db                                        ; $57e9: $db
    and h                                         ; $57ea: $a4
    or b                                          ; $57eb: $b0
    cp l                                          ; $57ec: $bd
    add e                                         ; $57ed: $83
    call $b69d                                    ; $57ee: $cd $9d $b6
    ld d, b                                       ; $57f1: $50
    nop                                           ; $57f2: $00
    sbc [hl]                                      ; $57f3: $9e
    ld a, a                                       ; $57f4: $7f
    and l                                         ; $57f5: $a5
    xor a                                         ; $57f6: $af
    adc c                                         ; $57f7: $89
    db $e3                                        ; $57f8: $e3
    inc c                                         ; $57f9: $0c
    jp $2f73                                      ; $57fa: $c3 $73 $2f


    ld a, [hl+]                                   ; $57fd: $2a
    rst $00                                       ; $57fe: $c7
    or l                                          ; $57ff: $b5
    dec d                                         ; $5800: $15
    sbc [hl]                                      ; $5801: $9e
    di                                            ; $5802: $f3
    ld a, [$2f9d]                                 ; $5803: $fa $9d $2f
    rst $38                                       ; $5806: $ff
    call $ece2                                    ; $5807: $cd $e2 $ec
    dec b                                         ; $580a: $05
    nop                                           ; $580b: $00
    ld a, h                                       ; $580c: $7c
    ld e, e                                       ; $580d: $5b
    db $e3                                        ; $580e: $e3
    sbc h                                         ; $580f: $9c
    rla                                           ; $5810: $17
    sub [hl]                                      ; $5811: $96
    inc l                                         ; $5812: $2c
    adc $f9                                       ; $5813: $ce $f9
    xor l                                         ; $5815: $ad
    jr z, jr_05a_5886                             ; $5816: $28 $6e

    nop                                           ; $5818: $00
    ld e, $e3                                     ; $5819: $1e $e3
    ld e, d                                       ; $581b: $5a
    ld a, a                                       ; $581c: $7f
    cp $cf                                        ; $581d: $fe $cf
    dec l                                         ; $581f: $2d

jr_05a_5820:
    adc a                                         ; $5820: $8f
    jr nc, jr_05a_5820                            ; $5821: $30 $fd

    sub d                                         ; $5823: $92
    sbc a                                         ; $5824: $9f
    ld e, c                                       ; $5825: $59
    sub [hl]                                      ; $5826: $96
    ret                                           ; $5827: $c9


    rst $00                                       ; $5828: $c7
    ld [hl], e                                    ; $5829: $73
    ld e, [hl]                                    ; $582a: $5e
    ld a, [hl]                                    ; $582b: $7e
    ld h, [hl]                                    ; $582c: $66
    sbc l                                         ; $582d: $9d
    sbc c                                         ; $582e: $99
    ld de, $f8b7                                  ; $582f: $11 $b7 $f8
    ld b, a                                       ; $5832: $47
    push de                                       ; $5833: $d5
    jr nc, @-$03                                  ; $5834: $30 $fb

    ld a, d                                       ; $5836: $7a
    ld h, c                                       ; $5837: $61
    ret                                           ; $5838: $c9


    adc c                                         ; $5839: $89
    dec sp                                        ; $583a: $3b
    ld l, d                                       ; $583b: $6a
    ld [hl], d                                    ; $583c: $72
    and l                                         ; $583d: $a5
    ld e, h                                       ; $583e: $5c
    and l                                         ; $583f: $a5
    ld [hl], h                                    ; $5840: $74
    reti                                          ; $5841: $d9


    dec a                                         ; $5842: $3d
    xor h                                         ; $5843: $ac
    add a                                         ; $5844: $87
    add hl, sp                                    ; $5845: $39
    ld [hl], c                                    ; $5846: $71
    ret                                           ; $5847: $c9


Call_05a_5848:
    ld bc, $6ccd                                  ; $5848: $01 $cd $6c
    rst $08                                       ; $584b: $cf
    ld hl, $6e2a                                  ; $584c: $21 $2a $6e
    nop                                           ; $584f: $00
    ld a, h                                       ; $5850: $7c
    ld l, e                                       ; $5851: $6b
    ld c, l                                       ; $5852: $4d

jr_05a_5853:
    cp d                                          ; $5853: $ba
    or a                                          ; $5854: $b7
    ld c, b                                       ; $5855: $48
    add a                                         ; $5856: $87
    dec hl                                        ; $5857: $2b
    ld l, e                                       ; $5858: $6b
    ld e, d                                       ; $5859: $5a
    db $db                                        ; $585a: $db
    sub d                                         ; $585b: $92
    pop hl                                        ; $585c: $e1
    cp c                                          ; $585d: $b9

Call_05a_585e:
    rla                                           ; $585e: $17
    dec bc                                        ; $585f: $0b
    ld a, [bc]                                    ; $5860: $0a
    nop                                           ; $5861: $00
    db $fc                                        ; $5862: $fc
    cp a                                          ; $5863: $bf
    or [hl]                                       ; $5864: $b6
    and l                                         ; $5865: $a5
    and d                                         ; $5866: $a2
    inc d                                         ; $5867: $14
    ld b, d                                       ; $5868: $42
    or d                                          ; $5869: $b2
    jr c, jr_05a_5853                             ; $586a: $38 $e7

    rst $10                                       ; $586c: $d7
    and d                                         ; $586d: $a2
    inc d                                         ; $586e: $14
    dec e                                         ; $586f: $1d
    ld l, e                                       ; $5870: $6b
    ccf                                           ; $5871: $3f
    adc $9b                                       ; $5872: $ce $9b
    db $fd                                        ; $5874: $fd
    dec b                                         ; $5875: $05
    nop                                           ; $5876: $00
    cp h                                          ; $5877: $bc
    sub h                                         ; $5878: $94
    ld c, l                                       ; $5879: $4d
    ld l, $35                                     ; $587a: $2e $35
    sbc l                                         ; $587c: $9d
    di                                            ; $587d: $f3
    ld e, e                                       ; $587e: $5b
    ld d, c                                       ; $587f: $51
    ld [hl-], a                                   ; $5880: $32
    inc a                                         ; $5881: $3c
    rst $30                                       ; $5882: $f7
    ld [hl+], a                                   ; $5883: $22
    inc d                                         ; $5884: $14
    nop                                           ; $5885: $00

jr_05a_5886:
    ret nc                                        ; $5886: $d0

    and l                                         ; $5887: $a5
    jp $3595                                      ; $5888: $c3 $95 $35


    ld d, l                                       ; $588b: $55
    sub $b2                                       ; $588c: $d6 $b2
    ld l, l                                       ; $588e: $6d
    jp nc, $d6bd                                  ; $588f: $d2 $bd $d6

    ld b, h                                       ; $5892: $44
    ld [hl], l                                    ; $5893: $75
    ld bc, $dfbc                                  ; $5894: $01 $bc $df
    add [hl]                                      ; $5897: $86
    db $db                                        ; $5898: $db
    inc de                                        ; $5899: $13
    dec b                                         ; $589a: $05
    and e                                         ; $589b: $a3
    and d                                         ; $589c: $a2
    ld h, e                                       ; $589d: $63
    db $ed                                        ; $589e: $ed
    rst $00                                       ; $589f: $c7
    ld a, c                                       ; $58a0: $79
    db $eb                                        ; $58a1: $eb
    add a                                         ; $58a2: $87
    sub d                                         ; $58a3: $92
    rst $00                                       ; $58a4: $c7
    ld h, e                                       ; $58a5: $63
    sbc h                                         ; $58a6: $9c
    xor b                                         ; $58a7: $a8
    and h                                         ; $58a8: $a4
    and d                                         ; $58a9: $a2
    sbc e                                         ; $58aa: $9b
    inc b                                         ; $58ab: $04
    db $e3                                        ; $58ac: $e3
    add hl, sp                                    ; $58ad: $39
    cp a                                          ; $58ae: $bf
    dec h                                         ; $58af: $25
    rst $38                                       ; $58b0: $ff
    db $db                                        ; $58b1: $db

jr_05a_58b2:
    cp $cf                                        ; $58b2: $fe $cf
    ld a, c                                       ; $58b4: $79
    pop hl                                        ; $58b5: $e1
    ld e, c                                       ; $58b6: $59
    call $e71f                                    ; $58b7: $cd $1f $e7
    call Call_05a_4bfe                            ; $58ba: $cd $fe $4b
    jr nc, @-$30                                  ; $58bd: $30 $ce

    dec l                                         ; $58bf: $2d
    add hl, de                                    ; $58c0: $19
    sbc [hl]                                      ; $58c1: $9e
    ld a, e                                       ; $58c2: $7b
    or c                                          ; $58c3: $b1
    ld d, h                                       ; $58c4: $54
    inc [hl]                                      ; $58c5: $34
    cp c                                          ; $58c6: $b9
    or [hl]                                       ; $58c7: $b6
    and d                                         ; $58c8: $a2
    ld l, $79                                     ; $58c9: $2e $79
    add h                                         ; $58cb: $84
    and [hl]                                      ; $58cc: $a6
    ld sp, hl                                     ; $58cd: $f9
    ld l, l                                       ; $58ce: $6d
    cp b                                          ; $58cf: $b8
    or [hl]                                       ; $58d0: $b6
    xor l                                         ; $58d1: $ad
    ld sp, $6120                                  ; $58d2: $31 $20 $61
    db $fd                                        ; $58d5: $fd
    ld e, a                                       ; $58d6: $5f
    rla                                           ; $58d7: $17
    nop                                           ; $58d8: $00
    ld a, h                                       ; $58d9: $7c
    dec sp                                        ; $58da: $3b
    ld c, c                                       ; $58db: $49
    sbc e                                         ; $58dc: $9b
    sbc $11                                       ; $58dd: $de $11
    dec h                                         ; $58df: $25
    rst $28                                       ; $58e0: $ef
    ld a, d                                       ; $58e1: $7a
    ld d, h                                       ; $58e2: $54
    dec c                                         ; $58e3: $0d
    or e                                          ; $58e4: $b3
    xor a                                         ; $58e5: $af
    ld [hl], a                                    ; $58e6: $77
    ld [bc], a                                    ; $58e7: $02
    ld a, [bc]                                    ; $58e8: $0a
    nop                                           ; $58e9: $00
    db $fc                                        ; $58ea: $fc
    dec de                                        ; $58eb: $1b
    db $10                                        ; $58ec: $10
    ld a, [hl+]                                   ; $58ed: $2a
    push hl                                       ; $58ee: $e5
    cp a                                          ; $58ef: $bf
    dec h                                         ; $58f0: $25
    cp h                                          ; $58f1: $bc
    cp a                                          ; $58f2: $bf
    call nc, $ffc3                                ; $58f3: $d4 $c3 $ff
    ld e, d                                       ; $58f6: $5a
    push af                                       ; $58f7: $f5
    xor b                                         ; $58f8: $a8
    ld a, [de]                                    ; $58f9: $1a

jr_05a_58fa:
    ld h, [hl]                                    ; $58fa: $66
    ld e, a                                       ; $58fb: $5f
    ld e, a                                       ; $58fc: $5f
    rla                                           ; $58fd: $17
    nop                                           ; $58fe: $00
    sbc h                                         ; $58ff: $9c
    ret z                                         ; $5900: $c8

    ld [hl], $a9                                  ; $5901: $36 $a9
    jr z, jr_05a_58fa                             ; $5903: $28 $f5

    ld b, $84                                     ; $5905: $06 $84
    ld l, $00                                     ; $5907: $2e $00
    ret nc                                        ; $5909: $d0

    dec h                                         ; $590a: $25
    or h                                          ; $590b: $b4
    ld a, a                                       ; $590c: $7f
    reti                                          ; $590d: $d9


    rla                                           ; $590e: $17
    cp $05                                        ; $590f: $fe $05
    nop                                           ; $5911: $00
    cp h                                          ; $5912: $bc
    jr c, @+$65                                   ; $5913: $38 $63

    ld c, a                                       ; $5915: $4f
    ret z                                         ; $5916: $c8

    cp e                                          ; $5917: $bb
    sbc l                                         ; $5918: $9d
    ld h, e                                       ; $5919: $63
    xor l                                         ; $591a: $ad
    ld e, a                                       ; $591b: $5f
    add hl, hl                                    ; $591c: $29
    push hl                                       ; $591d: $e5
    ld c, e                                       ; $591e: $4b
    jr nc, jr_05a_58b2                            ; $591f: $30 $91

    inc de                                        ; $5921: $13
    sub a                                         ; $5922: $97
    jr c, jr_05a_5968                             ; $5923: $38 $43

    add [hl]                                      ; $5925: $86
    cp $da                                        ; $5926: $fe $da
    ld a, [hl+]                                   ; $5928: $2a
    call $adf2                                    ; $5929: $cd $f2 $ad
    dec bc                                        ; $592c: $0b
    nop                                           ; $592d: $00
    ret nc                                        ; $592e: $d0

    xor e                                         ; $592f: $ab
    ld a, e                                       ; $5930: $7b
    sbc e                                         ; $5931: $9b
    xor b                                         ; $5932: $a8
    sub h                                         ; $5933: $94
    ld a, $3c                                     ; $5934: $3e $3c
    cp $02                                        ; $5936: $fe $02
    inc a                                         ; $5938: $3c
    or c                                          ; $5939: $b1
    ld [$bb7f], a                                 ; $593a: $ea $7f $bb
    nop                                           ; $593d: $00
    ld a, h                                       ; $593e: $7c
    ld d, c                                       ; $593f: $51
    sub e                                         ; $5940: $93
    dec hl                                        ; $5941: $2b
    push hl                                       ; $5942: $e5
    ld a, [hl+]                                   ; $5943: $2a
    and l                                         ; $5944: $a5
    set 5, [hl]                                   ; $5945: $cb $ee
    ld h, c                                       ; $5947: $61
    dec a                                         ; $5948: $3d
    adc h                                         ; $5949: $8c
    dec de                                        ; $594a: $1b
    nop                                           ; $594b: $00
    db $fc                                        ; $594c: $fc
    pop bc                                        ; $594d: $c1
    ld a, [c]                                     ; $594e: $f2
    add sp, $71                                   ; $594f: $e8 $71
    ldh a, [$e5]                                  ; $5951: $f0 $e5
    add hl, hl                                    ; $5953: $29
    and [hl]                                      ; $5954: $a6
    inc sp                                        ; $5955: $33
    adc $ce                                       ; $5956: $ce $ce
    adc c                                         ; $5958: $89
    ld e, b                                       ; $5959: $58
    ld c, c                                       ; $595a: $49
    call $fa71                                    ; $595b: $cd $71 $fa
    dec l                                         ; $595e: $2d
    ld l, d                                       ; $595f: $6a
    cpl                                           ; $5960: $2f
    ld [hl], c                                    ; $5961: $71
    xor [hl]                                      ; $5962: $ae
    ld de, $f295                                  ; $5963: $11 $95 $f2
    rst $38                                       ; $5966: $ff
    cp d                                          ; $5967: $ba

jr_05a_5968:
    nop                                           ; $5968: $00
    inc a                                         ; $5969: $3c
    or c                                          ; $596a: $b1
    rla                                           ; $596b: $17
    nop                                           ; $596c: $00
    db $fc                                        ; $596d: $fc
    pop bc                                        ; $596e: $c1
    ld a, [c]                                     ; $596f: $f2
    add sp, $71                                   ; $5970: $e8 $71
    ldh a, [$e5]                                  ; $5972: $f0 $e5
    add hl, hl                                    ; $5974: $29
    and [hl]                                      ; $5975: $a6
    inc sp                                        ; $5976: $33
    adc $4e                                       ; $5977: $ce $4e
    inc l                                         ; $5979: $2c
    push af                                       ; $597a: $f5
    ldh a, [rIE]                                  ; $597b: $f0 $ff
    db $eb                                        ; $597d: $eb
    sub d                                         ; $597e: $92
    jp Jump_05a_7160                              ; $597f: $c3 $60 $71


    rst $18                                       ; $5982: $df
    ld [hl], h                                    ; $5983: $74
    ld c, [hl]                                    ; $5984: $4e
    inc h                                         ; $5985: $24
    dec [hl]                                      ; $5986: $35
    rst $00                                       ; $5987: $c7
    jp hl                                         ; $5988: $e9


    or a                                          ; $5989: $b7
    xor b                                         ; $598a: $a8
    cp l                                          ; $598b: $bd
    nop                                           ; $598c: $00
    adc [hl]                                      ; $598d: $8e
    dec e                                         ; $598e: $1d
    sbc d                                         ; $598f: $9a
    and h                                         ; $5990: $a4
    ld d, c                                       ; $5991: $51
    sbc b                                         ; $5992: $98
    ld b, d                                       ; $5993: $42
    sbc [hl]                                      ; $5994: $9e
    ld e, e                                       ; $5995: $5b
    ld [c], a                                     ; $5996: $e2
    rra                                           ; $5997: $1f
    ld d, l                                       ; $5998: $55
    jp $ebec                                      ; $5999: $c3 $ec $eb


    add l                                         ; $599c: $85
    dec h                                         ; $599d: $25
    daa                                           ; $599e: $27
    xor $a8                                       ; $599f: $ee $a8
    ret                                           ; $59a1: $c9


    sub l                                         ; $59a2: $95
    ld [hl], d                                    ; $59a3: $72
    sub l                                         ; $59a4: $95
    jp nc, $f765                                  ; $59a5: $d2 $65 $f7

    or b                                          ; $59a8: $b0
    ld e, $e6                                     ; $59a9: $1e $e6
    call nz, Call_000_0005                        ; $59ab: $c4 $05 $00
    sbc h                                         ; $59ae: $9c
    ld l, e                                       ; $59af: $6b
    ld b, h                                       ; $59b0: $44
    and l                                         ; $59b1: $a5
    db $fc                                        ; $59b2: $fc
    or a                                          ; $59b3: $b7
    sub d                                         ; $59b4: $92
    sbc d                                         ; $59b5: $9a
    db $e3                                        ; $59b6: $e3
    db $f4                                        ; $59b7: $f4
    ld e, e                                       ; $59b8: $5b
    call nc, $005e                                ; $59b9: $d4 $5e $00
    db $fc                                        ; $59bc: $fc
    pop bc                                        ; $59bd: $c1
    ld a, [c]                                     ; $59be: $f2
    add sp, $71                                   ; $59bf: $e8 $71
    ldh a, [$e5]                                  ; $59c1: $f0 $e5
    add hl, hl                                    ; $59c3: $29
    and [hl]                                      ; $59c4: $a6
    inc sp                                        ; $59c5: $33
    adc $ce                                       ; $59c6: $ce $ce
    adc c                                         ; $59c8: $89
    ld e, b                                       ; $59c9: $58
    ld c, c                                       ; $59ca: $49
    pop af                                        ; $59cb: $f1
    inc a                                         ; $59cc: $3c
    ld h, e                                       ; $59cd: $63
    add hl, de                                    ; $59ce: $19
    or a                                          ; $59cf: $b7
    ld hl, sp+$47                                 ; $59d0: $f8 $47
    rrca                                          ; $59d2: $0f
    db $eb                                        ; $59d3: $eb
    and c                                         ; $59d4: $a1
    db $fc                                        ; $59d5: $fc
    or a                                          ; $59d6: $b7
    db $e4                                        ; $59d7: $e4
    rst $38                                       ; $59d8: $ff
    adc $89                                       ; $59d9: $ce $89
    sbc e                                         ; $59db: $9b
    ld l, [hl]                                    ; $59dc: $6e
    ld e, l                                       ; $59dd: $5d
    nop                                           ; $59de: $00
    inc a                                         ; $59df: $3c
    ld e, c                                       ; $59e0: $59
    ld c, [hl]                                    ; $59e1: $4e
    ld c, c                                       ; $59e2: $49
    ld b, l                                       ; $59e3: $45
    scf                                           ; $59e4: $37
    ret                                           ; $59e5: $c9


    daa                                           ; $59e6: $27
    or d                                          ; $59e7: $b2
    dec l                                         ; $59e8: $2d
    push hl                                       ; $59e9: $e5
    sbc e                                         ; $59ea: $9b
    ld b, d                                       ; $59eb: $42
    ld [hl], b                                    ; $59ec: $70
    ld c, e                                       ; $59ed: $4b
    ld c, l                                       ; $59ee: $4d
    ld d, l                                       ; $59ef: $55
    ld [hl], c                                    ; $59f0: $71
    ld bc, $5b7c                                  ; $59f1: $01 $7c $5b
    dec d                                         ; $59f4: $15
    or d                                          ; $59f5: $b2
    dec l                                         ; $59f6: $2d
    ld [de], a                                    ; $59f7: $12
    sbc [hl]                                      ; $59f8: $9e
    ld l, b                                       ; $59f9: $68
    db $dd                                        ; $59fa: $dd
    ld d, c                                       ; $59fb: $51
    ld l, b                                       ; $59fc: $68
    or $50                                        ; $59fd: $f6 $50
    ld [c], a                                     ; $59ff: $e2
    call c, $8738                                 ; $5a00: $dc $38 $87
    add h                                         ; $5a03: $84
    and l                                         ; $5a04: $a5
    adc $ba                                       ; $5a05: $ce $ba
    cp c                                          ; $5a07: $b9
    ldh [$28], a                                  ; $5a08: $e0 $28
    ld sp, hl                                     ; $5a0a: $f9
    inc bc                                        ; $5a0b: $03
    rst $08                                       ; $5a0c: $cf
    ld [hl], d                                    ; $5a0d: $72
    sla c                                         ; $5a0e: $cb $21
    jp nz, $fa7b                                  ; $5a10: $c2 $7b $fa

    push hl                                       ; $5a13: $e5
    inc de                                        ; $5a14: $13
    ld e, c                                       ; $5a15: $59
    ld h, $5e                                     ; $5a16: $26 $5e
    rrca                                          ; $5a18: $0f
    and c                                         ; $5a19: $a1
    dec a                                         ; $5a1a: $3d
    or $18                                        ; $5a1b: $f6 $18
    sbc d                                         ; $5a1d: $9a
    sbc a                                         ; $5a1e: $9f
    rst $18                                       ; $5a1f: $df
    dec hl                                        ; $5a20: $2b
    ld l, [hl]                                    ; $5a21: $6e
    nop                                           ; $5a22: $00
    cp h                                          ; $5a23: $bc
    rst $18                                       ; $5a24: $df
    add [hl]                                      ; $5a25: $86
    ld a, [$4fad]                                 ; $5a26: $fa $ad $4f
    ld [$26de], a                                 ; $5a29: $ea $de $26
    db $ed                                        ; $5a2c: $ed
    cp c                                          ; $5a2d: $b9
    ld [hl], c                                    ; $5a2e: $71
    ld a, e                                       ; $5a2f: $7b
    ld e, b                                       ; $5a30: $58
    rst $38                                       ; $5a31: $ff
    jr c, @-$1b                                   ; $5a32: $38 $e3

    sbc h                                         ; $5a34: $9c
    sub a                                         ; $5a35: $97
    ld a, l                                       ; $5a36: $7d
    ld h, c                                       ; $5a37: $61
    rst $38                                       ; $5a38: $ff
    rst $10                                       ; $5a39: $d7
    dec b                                         ; $5a3a: $05
    nop                                           ; $5a3b: $00
    sbc [hl]                                      ; $5a3c: $9e
    db $e3                                        ; $5a3d: $e3
    or [hl]                                       ; $5a3e: $b6
    ld h, b                                       ; $5a3f: $60
    inc e                                         ; $5a40: $1c
    dec a                                         ; $5a41: $3d
    ld e, [hl]                                    ; $5a42: $5e
    ld e, b                                       ; $5a43: $58
    add hl, bc                                    ; $5a44: $09
    push bc                                       ; $5a45: $c5
    cp c                                          ; $5a46: $b9
    ld [hl], a                                    ; $5a47: $77
    dec hl                                        ; $5a48: $2b
    add hl, hl                                    ; $5a49: $29
    jr @+$4f                                      ; $5a4a: $18 $4d

    add a                                         ; $5a4c: $87
    ld d, d                                       ; $5a4d: $52
    ld c, b                                       ; $5a4e: $48
    or h                                          ; $5a4f: $b4
    inc a                                         ; $5a50: $3c
    push bc                                       ; $5a51: $c5
    ld [hl], h                                    ; $5a52: $74
    add $d9                                       ; $5a53: $c6 $d9
    adc c                                         ; $5a55: $89
    sub $af                                       ; $5a56: $d6 $af
    adc h                                         ; $5a58: $8c
    db $eb                                        ; $5a59: $eb
    ld [hl], a                                    ; $5a5a: $77
    cp $d7                                        ; $5a5b: $fe $d7
    ld [hl], l                                    ; $5a5d: $75
    ld e, l                                       ; $5a5e: $5d
    cp d                                          ; $5a5f: $ba
    ld b, a                                       ; $5a60: $47
    rst $30                                       ; $5a61: $f7
    dec hl                                        ; $5a62: $2b
    rst $38                                       ; $5a63: $ff
    dec l                                         ; $5a64: $2d
    pop bc                                        ; $5a65: $c1
    ld l, b                                       ; $5a66: $68
    add d                                         ; $5a67: $82
    adc c                                         ; $5a68: $89
    ld e, d                                       ; $5a69: $5a
    ld [hl], e                                    ; $5a6a: $73
    or a                                          ; $5a6b: $b7
    ld l, d                                       ; $5a6c: $6a
    cpl                                           ; $5a6d: $2f
    nop                                           ; $5a6e: $00
    db $fc                                        ; $5a6f: $fc
    cp b                                          ; $5a70: $b8
    add hl, sp                                    ; $5a71: $39
    halt                                          ; $5a72: $76
    ld a, a                                       ; $5a73: $7f
    cp $d6                                        ; $5a74: $fe $d6
    xor e                                         ; $5a76: $ab
    inc e                                         ; $5a77: $1c
    or a                                          ; $5a78: $b7
    rst $38                                       ; $5a79: $ff
    cp [hl]                                       ; $5a7a: $be
    ld b, e                                       ; $5a7b: $43
    ld c, l                                       ; $5a7c: $4d
    ld b, l                                       ; $5a7d: $45
    jp z, Jump_05a_5607                           ; $5a7e: $ca $07 $56

    cp l                                          ; $5a81: $bd
    ld a, d                                       ; $5a82: $7a
    ld hl, sp-$11                                 ; $5a83: $f8 $ef
    db $e3                                        ; $5a85: $e3
    db $fc                                        ; $5a86: $fc
    ccf                                           ; $5a87: $3f
    ld e, e                                       ; $5a88: $5b
    sub a                                         ; $5a89: $97
    inc a                                         ; $5a8a: $3c
    ld e, $9b                                     ; $5a8b: $1e $9b
    adc [hl]                                      ; $5a8d: $8e
    xor l                                         ; $5a8e: $ad
    jr z, jr_05a_5af2                             ; $5a8f: $28 $61

    add hl, hl                                    ; $5a91: $29
    rst $00                                       ; $5a92: $c7
    db $ed                                        ; $5a93: $ed
    cp $1a                                        ; $5a94: $fe $1a
    dec l                                         ; $5a96: $2d
    adc e                                         ; $5a97: $8b
    jp nc, $a31c                                  ; $5a98: $d2 $1c $a3

    and e                                         ; $5a9b: $a3
    ld e, [hl]                                    ; $5a9c: $5e
    ld sp, hl                                     ; $5a9d: $f9
    ret nz                                        ; $5a9e: $c0

    adc [hl]                                      ; $5a9f: $8e
    ld a, d                                       ; $5aa0: $7a
    ld sp, hl                                     ; $5aa1: $f9
    and e                                         ; $5aa2: $a3
    ld h, a                                       ; $5aa3: $67
    ld b, h                                       ; $5aa4: $44
    ld [hl], c                                    ; $5aa5: $71
    inc bc                                        ; $5aa6: $03
    db $fc                                        ; $5aa7: $fc
    jp $28df                                      ; $5aa8: $c3 $df $28


    ld sp, hl                                     ; $5aab: $f9
    ld l, e                                       ; $5aac: $6b
    dec e                                         ; $5aad: $1d
    cp l                                          ; $5aae: $bd
    rst $20                                       ; $5aaf: $e7
    xor e                                         ; $5ab0: $ab
    ld b, d                                       ; $5ab1: $42
    ld b, l                                       ; $5ab2: $45
    inc sp                                        ; $5ab3: $33
    rl h                                          ; $5ab4: $cb $14
    dec e                                         ; $5ab6: $1d
    ld l, e                                       ; $5ab7: $6b
    ccf                                           ; $5ab8: $3f
    adc $97                                       ; $5ab9: $ce $97
    ld a, d                                       ; $5abb: $7a
    rst $30                                       ; $5abc: $f7
    cp $f3                                        ; $5abd: $fe $f3
    ld d, $6b                                     ; $5abf: $16 $6b
    db $fd                                        ; $5ac1: $fd
    rla                                           ; $5ac2: $17
    nop                                           ; $5ac3: $00
    inc e                                         ; $5ac4: $1c
    ld a, [hl]                                    ; $5ac5: $7e
    ld [hl], h                                    ; $5ac6: $74
    ccf                                           ; $5ac7: $3f
    cp h                                          ; $5ac8: $bc
    ld d, c                                       ; $5ac9: $51

Jump_05a_5aca:
    jp nz, $3613                                  ; $5aca: $c2 $13 $36

    db $e3                                        ; $5acd: $e3
    adc h                                         ; $5ace: $8c
    ld [hl], h                                    ; $5acf: $74
    ld h, b                                       ; $5ad0: $60
    ld b, l                                       ; $5ad1: $45
    sbc b                                         ; $5ad2: $98
    cp l                                          ; $5ad3: $bd
    or b                                          ; $5ad4: $b0
    inc [hl]                                      ; $5ad5: $34
    rst $00                                       ; $5ad6: $c7
    jr c, jr_05a_5b4a                             ; $5ad7: $38 $71

    rst $18                                       ; $5ad9: $df
    xor a                                         ; $5ada: $af
    di                                            ; $5adb: $f3
    rst $18                                       ; $5adc: $df
    dec sp                                        ; $5add: $3b
    daa                                           ; $5ade: $27
    xor d                                         ; $5adf: $aa
    add hl, hl                                    ; $5ae0: $29
    xor e                                         ; $5ae1: $ab
    ld [hl+], a                                   ; $5ae2: $22
    push af                                       ; $5ae3: $f5
    rst $08                                       ; $5ae4: $cf
    rst $08                                       ; $5ae5: $cf
    sbc a                                         ; $5ae6: $9f
    db $ed                                        ; $5ae7: $ed
    call nz, $01ed                                ; $5ae8: $c4 $ed $01
    cp a                                          ; $5aeb: $bf
    ld a, [$67f3]                                 ; $5aec: $fa $f3 $67
    cp b                                          ; $5aef: $b8
    db $fd                                        ; $5af0: $fd
    sub a                                         ; $5af1: $97

jr_05a_5af2:
    inc a                                         ; $5af2: $3c
    ld a, a                                       ; $5af3: $7f
    halt                                          ; $5af4: $76
    rst $38                                       ; $5af5: $ff
    sub a                                         ; $5af6: $97
    and $ef                                       ; $5af7: $e6 $ef
    sbc h                                         ; $5af9: $9c
    pop af                                        ; $5afa: $f1
    or d                                          ; $5afb: $b2
    ld e, l                                       ; $5afc: $5d
    db $eb                                        ; $5afd: $eb
    and l                                         ; $5afe: $a5
    dec bc                                        ; $5aff: $0b
    nop                                           ; $5b00: $00
    ret nc                                        ; $5b01: $d0

    ld h, l                                       ; $5b02: $65
    ld a, e                                       ; $5b03: $7b
    rst $18                                       ; $5b04: $df
    or h                                          ; $5b05: $b4
    ld d, $45                                     ; $5b06: $16 $45
    cp d                                          ; $5b08: $ba
    ld h, e                                       ; $5b09: $63
    rst $08                                       ; $5b0a: $cf
    ld hl, $a961                                  ; $5b0b: $21 $61 $a9
    ld a, a                                       ; $5b0e: $7f
    rst $20                                       ; $5b0f: $e7
    jp $ef03                                      ; $5b10: $c3 $03 $ef


    rst $28                                       ; $5b13: $ef
    ld d, c                                       ; $5b14: $51
    cp l                                          ; $5b15: $bd
    ld c, c                                       ; $5b16: $49
    pop bc                                        ; $5b17: $c1
    ret c                                         ; $5b18: $d8

Call_05a_5b19:
    cpl                                           ; $5b19: $2f
    ld a, a                                       ; $5b1a: $7f
    sbc e                                         ; $5b1b: $9b

Jump_05a_5b1c:
    ld c, b                                       ; $5b1c: $48
    ld a, $c3                                     ; $5b1d: $3e $c3
    inc b                                         ; $5b1f: $04
    jp $d90c                                      ; $5b20: $c3 $0c $d9


    adc d                                         ; $5b23: $8a
    rst $30                                       ; $5b24: $f7
    rst $08                                       ; $5b25: $cf
    ld a, h                                       ; $5b26: $7c
    add [hl]                                      ; $5b27: $86
    halt                                          ; $5b28: $76
    ld e, l                                       ; $5b29: $5d
    sub a                                         ; $5b2a: $97
    ldh [$d7], a                                  ; $5b2b: $e0 $d7
    add hl, de                                    ; $5b2d: $19
    sbc e                                         ; $5b2e: $9b
    adc [hl]                                      ; $5b2f: $8e
    or l                                          ; $5b30: $b5
    add sp, -$47                                  ; $5b31: $e8 $b9
    dec h                                         ; $5b33: $25
    call z, $65bf                                 ; $5b34: $cc $bf $65
    dec de                                        ; $5b37: $1b
    rst $20                                       ; $5b38: $e7
    db $10                                        ; $5b39: $10
    scf                                           ; $5b3a: $37
    nop                                           ; $5b3b: $00
    ld a, h                                       ; $5b3c: $7c
    ccf                                           ; $5b3d: $3f
    ld h, e                                       ; $5b3e: $63
    ld l, l                                       ; $5b3f: $6d
    ld e, a                                       ; $5b40: $5f
    ld [hl], a                                    ; $5b41: $77
    sub [hl]                                      ; $5b42: $96
    dec [hl]                                      ; $5b43: $35
    push hl                                       ; $5b44: $e5
    ld d, h                                       ; $5b45: $54
    ld [hl], h                                    ; $5b46: $74
    adc c                                         ; $5b47: $89
    rla                                           ; $5b48: $17
    db $d3                                        ; $5b49: $d3

jr_05a_5b4a:
    ld e, $23                                     ; $5b4a: $1e $23
    db $dd                                        ; $5b4c: $dd
    ld [$baff], a                                 ; $5b4d: $ea $ff $ba
    db $e4                                        ; $5b50: $e4
    or $39                                        ; $5b51: $f6 $39
    ld sp, $c197                                  ; $5b53: $31 $97 $c1
    cp b                                          ; $5b56: $b8
    dec a                                         ; $5b57: $3d
    inc l                                         ; $5b58: $2c
    add hl, hl                                    ; $5b59: $29
    rst $30                                       ; $5b5a: $f7
    ld e, c                                       ; $5b5b: $59
    ld b, b                                       ; $5b5c: $40
    inc b                                         ; $5b5d: $04
    cp a                                          ; $5b5e: $bf
    inc a                                         ; $5b5f: $3c
    ld [$0964], sp                                ; $5b60: $08 $64 $09
    add l                                         ; $5b63: $85
    cp h                                          ; $5b64: $bc
    adc b                                         ; $5b65: $88
    or a                                          ; $5b66: $b7
    inc de                                        ; $5b67: $13
    add hl, de                                    ; $5b68: $19
    nop                                           ; $5b69: $00
    sbc [hl]                                      ; $5b6a: $9e
    ld a, a                                       ; $5b6b: $7f

Jump_05a_5b6c:
    jp c, $877b                                   ; $5b6c: $da $7b $87

    push af                                       ; $5b6f: $f5
    or e                                          ; $5b70: $b3
    sub l                                         ; $5b71: $95
    rst $20                                       ; $5b72: $e7
    ret z                                         ; $5b73: $c8

    ld d, b                                       ; $5b74: $50
    jp hl                                         ; $5b75: $e9


    sbc a                                         ; $5b76: $9f
    pop af                                        ; $5b77: $f1
    xor a                                         ; $5b78: $af
    ld a, e                                       ; $5b79: $7b
    xor h                                         ; $5b7a: $ac
    push af                                       ; $5b7b: $f5
    add sp, -$02                                  ; $5b7c: $e8 $fe
    ld c, a                                       ; $5b7e: $4f
    ld a, [hl+]                                   ; $5b7f: $2a
    cp d                                          ; $5b80: $ba
    ld c, c                                       ; $5b81: $49
    db $fd                                        ; $5b82: $fd
    dec sp                                        ; $5b83: $3b
    rst $00                                       ; $5b84: $c7
    add b                                         ; $5b85: $80
    ld b, h                                       ; $5b86: $44
    add hl, hl                                    ; $5b87: $29

Call_05a_5b88:
    ld a, l                                       ; $5b88: $7d
    ld b, $e3                                     ; $5b89: $06 $e3
    halt                                          ; $5b8b: $76
    rst $38                                       ; $5b8c: $ff
    cp l                                          ; $5b8d: $bd
    dec d                                         ; $5b8e: $15
    and l                                         ; $5b8f: $a5
    adc c                                         ; $5b90: $89
    db $e3                                        ; $5b91: $e3
    adc h                                         ; $5b92: $8c
    jp nc, $aca4                                  ; $5b93: $d2 $a4 $ac

    add hl, hl                                    ; $5b96: $29
    rst $18                                       ; $5b97: $df
    ld [hl], e                                    ; $5b98: $73
    ld c, b                                       ; $5b99: $48
    ld e, b                                       ; $5b9a: $58
    jp z, Jump_05a_6ce9                           ; $5b9b: $ca $e9 $6c

    adc a                                         ; $5b9e: $8f
    ld [$d28d], a                                 ; $5b9f: $ea $8d $d2
    rst $28                                       ; $5ba2: $ef
    db $fc                                        ; $5ba3: $fc
    ld a, d                                       ; $5ba4: $7a
    call $738d                                    ; $5ba5: $cd $8d $73
    and d                                         ; $5ba8: $a2
    dec sp                                        ; $5ba9: $3b
    and e                                         ; $5baa: $a3
    ld c, e                                       ; $5bab: $4b
    sbc h                                         ; $5bac: $9c
    ld b, h                                       ; $5bad: $44
    ld d, l                                       ; $5bae: $55
    ld e, h                                       ; $5baf: $5c
    dec h                                         ; $5bb0: $25
    or [hl]                                       ; $5bb1: $b6
    ld [hl], e                                    ; $5bb2: $73
    ld [hl+], a                                   ; $5bb3: $22
    cp h                                          ; $5bb4: $bc
    cpl                                           ; $5bb5: $2f
    or $95                                        ; $5bb6: $f6 $95
    ret nc                                        ; $5bb8: $d0

    xor a                                         ; $5bb9: $af
    push af                                       ; $5bba: $f5
    ld a, a                                       ; $5bbb: $7f
    xor c                                         ; $5bbc: $a9
    add a                                         ; $5bbd: $87
    rst $38                                       ; $5bbe: $ff
    cp $5a                                        ; $5bbf: $fe $5a
    rst $00                                       ; $5bc1: $c7
    ld b, d                                       ; $5bc2: $42
    and d                                         ; $5bc3: $a2
    ld [hl], h                                    ; $5bc4: $74
    ld b, a                                       ; $5bc5: $47
    ld b, l                                       ; $5bc6: $45
    ld h, a                                       ; $5bc7: $67
    db $d3                                        ; $5bc8: $d3
    ld [c], a                                     ; $5bc9: $e2
    inc e                                         ; $5bca: $1c
    cp d                                          ; $5bcb: $ba
    nop                                           ; $5bcc: $00
    ld c, $89                                     ; $5bcd: $0e $89
    inc l                                         ; $5bcf: $2c
    db $d3                                        ; $5bd0: $d3
    dec e                                         ; $5bd1: $1d
    ld l, l                                       ; $5bd2: $6d
    db $f4                                        ; $5bd3: $f4
    ld h, a                                       ; $5bd4: $67
    ld b, h                                       ; $5bd5: $44
    sbc h                                         ; $5bd6: $9c
    inc de                                        ; $5bd7: $13
    sbc d                                         ; $5bd8: $9a
    dec de                                        ; $5bd9: $1b
    rst $20                                       ; $5bda: $e7
    ld b, h                                       ; $5bdb: $44
    ld [hl], a                                    ; $5bdc: $77
    and [hl]                                      ; $5bdd: $a6
    ld sp, hl                                     ; $5bde: $f9
    dec sp                                        ; $5bdf: $3b
    rst $30                                       ; $5be0: $f7
    db $f4                                        ; $5be1: $f4
    dec bc                                        ; $5be2: $0b
    ld a, l                                       ; $5be3: $7d
    ld a, a                                       ; $5be4: $7f
    rst $08                                       ; $5be5: $cf
    rst $28                                       ; $5be6: $ef
    jp hl                                         ; $5be7: $e9


    cp a                                          ; $5be8: $bf
    nop                                           ; $5be9: $00
    cp h                                          ; $5bea: $bc
    ld a, b                                       ; $5beb: $78
    xor $af                                       ; $5bec: $ee $af
    adc d                                         ; $5bee: $8a
    jp nc, $c60c                                  ; $5bef: $d2 $0c $c6

    ld [hl], b                                    ; $5bf2: $70
    ld e, d                                       ; $5bf3: $5a
    sub h                                         ; $5bf4: $94
    ld [hl], b                                    ; $5bf5: $70
    ld h, a                                       ; $5bf6: $67
    ld a, h                                       ; $5bf7: $7c
    ld sp, hl                                     ; $5bf8: $f9
    inc bc                                        ; $5bf9: $03
    ld c, a                                       ; $5bfa: $4f
    xor h                                         ; $5bfb: $ac
    ld b, l                                       ; $5bfc: $45
    sub h                                         ; $5bfd: $94
    ld h, $65                                     ; $5bfe: $26 $65
    ld c, l                                       ; $5c00: $4d
    add hl, sp                                    ; $5c01: $39
    ld d, c                                       ; $5c02: $51
    add hl, bc                                    ; $5c03: $09
    ld c, e                                       ; $5c04: $4b
    ld a, $91                                     ; $5c05: $3e $91
    ld h, l                                       ; $5c07: $65
    sbc d                                         ; $5c08: $9a
    dec de                                        ; $5c09: $1b
    rst $20                                       ; $5c0a: $e7
    ld b, h                                       ; $5c0b: $44
    ld [hl], a                                    ; $5c0c: $77
    and [hl]                                      ; $5c0d: $a6
    ld sp, hl                                     ; $5c0e: $f9
    dec sp                                        ; $5c0f: $3b
    rst $30                                       ; $5c10: $f7
    db $f4                                        ; $5c11: $f4
    daa                                           ; $5c12: $27
    dec b                                         ; $5c13: $05
    ld h, e                                       ; $5c14: $63
    rst $08                                       ; $5c15: $cf
    ld d, a                                       ; $5c16: $57
    ld l, h                                       ; $5c17: $6c
    ld c, [hl]                                    ; $5c18: $4e
    xor l                                         ; $5c19: $ad
    db $f4                                        ; $5c1a: $f4
    rst $08                                       ; $5c1b: $cf
    ld a, b                                       ; $5c1c: $78
    ld c, l                                       ; $5c1d: $4d
    sbc h                                         ; $5c1e: $9c
    pop af                                        ; $5c1f: $f1
    ld a, [bc]                                    ; $5c20: $0a
    or [hl]                                       ; $5c21: $b6
    sbc l                                         ; $5c22: $9d
    xor l                                         ; $5c23: $ad
    ld b, l                                       ; $5c24: $45
    xor c                                         ; $5c25: $a9
    add a                                         ; $5c26: $87
    call $673f                                    ; $5c27: $cd $3f $67
    xor l                                         ; $5c2a: $ad
    ld e, a                                       ; $5c2b: $5f
    ld [hl], e                                    ; $5c2c: $73
    ldh [$89], a                                  ; $5c2d: $e0 $89
    ei                                            ; $5c2f: $fb
    rst $38                                       ; $5c30: $ff
    sub d                                         ; $5c31: $92
    db $db                                        ; $5c32: $db
    rst $20                                       ; $5c33: $e7
    call nz, Call_000_065c                        ; $5c34: $c4 $5c $06
    db $e3                                        ; $5c37: $e3
    or $b0                                        ; $5c38: $f6 $b0
    and h                                         ; $5c3a: $a4
    call c, $de3e                                 ; $5c3b: $dc $3e $de
    rrca                                          ; $5c3e: $0f
    sub e                                         ; $5c3f: $93
    ld a, e                                       ; $5c40: $7b
    db $e3                                        ; $5c41: $e3
    or $fe                                        ; $5c42: $f6 $fe
    inc b                                         ; $5c44: $04
    inc b                                         ; $5c45: $04
    ld e, c                                       ; $5c46: $59
    nop                                           ; $5c47: $00
    db $fc                                        ; $5c48: $fc
    and e                                         ; $5c49: $a3
    ld l, d                                       ; $5c4a: $6a
    sbc b                                         ; $5c4b: $98
    ld a, l                                       ; $5c4c: $7d
    cp l                                          ; $5c4d: $bd
    dec de                                        ; $5c4e: $1b
    jp nc, $351d                                  ; $5c4f: $d2 $1d $35

    cp c                                          ; $5c52: $b9
    ld d, d                                       ; $5c53: $52
    xor [hl]                                      ; $5c54: $ae
    ld d, d                                       ; $5c55: $52
    cp d                                          ; $5c56: $ba
    db $ec                                        ; $5c57: $ec
    ld e, $d6                                     ; $5c58: $1e $d6
    jp $fc00                                      ; $5c5a: $c3 $00 $fc


    ld [hl], h                                    ; $5c5d: $74
    sub e                                         ; $5c5e: $93
    or b                                          ; $5c5f: $b0
    db $e4                                        ; $5c60: $e4
    db $e3                                        ; $5c61: $e3
    adc $8d                                       ; $5c62: $ce $8d
    sub d                                         ; $5c64: $92
    ccf                                           ; $5c65: $3f
    ldh a, [$ec]                                  ; $5c66: $f0 $ec
    dec h                                         ; $5c68: $25
    ld b, c                                       ; $5c69: $41
    rst $08                                       ; $5c6a: $cf
    ccf                                           ; $5c6b: $3f
    inc bc                                        ; $5c6c: $03
    rst $20                                       ; $5c6d: $e7
    db $fc                                        ; $5c6e: $fc
    di                                            ; $5c6f: $f3
    ld l, e                                       ; $5c70: $6b
    pop de                                        ; $5c71: $d1
    xor d                                         ; $5c72: $aa
    ld sp, $c8e7                                  ; $5c73: $31 $e7 $c8
    cp a                                          ; $5c76: $bf
    dec d                                         ; $5c77: $15
    ld h, l                                       ; $5c78: $65
    ld a, e                                       ; $5c79: $7b
    rst $18                                       ; $5c7a: $df
    or h                                          ; $5c7b: $b4
    ld d, $66                                     ; $5c7c: $16 $66
    and h                                         ; $5c7e: $a4
    add hl, de                                    ; $5c7f: $19

jr_05a_5c80:
    adc h                                         ; $5c80: $8c
    pop hl                                        ; $5c81: $e1
    or h                                          ; $5c82: $b4
    jr nc, jr_05a_5c80                            ; $5c83: $30 $fb

    dec bc                                        ; $5c85: $0b
    nop                                           ; $5c86: $00
    ld e, $b2                                     ; $5c87: $1e $b2
    inc a                                         ; $5c89: $3c
    ld a, [$f19d]                                 ; $5c8a: $fa $9d $f1
    cp a                                          ; $5c8d: $bf
    and $dc                                       ; $5c8e: $e6 $dc
    dec l                                         ; $5c90: $2d
    cp c                                          ; $5c91: $b9
    add sp, -$04                                  ; $5c92: $e8 $fc
    and l                                         ; $5c94: $a5
    inc [hl]                                      ; $5c95: $34
    or [hl]                                       ; $5c96: $b6
    ld l, b                                       ; $5c97: $68
    adc [hl]                                      ; $5c98: $8e
    pop de                                        ; $5c99: $d1
    xor a                                         ; $5c9a: $af
    adc [hl]                                      ; $5c9b: $8e
    inc d                                         ; $5c9c: $14
    sub d                                         ; $5c9d: $92
    sub l                                         ; $5c9e: $95
    xor $c1                                       ; $5c9f: $ee $c1

jr_05a_5ca1:
    jr @-$68                                      ; $5ca1: $18 $96

    ld a, d                                       ; $5ca3: $7a
    db $f4                                        ; $5ca4: $f4
    call c, Call_05a_4c7b                         ; $5ca5: $dc $7b $4c
    adc e                                         ; $5ca8: $8b
    ld d, $fc                                     ; $5ca9: $16 $fc
    dec a                                         ; $5cab: $3d
    ld b, a                                       ; $5cac: $47
    cp $7d                                        ; $5cad: $fe $7d
    adc c                                         ; $5caf: $89
    ld l, a                                       ; $5cb0: $6f
    jr nc, @-$78                                  ; $5cb1: $30 $86

    dec h                                         ; $5cb3: $25
    dec de                                        ; $5cb4: $1b
    ret z                                         ; $5cb5: $c8

    or [hl]                                       ; $5cb6: $b6
    ei                                            ; $5cb7: $fb
    pop hl                                        ; $5cb8: $e1
    sbc l                                         ; $5cb9: $9d
    or [hl]                                       ; $5cba: $b6
    ld a, [bc]                                    ; $5cbb: $0a
    sbc a                                         ; $5cbc: $9f
    or $1c                                        ; $5cbd: $f6 $1c
    and d                                         ; $5cbf: $a2
    ld d, d                                       ; $5cc0: $52
    adc a                                         ; $5cc1: $8f
    ld [$bfb8], a                                 ; $5cc2: $ea $b8 $bf
    dec de                                        ; $5cc5: $1b
    rst $28                                       ; $5cc6: $ef
    ld a, l                                       ; $5cc7: $7d
    ld sp, hl                                     ; $5cc8: $f9
    ld a, e                                       ; $5cc9: $7b
    ld b, a                                       ; $5cca: $47
    ld b, $89                                     ; $5ccb: $06 $89
    ld d, d                                       ; $5ccd: $52
    ld e, $27                                     ; $5cce: $1e $27
    ld b, l                                       ; $5cd0: $45
    ld hl, sp-$2b                                 ; $5cd1: $f8 $d5
    cp a                                          ; $5cd3: $bf
    ld a, [hl+]                                   ; $5cd4: $2a
    call c, $bfde                                 ; $5cd5: $dc $de $bf
    call nz, Call_000_1837                        ; $5cd8: $c4 $37 $18
    jp $9652                                      ; $5cdb: $c3 $52 $96


    halt                                          ; $5cde: $76
    ld h, h                                       ; $5cdf: $64
    sub b                                         ; $5ce0: $90
    jr nc, jr_05a_5d06                            ; $5ce1: $30 $23

    push bc                                       ; $5ce3: $c5
    ld a, [hl+]                                   ; $5ce4: $2a
    rst $18                                       ; $5ce5: $df
    add sp, $4c                                   ; $5ce6: $e8 $4c
    rst $30                                       ; $5ce8: $f7
    ld [hl], $51                                  ; $5ce9: $36 $51
    cp c                                          ; $5ceb: $b9
    xor c                                         ; $5cec: $a9
    ld a, e                                       ; $5ced: $7b
    or b                                          ; $5cee: $b0
    cp $d1                                        ; $5cef: $fe $d1
    inc bc                                        ; $5cf1: $03
    sbc $28                                       ; $5cf2: $de $28
    push af                                       ; $5cf4: $f5
    add sp, -$47                                  ; $5cf5: $e8 $b9
    rst $30                                       ; $5cf7: $f7
    dec hl                                        ; $5cf8: $2b
    push bc                                       ; $5cf9: $c5
    sub e                                         ; $5cfa: $93
    xor a                                         ; $5cfb: $af
    ldh a, [$ac]                                  ; $5cfc: $f0 $ac
    ld a, [hl-]                                   ; $5cfe: $3a
    ld c, e                                       ; $5cff: $4b
    pop hl                                        ; $5d00: $e1
    xor b                                         ; $5d01: $a8
    adc d                                         ; $5d02: $8a
    xor $4c                                       ; $5d03: $ee $4c
    cp a                                          ; $5d05: $bf

jr_05a_5d06:
    ld [hl], c                                    ; $5d06: $71
    rst $18                                       ; $5d07: $df
    ld e, e                                       ; $5d08: $5b
    or d                                          ; $5d09: $b2
    cp a                                          ; $5d0a: $bf
    cp a                                          ; $5d0b: $bf
    ld e, [hl]                                    ; $5d0c: $5e
    ld a, $6d                                     ; $5d0d: $3e $6d
    ld c, [hl]                                    ; $5d0f: $4e
    ld b, l                                       ; $5d10: $45
    sub a                                         ; $5d11: $97
    sbc h                                         ; $5d12: $9c
    ldh [$0b], a                                  ; $5d13: $e0 $0b
    push bc                                       ; $5d15: $c5
    ld a, l                                       ; $5d16: $7d
    add a                                         ; $5d17: $87
    ld h, [hl]                                    ; $5d18: $66
    jr nc, jr_05a_5ca1                            ; $5d19: $30 $86

    cp d                                          ; $5d1b: $ba
    or a                                          ; $5d1c: $b7
    ld c, c                                       ; $5d1d: $49
    or [hl]                                       ; $5d1e: $b6
    ld [hl], c                                    ; $5d1f: $71
    ld c, $09                                     ; $5d20: $0e $09
    rst $08                                       ; $5d22: $cf
    ld h, $05                                     ; $5d23: $26 $05
    ld h, e                                       ; $5d25: $63
    ld b, a                                       ; $5d26: $47
    adc c                                         ; $5d27: $89
    adc $24                                       ; $5d28: $ce $24
    ld d, d                                       ; $5d2a: $52
    adc a                                         ; $5d2b: $8f
    sbc d                                         ; $5d2c: $9a
    ld sp, $1551                                  ; $5d2d: $31 $51 $15
    ld b, l                                       ; $5d30: $45
    ld d, h                                       ; $5d31: $54
    dec d                                         ; $5d32: $15
    ld l, d                                       ; $5d33: $6a
    ld c, d                                       ; $5d34: $4a
    xor c                                         ; $5d35: $a9
    db $f4                                        ; $5d36: $f4
    or [hl]                                       ; $5d37: $b6
    rst $38                                       ; $5d38: $ff
    sub l                                         ; $5d39: $95
    inc d                                         ; $5d3a: $14
    adc h                                         ; $5d3b: $8c
    and [hl]                                      ; $5d3c: $a6
    db $ec                                        ; $5d3d: $ec
    cp [hl]                                       ; $5d3e: $be
    adc c                                         ; $5d3f: $89
    ld sp, $0eea                                  ; $5d40: $31 $ea $0e
    pop hl                                        ; $5d43: $e1
    db $fd                                        ; $5d44: $fd
    dec h                                         ; $5d45: $25
    rst $38                                       ; $5d46: $ff
    ld e, c                                       ; $5d47: $59
    ld a, [$155f]                                 ; $5d48: $fa $5f $15
    ld c, [hl]                                    ; $5d4b: $4e
    inc h                                         ; $5d4c: $24
    push hl                                       ; $5d4d: $e5
    ld hl, $a3cb                                  ; $5d4e: $21 $cb $a3
    cp a                                          ; $5d51: $bf
    db $e4                                        ; $5d52: $e4
    adc a                                         ; $5d53: $8f
    inc [hl]                                      ; $5d54: $34
    xor $ff                                       ; $5d55: $ee $ff
    ld [hl], h                                    ; $5d57: $74
    dec hl                                        ; $5d58: $2b
    ld c, d                                       ; $5d59: $4a
    or $85                                        ; $5d5a: $f6 $85
    ld a, e                                       ; $5d5c: $7b
    ld bc, $5fbc                                  ; $5d5d: $01 $bc $5f
    push af                                       ; $5d60: $f5
    db $dd                                        ; $5d61: $dd
    rst $38                                       ; $5d62: $ff
    jp z, $dd9f                                   ; $5d63: $ca $9f $dd

    rst $38                                       ; $5d66: $ff
    and l                                         ; $5d67: $a5
    ld c, c                                       ; $5d68: $49
    add hl, de                                    ; $5d69: $19
    add h                                         ; $5d6a: $84
    inc [hl]                                      ; $5d6b: $34
    ld sp, $57ed                                  ; $5d6c: $31 $ed $57
    adc l                                         ; $5d6f: $8d
    add hl, sp                                    ; $5d70: $39
    rst $00                                       ; $5d71: $c7
    db $fd                                        ; $5d72: $fd
    ld e, a                                       ; $5d73: $5f
    ld c, c                                       ; $5d74: $49
    pop af                                        ; $5d75: $f1
    inc a                                         ; $5d76: $3c
    ld h, e                                       ; $5d77: $63
    reti                                          ; $5d78: $d9


    dec h                                         ; $5d79: $25
    sbc [hl]                                      ; $5d7a: $9e
    add c                                         ; $5d7b: $81
    ld [hl], a                                    ; $5d7c: $77
    ld d, h                                       ; $5d7d: $54
    cp l                                          ; $5d7e: $bd
    or b                                          ; $5d7f: $b0
    db $e4                                        ; $5d80: $e4
    rst $38                                       ; $5d81: $ff
    add c                                         ; $5d82: $81
    or c                                          ; $5d83: $b1
    add h                                         ; $5d84: $84
    add hl, hl                                    ; $5d85: $29
    inc e                                         ; $5d86: $1c
    rst $20                                       ; $5d87: $e7
    cp $bf                                        ; $5d88: $fe $bf
    nop                                           ; $5d8a: $00
    ret nc                                        ; $5d8b: $d0

    dec h                                         ; $5d8c: $25
    ld hl, sp-$59                                 ; $5d8d: $f8 $a7
    cp l                                          ; $5d8f: $bd
    and d                                         ; $5d90: $a2
    adc b                                         ; $5d91: $88
    db $e4                                        ; $5d92: $e4
    adc a                                         ; $5d93: $8f
    ld [hl], h                                    ; $5d94: $74
    ld a, h                                       ; $5d95: $7c
    ld d, d                                       ; $5d96: $52
    ld a, b                                       ; $5d97: $78
    and d                                         ; $5d98: $a2
    ld [hl], h                                    ; $5d99: $74
    halt                                          ; $5d9a: $76
    cp a                                          ; $5d9b: $bf
    sub h                                         ; $5d9c: $94
    sub e                                         ; $5d9d: $93
    ld h, l                                       ; $5d9e: $65
    sub l                                         ; $5d9f: $95
    push af                                       ; $5da0: $f5
    dec b                                         ; $5da1: $05
    nop                                           ; $5da2: $00
    db $fc                                        ; $5da3: $fc
    inc l                                         ; $5da4: $2c
    ld [hl], d                                    ; $5da5: $72
    ld h, h                                       ; $5da6: $64
    add d                                         ; $5da7: $82
    ld e, a                                       ; $5da8: $5f
    rst $30                                       ; $5da9: $f7
    ld d, $e9                                     ; $5daa: $16 $e9
    adc [hl]                                      ; $5dac: $8e
    ld a, [hl+]                                   ; $5dad: $2a
    and d                                         ; $5dae: $a2
    ld d, d                                       ; $5daf: $52
    adc l                                         ; $5db0: $8d
    add hl, sp                                    ; $5db1: $39
    rst $00                                       ; $5db2: $c7
    db $fd                                        ; $5db3: $fd
    ld e, a                                       ; $5db4: $5f
    ld c, c                                       ; $5db5: $49
    push hl                                       ; $5db6: $e5
    cp a                                          ; $5db7: $bf
    cp d                                          ; $5db8: $ba
    or a                                          ; $5db9: $b7
    ld c, c                                       ; $5dba: $49
    db $fc                                        ; $5dbb: $fc
    inc l                                         ; $5dbc: $2c
    ld [hl], d                                    ; $5dbd: $72
    ld h, h                                       ; $5dbe: $64
    ld d, b                                       ; $5dbf: $50
    ld [c], a                                     ; $5dc0: $e2
    ld h, a                                       ; $5dc1: $67
    sub c                                         ; $5dc2: $91
    inc hl                                        ; $5dc3: $23
    cp e                                          ; $5dc4: $bb
    xor [hl]                                      ; $5dc5: $ae
    dec bc                                        ; $5dc6: $0b
    ld a, [bc]                                    ; $5dc7: $0a
    nop                                           ; $5dc8: $00
    inc a                                         ; $5dc9: $3c
    ld e, c                                       ; $5dca: $59
    ld c, [hl]                                    ; $5dcb: $4e
    and h                                         ; $5dcc: $a4
    adc h                                         ; $5dcd: $8c
    xor e                                         ; $5dce: $ab
    add hl, hl                                    ; $5dcf: $29
    add hl, hl                                    ; $5dd0: $29
    sbc [hl]                                      ; $5dd1: $9e
    ld h, a                                       ; $5dd2: $67
    inc l                                         ; $5dd3: $2c
    cp e                                          ; $5dd4: $bb
    inc h                                         ; $5dd5: $24
    adc [hl]                                      ; $5dd6: $8e
    jp nc, Jump_05a_551c                          ; $5dd7: $d2 $1c $55

    ei                                            ; $5dda: $fb
    jp nz, Jump_05a_5e73                          ; $5ddb: $c2 $73 $5e

    or $f7                                        ; $5dde: $f6 $f7
    sbc e                                         ; $5de0: $9b
    cp l                                          ; $5de1: $bd
    ld a, d                                       ; $5de2: $7a
    db $e4                                        ; $5de3: $e4
    ld l, a                                       ; $5de4: $6f
    or $9a                                        ; $5de5: $f6 $9a
    ld h, e                                       ; $5de7: $63
    ld c, e                                       ; $5de8: $4b
    or [hl]                                       ; $5de9: $b6
    ld b, l                                       ; $5dea: $45
    rla                                           ; $5deb: $17
    nop                                           ; $5dec: $00
    ret nc                                        ; $5ded: $d0

    dec hl                                        ; $5dee: $2b
    ld hl, sp-$59                                 ; $5def: $f8 $a7
    cp l                                          ; $5df1: $bd
    and d                                         ; $5df2: $a2
    adc b                                         ; $5df3: $88
    inc b                                         ; $5df4: $04
    adc a                                         ; $5df5: $8f
    adc [hl]                                      ; $5df6: $8e
    ld [hl], e                                    ; $5df7: $73
    cp $92                                        ; $5df8: $fe $92
    scf                                           ; $5dfa: $37
    db $db                                        ; $5dfb: $db
    ld [hl], h                                    ; $5dfc: $74
    ld bc, $593c                                  ; $5dfd: $01 $3c $59
    ld c, [hl]                                    ; $5e00: $4e
    and h                                         ; $5e01: $a4
    adc h                                         ; $5e02: $8c
    xor e                                         ; $5e03: $ab
    add hl, hl                                    ; $5e04: $29
    add hl, hl                                    ; $5e05: $29
    sbc [hl]                                      ; $5e06: $9e
    ld h, a                                       ; $5e07: $67
    inc l                                         ; $5e08: $2c
    cp e                                          ; $5e09: $bb
    nop                                           ; $5e0a: $00
    ld c, $17                                     ; $5e0b: $0e $17
    ld b, d                                       ; $5e0d: $42
    sbc d                                         ; $5e0e: $9a
    cp e                                          ; $5e0f: $bb
    inc l                                         ; $5e10: $2c
    cp d                                          ; $5e11: $ba
    add hl, hl                                    ; $5e12: $29
    add hl, hl                                    ; $5e13: $29
    sbc [hl]                                      ; $5e14: $9e
    ld h, a                                       ; $5e15: $67
    inc l                                         ; $5e16: $2c
    cp e                                          ; $5e17: $bb
    inc h                                         ; $5e18: $24
    cp [hl]                                       ; $5e19: $be
    ld e, b                                       ; $5e1a: $58
    ld [$9a95], sp                                ; $5e1b: $08 $95 $9a
    or d                                          ; $5e1e: $b2
    adc $32                                       ; $5e1f: $ce $32
    db $dd                                        ; $5e21: $dd
    ld d, c                                       ; $5e22: $51
    ld b, l                                       ; $5e23: $45
    ld [$f9df], a                                 ; $5e24: $ea $df $f9
    ldh a, [$c0]                                  ; $5e27: $f0 $c0
    ei                                            ; $5e29: $fb
    ld a, e                                       ; $5e2a: $7b
    ld d, h                                       ; $5e2b: $54
    db $ed                                        ; $5e2c: $ed
    add hl, sp                                    ; $5e2d: $39
    pop bc                                        ; $5e2e: $c1
    dec l                                         ; $5e2f: $2d
    sbc $3f                                       ; $5e30: $de $3f
    di                                            ; $5e32: $f3
    add hl, de                                    ; $5e33: $19
    sbc d                                         ; $5e34: $9a
    ld h, d                                       ; $5e35: $62
    push hl                                       ; $5e36: $e5
    cpl                                           ; $5e37: $2f
    add h                                         ; $5e38: $84
    ld [hl], h                                    ; $5e39: $74
    ld h, a                                       ; $5e3a: $67
    ld e, h                                       ; $5e3b: $5c
    add hl, hl                                    ; $5e3c: $29
    ld e, c                                       ; $5e3d: $59
    rst $00                                       ; $5e3e: $c7
    ld e, c                                       ; $5e3f: $59
    sbc b                                         ; $5e40: $98
    ld l, e                                       ; $5e41: $6b
    xor l                                         ; $5e42: $ad
    adc c                                         ; $5e43: $89
    dec de                                        ; $5e44: $1b
    nop                                           ; $5e45: $00
    ld e, $8f                                     ; $5e46: $1e $8f
    adc c                                         ; $5e48: $89
    ld h, [hl]                                    ; $5e49: $66
    ld a, a                                       ; $5e4a: $7f
    ld bc, $6b7c                                  ; $5e4b: $01 $7c $6b
    ld b, [hl]                                    ; $5e4e: $46
    ld a, [c]                                     ; $5e4f: $f2
    rla                                           ; $5e50: $17
    ld [de], a                                    ; $5e51: $12
    ld c, l                                       ; $5e52: $4d
    ld d, h                                       ; $5e53: $54
    ld [$f9df], a                                 ; $5e54: $ea $df $f9
    ldh a, [$c0]                                  ; $5e57: $f0 $c0
    ld a, e                                       ; $5e59: $7b
    and e                                         ; $5e5a: $a3
    add h                                         ; $5e5b: $84
    cp [hl]                                       ; $5e5c: $be
    cp a                                          ; $5e5d: $bf
    dec a                                         ; $5e5e: $3d
    xor d                                         ; $5e5f: $aa
    rla                                           ; $5e60: $17
    ld a, [bc]                                    ; $5e61: $0a
    nop                                           ; $5e62: $00
    ld a, h                                       ; $5e63: $7c
    sbc a                                         ; $5e64: $9f
    ld b, d                                       ; $5e65: $42
    ldh a, [$9c]                                  ; $5e66: $f0 $9c
    or l                                          ; $5e68: $b5
    cp l                                          ; $5e69: $bd
    rst $28                                       ; $5e6a: $ef

jr_05a_5e6b:
    cpl                                           ; $5e6b: $2f
    call $f31f                                    ; $5e6c: $cd $1f $f3
    db $eb                                        ; $5e6f: $eb
    push de                                       ; $5e70: $d5
    ld b, h                                       ; $5e71: $44
    and a                                         ; $5e72: $a7

Jump_05a_5e73:
    add hl, hl                                    ; $5e73: $29
    xor c                                         ; $5e74: $a9
    ld a, e                                       ; $5e75: $7b
    ld [hl], h                                    ; $5e76: $74
    cp a                                          ; $5e77: $bf
    ld l, h                                       ; $5e78: $6c
    adc l                                         ; $5e79: $8d
    db $fc                                        ; $5e7a: $fc
    add c                                         ; $5e7b: $81
    daa                                           ; $5e7c: $27
    adc $79                                       ; $5e7d: $ce $79
    call $1db1                                    ; $5e7f: $cd $b1 $1d
    dec [hl]                                      ; $5e82: $35
    or a                                          ; $5e83: $b7
    ld l, $71                                     ; $5e84: $2e $71
    ld l, [hl]                                    ; $5e86: $6e
    ld d, l                                       ; $5e87: $55
    ld [$b84b], sp                                ; $5e88: $08 $4b $b8
    inc de                                        ; $5e8b: $13
    dec sp                                        ; $5e8c: $3b
    or [hl]                                       ; $5e8d: $b6
    ld l, c                                       ; $5e8e: $69
    ld l, [hl]                                    ; $5e8f: $6e
    dec h                                         ; $5e90: $25
    dec b                                         ; $5e91: $05
    and e                                         ; $5e92: $a3
    xor c                                         ; $5e93: $a9
    scf                                           ; $5e94: $37
    jr nz, jr_05a_5e6b                            ; $5e95: $20 $d4

    cp d                                          ; $5e97: $ba
    rst $10                                       ; $5e98: $d7
    sbc d                                         ; $5e99: $9a
    inc d                                         ; $5e9a: $14
    ld l, l                                       ; $5e9b: $6d
    ld c, e                                       ; $5e9c: $4b
    rla                                           ; $5e9d: $17
    nop                                           ; $5e9e: $00
    sbc h                                         ; $5e9f: $9c
    ld e, c                                       ; $5ea0: $59
    ld c, [hl]                                    ; $5ea1: $4e
    rst $20                                       ; $5ea2: $e7
    ld d, b                                       ; $5ea3: $50
    ld d, d                                       ; $5ea4: $52
    sub [hl]                                      ; $5ea5: $96
    push de                                       ; $5ea6: $d5
    inc h                                         ; $5ea7: $24
    inc sp                                        ; $5ea8: $33
    ld [de], a                                    ; $5ea9: $12
    db $fc                                        ; $5eaa: $fc
    ld [$7351], a                                 ; $5eab: $ea $51 $73
    cp $5a                                        ; $5eae: $fe $5a
    sbc b                                         ; $5eb0: $98
    cp l                                          ; $5eb1: $bd
    db $fc                                        ; $5eb2: $fc
    rst $18                                       ; $5eb3: $df
    ld sp, hl                                     ; $5eb4: $f9
    ld h, [hl]                                    ; $5eb5: $66
    ld a, a                                       ; $5eb6: $7f
    ld e, l                                       ; $5eb7: $5d
    sub a                                         ; $5eb8: $97
    inc l                                         ; $5eb9: $2c
    add h                                         ; $5eba: $84
    dec h                                         ; $5ebb: $25
    sbc $3f                                       ; $5ebc: $de $3f
    di                                            ; $5ebe: $f3
    add hl, de                                    ; $5ebf: $19
    ld c, [hl]                                    ; $5ec0: $4e
    adc e                                         ; $5ec1: $8b
    jp nc, Jump_05a_71bd                          ; $5ec2: $d2 $bd $71

    ld [hl+], a                                   ; $5ec5: $22
    ld [$4e02], a                                 ; $5ec6: $ea $02 $4e
    ldh a, [rIE]                                  ; $5ec9: $f0 $ff
    adc $87                                       ; $5ecb: $ce $87
    rlca                                          ; $5ecd: $07
    sbc $1b                                       ; $5ece: $de $1b
    and l                                         ; $5ed0: $a5
    ld [hl], h                                    ; $5ed1: $74
    xor e                                         ; $5ed2: $ab
    cp [hl]                                       ; $5ed3: $be
    push af                                       ; $5ed4: $f5
    daa                                           ; $5ed5: $27
    ld l, [hl]                                    ; $5ed6: $6e
    rst $38                                       ; $5ed7: $ff
    db $eb                                        ; $5ed8: $eb
    dec [hl]                                      ; $5ed9: $35
    rst $00                                       ; $5eda: $c7
    sub [hl]                                      ; $5edb: $96
    ld h, $da                                     ; $5edc: $26 $da
    db $fc                                        ; $5ede: $fc
    xor a                                         ; $5edf: $af
    and h                                         ; $5ee0: $a4
    xor $ef                                       ; $5ee1: $ee $ef
    ld sp, hl                                     ; $5ee3: $f9
    rst $20                                       ; $5ee4: $e7
    cp h                                          ; $5ee5: $bc
    ld a, [hl-]                                   ; $5ee6: $3a
    ld h, e                                       ; $5ee7: $63

Jump_05a_5ee8:
    rst $30                                       ; $5ee8: $f7
    sub d                                         ; $5ee9: $92
    ld h, $a6                                     ; $5eea: $26 $a6
    cp l                                          ; $5eec: $bd
    ld c, [hl]                                    ; $5eed: $4e
    nop                                           ; $5eee: $00
    sbc h                                         ; $5eef: $9c
    ld e, e                                       ; $5ef0: $5b
    dec d                                         ; $5ef1: $15
    jp nz, $bf92                                  ; $5ef2: $c2 $92 $bf

    dec a                                         ; $5ef5: $3d
    ld c, c                                       ; $5ef6: $49
    rst $30                                       ; $5ef7: $f7
    rst $30                                       ; $5ef8: $f7
    db $fc                                        ; $5ef9: $fc
    dec bc                                        ; $5efa: $0b
    nop                                           ; $5efb: $00
    ld e, [hl]                                    ; $5efc: $5e
    or c                                          ; $5efd: $b1
    ld l, l                                       ; $5efe: $6d
    ld a, [hl+]                                   ; $5eff: $2a
    dec e                                         ; $5f00: $1d
    xor [hl]                                      ; $5f01: $ae
    xor h                                         ; $5f02: $ac
    adc c                                         ; $5f03: $89
    ld h, h                                       ; $5f04: $64
    cp a                                          ; $5f05: $bf
    db $ec                                        ; $5f06: $ec
    rst $38                                       ; $5f07: $ff
    cp h                                          ; $5f08: $bc
    db $ed                                        ; $5f09: $ed
    ld a, [$7511]                                 ; $5f0a: $fa $11 $75
    ld e, l                                       ; $5f0d: $5d
    sub a                                         ; $5f0e: $97
    adc h                                         ; $5f0f: $8c
    ld l, e                                       ; $5f10: $6b
    ld c, e                                       ; $5f11: $4b
    ld h, a                                       ; $5f12: $67
    ld [hl], a                                    ; $5f13: $77
    cp $2b                                        ; $5f14: $fe $2b
    rst $18                                       ; $5f16: $df
    cp l                                          ; $5f17: $bd
    ld b, e                                       ; $5f18: $43
    add hl, de                                    ; $5f19: $19
    ld d, a                                       ; $5f1a: $57
    pop de                                        ; $5f1b: $d1
    dec b                                         ; $5f1c: $05
    nop                                           ; $5f1d: $00
    cp h                                          ; $5f1e: $bc
    and e                                         ; $5f1f: $a3
    jp nc, Jump_05a_452f                          ; $5f20: $d2 $2f $45

    db $eb                                        ; $5f23: $eb
    adc [hl]                                      ; $5f24: $8e
    ld a, [bc]                                    ; $5f25: $0a
    ld h, l                                       ; $5f26: $65
    add a                                         ; $5f27: $87
    set 2, h                                      ; $5f28: $cb $d4
    cp a                                          ; $5f2a: $bf
    ld a, [c]                                     ; $5f2b: $f2
    inc sp                                        ; $5f2c: $33
    set 4, h                                      ; $5f2d: $cb $e4
    rst $38                                       ; $5f2f: $ff
    adc $3f                                       ; $5f30: $ce $3f
    rst $20                                       ; $5f32: $e7
    ld l, l                                       ; $5f33: $6d
    sub e                                         ; $5f34: $93
    ld a, [hl-]                                   ; $5f35: $3a
    ld e, h                                       ; $5f36: $5c
    add hl, de                                    ; $5f37: $19
    add h                                         ; $5f38: $84
    ld e, d                                       ; $5f39: $5a
    ld sp, hl                                     ; $5f3a: $f9
    or e                                          ; $5f3b: $b3
    ei                                            ; $5f3c: $fb
    xor l                                         ; $5f3d: $ad
    ld d, a                                       ; $5f3e: $57
    ld a, [hl]                                    ; $5f3f: $7e
    or b                                          ; $5f40: $b0
    dec a                                         ; $5f41: $3d
    daa                                           ; $5f42: $27
    ld l, $00                                     ; $5f43: $2e $00
    ld a, h                                       ; $5f45: $7c
    ld e, e                                       ; $5f46: $5b
    db $e3                                        ; $5f47: $e3
    sbc h                                         ; $5f48: $9c
    rla                                           ; $5f49: $17
    sub [hl]                                      ; $5f4a: $96
    ld a, [$1f99]                                 ; $5f4b: $fa $99 $1f
    ld sp, $856d                                  ; $5f4e: $31 $6d $85
    sub l                                         ; $5f51: $95
    ld d, b                                       ; $5f52: $50
    sbc h                                         ; $5f53: $9c
    ld a, e                                       ; $5f54: $7b
    ld e, a                                       ; $5f55: $5f
    ld a, b                                       ; $5f56: $78
    ld a, a                                       ; $5f57: $7f
    call $9d2d                                    ; $5f58: $cd $2d $9d
    ld sp, $4c07                                  ; $5f5b: $31 $07 $4c
    inc c                                         ; $5f5e: $0c
    ld c, $eb                                     ; $5f5f: $0e $eb
    ld l, h                                       ; $5f61: $6c
    ld e, d                                       ; $5f62: $5a
    call nc, Call_05a_7e6a                        ; $5f63: $d4 $6a $7e
    sbc c                                         ; $5f66: $99
    dec a                                         ; $5f67: $3d
    scf                                           ; $5f68: $37
    nop                                           ; $5f69: $00
    cp h                                          ; $5f6a: $bc
    ld a, a                                       ; $5f6b: $7f
    and $33                                       ; $5f6c: $e6 $33
    sbc h                                         ; $5f6e: $9c
    ld d, $a5                                     ; $5f6f: $16 $a5
    adc $b8                                       ; $5f71: $ce $b8
    jp nc, $1581                                  ; $5f73: $d2 $81 $15

    jp nz, $6752                                  ; $5f76: $c2 $52 $67

    db $ec                                        ; $5f79: $ec
    ld e, [hl]                                    ; $5f7a: $5e
    inc sp                                        ; $5f7b: $33
    cp d                                          ; $5f7c: $ba
    db $e4                                        ; $5f7d: $e4
    pop af                                        ; $5f7e: $f1
    ret nz                                        ; $5f7f: $c0

    add hl, sp                                    ; $5f80: $39
    ccf                                           ; $5f81: $3f
    dec e                                         ; $5f82: $1d
    ld e, b                                       ; $5f83: $58
    ld sp, $84b7                                  ; $5f84: $31 $b7 $84
    and l                                         ; $5f87: $a5
    db $fc                                        ; $5f88: $fc
    reti                                          ; $5f89: $d9


    db $fd                                        ; $5f8a: $fd
    ld e, a                                       ; $5f8b: $5f
    add d                                         ; $5f8c: $82
    pop de                                        ; $5f8d: $d1
    db $ec                                        ; $5f8e: $ec
    or a                                          ; $5f8f: $b7
    ld h, h                                       ; $5f90: $64
    dec de                                        ; $5f91: $1b
    rst $20                                       ; $5f92: $e7
    sub b                                         ; $5f93: $90
    ld c, $a5                                     ; $5f94: $0e $a5
    ld [hl], c                                    ; $5f96: $71
    ld c, $5d                                     ; $5f97: $0e $5d
    nop                                           ; $5f99: $00
    ld e, $a6                                     ; $5f9a: $1e $a6
    ld e, a                                       ; $5f9c: $5f
    ld h, d                                       ; $5f9d: $62
    sbc b                                         ; $5f9e: $98
    adc $38                                       ; $5f9f: $ce $38
    dec sp                                        ; $5fa1: $3b
    or c                                          ; $5fa2: $b1
    call nc, $ffef                                ; $5fa3: $d4 $ef $ff
    ld e, d                                       ; $5fa6: $5a
    cp a                                          ; $5fa7: $bf
    ld h, d                                       ; $5fa8: $62
    ld e, d                                       ; $5fa9: $5a
    ld b, [hl]                                    ; $5faa: $46
    call c, $9c00                                 ; $5fab: $dc $00 $9c
    ld e, e                                       ; $5fae: $5b
    call nz, $be2d                                ; $5faf: $c4 $2d $be
    sbc l                                         ; $5fb2: $9d
    ld d, $2d                                     ; $5fb3: $16 $2d
    inc a                                         ; $5fb5: $3c
    and c                                         ; $5fb6: $a1

Call_05a_5fb7:
    ld e, $55                                     ; $5fb7: $1e $55
    ld a, e                                       ; $5fb9: $7b
    adc $43                                       ; $5fba: $ce $43
    ld bc, $b15e                                  ; $5fbc: $01 $5e $b1
    ld l, l                                       ; $5fbf: $6d
    ld a, [hl+]                                   ; $5fc0: $2a
    dec e                                         ; $5fc1: $1d
    xor [hl]                                      ; $5fc2: $ae
    xor h                                         ; $5fc3: $ac
    adc c                                         ; $5fc4: $89
    call nc, $f3bf                                ; $5fc5: $d4 $bf $f3
    pop hl                                        ; $5fc8: $e1
    add c                                         ; $5fc9: $81
    rst $30                                       ; $5fca: $f7
    ld b, [hl]                                    ; $5fcb: $46
    add hl, bc                                    ; $5fcc: $09
    ld a, l                                       ; $5fcd: $7d
    ld a, a                                       ; $5fce: $7f
    ld a, e                                       ; $5fcf: $7b
    ld d, h                                       ; $5fd0: $54
    db $ed                                        ; $5fd1: $ed
    add hl, sp                                    ; $5fd2: $39
    ld [hl], c                                    ; $5fd3: $71
    ld bc, $420e                                  ; $5fd4: $01 $0e $42
    cp $42                                        ; $5fd7: $fe $42

jr_05a_5fd9:
    and d                                         ; $5fd9: $a2
    adc c                                         ; $5fda: $89
    ld c, d                                       ; $5fdb: $4a
    sbc l                                         ; $5fdc: $9d
    or c                                          ; $5fdd: $b1
    ld a, e                                       ; $5fde: $7b
    call Call_05a_5b88                            ; $5fdf: $cd $88 $5b
    ld [c], a                                     ; $5fe2: $e2
    call Call_000_21ce                            ; $5fe3: $cd $ce $21
    ld e, c                                       ; $5fe6: $59
    ret z                                         ; $5fe7: $c8

    rst $18                                       ; $5fe8: $df
    and [hl]                                      ; $5fe9: $a6
    or l                                          ; $5fea: $b5
    ld d, l                                       ; $5feb: $55
    call z, Call_000_033f                         ; $5fec: $cc $3f $03
    rst $20                                       ; $5fef: $e7
    db $fc                                        ; $5ff0: $fc
    di                                            ; $5ff1: $f3
    ld l, e                                       ; $5ff2: $6b
    ld d, c                                       ; $5ff3: $51
    ld [hl], e                                    ; $5ff4: $73
    ld c, e                                       ; $5ff5: $4b
    cp l                                          ; $5ff6: $bd
    pop de                                        ; $5ff7: $d1
    ld b, h                                       ; $5ff8: $44
    call c, Call_05a_7c00                         ; $5ff9: $dc $00 $7c
    ld d, c                                       ; $5ffc: $51
    and c                                         ; $5ffd: $a1
    ld e, $55                                     ; $5ffe: $1e $55
    ld a, e                                       ; $6000: $7b
    ld c, [hl]                                    ; $6001: $4e
    ret c                                         ; $6002: $d8

    ld h, $e5                                     ; $6003: $26 $e5
    db $10                                        ; $6005: $10
    cp e                                          ; $6006: $bb
    add e                                         ; $6007: $83
    ld [hl], c                                    ; $6008: $71
    inc bc                                        ; $6009: $03
    cp h                                          ; $600a: $bc
    ld l, a                                       ; $600b: $6f
    jp z, Jump_000_2b7f                           ; $600c: $ca $7f $2b

    add hl, hl                                    ; $600f: $29
    sbc [hl]                                      ; $6010: $9e
    ld h, a                                       ; $6011: $67
    inc l                                         ; $6012: $2c
    sub e                                         ; $6013: $93
    ld b, e                                       ; $6014: $43
    db $ec                                        ; $6015: $ec
    ld c, $76                                     ; $6016: $0e $76
    adc c                                         ; $6018: $89
    cpl                                           ; $6019: $2f
    ld d, $42                                     ; $601a: $16 $42
    and l                                         ; $601c: $a5
    ld sp, $af6c                                  ; $601d: $31 $6c $af
    db $eb                                        ; $6020: $eb
    ld [de], a                                    ; $6021: $12
    inc a                                         ; $6022: $3c
    adc $9c                                       ; $6023: $ce $9c
    dec sp                                        ; $6025: $3b
    dec l                                         ; $6026: $2d
    xor $3b                                       ; $6027: $ee $3b
    ld l, $71                                     ; $6029: $2e $71
    sbc h                                         ; $602b: $9c
    ld d, b                                       ; $602c: $50
    sbc d                                         ; $602d: $9a
    push hl                                       ; $602e: $e5
    inc h                                         ; $602f: $24
    ld hl, sp-$4b                                 ; $6030: $f8 $b5
    sub $43                                       ; $6032: $d6 $43
    ld a, a                                       ; $6034: $7f
    sbc $2e                                       ; $6035: $de $2e
    nop                                           ; $6037: $00
    ld c, $b1                                     ; $6038: $0e $b1
    dec sp                                        ; $603a: $3b
    ld e, b                                       ; $603b: $58
    ld d, d                                       ; $603c: $52
    jr nc, jr_05a_5fd9                            ; $603d: $30 $9a

    db $fc                                        ; $603f: $fc
    inc l                                         ; $6040: $2c
    ld l, e                                       ; $6041: $6b
    ld e, d                                       ; $6042: $5a
    db $db                                        ; $6043: $db
    sub d                                         ; $6044: $92
    ld l, l                                       ; $6045: $6d
    adc l                                         ; $6046: $8d
    ld d, a                                       ; $6047: $57
    rrca                                          ; $6048: $0f
    cp h                                          ; $6049: $bc
    rst $38                                       ; $604a: $ff
    ld c, e                                       ; $604b: $4b
    rst $30                                       ; $604c: $f7
    sub $38                                       ; $604d: $d6 $38
    daa                                           ; $604f: $27
    db $e4                                        ; $6050: $e4
    ld a, l                                       ; $6051: $7d

jr_05a_6052:
    jr jr_05a_6052                                ; $6052: $18 $fe

    or e                                          ; $6054: $b3
    sbc l                                         ; $6055: $9d
    sbc e                                         ; $6056: $9b
    ld b, a                                       ; $6057: $47
    dec h                                         ; $6058: $25
    ld [hl], l                                    ; $6059: $75
    xor a                                         ; $605a: $af
    dec [hl]                                      ; $605b: $35
    jp hl                                         ; $605c: $e9


    ld d, b                                       ; $605d: $50
    jp c, $db6b                                   ; $605e: $da $6b $db

    adc d                                         ; $6061: $8a
    or [hl]                                       ; $6062: $b6
    cp l                                          ; $6063: $bd
    adc c                                         ; $6064: $89
    ld a, [bc]                                    ; $6065: $0a
    ld a, [bc]                                    ; $6066: $0a
    nop                                           ; $6067: $00
    ld a, h                                       ; $6068: $7c
    ld e, e                                       ; $6069: $5b
    and h                                         ; $606a: $a4
    sbc $80                                       ; $606b: $de $80
    ld d, b                                       ; $606d: $50
    dec h                                         ; $606e: $25
    ld [hl], l                                    ; $606f: $75
    ld l, a                                       ; $6070: $6f
    sub c                                         ; $6071: $91
    ld a, d                                       ; $6072: $7a
    inc bc                                        ; $6073: $03

jr_05a_6074:
    ld b, d                                       ; $6074: $42
    push bc                                       ; $6075: $c5
    dec c                                         ; $6076: $0d
    nop                                           ; $6077: $00
    ret nc                                        ; $6078: $d0

    and l                                         ; $6079: $a5
    sbc $80                                       ; $607a: $de $80
    ret nc                                        ; $607c: $d0

    dec h                                         ; $607d: $25
    cp [hl]                                       ; $607e: $be
    pop de                                        ; $607f: $d1
    db $fd                                        ; $6080: $fd
    ld [c], a                                     ; $6081: $e2
    add hl, bc                                    ; $6082: $09
    halt                                          ; $6083: $76
    cpl                                           ; $6084: $2f
    ld d, [hl]                                    ; $6085: $56
    xor b                                         ; $6086: $a8
    jr z, jr_05a_6074                             ; $6087: $28 $eb

    ld h, $52                                     ; $6089: $26 $52
    ld l, a                                       ; $608b: $6f
    inc [hl]                                      ; $608c: $34
    push hl                                       ; $608d: $e5
    ld d, h                                       ; $608e: $54
    ld c, c                                       ; $608f: $49
    call $faaf                                    ; $6090: $cd $af $fa
    xor $7f                                       ; $6093: $ee $7f
    ld b, l                                       ; $6095: $45
    ld a, [hl-]                                   ; $6096: $3a
    ld c, c                                       ; $6097: $49
    inc sp                                        ; $6098: $33
    or e                                          ; $6099: $b3
    adc h                                         ; $609a: $8c
    sub h                                         ; $609b: $94
    ld d, d                                       ; $609c: $52
    push bc                                       ; $609d: $c5
    ld l, c                                       ; $609e: $69
    cp d                                          ; $609f: $ba
    nop                                           ; $60a0: $00
    sbc [hl]                                      ; $60a1: $9e
    ld h, d                                       ; $60a2: $62
    ld a, [hl-]                                   ; $60a3: $3a
    db $e3                                        ; $60a4: $e3
    db $ec                                        ; $60a5: $ec
    call nz, $afd3                                ; $60a6: $c4 $d3 $af
    dec sp                                        ; $60a9: $3b
    ld l, d                                       ; $60aa: $6a
    push de                                       ; $60ab: $d5
    inc bc                                        ; $60ac: $03
    xor l                                         ; $60ad: $ad
    ld e, a                                       ; $60ae: $5f
    reti                                          ; $60af: $d9


    or h                                          ; $60b0: $b4
    sub l                                         ; $60b1: $95
    cp a                                          ; $60b2: $bf
    sub $91                                       ; $60b3: $d6 $91
    sub h                                         ; $60b5: $94
    ld b, e                                       ; $60b6: $43
    db $ec                                        ; $60b7: $ec
    ld c, $76                                     ; $60b8: $0e $76
    ld bc, $6f6e                                  ; $60ba: $01 $6e $6f
    ld d, d                                       ; $60bd: $52
    cp a                                          ; $60be: $bf
    ld c, c                                       ; $60bf: $49
    db $fd                                        ; $60c0: $fd
    ld [hl], d                                    ; $60c1: $72
    inc bc                                        ; $60c2: $03
    ld e, [hl]                                    ; $60c3: $5e
    ld e, c                                       ; $60c4: $59
    ld d, e                                       ; $60c5: $53
    ld c, [hl]                                    ; $60c6: $4e
    rst $30                                       ; $60c7: $f7
    dec e                                         ; $60c8: $1d
    ld a, [c]                                     ; $60c9: $f2
    jr jr_05a_60f7                                ; $60ca: $18 $2b

    ld hl, $b1ef                                  ; $60cc: $21 $ef $b1
    dec de                                        ; $60cf: $1b
    ld l, a                                       ; $60d0: $6f
    ld h, c                                       ; $60d1: $61
    xor c                                         ; $60d2: $a9
    ld l, b                                       ; $60d3: $68
    ld [hl], d                                    ; $60d4: $72
    pop bc                                        ; $60d5: $c1
    ld b, h                                       ; $60d6: $44
    dec h                                         ; $60d7: $25
    ei                                            ; $60d8: $fb
    ld e, $dd                                     ; $60d9: $1e $dd
    ld e, a                                       ; $60db: $5f
    and e                                         ; $60dc: $a3
    or l                                          ; $60dd: $b5
    ld l, l                                       ; $60de: $6d
    ld d, c                                       ; $60df: $51
    ld b, [hl]                                    ; $60e0: $46
    sub a                                         ; $60e1: $97
    jr c, @+$01                                   ; $60e2: $38 $ff

    ld e, e                                       ; $60e4: $5b
    pop de                                        ; $60e5: $d1
    or [hl]                                       ; $60e6: $b6
    and h                                         ; $60e7: $a4
    rst $18                                       ; $60e8: $df
    adc d                                         ; $60e9: $8a
    ld l, c                                       ; $60ea: $69
    pop de                                        ; $60eb: $d1
    ld a, [c]                                     ; $60ec: $f2
    sbc a                                         ; $60ed: $9f

Call_05a_60ee:
    ld a, l                                       ; $60ee: $7d
    push af                                       ; $60ef: $f5
    rst $20                                       ; $60f0: $e7
    rst $38                                       ; $60f1: $ff
    dec h                                         ; $60f2: $25
    ld a, b                                       ; $60f3: $78
    ldh [$fd], a                                  ; $60f4: $e0 $fd
    ld e, a                                       ; $60f6: $5f

jr_05a_60f7:
    ld c, c                                       ; $60f7: $49
    add hl, sp                                    ; $60f8: $39
    call nz, Call_05a_60ee                        ; $60f9: $c4 $ee $60
    rla                                           ; $60fc: $17
    nop                                           ; $60fd: $00
    ld a, h                                       ; $60fe: $7c
    and e                                         ; $60ff: $a3
    ei                                            ; $6100: $fb
    xor a                                         ; $6101: $af
    db $eb                                        ; $6102: $eb
    ld [bc], a                                    ; $6103: $02
    sbc h                                         ; $6104: $9c
    ld e, e                                       ; $6105: $5b
    and e                                         ; $6106: $a3
    add h                                         ; $6107: $84
    and l                                         ; $6108: $a5
    ld l, b                                       ; $6109: $68
    db $db                                        ; $610a: $db
    ld l, [hl]                                    ; $610b: $6e
    jp z, Jump_000_2e49                           ; $610c: $ca $49 $2e

    ld [$5fed], sp                                ; $610f: $08 $ed $5f
    inc de                                        ; $6112: $13
    ld a, l                                       ; $6113: $7d
    rst $38                                       ; $6114: $ff
    rst $20                                       ; $6115: $e7
    ld b, b                                       ; $6116: $40
    or [hl]                                       ; $6117: $b6
    cp a                                          ; $6118: $bf
    ld d, $25                                     ; $6119: $16 $25
    db $db                                        ; $611b: $db
    ld [hl], e                                    ; $611c: $73
    cpl                                           ; $611d: $2f
    dec h                                         ; $611e: $25
    push hl                                       ; $611f: $e5
    cp h                                          ; $6120: $bc
    ret nc                                        ; $6121: $d0

    ld e, [hl]                                    ; $6122: $5e
    sub e                                         ; $6123: $93
    adc b                                         ; $6124: $88
    db $dd                                        ; $6125: $dd
    ld de, $f4a5                                  ; $6126: $11 $a5 $f4
    ld l, a                                       ; $6129: $6f
    rst $38                                       ; $612a: $ff
    or a                                          ; $612b: $b7
    ld e, a                                       ; $612c: $5f
    ldh a, [$cb]                                  ; $612d: $f0 $cb
    ld a, c                                       ; $612f: $79
    and c                                         ; $6130: $a1
    cp l                                          ; $6131: $bd
    cp h                                          ; $6132: $bc
    ld b, a                                       ; $6133: $47
    cp h                                          ; $6134: $bc
    db $ed                                        ; $6135: $ed
    ld a, h                                       ; $6136: $7c
    dec h                                         ; $6137: $25
    or h                                          ; $6138: $b4
    and l                                         ; $6139: $a5
    ld a, [$fe74]                                 ; $613a: $fa $74 $fe
    ld e, a                                       ; $613d: $5f
    ld [hl], d                                    ; $613e: $72
    or b                                          ; $613f: $b0
    db $db                                        ; $6140: $db
    and h                                         ; $6141: $a4
    jp Jump_05a_7595                              ; $6142: $c3 $95 $75


    sub [hl]                                      ; $6145: $96
    ld l, c                                       ; $6146: $69
    ld h, [hl]                                    ; $6147: $66
    rst $20                                       ; $6148: $e7
    sub b                                         ; $6149: $90
    ld hl, sp-$4d                                 ; $614a: $f8 $b3
    sub e                                         ; $614c: $93
    ld sp, hl                                     ; $614d: $f9
    sbc a                                         ; $614e: $9f
    adc $b7                                       ; $614f: $ce $b7
    cp $4b                                        ; $6151: $fe $4b
    sbc [hl]                                      ; $6153: $9e
    xor $5a                                       ; $6154: $ee $5a
    ld a, a                                       ; $6156: $7f
    push hl                                       ; $6157: $e5
    rst $08                                       ; $6158: $cf
    ld a, d                                       ; $6159: $7a
    pop hl                                        ; $615a: $e1
    rla                                           ; $615b: $17
    rst $08                                       ; $615c: $cf
    daa                                           ; $615d: $27
    call nz, Call_000_2216                        ; $615e: $c4 $16 $22
    or h                                          ; $6161: $b4
    ld a, a                                       ; $6162: $7f
    push hl                                       ; $6163: $e5
    rst $08                                       ; $6164: $cf
    xor $b7                                       ; $6165: $ee $b7
    ld e, [hl]                                    ; $6167: $5e
    ld d, l                                       ; $6168: $55
    adc h                                         ; $6169: $8c
    inc e                                         ; $616a: $1c
    ccf                                           ; $616b: $3f
    xor c                                         ; $616c: $a9
    ld a, e                                       ; $616d: $7b
    xor l                                         ; $616e: $ad
    ld c, c                                       ; $616f: $49
    di                                            ; $6170: $f3
    xor e                                         ; $6171: $ab
    cp [hl]                                       ; $6172: $be
    ei                                            ; $6173: $fb
    ld e, a                                       ; $6174: $5f
    pop de                                        ; $6175: $d1
    or [hl]                                       ; $6176: $b6
    ld [hl], h                                    ; $6177: $74
    ret                                           ; $6178: $c9


    and e                                         ; $6179: $a3
    ld d, a                                       ; $617a: $57
    and c                                         ; $617b: $a1
    rra                                           ; $617c: $1f
    ld l, a                                       ; $617d: $6f
    cp l                                          ; $617e: $bd
    or d                                          ; $617f: $b2
    db $ed                                        ; $6180: $ed
    adc [hl]                                      ; $6181: $8e
    cp d                                          ; $6182: $ba
    db $e4                                        ; $6183: $e4
    add hl, sp                                    ; $6184: $39
    and l                                         ; $6185: $a5
    ld d, c                                       ; $6186: $51
    ld b, l                                       ; $6187: $45
    and l                                         ; $6188: $a5
    ld e, $fe                                     ; $6189: $1e $fe
    ei                                            ; $618b: $fb
    ld l, e                                       ; $618c: $6b
    dec e                                         ; $618d: $1d
    db $db                                        ; $618e: $db
    and h                                         ; $618f: $a4
    ld [hl], h                                    ; $6190: $74
    ld hl, $1d6f                                  ; $6191: $21 $6f $1d
    ld h, a                                       ; $6194: $67
    ld e, b                                       ; $6195: $58
    rst $38                                       ; $6196: $ff
    dec b                                         ; $6197: $05
    nop                                           ; $6198: $00
    db $fc                                        ; $6199: $fc
    db $e3                                        ; $619a: $e3
    add h                                         ; $619b: $84
    ld l, b                                       ; $619c: $68
    adc $25                                       ; $619d: $ce $25
    push af                                       ; $619f: $f5
    rst $08                                       ; $61a0: $cf
    ld e, a                                       ; $61a1: $5f
    db $db                                        ; $61a2: $db
    ld c, d                                       ; $61a3: $4a
    adc d                                         ; $61a4: $8a
    rst $20                                       ; $61a5: $e7
    add hl, de                                    ; $61a6: $19
    res 5, [hl]                                   ; $61a7: $cb $ae
    db $eb                                        ; $61a9: $eb
    ld [bc], a                                    ; $61aa: $02
    rst $10                                       ; $61ab: $d7
    ld [hl], l                                    ; $61ac: $75
    reti                                          ; $61ad: $d9


    ld [hl], a                                    ; $61ae: $77
    adc a                                         ; $61af: $8f
    pop bc                                        ; $61b0: $c1
    dec c                                         ; $61b1: $0d
    nop                                           ; $61b2: $00
    ret nc                                        ; $61b3: $d0

    xor l                                         ; $61b4: $ad
    jp Jump_05a_4195                              ; $61b5: $c3 $95 $41


    ld c, b                                       ; $61b8: $48
    pop de                                        ; $61b9: $d1
    or [hl]                                       ; $61ba: $b6
    scf                                           ; $61bb: $37
    sub c                                         ; $61bc: $91
    xor l                                         ; $61bd: $ad
    sbc d                                         ; $61be: $9a
    add sp, $34                                   ; $61bf: $e8 $34
    dec h                                         ; $61c1: $25
    push hl                                       ; $61c2: $e5
    db $10                                        ; $61c3: $10
    cp e                                          ; $61c4: $bb
    add e                                         ; $61c5: $83
    ld e, l                                       ; $61c6: $5d
    nop                                           ; $61c7: $00
    sbc h                                         ; $61c8: $9c
    and c                                         ; $61c9: $a1
    ld [hl], h                                    ; $61ca: $74
    ld h, b                                       ; $61cb: $60
    add l                                         ; $61cc: $85
    or b                                          ; $61cd: $b0
    db $e4                                        ; $61ce: $e4
    cp c                                          ; $61cf: $b9
    db $db                                        ; $61d0: $db
    ld e, $3a                                     ; $61d1: $1e $3a
    ld d, b                                       ; $61d3: $50
    ld b, b                                       ; $61d4: $40
    sub $3a                                       ; $61d5: $d6 $3a
    xor e                                         ; $61d7: $ab
    adc b                                         ; $61d8: $88
    ei                                            ; $61d9: $fb
    sbc $73                                       ; $61da: $de $73
    ld b, d                                       ; $61dc: $42
    add sp, -$05                                  ; $61dd: $e8 $fb
    ld a, e                                       ; $61df: $7b
    ld a, [hl]                                    ; $61e0: $7e
    rst $08                                       ; $61e1: $cf
    adc c                                         ; $61e2: $89
    and h                                         ; $61e3: $a4
    inc e                                         ; $61e4: $1c
    ld h, d                                       ; $61e5: $62
    ld [hl], a                                    ; $61e6: $77
    or b                                          ; $61e7: $b0
    dec bc                                        ; $61e8: $0b
    nop                                           ; $61e9: $00
    inc a                                         ; $61ea: $3c
    rst $08                                       ; $61eb: $cf

jr_05a_61ec:
    ld e, b                                       ; $61ec: $58
    sub [hl]                                      ; $61ed: $96
    call nc, $d3bd                                ; $61ee: $d4 $bd $d3
    and d                                         ; $61f1: $a2
    add l                                         ; $61f2: $85
    daa                                           ; $61f3: $27
    call nc, Call_05a_6aa3                        ; $61f4: $d4 $a3 $6a
    rst $08                                       ; $61f7: $cf
    ld a, c                                       ; $61f8: $79
    jr z, jr_05a_61ec                             ; $61f9: $28 $f1

    ld l, l                                       ; $61fb: $6d
    adc l                                         ; $61fc: $8d
    ld [de], a                                    ; $61fd: $12
    sub [hl]                                      ; $61fe: $96
    db $fc                                        ; $61ff: $fc
    sbc a                                         ; $6200: $9f
    inc de                                        ; $6201: $13
    dec [hl]                                      ; $6202: $35
    inc sp                                        ; $6203: $33
    sra b                                         ; $6204: $cb $28
    xor c                                         ; $6206: $a9
    adc c                                         ; $6207: $89
    ld [hl], $5f                                  ; $6208: $36 $5f
    ld a, b                                       ; $620a: $78
    and d                                         ; $620b: $a2
    sub h                                         ; $620c: $94
    rst $38                                       ; $620d: $ff
    ret                                           ; $620e: $c9


    ld de, $f47e                                  ; $620f: $11 $7e $f4
    db $fd                                        ; $6212: $fd
    dec a                                         ; $6213: $3d
    ld l, a                                       ; $6214: $6f
    rla                                           ; $6215: $17
    nop                                           ; $6216: $00
    ld c, $22                                     ; $6217: $0e $22
    rst $18                                       ; $6219: $df
    ld [hl], e                                    ; $621a: $73
    ld b, d                                       ; $621b: $42
    or $3d                                        ; $621c: $f6 $3d
    cp d                                          ; $621e: $ba
    ld d, a                                       ; $621f: $57
    db $db                                        ; $6220: $db
    ld d, $65                                     ; $6221: $16 $65
    sub h                                         ; $6223: $94
    inc d                                         ; $6224: $14
    db $fc                                        ; $6225: $fc
    ld [c], a                                     ; $6226: $e2
    db $fd                                        ; $6227: $fd
    inc sp                                        ; $6228: $33
    sbc a                                         ; $6229: $9f
    and c                                         ; $622a: $a1
    jp hl                                         ; $622b: $e9


    ld h, $62                                     ; $622c: $26 $62
    ld h, h                                       ; $622e: $64
    xor e                                         ; $622f: $ab
    ld a, e                                       ; $6230: $7b
    ld l, e                                       ; $6231: $6b
    or h                                          ; $6232: $b4
    and d                                         ; $6233: $a2
    ld l, l                                       ; $6234: $6d
    ld l, a                                       ; $6235: $6f
    and d                                         ; $6236: $a2
    jp nc, $c56f                                  ; $6237: $d2 $6f $c5

    or h                                          ; $623a: $b4
    ld a, l                                       ; $623b: $7d
    ld sp, hl                                     ; $623c: $f9
    rst $08                                       ; $623d: $cf
    cp [hl]                                       ; $623e: $be
    ld l, d                                       ; $623f: $6a
    jr jr_05a_627e                                ; $6240: $18 $3c

    ldh a, [$fe]                                  ; $6242: $f0 $fe
    xor a                                         ; $6244: $af
    dec bc                                        ; $6245: $0b
    nop                                           ; $6246: $00
    ld a, h                                       ; $6247: $7c
    ld d, c                                       ; $6248: $51
    and c                                         ; $6249: $a1
    sbc c                                         ; $624a: $99
    ld e, c                                       ; $624b: $59
    halt                                          ; $624c: $76
    inc de                                        ; $624d: $13
    sub l                                         ; $624e: $95
    ld a, b                                       ; $624f: $78
    ld a, $21                                     ; $6250: $3e $21
    or [hl]                                       ; $6252: $b6
    sub b                                         ; $6253: $90
    ld c, e                                       ; $6254: $4b
    inc a                                         ; $6255: $3c
    ld d, h                                       ; $6256: $54
    ld [$268d], a                                 ; $6257: $ea $8d $26
    ld d, d                                       ; $625a: $52
    halt                                          ; $625b: $76
    ld [hl+], a                                   ; $625c: $22
    jp z, Jump_05a_4548                           ; $625d: $ca $48 $45

    ld l, e                                       ; $6260: $6b
    ld c, l                                       ; $6261: $4d
    add d                                         ; $6262: $82
    ld b, a                                       ; $6263: $47
    adc a                                         ; $6264: $8f
    or l                                          ; $6265: $b5
    cp $0b                                        ; $6266: $fe $0b
    nop                                           ; $6268: $00
    inc a                                         ; $6269: $3c
    rst $08                                       ; $626a: $cf
    ld e, b                                       ; $626b: $58
    sub [hl]                                      ; $626c: $96
    call nc, $93bd                                ; $626d: $d4 $bd $93
    ld c, h                                       ; $6270: $4c
    ld [hl], $5a                                  ; $6271: $36 $5a
    ld c, l                                       ; $6273: $4d
    ld d, l                                       ; $6274: $55
    and c                                         ; $6275: $a1
    ld e, $a8                                     ; $6276: $1e $a8
    add hl, de                                    ; $6278: $19
    ld [hl], $a3                                  ; $6279: $36 $a3
    call nc, Call_05a_6aa3                        ; $627b: $d4 $a3 $6a

jr_05a_627e:
    dec bc                                        ; $627e: $0b
    ld a, [bc]                                    ; $627f: $0a
    nop                                           ; $6280: $00
    ld c, $19                                     ; $6281: $0e $19
    ld h, $18                                     ; $6283: $26 $18
    ld h, [hl]                                    ; $6285: $66
    ret z                                         ; $6286: $c8

    ld d, [hl]                                    ; $6287: $56
    cp h                                          ; $6288: $bc
    ld a, a                                       ; $6289: $7f
    and $33                                       ; $628a: $e6 $33
    inc [hl]                                      ; $628c: $34
    dec e                                         ; $628d: $1d
    ld c, d                                       ; $628e: $4a
    and e                                         ; $628f: $a3
    ld a, e                                       ; $6290: $7b
    ld [hl], l                                    ; $6291: $75
    ld l, a                                       ; $6292: $6f
    adc l                                         ; $6293: $8d
    ld d, [hl]                                    ; $6294: $56
    or h                                          ; $6295: $b4
    db $ed                                        ; $6296: $ed
    ld c, l                                       ; $6297: $4d
    ld d, h                                       ; $6298: $54
    add d                                         ; $6299: $82
    rlca                                          ; $629a: $07
    sbc $5f                                       ; $629b: $de $5f
    ld a, [$30ad]                                 ; $629d: $fa $ad $30
    or h                                          ; $62a0: $b4
    ld a, l                                       ; $62a1: $7d
    scf                                           ; $62a2: $37
    inc [hl]                                      ; $62a3: $34
    pop de                                        ; $62a4: $d1
    rst $30                                       ; $62a5: $f7
    ld a, a                                       ; $62a6: $7f
    ld c, $64                                     ; $62a7: $0e $64
    ei                                            ; $62a9: $fb
    ld l, e                                       ; $62aa: $6b
    ld d, c                                       ; $62ab: $51
    or d                                          ; $62ac: $b2
    dec a                                         ; $62ad: $3d
    rst $30                                       ; $62ae: $f7
    ld d, d                                       ; $62af: $52
    ld d, d                                       ; $62b0: $52
    sbc $23                                       ; $62b1: $de $23
    sbc $76                                       ; $62b3: $de $76
    cp [hl]                                       ; $62b5: $be
    ld [de], a                                    ; $62b6: $12
    jp c, Jump_05a_7d52                           ; $62b7: $da $52 $7d

    ld a, [hl-]                                   ; $62ba: $3a
    rst $38                                       ; $62bb: $ff
    dec b                                         ; $62bc: $05
    cp a                                          ; $62bd: $bf
    ld h, $11                                     ; $62be: $26 $11
    cp e                                          ; $62c0: $bb
    inc hl                                        ; $62c1: $23
    ld c, d                                       ; $62c2: $4a
    jp hl                                         ; $62c3: $e9


    rst $18                                       ; $62c4: $df
    cp $6f                                        ; $62c5: $fe $6f
    rst $38                                       ; $62c7: $ff
    dec b                                         ; $62c8: $05
    nop                                           ; $62c9: $00
    ld c, $76                                     ; $62ca: $0e $76
    sbc e                                         ; $62cc: $9b
    ld [hl], h                                    ; $62cd: $74
    cp b                                          ; $62ce: $b8
    or d                                          ; $62cf: $b2
    adc $32                                       ; $62d0: $ce $32
    pop bc                                        ; $62d2: $c1
    ld l, b                                       ; $62d3: $68
    ld [hl], e                                    ; $62d4: $73
    sbc b                                         ; $62d5: $98
    ld [hl], $fd                                  ; $62d6: $36 $fd
    jp nc, Jump_05a_71c4                          ; $62d8: $d2 $c4 $71

    ld b, [hl]                                    ; $62db: $46
    ret                                           ; $62dc: $c9


    rst $18                                       ; $62dd: $df
    db $f4                                        ; $62de: $f4
    ld c, a                                       ; $62df: $4f
    rst $38                                       ; $62e0: $ff
    dec h                                         ; $62e1: $25
    adc a                                         ; $62e2: $8f
    ld e, [hl]                                    ; $62e3: $5e
    rst $30                                       ; $62e4: $f7
    ld [hl], $c9                                  ; $62e5: $36 $c9
    halt                                          ; $62e7: $76
    db $d3                                        ; $62e8: $d3
    sub b                                         ; $62e9: $90
    rst $30                                       ; $62ea: $f7
    adc b                                         ; $62eb: $88
    or a                                          ; $62ec: $b7
    sbc l                                         ; $62ed: $9d
    xor a                                         ; $62ee: $af
    add h                                         ; $62ef: $84
    or [hl]                                       ; $62f0: $b6
    ld d, h                                       ; $62f1: $54
    sbc a                                         ; $62f2: $9f
    adc $ff                                       ; $62f3: $ce $ff
    ld d, d                                       ; $62f5: $52
    adc a                                         ; $62f6: $8f
    inc de                                        ; $62f7: $13
    sub c                                         ; $62f8: $91
    ld d, h                                       ; $62f9: $54
    db $ed                                        ; $62fa: $ed
    sub [hl]                                      ; $62fb: $96
    and d                                         ; $62fc: $a2
    ld a, h                                       ; $62fd: $7c
    jp nc, $77a6                                  ; $62fe: $d2 $a6 $77

    ld [hl], h                                    ; $6301: $74
    rst $00                                       ; $6302: $c7
    ld e, c                                       ; $6303: $59
    ld d, e                                       ; $6304: $53
    cp $3b                                        ; $6305: $fe $3b
    rst $20                                       ; $6307: $e7
    adc e                                         ; $6308: $8b
    rst $30                                       ; $6309: $f7
    rst $08                                       ; $630a: $cf
    ld a, h                                       ; $630b: $7c
    add [hl]                                      ; $630c: $86
    db $d3                                        ; $630d: $d3
    ld [c], a                                     ; $630e: $e2
    sbc h                                         ; $630f: $9c
    rla                                           ; $6310: $17
    xor [hl]                                      ; $6311: $ae
    ret                                           ; $6312: $c9


    ld [c], a                                     ; $6313: $e2
    sbc h                                         ; $6314: $9c
    or a                                          ; $6315: $b7
    ld a, [hl]                                    ; $6316: $7e
    ld [hl], l                                    ; $6317: $75
    add $95                                       ; $6318: $c6 $95
    ld c, $ac                                     ; $631a: $0e $ac
    ld [$ffb3], sp                                ; $631c: $08 $b3 $ff
    ld c, d                                       ; $631f: $4a
    ld l, d                                       ; $6320: $6a
    adc [hl]                                      ; $6321: $8e
    sub d                                         ; $6322: $92
    add l                                         ; $6323: $85
    ld l, d                                       ; $6324: $6a
    or a                                          ; $6325: $b7
    call nc, $9cd9                                ; $6326: $d4 $d9 $9c
    ld b, h                                       ; $6329: $44
    sbc d                                         ; $632a: $9a
    ld b, h                                       ; $632b: $44
    db $ec                                        ; $632c: $ec
    adc [hl]                                      ; $632d: $8e
    or l                                          ; $632e: $b5
    and [hl]                                      ; $632f: $a6
    dec bc                                        ; $6330: $0b
    nop                                           ; $6331: $00
    inc a                                         ; $6332: $3c

Jump_05a_6333:
    or h                                          ; $6333: $b4
    ld l, h                                       ; $6334: $6c
    db $db                                        ; $6335: $db
    and d                                         ; $6336: $a2
    add l                                         ; $6337: $85
    cp [hl]                                       ; $6338: $be
    cp a                                          ; $6339: $bf
    dec a                                         ; $633a: $3d
    xor d                                         ; $633b: $aa
    rst $30                                       ; $633c: $f7
    cp c                                          ; $633d: $b9
    push hl                                       ; $633e: $e5
    ld sp, hl                                     ; $633f: $f9
    xor [hl]                                      ; $6340: $ae
    xor l                                         ; $6341: $ad
    db $fc                                        ; $6342: $fc
    or l                                          ; $6343: $b5
    adc [hl]                                      ; $6344: $8e
    ld l, [hl]                                    ; $6345: $6e
    sub d                                         ; $6346: $92
    adc a                                         ; $6347: $8f
    ld l, e                                       ; $6348: $6b
    ld a, [c]                                     ; $6349: $f2
    inc d                                         ; $634a: $14
    db $d3                                        ; $634b: $d3
    add hl, de                                    ; $634c: $19
    ld h, a                                       ; $634d: $67
    daa                                           ; $634e: $27
    sbc [hl]                                      ; $634f: $9e
    ld a, [hl]                                    ; $6350: $7e
    ld l, [hl]                                    ; $6351: $6e

jr_05a_6352:
    nop                                           ; $6352: $00
    inc e                                         ; $6353: $1c
    db $10                                        ; $6354: $10
    db $ec                                        ; $6355: $ec
    scf                                           ; $6356: $37
    push hl                                       ; $6357: $e5
    sub h                                         ; $6358: $94
    ld d, d                                       ; $6359: $52
    ld e, l                                       ; $635a: $5d
    rst $10                                       ; $635b: $d7
    dec h                                         ; $635c: $25
    sbc [hl]                                      ; $635d: $9e

jr_05a_635e:
    ld c, a                                       ; $635e: $4f
    adc b                                         ; $635f: $88
    dec l                                         ; $6360: $2d
    ld b, h                                       ; $6361: $44
    or $85                                        ; $6362: $f6 $85
    xor e                                         ; $6364: $ab
    dec sp                                        ; $6365: $3b
    ld h, e                                       ; $6366: $63
    inc sp                                        ; $6367: $33
    db $eb                                        ; $6368: $eb
    and [hl]                                      ; $6369: $a6
    adc d                                         ; $636a: $8a
    jr z, jr_05a_6390                             ; $636b: $28 $23

    dec [hl]                                      ; $636d: $35
    pop de                                        ; $636e: $d1
    add hl, sp                                    ; $636f: $39
    and h                                         ; $6370: $a4
    adc c                                         ; $6371: $89
    cp [hl]                                       ; $6372: $be
    rst $38                                       ; $6373: $ff
    ld [hl], e                                    ; $6374: $73
    jr nz, jr_05a_6352                            ; $6375: $20 $db

    ld e, a                                       ; $6377: $5f
    db $db                                        ; $6378: $db
    rst $20                                       ; $6379: $e7
    ld b, $bc                                     ; $637a: $06 $bc
    add sp, -$05                                  ; $637c: $e8 $fb
    ccf                                           ; $637e: $3f
    rlca                                          ; $637f: $07
    or d                                          ; $6380: $b2
    db $fd                                        ; $6381: $fd
    or l                                          ; $6382: $b5
    jr z, jr_05a_635e                             ; $6383: $28 $d9

    sbc [hl]                                      ; $6385: $9e
    ld a, e                                       ; $6386: $7b
    add hl, hl                                    ; $6387: $29
    xor c                                         ; $6388: $a9
    ld [hl], h                                    ; $6389: $74
    and e                                         ; $638a: $a3
    ld d, b                                       ; $638b: $50
    add hl, hl                                    ; $638c: $29
    sbc $f7                                       ; $638d: $de $f7
    ld [hl], e                                    ; $638f: $73

jr_05a_6390:
    inc bc                                        ; $6390: $03
    ld c, $e8                                     ; $6391: $0e $e8
    and [hl]                                      ; $6393: $a6
    sub h                                         ; $6394: $94
    ld c, d                                       ; $6395: $4a
    ld b, l                                       ; $6396: $45
    ld e, c                                       ; $6397: $59
    scf                                           ; $6398: $37
    push hl                                       ; $6399: $e5
    call nc, Call_05a_6ae2                        ; $639a: $d4 $e2 $6a
    xor [hl]                                      ; $639d: $ae
    ld c, c                                       ; $639e: $49
    dec h                                         ; $639f: $25
    db $db                                        ; $63a0: $db
    ld [hl], e                                    ; $63a1: $73
    rst $28                                       ; $63a2: $ef
    ld l, c                                       ; $63a3: $69
    cp d                                          ; $63a4: $ba
    xor [hl]                                      ; $63a5: $ae
    ld c, e                                       ; $63a6: $4b
    inc de                                        ; $63a7: $13
    ld a, l                                       ; $63a8: $7d
    rst $38                                       ; $63a9: $ff
    rst $20                                       ; $63aa: $e7
    ld b, b                                       ; $63ab: $40
    or [hl]                                       ; $63ac: $b6
    cp a                                          ; $63ad: $bf
    ld d, $25                                     ; $63ae: $16 $25
    db $db                                        ; $63b0: $db
    ld [hl], e                                    ; $63b1: $73
    rst $28                                       ; $63b2: $ef
    ld l, c                                       ; $63b3: $69
    ld [c], a                                     ; $63b4: $e2
    ld b, $fc                                     ; $63b5: $06 $fc
    ld [hl], h                                    ; $63b7: $74
    sub e                                         ; $63b8: $93
    ld h, $11                                     ; $63b9: $26 $11
    cp e                                          ; $63bb: $bb
    ld b, e                                       ; $63bc: $43
    ld b, l                                       ; $63bd: $45
    ld e, c                                       ; $63be: $59
    scf                                           ; $63bf: $37
    sub c                                         ; $63c0: $91
    ld [hl], d                                    ; $63c1: $72
    ld c, d                                       ; $63c2: $4a
    xor c                                         ; $63c3: $a9
    sub h                                         ; $63c4: $94
    cp [hl]                                       ; $63c5: $be

jr_05a_63c6:
    reti                                          ; $63c6: $d9


    jr c, jr_05a_63c6                             ; $63c7: $38 $fd

    rst $10                                       ; $63c9: $d7
    ld [hl], l                                    ; $63ca: $75
    ld bc, $74fc                                  ; $63cb: $01 $fc $74
    sub e                                         ; $63ce: $93
    or b                                          ; $63cf: $b0
    add h                                         ; $63d0: $84
    dec sp                                        ; $63d1: $3b
    db $e3                                        ; $63d2: $e3
    dec [hl]                                      ; $63d3: $35
    adc c                                         ; $63d4: $89
    ret c                                         ; $63d5: $d8

    dec e                                         ; $63d6: $1d
    ld d, c                                       ; $63d7: $51
    xor d                                         ; $63d8: $aa
    ld c, a                                       ; $63d9: $4f
    rst $20                                       ; $63da: $e7
    ld e, a                                       ; $63db: $5f
    ld [c], a                                     ; $63dc: $e2
    dec de                                        ; $63dd: $1b
    db $dd                                        ; $63de: $dd
    xor a                                         ; $63df: $af
    inc [hl]                                      ; $63e0: $34
    ld a, d                                       ; $63e1: $7a
    ld l, [hl]                                    ; $63e2: $6e
    ld b, l                                       ; $63e3: $45
    ld e, l                                       ; $63e4: $5d
    rst $10                                       ; $63e5: $d7
    dec h                                         ; $63e6: $25
    rst $28                                       ; $63e7: $ef
    ld de, $3b6f                                  ; $63e8: $11 $6f $3b
    ld e, a                                       ; $63eb: $5f
    add hl, bc                                    ; $63ec: $09
    ld l, l                                       ; $63ed: $6d
    ld a, [$2c25]                                 ; $63ee: $fa $25 $2c
    ld c, l                                       ; $63f1: $4d
    ld [hl+], a                                   ; $63f2: $22
    halt                                          ; $63f3: $76
    rlca                                          ; $63f4: $07
    scf                                           ; $63f5: $37
    nop                                           ; $63f6: $00
    ld a, h                                       ; $63f7: $7c
    db $db                                        ; $63f8: $db
    and h                                         ; $63f9: $a4
    ld a, a                                       ; $63fa: $7f
    ld d, [hl]                                    ; $63fb: $56
    dec sp                                        ; $63fc: $3b
    or c                                          ; $63fd: $b1
    rst $20                                       ; $63fe: $e7
    sub a                                         ; $63ff: $97
    ld a, [$06cd]                                 ; $6400: $fa $cd $06
    inc e                                         ; $6403: $1c
    and l                                         ; $6404: $a5
    sbc h                                         ; $6405: $9c
    adc $9a                                       ; $6406: $ce $9a
    sub c                                         ; $6408: $91
    or b                                          ; $6409: $b0
    and b                                         ; $640a: $a0
    nop                                           ; $640b: $00
    ld c, $e8                                     ; $640c: $0e $e8
    ld h, $61                                     ; $640e: $26 $61
    cp $ad                                        ; $6410: $fe $ad
    db $fc                                        ; $6412: $fc
    reti                                          ; $6413: $d9


    db $fd                                        ; $6414: $fd
    sub $ab                                       ; $6415: $d6 $ab
    ld c, c                                       ; $6417: $49
    call nz, $88ee                                ; $6418: $c4 $ee $88
    ld d, d                                       ; $641b: $52
    ld a, [$ffb7]                                 ; $641c: $fa $b7 $ff
    db $db                                        ; $641f: $db
    ld a, a                                       ; $6420: $7f
    adc c                                         ; $6421: $89
    rra                                           ; $6422: $1f
    scf                                           ; $6423: $37
    rst $00                                       ; $6424: $c7
    xor $cf                                       ; $6425: $ee $cf
    rst $18                                       ; $6427: $df
    ld a, d                                       ; $6428: $7a
    ld d, l                                       ; $6429: $55
    ld hl, $bfcc                                  ; $642a: $21 $cc $bf
    add l                                         ; $642d: $85
    dec sp                                        ; $642e: $3b
    db $e3                                        ; $642f: $e3
    db $eb                                        ; $6430: $eb
    db $fc                                        ; $6431: $fc
    jp c, Jump_000_05fe                           ; $6432: $da $fe $05

    nop                                           ; $6435: $00
    ld c, $e8                                     ; $6436: $0e $e8
    ld h, $fd                                     ; $6438: $26 $fd
    ld d, [hl]                                    ; $643a: $56
    ld c, h                                       ; $643b: $4c
    adc e                                         ; $643c: $8b
    ld d, [hl]                                    ; $643d: $56
    ld l, h                                       ; $643e: $6c
    ld c, [hl]                                    ; $643f: $4e
    dec l                                         ; $6440: $2d
    or [hl]                                       ; $6441: $b6
    db $db                                        ; $6442: $db
    ld [hl], h                                    ; $6443: $74
    ret                                           ; $6444: $c9


    ld [hl], e                                    ; $6445: $73
    ld c, d                                       ; $6446: $4a
    and e                                         ; $6447: $a3
    ld a, [hl+]                                   ; $6448: $2a
    sbc d                                         ; $6449: $9a
    xor b                                         ; $644a: $a8
    sub h                                         ; $644b: $94
    ld c, l                                       ; $644c: $4d
    ld e, e                                       ; $644d: $5b
    ld sp, hl                                     ; $644e: $f9
    ld l, e                                       ; $644f: $6b
    dec e                                         ; $6450: $1d
    sub a                                         ; $6451: $97
    inc a                                         ; $6452: $3c
    ld a, [de]                                    ; $6453: $1a
    ld h, a                                       ; $6454: $67
    adc $9d                                       ; $6455: $ce $9d
    or [hl]                                       ; $6457: $b6
    ccf                                           ; $6458: $3f
    rst $38                                       ; $6459: $ff
    ld c, e                                       ; $645a: $4b
    or c                                          ; $645b: $b1
    ld a, [hl+]                                   ; $645c: $2a
    adc d                                         ; $645d: $8a
    ei                                            ; $645e: $fb
    ld h, $fd                                     ; $645f: $26 $fd
    sub $0b                                       ; $6461: $d6 $0b
    xor e                                         ; $6463: $ab
    sub $fa                                       ; $6464: $d6 $fa
    cpl                                           ; $6466: $2f
    ld a, c                                       ; $6467: $79
    db $f4                                        ; $6468: $f4
    dec a                                         ; $6469: $3d
    ld e, a                                       ; $646a: $5f
    pop de                                        ; $646b: $d1
    or [hl]                                       ; $646c: $b6
    rst $30                                       ; $646d: $f7
    ld e, d                                       ; $646e: $5a
    db $d3                                        ; $646f: $d3
    dec b                                         ; $6470: $05
    nop                                           ; $6471: $00
    db $fc                                        ; $6472: $fc
    ld h, h                                       ; $6473: $64
    ld b, [hl]                                    ; $6474: $46
    adc d                                         ; $6475: $8a
    dec d                                         ; $6476: $15
    sbc [hl]                                      ; $6477: $9e
    ret nc                                        ; $6478: $d0

    db $fc                                        ; $6479: $fc
    sbc l                                         ; $647a: $9d
    ld [hl], e                                    ; $647b: $73
    cpl                                           ; $647c: $2f
    ld a, c                                       ; $647d: $79
    ld c, [hl]                                    ; $647e: $4e
    ld l, c                                       ; $647f: $69
    ld d, h                                       ; $6480: $54
    ld b, l                                       ; $6481: $45
    inc de                                        ; $6482: $13
    sub l                                         ; $6483: $95
    or d                                          ; $6484: $b2
    ld l, c                                       ; $6485: $69
    dec hl                                        ; $6486: $2b
    ld a, a                                       ; $6487: $7f
    xor l                                         ; $6488: $ad
    db $e3                                        ; $6489: $e3
    sub d                                         ; $648a: $92
    ld d, a                                       ; $648b: $57
    sub $94                                       ; $648c: $d6 $94
    sub e                                         ; $648e: $93
    xor l                                         ; $648f: $ad
    inc a                                         ; $6490: $3c
    add $4a                                       ; $6491: $c6 $4a
    ret z                                         ; $6493: $c8

    ld a, e                                       ; $6494: $7b
    db $ec                                        ; $6495: $ec
    add $5b                                       ; $6496: $c6 $5b
    sub e                                         ; $6498: $93
    sbc b                                         ; $6499: $98
    db $ed                                        ; $649a: $ed
    ld l, d                                       ; $649b: $6a
    cp $ce                                        ; $649c: $fe $ce
    jr z, @-$01                                   ; $649e: $28 $fd

    adc $ff                                       ; $64a0: $ce $ff
    and h                                         ; $64a2: $a4
    inc e                                         ; $64a3: $1c
    ld h, d                                       ; $64a4: $62
    ld [hl], a                                    ; $64a5: $77
    or b                                          ; $64a6: $b0
    dec bc                                        ; $64a7: $0b
    nop                                           ; $64a8: $00
    ld e, $ef                                     ; $64a9: $1e $ef
    ld a, [hl]                                    ; $64ab: $7e
    add hl, hl                                    ; $64ac: $29
    and a                                         ; $64ad: $a7
    sub h                                         ; $64ae: $94
    ld c, d                                       ; $64af: $4a
    cp a                                          ; $64b0: $bf
    dec d                                         ; $64b1: $15
    db $d3                                        ; $64b2: $d3
    or $93                                        ; $64b3: $f6 $93
    ld [hl], d                                    ; $64b5: $72
    adc b                                         ; $64b6: $88
    db $dd                                        ; $64b7: $dd
    pop bc                                        ; $64b8: $c1
    ld l, $39                                     ; $64b9: $2e $39
    db $fc                                        ; $64bb: $fc
    di                                            ; $64bc: $f3
    xor a                                         ; $64bd: $af
    cp $f9                                        ; $64be: $fe $f9
    ld l, e                                       ; $64c0: $6b
    ld e, e                                       ; $64c1: $5b

jr_05a_64c2:
    adc d                                         ; $64c2: $8a
    or [hl]                                       ; $64c3: $b6
    cp l                                          ; $64c4: $bd
    adc c                                         ; $64c5: $89
    ld [$5e02], a                                 ; $64c6: $ea $02 $5e
    ld e, c                                       ; $64c9: $59
    ld d, e                                       ; $64ca: $53
    ld c, [hl]                                    ; $64cb: $4e
    or [hl]                                       ; $64cc: $b6
    adc d                                         ; $64cd: $8a
    ld d, l                                       ; $64ce: $55
    adc [hl]                                      ; $64cf: $8e
    ld e, e                                       ; $64d0: $5b
    and e                                         ; $64d1: $a3
    dec d                                         ; $64d2: $15
    ld b, l                                       ; $64d3: $45
    inc h                                         ; $64d4: $24
    add h                                         ; $64d5: $84
    ld h, b                                       ; $64d6: $60
    rst $30                                       ; $64d7: $f7
    ld a, a                                       ; $64d8: $7f
    ld d, d                                       ; $64d9: $52
    ld sp, hl                                     ; $64da: $f9
    ld a, a                                       ; $64db: $7f
    jp hl                                         ; $64dc: $e9


    ld d, b                                       ; $64dd: $50
    jp c, $fb2b                                   ; $64de: $da $2b $fb

    ld h, l                                       ; $64e1: $65
    rst $38                                       ; $64e2: $ff
    rst $20                                       ; $64e3: $e7
    ld l, l                                       ; $64e4: $6d
    rst $10                                       ; $64e5: $d7
    adc a                                         ; $64e6: $8f
    jr z, jr_05a_64c2                             ; $64e7: $28 $d9

    rst $38                                       ; $64e9: $ff
    db $fd                                        ; $64ea: $fd
    ld e, a                                       ; $64eb: $5f
    ld c, d                                       ; $64ec: $4a
    ld [hl], c                                    ; $64ed: $71
    dec de                                        ; $64ee: $1b
    rst $38                                       ; $64ef: $ff
    ld [de], a                                    ; $64f0: $12
    ld c, a                                       ; $64f1: $4f
    db $ec                                        ; $64f2: $ec
    sbc h                                         ; $64f3: $9c
    jr z, jr_05a_6511                             ; $64f4: $28 $1b

    ret z                                         ; $64f6: $c8

    or [hl]                                       ; $64f7: $b6
    add a                                         ; $64f8: $87
    dec h                                         ; $64f9: $25
    push hl                                       ; $64fa: $e5
    db $10                                        ; $64fb: $10
    cp e                                          ; $64fc: $bb
    add e                                         ; $64fd: $83
    ld e, l                                       ; $64fe: $5d
    ld a, [c]                                     ; $64ff: $f2
    inc d                                         ; $6500: $14
    db $d3                                        ; $6501: $d3
    add hl, de                                    ; $6502: $19
    ld h, a                                       ; $6503: $67
    daa                                           ; $6504: $27
    sbc [hl]                                      ; $6505: $9e
    ld a, [hl]                                    ; $6506: $7e
    push hl                                       ; $6507: $e5
    sub h                                         ; $6508: $94
    ld b, [hl]                                    ; $6509: $46
    ld d, l                                       ; $650a: $55
    inc [hl]                                      ; $650b: $34
    ld d, c                                       ; $650c: $51
    ret                                           ; $650d: $c9


    ld h, l                                       ; $650e: $65
    ld sp, hl                                     ; $650f: $f9
    ld l, e                                       ; $6510: $6b

jr_05a_6511:
    dec e                                         ; $6511: $1d
    db $dd                                        ; $6512: $dd
    ld [hl], h                                    ; $6513: $74
    adc c                                         ; $6514: $89
    ld a, a                                       ; $6515: $7f
    ld d, h                                       ; $6516: $54
    xor a                                         ; $6517: $af
    or b                                          ; $6518: $b0
    db $e4                                        ; $6519: $e4
    inc de                                        ; $651a: $13
    ld [hl], l                                    ; $651b: $75
    ld h, a                                       ; $651c: $67
    sub l                                         ; $651d: $95
    push af                                       ; $651e: $f5
    dec b                                         ; $651f: $05
    nop                                           ; $6520: $00
    ld c, $50                                     ; $6521: $0e $50
    or l                                          ; $6523: $b5
    ld e, e                                       ; $6524: $5b
    ld c, c                                       ; $6525: $49
    push hl                                       ; $6526: $e5
    ld a, a                                       ; $6527: $7f
    xor $b5                                       ; $6528: $ee $b5
    ld a, [hl]                                    ; $652a: $7e
    push af                                       ; $652b: $f5
    jr c, jr_05a_65a9                             ; $652c: $38 $7b

    ret                                           ; $652e: $c9


    dec hl                                        ; $652f: $2b
    or [hl]                                       ; $6530: $b6
    db $dd                                        ; $6531: $dd
    inc [hl]                                      ; $6532: $34
    cp c                                          ; $6533: $b9
    cp b                                          ; $6534: $b8
    ld c, d                                       ; $6535: $4a
    cp h                                          ; $6536: $bc
    ld a, a                                       ; $6537: $7f
    and $33                                       ; $6538: $e6 $33
    inc [hl]                                      ; $653a: $34
    ld d, l                                       ; $653b: $55
    sub $ca                                       ; $653c: $d6 $ca
    add hl, hl                                    ; $653e: $29
    adc l                                         ; $653f: $8d
    ld l, d                                       ; $6540: $6a
    ld [hl+], a                                   ; $6541: $22
    ld sp, hl                                     ; $6542: $f9
    ld l, e                                       ; $6543: $6b
    dec e                                         ; $6544: $1d
    db $db                                        ; $6545: $db
    call nz, Call_000_000d                        ; $6546: $c4 $0d $00
    cp h                                          ; $6549: $bc
    ld h, e                                       ; $654a: $63
    ret c                                         ; $654b: $d8

    xor d                                         ; $654c: $aa
    add a                                         ; $654d: $87
    rst $38                                       ; $654e: $ff
    cp $5a                                        ; $654f: $fe $5a
    ld b, a                                       ; $6551: $47
    scf                                           ; $6552: $37
    jp hl                                         ; $6553: $e9


    or a                                          ; $6554: $b7
    jp nz, Jump_05a_4a3a                          ; $6555: $c2 $3a $4a

    add a                                         ; $6558: $87
    dec hl                                        ; $6559: $2b
    ld l, e                                       ; $655a: $6b
    cp d                                          ; $655b: $ba
    rst $10                                       ; $655c: $d7
    jp nz, $929a                                  ; $655d: $c2 $9a $92

    cp d                                          ; $6560: $ba
    ld b, a                                       ; $6561: $47
    rst $30                                       ; $6562: $f7
    dec hl                                        ; $6563: $2b
    and a                                         ; $6564: $a7
    inc [hl]                                      ; $6565: $34
    xor d                                         ; $6566: $aa
    xor b                                         ; $6567: $a8
    ld d, h                                       ; $6568: $54
    cp e                                          ; $6569: $bb
    sub $a4                                       ; $656a: $d6 $a4
    inc l                                         ; $656c: $2c
    add l                                         ; $656d: $85
    ld b, h                                       ; $656e: $44
    dec h                                         ; $656f: $25
    dec [hl]                                      ; $6570: $35
    pop de                                        ; $6571: $d1
    and $cb                                       ; $6572: $e6 $cb
    halt                                          ; $6574: $76
    adc e                                         ; $6575: $8b
    inc [hl]                                      ; $6576: $34
    jp Jump_05a_557a                              ; $6577: $c3 $7a $55


    cp e                                          ; $657a: $bb
    and l                                         ; $657b: $a5
    ld sp, hl                                     ; $657c: $f9
    db $e3                                        ; $657d: $e3
    db $eb                                        ; $657e: $eb
    ld [de], a                                    ; $657f: $12
    rst $28                                       ; $6580: $ef
    ld l, $8b                                     ; $6581: $2e $8b
    inc d                                         ; $6583: $14
    or d                                          ; $6584: $b2
    add hl, hl                                    ; $6585: $29
    sub l                                         ; $6586: $95
    ld a, [hl+]                                   ; $6587: $2a
    ld l, e                                       ; $6588: $6b
    ld e, c                                       ; $6589: $59
    inc c                                         ; $658a: $0c
    or $9f                                        ; $658b: $f6 $9f
    rst $38                                       ; $658d: $ff
    add hl, sp                                    ; $658e: $39
    and c                                         ; $658f: $a1
    ld e, $55                                     ; $6590: $1e $55
    ld a, e                                       ; $6592: $7b
    ld c, [hl]                                    ; $6593: $4e
    ld e, h                                       ; $6594: $5c
    rst $10                                       ; $6595: $d7
    and l                                         ; $6596: $a5
    jr c, jr_05a_65c0                             ; $6597: $38 $27

    ld e, d                                       ; $6599: $5a
    jp hl                                         ; $659a: $e9


    sbc a                                         ; $659b: $9f
    pop af                                        ; $659c: $f1
    cp d                                          ; $659d: $ba
    and e                                         ; $659e: $a3
    and d                                         ; $659f: $a2
    sbc e                                         ; $65a0: $9b
    ld c, b                                       ; $65a1: $48
    ld h, a                                       ; $65a2: $67
    adc l                                         ; $65a3: $8d
    ld c, b                                       ; $65a4: $48
    dec a                                         ; $65a5: $3d
    db $fc                                        ; $65a6: $fc
    rst $30                                       ; $65a7: $f7
    rst $10                                       ; $65a8: $d7

jr_05a_65a9:
    ld a, [hl-]                                   ; $65a9: $3a
    or [hl]                                       ; $65aa: $b6
    jp hl                                         ; $65ab: $e9


    ld [bc], a                                    ; $65ac: $02
    cp h                                          ; $65ad: $bc
    ld e, a                                       ; $65ae: $5f
    push af                                       ; $65af: $f5
    db $dd                                        ; $65b0: $dd
    rst $38                                       ; $65b1: $ff
    adc d                                         ; $65b2: $8a
    ld [hl], h                                    ; $65b3: $74
    sub d                                         ; $65b4: $92
    ld h, $65                                     ; $65b5: $26 $65
    db $10                                        ; $65b7: $10
    ld d, d                                       ; $65b8: $52
    cp [hl]                                       ; $65b9: $be
    ld h, a                                       ; $65ba: $67
    cp $5a                                        ; $65bb: $fe $5a
    call c, $f66f                                 ; $65bd: $dc $6f $f6

jr_05a_65c0:
    adc d                                         ; $65c0: $8a
    adc [hl]                                      ; $65c1: $8e
    or l                                          ; $65c2: $b5
    rra                                           ; $65c3: $1f
    rst $20                                       ; $65c4: $e7
    ld c, e                                       ; $65c5: $4b
    cp $b7                                        ; $65c6: $fe $b7
    db $fd                                        ; $65c8: $fd
    or $5f                                        ; $65c9: $f6 $5f
    nop                                           ; $65cb: $00
    ret nc                                        ; $65cc: $d0

    ld l, l                                       ; $65cd: $6d
    dec hl                                        ; $65ce: $2b
    sbc [hl]                                      ; $65cf: $9e
    ld c, a                                       ; $65d0: $4f
    adc b                                         ; $65d1: $88
    dec l                                         ; $65d2: $2d
    ld h, h                                       ; $65d3: $64
    ld c, e                                       ; $65d4: $4b
    scf                                           ; $65d5: $37
    rst $10                                       ; $65d6: $d7
    call c, $19d2                                 ; $65d7: $dc $d2 $19
    ret c                                         ; $65da: $d8

    ld a, a                                       ; $65db: $7f
    adc c                                         ; $65dc: $89
    db $e3                                        ; $65dd: $e3
    ld b, h                                       ; $65de: $44
    add hl, hl                                    ; $65df: $29
    xor d                                         ; $65e0: $aa
    and d                                         ; $65e1: $a2
    and $96                                       ; $65e2: $e6 $96
    ld c, $57                                     ; $65e4: $0e $57
    sub $54                                       ; $65e6: $d6 $54
    ld e, c                                       ; $65e8: $59
    db $eb                                        ; $65e9: $eb
    or a                                          ; $65ea: $b7

jr_05a_65eb:
    ld h, d                                       ; $65eb: $62
    jp c, $52be                                   ; $65ec: $da $be $52

    xor d                                         ; $65ef: $aa
    jr z, jr_05a_65eb                             ; $65f0: $28 $f9

    ld h, e                                       ; $65f2: $63
    db $f4                                        ; $65f3: $f4
    or e                                          ; $65f4: $b3
    db $f4                                        ; $65f5: $f4
    xor l                                         ; $65f6: $ad
    rst $38                                       ; $65f7: $ff
    db $eb                                        ; $65f8: $eb
    ld [bc], a                                    ; $65f9: $02
    ld e, $a6                                     ; $65fa: $1e $a6
    ld e, a                                       ; $65fc: $5f
    sbc d                                         ; $65fd: $9a
    ld h, e                                       ; $65fe: $63
    ld c, e                                       ; $65ff: $4b
    ld a, b                                       ; $6600: $78
    sub $b6                                       ; $6601: $d6 $b6
    ld d, h                                       ; $6603: $54
    sub h                                         ; $6604: $94
    ld d, [hl]                                    ; $6605: $56
    sub $82                                       ; $6606: $d6 $82
    or c                                          ; $6608: $b1
    ld a, a                                       ; $6609: $7f
    ld c, e                                       ; $660a: $4b
    or l                                          ; $660b: $b5
    dec bc                                        ; $660c: $0b
    adc c                                         ; $660d: $89
    jp nc, $9ec4                                  ; $660e: $d2 $c4 $9e

    ld e, a                                       ; $6611: $5f
    ld a, $ad                                     ; $6612: $3e $ad
    ld [hl], l                                    ; $6614: $75
    sub h                                         ; $6615: $94
    ld c, [hl]                                    ; $6616: $4e
    inc l                                         ; $6617: $2c
    adc h                                         ; $6618: $8c
    or l                                          ; $6619: $b5
    ld d, c                                       ; $661a: $51
    ld a, [hl-]                                   ; $661b: $3a
    inc bc                                        ; $661c: $03
    db $eb                                        ; $661d: $eb
    dec [hl]                                      ; $661e: $35
    ld a, a                                       ; $661f: $7f
    ld c, [hl]                                    ; $6620: $4e
    or h                                          ; $6621: $b4
    add hl, de                                    ; $6622: $19

jr_05a_6623:
    adc h                                         ; $6623: $8c
    pop hl                                        ; $6624: $e1
    or h                                          ; $6625: $b4
    jr nc, jr_05a_6623                            ; $6626: $30 $fb

    dec bc                                        ; $6628: $0b
    nop                                           ; $6629: $00
    cp h                                          ; $662a: $bc
    ld a, a                                       ; $662b: $7f
    and $33                                       ; $662c: $e6 $33
    sbc h                                         ; $662e: $9c
    ld d, $a5                                     ; $662f: $16 $a5
    adc $b8                                       ; $6631: $ce $b8
    jp nc, $1581                                  ; $6633: $d2 $81 $15

    ld h, c                                       ; $6636: $61
    or $c2                                        ; $6637: $f6 $c2
    ld d, d                                       ; $6639: $52
    halt                                          ; $663a: $76
    ld [hl+], a                                   ; $663b: $22
    jp z, $bf48                                   ; $663c: $ca $48 $bf

    dec d                                         ; $663f: $15
    db $d3                                        ; $6640: $d3
    or $2f                                        ; $6641: $f6 $2f
    add hl, sp                                    ; $6643: $39
    ret c                                         ; $6644: $d8

    ld l, l                                       ; $6645: $6d
    ld d, d                                       ; $6646: $52
    adc [hl]                                      ; $6647: $8e
    dec hl                                        ; $6648: $2b
    inc a                                         ; $6649: $3c
    rst $20                                       ; $664a: $e7
    or l                                          ; $664b: $b5
    jp hl                                         ; $664c: $e9


    sub a                                         ; $664d: $97
    xor $35                                       ; $664e: $ee $35
    inc hl                                        ; $6650: $23
    push hl                                       ; $6651: $e5
    cp a                                          ; $6652: $bf
    sub l                                         ; $6653: $95
    ld d, h                                       ; $6654: $54
    cp $3b                                        ; $6655: $fe $3b
    rst $20                                       ; $6657: $e7
    bit 4, d                                      ; $6658: $cb $62
    ld l, e                                       ; $665a: $6b
    rst $08                                       ; $665b: $cf
    and c                                         ; $665c: $a1
    dec bc                                        ; $665d: $0b
    nop                                           ; $665e: $00
    inc e                                         ; $665f: $1c
    daa                                           ; $6660: $27
    ld a, d                                       ; $6661: $7a
    and d                                         ; $6662: $a2
    adc d                                         ; $6663: $8a
    jp nc, Jump_05a_5aca                          ; $6664: $d2 $ca $5a

    db $fd                                        ; $6667: $fd
    dec sp                                        ; $6668: $3b
    rra                                           ; $6669: $1f
    ld e, $78                                     ; $666a: $1e $78
    ld l, a                                       ; $666c: $6f
    sub h                                         ; $666d: $94
    ld a, [hl]                                    ; $666e: $7e
    dec hl                                        ; $666f: $2b
    inc c                                         ; $6670: $0c
    ld l, l                                       ; $6671: $6d
    rra                                           ; $6672: $1f
    ld a, [bc]                                    ; $6673: $0a
    nop                                           ; $6674: $00
    db $fc                                        ; $6675: $fc
    cp a                                          ; $6676: $bf
    di                                            ; $6677: $f3
    pop hl                                        ; $6678: $e1
    add c                                         ; $6679: $81
    rst $30                                       ; $667a: $f7
    ld e, d                                       ; $667b: $5a
    cp a                                          ; $667c: $bf
    ld h, d                                       ; $667d: $62
    add l                                         ; $667e: $85
    daa                                           ; $667f: $27
    db $f4                                        ; $6680: $f4
    cp $78                                        ; $6681: $fe $78
    reti                                          ; $6683: $d9


    sub $28                                       ; $6684: $d6 $28
    push af                                       ; $6686: $f5
    sbc [hl]                                      ; $6687: $9e
    xor a                                         ; $6688: $af
    adc [hl]                                      ; $6689: $8e
    jr nc, jr_05a_6707                            ; $668a: $30 $7b

    db $db                                        ; $668c: $db
    and h                                         ; $668d: $a4
    inc e                                         ; $668e: $1c
    ld h, d                                       ; $668f: $62
    ld [hl], a                                    ; $6690: $77
    or b                                          ; $6691: $b0
    dec bc                                        ; $6692: $0b
    nop                                           ; $6693: $00
    sbc [hl]                                      ; $6694: $9e
    ccf                                           ; $6695: $3f
    ld b, e                                       ; $6696: $43
    ld b, l                                       ; $6697: $45
    ld [hl], a                                    ; $6698: $77
    or h                                          ; $6699: $b4
    ld a, d                                       ; $669a: $7a
    db $fd                                        ; $669b: $fd
    ld hl, $f227                                  ; $669c: $21 $27 $f2
    ld c, a                                       ; $669f: $4f
    or a                                          ; $66a0: $b7
    ld [de], a                                    ; $66a1: $12
    ld b, d                                       ; $66a2: $42
    or e                                          ; $66a3: $b3
    ld [hl], a                                    ; $66a4: $77
    ld b, d                                       ; $66a5: $42
    add l                                         ; $66a6: $85
    dec bc                                        ; $66a7: $0b
    ld sp, hl                                     ; $66a8: $f9
    sbc d                                         ; $66a9: $9a
    rst $18                                       ; $66aa: $df
    cp l                                          ; $66ab: $bd
    rst $20                                       ; $66ac: $e7
    cp a                                          ; $66ad: $bf
    sub d                                         ; $66ae: $92
    ld [hl], d                                    ; $66af: $72
    adc b                                         ; $66b0: $88
    db $dd                                        ; $66b1: $dd
    pop bc                                        ; $66b2: $c1
    ld l, $00                                     ; $66b3: $2e $00
    cp h                                          ; $66b5: $bc
    ld a, a                                       ; $66b6: $7f

Call_05a_66b7:
    and $33                                       ; $66b7: $e6 $33
    inc [hl]                                      ; $66b9: $34
    push bc                                       ; $66ba: $c5
    jp z, Jump_000_085f                           ; $66bb: $ca $5f $08

    ld l, c                                       ; $66be: $69
    adc [hl]                                      ; $66bf: $8e
    ld [hl], c                                    ; $66c0: $71
    ld [c], a                                     ; $66c1: $e2
    cp [hl]                                       ; $66c2: $be
    ld e, a                                       ; $66c3: $5f
    rst $30                                       ; $66c4: $f7
    ld e, b                                       ; $66c5: $58
    db $eb                                        ; $66c6: $eb
    rst $10                                       ; $66c7: $d7
    inc e                                         ; $66c8: $1c
    ld e, e                                       ; $66c9: $5b
    ld a, [hl-]                                   ; $66ca: $3a
    ld h, e                                       ; $66cb: $63
    db $d3                                        ; $66cc: $d3
    or c                                          ; $66cd: $b1
    or [hl]                                       ; $66ce: $b6
    sub $9f                                       ; $66cf: $d6 $9f
    call nc, $9b44                                ; $66d1: $d4 $44 $9b
    xor a                                         ; $66d4: $af
    sub h                                         ; $66d5: $94
    ld c, d                                       ; $66d6: $4a
    ld e, b                                       ; $66d7: $58
    xor d                                         ; $66d8: $aa
    ld e, l                                       ; $66d9: $5d
    ld c, b                                       ; $66da: $48
    sub h                                         ; $66db: $94
    ld a, d                                       ; $66dc: $7a
    db $e4                                        ; $66dd: $e4
    ld e, a                                       ; $66de: $5f
    add d                                         ; $66df: $82
    ld sp, $87ed                                  ; $66e0: $31 $ed $87
    rst $38                                       ; $66e3: $ff
    ld [bc], a                                    ; $66e4: $02
    sbc h                                         ; $66e5: $9c
    rst $38                                       ; $66e6: $ff
    dec h                                         ; $66e7: $25
    sbc $3f                                       ; $66e8: $de $3f
    di                                            ; $66ea: $f3
    add hl, de                                    ; $66eb: $19
    ld c, [hl]                                    ; $66ec: $4e
    dec bc                                        ; $66ed: $0b
    db $eb                                        ; $66ee: $eb
    rst $10                                       ; $66ef: $d7
    call z, $bdce                                 ; $66f0: $cc $ce $bd
    and h                                         ; $66f3: $a4
    sbc h                                         ; $66f4: $9c
    ld e, b                                       ; $66f5: $58
    ld l, h                                       ; $66f6: $6c
    db $d3                                        ; $66f7: $d3
    dec b                                         ; $66f8: $05
    nop                                           ; $66f9: $00
    inc e                                         ; $66fa: $1c
    ld h, a                                       ; $66fb: $67
    ld l, l                                       ; $66fc: $6d
    dec [hl]                                      ; $66fd: $35
    scf                                           ; $66fe: $37
    ld a, a                                       ; $66ff: $7f
    and c                                         ; $6700: $a1
    rst $28                                       ; $6701: $ef
    rst $28                                       ; $6702: $ef
    xor e                                         ; $6703: $ab
    ld h, e                                       ; $6704: $63
    add $4d                                       ; $6705: $c6 $4d

jr_05a_6707:
    ld d, h                                       ; $6707: $54
    ld a, [hl-]                                   ; $6708: $3a
    ld a, e                                       ; $6709: $7b
    ei                                            ; $670a: $fb
    cp $b3                                        ; $670b: $fe $b3
    db $fd                                        ; $670d: $fd
    dec bc                                        ; $670e: $0b
    nop                                           ; $670f: $00
    db $fc                                        ; $6710: $fc
    ld b, h                                       ; $6711: $44
    rst $20                                       ; $6712: $e7
    sub b                                         ; $6713: $90
    jp nc, $8b5f                                  ; $6714: $d2 $5f $8b

    ret nc                                        ; $6717: $d0

    and [hl]                                      ; $6718: $a6
    ld e, a                                       ; $6719: $5f
    cp d                                          ; $671a: $ba
    add hl, bc                                    ; $671b: $09
    or d                                          ; $671c: $b2
    and a                                         ; $671d: $a7
    ld c, c                                       ; $671e: $49
    di                                            ; $671f: $f3
    db $eb                                        ; $6720: $eb
    db $eb                                        ; $6721: $eb
    ld e, $b5                                     ; $6722: $1e $b5
    and a                                         ; $6724: $a7
    rst $38                                       ; $6725: $ff
    ld [bc], a                                    ; $6726: $02
    sbc [hl]                                      ; $6727: $9e
    rst $00                                       ; $6728: $c7
    add c                                         ; $6729: $81
    and e                                         ; $672a: $a3
    ld d, [hl]                                    ; $672b: $56
    inc sp                                        ; $672c: $33
    ld e, b                                       ; $672d: $58
    db $e3                                        ; $672e: $e3
    ld h, $15                                     ; $672f: $26 $15
    db $dd                                        ; $6731: $dd
    inc h                                         ; $6732: $24
    jr jr_05a_6782                                ; $6733: $18 $4d

    db $ec                                        ; $6735: $ec
    di                                            ; $6736: $f3
    or l                                          ; $6737: $b5
    cp $57                                        ; $6738: $fe $57
    ld d, e                                       ; $673a: $53
    sub $4d                                       ; $673b: $d6 $4d
    ld [$f9df], a                                 ; $673d: $ea $df $f9
    ldh a, [$c0]                                  ; $6740: $f0 $c0
    ei                                            ; $6742: $fb
    db $fd                                        ; $6743: $fd
    ld [hl], c                                    ; $6744: $71
    ld c, $7e                                     ; $6745: $0e $7e
    ld d, d                                       ; $6747: $52
    db $fd                                        ; $6748: $fd
    cp $a7                                        ; $6749: $fe $a7
    dec a                                         ; $674b: $3d
    add [hl]                                      ; $674c: $86
    ld h, b                                       ; $674d: $60
    db $ec                                        ; $674e: $ec
    rst $18                                       ; $674f: $df
    ld d, d                                       ; $6750: $52
    ld a, [$e366]                                 ; $6751: $fa $66 $e3
    cpl                                           ; $6754: $2f
    nop                                           ; $6755: $00

Jump_05a_6756:
    inc a                                         ; $6756: $3c
    ld a, a                                       ; $6757: $7f
    add $97                                       ; $6758: $c6 $97
    ret nc                                        ; $675a: $d0

    rst $30                                       ; $675b: $f7
    rst $30                                       ; $675c: $f7
    push de                                       ; $675d: $d5
    ld sp, $26e3                                  ; $675e: $31 $e3 $26
    ld a, [hl+]                                   ; $6761: $2a
    ld sp, hl                                     ; $6762: $f9
    rst $08                                       ; $6763: $cf
    cp [hl]                                       ; $6764: $be
    ld l, d                                       ; $6765: $6a
    jr @+$3e                                      ; $6766: $18 $3c

    ldh a, [$de]                                  ; $6768: $f0 $de
    ld c, a                                       ; $676a: $4f
    ld l, d                                       ; $676b: $6a
    and d                                         ; $676c: $a2
    call Call_000_19d7                            ; $676d: $cd $d7 $19
    sbc e                                         ; $6770: $9b
    adc [hl]                                      ; $6771: $8e
    or l                                          ; $6772: $b5
    ld l, b                                       ; $6773: $68
    call $fdbf                                    ; $6774: $cd $bf $fd
    db $ed                                        ; $6777: $ed
    cp $fc                                        ; $6778: $fe $fc
    ld e, e                                       ; $677a: $5b
    rst $30                                       ; $677b: $f7
    sub $78                                       ; $677c: $d6 $78
    call Call_000_19df                            ; $677e: $cd $df $19
    and l                                         ; $6781: $a5

jr_05a_6782:
    rst $18                                       ; $6782: $df
    ld sp, hl                                     ; $6783: $f9
    ld a, a                                       ; $6784: $7f
    ld bc, $b15e                                  ; $6785: $01 $5e $b1
    ld l, l                                       ; $6788: $6d
    ld [de], a                                    ; $6789: $12
    sbc [hl]                                      ; $678a: $9e
    di                                            ; $678b: $f3
    ld [hl-], a                                   ; $678c: $32
    db $ec                                        ; $678d: $ec
    add hl, de                                    ; $678e: $19
    rst $30                                       ; $678f: $f7
    ld [hl], a                                    ; $6790: $77
    ld a, a                                       ; $6791: $7f
    ld d, d                                       ; $6792: $52
    ld c, $b1                                     ; $6793: $0e $b1
    dec sp                                        ; $6795: $3b
    ret c                                         ; $6796: $d8

    dec b                                         ; $6797: $05
    nop                                           ; $6798: $00
    db $fc                                        ; $6799: $fc
    cp b                                          ; $679a: $b8
    add hl, sp                                    ; $679b: $39
    halt                                          ; $679c: $76
    ld a, a                                       ; $679d: $7f
    cp $d6                                        ; $679e: $fe $d6
    xor e                                         ; $67a0: $ab
    jr z, jr_05a_67c0                             ; $67a1: $28 $1d

    jp c, $3599                                   ; $67a3: $da $99 $35

    jp hl                                         ; $67a6: $e9


    sbc $26                                       ; $67a7: $de $26
    xor d                                         ; $67a9: $aa
    and h                                         ; $67aa: $a4
    ld l, d                                       ; $67ab: $6a
    or a                                          ; $67ac: $b7
    inc [hl]                                      ; $67ad: $34
    rst $00                                       ; $67ae: $c7
    sub [hl]                                      ; $67af: $96
    xor $ad                                       ; $67b0: $ee $ad
    ld [hl], c                                    ; $67b2: $71
    ld c, [hl]                                    ; $67b3: $4e
    jr z, jr_05a_67f1                             ; $67b4: $28 $3b

    ld de, $a465                                  ; $67b6: $11 $65 $a4
    ld c, c                                       ; $67b9: $49
    reti                                          ; $67ba: $d9


    dec b                                         ; $67bb: $05
    nop                                           ; $67bc: $00
    ld a, h                                       ; $67bd: $7c
    ld e, e                                       ; $67be: $5b
    and e                                         ; $67bf: $a3

jr_05a_67c0:
    ld d, h                                       ; $67c0: $54
    cp b                                          ; $67c1: $b8
    sub b                                         ; $67c2: $90
    xor a                                         ; $67c3: $af
    ld sp, hl                                     ; $67c4: $f9
    db $dd                                        ; $67c5: $dd
    ld a, e                                       ; $67c6: $7b
    cp [hl]                                       ; $67c7: $be
    ld d, [hl]                                    ; $67c8: $56
    ld [hl], e                                    ; $67c9: $73
    rst $30                                       ; $67ca: $f7
    inc [hl]                                      ; $67cb: $34
    sub c                                         ; $67cc: $91
    and $8f                                       ; $67cd: $e6 $8f
    jp c, $efbd                                   ; $67cf: $da $bd $ef

    dec l                                         ; $67d2: $2d
    call $a5b1                                    ; $67d3: $cd $b1 $a5
    add hl, de                                    ; $67d6: $19
    dec d                                         ; $67d7: $15
    dec [hl]                                      ; $67d8: $35
    adc c                                         ; $67d9: $89
    ld c, d                                       ; $67da: $4a
    rst $30                                       ; $67db: $f7
    jr jr_05a_6853                                ; $67dc: $18 $75

    adc c                                         ; $67de: $89
    ld [hl], e                                    ; $67df: $73
    ld l, e                                       ; $67e0: $6b
    call nc, $d2dc                                ; $67e1: $d4 $dc $d2
    db $fc                                        ; $67e4: $fc
    xor d                                         ; $67e5: $aa
    rst $28                                       ; $67e6: $ef
    cp $b5                                        ; $67e7: $fe $b5
    push de                                       ; $67e9: $d5
    call c, $073d                                 ; $67ea: $dc $3d $07
    cp e                                          ; $67ed: $bb
    rst $38                                       ; $67ee: $ff
    add l                                         ; $67ef: $85
    rst $30                                       ; $67f0: $f7

jr_05a_67f1:
    db $db                                        ; $67f1: $db
    ld e, [hl]                                    ; $67f2: $5e
    nop                                           ; $67f3: $00
    sbc [hl]                                      ; $67f4: $9e
    rst $00                                       ; $67f5: $c7
    add c                                         ; $67f6: $81
    and e                                         ; $67f7: $a3
    ld d, [hl]                                    ; $67f8: $56
    or $85                                        ; $67f9: $f6 $85

Call_05a_67fb:
    ld sp, hl                                     ; $67fb: $f9
    ld [hl], a                                    ; $67fc: $77
    ld d, d                                       ; $67fd: $52
    pop de                                        ; $67fe: $d1
    ld c, l                                       ; $67ff: $4d
    ld [c], a                                     ; $6800: $e2
    db $fd                                        ; $6801: $fd
    inc sp                                        ; $6802: $33
    sbc a                                         ; $6803: $9f
    and c                                         ; $6804: $a1
    add hl, bc                                    ; $6805: $09
    ld c, e                                       ; $6806: $4b
    ld e, c                                       ; $6807: $59
    jp c, Jump_000_3da4                           ; $6808: $da $a4 $3d

    inc sp                                        ; $680b: $33
    ld c, b                                       ; $680c: $48
    ld [hl], e                                    ; $680d: $73
    ld l, h                                       ; $680e: $6c
    jp hl                                         ; $680f: $e9


    sbc $d3                                       ; $6810: $de $d3
    and h                                         ; $6812: $a4
    and d                                         ; $6813: $a2
    xor h                                         ; $6814: $ac
    sbc e                                         ; $6815: $9b
    add sp, $02                                   ; $6816: $e8 $02
    ret nc                                        ; $6818: $d0

    ld h, l                                       ; $6819: $65
    ld a, e                                       ; $681a: $7b
    rst $18                                       ; $681b: $df
    or h                                          ; $681c: $b4
    ld d, $a5                                     ; $681d: $16 $a5
    ld a, h                                       ; $681f: $7c
    jr nz, jr_05a_6846                            ; $6820: $20 $24

    ld c, d                                       ; $6822: $4a
    add sp, -$05                                  ; $6823: $e8 $fb
    db $db                                        ; $6825: $db
    and e                                         ; $6826: $a3
    ld l, d                                       ; $6827: $6a
    db $db                                        ; $6828: $db
    dec c                                         ; $6829: $0d
    adc c                                         ; $682a: $89
    ld l, a                                       ; $682b: $6f
    jr nz, jr_05a_6832                            ; $682c: $20 $04

    db $eb                                        ; $682e: $eb
    ld e, $a3                                     ; $682f: $1e $a3
    pop de                                        ; $6831: $d1

jr_05a_6832:
    sub d                                         ; $6832: $92
    ld [$f9df], a                                 ; $6833: $ea $df $f9
    ldh a, [$c0]                                  ; $6836: $f0 $c0
    ei                                            ; $6838: $fb
    dec sp                                        ; $6839: $3b
    xor c                                         ; $683a: $a9
    add e                                         ; $683b: $83
    db $db                                        ; $683c: $db

jr_05a_683d:
    ld [hl], $3a                                  ; $683d: $36 $3a
    xor c                                         ; $683f: $a9
    cp $9d                                        ; $6840: $fe $9d
    ld h, e                                       ; $6842: $63
    ld b, b                                       ; $6843: $40
    and d                                         ; $6844: $a2
    sub h                                         ; $6845: $94

jr_05a_6846:
    xor [hl]                                      ; $6846: $ae
    dec [hl]                                      ; $6847: $35
    or d                                          ; $6848: $b2
    db $fd                                        ; $6849: $fd
    and h                                         ; $684a: $a4
    ld [hl-], a                                   ; $684b: $32
    sub $bd                                       ; $684c: $d6 $bd
    cp l                                          ; $684e: $bd
    pop de                                        ; $684f: $d1
    sbc b                                         ; $6850: $98
    sub h                                         ; $6851: $94
    cp a                                          ; $6852: $bf

jr_05a_6853:
    ld [hl], a                                    ; $6853: $77
    ld h, h                                       ; $6854: $64
    sub b                                         ; $6855: $90
    jr z, jr_05a_683d                             ; $6856: $28 $e5

    cp b                                          ; $6858: $b8
    rst $30                                       ; $6859: $f7
    sbc [hl]                                      ; $685a: $9e
    ld a, [hl]                                    ; $685b: $7e
    reti                                          ; $685c: $d9


    ld b, b                                       ; $685d: $40
    ld hl, sp+$47                                 ; $685e: $f8 $47
    adc a                                         ; $6860: $8f
    ld a, e                                       ; $6861: $7b
    dec hl                                        ; $6862: $2b
    ld c, d                                       ; $6863: $4a
    ldh a, [$eb]                                  ; $6864: $f0 $eb
    ld b, h                                       ; $6866: $44
    dec [hl]                                      ; $6867: $35
    db $dd                                        ; $6868: $dd
    ld e, e                                       ; $6869: $5b
    ld d, c                                       ; $686a: $51
    rla                                           ; $686b: $17
    nop                                           ; $686c: $00
    sbc h                                         ; $686d: $9c
    ld e, e                                       ; $686e: $5b
    and e                                         ; $686f: $a3
    inc [hl]                                      ; $6870: $34
    cp a                                          ; $6871: $bf
    ld [$7fbb], a                                 ; $6872: $ea $bb $7f
    ld l, l                                       ; $6875: $6d
    ld [hl], l                                    ; $6876: $75
    ld b, a                                       ; $6877: $47
    dec d                                         ; $6878: $15
    ret                                           ; $6879: $c9


    ld h, d                                       ; $687a: $62
    or b                                          ; $687b: $b0
    rst $38                                       ; $687c: $ff
    db $fc                                        ; $687d: $fc
    rst $08                                       ; $687e: $cf
    add hl, bc                                    ; $687f: $09
    push af                                       ; $6880: $f5
    xor b                                         ; $6881: $a8
    jp c, $c273                                   ; $6882: $da $73 $c2

    or $02                                        ; $6885: $f6 $02
    ld e, $a1                                     ; $6887: $1e $a1
    add hl, hl                                    ; $6889: $29
    ld e, d                                       ; $688a: $5a
    cp l                                          ; $688b: $bd
    ld bc, $a4a1                                  ; $688c: $01 $a1 $a4
    xor $6d                                       ; $688f: $ee $6d
    ld d, d                                       ; $6891: $52
    adc a                                         ; $6892: $8f
    ld [$5f80], a                                 ; $6893: $ea $80 $5f
    or [hl]                                       ; $6896: $b6
    dec [hl]                                      ; $6897: $35
    adc $79                                       ; $6898: $ce $79
    ld h, c                                       ; $689a: $61
    dec h                                         ; $689b: $25
    dec [hl]                                      ; $689c: $35
    cp a                                          ; $689d: $bf
    dec c                                         ; $689e: $0d
    or l                                          ; $689f: $b5
    rst $20                                       ; $68a0: $e7
    add $ed                                       ; $68a1: $c6 $ed
    ld h, c                                       ; $68a3: $61
    db $fd                                        ; $68a4: $fd
    db $e3                                        ; $68a5: $e3
    adc h                                         ; $68a6: $8c
    db $d3                                        ; $68a7: $d3
    sbc a                                         ; $68a8: $9f
    inc d                                         ; $68a9: $14
    adc h                                         ; $68aa: $8c
    di                                            ; $68ab: $f3
    add l                                         ; $68ac: $85
    and l                                         ; $68ad: $a5
    ld e, $fe                                     ; $68ae: $1e $fe
    db $db                                        ; $68b0: $db
    ld a, [bc]                                    ; $68b1: $0a
    ld c, a                                       ; $68b2: $4f
    ret c                                         ; $68b3: $d8

    adc h                                         ; $68b4: $8c
    inc sp                                        ; $68b5: $33
    jp nc, $1581                                  ; $68b6: $d2 $81 $15

    ld h, c                                       ; $68b9: $61
    or $17                                        ; $68ba: $f6 $17
    nop                                           ; $68bc: $00
    inc e                                         ; $68bd: $1c
    daa                                           ; $68be: $27
    ld c, d                                       ; $68bf: $4a
    ld [hl], a                                    ; $68c0: $77
    inc d                                         ; $68c1: $14
    sbc d                                         ; $68c2: $9a
    cp l                                          ; $68c3: $bd
    ld [hl-], a                                   ; $68c4: $32
    sub $bd                                       ; $68c5: $d6 $bd
    cp l                                          ; $68c7: $bd
    ld bc, $52c1                                  ; $68c8: $01 $c1 $52
    adc a                                         ; $68cb: $8f
    xor d                                         ; $68cc: $aa
    dec a                                         ; $68cd: $3d
    daa                                           ; $68ce: $27
    ld l, $71                                     ; $68cf: $2e $71
    ld l, [hl]                                    ; $68d1: $6e
    sub e                                         ; $68d2: $93
    ret nc                                        ; $68d3: $d0

    adc a                                         ; $68d4: $8f
    adc [hl]                                      ; $68d5: $8e
    cp $2f                                        ; $68d6: $fe $2f
    adc l                                         ; $68d8: $8d
    inc sp                                        ; $68d9: $33
    or c                                          ; $68da: $b1
    ld e, [hl]                                    ; $68db: $5e
    di                                            ; $68dc: $f3
    dec l                                         ; $68dd: $2d
    rst $18                                       ; $68de: $df
    ld [hl], h                                    ; $68df: $74
    ld h, b                                       ; $68e0: $60
    push bc                                       ; $68e1: $c5
    sbc d                                         ; $68e2: $9a
    db $fd                                        ; $68e3: $fd
    dec b                                         ; $68e4: $05
    nop                                           ; $68e5: $00
    ld e, [hl]                                    ; $68e6: $5e
    or c                                          ; $68e7: $b1
    ld l, l                                       ; $68e8: $6d
    ld a, [hl+]                                   ; $68e9: $2a
    dec e                                         ; $68ea: $1d
    xor [hl]                                      ; $68eb: $ae
    xor h                                         ; $68ec: $ac
    adc c                                         ; $68ed: $89
    ld [hl], h                                    ; $68ee: $74
    ld [hl], b                                    ; $68ef: $70
    db $db                                        ; $68f0: $db
    ld b, [hl]                                    ; $68f1: $46
    adc a                                         ; $68f2: $8f
    xor d                                         ; $68f3: $aa
    dec a                                         ; $68f4: $3d
    daa                                           ; $68f5: $27
    ld l, $71                                     ; $68f6: $2e $71
    add [hl]                                      ; $68f8: $86
    or b                                          ; $68f9: $b0
    ld [hl], h                                    ; $68fa: $74
    add $38                                       ; $68fb: $c6 $38
    rst $20                                       ; $68fd: $e7
    and a                                         ; $68fe: $a7
    ld b, l                                       ; $68ff: $45
    xor l                                         ; $6900: $ad
    and $cf                                       ; $6901: $e6 $cf
    adc c                                         ; $6903: $89
    ld [hl], $83                                  ; $6904: $36 $83
    ld sp, $169c                                  ; $6906: $31 $9c $16
    ld h, [hl]                                    ; $6909: $66
    ld a, a                                       ; $690a: $7f
    ld bc, $f70e                                  ; $690b: $01 $0e $f7
    adc [hl]                                      ; $690e: $8e
    inc c                                         ; $690f: $0c
    ld [de], a                                    ; $6910: $12
    and l                                         ; $6911: $a5
    inc e                                         ; $6912: $1c
    rst $30                                       ; $6913: $f7
    sbc $d3                                       ; $6914: $de $d3
    cpl                                           ; $6916: $2f
    dec de                                        ; $6917: $1b
    ld [$e8ff], sp                                ; $6918: $08 $ff $e8
    ld [hl], c                                    ; $691b: $71
    ld l, a                                       ; $691c: $6f
    ld b, l                                       ; $691d: $45
    ld l, c                                       ; $691e: $69
    adc [hl]                                      ; $691f: $8e
    ld [hl], c                                    ; $6920: $71
    ret nc                                        ; $6921: $d0

    ld a, [$305f]                                 ; $6922: $fa $5f $30
    ld d, l                                       ; $6925: $55
    pop de                                        ; $6926: $d1
    ld l, c                                       ; $6927: $69
    cp d                                          ; $6928: $ba
    call nz, $f219                                ; $6929: $c4 $19 $f2
    rla                                           ; $692c: $17
    ld [de], a                                    ; $692d: $12
    ld c, l                                       ; $692e: $4d
    ld d, h                                       ; $692f: $54
    sbc d                                         ; $6930: $9a
    ld a, b                                       ; $6931: $78
    xor $af                                       ; $6932: $ee $af
    ld a, [bc]                                    ; $6934: $0a
    or e                                          ; $6935: $b3
    rst $10                                       ; $6936: $d7
    inc c                                         ; $6937: $0c
    add $70                                       ; $6938: $c6 $70
    ld e, d                                       ; $693a: $5a
    sbc b                                         ; $693b: $98
    db $fd                                        ; $693c: $fd
    dec b                                         ; $693d: $05
    nop                                           ; $693e: $00
    ld c, $31                                     ; $693f: $0e $31
    add l                                         ; $6941: $85
    ld a, a                                       ; $6942: $7f
    ld b, $63                                     ; $6943: $06 $63
    jr c, jr_05a_6974                             ; $6945: $38 $2d

    call z, $b15e                                 ; $6947: $cc $5e $b1
    ld a, [c]                                     ; $694a: $f2
    rla                                           ; $694b: $17
    ld [de], a                                    ; $694c: $12
    ld c, l                                       ; $694d: $4d
    cp d                                          ; $694e: $ba
    or a                                          ; $694f: $b7
    adc c                                         ; $6950: $89
    ld c, d                                       ; $6951: $4a
    dec a                                         ; $6952: $3d
    xor d                                         ; $6953: $aa
    inc bc                                        ; $6954: $03
    cp $0b                                        ; $6955: $fe $0b
    nop                                           ; $6957: $00
    ret nc                                        ; $6958: $d0

    ld h, l                                       ; $6959: $65
    ld a, e                                       ; $695a: $7b
    rst $18                                       ; $695b: $df
    or h                                          ; $695c: $b4
    ld d, $a5                                     ; $695d: $16 $a5
    ld a, h                                       ; $695f: $7c
    jr nz, jr_05a_6986                            ; $6960: $20 $24

    ld c, d                                       ; $6962: $4a
    add sp, -$05                                  ; $6963: $e8 $fb
    db $db                                        ; $6965: $db
    and e                                         ; $6966: $a3
    ld l, d                                       ; $6967: $6a
    ld e, e                                       ; $6968: $5b

jr_05a_6969:
    ld b, l                                       ; $6969: $45
    inc sp                                        ; $696a: $33
    res 5, c                                      ; $696b: $cb $a9
    push bc                                       ; $696d: $c5
    jr nc, @-$61                                  ; $696e: $30 $9d

    ld [hl], c                                    ; $6970: $71
    halt                                          ; $6971: $76
    ld c, [hl]                                    ; $6972: $4e
    add h                                         ; $6973: $84

jr_05a_6974:
    and e                                         ; $6974: $a3
    add h                                         ; $6975: $84
    daa                                           ; $6976: $27
    ld l, h                                       ; $6977: $6c
    add $19                                       ; $6978: $c6 $19
    jp hl                                         ; $697a: $e9


    ret nz                                        ; $697b: $c0

    adc d                                         ; $697c: $8a
    jr z, @-$11                                   ; $697d: $28 $ed

    cp c                                          ; $697f: $b9
    ld [hl], c                                    ; $6980: $71
    ld a, e                                       ; $6981: $7b
    ld e, b                                       ; $6982: $58
    rst $38                                       ; $6983: $ff
    jr c, jr_05a_6969                             ; $6984: $38 $e3

jr_05a_6986:
    sbc h                                         ; $6986: $9c
    cp a                                          ; $6987: $bf
    nop                                           ; $6988: $00
    db $fc                                        ; $6989: $fc
    ld b, h                                       ; $698a: $44
    rst $20                                       ; $698b: $e7
    sub b                                         ; $698c: $90
    cp $a4                                        ; $698d: $fe $a4
    rst $38                                       ; $698f: $ff
    rst $20                                       ; $6990: $e7
    cp h                                          ; $6991: $bc
    ld h, d                                       ; $6992: $62
    add l                                         ; $6993: $85
    ld a, [hl]                                    ; $6994: $7e
    ld [hl], h                                    ; $6995: $74
    db $f4                                        ; $6996: $f4
    db $eb                                        ; $6997: $eb
    ld e, $a3                                     ; $6998: $1e $a3
    ld e, a                                       ; $699a: $5f
    ld [hl], e                                    ; $699b: $73
    ld l, h                                       ; $699c: $6c
    xor c                                         ; $699d: $a9
    ld a, a                                       ; $699e: $7f
    rst $20                                       ; $699f: $e7
    jp $ef03                                      ; $69a0: $c3 $03 $ef


    db $fd                                        ; $69a3: $fd
    dec bc                                        ; $69a4: $0b
    nop                                           ; $69a5: $00
    inc e                                         ; $69a6: $1c
    ld h, a                                       ; $69a7: $67
    ld l, l                                       ; $69a8: $6d
    dec [hl]                                      ; $69a9: $35
    scf                                           ; $69aa: $37
    rst $38                                       ; $69ab: $ff
    ld c, a                                       ; $69ac: $4f
    ld a, [bc]                                    ; $69ad: $0a
    ld b, [hl]                                    ; $69ae: $46
    ld d, e                                       ; $69af: $53
    ld h, a                                       ; $69b0: $67
    db $ec                                        ; $69b1: $ec
    ld e, [hl]                                    ; $69b2: $5e
    inc sp                                        ; $69b3: $33
    ld [de], a                                    ; $69b4: $12
    sbc [hl]                                      ; $69b5: $9e
    or l                                          ; $69b6: $b5
    ld d, l                                       ; $69b7: $55
    ld d, h                                       ; $69b8: $54
    call c, $9537                                 ; $69b9: $dc $37 $95
    ld a, d                                       ; $69bc: $7a
    ld d, h                                       ; $69bd: $54
    rlca                                          ; $69be: $07
    db $fc                                        ; $69bf: $fc
    sub a                                         ; $69c0: $97
    ld hl, sp-$79                                 ; $69c1: $f8 $87
    rst $38                                       ; $69c3: $ff
    or l                                          ; $69c4: $b5
    jp nz, $9352                                  ; $69c5: $c2 $52 $93

    add hl, de                                    ; $69c8: $19
    jp hl                                         ; $69c9: $e9


    ld d, b                                       ; $69ca: $50
    ld a, [de]                                    ; $69cb: $1a
    rst $20                                       ; $69cc: $e7
    ret nc                                        ; $69cd: $d0

    dec b                                         ; $69ce: $05
    nop                                           ; $69cf: $00
    db $fc                                        ; $69d0: $fc
    ld h, h                                       ; $69d1: $64
    ld b, [hl]                                    ; $69d2: $46
    sbc d                                         ; $69d3: $9a
    pop bc                                        ; $69d4: $c1
    jr jr_05a_6a25                                ; $69d5: $18 $4e

    dec bc                                        ; $69d7: $0b
    or e                                          ; $69d8: $b3
    ld d, a                                       ; $69d9: $57
    xor h                                         ; $69da: $ac
    ldh a, [$84]                                  ; $69db: $f0 $84
    ld a, d                                       ; $69dd: $7a
    ld d, h                                       ; $69de: $54
    rlca                                          ; $69df: $07
    db $fc                                        ; $69e0: $fc
    rla                                           ; $69e1: $17
    nop                                           ; $69e2: $00
    sbc h                                         ; $69e3: $9c
    ld h, e                                       ; $69e4: $63
    or b                                          ; $69e5: $b0
    dec l                                         ; $69e6: $2d
    and c                                         ; $69e7: $a1
    cp l                                          ; $69e8: $bd
    and d                                         ; $69e9: $a2
    ld l, h                                       ; $69ea: $6c
    rst $28                                       ; $69eb: $ef
    sbc e                                         ; $69ec: $9b
    sub $a2                                       ; $69ed: $d6 $a2
    sub h                                         ; $69ef: $94
    rrca                                          ; $69f0: $0f
    add h                                         ; $69f1: $84
    ld b, h                                       ; $69f2: $44
    xor c                                         ; $69f3: $a9
    ld b, a                                       ; $69f4: $47
    ld d, l                                       ; $69f5: $55
    xor h                                         ; $69f6: $ac
    push af                                       ; $69f7: $f5
    bit 3, a                                      ; $69f8: $cb $5f
    ld c, b                                       ; $69fa: $48
    inc [hl]                                      ; $69fb: $34
    ld d, c                                       ; $69fc: $51
    add hl, hl                                    ; $69fd: $29
    dec sp                                        ; $69fe: $3b
    ld [hl], c                                    ; $69ff: $71
    ei                                            ; $6a00: $fb
    ld d, h                                       ; $6a01: $54
    sub h                                         ; $6a02: $94
    sub h                                         ; $6a03: $94
    rst $38                                       ; $6a04: $ff
    db $db                                        ; $6a05: $db

jr_05a_6a06:
    or [hl]                                       ; $6a06: $b6
    ld [$f9df], a                                 ; $6a07: $ea $df $f9
    ldh a, [$c0]                                  ; $6a0a: $f0 $c0
    ei                                            ; $6a0c: $fb
    ld e, e                                       ; $6a0d: $5b
    ldh a, [$2b]                                  ; $6a0e: $f0 $2b
    ld h, e                                       ; $6a10: $63
    db $dd                                        ; $6a11: $dd
    db $db                                        ; $6a12: $db

Jump_05a_6a13:
    dec de                                        ; $6a13: $1b
    adc l                                         ; $6a14: $8d

jr_05a_6a15:
    rla                                           ; $6a15: $17
    nop                                           ; $6a16: $00
    db $fc                                        ; $6a17: $fc
    ld b, h                                       ; $6a18: $44
    rst $20                                       ; $6a19: $e7
    sub b                                         ; $6a1a: $90
    or b                                          ; $6a1b: $b0
    add h                                         ; $6a1c: $84
    ld a, [hl]                                    ; $6a1d: $7e
    ld [hl], h                                    ; $6a1e: $74
    ccf                                           ; $6a1f: $3f
    db $fc                                        ; $6a20: $fc
    ld e, e                                       ; $6a21: $5b
    jp hl                                         ; $6a22: $e9


    ret nz                                        ; $6a23: $c0

    adc d                                         ; $6a24: $8a

jr_05a_6a25:
    and h                                         ; $6a25: $a4
    xor $d1                                       ; $6a26: $ee $d1
    db $fd                                        ; $6a28: $fd
    adc d                                         ; $6a29: $8a
    push de                                       ; $6a2a: $d5
    add hl, de                                    ; $6a2b: $19
    jr c, jr_05a_6a15                             ; $6a2c: $38 $e7

    and a                                         ; $6a2e: $a7
    inc bc                                        ; $6a2f: $03
    dec hl                                        ; $6a30: $2b
    or [hl]                                       ; $6a31: $b6
    rst $38                                       ; $6a32: $ff
    ld [bc], a                                    ; $6a33: $02
    db $fc                                        ; $6a34: $fc
    cp a                                          ; $6a35: $bf
    sub b                                         ; $6a36: $90
    cpl                                           ; $6a37: $2f
    pop hl                                        ; $6a38: $e1
    add hl, sp                                    ; $6a39: $39
    cpl                                           ; $6a3a: $2f
    ld a, a                                       ; $6a3b: $7f
    rst $20                                       ; $6a3c: $e7
    db $fc                                        ; $6a3d: $fc
    or l                                          ; $6a3e: $b5
    jr z, jr_05a_6a06                             ; $6a3f: $28 $c5

    or h                                          ; $6a41: $b4
    xor h                                         ; $6a42: $ac
    or d                                          ; $6a43: $b2
    cp [hl]                                       ; $6a44: $be
    nop                                           ; $6a45: $00
    ld c, $17                                     ; $6a46: $0e $17
    ld [de], a                                    ; $6a48: $12
    ld c, l                                       ; $6a49: $4d
    ld d, h                                       ; $6a4a: $54
    sub e                                         ; $6a4b: $93

jr_05a_6a4c:
    ld c, e                                       ; $6a4c: $4b
    rst $30                                       ; $6a4d: $f7
    ld b, b                                       ; $6a4e: $40
    ld [$3dd6], sp                                ; $6a4f: $08 $d6 $3d
    ld b, [hl]                                    ; $6a52: $46
    db $e3                                        ; $6a53: $e3
    or h                                          ; $6a54: $b4
    jr z, jr_05a_6a4c                             ; $6a55: $28 $f5

    xor b                                         ; $6a57: $a8
    jp c, $9356                                   ; $6a58: $da $56 $93

    add hl, de                                    ; $6a5b: $19
    ld l, c                                       ; $6a5c: $69
    ld b, $63                                     ; $6a5d: $06 $63
    jr c, @+$2f                                   ; $6a5f: $38 $2d

    call z, Call_05a_4a1e                         ; $6a61: $cc $1e $4a
    ld a, h                                       ; $6a64: $7c
    ld e, e                                       ; $6a65: $5b
    db $e3                                        ; $6a66: $e3
    sbc h                                         ; $6a67: $9c
    sub b                                         ; $6a68: $90
    ld a, l                                       ; $6a69: $7d
    ld h, c                                       ; $6a6a: $61
    rst $30                                       ; $6a6b: $f7
    ld l, [hl]                                    ; $6a6c: $6e
    xor c                                         ; $6a6d: $a9
    halt                                          ; $6a6e: $76
    db $eb                                        ; $6a6f: $eb
    ld [bc], a                                    ; $6a70: $02
    ld c, $19                                     ; $6a71: $0e $19
    ld h, $18                                     ; $6a73: $26 $18
    ld h, [hl]                                    ; $6a75: $66
    ret z                                         ; $6a76: $c8

    ld d, [hl]                                    ; $6a77: $56
    ld a, h                                       ; $6a78: $7c
    add hl, bc                                    ; $6a79: $09
    ld a, b                                       ; $6a7a: $78
    ldh a, [$ec]                                  ; $6a7b: $f0 $ec
    sbc $84                                       ; $6a7d: $de $84
    cp a                                          ; $6a7f: $bf
    ld [hl], h                                    ; $6a80: $74
    rrca                                          ; $6a81: $0f
    add h                                         ; $6a82: $84
    ld h, b                                       ; $6a83: $60
    db $dd                                        ; $6a84: $dd
    ld h, e                                       ; $6a85: $63
    inc [hl]                                      ; $6a86: $34
    ld e, d                                       ; $6a87: $5a
    adc a                                         ; $6a88: $8f
    ld [$9615], a                                 ; $6a89: $ea $15 $96

Jump_05a_6a8c:
    sbc d                                         ; $6a8c: $9a
    add sp, $1c                                   ; $6a8d: $e8 $1c
    ld [de], a                                    ; $6a8f: $12
    adc h                                         ; $6a90: $8c
    ld h, [hl]                                    ; $6a91: $66
    ccf                                           ; $6a92: $3f
    or a                                          ; $6a93: $b7
    ld l, $00                                     ; $6a94: $2e $00
    cp h                                          ; $6a96: $bc
    ld h, e                                       ; $6a97: $63
    ld l, e                                       ; $6a98: $6b
    ld a, [hl]                                    ; $6a99: $7e
    ld a, [$1ba5]                                 ; $6a9a: $fa $a5 $1b
    ld l, e                                       ; $6a9d: $6b
    push de                                       ; $6a9e: $d5
    ld b, h                                       ; $6a9f: $44
    rst $20                                       ; $6aa0: $e7
    sub b                                         ; $6aa1: $90
    or b                                          ; $6aa2: $b0

Call_05a_6aa3:
    inc b                                         ; $6aa3: $04
    sub e                                         ; $6aa4: $93
    push af                                       ; $6aa5: $f5
    ld a, [$d2c1]                                 ; $6aa6: $fa $c1 $d2
    ld [$826b], sp                                ; $6aa9: $08 $6b $82
    ld [bc], a                                    ; $6aac: $02
    ld e, $a1                                     ; $6aad: $1e $a1
    add hl, bc                                    ; $6aaf: $09
    ld c, a                                       ; $6ab0: $4f
    or h                                          ; $6ab1: $b4
    xor $28                                       ; $6ab2: $ee $28
    inc [hl]                                      ; $6ab4: $34
    ld a, e                                       ; $6ab5: $7b
    dec e                                         ; $6ab6: $1d
    call c, $d1b6                                 ; $6ab7: $dc $b6 $d1
    and e                                         ; $6aba: $a3
    ld l, d                                       ; $6abb: $6a
    rst $08                                       ; $6abc: $cf
    adc c                                         ; $6abd: $89
    and h                                         ; $6abe: $a4
    inc l                                         ; $6abf: $2c
    db $e4                                        ; $6ac0: $e4
    cpl                                           ; $6ac1: $2f
    inc h                                         ; $6ac2: $24
    sbc d                                         ; $6ac3: $9a
    xor b                                         ; $6ac4: $a8
    call nc, Call_05a_5374                        ; $6ac5: $d4 $74 $53
    ld l, c                                       ; $6ac8: $69
    ld d, d                                       ; $6ac9: $52
    sub $94                                       ; $6aca: $d6 $94
    ld d, e                                       ; $6acc: $53
    ret                                           ; $6acd: $c9


    rst $00                                       ; $6ace: $c7
    inc d                                         ; $6acf: $14
    add $35                                       ; $6ad0: $c6 $35
    sbc a                                         ; $6ad2: $9f
    ret z                                         ; $6ad3: $c8

    adc h                                         ; $6ad4: $8c
    ld l, $00                                     ; $6ad5: $2e $00
    db $fc                                        ; $6ad7: $fc
    ld h, h                                       ; $6ad8: $64
    ld b, [hl]                                    ; $6ad9: $46
    sbc d                                         ; $6ada: $9a
    pop bc                                        ; $6adb: $c1
    jr jr_05a_6b2c                                ; $6adc: $18 $4e

    dec bc                                        ; $6ade: $0b
    or e                                          ; $6adf: $b3
    rla                                           ; $6ae0: $17
    sub [hl]                                      ; $6ae1: $96

Call_05a_6ae2:
    sub $50                                       ; $6ae2: $d6 $50
    jp hl                                         ; $6ae4: $e9


    ret nz                                        ; $6ae5: $c0

    adc d                                         ; $6ae6: $8a
    and h                                         ; $6ae7: $a4
    ld h, b                                       ; $6ae8: $60
    sbc h                                         ; $6ae9: $9c
    cpl                                           ; $6aea: $2f
    inc l                                         ; $6aeb: $2c
    dec [hl]                                      ; $6aec: $35
    ld h, l                                       ; $6aed: $65
    ld d, l                                       ; $6aee: $55
    and h                                         ; $6aef: $a4
    cp c                                          ; $6af0: $b9
    inc c                                         ; $6af1: $0c
    ld b, [hl]                                    ; $6af2: $46
    ld hl, sp+$2f                                 ; $6af3: $f8 $2f
    ld a, c                                       ; $6af5: $79
    cp $ec                                        ; $6af6: $fe $ec
    cp $2f                                        ; $6af8: $fe $2f
    call $f065                                    ; $6afa: $cd $65 $f0
    ld e, e                                       ; $6afd: $5b
    db $e3                                        ; $6afe: $e3
    dec b                                         ; $6aff: $05
    nop                                           ; $6b00: $00
    ld e, $e3                                     ; $6b01: $1e $e3
    or [hl]                                       ; $6b03: $b6
    adc l                                         ; $6b04: $8d
    inc sp                                        ; $6b05: $33
    ld [hl], b                                    ; $6b06: $70
    adc $17                                       ; $6b07: $ce $17
    sub [hl]                                      ; $6b09: $96
    ld h, $65                                     ; $6b0a: $26 $65
    ld c, l                                       ; $6b0c: $4d
    add hl, sp                                    ; $6b0d: $39
    sub l                                         ; $6b0e: $95
    ld a, [de]                                    ; $6b0f: $1a
    rst $10                                       ; $6b10: $d7
    jp nz, $e5ec                                  ; $6b11: $c2 $ec $e5

    inc de                                        ; $6b14: $13
    sbc c                                         ; $6b15: $99
    sub c                                         ; $6b16: $91
    and $a7                                       ; $6b17: $e6 $a7
    sub b                                         ; $6b19: $90
    jr z, @+$5b                                   ; $6b1a: $28 $59

    ld l, h                                       ; $6b1c: $6c
    ld d, c                                       ; $6b1d: $51
    cp $df                                        ; $6b1e: $fe $df
    dec e                                         ; $6b20: $1d
    ld d, c                                       ; $6b21: $51
    jp z, $ace9                                   ; $6b22: $ca $e9 $ac

    add hl, de                                    ; $6b25: $19
    ld e, l                                       ; $6b26: $5d
    nop                                           ; $6b27: $00
    db $fc                                        ; $6b28: $fc
    ld h, h                                       ; $6b29: $64

Jump_05a_6b2a:
    ld b, [hl]                                    ; $6b2a: $46
    sbc d                                         ; $6b2b: $9a

jr_05a_6b2c:
    pop bc                                        ; $6b2c: $c1
    jr jr_05a_6b7d                                ; $6b2d: $18 $4e

    dec bc                                        ; $6b2f: $0b
    or e                                          ; $6b30: $b3
    rla                                           ; $6b31: $17
    ld a, [$d1d1]                                 ; $6b32: $fa $d1 $d1
    rst $38                                       ; $6b35: $ff
    dec h                                         ; $6b36: $25
    ld a, a                                       ; $6b37: $7f
    rst $28                                       ; $6b38: $ef
    ret z                                         ; $6b39: $c8

    jr nz, jr_05a_6b8d                            ; $6b3a: $20 $51

    jp z, $ef71                                   ; $6b3c: $ca $71 $ef

    dec a                                         ; $6b3f: $3d
    db $fd                                        ; $6b40: $fd
    or d                                          ; $6b41: $b2
    add c                                         ; $6b42: $81
    ldh a, [$8f]                                  ; $6b43: $f0 $8f
    ld e, $f7                                     ; $6b45: $1e $f7
    ld e, d                                       ; $6b47: $5a
    rst $38                                       ; $6b48: $ff
    dec b                                         ; $6b49: $05
    nop                                           ; $6b4a: $00
    ld c, $19                                     ; $6b4b: $0e $19

jr_05a_6b4d:
    ld h, $18                                     ; $6b4d: $26 $18
    ld h, [hl]                                    ; $6b4f: $66
    ret z                                         ; $6b50: $c8

    ld d, [hl]                                    ; $6b51: $56
    inc e                                         ; $6b52: $1c
    db $ec                                        ; $6b53: $ec
    di                                            ; $6b54: $f3
    jr z, @+$77                                   ; $6b55: $28 $75

    add $95                                       ; $6b57: $c6 $95
    ld c, $ac                                     ; $6b59: $0e $ac
    db $10                                        ; $6b5b: $10
    sub [hl]                                      ; $6b5c: $96
    ld a, d                                       ; $6b5d: $7a
    and b                                         ; $6b5e: $a0
    reti                                          ; $6b5f: $d9


    ld e, a                                       ; $6b60: $5f
    ld [hl], d                                    ; $6b61: $72
    cp b                                          ; $6b62: $b8
    ld [hl], a                                    ; $6b63: $77
    ld h, h                                       ; $6b64: $64
    sub b                                         ; $6b65: $90
    jr z, jr_05a_6b4d                             ; $6b66: $28 $e5

    cp b                                          ; $6b68: $b8
    rst $30                                       ; $6b69: $f7
    sbc [hl]                                      ; $6b6a: $9e
    ld a, [hl]                                    ; $6b6b: $7e
    reti                                          ; $6b6c: $d9


    ld b, b                                       ; $6b6d: $40
    ld hl, sp+$47                                 ; $6b6e: $f8 $47
    adc a                                         ; $6b70: $8f
    ld a, e                                       ; $6b71: $7b
    xor l                                         ; $6b72: $ad
    ld e, a                                       ; $6b73: $5f
    add sp, $47                                   ; $6b74: $e8 $47
    ld b, a                                       ; $6b76: $47
    rst $38                                       ; $6b77: $ff
    sub a                                         ; $6b78: $97
    ld a, [c]                                     ; $6b79: $f2
    ld h, a                                       ; $6b7a: $67
    rst $30                                       ; $6b7b: $f7
    ld e, e                                       ; $6b7c: $5b

jr_05a_6b7d:
    xor a                                         ; $6b7d: $af
    xor $8c                                       ; $6b7e: $ee $8c
    rlc h                                         ; $6b80: $cb $04
    and e                                         ; $6b82: $a3
    reti                                          ; $6b83: $d9


    ld l, a                                       ; $6b84: $6f
    xor c                                         ; $6b85: $a9
    adc c                                         ; $6b86: $89
    adc $a1                                       ; $6b87: $ce $a1
    dec bc                                        ; $6b89: $0b
    nop                                           ; $6b8a: $00
    inc e                                         ; $6b8b: $1c
    ld sp, hl                                     ; $6b8c: $f9

jr_05a_6b8d:
    ld l, d                                       ; $6b8d: $6a
    ld l, $83                                     ; $6b8e: $2e $83
    rst $18                                       ; $6b90: $df
    ld a, [de]                                    ; $6b91: $1a
    ld c, e                                       ; $6b92: $4b
    reti                                          ; $6b93: $d9


    and c                                         ; $6b94: $a1
    ld a, [hl]                                    ; $6b95: $7e
    jp Jump_05a_4273                              ; $6b96: $c3 $73 $42


    or [hl]                                       ; $6b99: $b6
    ldh a, [$6f]                                  ; $6b9a: $f0 $6f
    ld e, e                                       ; $6b9c: $5b
    add h                                         ; $6b9d: $84
    db $fc                                        ; $6b9e: $fc
    cp l                                          ; $6b9f: $bd
    inc hl                                        ; $6ba0: $23
    add e                                         ; $6ba1: $83
    ld b, h                                       ; $6ba2: $44
    add hl, hl                                    ; $6ba3: $29
    rst $00                                       ; $6ba4: $c7
    cp l                                          ; $6ba5: $bd
    rst $30                                       ; $6ba6: $f7
    db $f4                                        ; $6ba7: $f4
    rlc [hl]                                      ; $6ba8: $cb $06
    jp nz, Jump_05a_7a3f                          ; $6baa: $c2 $3f $7a

    call c, Call_05a_516b                         ; $6bad: $dc $6b $51
    ld a, [hl-]                                   ; $6bb0: $3a
    inc bc                                        ; $6bb1: $03
    rst $20                                       ; $6bb2: $e7
    db $fc                                        ; $6bb3: $fc
    ld d, a                                       ; $6bb4: $57
    cp $d6                                        ; $6bb5: $fe $d6
    rst $28                                       ; $6bb7: $ef
    inc de                                        ; $6bb8: $13
    dec [hl]                                      ; $6bb9: $35
    ld e, l                                       ; $6bba: $5d
    nop                                           ; $6bbb: $00
    ld a, h                                       ; $6bbc: $7c
    dec sp                                        ; $6bbd: $3b
    ld l, l                                       ; $6bbe: $6d
    ld [hl], l                                    ; $6bbf: $75
    ld l, a                                       ; $6bc0: $6f
    adc l                                         ; $6bc1: $8d
    sub d                                         ; $6bc2: $92
    cp a                                          ; $6bc3: $bf
    ld c, l                                       ; $6bc4: $4d
    ld l, e                                       ; $6bc5: $6b
    dec hl                                        ; $6bc6: $2b
    ccf                                           ; $6bc7: $3f
    or e                                          ; $6bc8: $b3
    adc h                                         ; $6bc9: $8c
    sub h                                         ; $6bca: $94
    ld b, $8b                                     ; $6bcb: $06 $8b
    dec a                                         ; $6bcd: $3d
    add a                                         ; $6bce: $87
    call nc, Call_05a_73bf                        ; $6bcf: $d4 $bf $73
    inc c                                         ; $6bd2: $0c
    ld c, b                                       ; $6bd3: $48
    sub h                                         ; $6bd4: $94
    jp nc, Jump_05a_46b5                          ; $6bd5: $d2 $b5 $46

    or [hl]                                       ; $6bd8: $b6
    ld e, a                                       ; $6bd9: $5f
    ld [$1551], a                                 ; $6bda: $ea $51 $15
    ld a, e                                       ; $6bdd: $7b
    adc $27                                       ; $6bde: $ce $27
    dec [hl]                                      ; $6be0: $35
    ld b, a                                       ; $6be1: $47
    add hl, bc                                    ; $6be2: $09
    db $fd                                        ; $6be3: $fd
    add sp, $7e                                   ; $6be4: $e8 $7e
    ld hl, sp-$19                                 ; $6be6: $f8 $e7
    sub [hl]                                      ; $6be8: $96
    ld l, d                                       ; $6be9: $6a
    call z, $3b4f                                 ; $6bea: $cc $4f $3b
    ld c, [hl]                                    ; $6bed: $4e
    add h                                         ; $6bee: $84
    ld [hl], d                                    ; $6bef: $72
    ld c, d                                       ; $6bf0: $4a
    xor c                                         ; $6bf1: $a9
    sub h                                         ; $6bf2: $94
    db $d3                                        ; $6bf3: $d3
    ld e, c                                       ; $6bf4: $59
    add d                                         ; $6bf5: $82
    ld [bc], a                                    ; $6bf6: $02
    ld e, $a1                                     ; $6bf7: $1e $a1
    add hl, bc                                    ; $6bf9: $09
    ld c, a                                       ; $6bfa: $4f
    or h                                          ; $6bfb: $b4
    xor $28                                       ; $6bfc: $ee $28
    inc [hl]                                      ; $6bfe: $34
    ld a, e                                       ; $6bff: $7b
    push af                                       ; $6c00: $f5
    rst $28                                       ; $6c01: $ef
    inc e                                         ; $6c02: $1c
    inc bc                                        ; $6c03: $03
    ld [de], a                                    ; $6c04: $12
    and l                                         ; $6c05: $a5
    ld [hl], h                                    ; $6c06: $74
    xor l                                         ; $6c07: $ad
    sub c                                         ; $6c08: $91
    db $ed                                        ; $6c09: $ed
    sub a                                         ; $6c0a: $97
    ld a, d                                       ; $6c0b: $7a
    ld d, h                                       ; $6c0c: $54
    db $ed                                        ; $6c0d: $ed
    add hl, sp                                    ; $6c0e: $39
    sub c                                         ; $6c0f: $91
    sub h                                         ; $6c10: $94
    add l                                         ; $6c11: $85
    or b                                          ; $6c12: $b0
    call nc, Call_05a_4664                        ; $6c13: $d4 $64 $46
    sbc d                                         ; $6c16: $9a
    pop bc                                        ; $6c17: $c1
    jr jr_05a_6c68                                ; $6c18: $18 $4e

    dec bc                                        ; $6c1a: $0b
    or e                                          ; $6c1b: $b3
    cp a                                          ; $6c1c: $bf
    nop                                           ; $6c1d: $00
    sbc [hl]                                      ; $6c1e: $9e
    ld a, a                                       ; $6c1f: $7f
    and l                                         ; $6c20: $a5
    ld [hl], c                                    ; $6c21: $71
    rst $18                                       ; $6c22: $df
    rst $18                                       ; $6c23: $df

jr_05a_6c24:
    ld b, d                                       ; $6c24: $42
    ld a, a                                       ; $6c25: $7f
    ld l, l                                       ; $6c26: $6d
    add $59                                       ; $6c27: $c6 $59
    ld hl, sp+$5b                                 ; $6c29: $f8 $5b
    dec d                                         ; $6c2b: $15
    inc hl                                        ; $6c2c: $23
    rst $00                                       ; $6c2d: $c7
    call $75bf                                    ; $6c2e: $cd $bf $75
    ld l, a                                       ; $6c31: $6f
    adc l                                         ; $6c32: $8d
    ld d, [hl]                                    ; $6c33: $56
    ld d, e                                       ; $6c34: $53
    ld d, l                                       ; $6c35: $55
    ld e, h                                       ; $6c36: $5c
    ld [c], a                                     ; $6c37: $e2
    db $db                                        ; $6c38: $db
    ld h, $53                                     ; $6c39: $26 $53
    ld h, l                                       ; $6c3b: $65
    dec c                                         ; $6c3c: $0d
    dec b                                         ; $6c3d: $05
    nop                                           ; $6c3e: $00
    db $fc                                        ; $6c3f: $fc
    ld b, h                                       ; $6c40: $44
    rst $20                                       ; $6c41: $e7
    sub b                                         ; $6c42: $90
    ld h, d                                       ; $6c43: $62
    push hl                                       ; $6c44: $e5
    cpl                                           ; $6c45: $2f
    inc h                                         ; $6c46: $24
    sbc d                                         ; $6c47: $9a
    call nc, Call_000_3aa3                        ; $6c48: $d4 $a3 $3a
    ldh [$57], a                                  ; $6c4b: $e0 $57
    call z, Call_000_033f                         ; $6c4d: $cc $3f $03
    rst $20                                       ; $6c50: $e7
    db $fc                                        ; $6c51: $fc
    di                                            ; $6c52: $f3
    ld l, e                                       ; $6c53: $6b
    ld a, e                                       ; $6c54: $7b
    ld c, [hl]                                    ; $6c55: $4e
    ld e, h                                       ; $6c56: $5c
    nop                                           ; $6c57: $00
    ld e, $8f                                     ; $6c58: $1e $8f
    add hl, sp                                    ; $6c5a: $39
    ld h, b                                       ; $6c5b: $60
    ld h, d                                       ; $6c5c: $62
    ld [hl], b                                    ; $6c5d: $70
    ld e, b                                       ; $6c5e: $58
    ld h, a                                       ; $6c5f: $67
    db $d3                                        ; $6c60: $d3
    jp nz, Jump_05a_6a8c                          ; $6c61: $c2 $8c $6a

    dec d                                         ; $6c64: $15
    dec hl                                        ; $6c65: $2b
    inc a                                         ; $6c66: $3c
    and c                                         ; $6c67: $a1

jr_05a_6c68:
    ld a, e                                       ; $6c68: $7b
    sbc e                                         ; $6c69: $9b
    xor b                                         ; $6c6a: $a8
    call nc, Call_05a_4664                        ; $6c6b: $d4 $64 $46
    sbc d                                         ; $6c6e: $9a
    pop bc                                        ; $6c6f: $c1
    jr jr_05a_6cc0                                ; $6c70: $18 $4e

    dec bc                                        ; $6c72: $0b
    or e                                          ; $6c73: $b3
    cp a                                          ; $6c74: $bf
    nop                                           ; $6c75: $00
    ld e, $e1                                     ; $6c76: $1e $e1
    inc e                                         ; $6c78: $1c
    or d                                          ; $6c79: $b2
    cpl                                           ; $6c7a: $2f
    call c, $a2a4                                 ; $6c7b: $dc $a4 $a2
    sbc e                                         ; $6c7e: $9b
    inc [hl]                                      ; $6c7f: $34
    ld a, a                                       ; $6c80: $7f
    rst $20                                       ; $6c81: $e7
    ld e, h                                       ; $6c82: $5c
    push bc                                       ; $6c83: $c5
    db $fc                                        ; $6c84: $fc
    inc sp                                        ; $6c85: $33
    ld [hl], b                                    ; $6c86: $70
    adc $3f                                       ; $6c87: $ce $3f
    cp a                                          ; $6c89: $bf
    sub $51                                       ; $6c8a: $d6 $51
    ld [$b551], a                                 ; $6c8c: $ea $51 $b5
    dec l                                         ; $6c8f: $2d
    ld a, a                                       ; $6c90: $7f
    ld hl, $44d1                                  ; $6c91: $21 $d1 $44
    and l                                         ; $6c94: $a5
    adc d                                         ; $6c95: $8a
    inc bc                                        ; $6c96: $03
    ld d, e                                       ; $6c97: $53
    ld d, l                                       ; $6c98: $55
    sbc b                                         ; $6c99: $98
    sub c                                         ; $6c9a: $91
    ld h, [hl]                                    ; $6c9b: $66
    jr nc, jr_05a_6c24                            ; $6c9c: $30 $86

    db $d3                                        ; $6c9e: $d3
    jp nz, $d5ec                                  ; $6c9f: $c2 $ec $d5

    cp a                                          ; $6ca2: $bf
    or d                                          ; $6ca3: $b2
    ld l, l                                       ; $6ca4: $6d
    jp nc, $b89f                                  ; $6ca5: $d2 $9f $b8

    db $fd                                        ; $6ca8: $fd
    xor a                                         ; $6ca9: $af
    cp a                                          ; $6caa: $bf
    nop                                           ; $6cab: $00

Call_05a_6cac:
    ret nc                                        ; $6cac: $d0

    di                                            ; $6cad: $f3
    rst $08                                       ; $6cae: $cf
    ret nz                                        ; $6caf: $c0

    add hl, sp                                    ; $6cb0: $39
    rst $38                                       ; $6cb1: $ff
    db $fc                                        ; $6cb2: $fc
    ld e, d                                       ; $6cb3: $5a
    ld b, a                                       ; $6cb4: $47
    xor c                                         ; $6cb5: $a9
    ld b, a                                       ; $6cb6: $47
    push de                                       ; $6cb7: $d5
    or [hl]                                       ; $6cb8: $b6
    db $fc                                        ; $6cb9: $fc
    add l                                         ; $6cba: $85
    ld b, h                                       ; $6cbb: $44
    inc de                                        ; $6cbc: $13
    sub l                                         ; $6cbd: $95
    cp $c4                                        ; $6cbe: $fe $c4

jr_05a_6cc0:
    ld a, l                                       ; $6cc0: $7d
    xor a                                         ; $6cc1: $af
    reti                                          ; $6cc2: $d9


    ld l, e                                       ; $6cc3: $6b
    ld b, $63                                     ; $6cc4: $06 $63
    jr c, jr_05a_6d35                             ; $6cc6: $38 $6d

    call $02fe                                    ; $6cc8: $cd $fe $02
    db $fc                                        ; $6ccb: $fc
    inc hl                                        ; $6ccc: $23
    rst $38                                       ; $6ccd: $ff
    ld [de], a                                    ; $6cce: $12
    sbc [hl]                                      ; $6ccf: $9e
    or b                                          ; $6cd0: $b0
    add hl, de                                    ; $6cd1: $19
    ld h, a                                       ; $6cd2: $67
    and h                                         ; $6cd3: $a4
    inc bc                                        ; $6cd4: $03
    dec hl                                        ; $6cd5: $2b
    jp nz, $85ec                                  ; $6cd6: $c2 $ec $85

    and l                                         ; $6cd9: $a5
    dec a                                         ; $6cda: $3d
    scf                                           ; $6cdb: $37
    ld l, [hl]                                    ; $6cdc: $6e
    rrca                                          ; $6cdd: $0f
    db $eb                                        ; $6cde: $eb
    rra                                           ; $6cdf: $1f
    ld h, a                                       ; $6ce0: $67
    inc h                                         ; $6ce1: $24
    dec b                                         ; $6ce2: $05
    and e                                         ; $6ce3: $a3
    push af                                       ; $6ce4: $f5
    db $eb                                        ; $6ce5: $eb
    ld [hl], b                                    ; $6ce6: $70
    ld h, l                                       ; $6ce7: $65
    sbc l                                         ; $6ce8: $9d

Jump_05a_6ce9:
    ld h, l                                       ; $6ce9: $65
    ld [$c68d], a                                 ; $6cea: $ea $8d $c6
    rla                                           ; $6ced: $17
    ld a, [$f6fe]                                 ; $6cee: $fa $fe $f6
    xor b                                         ; $6cf1: $a8
    adc d                                         ; $6cf2: $8a
    or l                                          ; $6cf3: $b5
    cp $0b                                        ; $6cf4: $fe $0b
    nop                                           ; $6cf6: $00
    db $fc                                        ; $6cf7: $fc
    ld [hl], h                                    ; $6cf8: $74
    ld d, e                                       ; $6cf9: $53
    ld l, c                                       ; $6cfa: $69
    ld b, $63                                     ; $6cfb: $06 $63
    jr c, @+$2f                                   ; $6cfd: $38 $2d

    ld c, d                                       ; $6cff: $4a
    add sp, -$05                                  ; $6d00: $e8 $fb
    db $db                                        ; $6d02: $db
    and e                                         ; $6d03: $a3
    ld l, d                                       ; $6d04: $6a
    ld e, e                                       ; $6d05: $5b
    or c                                          ; $6d06: $b1
    add hl, sp                                    ; $6d07: $39
    or l                                          ; $6d08: $b5
    and $18                                       ; $6d09: $e6 $18
    rlca                                          ; $6d0b: $07
    xor l                                         ; $6d0c: $ad
    ld e, a                                       ; $6d0d: $5f
    dec a                                         ; $6d0e: $3d
    ld a, d                                       ; $6d0f: $7a
    db $ec                                        ; $6d10: $ec
    jp hl                                         ; $6d11: $e9


    cp a                                          ; $6d12: $bf
    nop                                           ; $6d13: $00
    db $fc                                        ; $6d14: $fc
    ld b, h                                       ; $6d15: $44
    rst $20                                       ; $6d16: $e7
    sub b                                         ; $6d17: $90
    or d                                          ; $6d18: $b2
    sub e                                         ; $6d19: $93
    ld [de], a                                    ; $6d1a: $12
    sbc l                                         ; $6d1b: $9d
    ld b, e                                       ; $6d1c: $43
    adc d                                         ; $6d1d: $8a
    ld d, l                                       ; $6d1e: $55
    cp $ec                                        ; $6d1f: $fe $ec
    cp $2f                                        ; $6d21: $fe $2f
    and c                                         ; $6d23: $a1
    rra                                           ; $6d24: $1f
    dec e                                         ; $6d25: $1d
    db $fd                                        ; $6d26: $fd
    cp d                                          ; $6d27: $ba
    or a                                          ; $6d28: $b7
    adc c                                         ; $6d29: $89
    ld c, d                                       ; $6d2a: $4a
    ld sp, $0cff                                  ; $6d2b: $31 $ff $0c
    sbc h                                         ; $6d2e: $9c
    di                                            ; $6d2f: $f3
    rst $08                                       ; $6d30: $cf
    xor a                                         ; $6d31: $af
    db $ed                                        ; $6d32: $ed
    add hl, sp                                    ; $6d33: $39
    ld [hl], c                                    ; $6d34: $71

jr_05a_6d35:
    ld bc, $c3fc                                  ; $6d35: $01 $fc $c3
    rst $38                                       ; $6d38: $ff
    ld e, d                                       ; $6d39: $5a
    push hl                                       ; $6d3a: $e5
    ld a, a                                       ; $6d3b: $7f
    ld [hl], d                                    ; $6d3c: $72
    add h                                         ; $6d3d: $84
    ld e, a                                       ; $6d3e: $5f
    inc sp                                        ; $6d3f: $33
    ld e, b                                       ; $6d40: $58
    db $e3                                        ; $6d41: $e3
    ld h, $15                                     ; $6d42: $26 $15
    db $dd                                        ; $6d44: $dd

jr_05a_6d45:
    and h                                         ; $6d45: $a4
    ld e, $55                                     ; $6d46: $1e $55
    db $db                                        ; $6d48: $db
    ld a, [c]                                     ; $6d49: $f2
    rla                                           ; $6d4a: $17
    ld [de], a                                    ; $6d4b: $12
    ld c, l                                       ; $6d4c: $4d
    ld d, h                                       ; $6d4d: $54
    ld a, [$b713]                                 ; $6d4e: $fa $13 $b7
    rst $38                                       ; $6d51: $ff
    push af                                       ; $6d52: $f5
    rla                                           ; $6d53: $17
    nop                                           ; $6d54: $00
    ld a, h                                       ; $6d55: $7c
    or c                                          ; $6d56: $b1
    rst $20                                       ; $6d57: $e7
    sub b                                         ; $6d58: $90
    ld h, d                                       ; $6d59: $62
    cp $19                                        ; $6d5a: $fe $19
    jr c, jr_05a_6d45                             ; $6d5c: $38 $e7

    sbc a                                         ; $6d5e: $9f
    ld e, a                                       ; $6d5f: $5f
    db $db                                        ; $6d60: $db
    ld [hl], e                                    ; $6d61: $73
    ld e, [hl]                                    ; $6d62: $5e
    or c                                          ; $6d63: $b1
    jp nz, Jump_05a_6a13                          ; $6d64: $c2 $13 $6a

    and d                                         ; $6d67: $a2
    ld [hl], e                                    ; $6d68: $73
    ld c, b                                       ; $6d69: $48
    dec a                                         ; $6d6a: $3d
    xor d                                         ; $6d6b: $aa
    inc bc                                        ; $6d6c: $03
    ld a, [hl]                                    ; $6d6d: $7e
    push hl                                       ; $6d6e: $e5
    dec de                                        ; $6d6f: $1b
    add a                                         ; $6d70: $87
    db $e4                                        ; $6d71: $e4
    ld l, a                                       ; $6d72: $6f
    ld c, a                                       ; $6d73: $4f
    and d                                         ; $6d74: $a2
    jp nc, $fcef                                  ; $6d75: $d2 $ef $fc

    xor a                                         ; $6d78: $af
    dec bc                                        ; $6d79: $0b
    nop                                           ; $6d7a: $00
    ret nc                                        ; $6d7b: $d0

    ld a, $cd                                     ; $6d7c: $3e $cd
    ld d, c                                       ; $6d7e: $51
    add l                                         ; $6d7f: $85
    ld h, [hl]                                    ; $6d80: $66
    ld a, a                                       ; $6d81: $7f
    ld bc, $0b1c                                  ; $6d82: $01 $1c $0b
    db $e3                                        ; $6d85: $e3
    ld h, $15                                     ; $6d86: $26 $15
    di                                            ; $6d88: $f3
    rst $08                                       ; $6d89: $cf
    ret nz                                        ; $6d8a: $c0

    ld sp, hl                                     ; $6d8b: $f9
    and l                                         ; $6d8c: $a5
    xor b                                         ; $6d8d: $a8
    add hl, de                                    ; $6d8e: $19
    ld h, a                                       ; $6d8f: $67
    ld [hl], l                                    ; $6d90: $75
    ld b, a                                       ; $6d91: $47
    and c                                         ; $6d92: $a1
    reti                                          ; $6d93: $d9


    dec bc                                        ; $6d94: $0b
    ld a, l                                       ; $6d95: $7d
    ld a, a                                       ; $6d96: $7f
    ld a, e                                       ; $6d97: $7b
    ld d, h                                       ; $6d98: $54
    db $ed                                        ; $6d99: $ed
    add hl, sp                                    ; $6d9a: $39
    pop bc                                        ; $6d9b: $c1
    dec l                                         ; $6d9c: $2d
    cp [hl]                                       ; $6d9d: $be
    xor l                                         ; $6d9e: $ad
    ld a, [bc]                                    ; $6d9f: $0a
    ld h, c                                       ; $6da0: $61
    jp hl                                         ; $6da1: $e9


    cp $9e                                        ; $6da2: $fe $9e
    rrca                                          ; $6da4: $0f
    dec b                                         ; $6da5: $05
    nop                                           ; $6da6: $00
    sbc [hl]                                      ; $6da7: $9e
    ld l, [hl]                                    ; $6da8: $6e
    ret c                                         ; $6da9: $d8

    ld c, b                                       ; $6daa: $48
    ld [$1ade], a                                 ; $6dab: $ea $de $1a
    xor a                                         ; $6dae: $af
    ld e, b                                       ; $6daf: $58
    ld d, l                                       ; $6db0: $55
    sub $4a                                       ; $6db1: $d6 $4a
    ld b, a                                       ; $6db3: $47
    cp [hl]                                       ; $6db4: $be
    db $fd                                        ; $6db5: $fd
    rla                                           ; $6db6: $17
    nop                                           ; $6db7: $00
    sbc h                                         ; $6db8: $9c
    db $db                                        ; $6db9: $db
    dec e                                         ; $6dba: $1d
    and l                                         ; $6dbb: $a5
    ld a, e                                       ; $6dbc: $7b
    ld l, e                                       ; $6dbd: $6b
    sub h                                         ; $6dbe: $94
    sbc d                                         ; $6dbf: $9a
    or d                                          ; $6dc0: $b2
    adc $32                                       ; $6dc1: $ce $32
    push hl                                       ; $6dc3: $e5
    rst $08                                       ; $6dc4: $cf
    xor $ff                                       ; $6dc5: $ee $ff
    sub d                                         ; $6dc7: $92
    rst $38                                       ; $6dc8: $ff
    ld d, l                                       ; $6dc9: $55
    xor a                                         ; $6dca: $af
    ld [hl], h                                    ; $6dcb: $74
    db $e4                                        ; $6dcc: $e4
    db $db                                        ; $6dcd: $db
    db $fd                                        ; $6dce: $fd
    rst $30                                       ; $6dcf: $f7
    ld a, a                                       ; $6dd0: $7f
    ld e, l                                       ; $6dd1: $5d
    nop                                           ; $6dd2: $00
    ld l, [hl]                                    ; $6dd3: $6e
    or a                                          ; $6dd4: $b7
    and l                                         ; $6dd5: $a5
    cp e                                          ; $6dd6: $bb
    rst $10                                       ; $6dd7: $d7
    ld [hl], l                                    ; $6dd8: $75
    push de                                       ; $6dd9: $d5
    xor [hl]                                      ; $6dda: $ae
    call $baeb                                    ; $6ddb: $cd $eb $ba
    cp [hl]                                       ; $6dde: $be
    dec l                                         ; $6ddf: $2d
    dec e                                         ; $6de0: $1d
    db $e3                                        ; $6de1: $e3
    cp d                                          ; $6de2: $ba
    ld l, $00                                     ; $6de3: $2e $00
    inc a                                         ; $6de5: $3c
    sub c                                         ; $6de6: $91
    ld a, [hl+]                                   ; $6de7: $2a
    adc l                                         ; $6de8: $8d
    ld d, h                                       ; $6de9: $54
    ld l, c                                       ; $6dea: $69
    and h                                         ; $6deb: $a4
    ld c, d                                       ; $6dec: $4a
    inc hl                                        ; $6ded: $23
    cp l                                          ; $6dee: $bd
    xor [hl]                                      ; $6def: $ae
    db $eb                                        ; $6df0: $eb
    ld [bc], a                                    ; $6df1: $02
    ld l, [hl]                                    ; $6df2: $6e
    or a                                          ; $6df3: $b7
    and l                                         ; $6df4: $a5
    cp e                                          ; $6df5: $bb
    ld c, c                                       ; $6df6: $49
    ld c, l                                       ; $6df7: $4d
    add $95                                       ; $6df8: $c6 $95
    ld h, $35                                     ; $6dfa: $26 $35
    add hl, de                                    ; $6dfc: $19
    ld d, a                                       ; $6dfd: $57
    ld a, d                                       ; $6dfe: $7a
    ld e, l                                       ; $6dff: $5d
    rla                                           ; $6e00: $17
    nop                                           ; $6e01: $00
    inc a                                         ; $6e02: $3c
    adc $f0                                       ; $6e03: $ce $f0
    jr c, jr_05a_6e1a                             ; $6e05: $38 $13

    adc h                                         ; $6e07: $8c
    cp l                                          ; $6e08: $bd
    inc e                                         ; $6e09: $1c
    ld h, d                                       ; $6e0a: $62

jr_05a_6e0b:
    ld [hl], a                                    ; $6e0b: $77
    or b                                          ; $6e0c: $b0
    and h                                         ; $6e0d: $a4
    ldh a, [rLY]                                  ; $6e0e: $f0 $44
    ld c, a                                       ; $6e10: $4f
    sub h                                         ; $6e11: $94
    db $fd                                        ; $6e12: $fd
    or d                                          ; $6e13: $b2
    scf                                           ; $6e14: $37
    jr z, jr_05a_6e17                             ; $6e15: $28 $00

jr_05a_6e17:
    ret nc                                        ; $6e17: $d0

    sub l                                         ; $6e18: $95
    sub h                                         ; $6e19: $94

jr_05a_6e1a:
    and a                                         ; $6e1a: $a7
    dec de                                        ; $6e1b: $1b
    ld [hl], $94                                  ; $6e1c: $36 $94
    rst $38                                       ; $6e1e: $ff
    sub [hl]                                      ; $6e1f: $96
    adc $57                                       ; $6e20: $ce $57
    ld b, d                                       ; $6e22: $42
    pop de                                        ; $6e23: $d1
    cp l                                          ; $6e24: $bd
    add d                                         ; $6e25: $82
    or c                                          ; $6e26: $b1
    and $96                                       ; $6e27: $e6 $96
    ld c, $6e                                     ; $6e29: $0e $6e
    db $db                                        ; $6e2b: $db
    jr z, jr_05a_6e0b                             ; $6e2c: $28 $dd

    ld e, e                                       ; $6e2e: $5b
    ld h, e                                       ; $6e2f: $63
    call nc, $b725                                ; $6e30: $d4 $25 $b7
    db $db                                        ; $6e33: $db
    jp nc, Jump_05a_6e5d                          ; $6e34: $d2 $5d $6e

    add hl, sp                                    ; $6e37: $39
    ret c                                         ; $6e38: $d8

    or l                                          ; $6e39: $b5
    db $eb                                        ; $6e3a: $eb
    cp d                                          ; $6e3b: $ba
    nop                                           ; $6e3c: $00
    inc e                                         ; $6e3d: $1c
    adc $a0                                       ; $6e3e: $ce $a0
    inc sp                                        ; $6e40: $33
    cp b                                          ; $6e41: $b8
    inc l                                         ; $6e42: $2c
    sub $fa                                       ; $6e43: $d6 $fa
    push hl                                       ; $6e45: $e5
    inc de                                        ; $6e46: $13
    ld [hl], l                                    ; $6e47: $75
    sbc h                                         ; $6e48: $9c
    inc de                                        ; $6e49: $13
    dec h                                         ; $6e4a: $25
    db $db                                        ; $6e4b: $db
    ld a, [de]                                    ; $6e4c: $1a
    and e                                         ; $6e4d: $a3
    add h                                         ; $6e4e: $84
    and l                                         ; $6e4f: $a5
    inc [hl]                                      ; $6e50: $34
    or [hl]                                       ; $6e51: $b6
    and e                                         ; $6e52: $a3
    dec sp                                        ; $6e53: $3b
    sub e                                         ; $6e54: $93
    rst $38                                       ; $6e55: $ff
    add hl, hl                                    ; $6e56: $29
    ld l, [hl]                                    ; $6e57: $6e
    rrca                                          ; $6e58: $0f
    ld d, e                                       ; $6e59: $53
    adc [hl]                                      ; $6e5a: $8e
    ld e, e                                       ; $6e5b: $5b
    cp l                                          ; $6e5c: $bd

Jump_05a_6e5d:
    rst $30                                       ; $6e5d: $f7
    or b                                          ; $6e5e: $b0
    db $eb                                        ; $6e5f: $eb
    cp d                                          ; $6e60: $ba
    ld [hl], h                                    ; $6e61: $74
    dec sp                                        ; $6e62: $3b
    ld [hl], e                                    ; $6e63: $73
    dec sp                                        ; $6e64: $3b
    ld [hl], e                                    ; $6e65: $73
    ld [hl], e                                    ; $6e66: $73
    or c                                          ; $6e67: $b1
    ret                                           ; $6e68: $c9


    dec [hl]                                      ; $6e69: $35
    sub a                                         ; $6e6a: $97
    pop hl                                        ; $6e6b: $e1
    jr nc, jr_05a_6edc                            ; $6e6c: $30 $6e

    nop                                           ; $6e6e: $00
    db $fc                                        ; $6e6f: $fc
    ld l, h                                       ; $6e70: $6c
    adc h                                         ; $6e71: $8c
    and $06                                       ; $6e72: $e6 $06
    ld l, [hl]                                    ; $6e74: $6e
    ld l, a                                       ; $6e75: $6f
    cp $a5                                        ; $6e76: $fe $a5
    jp c, Jump_05a_4bad                           ; $6e78: $da $ad $4b

    db $fc                                        ; $6e7b: $fc
    db $e4                                        ; $6e7c: $e4
    inc c                                         ; $6e7d: $0c
    ccf                                           ; $6e7e: $3f
    add hl, sp                                    ; $6e7f: $39
    jp $294f                                      ; $6e80: $c3 $4f $29


    sub l                                         ; $6e83: $95
    ld a, [$be59]                                 ; $6e84: $fa $59 $be
    db $fd                                        ; $6e87: $fd
    ld e, a                                       ; $6e88: $5f
    ld a, [bc]                                    ; $6e89: $0a
    or [hl]                                       ; $6e8a: $b6
    inc de                                        ; $6e8b: $13
    rst $10                                       ; $6e8c: $d7
    ld a, [de]                                    ; $6e8d: $1a
    rst $30                                       ; $6e8e: $f7
    adc [hl]                                      ; $6e8f: $8e
    ld a, [c]                                     ; $6e90: $f2
    or a                                          ; $6e91: $b7
    ld h, e                                       ; $6e92: $63
    sbc e                                         ; $6e93: $9b
    sub d                                         ; $6e94: $92
    add d                                         ; $6e95: $82
    or c                                          ; $6e96: $b1
    rst $20                                       ; $6e97: $e7
    dec hl                                        ; $6e98: $2b
    dec sp                                        ; $6e99: $3b
    ld de, $a465                                  ; $6e9a: $11 $65 $a4
    xor a                                         ; $6e9d: $af
    cp $b5                                        ; $6e9e: $fe $b5
    dec l                                         ; $6ea0: $2d
    push hl                                       ; $6ea1: $e5
    adc $e4                                       ; $6ea2: $ce $e4
    adc $e4                                       ; $6ea4: $ce $e4
    ld e, a                                       ; $6ea6: $5f
    ld l, c                                       ; $6ea7: $69
    call c, $97f7                                 ; $6ea8: $dc $f7 $97
    ret nc                                        ; $6eab: $d0

    rst $30                                       ; $6eac: $f7
    rst $30                                       ; $6ead: $f7
    db $fc                                        ; $6eae: $fc
    sub a                                         ; $6eaf: $97
    ld a, [hl-]                                   ; $6eb0: $3a
    jp nc, $9ca6                                  ; $6eb1: $d2 $a6 $9c

    and [hl]                                      ; $6eb4: $a6
    ld l, l                                       ; $6eb5: $6d
    ld d, d                                       ; $6eb6: $52

jr_05a_6eb7:
    rst $30                                       ; $6eb7: $f7
    add sp, $7e                                   ; $6eb8: $e8 $7e
    call $9a51                                    ; $6eba: $cd $51 $9a
    pop bc                                        ; $6ebd: $c1
    ret c                                         ; $6ebe: $d8

    sub a                                         ; $6ebf: $97
    ldh a, [rLY]                                  ; $6ec0: $f0 $44
    adc e                                         ; $6ec2: $8b
    rst $00                                       ; $6ec3: $c7
    add hl, de                                    ; $6ec4: $19
    ld e, $67                                     ; $6ec5: $1e $67
    ld a, b                                       ; $6ec7: $78
    sbc [hl]                                      ; $6ec8: $9e
    or c                                          ; $6ec9: $b1
    ld c, h                                       ; $6eca: $4c
    ld c, $b1                                     ; $6ecb: $0e $b1
    dec sp                                        ; $6ecd: $3b
    ret c                                         ; $6ece: $d8

    ld [hl], l                                    ; $6ecf: $75
    ld e, l                                       ; $6ed0: $5d
    nop                                           ; $6ed1: $00
    ld a, h                                       ; $6ed2: $7c
    db $db                                        ; $6ed3: $db
    inc h                                         ; $6ed4: $24
    ld a, a                                       ; $6ed5: $7f
    sbc e                                         ; $6ed6: $9b
    ld c, b                                       ; $6ed7: $48
    dec e                                         ; $6ed8: $1d
    add hl, hl                                    ; $6ed9: $29
    add h                                         ; $6eda: $84
    and b                                         ; $6edb: $a0

jr_05a_6edc:
    db $e4                                        ; $6edc: $e4
    ld h, b                                       ; $6edd: $60
    rst $10                                       ; $6ede: $d7
    and $05                                       ; $6edf: $e6 $05
    nop                                           ; $6ee1: $00
    sbc h                                         ; $6ee2: $9c
    ld e, e                                       ; $6ee3: $5b
    and e                                         ; $6ee4: $a3
    call nc, $7594                                ; $6ee5: $d4 $94 $75
    sub [hl]                                      ; $6ee8: $96
    jp hl                                         ; $6ee9: $e9


    ld [hl], b                                    ; $6eea: $70
    ld h, l                                       ; $6eeb: $65
    ld c, l                                       ; $6eec: $4d
    and h                                         ; $6eed: $a4
    call c, $dc99                                 ; $6eee: $dc $99 $dc
    sbc c                                         ; $6ef1: $99
    db $fc                                        ; $6ef2: $fc
    xor l                                         ; $6ef3: $ad
    ld a, a                                       ; $6ef4: $7f
    ld l, $c3                                     ; $6ef5: $2e $c3
    ld h, c                                       ; $6ef7: $61
    sub a                                         ; $6ef8: $97
    inc a                                         ; $6ef9: $3c
    ld a, d                                       ; $6efa: $7a
    ld sp, hl                                     ; $6efb: $f9
    dec bc                                        ; $6efc: $0b
    ld hl, $5dcd                                  ; $6efd: $21 $cd $5d
    ld d, $dd                                     ; $6f00: $16 $dd
    ld [hl], h                                    ; $6f02: $74
    ld e, l                                       ; $6f03: $5d
    sub a                                         ; $6f04: $97
    ld l, [hl]                                    ; $6f05: $6e
    ld h, a                                       ; $6f06: $67
    ld l, [hl]                                    ; $6f07: $6e
    ld h, a                                       ; $6f08: $67
    ld l, [hl]                                    ; $6f09: $6e
    ld l, $36                                     ; $6f0a: $2e $36
    cp c                                          ; $6f0c: $b9
    and $32                                       ; $6f0d: $e6 $32
    inc e                                         ; $6f0f: $1c
    and [hl]                                      ; $6f10: $a6
    adc [hl]                                      ; $6f11: $8e
    add hl, de                                    ; $6f12: $19
    ld hl, $1adb                                  ; $6f13: $21 $db $1a
    sub $af                                       ; $6f16: $d6 $af
    ld sp, hl                                     ; $6f18: $f9
    dec sp                                        ; $6f19: $3b
    and e                                         ; $6f1a: $a3
    db $f4                                        ; $6f1b: $f4
    dec sp                                        ; $6f1c: $3b
    rst $38                                       ; $6f1d: $ff
    sub l                                         ; $6f1e: $95
    add [hl]                                      ; $6f1f: $86
    inc sp                                        ; $6f20: $33
    ld l, c                                       ; $6f21: $69
    jr c, jr_05a_6eb7                             ; $6f22: $38 $93

    add $4e                                       ; $6f24: $c6 $4e
    cp h                                          ; $6f26: $bc
    rst $28                                       ; $6f27: $ef
    cpl                                           ; $6f28: $2f
    call $1551                                    ; $6f29: $cd $51 $15
    ld h, $18                                     ; $6f2c: $26 $18
    rlca                                          ; $6f2e: $07
    ld h, h                                       ; $6f2f: $64
    or h                                          ; $6f30: $b4
    ld [hl], d                                    ; $6f31: $72
    ld h, a                                       ; $6f32: $67
    ld [hl], d                                    ; $6f33: $72
    ld h, a                                       ; $6f34: $67
    ld a, [c]                                     ; $6f35: $f2
    add c                                         ; $6f36: $81
    dec e                                         ; $6f37: $1d
    ld d, c                                       ; $6f38: $51
    ld a, b                                       ; $6f39: $78
    rst $38                                       ; $6f3a: $ff
    or h                                          ; $6f3b: $b4
    cp l                                          ; $6f3c: $bd
    nop                                           ; $6f3d: $00
    ret nc                                        ; $6f3e: $d0

    adc $84                                       ; $6f3f: $ce $84
    inc sp                                        ; $6f41: $33
    or c                                          ; $6f42: $b1
    or d                                          ; $6f43: $b2
    ld l, l                                       ; $6f44: $6d
    ld d, d                                       ; $6f45: $52
    xor $4c                                       ; $6f46: $ee $4c
    xor $4c                                       ; $6f48: $ee $4c

jr_05a_6f4a:
    cp $d6                                        ; $6f4a: $fe $d6
    ccf                                           ; $6f4c: $3f
    sub a                                         ; $6f4d: $97
    pop hl                                        ; $6f4e: $e1
    or b                                          ; $6f4f: $b0
    ld a, [hl]                                    ; $6f50: $7e
    dec [hl]                                      ; $6f51: $35
    pop de                                        ; $6f52: $d1
    ld l, c                                       ; $6f53: $69
    jp nc, $cae1                                  ; $6f54: $d2 $e1 $ca

    jr nz, jr_05a_6fb2                            ; $6f57: $20 $59

    ld d, d                                       ; $6f59: $52
    inc a                                         ; $6f5a: $3c
    rst $08                                       ; $6f5b: $cf
    ld e, b                                       ; $6f5c: $58
    add $0d                                       ; $6f5d: $c6 $0d
    nop                                           ; $6f5f: $00
    ld a, h                                       ; $6f60: $7c
    ld e, e                                       ; $6f61: $5b
    db $e3                                        ; $6f62: $e3
    sbc h                                         ; $6f63: $9c
    cp a                                          ; $6f64: $bf
    xor [hl]                                      ; $6f65: $ae
    dec hl                                        ; $6f66: $2b

Jump_05a_6f67:
    ld d, [hl]                                    ; $6f67: $56
    ld a, b                                       ; $6f68: $78
    ld [c], a                                     ; $6f69: $e2
    cp d                                          ; $6f6a: $ba
    xor [hl]                                      ; $6f6b: $ae
    inc [hl]                                      ; $6f6c: $34
    bit 1, c                                      ; $6f6d: $cb $49
    ld a, b                                       ; $6f6f: $78
    ldh a, [$ba]                                  ; $6f70: $f0 $ba
    ld l, $00                                     ; $6f72: $2e $00
    db $fc                                        ; $6f74: $fc
    and e                                         ; $6f75: $a3
    ld a, d                                       ; $6f76: $7a
    adc h                                         ; $6f77: $8c
    adc c                                         ; $6f78: $89
    add d                                         ; $6f79: $82
    ld d, c                                       ; $6f7a: $51
    cp $b3                                        ; $6f7b: $fe $b3
    cp b                                          ; $6f7d: $b8
    rst $28                                       ; $6f7e: $ef
    ccf                                           ; $6f7f: $3f
    db $fd                                        ; $6f80: $fd
    ld d, b                                       ; $6f81: $50
    ld [hl], d                                    ; $6f82: $72
    ld b, b                                       ; $6f83: $40
    ld e, c                                       ; $6f84: $59
    ld l, a                                       ; $6f85: $6f
    db $eb                                        ; $6f86: $eb
    ld [hl], a                                    ; $6f87: $77
    cp [hl]                                       ; $6f88: $be
    db $ec                                        ; $6f89: $ec
    sub a                                         ; $6f8a: $97
    db $fd                                        ; $6f8b: $fd
    sbc a                                         ; $6f8c: $9f
    cp $a4                                        ; $6f8d: $fe $a4
    and $28                                       ; $6f8f: $e6 $28
    reti                                          ; $6f91: $d9


    sub $68                                       ; $6f92: $d6 $68
    push af                                       ; $6f94: $f5
    ret nz                                        ; $6f95: $c0

    sbc $2d                                       ; $6f96: $de $2d
    reti                                          ; $6f98: $d9


    ld a, [de]                                    ; $6f99: $1a
    ld d, c                                       ; $6f9a: $51
    ld e, l                                       ; $6f9b: $5d
    nop                                           ; $6f9c: $00
    ld a, h                                       ; $6f9d: $7c
    ld e, e                                       ; $6f9e: $5b
    jp $85ec                                      ; $6f9f: $c3 $ec $85


    and l                                         ; $6fa2: $a5
    sbc e                                         ; $6fa3: $9b
    adc e                                         ; $6fa4: $8b
    ld c, l                                       ; $6fa5: $4d
    xor [hl]                                      ; $6fa6: $ae
    cp c                                          ; $6fa7: $b9
    inc c                                         ; $6fa8: $0c
    add a                                         ; $6fa9: $87
    ld e, l                                       ; $6faa: $5d
    ld [hl], d                                    ; $6fab: $72
    or b                                          ; $6fac: $b0
    ld l, e                                       ; $6fad: $6b
    di                                            ; $6fae: $f3
    sub d                                         ; $6faf: $92
    ld b, e                                       ; $6fb0: $43
    add [hl]                                      ; $6fb1: $86

jr_05a_6fb2:
    add hl, bc                                    ; $6fb2: $09
    add [hl]                                      ; $6fb3: $86
    add hl, de                                    ; $6fb4: $19
    or d                                          ; $6fb5: $b2
    dec d                                         ; $6fb6: $15
    rlca                                          ; $6fb7: $07
    ei                                            ; $6fb8: $fb
    inc a                                         ; $6fb9: $3c
    ld [hl], h                                    ; $6fba: $74
    jr z, jr_05a_6f4a                             ; $6fbb: $28 $8d

    xor $d5                                       ; $6fbd: $ee $d5
    cp l                                          ; $6fbf: $bd
    dec [hl]                                      ; $6fc0: $35
    ld e, d                                       ; $6fc1: $5a
    pop de                                        ; $6fc2: $d1
    or [hl]                                       ; $6fc3: $b6
    scf                                           ; $6fc4: $37
    ld d, c                                       ; $6fc5: $51
    add hl, hl                                    ; $6fc6: $29
    ld a, a                                       ; $6fc7: $7f
    db $eb                                        ; $6fc8: $eb
    sbc a                                         ; $6fc9: $9f
    bit 6, b                                      ; $6fca: $cb $70
    ld e, b                                       ; $6fcc: $58
    rst $38                                       ; $6fcd: $ff
    dec h                                         ; $6fce: $25
    ld a, [hl]                                    ; $6fcf: $7e
    ld [hl], $46                                  ; $6fd0: $36 $46
    ld e, a                                       ; $6fd2: $5f
    ld [c], a                                     ; $6fd3: $e2
    or b                                          ; $6fd4: $b0
    rst $38                                       ; $6fd5: $ff
    sbc [hl]                                      ; $6fd6: $9e
    xor b                                         ; $6fd7: $a8
    rra                                           ; $6fd8: $1f
    db $dd                                        ; $6fd9: $dd
    rst $38                                       ; $6fda: $ff
    ld d, b                                       ; $6fdb: $50
    nop                                           ; $6fdc: $00
    inc e                                         ; $6fdd: $1c
    db $fd                                        ; $6fde: $fd
    ld l, d                                       ; $6fdf: $6a
    cp d                                          ; $6fe0: $ba
    ld c, c                                       ; $6fe1: $49
    ld l, c                                       ; $6fe2: $69
    db $f4                                        ; $6fe3: $f4
    ld a, [$be8d]                                 ; $6fe4: $fa $8d $be
    inc sp                                        ; $6fe7: $33
    ldh a, [$c0]                                  ; $6fe8: $f0 $c0
    ei                                            ; $6fea: $fb
    cpl                                           ; $6feb: $2f
    ld [hl], c                                    ; $6fec: $71
    add [hl]                                      ; $6fed: $86
    ld h, d                                       ; $6fee: $62
    push hl                                       ; $6fef: $e5
    db $e3                                        ; $6ff0: $e3
    ld e, d                                       ; $6ff1: $5a
    cp a                                          ; $6ff2: $bf
    and $32                                       ; $6ff3: $e6 $32
    inc e                                         ; $6ff5: $1c
    sub $9f                                       ; $6ff6: $d6 $9f
    call nc, $ba3d                                ; $6ff8: $d4 $3d $ba
    ld e, a                                       ; $6ffb: $5f
    cp a                                          ; $6ffc: $bf
    push af                                       ; $6ffd: $f5
    ld [hl], e                                    ; $6ffe: $73
    ld c, e                                       ; $6fff: $4b
    ld d, $f2                                     ; $7000: $16 $f2
    sbc a                                         ; $7002: $9f
    ld a, l                                       ; $7003: $7d
    push af                                       ; $7004: $f5
    cp a                                          ; $7005: $bf
    ldh a, [$e0]                                  ; $7006: $f0 $e0
    db $db                                        ; $7008: $db
    ld e, [hl]                                    ; $7009: $5e
    nop                                           ; $700a: $00
    cp h                                          ; $700b: $bc
    cp e                                          ; $700c: $bb
    adc l                                         ; $700d: $8d
    sub [hl]                                      ; $700e: $96
    call nc, $fdfd                                ; $700f: $d4 $fd $fd
    rst $30                                       ; $7012: $f7
    jp z, $de21                                   ; $7013: $ca $21 $de

    add hl, bc                                    ; $7016: $09
    or d                                          ; $7017: $b2
    ret z                                         ; $7018: $c8

    ld l, $00                                     ; $7019: $2e $00
    ld a, h                                       ; $701b: $7c
    ld e, e                                       ; $701c: $5b
    sub h                                         ; $701d: $94
    ld d, d                                       ; $701e: $52
    ret                                           ; $701f: $c9


    cp [hl]                                       ; $7020: $be
    ld [hl], b                                    ; $7021: $70
    ld c, e                                       ; $7022: $4b
    pop de                                        ; $7023: $d1
    ld c, l                                       ; $7024: $4d
    ld a, [hl+]                                   ; $7025: $2a
    jp c, $ed92                                   ; $7026: $da $92 $ed

    ld d, $69                                     ; $7029: $16 $69
    ld d, d                                       ; $702b: $52
    halt                                          ; $702c: $76
    ld bc, $1bfc                                  ; $702d: $01 $fc $1b
    db $10                                        ; $7030: $10
    ld [$95c9], a                                 ; $7031: $ea $c9 $95
    call nc, $1dbd                                ; $7034: $d4 $bd $1d
    and l                                         ; $7037: $a5
    cp c                                          ; $7038: $b9
    inc c                                         ; $7039: $0c
    add a                                         ; $703a: $87
    ret                                           ; $703b: $c9


    rst $00                                       ; $703c: $c7
    or l                                          ; $703d: $b5
    adc [hl]                                      ; $703e: $8e
    cp $2f                                        ; $703f: $fe $2f
    jr z, jr_05a_7043                             ; $7041: $28 $00

jr_05a_7043:
    sbc h                                         ; $7043: $9c
    ld e, e                                       ; $7044: $5b
    inc h                                         ; $7045: $24
    rrca                                          ; $7046: $0f
    ld sp, hl                                     ; $7047: $f9
    add hl, sp                                    ; $7048: $39
    and c                                         ; $7049: $a1
    add l                                         ; $704a: $85
    daa                                           ; $704b: $27
    ld e, d                                       ; $704c: $5a
    ld [hl], e                                    ; $704d: $73
    add hl, de                                    ; $704e: $19
    ld c, $4b                                     ; $704f: $0e $4b
    jp z, Jump_05a_7621                           ; $7051: $ca $21 $76

    rlca                                          ; $7054: $07
    ld c, e                                       ; $7055: $4b
    ld a, [bc]                                    ; $7056: $0a
    ld a, [hl]                                    ; $7057: $7e
    and l                                         ; $7058: $a5
    ld a, a                                       ; $7059: $7f
    add $af                                       ; $705a: $c6 $af
    ld l, l                                       ; $705c: $6d
    jp hl                                         ; $705d: $e9


    sbc $38                                       ; $705e: $de $38
    ld [hl], c                                    ; $7060: $71
    ld c, $d5                                     ; $7061: $0e $d5
    xor d                                         ; $7063: $aa
    scf                                           ; $7064: $37
    sbc d                                         ; $7065: $9a
    jr z, @-$55                                   ; $7066: $28 $a9

    ld a, e                                       ; $7068: $7b
    dec sp                                        ; $7069: $3b
    ld c, d                                       ; $706a: $4a
    or [hl]                                       ; $706b: $b6
    dec [hl]                                      ; $706c: $35
    ld e, d                                       ; $706d: $5a
    ld a, $ae                                     ; $706e: $3e $ae
    ld [hl], l                                    ; $7070: $75
    db $f4                                        ; $7071: $f4
    ld a, a                                       ; $7072: $7f
    ld e, l                                       ; $7073: $5d
    nop                                           ; $7074: $00
    ret nc                                        ; $7075: $d0

    dec l                                         ; $7076: $2d
    inc a                                         ; $7077: $3c
    and c                                         ; $7078: $a1
    and d                                         ; $7079: $a2
    ret                                           ; $707a: $c9


    dec b                                         ; $707b: $05
    inc de                                        ; $707c: $13
    sub l                                         ; $707d: $95
    ld a, [$e6df]                                 ; $707e: $fa $df $e6
    ld a, a                                       ; $7081: $7f
    xor c                                         ; $7082: $a9
    ld b, a                                       ; $7083: $47
    push de                                       ; $7084: $d5
    sbc [hl]                                      ; $7085: $9e
    di                                            ; $7086: $f3
    ld c, c                                       ; $7087: $49
    pop af                                        ; $7088: $f1
    inc a                                         ; $7089: $3c
    ld h, e                                       ; $708a: $63
    reti                                          ; $708b: $d9


    dec b                                         ; $708c: $05
    nop                                           ; $708d: $00
    ld c, $76                                     ; $708e: $0e $76
    ld l, l                                       ; $7090: $6d
    ld h, $75                                     ; $7091: $26 $75
    ld l, a                                       ; $7093: $6f
    adc l                                         ; $7094: $8d
    ld d, $96                                     ; $7095: $16 $96
    and $32                                       ; $7097: $e6 $32
    db $ec                                        ; $7099: $ec
    ld e, $17                                     ; $709a: $1e $17

jr_05a_709c:
    nop                                           ; $709c: $00
    cp h                                          ; $709d: $bc
    ld h, e                                       ; $709e: $63
    cp [hl]                                       ; $709f: $be
    ld l, h                                       ; $70a0: $6c
    ld l, e                                       ; $70a1: $6b
    or h                                          ; $70a2: $b4
    and $32                                       ; $70a3: $e6 $32
    or h                                          ; $70a5: $b4
    add l                                         ; $70a6: $85
    ld [bc], a                                    ; $70a7: $02
    sbc [hl]                                      ; $70a8: $9e
    ld l, [hl]                                    ; $70a9: $6e
    ret c                                         ; $70aa: $d8

    cp b                                          ; $70ab: $b8
    call nz, Call_000_3a19                        ; $70ac: $c4 $19 $3a
    cp a                                          ; $70af: $bf
    db $dd                                        ; $70b0: $dd
    cp b                                          ; $70b1: $b8
    cp d                                          ; $70b2: $ba
    or a                                          ; $70b3: $b7
    add $28                                       ; $70b4: $c6 $28
    db $dd                                        ; $70b6: $dd
    ld e, h                                       ; $70b7: $5c
    ld l, h                                       ; $70b8: $6c
    ld [hl], d                                    ; $70b9: $72
    call $3865                                    ; $70ba: $cd $65 $38
    and [hl]                                      ; $70bd: $a6
    ld b, l                                       ; $70be: $45
    dec h                                         ; $70bf: $25
    dec b                                         ; $70c0: $05
    cp a                                          ; $70c1: $bf
    jr c, jr_05a_709c                             ; $70c2: $38 $d8

    rst $20                                       ; $70c4: $e7
    and c                                         ; $70c5: $a1
    ld b, e                                       ; $70c6: $43
    ld l, c                                       ; $70c7: $69
    ld [hl], h                                    ; $70c8: $74
    xor a                                         ; $70c9: $af
    xor $ad                                       ; $70ca: $ee $ad
    pop de                                        ; $70cc: $d1
    adc d                                         ; $70cd: $8a
    or [hl]                                       ; $70ce: $b6
    cp l                                          ; $70cf: $bd
    adc c                                         ; $70d0: $89
    ld c, d                                       ; $70d1: $4a
    ld sp, hl                                     ; $70d2: $f9
    ld e, e                                       ; $70d3: $5b
    rst $38                                       ; $70d4: $ff
    ld hl, $d19a                                  ; $70d5: $21 $9a $d1
    ld c, l                                       ; $70d8: $4d
    sub a                                         ; $70d9: $97
    ld hl, sp+$19                                 ; $70da: $f8 $19
    rla                                           ; $70dc: $17
    ld d, a                                       ; $70dd: $57
    ld [hl], e                                    ; $70de: $73
    inc bc                                        ; $70df: $03
    sbc h                                         ; $70e0: $9c
    and c                                         ; $70e1: $a1
    cp c                                          ; $70e2: $b9
    inc c                                         ; $70e3: $0c
    add a                                         ; $70e4: $87
    xor c                                         ; $70e5: $a9
    ld h, e                                       ; $70e6: $63
    ld b, [hl]                                    ; $70e7: $46
    ret z                                         ; $70e8: $c8

    or [hl]                                       ; $70e9: $b6

Jump_05a_70ea:
    add [hl]                                      ; $70ea: $86
    push af                                       ; $70eb: $f5
    ld l, e                                       ; $70ec: $6b
    cp $ce                                        ; $70ed: $fe $ce
    jr z, @-$01                                   ; $70ef: $28 $fd

    adc $7f                                       ; $70f1: $ce $7f
    and l                                         ; $70f3: $a5
    or c                                          ; $70f4: $b1
    inc de                                        ; $70f5: $13
    rst $28                                       ; $70f6: $ef
    ei                                            ; $70f7: $fb
    db $eb                                        ; $70f8: $eb
    ld [de], a                                    ; $70f9: $12
    rst $28                                       ; $70fa: $ef
    ld [hl-], a                                   ; $70fb: $32
    ld hl, sp-$53                                 ; $70fc: $f8 $ad
    pop de                                        ; $70fe: $d1
    ld a, [$e395]                                 ; $70ff: $fa $95 $e3
    jp c, Jump_05a_70ea                           ; $7102: $da $ea $70

    ld h, l                                       ; $7105: $65
    sbc l                                         ; $7106: $9d
    sub c                                         ; $7107: $91
    sbc $1f                                       ; $7108: $de $1f
    ld a, a                                       ; $710a: $7f
    ld bc, $cf3c                                  ; $710b: $01 $3c $cf
    ld e, b                                       ; $710e: $58
    add $2d                                       ; $710f: $c6 $2d
    cp [hl]                                       ; $7111: $be
    sbc l                                         ; $7112: $9d
    or [hl]                                       ; $7113: $b6
    adc d                                         ; $7114: $8a
    ld d, $9e                                     ; $7115: $16 $9e
    ld l, b                                       ; $7117: $68
    push af                                       ; $7118: $f5
    xor b                                         ; $7119: $a8
    jp c, $1e73                                   ; $711a: $da $73 $1e

    ld a, [bc]                                    ; $711d: $0a
    nop                                           ; $711e: $00
    ld a, h                                       ; $711f: $7c
    ld e, e                                       ; $7120: $5b
    and e                                         ; $7121: $a3
    add l                                         ; $7122: $85
    and l                                         ; $7123: $a5
    cp c                                          ; $7124: $b9
    inc c                                         ; $7125: $0c
    cp e                                          ; $7126: $bb
    ld b, a                                       ; $7127: $47
    ld d, d                                       ; $7128: $52
    ldh a, [$cb]                                  ; $7129: $f0 $cb
    ld h, a                                       ; $712b: $67
    sbc b                                         ; $712c: $98
    ld h, b                                       ; $712d: $60
    sbc b                                         ; $712e: $98
    ld hl, $715b                                  ; $712f: $21 $5b $71
    or b                                          ; $7132: $b0
    rst $08                                       ; $7133: $cf
    ld b, e                                       ; $7134: $43
    sub e                                         ; $7135: $93
    ld l, h                                       ; $7136: $6c
    xor [hl]                                      ; $7137: $ae
    xor $ad                                       ; $7138: $ee $ad
    ld d, c                                       ; $713a: $51
    adc d                                         ; $713b: $8a
    or [hl]                                       ; $713c: $b6
    dec h                                         ; $713d: $25
    call $c2d8                                    ; $713e: $cd $d8 $c2
    sub d                                         ; $7141: $92
    ld b, l                                       ; $7142: $45
    ret                                           ; $7143: $c9


    rst $00                                       ; $7144: $c7

jr_05a_7145:
    or l                                          ; $7145: $b5
    cp $7b                                        ; $7146: $fe $7b
    dec l                                         ; $7148: $2d
    and d                                         ; $7149: $a2
    ld l, $b9                                     ; $714a: $2e $b9
    db $dd                                        ; $714c: $dd
    sub [hl]                                      ; $714d: $96
    xor $72                                       ; $714e: $ee $72
    inc bc                                        ; $7150: $03
    cp h                                          ; $7151: $bc
    sbc c                                         ; $7152: $99
    ld h, l                                       ; $7153: $65
    sbc d                                         ; $7154: $9a
    set 4, b                                      ; $7155: $cb $e0
    or a                                          ; $7157: $b7
    add $d2                                       ; $7158: $c6 $d2
    db $fd                                        ; $715a: $fd
    db $fd                                        ; $715b: $fd
    rst $30                                       ; $715c: $f7
    jp z, $db21                                   ; $715d: $ca $21 $db

Jump_05a_7160:
    ld [hl], e                                    ; $7160: $73
    or $34                                        ; $7161: $f6 $34
    ld e, l                                       ; $7163: $5d
    ld [c], a                                     ; $7164: $e2
    ld e, l                                       ; $7165: $5d
    ld b, $bf                                     ; $7166: $06 $bf
    dec [hl]                                      ; $7168: $35
    sub [hl]                                      ; $7169: $96
    and $32                                       ; $716a: $e6 $32
    jr jr_05a_7145                                ; $716c: $18 $d7

    ld a, [$b875]                                 ; $716e: $fa $75 $b8
    or d                                          ; $7171: $b2
    adc $32                                       ; $7172: $ce $32
    db $fd                                        ; $7174: $fd
    adc $97                                       ; $7175: $ce $97
    rst $38                                       ; $7177: $ff
    rlca                                          ; $7178: $07
    add $52                                       ; $7179: $c6 $52
    ld l, a                                       ; $717b: $6f
    inc [hl]                                      ; $717c: $34
    cp [hl]                                       ; $717d: $be
    ld a, [c]                                     ; $717e: $f2
    or a                                          ; $717f: $b7
    cp $b9                                        ; $7180: $fe $b9
    inc c                                         ; $7182: $0c
    rst $00                                       ; $7183: $c7
    or h                                          ; $7184: $b4
    or l                                          ; $7185: $b5
    cp $0b                                        ; $7186: $fe $0b
    nop                                           ; $7188: $00
    db $fc                                        ; $7189: $fc
    dec de                                        ; $718a: $1b
    db $10                                        ; $718b: $10
    ld [$95c9], a                                 ; $718c: $ea $c9 $95
    call nc, $1dbd                                ; $718f: $d4 $bd $1d
    and l                                         ; $7192: $a5
    cp c                                          ; $7193: $b9
    inc c                                         ; $7194: $0c
    add a                                         ; $7195: $87
    ret                                           ; $7196: $c9


    cp $21                                        ; $7197: $fe $21
    rst $38                                       ; $7199: $ff
    dec h                                         ; $719a: $25
    rra                                           ; $719b: $1f
    rst $10                                       ; $719c: $d7
    ld a, [hl-]                                   ; $719d: $3a
    cp d                                          ; $719e: $ba

Jump_05a_719f:
jr_05a_719f:
    rst $00                                       ; $719f: $c7
    ld b, e                                       ; $71a0: $43
    ld bc, $75d0                                  ; $71a1: $01 $d0 $75
    ret                                           ; $71a4: $c9


    and e                                         ; $71a5: $a3
    rst $10                                       ; $71a6: $d7
    call nz, $17e8                                ; $71a7: $c4 $e8 $17
    sbc [hl]                                      ; $71aa: $9e
    di                                            ; $71ab: $f3
    ld [$3d67], a                                 ; $71ac: $ea $67 $3d
    cp d                                          ; $71af: $ba
    rst $38                                       ; $71b0: $ff
    cp $ee                                        ; $71b1: $fe $ee
    sub a                                         ; $71b3: $97
    ld l, l                                       ; $71b4: $6d
    sub e                                         ; $71b5: $93
    ld h, $4e                                     ; $71b6: $26 $4e
    sub h                                         ; $71b8: $94

Call_05a_71b9:
    and a                                         ; $71b9: $a7
    sbc b                                         ; $71ba: $98
    adc $38                                       ; $71bb: $ce $38

Jump_05a_71bd:
    dec sp                                        ; $71bd: $3b
    daa                                           ; $71be: $27
    ld h, d                                       ; $71bf: $62
    dec h                                         ; $71c0: $25
    dec b                                         ; $71c1: $05
    inc hl                                        ; $71c2: $23
    ld c, [hl]                                    ; $71c3: $4e

Jump_05a_71c4:
    add h                                         ; $71c4: $84
    ld [bc], a                                    ; $71c5: $02
    ld a, h                                       ; $71c6: $7c
    or c                                          ; $71c7: $b1
    rst $20                                       ; $71c8: $e7
    add h                                         ; $71c9: $84
    ld h, d                                       ; $71ca: $62
    add l                                         ; $71cb: $85
    daa                                           ; $71cc: $27
    sub h                                         ; $71cd: $94
    ld l, a                                       ; $71ce: $6f
    inc e                                         ; $71cf: $1c
    ld [de], a                                    ; $71d0: $12
    ld a, [$d1d1]                                 ; $71d1: $fa $d1 $d1
    dec a                                         ; $71d4: $3d
    ld h, h                                       ; $71d5: $64
    db $db                                        ; $71d6: $db
    ld [hl], h                                    ; $71d7: $74
    ld bc, $d15e                                  ; $71d8: $01 $5e $d1
    cp h                                          ; $71db: $bc
    db $e4                                        ; $71dc: $e4
    ld de, $6c9a                                  ; $71dd: $11 $9a $6c
    ld l, e                                       ; $71e0: $6b
    or h                                          ; $71e1: $b4
    or b                                          ; $71e2: $b0
    inc [hl]                                      ; $71e3: $34
    sub a                                         ; $71e4: $97
    ld h, c                                       ; $71e5: $61
    rst $30                                       ; $71e6: $f7
    ld c, b                                       ; $71e7: $48
    jp z, Jump_000_2ccf                           ; $71e8: $ca $cf $2c

    db $d3                                        ; $71eb: $d3
    db $fc                                        ; $71ec: $fc
    ld sp, $9ebf                                  ; $71ed: $31 $bf $9e
    dec de                                        ; $71f0: $1b
    nop                                           ; $71f1: $00
    sbc [hl]                                      ; $71f2: $9e
    cp a                                          ; $71f3: $bf
    push af                                       ; $71f4: $f5
    rst $08                                       ; $71f5: $cf
    ld h, l                                       ; $71f6: $65
    jr c, jr_05a_719f                             ; $71f7: $38 $a6

    push bc                                       ; $71f9: $c5
    add hl, sp                                    ; $71fa: $39
    xor a                                         ; $71fb: $af
    sbc $e8                                       ; $71fc: $de $e8
    call z, $937a                                 ; $71fe: $cc $7a $93
    sbc d                                         ; $7201: $9a
    ld h, e                                       ; $7202: $63
    ld l, e                                       ; $7203: $6b
    cp [hl]                                       ; $7204: $be
    jp hl                                         ; $7205: $e9


    ld e, $a3                                     ; $7206: $1e $a3
    and e                                         ; $7208: $a3
    and b                                         ; $7209: $a0
    nop                                           ; $720a: $00
    ld c, $19                                     ; $720b: $0e $19
    ld h, $18                                     ; $720d: $26 $18
    ld h, [hl]                                    ; $720f: $66
    ret z                                         ; $7210: $c8

    ld d, [hl]                                    ; $7211: $56
    inc e                                         ; $7212: $1c
    db $ec                                        ; $7213: $ec
    di                                            ; $7214: $f3
    ld d, b                                       ; $7215: $50
    cp $ec                                        ; $7216: $fe $ec
    ld a, [hl]                                    ; $7218: $7e
    db $eb                                        ; $7219: $eb
    ld d, l                                       ; $721a: $55
    ld l, a                                       ; $721b: $6f
    inc [hl]                                      ; $721c: $34
    pop de                                        ; $721d: $d1
    dec b                                         ; $721e: $05
    nop                                           ; $721f: $00
    cp h                                          ; $7220: $bc
    rst $18                                       ; $7221: $df
    add [hl]                                      ; $7222: $86
    sbc d                                         ; $7223: $9a
    set 4, b                                      ; $7224: $cb $e0
    or a                                          ; $7226: $b7
    ld b, [hl]                                    ; $7227: $46
    db $eb                                        ; $7228: $eb
    cp a                                          ; $7229: $bf
    call nz, Call_05a_71b9                        ; $722a: $c4 $b9 $71
    ld c, $09                                     ; $722d: $0e $09
    ld c, e                                       ; $722f: $4b
    ld [hl], e                                    ; $7230: $73
    add hl, de                                    ; $7231: $19
    adc h                                         ; $7232: $8c
    ldh a, [$2b]                                  ; $7233: $f0 $2b
    rst $38                                       ; $7235: $ff
    sbc l                                         ; $7236: $9d
    di                                            ; $7237: $f3
    ld [hl], l                                    ; $7238: $75
    xor a                                         ; $7239: $af
    dec [hl]                                      ; $723a: $35
    ld e, l                                       ; $723b: $5d
    nop                                           ; $723c: $00
    inc a                                         ; $723d: $3c
    ld a, a                                       ; $723e: $7f
    add $af                                       ; $723f: $c6 $af
    ld l, l                                       ; $7241: $6d
    jp hl                                         ; $7242: $e9


    ld [hl], b                                    ; $7243: $70
    ld h, l                                       ; $7244: $65
    ld c, l                                       ; $7245: $4d
    and h                                         ; $7246: $a4
    sbc $68                                       ; $7247: $de $68
    add h                                         ; $7249: $84
    ld e, a                                       ; $724a: $5f
    ld [hl], e                                    ; $724b: $73
    add hl, de                                    ; $724c: $19
    adc [hl]                                      ; $724d: $8e
    ld l, c                                       ; $724e: $69
    ld d, c                                       ; $724f: $51
    ld a, [c]                                     ; $7250: $f2
    ld [hl], c                                    ; $7251: $71
    xor l                                         ; $7252: $ad
    rst $38                                       ; $7253: $ff
    ld e, [hl]                                    ; $7254: $5e
    dec bc                                        ; $7255: $0b
    db $eb                                        ; $7256: $eb
    cp a                                          ; $7257: $bf
    db $e4                                        ; $7258: $e4
    ld h, b                                       ; $7259: $60
    rst $10                                       ; $725a: $d7
    and $05                                       ; $725b: $e6 $05
    nop                                           ; $725d: $00
    ld c, $90                                     ; $725e: $0e $90
    db $dd                                        ; $7260: $dd
    rst $38                                       ; $7261: $ff
    ld h, a                                       ; $7262: $67
    xor l                                         ; $7263: $ad
    ld d, a                                       ; $7264: $57
    dec d                                         ; $7265: $15
    inc hl                                        ; $7266: $23
    rst $00                                       ; $7267: $c7
    or l                                          ; $7268: $b5
    dec l                                         ; $7269: $2d
    reti                                          ; $726a: $d9


    sub $78                                       ; $726b: $d6 $78
    call $c36f                                    ; $726d: $cd $6f $c3
    ei                                            ; $7270: $fb
    cp a                                          ; $7271: $bf
    db $e4                                        ; $7272: $e4
    ld sp, hl                                     ; $7273: $f9
    ld e, e                                       ; $7274: $5b
    rst $38                                       ; $7275: $ff
    ld e, h                                       ; $7276: $5c
    add [hl]                                      ; $7277: $86
    ld h, e                                       ; $7278: $63
    jp c, $6946                                   ; $7279: $da $46 $69

    sub d                                         ; $727c: $92
    db $ed                                        ; $727d: $ed
    ld e, h                                       ; $727e: $5c
    ld b, $bf                                     ; $727f: $06 $bf
    push af                                       ; $7281: $f5
    daa                                           ; $7282: $27
    push de                                       ; $7283: $d5
    cp b                                          ; $7284: $b8
    ld d, $d6                                     ; $7285: $16 $d6
    xor a                                         ; $7287: $af
    ld sp, $6b20                                  ; $7288: $31 $20 $6b
    dec e                                         ; $728b: $1d
    dec a                                         ; $728c: $3d
    xor h                                         ; $728d: $ac
    ld e, a                                       ; $728e: $5f
    cp $6f                                        ; $728f: $fe $6f
    pop hl                                        ; $7291: $e1
    or h                                          ; $7292: $b4
    or b                                          ; $7293: $b0
    cp $a4                                        ; $7294: $fe $a4
    xor $d1                                       ; $7296: $ee $d1
    db $fd                                        ; $7298: $fd

Jump_05a_7299:
    or d                                          ; $7299: $b2
    ld l, l                                       ; $729a: $6d
    ld d, d                                       ; $729b: $52
    xor h                                         ; $729c: $ac
    ldh a, [$84]                                  ; $729d: $f0 $84
    ldh a, [$9c]                                  ; $729f: $f0 $9c
    pop de                                        ; $72a1: $d1
    ld c, d                                       ; $72a2: $4a
    or e                                          ; $72a3: $b3
    ld [hl], e                                    ; $72a4: $73
    ld [hl-], a                                   ; $72a5: $32
    inc sp                                        ; $72a6: $33
    ld d, d                                       ; $72a7: $52
    ld c, [hl]                                    ; $72a8: $4e
    add hl, hl                                    ; $72a9: $29
    ld d, c                                       ; $72aa: $51
    jp hl                                         ; $72ab: $e9


    ld [hl], a                                    ; $72ac: $77
    cp $d7                                        ; $72ad: $fe $d7
    dec b                                         ; $72af: $05
    nop                                           ; $72b0: $00
    cp h                                          ; $72b1: $bc
    ld h, e                                       ; $72b2: $63
    cp [hl]                                       ; $72b3: $be
    inc l                                         ; $72b4: $2c
    ld c, d                                       ; $72b5: $4a
    ld e, b                                       ; $72b6: $58
    ld a, [hl-]                                   ; $72b7: $3a
    cp a                                          ; $72b8: $bf
    push af                                       ; $72b9: $f5
    ld d, l                                       ; $72ba: $55
    and e                                         ; $72bb: $a3
    and c                                         ; $72bc: $a1
    call nz, $b8cf                                ; $72bd: $c4 $cf $b8
    cp b                                          ; $72c0: $b8
    sbc d                                         ; $72c1: $9a
    dec de                                        ; $72c2: $1b
    nop                                           ; $72c3: $00
    ret nc                                        ; $72c4: $d0

    xor e                                         ; $72c5: $ab
    add hl, sp                                    ; $72c6: $39
    and $7f                                       ; $72c7: $e6 $7f
    ld e, l                                       ; $72c9: $5d
    ld [c], a                                     ; $72ca: $e2
    inc c                                         ; $72cb: $0c
    ld h, c                                       ; $72cc: $61
    add hl, bc                                    ; $72cd: $09
    add $89                                       ; $72ce: $c6 $89
    jp z, $bd9f                                   ; $72d0: $ca $9f $bd

    ld [hl], l                                    ; $72d3: $75
    ld [hl], h                                    ; $72d4: $74
    rrca                                          ; $72d5: $0f
    push af                                       ; $72d6: $f5
    xor a                                         ; $72d7: $af
    ld l, h                                       ; $72d8: $6c
    cp e                                          ; $72d9: $bb
    and e                                         ; $72da: $a3
    inc b                                         ; $72db: $04
    db $e3                                        ; $72dc: $e3
    inc e                                         ; $72dd: $1c
    jp nz, $fe52                                  ; $72de: $c2 $52 $fe

    ld e, e                                       ; $72e1: $5b
    sbc d                                         ; $72e2: $9a
    ld sp, $2b6d                                  ; $72e3: $31 $6d $2b
    ld l, e                                       ; $72e6: $6b
    db $dd                                        ; $72e7: $dd
    dec de                                        ; $72e8: $1b
    daa                                           ; $72e9: $27
    xor h                                         ; $72ea: $ac
    adc c                                         ; $72eb: $89
    ld c, d                                       ; $72ec: $4a
    jp hl                                         ; $72ed: $e9


    rrca                                          ; $72ee: $0f
    sbc e                                         ; $72ef: $9b
    ld e, a                                       ; $72f0: $5f
    sbc d                                         ; $72f1: $9a
    pop hl                                        ; $72f2: $e1
    ei                                            ; $72f3: $fb
    ld l, b                                       ; $72f4: $68
    ld d, c                                       ; $72f5: $51
    sub a                                         ; $72f6: $97
    ld a, b                                       ; $72f7: $78
    sub a                                         ; $72f8: $97
    pop bc                                        ; $72f9: $c1
    ld e, a                                       ; $72fa: $5f
    ld a, [c]                                     ; $72fb: $f2
    rst $38                                       ; $72fc: $ff
    db $fc                                        ; $72fd: $fc
    add sp, $7e                                   ; $72fe: $e8 $7e
    ld hl, sp-$31                                 ; $7300: $f8 $cf
    add hl, bc                                    ; $7302: $09
    ld h, c                                       ; $7303: $61
    jp hl                                         ; $7304: $e9


    adc h                                         ; $7305: $8c
    db $fc                                        ; $7306: $fc
    call $fe5e                                    ; $7307: $cd $5e $fe
    sbc a                                         ; $730a: $9f
    cp c                                          ; $730b: $b9
    push de                                       ; $730c: $d5
    ld a, b                                       ; $730d: $78
    add hl, bc                                    ; $730e: $09
    ld a, d                                       ; $730f: $7a
    daa                                           ; $7310: $27
    xor c                                         ; $7311: $a9
    halt                                          ; $7312: $76
    xor l                                         ; $7313: $ad
    and e                                         ; $7314: $a3
    ld c, c                                       ; $7315: $49
    ld [hl], e                                    ; $7316: $73
    add hl, de                                    ; $7317: $19
    db $fc                                        ; $7318: $fc
    sub $68                                       ; $7319: $d6 $68
    or $49                                        ; $731b: $f6 $49
    call Call_05a_46dd                            ; $731d: $cd $dd $46
    cp e                                          ; $7320: $bb
    nop                                           ; $7321: $00
    ld c, $50                                     ; $7322: $0e $50
    or l                                          ; $7324: $b5
    ld e, e                                       ; $7325: $5b
    ld c, c                                       ; $7326: $49
    ld a, c                                       ; $7327: $79
    cp d                                          ; $7328: $ba
    ld h, c                                       ; $7329: $61
    inc hl                                        ; $732a: $23
    xor c                                         ; $732b: $a9
    jp z, $b65a                                   ; $732c: $ca $5a $b6

    dec [hl]                                      ; $732f: $35
    adc $79                                       ; $7330: $ce $79
    ld h, c                                       ; $7332: $61
    add hl, bc                                    ; $7333: $09
    rst $08                                       ; $7334: $cf
    add hl, de                                    ; $7335: $19
    xor l                                         ; $7336: $ad
    ld c, l                                       ; $7337: $4d
    cp a                                          ; $7338: $bf
    call nc, $fccf                                ; $7339: $d4 $cf $fc
    adc b                                         ; $733c: $88
    ld l, c                                       ; $733d: $69
    xor e                                         ; $733e: $ab
    db $f4                                        ; $733f: $f4
    add a                                         ; $7340: $87
    call $4bff                                    ; $7341: $cd $ff $4b
    cp h                                          ; $7344: $bc
    ld h, e                                       ; $7345: $63
    ld l, e                                       ; $7346: $6b
    cp [hl]                                       ; $7347: $be
    sbc d                                         ; $7348: $9a
    xor h                                         ; $7349: $ac
    ld c, c                                       ; $734a: $49
    ld [hl], e                                    ; $734b: $73
    add hl, de                                    ; $734c: $19
    adc [hl]                                      ; $734d: $8e
    ld l, c                                       ; $734e: $69
    ld h, c                                       ; $734f: $61
    db $fd                                        ; $7350: $fd
    ld a, [c]                                     ; $7351: $f2
    adc c                                         ; $7352: $89
    inc l                                         ; $7353: $2c
    ld b, d                                       ; $7354: $42
    pop bc                                        ; $7355: $c1
    db $10                                        ; $7356: $10
    dec bc                                        ; $7357: $0b
    ld a, [bc]                                    ; $7358: $0a
    nop                                           ; $7359: $00
    inc e                                         ; $735a: $1c
    dec [hl]                                      ; $735b: $35
    ld d, c                                       ; $735c: $51
    ld sp, $0cff                                  ; $735d: $31 $ff $0c
    sbc h                                         ; $7360: $9c
    ld e, a                                       ; $7361: $5f
    adc d                                         ; $7362: $8a
    sbc d                                         ; $7363: $9a
    ld [hl], c                                    ; $7364: $71
    ld d, [hl]                                    ; $7365: $56
    di                                            ; $7366: $f3
    db $db                                        ; $7367: $db
    or b                                          ; $7368: $b0
    ld b, [hl]                                    ; $7369: $46
    ld l, e                                       ; $736a: $6b
    ld l, $83                                     ; $736b: $2e $83
    rst $18                                       ; $736d: $df
    ld a, [de]                                    ; $736e: $1a
    xor l                                         ; $736f: $ad
    rra                                           ; $7370: $1f
    ld a, [bc]                                    ; $7371: $0a
    nop                                           ; $7372: $00
    cp h                                          ; $7373: $bc
    reti                                          ; $7374: $d9


    add hl, sp                                    ; $7375: $39
    sub h                                         ; $7376: $94
    ld d, h                                       ; $7377: $54
    call z, Call_000_033f                         ; $7378: $cc $3f $03
    rst $20                                       ; $737b: $e7
    sub a                                         ; $737c: $97
    and d                                         ; $737d: $a2
    and $75                                       ; $737e: $e6 $75
    ld e, l                                       ; $7380: $5d
    or [hl]                                       ; $7381: $b6
    ld l, e                                       ; $7382: $6b
    jp nz, $7513                                  ; $7383: $c2 $13 $75

    adc c                                         ; $7386: $89
    ld [hl], e                                    ; $7387: $73
    db $e3                                        ; $7388: $e3
    inc e                                         ; $7389: $1c
    ld d, d                                       ; $738a: $52
    xor h                                         ; $738b: $ac
    ldh a, [$84]                                  ; $738c: $f0 $84
    ld [hl], b                                    ; $738e: $70
    ld h, a                                       ; $738f: $67
    db $fc                                        ; $7390: $fc
    ld l, e                                       ; $7391: $6b
    ld l, $83                                     ; $7392: $2e $83
    rst $38                                       ; $7394: $ff
    cpl                                           ; $7395: $2f
    cp c                                          ; $7396: $b9
    db $dd                                        ; $7397: $dd
    sub [hl]                                      ; $7398: $96
    xor $72                                       ; $7399: $ee $72
    inc bc                                        ; $739b: $03
    ld a, h                                       ; $739c: $7c
    ld e, e                                       ; $739d: $5b
    db $e3                                        ; $739e: $e3
    sbc h                                         ; $739f: $9c
    ld d, a                                       ; $73a0: $57
    xor h                                         ; $73a1: $ac
    ld l, h                                       ; $73a2: $6c
    sbc e                                         ; $73a3: $9b
    add h                                         ; $73a4: $84
    daa                                           ; $73a5: $27
    ld l, $41                                     ; $73a6: $2e $41
    xor a                                         ; $73a8: $af
    ld a, [hl]                                    ; $73a9: $7e
    db $eb                                        ; $73aa: $eb
    rst $20                                       ; $73ab: $e7
    ld a, a                                       ; $73ac: $7f
    xor c                                         ; $73ad: $a9
    jp hl                                         ; $73ae: $e9


    inc e                                         ; $73af: $1c
    ld d, d                                       ; $73b0: $52
    ld a, [de]                                    ; $73b1: $1a
    dec a                                         ; $73b2: $3d
    db $e3                                        ; $73b3: $e3
    inc e                                         ; $73b4: $1c
    cp d                                          ; $73b5: $ba
    call nz, Call_05a_66b7                        ; $73b6: $c4 $b7 $66
    sub h                                         ; $73b9: $94
    ld d, d                                       ; $73ba: $52
    ret                                           ; $73bb: $c9


    ld b, d                                       ; $73bc: $42
    add hl, sp                                    ; $73bd: $39
    xor [hl]                                      ; $73be: $ae

Call_05a_73bf:
    xor l                                         ; $73bf: $ad
    ldh a, [$9c]                                  ; $73c0: $f0 $9c
    add a                                         ; $73c2: $87
    sub d                                         ; $73c3: $92
    ld b, a                                       ; $73c4: $47
    ld l, b                                       ; $73c5: $68
    cp $0b                                        ; $73c6: $fe $0b
    add $39                                       ; $73c8: $c6 $39
    inc b                                         ; $73ca: $04
    sub e                                         ; $73cb: $93
    push af                                       ; $73cc: $f5
    xor d                                         ; $73cd: $aa
    ld b, a                                       ; $73ce: $47
    rst $08                                       ; $73cf: $cf
    ld e, l                                       ; $73d0: $5d
    reti                                          ; $73d1: $d9


    ld [hl], $5d                                  ; $73d2: $36 $5d
    rst $10                                       ; $73d4: $d7
    dec b                                         ; $73d5: $05
    nop                                           ; $73d6: $00
    ld a, h                                       ; $73d7: $7c
    ld e, e                                       ; $73d8: $5b
    jp $85ec                                      ; $73d9: $c3 $ec $85


    and l                                         ; $73dc: $a5
    sbc e                                         ; $73dd: $9b
    adc e                                         ; $73de: $8b
    ld c, l                                       ; $73df: $4d
    xor [hl]                                      ; $73e0: $ae
    cp c                                          ; $73e1: $b9
    inc c                                         ; $73e2: $0c
    add a                                         ; $73e3: $87
    ld e, l                                       ; $73e4: $5d
    ld [hl], d                                    ; $73e5: $72
    or b                                          ; $73e6: $b0
    ld l, e                                       ; $73e7: $6b
    di                                            ; $73e8: $f3
    sub d                                         ; $73e9: $92
    ld b, e                                       ; $73ea: $43
    add [hl]                                      ; $73eb: $86
    add hl, bc                                    ; $73ec: $09
    add [hl]                                      ; $73ed: $86
    add hl, de                                    ; $73ee: $19
    or d                                          ; $73ef: $b2
    dec d                                         ; $73f0: $15
    rlca                                          ; $73f1: $07
    ei                                            ; $73f2: $fb
    inc a                                         ; $73f3: $3c
    ld [hl], h                                    ; $73f4: $74
    jr z, @-$71                                   ; $73f5: $28 $8d

    xor $d5                                       ; $73f7: $ee $d5
    cp l                                          ; $73f9: $bd
    dec [hl]                                      ; $73fa: $35
    ld e, d                                       ; $73fb: $5a
    pop de                                        ; $73fc: $d1
    or [hl]                                       ; $73fd: $b6
    scf                                           ; $73fe: $37
    ld d, c                                       ; $73ff: $51
    add hl, hl                                    ; $7400: $29
    ld a, a                                       ; $7401: $7f
    db $eb                                        ; $7402: $eb
    sbc a                                         ; $7403: $9f
    bit 6, b                                      ; $7404: $cb $70
    ld e, b                                       ; $7406: $58
    rst $38                                       ; $7407: $ff
    dec h                                         ; $7408: $25
    ld a, [hl]                                    ; $7409: $7e
    add $c5                                       ; $740a: $c6 $c5
    push de                                       ; $740c: $d5
    call c, $b0e2                                 ; $740d: $dc $e2 $b0
    rst $38                                       ; $7410: $ff
    sbc [hl]                                      ; $7411: $9e
    xor b                                         ; $7412: $a8
    rra                                           ; $7413: $1f
    db $dd                                        ; $7414: $dd
    rst $38                                       ; $7415: $ff
    ld d, b                                       ; $7416: $50
    nop                                           ; $7417: $00
    sbc [hl]                                      ; $7418: $9e
    ld l, [hl]                                    ; $7419: $6e
    ret c                                         ; $741a: $d8

    db $10                                        ; $741b: $10
    sub [hl]                                      ; $741c: $96
    ld a, [c]                                     ; $741d: $f2
    db $dd                                        ; $741e: $dd
    dec sp                                        ; $741f: $3b
    db $f4                                        ; $7420: $f4
    dec sp                                        ; $7421: $3b
    ld [hl], c                                    ; $7422: $71
    db $eb                                        ; $7423: $eb
    dec [hl]                                      ; $7424: $35
    add hl, hl                                    ; $7425: $29
    xor e                                         ; $7426: $ab
    xor h                                         ; $7427: $ac
    dec [hl]                                      ; $7428: $35
    rst $00                                       ; $7429: $c7
    ld a, l                                       ; $742a: $7d
    rst $38                                       ; $742b: $ff
    add hl, sp                                    ; $742c: $39
    ld l, e                                       ; $742d: $6b
    ld d, c                                       ; $742e: $51
    ld a, [c]                                     ; $742f: $f2
    rst $38                                       ; $7430: $ff
    ret nz                                        ; $7431: $c0

    ld e, b                                       ; $7432: $58
    add d                                         ; $7433: $82
    ret                                           ; $7434: $c9


    ld a, d                                       ; $7435: $7a
    ld a, e                                       ; $7436: $7b
    inc bc                                        ; $7437: $03
    add d                                         ; $7438: $82
    and l                                         ; $7439: $a5
    inc sp                                        ; $743a: $33
    ld [hl], b                                    ; $743b: $70
    cp [hl]                                       ; $743c: $be

jr_05a_743d:
    reti                                          ; $743d: $d9


    ld e, a                                       ; $743e: $5f
    nop                                           ; $743f: $00
    ret nc                                        ; $7440: $d0

    ld l, l                                       ; $7441: $6d
    db $db                                        ; $7442: $db
    sub e                                         ; $7443: $93
    ld c, e                                       ; $7444: $4b
    jr nc, jr_05a_743d                            ; $7445: $30 $f6

    ld l, a                                       ; $7447: $6f
    jp hl                                         ; $7448: $e9


    adc h                                         ; $7449: $8c
    add hl, de                                    ; $744a: $19
    rst $30                                       ; $744b: $f7
    ld e, d                                       ; $744c: $5a
    ccf                                           ; $744d: $3f
    inc d                                         ; $744e: $14
    nop                                           ; $744f: $00
    ld a, h                                       ; $7450: $7c
    ld l, e                                       ; $7451: $6b
    ld b, [hl]                                    ; $7452: $46
    or d                                          ; $7453: $b2
    ret nc                                        ; $7454: $d0

    ld e, h                                       ; $7455: $5c
    ld b, $bf                                     ; $7456: $06 $bf
    or b                                          ; $7458: $b0
    sub d                                         ; $7459: $92
    ld a, [c]                                     ; $745a: $f2
    ld [hl], h                                    ; $745b: $74
    jp Jump_000_1406                              ; $745c: $c3 $06 $14


    nop                                           ; $745f: $00
    ld e, $8f                                     ; $7460: $1e $8f
    add hl, de                                    ; $7462: $19
    rst $30                                       ; $7463: $f7
    ld d, [hl]                                    ; $7464: $56
    sub h                                         ; $7465: $94
    or b                                          ; $7466: $b0
    ld d, h                                       ; $7467: $54
    cp e                                          ; $7468: $bb
    and l                                         ; $7469: $a5
    adc c                                         ; $746a: $89
    ld sp, hl                                     ; $746b: $f9
    sub [hl]                                      ; $746c: $96
    ld a, [hl-]                                   ; $746d: $3a
    dec sp                                        ; $746e: $3b
    ld b, [hl]                                    ; $746f: $46
    ld [hl], h                                    ; $7470: $74
    adc c                                         ; $7471: $89
    rst $30                                       ; $7472: $f7
    db $db                                        ; $7473: $db
    ld [c], a                                     ; $7474: $e2
    xor h                                         ; $7475: $ac
    ld l, l                                       ; $7476: $6d
    dec hl                                        ; $7477: $2b
    rst $38                                       ; $7478: $ff
    sbc l                                         ; $7479: $9d
    di                                            ; $747a: $f3
    push de                                       ; $747b: $d5
    ld [hl], c                                    ; $747c: $71
    and $7c                                       ; $747d: $e6 $7c
    or [hl]                                       ; $747f: $b6
    ld a, a                                       ; $7480: $7f
    ld bc, $500e                                  ; $7481: $01 $0e $50
    or l                                          ; $7484: $b5
    ld e, e                                       ; $7485: $5b
    ld c, c                                       ; $7486: $49
    pop af                                        ; $7487: $f1
    inc a                                         ; $7488: $3c
    ld h, e                                       ; $7489: $63
    ld e, c                                       ; $748a: $59
    ld d, d                                       ; $748b: $52
    sub l                                         ; $748c: $95
    or l                                          ; $748d: $b5
    ldh a, [rLY]                                  ; $748e: $f0 $44
    db $eb                                        ; $7490: $eb
    adc [hl]                                      ; $7491: $8e
    inc sp                                        ; $7492: $33
    ld h, e                                       ; $7493: $63
    ld c, e                                       ; $7494: $4b
    dec e                                         ; $7495: $1d
    inc l                                         ; $7496: $2c
    rrca                                          ; $7497: $0f
    call Call_000_25b1                            ; $7498: $cd $b1 $25
    ld a, a                                       ; $749b: $7f
    call z, Call_000_17b9                         ; $749c: $cc $b9 $17
    nop                                           ; $749f: $00
    cp h                                          ; $74a0: $bc
    cp e                                          ; $74a1: $bb
    adc l                                         ; $74a2: $8d
    halt                                          ; $74a3: $76
    adc c                                         ; $74a4: $89
    sbc a                                         ; $74a5: $9f
    adc l                                         ; $74a6: $8d
    pop de                                        ; $74a7: $d1
    call c, $bc00                                 ; $74a8: $dc $00 $bc
    and e                                         ; $74ab: $a3
    and e                                         ; $74ac: $a3
    ld h, h                                       ; $74ad: $64
    ld e, a                                       ; $74ae: $5f
    cp b                                          ; $74af: $b8
    sub l                                         ; $74b0: $95
    sub h                                         ; $74b1: $94
    inc de                                        ; $74b2: $13
    ld [hl], a                                    ; $74b3: $77
    sbc h                                         ; $74b4: $9c
    add hl, de                                    ; $74b5: $19
    ld e, e                                       ; $74b6: $5b
    ld c, [hl]                                    ; $74b7: $4e
    ld e, h                                       ; $74b8: $5c
    nop                                           ; $74b9: $00
    inc a                                         ; $74ba: $3c
    or c                                          ; $74bb: $b1
    ld c, c                                       ; $74bc: $49
    pop af                                        ; $74bd: $f1
    inc a                                         ; $74be: $3c
    ld h, e                                       ; $74bf: $63
    reti                                          ; $74c0: $d9


    dec h                                         ; $74c1: $25
    adc [hl]                                      ; $74c2: $8e
    sbc d                                         ; $74c3: $9a
    jr z, @+$1a                                   ; $74c4: $28 $18

    push hl                                       ; $74c6: $e5
    ccf                                           ; $74c7: $3f
    adc e                                         ; $74c8: $8b
    db $db                                        ; $74c9: $db
    ld e, a                                       ; $74ca: $5f
    pop hl                                        ; $74cb: $e1
    ld b, c                                       ; $74cc: $41
    jr z, jr_05a_74cf                             ; $74cd: $28 $00

jr_05a_74cf:
    ld e, $21                                     ; $74cf: $1e $21
    ld e, [hl]                                    ; $74d1: $5e
    ld [hl], d                                    ; $74d2: $72
    or b                                          ; $74d3: $b0
    ld l, e                                       ; $74d4: $6b
    di                                            ; $74d5: $f3
    ld [de], a                                    ; $74d6: $12
    rst $18                                       ; $74d7: $df
    add sp, $7e                                   ; $74d8: $e8 $7e
    ld sp, hl                                     ; $74da: $f9
    rst $08                                       ; $74db: $cf
    ld [c], a                                     ; $74dc: $e2
    or $77                                        ; $74dd: $f6 $77
    ld l, [hl]                                    ; $74df: $6e
    add hl, hl                                    ; $74e0: $29
    rst $00                                       ; $74e1: $c7
    or l                                          ; $74e2: $b5
    dec d                                         ; $74e3: $15
    sbc [hl]                                      ; $74e4: $9e
    di                                            ; $74e5: $f3
    rla                                           ; $74e6: $17
    nop                                           ; $74e7: $00
    ld c, $b2                                     ; $74e8: $0e $b2
    ld d, [hl]                                    ; $74ea: $56
    adc a                                         ; $74eb: $8f
    ld [$e431], a                                 ; $74ec: $ea $31 $e4
    ccf                                           ; $74ef: $3f
    adc e                                         ; $74f0: $8b
    ei                                            ; $74f1: $fb
    cp $d3                                        ; $74f2: $fe $d3
    ld a, a                                       ; $74f4: $7f
    ret                                           ; $74f5: $c9


    db $e3                                        ; $74f6: $e3
    ld sp, $544e                                  ; $74f7: $31 $4e $54
    ld d, d                                       ; $74fa: $52
    pop de                                        ; $74fb: $d1
    ld c, l                                       ; $74fc: $4d
    ld a, [c]                                     ; $74fd: $f2
    inc sp                                        ; $74fe: $33

Call_05a_74ff:
    db $eb                                        ; $74ff: $eb
    xor h                                         ; $7500: $ac
    inc b                                         ; $7501: $04
    and e                                         ; $7502: $a3
    xor $b1                                       ; $7503: $ee $b1
    sub $7f                                       ; $7505: $d6 $7f
    rst $38                                       ; $7507: $ff
    sub a                                         ; $7508: $97
    sbc d                                         ; $7509: $9a
    ld l, [hl]                                    ; $750a: $6e
    ld a, [hl+]                                   ; $750b: $2a
    dec e                                         ; $750c: $1d
    call c, Call_05a_51b6                         ; $750d: $dc $b6 $51
    rla                                           ; $7510: $17
    nop                                           ; $7511: $00
    ld e, $73                                     ; $7512: $1e $73
    ld h, l                                       ; $7514: $65
    or [hl]                                       ; $7515: $b6
    dec h                                         ; $7516: $25
    rst $08                                       ; $7517: $cf
    rst $18                                       ; $7518: $df
    ld a, [$32e7]                                 ; $7519: $fa $e7 $32
    inc e                                         ; $751c: $1c
    sub $51                                       ; $751d: $d6 $51
    sbc d                                         ; $751f: $9a
    ld h, h                                       ; $7520: $64
    dec sp                                        ; $7521: $3b
    sub a                                         ; $7522: $97
    pop bc                                        ; $7523: $c1
    ld e, a                                       ; $7524: $5f
    rla                                           ; $7525: $17
    nop                                           ; $7526: $00
    ld a, h                                       ; $7527: $7c
    ld l, e                                       ; $7528: $6b
    ld b, [hl]                                    ; $7529: $46
    or d                                          ; $752a: $b2
    db $10                                        ; $752b: $10
    xor $8c                                       ; $752c: $ee $8c
    dec l                                         ; $752e: $2d
    pop hl                                        ; $752f: $e1
    ld e, c                                       ; $7530: $59
    jr z, jr_05a_7533                             ; $7531: $28 $00

jr_05a_7533:
    sbc [hl]                                      ; $7533: $9e
    ld l, [hl]                                    ; $7534: $6e
    ret c                                         ; $7535: $d8

    db $10                                        ; $7536: $10
    sbc [hl]                                      ; $7537: $9e
    sub l                                         ; $7538: $95
    cp a                                          ; $7539: $bf
    ld a, e                                       ; $753a: $7b
    or b                                          ; $753b: $b0
    ei                                            ; $753c: $fb
    ld l, e                                       ; $753d: $6b
    or h                                          ; $753e: $b4
    inc l                                         ; $753f: $2c
    ld c, d                                       ; $7540: $4a
    jr nc, jr_05a_759c                            ; $7541: $30 $59

    ld l, a                                       ; $7543: $6f
    ld l, a                                       ; $7544: $6f
    ld b, b                                       ; $7545: $40
    or b                                          ; $7546: $b0
    ld [hl], h                                    ; $7547: $74
    ld b, $ce                                     ; $7548: $06 $ce
    ld sp, hl                                     ; $754a: $f9
    ld e, a                                       ; $754b: $5f
    rla                                           ; $754c: $17
    nop                                           ; $754d: $00
    inc e                                         ; $754e: $1c
    ld h, a                                       ; $754f: $67
    ld l, l                                       ; $7550: $6d
    push hl                                       ; $7551: $e5
    ld l, a                                       ; $7552: $6f
    ld d, e                                       ; $7553: $53
    ld h, l                                       ; $7554: $65
    xor l                                         ; $7555: $ad
    ld h, a                                       ; $7556: $67
    ld sp, hl                                     ; $7557: $f9
    rst $30                                       ; $7558: $f7
    daa                                           ; $7559: $27
    dec d                                         ; $755a: $15
    db $dd                                        ; $755b: $dd
    inc h                                         ; $755c: $24
    ld c, a                                       ; $755d: $4f
    scf                                           ; $755e: $37
    ld l, h                                       ; $755f: $6c
    ld [$eacf], sp                                ; $7560: $08 $cf $ea
    ld l, l                                       ; $7563: $6d
    rst $38                                       ; $7564: $ff
    sbc h                                         ; $7565: $9c
    cp a                                          ; $7566: $bf
    db $e4                                        ; $7567: $e4
    add hl, hl                                    ; $7568: $29
    and [hl]                                      ; $7569: $a6
    inc sp                                        ; $756a: $33
    adc $ce                                       ; $756b: $ce $ce
    adc c                                         ; $756d: $89
    or d                                          ; $756e: $b2
    ld a, a                                       ; $756f: $7f
    cp c                                          ; $7570: $b9
    ldh [$b2], a                                  ; $7571: $e0 $b2
    db $fc                                        ; $7573: $fc
    or l                                          ; $7574: $b5
    adc [hl]                                      ; $7575: $8e
    ld l, [hl]                                    ; $7576: $6e
    ld c, d                                       ; $7577: $4a
    ld l, d                                       ; $7578: $6a
    and d                                         ; $7579: $a2
    call $e1d7                                    ; $757a: $cd $d7 $e1
    jp z, Jump_05a_5b6c                           ; $757d: $ca $6c $5b

    ldh a, [$cb]                                  ; $7580: $f0 $cb
    rst $38                                       ; $7582: $ff
    di                                            ; $7583: $f3
    and e                                         ; $7584: $a3
    or a                                          ; $7585: $b7
    sub l                                         ; $7586: $95
    ccf                                           ; $7587: $3f
    ld a, e                                       ; $7588: $7b
    db $eb                                        ; $7589: $eb
    add sp, $51                                   ; $758a: $e8 $51
    sbc d                                         ; $758c: $9a
    set 4, b                                      ; $758d: $cb $e0
    or a                                          ; $758f: $b7
    add $d2                                       ; $7590: $c6 $d2
    ld e, h                                       ; $7592: $5c
    ld b, $7f                                     ; $7593: $06 $7f

Jump_05a_7595:
    ld e, l                                       ; $7595: $5d
    ld [c], a                                     ; $7596: $e2
    adc e                                         ; $7597: $8b
    adc d                                         ; $7598: $8a
    sub h                                         ; $7599: $94

jr_05a_759a:
    ld c, d                                       ; $759a: $4a
    sub l                                         ; $759b: $95

jr_05a_759c:
    or l                                          ; $759c: $b5
    ld a, [$afe7]                                 ; $759d: $fa $e7 $af
    ld l, l                                       ; $75a0: $6d
    ret                                           ; $75a1: $c9


    rst $18                                       ; $75a2: $df
    dec sp                                        ; $75a3: $3b
    ld [hl-], a                                   ; $75a4: $32
    ld c, b                                       ; $75a5: $48
    sub h                                         ; $75a6: $94
    ld [hl], d                                    ; $75a7: $72
    call c, Call_05a_4f7b                         ; $75a8: $dc $7b $4f

jr_05a_75ab:
    cp a                                          ; $75ab: $bf
    ld l, h                                       ; $75ac: $6c
    jr nz, jr_05a_75ab                            ; $75ad: $20 $fc

    and e                                         ; $75af: $a3
    rst $00                                       ; $75b0: $c7
    cp l                                          ; $75b1: $bd
    ld d, $a5                                     ; $75b2: $16 $a5
    inc sp                                        ; $75b4: $33
    ld [hl], b                                    ; $75b5: $70
    adc $ff                                       ; $75b6: $ce $ff
    ld c, d                                       ; $75b8: $4a
    xor d                                         ; $75b9: $aa
    halt                                          ; $75ba: $76
    ld c, e                                       ; $75bb: $4b
    or $df                                        ; $75bc: $f6 $df
    ld [$9b48], a                                 ; $75be: $ea $48 $9b
    ld [hl], d                                    ; $75c1: $72
    or d                                          ; $75c2: $b2
    sub l                                         ; $75c3: $95
    ld c, a                                       ; $75c4: $4f
    call nc, $d35c                                ; $75c5: $d4 $5c $d3
    ld [hl+], a                                   ; $75c8: $22
    ld [$1c02], a                                 ; $75c9: $ea $02 $1c
    dec [hl]                                      ; $75cc: $35
    ld d, c                                       ; $75cd: $51
    jr nc, jr_05a_759a                            ; $75ce: $30 $ca

    ld a, a                                       ; $75d0: $7f
    ld d, $b7                                     ; $75d1: $16 $b7
    cp a                                          ; $75d3: $bf
    jp nz, Jump_05a_4983                          ; $75d4: $c2 $83 $49

    pop af                                        ; $75d7: $f1
    inc a                                         ; $75d8: $3c
    ld h, e                                       ; $75d9: $63
    add hl, de                                    ; $75da: $19
    inc d                                         ; $75db: $14
    nop                                           ; $75dc: $00
    inc e                                         ; $75dd: $1c
    and l                                         ; $75de: $a5
    sbc c                                         ; $75df: $99
    sbc l                                         ; $75e0: $9d
    ld b, e                                       ; $75e1: $43
    ld c, c                                       ; $75e2: $49
    dec e                                         ; $75e3: $1d
    xor [hl]                                      ; $75e4: $ae
    call z, $84b6                                 ; $75e5: $cc $b6 $84
    add hl, hl                                    ; $75e8: $29
    inc e                                         ; $75e9: $1c
    pop de                                        ; $75ea: $d1
    jp z, $fadf                                   ; $75eb: $ca $df $fa

    rst $20                                       ; $75ee: $e7
    ld [hl-], a                                   ; $75ef: $32
    inc e                                         ; $75f0: $1c
    db $d3                                        ; $75f1: $d3
    ld [hl+], a                                   ; $75f2: $22
    ld [$3c02], a                                 ; $75f3: $ea $02 $3c
    dec de                                        ; $75f6: $1b
    add l                                         ; $75f7: $85
    sbc a                                         ; $75f8: $9f
    inc d                                         ; $75f9: $14
    rst $08                                       ; $75fa: $cf
    inc sp                                        ; $75fb: $33
    sub [hl]                                      ; $75fc: $96
    ld e, l                                       ; $75fd: $5d
    ld [c], a                                     ; $75fe: $e2
    ei                                            ; $75ff: $fb
    cp $7b                                        ; $7600: $fe $7b
    push hl                                       ; $7602: $e5
    sub b                                         ; $7603: $90
    db $ed                                        ; $7604: $ed
    add hl, sp                                    ; $7605: $39
    xor e                                         ; $7606: $ab
    dec a                                         ; $7607: $3d
    sbc a                                         ; $7608: $9f
    or $18                                        ; $7609: $f6 $18
    ld c, c                                       ; $760b: $49
    call $b251                                    ; $760c: $cd $51 $b2
    ld a, a                                       ; $760f: $7f
    call $f065                                    ; $7610: $cd $65 $f0
    sub a                                         ; $7613: $97
    ld a, [$afe7]                                 ; $7614: $fa $e7 $af
    ld l, l                                       ; $7617: $6d
    add hl, hl                                    ; $7618: $29
    call $c9ce                                    ; $7619: $cd $ce $c9
    or d                                          ; $761c: $b2
    ld [hl-], a                                   ; $761d: $32
    cp d                                          ; $761e: $ba
    nop                                           ; $761f: $00
    inc a                                         ; $7620: $3c

Jump_05a_7621:
    rst $08                                       ; $7621: $cf
    ld e, b                                       ; $7622: $58
    add $2d                                       ; $7623: $c6 $2d
    add sp, -$62                                  ; $7625: $e8 $9e
    and h                                         ; $7627: $a4
    and d                                         ; $7628: $a2
    cp b                                          ; $7629: $b8
    ld l, a                                       ; $762a: $6f
    ld d, d                                       ; $762b: $52
    inc d                                         ; $762c: $14
    sub c                                         ; $762d: $91
    jp z, Jump_05a_7299                           ; $762e: $ca $99 $72

    and [hl]                                      ; $7631: $a6
    halt                                          ; $7632: $76
    ld l, l                                       ; $7633: $6d
    adc [hl]                                      ; $7634: $8e
    cp $0b                                        ; $7635: $fe $0b
    nop                                           ; $7637: $00
    ld e, $73                                     ; $7638: $1e $73
    ld h, l                                       ; $763a: $65
    or [hl]                                       ; $763b: $b6
    and l                                         ; $763c: $a5
    db $fc                                        ; $763d: $fc
    xor l                                         ; $763e: $ad
    ld a, a                                       ; $763f: $7f
    ld l, $c3                                     ; $7640: $2e $c3
    ld sp, $4a2d                                  ; $7642: $31 $2d $4a
    ld [hl], e                                    ; $7645: $73
    add hl, de                                    ; $7646: $19
    db $fc                                        ; $7647: $fc
    sub $7f                                       ; $7648: $d6 $7f
    ld e, l                                       ; $764a: $5d
    sub a                                         ; $764b: $97
    ldh [$97], a                                  ; $764c: $e0 $97
    rst $38                                       ; $764e: $ff
    rst $20                                       ; $764f: $e7
    ld b, a                                       ; $7650: $47
    ld l, a                                       ; $7651: $6f
    ret                                           ; $7652: $c9


    and d                                         ; $7653: $a2
    call nc, Call_05a_7f3f                        ; $7654: $d4 $3f $7f
    ld l, l                                       ; $7657: $6d
    ld c, e                                       ; $7658: $4b
    ld [hl], e                                    ; $7659: $73
    add hl, de                                    ; $765a: $19
    db $fc                                        ; $765b: $fc
    sub $88                                       ; $765c: $d6 $88
    ld [hl], l                                    ; $765e: $75
    ld bc, $e31e                                  ; $765f: $01 $1e $e3
    ld e, d                                       ; $7662: $5a
    ld a, a                                       ; $7663: $7f
    cp $af                                        ; $7664: $fe $af
    halt                                          ; $7666: $76
    and [hl]                                      ; $7667: $a6
    inc sp                                        ; $7668: $33
    ld h, a                                       ; $7669: $67
    ld a, [hl-]                                   ; $766a: $3a
    db $e3                                        ; $766b: $e3
    ld l, d                                       ; $766c: $6a
    ld c, d                                       ; $766d: $4a
    adc d                                         ; $766e: $8a
    rst $20                                       ; $766f: $e7
    add hl, de                                    ; $7670: $19
    res 2, d                                      ; $7671: $cb $92
    add d                                         ; $7673: $82
    rst $00                                       ; $7674: $c7
    ld h, b                                       ; $7675: $60
    xor e                                         ; $7676: $ab
    jp c, $cd2d                                   ; $7677: $da $2d $cd

    or c                                          ; $767a: $b1
    dec h                                         ; $767b: $25
    ld a, a                                       ; $767c: $7f
    ld a, e                                       ; $767d: $7b
    rst $20                                       ; $767e: $e7
    sub $25                                       ; $767f: $d6 $25
    rst $20                                       ; $7681: $e7
    sbc l                                         ; $7682: $9d
    ld d, e                                       ; $7683: $53
    rrca                                          ; $7684: $0f
    rst $38                                       ; $7685: $ff
    db $fd                                        ; $7686: $fd
    or l                                          ; $7687: $b5
    adc [hl]                                      ; $7688: $8e
    ld l, [hl]                                    ; $7689: $6e
    sub d                                         ; $768a: $92
    and a                                         ; $768b: $a7
    adc $78                                       ; $768c: $ce $78
    adc d                                         ; $768e: $8a
    adc $78                                       ; $768f: $ce $78

Call_05a_7691:
    adc d                                         ; $7691: $8a
    jp hl                                         ; $7692: $e9


    adc h                                         ; $7693: $8c
    or e                                          ; $7694: $b3
    inc de                                        ; $7695: $13
    rst $08                                       ; $7696: $cf
    adc c                                         ; $7697: $89
    dec bc                                        ; $7698: $0b
    nop                                           ; $7699: $00
    ld e, $73                                     ; $769a: $1e $73
    ld h, l                                       ; $769c: $65
    or [hl]                                       ; $769d: $b6
    and l                                         ; $769e: $a5
    cp c                                          ; $769f: $b9
    inc c                                         ; $76a0: $0c
    cp $4a                                        ; $76a1: $fe $4a
    ld a, [bc]                                    ; $76a3: $0a
    ld b, [hl]                                    ; $76a4: $46
    or e                                          ; $76a5: $b3
    rla                                           ; $76a6: $17
    sub [hl]                                      ; $76a7: $96
    ld [hl], b                                    ; $76a8: $70
    ld h, a                                       ; $76a9: $67
    cp h                                          ; $76aa: $bc
    ld a, [c]                                     ; $76ab: $f2
    or a                                          ; $76ac: $b7
    cp $b9                                        ; $76ad: $fe $b9
    inc c                                         ; $76af: $0c
    add a                                         ; $76b0: $87
    ld e, l                                       ; $76b1: $5d
    nop                                           ; $76b2: $00
    ld e, $e3                                     ; $76b3: $1e $e3
    ld e, d                                       ; $76b5: $5a
    ld a, a                                       ; $76b6: $7f
    cp $af                                        ; $76b7: $fe $af
    halt                                          ; $76b9: $76
    and [hl]                                      ; $76ba: $a6
    inc sp                                        ; $76bb: $33
    ld h, a                                       ; $76bc: $67
    ld a, [hl-]                                   ; $76bd: $3a
    db $e3                                        ; $76be: $e3
    ld l, d                                       ; $76bf: $6a
    ld c, d                                       ; $76c0: $4a
    adc d                                         ; $76c1: $8a
    rst $20                                       ; $76c2: $e7
    add hl, de                                    ; $76c3: $19
    res 2, d                                      ; $76c4: $cb $92
    add d                                         ; $76c6: $82
    rst $00                                       ; $76c7: $c7
    ld h, b                                       ; $76c8: $60
    xor e                                         ; $76c9: $ab
    jp c, $cd2d                                   ; $76ca: $da $2d $cd

    or c                                          ; $76cd: $b1
    dec h                                         ; $76ce: $25
    ld a, a                                       ; $76cf: $7f
    ld a, e                                       ; $76d0: $7b
    rst $20                                       ; $76d1: $e7
    sub $25                                       ; $76d2: $d6 $25
    rst $20                                       ; $76d4: $e7
    sbc l                                         ; $76d5: $9d
    ld d, e                                       ; $76d6: $53
    rrca                                          ; $76d7: $0f
    rst $38                                       ; $76d8: $ff
    db $fd                                        ; $76d9: $fd
    or l                                          ; $76da: $b5
    adc [hl]                                      ; $76db: $8e
    ld l, [hl]                                    ; $76dc: $6e
    sub d                                         ; $76dd: $92
    and a                                         ; $76de: $a7
    adc $78                                       ; $76df: $ce $78
    adc d                                         ; $76e1: $8a
    adc $78                                       ; $76e2: $ce $78
    adc d                                         ; $76e4: $8a
    jp hl                                         ; $76e5: $e9


    adc h                                         ; $76e6: $8c
    or e                                          ; $76e7: $b3
    inc de                                        ; $76e8: $13
    rst $08                                       ; $76e9: $cf
    adc c                                         ; $76ea: $89
    ld c, e                                       ; $76eb: $4b
    ld l, [hl]                                    ; $76ec: $6e
    ld d, a                                       ; $76ed: $57
    cp l                                          ; $76ee: $bd
    inc l                                         ; $76ef: $2c
    inc [hl]                                      ; $76f0: $34
    sbc l                                         ; $76f1: $9d
    sbc c                                         ; $76f2: $99
    adc $cc                                       ; $76f3: $ce $cc
    ld h, l                                       ; $76f5: $65
    ldh a, [$eb]                                  ; $76f6: $f0 $eb
    sbc $1a                                       ; $76f8: $de $1a
    rst $20                                       ; $76fa: $e7
    ld b, h                                       ; $76fb: $44
    ld d, d                                       ; $76fc: $52
    or l                                          ; $76fd: $b5
    ld e, e                                       ; $76fe: $5b
    ld a, [c]                                     ; $76ff: $f2
    rst $38                                       ; $7700: $ff
    db $fc                                        ; $7701: $fc
    add sp, $2f                                   ; $7702: $e8 $2f
    ld e, c                                       ; $7704: $59
    sub h                                         ; $7705: $94
    xor $ef                                       ; $7706: $ee $ef
    cp a                                          ; $7708: $bf
    ld d, a                                       ; $7709: $57
    ld c, $d9                                     ; $770a: $0e $d9
    sbc [hl]                                      ; $770c: $9e
    or e                                          ; $770d: $b3
    rst $20                                       ; $770e: $e7
    call nz, Call_000_0005                        ; $770f: $c4 $05 $00
    db $fc                                        ; $7712: $fc
    ld h, h                                       ; $7713: $64
    ld b, [hl]                                    ; $7714: $46
    or d                                          ; $7715: $b2
    db $10                                        ; $7716: $10
    sub $05                                       ; $7717: $d6 $05
    nop                                           ; $7719: $00
    ld a, h                                       ; $771a: $7c
    db $db                                        ; $771b: $db
    ld d, c                                       ; $771c: $51
    ld a, [bc]                                    ; $771d: $0a
    ld h, a                                       ; $771e: $67
    jp nz, $6899                                  ; $771f: $c2 $99 $68

    db $db                                        ; $7722: $db
    ld a, [hl+]                                   ; $7723: $2a
    ld l, d                                       ; $7724: $6a
    reti                                          ; $7725: $d9


    add b                                         ; $7726: $80
    ld b, a                                       ; $7727: $47
    cp $9d                                        ; $7728: $fe $9d
    inc d                                         ; $772a: $14
    rst $08                                       ; $772b: $cf
    inc sp                                        ; $772c: $33
    sub [hl]                                      ; $772d: $96
    ld b, c                                       ; $772e: $41
    ld bc, $8cfc                                  ; $772f: $01 $fc $8c
    adc e                                         ; $7732: $8b
    xor e                                         ; $7733: $ab
    sub e                                         ; $7734: $93
    ld a, [$74b6]                                 ; $7735: $fa $b6 $74
    rst $30                                       ; $7738: $f7
    cp d                                          ; $7739: $ba
    ld l, $00                                     ; $773a: $2e $00
    ld c, $df                                     ; $773c: $0e $df
    add hl, de                                    ; $773e: $19
    add a                                         ; $773f: $87
    rst $28                                       ; $7740: $ef
    adc h                                         ; $7741: $8c
    jp Jump_05a_6f67                              ; $7742: $c3 $67 $6f


    db $fd                                        ; $7745: $fd
    add d                                         ; $7746: $82
    cp a                                          ; $7747: $bf
    rst $20                                       ; $7748: $e7
    cp a                                          ; $7749: $bf
    and d                                         ; $774a: $a2
    ld l, l                                       ; $774b: $6d
    rst $28                                       ; $774c: $ef
    or l                                          ; $774d: $b5
    and [hl]                                      ; $774e: $a6
    and h                                         ; $774f: $a4
    ld a, b                                       ; $7750: $78
    sbc [hl]                                      ; $7751: $9e
    or c                                          ; $7752: $b1
    db $ec                                        ; $7753: $ec
    ld [bc], a                                    ; $7754: $02
    inc a                                         ; $7755: $3c
    or h                                          ; $7756: $b4
    ld l, h                                       ; $7757: $6c
    db $db                                        ; $7758: $db
    or [hl]                                       ; $7759: $b6
    add l                                         ; $775a: $85
    cp [hl]                                       ; $775b: $be
    cp a                                          ; $775c: $bf
    dec a                                         ; $775d: $3d
    xor d                                         ; $775e: $aa
    rst $30                                       ; $775f: $f7
    cp c                                          ; $7760: $b9
    push bc                                       ; $7761: $c5
    cp c                                          ; $7762: $b9
    db $db                                        ; $7763: $db
    and h                                         ; $7764: $a4
    dec sp                                        ; $7765: $3b
    ld a, [hl+]                                   ; $7766: $2a

jr_05a_7767:
    ld b, d                                       ; $7767: $42
    ld l, $ab                                     ; $7768: $2e $ab
    add a                                         ; $776a: $87
    rst $38                                       ; $776b: $ff
    cp $5a                                        ; $776c: $fe $5a
    ld b, a                                       ; $776e: $47
    scf                                           ; $776f: $37
    ld [hl], c                                    ; $7770: $71
    inc bc                                        ; $7771: $03
    rst $10                                       ; $7772: $d7
    ld [hl], l                                    ; $7773: $75
    push hl                                       ; $7774: $e5
    inc bc                                        ; $7775: $03
    xor e                                         ; $7776: $ab
    ld e, [hl]                                    ; $7777: $5e
    adc $bb                                       ; $7778: $ce $bb
    xor $bc                                       ; $777a: $ee $bc
    di                                            ; $777c: $f3
    ld c, c                                       ; $777d: $49
    call $9a51                                    ; $777e: $cd $51 $9a
    sbc e                                         ; $7781: $9b
    ld l, a                                       ; $7782: $6f
    cp d                                          ; $7783: $ba
    inc l                                         ; $7784: $2c
    ld e, a                                       ; $7785: $5f
    xor [hl]                                      ; $7786: $ae
    sub $1d                                       ; $7787: $d6 $1d
    or l                                          ; $7789: $b5
    add hl, sp                                    ; $778a: $39
    or l                                          ; $778b: $b5
    adc $cf                                       ; $778c: $ce $cf
    adc c                                         ; $778e: $89
    ld e, b                                       ; $778f: $58
    ld c, c                                       ; $7790: $49
    ld d, l                                       ; $7791: $55
    adc h                                         ; $7792: $8c
    inc e                                         ; $7793: $1c
    cp e                                          ; $7794: $bb
    db $e3                                        ; $7795: $e3
    adc h                                         ; $7796: $8c
    sub $a4                                       ; $7797: $d6 $a4
    xor h                                         ; $7799: $ac
    ld l, d                                       ; $779a: $6a
    xor l                                         ; $779b: $ad
    and e                                         ; $779c: $a3
    ld a, e                                       ; $779d: $7b
    or a                                          ; $779e: $b7
    xor [hl]                                      ; $779f: $ae
    db $eb                                        ; $77a0: $eb
    ld [bc], a                                    ; $77a1: $02
    inc e                                         ; $77a2: $1c
    ld d, l                                       ; $77a3: $55
    ld sp, $856d                                  ; $77a4: $31 $6d $85
    ld h, a                                       ; $77a7: $67
    ld [hl+], a                                   ; $77a8: $22
    ld d, [hl]                                    ; $77a9: $56
    ld d, d                                       ; $77aa: $52
    ld c, $b1                                     ; $77ab: $0e $b1
    dec sp                                        ; $77ad: $3b
    jr jr_05a_7767                                ; $77ae: $18 $b7

    ld hl, sp+$47                                 ; $77b0: $f8 $47
    cp $a7                                        ; $77b2: $fe $a7
    rst $18                                       ; $77b4: $df
    ld d, [hl]                                    ; $77b5: $56
    add hl, sp                                    ; $77b6: $39
    and l                                         ; $77b7: $a5
    ld d, c                                       ; $77b8: $51
    dec d                                         ; $77b9: $15
    ld c, l                                       ; $77ba: $4d
    ld d, h                                       ; $77bb: $54
    ld [hl], d                                    ; $77bc: $72

jr_05a_77bd:
    ld e, c                                       ; $77bd: $59
    cp $5a                                        ; $77be: $fe $5a
    ld b, a                                       ; $77c0: $47
    scf                                           ; $77c1: $37
    xor c                                         ; $77c2: $a9
    ld b, a                                       ; $77c3: $47
    push af                                       ; $77c4: $f5
    sub $2a                                       ; $77c5: $d6 $2a
    and l                                         ; $77c7: $a5
    ld h, l                                       ; $77c8: $65
    db $db                                        ; $77c9: $db
    ld d, $f7                                     ; $77ca: $16 $f7
    ld e, d                                       ; $77cc: $5a
    ld e, b                                       ; $77cd: $58
    inc de                                        ; $77ce: $13
    scf                                           ; $77cf: $37
    nop                                           ; $77d0: $00
    inc a                                         ; $77d1: $3c
    pop bc                                        ; $77d2: $c1
    ret c                                         ; $77d3: $d8

    sla c                                         ; $77d4: $cb $21
    halt                                          ; $77d6: $76
    rlca                                          ; $77d7: $07
    db $db                                        ; $77d8: $db
    db $d3                                        ; $77d9: $d3
    xor a                                         ; $77da: $af
    sbc h                                         ; $77db: $9c
    jp nc, $8aa8                                  ; $77dc: $d2 $a8 $8a

    ld h, $2a                                     ; $77df: $26 $2a
    cp c                                          ; $77e1: $b9
    xor h                                         ; $77e2: $ac
    ld e, $fe                                     ; $77e3: $1e $fe
    ei                                            ; $77e5: $fb
    ld l, e                                       ; $77e6: $6b
    dec e                                         ; $77e7: $1d
    db $dd                                        ; $77e8: $dd
    inc h                                         ; $77e9: $24
    db $f4                                        ; $77ea: $f4
    and e                                         ; $77eb: $a3
    rst $00                                       ; $77ec: $c7
    or h                                          ; $77ed: $b4
    jr z, jr_05a_77bd                             ; $77ee: $28 $cd

    or b                                          ; $77f0: $b0
    add hl, de                                    ; $77f1: $19
    ld e, c                                       ; $77f2: $59
    scf                                           ; $77f3: $37
    db $dd                                        ; $77f4: $dd
    ld l, e                                       ; $77f5: $6b
    ld h, c                                       ; $77f6: $61
    ld c, l                                       ; $77f7: $4d
    call c, Call_000_1e00                         ; $77f8: $dc $00 $1e
    rrca                                          ; $77fb: $0f
    sbc h                                         ; $77fc: $9c
    di                                            ; $77fd: $f3
    sub e                                         ; $77fe: $93
    or d                                          ; $77ff: $b2
    cpl                                           ; $7800: $2f
    sbc h                                         ; $7801: $9c
    rst $38                                       ; $7802: $ff
    cp $cb                                        ; $7803: $fe $cb
    and a                                         ; $7805: $a7
    call $c489                                    ; $7806: $cd $89 $c4
    di                                            ; $7809: $f3
    adc h                                         ; $780a: $8c
    ld h, l                                       ; $780b: $65
    rst $20                                       ; $780c: $e7
    call nz, $9e25                                ; $780d: $c4 $25 $9e
    ld h, a                                       ; $7810: $67
    inc l                                         ; $7811: $2c
    ld c, e                                       ; $7812: $4b
    jp z, $d0be                                   ; $7813: $ca $be $d0

    ld a, a                                       ; $7816: $7f
    and l                                         ; $7817: $a5
    ld e, c                                       ; $7818: $59
    ld c, [hl]                                    ; $7819: $4e
    sub $db                                       ; $781a: $d6 $db
    jp z, Jump_000_2177                           ; $781c: $ca $77 $21

    ld [hl], c                                    ; $781f: $71
    ld c, [hl]                                    ; $7820: $4e
    xor b                                         ; $7821: $a8
    add a                                         ; $7822: $87
    rst $38                                       ; $7823: $ff
    cp $5a                                        ; $7824: $fe $5a
    ld b, a                                       ; $7826: $47
    sbc h                                         ; $7827: $9c
    inc de                                        ; $7828: $13
    rla                                           ; $7829: $17
    nop                                           ; $782a: $00
    ld c, $28                                     ; $782b: $0e $28
    ld l, e                                       ; $782d: $6b
    ld l, d                                       ; $782e: $6a
    push hl                                       ; $782f: $e5
    sub h                                         ; $7830: $94
    ld d, d                                       ; $7831: $52
    add hl, hl                                    ; $7832: $29
    rst $18                                       ; $7833: $df
    inc [hl]                                      ; $7834: $34
    ld e, b                                       ; $7835: $58
    ld d, e                                       ; $7836: $53
    ld c, [hl]                                    ; $7837: $4e
    and a                                         ; $7838: $a7
    add hl, hl                                    ; $7839: $29
    add hl, hl                                    ; $783a: $29
    sbc [hl]                                      ; $783b: $9e
    ld h, a                                       ; $783c: $67
    inc l                                         ; $783d: $2c
    cp e                                          ; $783e: $bb
    nop                                           ; $783f: $00
    inc e                                         ; $7840: $1c
    daa                                           ; $7841: $27

Jump_05a_7842:
    ld a, d                                       ; $7842: $7a
    and d                                         ; $7843: $a2
    and $a8                                       ; $7844: $e6 $a8
    ld b, d                                       ; $7846: $42
    or e                                          ; $7847: $b3

Call_05a_7848:
    ld c, a                                       ; $7848: $4f
    adc d                                         ; $7849: $8a
    rst $20                                       ; $784a: $e7
    add hl, de                                    ; $784b: $19
    res 4, b                                      ; $784c: $cb $a0
    nop                                           ; $784e: $00
    cp h                                          ; $784f: $bc
    bit 6, b                                      ; $7850: $cb $70
    ld c, h                                       ; $7852: $4c
    dec bc                                        ; $7853: $0b
    ld e, e                                       ; $7854: $5b
    ld h, c                                       ; $7855: $61
    ret                                           ; $7856: $c9


    rst $00                                       ; $7857: $c7
    dec [hl]                                      ; $7858: $35
    ld a, e                                       ; $7859: $7b
    ld l, [hl]                                    ; $785a: $6e
    nop                                           ; $785b: $00
    ret nc                                        ; $785c: $d0

    dec a                                         ; $785d: $3d
    cp c                                          ; $785e: $b9
    sub h                                         ; $785f: $94
    db $e3                                        ; $7860: $e3
    ld a, [hl+]                                   ; $7861: $2a
    call $adf2                                    ; $7862: $cd $f2 $ad
    and h                                         ; $7865: $a4
    ld a, b                                       ; $7866: $78
    sbc [hl]                                      ; $7867: $9e
    or c                                          ; $7868: $b1
    inc c                                         ; $7869: $0c
    ld a, [bc]                                    ; $786a: $0a
    nop                                           ; $786b: $00
    ret nc                                        ; $786c: $d0

    dec h                                         ; $786d: $25
    call c, Call_05a_5b19                         ; $786e: $dc $19 $5b
    ld c, c                                       ; $7871: $49
    push de                                       ; $7872: $d5
    xor [hl]                                      ; $7873: $ae
    ld c, l                                       ; $7874: $4d
    push de                                       ; $7875: $d5
    xor [hl]                                      ; $7876: $ae
    call $9e4b                                    ; $7877: $cd $4b $9e
    ld l, [hl]                                    ; $787a: $6e
    ret c                                         ; $787b: $d8

    ld d, b                                       ; $787c: $50
    rst $00                                       ; $787d: $c7
    ld e, h                                       ; $787e: $5c
    db $dd                                        ; $787f: $dd
    ld e, e                                       ; $7880: $5b
    and e                                         ; $7881: $a3
    ld [hl], l                                    ; $7882: $75
    ld [hl], b                                    ; $7883: $70
    db $db                                        ; $7884: $db
    add $39                                       ; $7885: $c6 $39
    cpl                                           ; $7887: $2f
    ei                                            ; $7888: $fb
    ld h, l                                       ; $7889: $65

jr_05a_788a:
    rst $38                                       ; $788a: $ff
    db $d3                                        ; $788b: $d3
    or $02                                        ; $788c: $f6 $02
    sbc [hl]                                      ; $788e: $9e
    ld l, [hl]                                    ; $788f: $6e
    ret c                                         ; $7890: $d8

    sub b                                         ; $7891: $90
    db $fd                                        ; $7892: $fd
    ld l, e                                       ; $7893: $6b
    cp $ce                                        ; $7894: $fe $ce
    cp c                                          ; $7896: $b9
    jp z, $ef71                                   ; $7897: $ca $71 $ef

jr_05a_789a:
    rst $38                                       ; $789a: $ff
    sub d                                         ; $789b: $92
    rst $38                                       ; $789c: $ff
    add hl, hl                                    ; $789d: $29
    ld l, [hl]                                    ; $789e: $6e
    ld e, l                                       ; $789f: $5d
    ld [c], a                                     ; $78a0: $e2
    dec e                                         ; $78a1: $1d
    db $e3                                        ; $78a2: $e3
    and b                                         ; $78a3: $a0
    push af                                       ; $78a4: $f5
    cp a                                          ; $78a5: $bf
    ld [hl], $fd                                  ; $78a6: $36 $fd
    jp nc, $865c                                  ; $78a8: $d2 $5c $86

    ld h, e                                       ; $78ab: $63
    ld e, d                                       ; $78ac: $5a
    sbc h                                         ; $78ad: $9c
    cp $4b                                        ; $78ae: $fe $4b
    ld a, h                                       ; $78b0: $7c
    ld d, c                                       ; $78b1: $51
    pop hl                                        ; $78b2: $e1
    sub e                                         ; $78b3: $93
    ld a, [$fffd]                                 ; $78b4: $fa $fd $ff
    ei                                            ; $78b7: $fb
    cp a                                          ; $78b8: $bf
    db $e4                                        ; $78b9: $e4
    inc sp                                        ; $78ba: $33
    ld c, h                                       ; $78bb: $4c
    jr nc, jr_05a_788a                            ; $78bc: $30 $cc

    sub b                                         ; $78be: $90
    xor l                                         ; $78bf: $ad
    jr c, jr_05a_789a                             ; $78c0: $38 $d8

    rst $20                                       ; $78c2: $e7
    pop af                                        ; $78c3: $f1
    sbc d                                         ; $78c4: $9a
    ld a, b                                       ; $78c5: $78
    xor $af                                       ; $78c6: $ee $af
    adc [hl]                                      ; $78c8: $8e
    jr z, @-$31                                   ; $78c9: $28 $cd

    ld h, b                                       ; $78cb: $60
    inc c                                         ; $78cc: $0c
    and a                                         ; $78cd: $a7
    ld b, l                                       ; $78ce: $45
    call nc, $1e25                                ; $78cf: $d4 $25 $1e
    ld a, [hl+]                                   ; $78d2: $2a
    ld h, c                                       ; $78d3: $61
    ld l, c                                       ; $78d4: $69
    ld l, $c3                                     ; $78d5: $2e $c3
    ld h, c                                       ; $78d7: $61
    dec e                                         ; $78d8: $1d
    and l                                         ; $78d9: $a5
    or a                                          ; $78da: $b7
    db $fd                                        ; $78db: $fd
    ld [$bd51], a                                 ; $78dc: $ea $51 $bd
    ldh a, [$5f]                                  ; $78df: $f0 $5f
    nop                                           ; $78e1: $00
    cp h                                          ; $78e2: $bc
    ld e, a                                       ; $78e3: $5f
    push af                                       ; $78e4: $f5
    db $dd                                        ; $78e5: $dd
    rst $38                                       ; $78e6: $ff
    cp d                                          ; $78e7: $ba
    and e                                         ; $78e8: $a3
    adc d                                         ; $78e9: $8a
    inc [hl]                                      ; $78ea: $34
    pop af                                        ; $78eb: $f1
    call c, Call_000_1d5f                         ; $78ec: $dc $5f $1d
    ld d, c                                       ; $78ef: $51

jr_05a_78f0:
    sbc d                                         ; $78f0: $9a
    pop bc                                        ; $78f1: $c1

jr_05a_78f2:
    jr jr_05a_7942                                ; $78f2: $18 $4e

    adc e                                         ; $78f4: $8b
    jr z, jr_05a_78f0                             ; $78f5: $28 $f9

    inc hl                                        ; $78f7: $23
    dec e                                         ; $78f8: $1d
    rst $30                                       ; $78f9: $f7
    ld a, a                                       ; $78fa: $7f
    ret                                           ; $78fb: $c9


    ld h, a                                       ; $78fc: $67
    sbc b                                         ; $78fd: $98
    ld h, b                                       ; $78fe: $60
    sbc b                                         ; $78ff: $98
    ld hl, $715b                                  ; $7900: $21 $5b $71
    or b                                          ; $7903: $b0
    rst $08                                       ; $7904: $cf
    db $e3                                        ; $7905: $e3
    sbc h                                         ; $7906: $9c
    cp b                                          ; $7907: $b8
    call nz, $a543                                ; $7908: $c4 $43 $a5
    sbc $68                                       ; $790b: $de $68
    ld [hl+], a                                   ; $790d: $22
    call Call_000_19df                            ; $790e: $cd $df $19
    and l                                         ; $7911: $a5
    cp c                                          ; $7912: $b9
    inc c                                         ; $7913: $0c
    rst $00                                       ; $7914: $c7
    or h                                          ; $7915: $b4
    or l                                          ; $7916: $b5
    cp $0b                                        ; $7917: $fe $0b
    nop                                           ; $7919: $00
    db $fc                                        ; $791a: $fc
    sbc a                                         ; $791b: $9f
    rst $38                                       ; $791c: $ff
    add hl, sp                                    ; $791d: $39
    ld l, e                                       ; $791e: $6b
    ld h, c                                       ; $791f: $61
    or $9a                                        ; $7920: $f6 $9a
    jr c, jr_05a_78f2                             ; $7922: $38 $ce

    jr nc, jr_05a_79a1                            ; $7924: $30 $7b

    push bc                                       ; $7926: $c5
    ld a, [bc]                                    ; $7927: $0a
    db $fd                                        ; $7928: $fd
    add sp, -$18                                  ; $7929: $e8 $e8
    ld e, $ba                                     ; $792b: $1e $ba
    or a                                          ; $792d: $b7
    adc c                                         ; $792e: $89
    ld c, d                                       ; $792f: $4a
    ld b, l                                       ; $7930: $45
    ld e, e                                       ; $7931: $5b
    ld c, d                                       ; $7932: $4a
    rst $00                                       ; $7933: $c7
    jp c, Jump_000_05fe                           ; $7934: $da $fe $05

    nop                                           ; $7937: $00
    adc [hl]                                      ; $7938: $8e
    ld l, l                                       ; $7939: $6d
    xor a                                         ; $793a: $af
    db $ec                                        ; $793b: $ec
    dec bc                                        ; $793c: $0b
    scf                                           ; $793d: $37
    xor c                                         ; $793e: $a9
    add sp, $26                                   ; $793f: $e8 $26
    pop hl                                        ; $7941: $e1

jr_05a_7942:
    adc c                                         ; $7942: $89
    ld [de], a                                    ; $7943: $12
    xor $8c                                       ; $7944: $ee $8c
    ld d, a                                       ; $7946: $57
    ld e, $27                                     ; $7947: $1e $27
    ld b, l                                       ; $7949: $45
    and l                                         ; $794a: $a5
    ld h, e                                       ; $794b: $63
    adc $ff                                       ; $794c: $ce $ff
    ei                                            ; $794e: $fb
    cp a                                          ; $794f: $bf
    call nc, Call_000_3f9f                        ; $7950: $d4 $9f $3f
    jp Jump_05a_4fed                              ; $7953: $c3 $ed $4f


    ld [$dd1e], a                                 ; $7956: $ea $1e $dd
    cpl                                           ; $7959: $2f
    dec bc                                        ; $795a: $0b
    push bc                                       ; $795b: $c5
    xor d                                         ; $795c: $aa
    ld a, a                                       ; $795d: $7f
    ld hl, $1faf                                  ; $795e: $21 $af $1f
    db $dd                                        ; $7961: $dd
    rst $38                                       ; $7962: $ff
    ld l, d                                       ; $7963: $6a
    ld a, [hl-]                                   ; $7964: $3a
    add a                                         ; $7965: $87
    call nc, Call_05a_6aa3                        ; $7966: $d4 $a3 $6a
    rst $08                                       ; $7969: $cf
    ld sp, hl                                     ; $796a: $f9
    dec bc                                        ; $796b: $0b
    nop                                           ; $796c: $00
    ret nc                                        ; $796d: $d0

    xor l                                         ; $796e: $ad
    and d                                         ; $796f: $a2
    ret                                           ; $7970: $c9


    dec b                                         ; $7971: $05
    inc de                                        ; $7972: $13
    sub l                                         ; $7973: $95
    ld h, $65                                     ; $7974: $26 $65
    db $dd                                        ; $7976: $dd
    ld d, h                                       ; $7977: $54
    ld e, c                                       ; $7978: $59
    ld l, e                                       ; $7979: $6b
    ld l, $83                                     ; $797a: $2e $83
    rst $38                                       ; $797c: $ff
    dec [hl]                                      ; $797d: $35
    sub a                                         ; $797e: $97
    pop hl                                        ; $797f: $e1
    sbc b                                         ; $7980: $98
    ld d, $25                                     ; $7981: $16 $25
    rra                                           ; $7983: $1f
    rst $10                                       ; $7984: $d7
    ld a, [$b5ef]                                 ; $7985: $fa $ef $b5
    adc b                                         ; $7988: $88
    cp d                                          ; $7989: $ba
    call nz, Call_05a_45b7                        ; $798a: $c4 $b7 $45
    jp z, Jump_05a_4b71                           ; $798d: $ca $71 $4b

    ld a, $ae                                     ; $7990: $3e $ae
    push af                                       ; $7992: $f5
    cp a                                          ; $7993: $bf
    inc l                                         ; $7994: $2c
    ld c, d                                       ; $7995: $4a
    cp $c0                                        ; $7996: $fe $c0
    inc de                                        ; $7998: $13
    sub $6f                                       ; $7999: $d6 $6f
    ld a, e                                       ; $799b: $7b
    ld bc, $75d0                                  ; $799c: $01 $d0 $75
    ret                                           ; $799f: $c9


    or c                                          ; $79a0: $b1

jr_05a_79a1:
    ld b, e                                       ; $79a1: $43
    sub e                                         ; $79a2: $93
    call nc, Call_05a_7acf                        ; $79a3: $d4 $cf $7a
    db $f4                                        ; $79a6: $f4
    db $eb                                        ; $79a7: $eb
    adc [hl]                                      ; $79a8: $8e
    ld l, l                                       ; $79a9: $6d
    jp nc, $9dfc                                  ; $79aa: $d2 $fc $9d

    ld [hl], e                                    ; $79ad: $73
    rst $38                                       ; $79ae: $ff
    ld [bc], a                                    ; $79af: $02
    cp h                                          ; $79b0: $bc
    ld e, a                                       ; $79b1: $5f
    push af                                       ; $79b2: $f5
    db $dd                                        ; $79b3: $dd
    rst $38                                       ; $79b4: $ff
    jp z, $dd9f                                   ; $79b5: $ca $9f $dd

    rst $38                                       ; $79b8: $ff
    and l                                         ; $79b9: $a5
    sbc c                                         ; $79ba: $99
    ld e, c                                       ; $79bb: $59
    ld b, [hl]                                    ; $79bc: $46
    add d                                         ; $79bd: $82
    pop af                                        ; $79be: $f1
    db $f4                                        ; $79bf: $f4
    ld l, a                                       ; $79c0: $6f
    add hl, bc                                    ; $79c1: $09
    db $fd                                        ; $79c2: $fd
    add sp, $7e                                   ; $79c3: $e8 $7e
    ld hl, sp+$4f                                 ; $79c5: $f8 $4f
    rst $38                                       ; $79c7: $ff
    dec b                                         ; $79c8: $05
    nop                                           ; $79c9: $00
    sbc h                                         ; $79ca: $9c
    ld e, e                                       ; $79cb: $5b
    and e                                         ; $79cc: $a3
    db $e4                                        ; $79cd: $e4
    ld l, a                                       ; $79ce: $6f
    inc de                                        ; $79cf: $13
    xor c                                         ; $79d0: $a9
    cp a                                          ; $79d1: $bf
    call z, $35f6                                 ; $79d2: $cc $f6 $35
    rst $00                                       ; $79d5: $c7
    xor b                                         ; $79d6: $a8
    db $fc                                        ; $79d7: $fc
    rrca                                          ; $79d8: $0f
    sbc d                                         ; $79d9: $9a
    db $fd                                        ; $79da: $fd
    dec h                                         ; $79db: $25
    add sp, $4d                                   ; $79dc: $e8 $4d
    jp z, $a522                                   ; $79de: $ca $22 $a5

    ld [de], a                                    ; $79e1: $12
    sbc [hl]                                      ; $79e2: $9e
    sbc l                                         ; $79e3: $9d
    ld e, e                                       ; $79e4: $5b
    or d                                          ; $79e5: $b2
    inc l                                         ; $79e6: $2c
    dec sp                                        ; $79e7: $3b
    dec de                                        ; $79e8: $1b
    dec h                                         ; $79e9: $25
    rra                                           ; $79ea: $1f
    rst $10                                       ; $79eb: $d7
    ld a, [$b5ef]                                 ; $79ec: $fa $ef $b5
    adc b                                         ; $79ef: $88
    cp d                                          ; $79f0: $ba
    nop                                           ; $79f1: $00
    ld l, [hl]                                    ; $79f2: $6e
    ld d, a                                       ; $79f3: $57
    ld b, a                                       ; $79f4: $47
    ld c, h                                       ; $79f5: $4c
    db $db                                        ; $79f6: $db
    and h                                         ; $79f7: $a4
    xor $d1                                       ; $79f8: $ee $d1
    db $fd                                        ; $79fa: $fd
    adc d                                         ; $79fb: $8a
    ld [de], a                                    ; $79fc: $12
    jp c, Jump_05a_7ebf                           ; $79fd: $da $bf $7e

    ld [hl], h                                    ; $7a00: $74
    rst $38                                       ; $7a01: $ff
    ld e, a                                       ; $7a02: $5f
    nop                                           ; $7a03: $00
    ret nc                                        ; $7a04: $d0

    xor e                                         ; $7a05: $ab
    db $f4                                        ; $7a06: $f4
    pop hl                                        ; $7a07: $e1
    pop af                                        ; $7a08: $f1
    rla                                           ; $7a09: $17
    nop                                           ; $7a0a: $00
    cp h                                          ; $7a0b: $bc
    jr c, jr_05a_7a71                             ; $7a0c: $38 $63

    rst $08                                       ; $7a0e: $cf
    or $44                                        ; $7a0f: $f6 $44
    pop bc                                        ; $7a11: $c1
    xor b                                         ; $7a12: $a8
    inc a                                         ; $7a13: $3c
    cp d                                          ; $7a14: $ba
    ld c, c                                       ; $7a15: $49
    ldh a, [$cb]                                  ; $7a16: $f0 $cb
    ld a, [hl]                                    ; $7a18: $7e
    ld a, l                                       ; $7a19: $7d
    ld a, a                                       ; $7a1a: $7f
    db $fc                                        ; $7a1b: $fc
    ld b, e                                       ; $7a1c: $43
    ld bc, $75d0                                  ; $7a1d: $01 $d0 $75
    add hl, bc                                    ; $7a20: $09
    ld a, [hl-]                                   ; $7a21: $3a
    sbc l                                         ; $7a22: $9d
    inc h                                         ; $7a23: $24
    db $db                                        ; $7a24: $db
    ld l, l                                       ; $7a25: $6d
    jp nc, $cae1                                  ; $7a26: $d2 $e1 $ca

    ld a, [hl-]                                   ; $7a29: $3a
    set 2, h                                      ; $7a2a: $cb $d4
    dec de                                        ; $7a2c: $1b
    adc l                                         ; $7a2d: $8d
    xor a                                         ; $7a2e: $af
    cp c                                          ; $7a2f: $b9
    inc c                                         ; $7a30: $0c
    add $b5                                       ; $7a31: $c6 $b5
    cp $0b                                        ; $7a33: $fe $0b
    nop                                           ; $7a35: $00
    ret nc                                        ; $7a36: $d0

    dec h                                         ; $7a37: $25
    ei                                            ; $7a38: $fb
    sub a                                         ; $7a39: $97
    adc a                                         ; $7a3a: $8f
    ld l, e                                       ; $7a3b: $6b
    ld a, [bc]                                    ; $7a3c: $0a
    ld c, b                                       ; $7a3d: $48
    sbc b                                         ; $7a3e: $98

Jump_05a_7a3f:
    sbc d                                         ; $7a3f: $9a
    sbc d                                         ; $7a40: $9a
    sub h                                         ; $7a41: $94
    xor $39                                       ; $7a42: $ee $39
    ret c                                         ; $7a44: $d8

    sbc a                                         ; $7a45: $9f
    or d                                          ; $7a46: $b2
    ld a, a                                       ; $7a47: $7f
    ld sp, hl                                     ; $7a48: $f9
    cp a                                          ; $7a49: $bf
    sub b                                         ; $7a4a: $90
    or a                                          ; $7a4b: $b7
    cp $da                                        ; $7a4c: $fe $da
    dec bc                                        ; $7a4e: $0b
    nop                                           ; $7a4f: $00
    inc a                                         ; $7a50: $3c
    reti                                          ; $7a51: $d9


    ld e, [hl]                                    ; $7a52: $5e
    ld a, [c]                                     ; $7a53: $f2
    ld [$b64d], sp                                ; $7a54: $08 $4d $b6
    dec [hl]                                      ; $7a57: $35
    ld e, d                                       ; $7a58: $5a
    ld e, b                                       ; $7a59: $58
    sbc d                                         ; $7a5a: $9a
    res 6, b                                      ; $7a5b: $cb $b0
    ld a, e                                       ; $7a5d: $7b
    inc h                                         ; $7a5e: $24
    ld d, l                                       ; $7a5f: $55
    cp e                                          ; $7a60: $bb
    dec h                                         ; $7a61: $25
    ccf                                           ; $7a62: $3f
    or e                                          ; $7a63: $b3
    ld c, h                                       ; $7a64: $4c
    rlca                                          ; $7a65: $07
    or a                                          ; $7a66: $b7
    pop af                                        ; $7a67: $f1
    sbc h                                         ; $7a68: $9c
    rst $20                                       ; $7a69: $e7
    ld b, $bc                                     ; $7a6a: $06 $bc
    jr c, jr_05a_7ad1                             ; $7a6c: $38 $63

jr_05a_7a6e:
    ld c, a                                       ; $7a6e: $4f
    jr z, jr_05a_7a6e                             ; $7a6f: $28 $fd

jr_05a_7a71:
    ld c, d                                       ; $7a71: $4a
    add sp, -$05                                  ; $7a72: $e8 $fb
    ld h, l                                       ; $7a74: $65
    db $db                                        ; $7a75: $db
    ld [hl], h                                    ; $7a76: $74
    ld bc, $b8bc                                  ; $7a77: $01 $bc $b8
    db $fd                                        ; $7a7a: $fd
    dec h                                         ; $7a7b: $25
    ccf                                           ; $7a7c: $3f
    or e                                          ; $7a7d: $b3
    adc h                                         ; $7a7e: $8c
    ld [hl], h                                    ; $7a7f: $74
    ld a, a                                       ; $7a80: $7f
    ld a, [bc]                                    ; $7a81: $0a
    pop bc                                        ; $7a82: $c1

jr_05a_7a83:
    ld [hl], e                                    ; $7a83: $73
    sub $f6                                       ; $7a84: $d6 $f6
    cp [hl]                                       ; $7a86: $be
    cp a                                          ; $7a87: $bf
    inc [hl]                                      ; $7a88: $34
    ld a, a                                       ; $7a89: $7f
    call z, $d7af                                 ; $7a8a: $cc $af $d7
    db $fc                                        ; $7a8d: $fc
    sbc l                                         ; $7a8e: $9d
    ld l, e                                       ; $7a8f: $6b
    db $fd                                        ; $7a90: $fd
    sbc d                                         ; $7a91: $9a
    bit 6, b                                      ; $7a92: $cb $70
    ld c, h                                       ; $7a94: $4c
    ld e, e                                       ; $7a95: $5b
    db $eb                                        ; $7a96: $eb
    cp a                                          ; $7a97: $bf
    nop                                           ; $7a98: $00
    ret nc                                        ; $7a99: $d0

    sub l                                         ; $7a9a: $95
    call nc, $ba3d                                ; $7a9b: $d4 $3d $ba
    ld e, a                                       ; $7a9e: $5f
    ld sp, hl                                     ; $7a9f: $f9
    or e                                          ; $7aa0: $b3
    ei                                            ; $7aa1: $fb
    cp a                                          ; $7aa2: $bf
    inc b                                         ; $7aa3: $04
    db $e3                                        ; $7aa4: $e3
    ld e, d                                       ; $7aa5: $5a
    rst $38                                       ; $7aa6: $ff
    sub [hl]                                      ; $7aa7: $96
    and $32                                       ; $7aa8: $e6 $32
    jr jr_05a_7a83                                ; $7aaa: $18 $d7

    ld a, [$e395]                                 ; $7aac: $fa $95 $e3
    jp c, $cf0a                                   ; $7aaf: $da $0a $cf

    ld a, c                                       ; $7ab2: $79
    cp l                                          ; $7ab3: $bd
    ccf                                           ; $7ab4: $3f
    cp $02                                        ; $7ab5: $fe $02
    inc e                                         ; $7ab7: $1c
    dec [hl]                                      ; $7ab8: $35
    ld d, c                                       ; $7ab9: $51
    or [hl]                                       ; $7aba: $b6
    dec [hl]                                      ; $7abb: $35
    ld e, d                                       ; $7abc: $5a
    ld [hl], e                                    ; $7abd: $73
    add hl, de                                    ; $7abe: $19
    halt                                          ; $7abf: $76
    rrca                                          ; $7ac0: $0f
    ld l, [hl]                                    ; $7ac1: $6e
    pop af                                        ; $7ac2: $f1
    ld a, l                                       ; $7ac3: $7d
    jp c, $bf9f                                   ; $7ac4: $da $9f $bf

    ldh [$d1], a                                  ; $7ac7: $e0 $d1
    dec a                                         ; $7ac9: $3d
    cp b                                          ; $7aca: $b8
    push bc                                       ; $7acb: $c5
    ld [hl], c                                    ; $7acc: $71
    sub $d6                                       ; $7acd: $d6 $d6

Call_05a_7acf:
    ld a, a                                       ; $7acf: $7f
    db $dd                                        ; $7ad0: $dd

jr_05a_7ad1:
    ld e, e                                       ; $7ad1: $5b
    jp $e7ec                                      ; $7ad2: $c3 $ec $e7


    sub [hl]                                      ; $7ad5: $96
    and $32                                       ; $7ad6: $e6 $32
    inc e                                         ; $7ad8: $1c
    add $0d                                       ; $7ad9: $c6 $0d
    nop                                           ; $7adb: $00
    ret nc                                        ; $7adc: $d0

    dec h                                         ; $7add: $25
    inc a                                         ; $7ade: $3c
    and c                                         ; $7adf: $a1
    ld a, h                                       ; $7ae0: $7c
    db $e3                                        ; $7ae1: $e3
    sub b                                         ; $7ae2: $90
    ret nc                                        ; $7ae3: $d0

    rst $30                                       ; $7ae4: $f7
    or a                                          ; $7ae5: $b7
    ld b, [hl]                                    ; $7ae6: $46
    res 6, [hl]                                   ; $7ae7: $cb $b6
    jp hl                                         ; $7ae9: $e9


    ld [bc], a                                    ; $7aea: $02
    sbc h                                         ; $7aeb: $9c
    pop de                                        ; $7aec: $d1
    ld d, h                                       ; $7aed: $54
    dec sp                                        ; $7aee: $3b
    or a                                          ; $7aef: $b7
    add h                                         ; $7af0: $84
    ld h, a                                       ; $7af1: $67
    dec [hl]                                      ; $7af2: $35
    sub a                                         ; $7af3: $97
    ld h, c                                       ; $7af4: $61
    rst $30                                       ; $7af5: $f7
    cp b                                          ; $7af6: $b8
    call nz, $a543                                ; $7af7: $c4 $43 $a5
    ld e, b                                       ; $7afa: $58
    ld sp, hl                                     ; $7afb: $f9
    ld b, h                                       ; $7afc: $44
    ld h, [hl]                                    ; $7afd: $66
    ld e, c                                       ; $7afe: $59
    bit 6, [hl]                                   ; $7aff: $cb $76
    sbc e                                         ; $7b01: $9b
    or h                                          ; $7b02: $b4
    ld [hl], e                                    ; $7b03: $73
    adc e                                         ; $7b04: $8b
    inc d                                         ; $7b05: $14
    inc c                                         ; $7b06: $0c
    or c                                          ; $7b07: $b1
    ld l, $00                                     ; $7b08: $2e $00
    ret nc                                        ; $7b0a: $d0

    and l                                         ; $7b0b: $a5
    sbc $80                                       ; $7b0c: $de $80
    sub b                                         ; $7b0e: $90
    xor $6d                                       ; $7b0f: $ee $6d
    and d                                         ; $7b11: $a2
    jp nc, $d6bd                                  ; $7b12: $d2 $bd $d6

    ld b, h                                       ; $7b15: $44
    and l                                         ; $7b16: $a5
    cp c                                          ; $7b17: $b9
    inc c                                         ; $7b18: $0c
    rst $00                                       ; $7b19: $c7
    or h                                          ; $7b1a: $b4
    or l                                          ; $7b1b: $b5
    cp $0b                                        ; $7b1c: $fe $0b
    nop                                           ; $7b1e: $00
    ld c, $19                                     ; $7b1f: $0e $19
    ld h, $18                                     ; $7b21: $26 $18
    ld h, [hl]                                    ; $7b23: $66
    ret z                                         ; $7b24: $c8

    ld d, [hl]                                    ; $7b25: $56
    inc e                                         ; $7b26: $1c
    db $ec                                        ; $7b27: $ec
    di                                            ; $7b28: $f3
    ld d, b                                       ; $7b29: $50
    cp $ec                                        ; $7b2a: $fe $ec
    cp $2f                                        ; $7b2c: $fe $2f
    push af                                       ; $7b2e: $f5
    ld b, [hl]                                    ; $7b2f: $46
    inc de                                        ; $7b30: $13
    ld e, l                                       ; $7b31: $5d
    nop                                           ; $7b32: $00
    inc a                                         ; $7b33: $3c
    or h                                          ; $7b34: $b4
    ld a, c                                       ; $7b35: $79
    ld h, $db                                     ; $7b36: $26 $db
    ld l, l                                       ; $7b38: $6d
    ld [de], a                                    ; $7b39: $12
    db $fc                                        ; $7b3a: $fc
    jp z, $3437                                   ; $7b3b: $ca $37 $34

    sub a                                         ; $7b3e: $97
    pop hl                                        ; $7b3f: $e1
    sbc b                                         ; $7b40: $98
    ld d, $b6                                     ; $7b41: $16 $b6
    cp d                                          ; $7b43: $ba
    and e                                         ; $7b44: $a3
    ld a, [hl+]                                   ; $7b45: $2a
    call z, $96c8                                 ; $7b46: $cc $c8 $96
    dec de                                        ; $7b49: $1b
    nop                                           ; $7b4a: $00
    sbc h                                         ; $7b4b: $9c
    ld hl, $d52c                                  ; $7b4c: $21 $2c $d5
    ld l, [hl]                                    ; $7b4f: $6e
    jp hl                                         ; $7b50: $e9


    add $da                                       ; $7b51: $c6 $da
    ld a, e                                       ; $7b53: $7b
    db $f4                                        ; $7b54: $f4
    db $fc                                        ; $7b55: $fc
    or l                                          ; $7b56: $b5
    cp $a4                                        ; $7b57: $fe $a4
    and d                                         ; $7b59: $a2
    dec sp                                        ; $7b5a: $3b
    ld c, d                                       ; $7b5b: $4a
    cp l                                          ; $7b5c: $bd
    ld bc, $dd21                                  ; $7b5d: $01 $21 $dd
    ld l, e                                       ; $7b60: $6b
    ld c, l                                       ; $7b61: $4d
    ld a, [$db83]                                 ; $7b62: $fa $83 $db
    db $fd                                        ; $7b65: $fd
    ld l, e                                       ; $7b66: $6b
    ld e, e                                       ; $7b67: $5b
    rla                                           ; $7b68: $17
    nop                                           ; $7b69: $00
    sbc [hl]                                      ; $7b6a: $9e
    db $e3                                        ; $7b6b: $e3
    ld b, d                                       ; $7b6c: $42
    cp $6b                                        ; $7b6d: $fe $6b
    and d                                         ; $7b6f: $a2
    and $32                                       ; $7b70: $e6 $32
    inc e                                         ; $7b72: $1c
    ld h, $1f                                     ; $7b73: $26 $1f
    rst $10                                       ; $7b75: $d7
    ld a, [$4a1f]                                 ; $7b76: $fa $1f $4a
    ret nc                                        ; $7b79: $d0

    and l                                         ; $7b7a: $a5

jr_05a_7b7b:
    sbc $a8                                       ; $7b7b: $de $a8
    jp z, $127a                                   ; $7b7d: $ca $7a $12

    push de                                       ; $7b80: $d5
    dec b                                         ; $7b81: $05
    nop                                           ; $7b82: $00
    cp h                                          ; $7b83: $bc
    rst $18                                       ; $7b84: $df
    add [hl]                                      ; $7b85: $86
    sbc d                                         ; $7b86: $9a
    set 4, b                                      ; $7b87: $cb $e0
    or a                                          ; $7b89: $b7
    ld b, [hl]                                    ; $7b8a: $46
    db $eb                                        ; $7b8b: $eb
    cp a                                          ; $7b8c: $bf
    call nz, Call_05a_71b9                        ; $7b8d: $c4 $b9 $71
    ld c, $09                                     ; $7b90: $0e $09
    ld c, e                                       ; $7b92: $4b
    ld sp, hl                                     ; $7b93: $f9
    rst $28                                       ; $7b94: $ef
    sbc h                                         ; $7b95: $9c
    xor a                                         ; $7b96: $af
    ld a, e                                       ; $7b97: $7b
    ld l, e                                       ; $7b98: $6b
    jp nc, $b5f9                                  ; $7b99: $d2 $f9 $b5

    ld a, l                                       ; $7b9c: $7d
    and c                                         ; $7b9d: $a1
    ccf                                           ; $7b9e: $3f
    and [hl]                                      ; $7b9f: $a6
    db $ed                                        ; $7ba0: $ed
    ld e, a                                       ; $7ba1: $5f
    nop                                           ; $7ba2: $00
    ld e, $a1                                     ; $7ba3: $1e $a1
    add hl, hl                                    ; $7ba5: $29
    ld a, l                                       ; $7ba6: $7d
    ld b, $e3                                     ; $7ba7: $06 $e3
    halt                                          ; $7ba9: $76
    rst $00                                       ; $7baa: $c7
    ld e, c                                       ; $7bab: $59
    db $db                                        ; $7bac: $db
    ld d, [hl]                                    ; $7bad: $56
    cp $3b                                        ; $7bae: $fe $3b
    rst $20                                       ; $7bb0: $e7
    set 0, a                                      ; $7bb1: $cb $c7
    or l                                          ; $7bb3: $b5
    cp $fb                                        ; $7bb4: $fe $fb
    rst $08                                       ; $7bb6: $cf
    ld a, c                                       ; $7bb7: $79
    ld l, l                                       ; $7bb8: $6d
    ld e, e                                       ; $7bb9: $5b
    ret c                                         ; $7bba: $d8

    xor d                                         ; $7bbb: $aa
    ld l, b                                       ; $7bbc: $68
    ld [hl], d                                    ; $7bbd: $72
    ld sp, hl                                     ; $7bbe: $f9
    cp e                                          ; $7bbf: $bb
    ld l, h                                       ; $7bc0: $6c
    xor l                                         ; $7bc1: $ad
    xor c                                         ; $7bc2: $a9
    or $02                                        ; $7bc3: $f6 $02
    ld e, $a1                                     ; $7bc5: $1e $a1
    add hl, hl                                    ; $7bc7: $29
    ld e, d                                       ; $7bc8: $5a
    add hl, sp                                    ; $7bc9: $39
    sbc l                                         ; $7bca: $9d
    ld l, l                                       ; $7bcb: $6d
    sub d                                         ; $7bcc: $92
    db $ed                                        ; $7bcd: $ed
    ld [hl], $25                                  ; $7bce: $36 $25
    dec d                                         ; $7bd0: $15
    jp hl                                         ; $7bd1: $e9


    inc h                                         ; $7bd2: $24
    ld e, c                                       ; $7bd3: $59
    jr z, jr_05a_7b7b                             ; $7bd4: $28 $a5

    ld a, h                                       ; $7bd6: $7c
    adc c                                         ; $7bd7: $89
    or h                                          ; $7bd8: $b4
    ld l, l                                       ; $7bd9: $6d
    ld h, c                                       ; $7bda: $61
    ld c, l                                       ; $7bdb: $4d
    ld d, h                                       ; $7bdc: $54
    rla                                           ; $7bdd: $17
    nop                                           ; $7bde: $00
    sbc [hl]                                      ; $7bdf: $9e
    ld a, a                                       ; $7be0: $7f
    and l                                         ; $7be1: $a5
    ld [hl], c                                    ; $7be2: $71
    ei                                            ; $7be3: $fb
    ld e, a                                       ; $7be4: $5f
    xor e                                         ; $7be5: $ab
    ret c                                         ; $7be6: $d8

    sbc h                                         ; $7be7: $9c
    ld e, d                                       ; $7be8: $5a
    ld e, a                                       ; $7be9: $5f
    push af                                       ; $7bea: $f5
    cp d                                          ; $7beb: $ba
    or a                                          ; $7bec: $b7
    ld b, [hl]                                    ; $7bed: $46
    ld l, c                                       ; $7bee: $69
    ld l, $c3                                     ; $7bef: $2e $c3
    dec a                                         ; $7bf1: $3d
    rst $20                                       ; $7bf2: $e7
    sub e                                         ; $7bf3: $93
    add d                                         ; $7bf4: $82
    or c                                          ; $7bf5: $b1
    and e                                         ; $7bf6: $a3
    inc d                                         ; $7bf7: $14
    and l                                         ; $7bf8: $a5
    sbc $80                                       ; $7bf9: $de $80
    sub b                                         ; $7bfb: $90
    xor $6d                                       ; $7bfc: $ee $6d
    and d                                         ; $7bfe: $a2
    sub d                                         ; $7bff: $92

Call_05a_7c00:
    db $ed                                        ; $7c00: $ed
    ld [hl], $5d                                  ; $7c01: $36 $5d
    nop                                           ; $7c03: $00
    ret nc                                        ; $7c04: $d0

    sub l                                         ; $7c05: $95
    call nc, $ba3d                                ; $7c06: $d4 $3d $ba
    ld e, a                                       ; $7c09: $5f
    ld l, b                                       ; $7c0a: $68
    cp a                                          ; $7c0b: $bf
    or [hl]                                       ; $7c0c: $b6
    push hl                                       ; $7c0d: $e5
    cp a                                          ; $7c0e: $bf
    or [hl]                                       ; $7c0f: $b6
    dec l                                         ; $7c10: $2d
    sub h                                         ; $7c11: $94
    add $76                                       ; $7c12: $c6 $76
    inc de                                        ; $7c14: $13
    ld l, c                                       ; $7c15: $69
    ld l, $c3                                     ; $7c16: $2e $c3
    ld sp, $ff6d                                  ; $7c18: $31 $6d $ff
    sub d                                         ; $7c1b: $92
    rst $20                                       ; $7c1c: $e7
    sub h                                         ; $7c1d: $94
    ld d, d                                       ; $7c1e: $52
    ld c, l                                       ; $7c1f: $4d
    ld l, $e1                                     ; $7c20: $2e $e1
    ld e, c                                       ; $7c22: $59
    ld e, e                                       ; $7c23: $5b
    and l                                         ; $7c24: $a5
    ccf                                           ; $7c25: $3f
    ld l, h                                       ; $7c26: $6c
    cp $73                                        ; $7c27: $fe $73
    inc bc                                        ; $7c29: $03
    cp h                                          ; $7c2a: $bc
    sbc c                                         ; $7c2b: $99
    ld h, l                                       ; $7c2c: $65
    sbc d                                         ; $7c2d: $9a
    set 4, b                                      ; $7c2e: $cb $e0
    or a                                          ; $7c30: $b7
    ld b, [hl]                                    ; $7c31: $46
    db $eb                                        ; $7c32: $eb
    rst $10                                       ; $7c33: $d7
    db $fd                                        ; $7c34: $fd
    db $fd                                        ; $7c35: $fd
    rst $30                                       ; $7c36: $f7
    jp z, $db21                                   ; $7c37: $ca $21 $db

    ld [hl], e                                    ; $7c3a: $73
    or $34                                        ; $7c3b: $f6 $34
    ld e, l                                       ; $7c3d: $5d
    ld [c], a                                     ; $7c3e: $e2
    and c                                         ; $7c3f: $a1
    jp nc, $cecc                                  ; $7c40: $d2 $cc $ce

    ld hl, $8c55                                  ; $7c43: $21 $55 $8c
    inc e                                         ; $7c46: $1c
    ld d, c                                       ; $7c47: $51
    or [hl]                                       ; $7c48: $b6
    dec [hl]                                      ; $7c49: $35
    cp $02                                        ; $7c4a: $fe $02
    sbc [hl]                                      ; $7c4c: $9e
    ld a, a                                       ; $7c4d: $7f
    and l                                         ; $7c4e: $a5
    ld [hl], c                                    ; $7c4f: $71
    ei                                            ; $7c50: $fb
    ld e, a                                       ; $7c51: $5f
    dec hl                                        ; $7c52: $2b
    ei                                            ; $7c53: $fb
    jp nz, $bfcd                                  ; $7c54: $c2 $cd $bf

    push af                                       ; $7c57: $f5
    ld e, e                                       ; $7c58: $5b
    sbc a                                         ; $7c59: $9f
    ld d, h                                       ; $7c5a: $54
    ld [hl], h                                    ; $7c5b: $74
    sub e                                         ; $7c5c: $93
    xor $2d                                       ; $7c5d: $ee $2d
    ld [de], a                                    ; $7c5f: $12
    sbc [hl]                                      ; $7c60: $9e
    dec l                                         ; $7c61: $2d
    pop hl                                        ; $7c62: $e1
    adc $78                                       ; $7c63: $ce $78
    call $3865                                    ; $7c65: $cd $65 $38
    db $ec                                        ; $7c68: $ec
    ld [de], a                                    ; $7c69: $12
    ld c, a                                       ; $7c6a: $4f
    ret z                                         ; $7c6b: $c8

    rst $00                                       ; $7c6c: $c7
    or l                                          ; $7c6d: $b5
    sbc $fc                                       ; $7c6e: $de $fc
    ld e, e                                       ; $7c70: $5b
    rst $30                                       ; $7c71: $f7
    sub $68                                       ; $7c72: $d6 $68
    dec e                                         ; $7c74: $1d
    ld c, d                                       ; $7c75: $4a
    and e                                         ; $7c76: $a3
    sbc e                                         ; $7c77: $9b
    ld l, [hl]                                    ; $7c78: $6e
    ld a, [hl-]                                   ; $7c79: $3a
    add a                                         ; $7c7a: $87
    call nc, Call_000_1554                        ; $7c7b: $d4 $54 $15
    rla                                           ; $7c7e: $17
    nop                                           ; $7c7f: $00
    ret nc                                        ; $7c80: $d0

    sub l                                         ; $7c81: $95
    call nc, Call_05a_45bd                        ; $7c82: $d4 $bd $45
    ld [hl], e                                    ; $7c85: $73
    ld c, e                                       ; $7c86: $4b
    ld a, b                                       ; $7c87: $78
    and d                                         ; $7c88: $a2
    sub h                                         ; $7c89: $94
    cp a                                          ; $7c8a: $bf
    push af                                       ; $7c8b: $f5
    dec hl                                        ; $7c8c: $2b
    and $9f                                       ; $7c8d: $e6 $9f
    di                                            ; $7c8f: $f3
    ld a, [hl-]                                   ; $7c90: $3a
    inc bc                                        ; $7c91: $03
    rst $20                                       ; $7c92: $e7
    sbc a                                         ; $7c93: $9f
    di                                            ; $7c94: $f3
    rla                                           ; $7c95: $17
    nop                                           ; $7c96: $00
    sbc h                                         ; $7c97: $9c
    db $db                                        ; $7c98: $db
    inc h                                         ; $7c99: $24
    inc l                                         ; $7c9a: $2c
    push hl                                       ; $7c9b: $e5
    rst $08                                       ; $7c9c: $cf
    xor $ff                                       ; $7c9d: $ee $ff
    sub d                                         ; $7c9f: $92
    ld h, l                                       ; $7ca0: $65
    ld e, c                                       ; $7ca1: $59
    sub e                                         ; $7ca2: $93
    ret nc                                        ; $7ca3: $d0

Jump_05a_7ca4:
    adc a                                         ; $7ca4: $8f
    adc [hl]                                      ; $7ca5: $8e
    ld [hl], e                                    ; $7ca6: $73
    cp $02                                        ; $7ca7: $fe $02
    ret nc                                        ; $7ca9: $d0

    rst $30                                       ; $7caa: $f7
    dec e                                         ; $7cab: $1d
    jp nz, $ca13                                  ; $7cac: $c2 $13 $ca

    scf                                           ; $7caf: $37
    ld c, $c9                                     ; $7cb0: $0e $c9
    daa                                           ; $7cb2: $27
    ld [hl-], a                                   ; $7cb3: $32
    adc e                                         ; $7cb4: $8b
    ld l, b                                       ; $7cb5: $68
    reti                                          ; $7cb6: $d9


jr_05a_7cb7:
    ld d, [hl]                                    ; $7cb7: $56
    add l                                         ; $7cb8: $85
    sbc $7a                                       ; $7cb9: $de $7a
    cpl                                           ; $7cbb: $2f
    nop                                           ; $7cbc: $00
    ld a, h                                       ; $7cbd: $7c
    db $db                                        ; $7cbe: $db
    inc h                                         ; $7cbf: $24
    db $db                                        ; $7cc0: $db
    ld a, [de]                                    ; $7cc1: $1a
    rst $20                                       ; $7cc2: $e7
    cp h                                          ; $7cc3: $bc
    ld l, h                                       ; $7cc4: $6c
    or a                                          ; $7cc5: $b7
    ld c, b                                       ; $7cc6: $48
    ld e, b                                       ; $7cc7: $58
    ld c, c                                       ; $7cc8: $49
    add hl, sp                                    ; $7cc9: $39
    adc b                                         ; $7cca: $88
    ld a, h                                       ; $7ccb: $7c
    rst $08                                       ; $7ccc: $cf
    add hl, bc                                    ; $7ccd: $09
    jr z, jr_05a_7cd0                             ; $7cce: $28 $00

jr_05a_7cd0:
    ld a, h                                       ; $7cd0: $7c
    ld h, e                                       ; $7cd1: $63
    xor l                                         ; $7cd2: $ad
    rst $10                                       ; $7cd3: $d7
    rst $38                                       ; $7cd4: $ff
    ld [hl], e                                    ; $7cd5: $73
    jr nc, jr_05a_7d01                            ; $7cd6: $30 $29

    jr jr_05a_7d45                                ; $7cd8: $18 $6b

    cp [hl]                                       ; $7cda: $be
    sub $90                                       ; $7cdb: $d6 $90
    or [hl]                                       ; $7cdd: $b6
    or a                                          ; $7cde: $b7
    ld d, [hl]                                    ; $7cdf: $56
    add a                                         ; $7ce0: $87
    jp nc, Jump_05a_5ee8                          ; $7ce1: $d2 $e8 $5e

    db $dd                                        ; $7ce4: $dd
    ld e, e                                       ; $7ce5: $5b
    db $e3                                        ; $7ce6: $e3
    sbc h                                         ; $7ce7: $9c
    cp b                                          ; $7ce8: $b8
    call nz, Call_05a_45b7                        ; $7ce9: $c4 $b7 $45
    sbc d                                         ; $7cec: $9a
    and e                                         ; $7ced: $a3
    inc [hl]                                      ; $7cee: $34
    ld a, [bc]                                    ; $7cef: $0a
    db $d3                                        ; $7cf0: $d3
    adc [hl]                                      ; $7cf1: $8e
    inc de                                        ; $7cf2: $13
    and l                                         ; $7cf3: $a5
    rst $18                                       ; $7cf4: $df
    ld a, d                                       ; $7cf5: $7a
    call Call_000_19df                            ; $7cf6: $cd $df $19
    ld [hl], l                                    ; $7cf9: $75
    ld a, [hl]                                    ; $7cfa: $7e
    xor l                                         ; $7cfb: $ad
    rst $38                                       ; $7cfc: $ff
    ld [bc], a                                    ; $7cfd: $02
    inc a                                         ; $7cfe: $3c
    inc bc                                        ; $7cff: $03
    rst $28                                       ; $7d00: $ef

jr_05a_7d01:
    ld b, l                                       ; $7d01: $45
    ld l, [hl]                                    ; $7d02: $6e
    pop af                                        ; $7d03: $f1
    cp $ce                                        ; $7d04: $fe $ce
    cp c                                          ; $7d06: $b9
    or d                                          ; $7d07: $b2
    ld e, b                                       ; $7d08: $58
    jp $bffb                                      ; $7d09: $c3 $fb $bf


    ld [hl], h                                    ; $7d0c: $74
    add $80                                       ; $7d0d: $c6 $80
    ld a, h                                       ; $7d0f: $7c
    push hl                                       ; $7d10: $e5
    rst $08                                       ; $7d11: $cf
    ld e, b                                       ; $7d12: $58
    sub h                                         ; $7d13: $94
    ld a, [c]                                     ; $7d14: $f2
    dec c                                         ; $7d15: $0d
    ld d, $51                                     ; $7d16: $16 $51
    call c, Call_000_1c00                         ; $7d18: $dc $00 $1c
    db $dd                                        ; $7d1b: $dd
    ccf                                           ; $7d1c: $3f
    rst $38                                       ; $7d1d: $ff
    ld [hl], l                                    ; $7d1e: $75
    add $80                                       ; $7d1f: $c6 $80
    cp h                                          ; $7d21: $bc
    push af                                       ; $7d22: $f5
    ld l, e                                       ; $7d23: $6b
    xor $56                                       ; $7d24: $ee $56
    xor l                                         ; $7d26: $ad

jr_05a_7d27:
    ld [hl], b                                    ; $7d27: $70
    ld h, a                                       ; $7d28: $67
    db $fc                                        ; $7d29: $fc
    add hl, sp                                    ; $7d2a: $39
    xor a                                         ; $7d2b: $af
    ld c, c                                       ; $7d2c: $49
    sub b                                         ; $7d2d: $90
    jr c, jr_05a_7cb7                             ; $7d2e: $38 $87

    inc b                                         ; $7d30: $04
    cp a                                          ; $7d31: $bf
    db $ec                                        ; $7d32: $ec
    dec bc                                        ; $7d33: $0b
    rst $20                                       ; $7d34: $e7
    cp a                                          ; $7d35: $bf
    sbc h                                         ; $7d36: $9c
    ret z                                         ; $7d37: $c8

    ld c, $97                                     ; $7d38: $0e $97
    ld [hl], c                                    ; $7d3a: $71
    dec sp                                        ; $7d3b: $3b
    ld bc, $5e00                                  ; $7d3c: $01 $00 $5e
    dec e                                         ; $7d3f: $1d
    ld l, $e3                                     ; $7d40: $2e $e3
    ld b, $5e                                     ; $7d42: $06 $5e
    dec e                                         ; $7d44: $1d

jr_05a_7d45:
    ld l, $e3                                     ; $7d45: $2e $e3
    ld b, $5e                                     ; $7d47: $06 $5e
    dec e                                         ; $7d49: $1d
    ld l, $e3                                     ; $7d4a: $2e $e3
    ld b, $fc                                     ; $7d4c: $06 $fc
    ccf                                           ; $7d4e: $3f
    ld a, a                                       ; $7d4f: $7f
    ld l, l                                       ; $7d50: $6d
    dec hl                                        ; $7d51: $2b

Jump_05a_7d52:
    add hl, hl                                    ; $7d52: $29
    rra                                           ; $7d53: $1f
    ld [hl], a                                    ; $7d54: $77
    ld a, $37                                     ; $7d55: $3e $37
    nop                                           ; $7d57: $00
    ld l, [hl]                                    ; $7d58: $6e
    cpl                                           ; $7d59: $2f
    db $fc                                        ; $7d5a: $fc
    dec bc                                        ; $7d5b: $0b

jr_05a_7d5c:
    rst $38                                       ; $7d5c: $ff
    ld e, [hl]                                    ; $7d5d: $5e
    rst $10                                       ; $7d5e: $d7
    ld [hl], l                                    ; $7d5f: $75
    ld e, l                                       ; $7d60: $5d
    nop                                           ; $7d61: $00
    sbc [hl]                                      ; $7d62: $9e
    ld a, [hl]                                    ; $7d63: $7e
    ld d, l                                       ; $7d64: $55
    xor b                                         ; $7d65: $a8
    ld a, a                                       ; $7d66: $7f
    ei                                            ; $7d67: $fb
    ld e, a                                       ; $7d68: $5f
    ld a, b                                       ; $7d69: $78
    adc $eb                                       ; $7d6a: $ce $eb
    ld e, $ac                                     ; $7d6c: $1e $ac
    ld b, a                                       ; $7d6e: $47
    adc l                                         ; $7d6f: $8d
    cp [hl]                                       ; $7d70: $be
    db $e4                                        ; $7d71: $e4
    jr nc, jr_05a_7d27                            ; $7d72: $30 $b3

    ld l, h                                       ; $7d74: $6c
    ld [de], a                                    ; $7d75: $12
    ret                                           ; $7d76: $c9


    rst $38                                       ; $7d77: $ff
    sbc l                                         ; $7d78: $9d
    ld a, a                                       ; $7d79: $7f
    adc $57                                       ; $7d7a: $ce $57
    add l                                         ; $7d7c: $85
    ld l, h                                       ; $7d7d: $6c
    rst $08                                       ; $7d7e: $cf
    ld hl, $74e5                                  ; $7d7f: $21 $e5 $74
    or [hl]                                       ; $7d82: $b6
    sub d                                         ; $7d83: $92
    sbc d                                         ; $7d84: $9a
    and e                                         ; $7d85: $a3
    sub h                                         ; $7d86: $94
    ld l, a                                       ; $7d87: $6f
    sub h                                         ; $7d88: $94
    sbc d                                         ; $7d89: $9a
    ld l, [hl]                                    ; $7d8a: $6e

jr_05a_7d8b:
    ld a, [hl+]                                   ; $7d8b: $2a
    ld sp, hl                                     ; $7d8c: $f9
    ld [$c97f], sp                                ; $7d8d: $08 $7f $c9
    ld a, [hl]                                    ; $7d90: $7e
    reti                                          ; $7d91: $d9


    rst $38                                       ; $7d92: $ff
    ld sp, hl                                     ; $7d93: $f9
    xor a                                         ; $7d94: $af
    ld c, e                                       ; $7d95: $4b
    ret nc                                        ; $7d96: $d0

    dec sp                                        ; $7d97: $3b
    ld c, c                                       ; $7d98: $49
    daa                                           ; $7d99: $27
    xor d                                         ; $7d9a: $aa
    and d                                         ; $7d9b: $a2
    adc c                                         ; $7d9c: $89
    dec de                                        ; $7d9d: $1b
    nop                                           ; $7d9e: $00
    inc a                                         ; $7d9f: $3c
    sbc a                                         ; $7da0: $9f
    ld a, [hl+]                                   ; $7da1: $2a
    db $fd                                        ; $7da2: $fd
    ld d, h                                       ; $7da3: $54
    jp hl                                         ; $7da4: $e9


    and a                                         ; $7da5: $a7
    call c, $38e2                                 ; $7da6: $dc $e2 $38
    ld l, e                                       ; $7da9: $6b
    db $db                                        ; $7daa: $db
    cp $ab                                        ; $7dab: $fe $ab
    jr z, jr_05a_7d5c                             ; $7dad: $28 $ad

    xor h                                         ; $7daf: $ac
    sub l                                         ; $7db0: $95
    ld d, d                                       ; $7db1: $52
    ld b, l                                       ; $7db2: $45
    xor c                                         ; $7db3: $a9
    cp $ef                                        ; $7db4: $fe $ef
    cpl                                           ; $7db6: $2f
    ei                                            ; $7db7: $fb
    and h                                         ; $7db8: $a4
    and $28                                       ; $7db9: $e6 $28
    and l                                         ; $7dbb: $a5
    ld d, h                                       ; $7dbc: $54
    cp d                                          ; $7dbd: $ba
    xor c                                         ; $7dbe: $a9
    daa                                           ; $7dbf: $27
    and l                                         ; $7dc0: $a5
    cp l                                          ; $7dc1: $bd
    cp d                                          ; $7dc2: $ba
    rst $38                                       ; $7dc3: $ff
    db $d3                                        ; $7dc4: $d3
    cpl                                           ; $7dc5: $2f
    ld l, [hl]                                    ; $7dc6: $6e
    nop                                           ; $7dc7: $00
    inc e                                         ; $7dc8: $1c
    daa                                           ; $7dc9: $27
    sub h                                         ; $7dca: $94
    xor $81                                       ; $7dcb: $ee $81
    rst $38                                       ; $7dcd: $ff
    sub e                                         ; $7dce: $93
    ld [c], a                                     ; $7dcf: $e2
    ei                                            ; $7dd0: $fb
    sub e                                         ; $7dd1: $93
    jr nz, jr_05a_7e3a                            ; $7dd2: $20 $66

    call c, Call_05a_7c00                         ; $7dd4: $dc $00 $7c
    dec sp                                        ; $7dd7: $3b
    ld c, c                                       ; $7dd8: $49
    ld c, l                                       ; $7dd9: $4d
    scf                                           ; $7dda: $37
    add hl, bc                                    ; $7ddb: $09
    dec bc                                        ; $7ddc: $0b
    ld a, [bc]                                    ; $7ddd: $0a
    nop                                           ; $7dde: $00
    sbc h                                         ; $7ddf: $9c
    ld hl, $592c                                  ; $7de0: $21 $2c $59
    xor b                                         ; $7de3: $a8
    or e                                          ; $7de4: $b3
    db $f4                                        ; $7de5: $f4
    ld h, $c1                                     ; $7de6: $26 $c1
    and e                                         ; $7de8: $a3
    ld a, e                                       ; $7de9: $7b
    inc h                                         ; $7dea: $24
    dec b                                         ; $7deb: $05
    ld h, e                                       ; $7dec: $63
    call $c797                                    ; $7ded: $cd $97 $c7
    ld e, b                                       ; $7df0: $58
    add hl, bc                                    ; $7df1: $09
    ld a, c                                       ; $7df2: $79
    adc a                                         ; $7df3: $8f
    db $dd                                        ; $7df4: $dd
    ld a, b                                       ; $7df5: $78
    ld l, a                                       ; $7df6: $6f

jr_05a_7df7:
    ld l, c                                       ; $7df7: $69
    dec c                                         ; $7df8: $0d
    ld l, c                                       ; $7df9: $69
    ld a, e                                       ; $7dfa: $7b
    ld [hl], l                                    ; $7dfb: $75
    jr z, jr_05a_7d8b                             ; $7dfc: $28 $8d

    xor $55                                       ; $7dfe: $ee $55
    ld c, d                                       ; $7e00: $4a
    dec d                                         ; $7e01: $15
    rst $20                                       ; $7e02: $e7
    call nz, Call_000_0005                        ; $7e03: $c4 $05 $00
    sbc h                                         ; $7e06: $9c
    ld hl, $392c                                  ; $7e07: $21 $2c $39
    adc b                                         ; $7e0a: $88
    ld a, h                                       ; $7e0b: $7c
    rst $08                                       ; $7e0c: $cf
    adc c                                         ; $7e0d: $89
    jp nc, $d63d                                  ; $7e0e: $d2 $3d $d6

    ld a, d                                       ; $7e11: $7a
    db $fd                                        ; $7e12: $fd
    ccf                                           ; $7e13: $3f
    rlca                                          ; $7e14: $07
    cp c                                          ; $7e15: $b9
    push hl                                       ; $7e16: $e5
    halt                                          ; $7e17: $76
    push de                                       ; $7e18: $d5
    bit 0, d                                      ; $7e19: $cb $42
    db $fd                                        ; $7e1b: $fd
    di                                            ; $7e1c: $f3
    rst $10                                       ; $7e1d: $d7
    or [hl]                                       ; $7e1e: $b6
    cp b                                          ; $7e1f: $b8
    ld bc, $e3fc                                  ; $7e20: $01 $fc $e3
    add h                                         ; $7e23: $84
    jp nc, Jump_05a_719f                          ; $7e24: $d2 $9f $71

    rst $38                                       ; $7e27: $ff
    ld d, a                                       ; $7e28: $57
    ld d, d                                       ; $7e29: $52
    ld c, $b1                                     ; $7e2a: $0e $b1
    dec sp                                        ; $7e2c: $3b
    jr jr_05a_7e66                                ; $7e2d: $18 $37

    nop                                           ; $7e2f: $00
    inc a                                         ; $7e30: $3c
    ld e, c                                       ; $7e31: $59
    ld c, [hl]                                    ; $7e32: $4e
    ld c, c                                       ; $7e33: $49
    pop af                                        ; $7e34: $f1
    inc a                                         ; $7e35: $3c
    ld h, e                                       ; $7e36: $63
    add hl, de                                    ; $7e37: $19
    scf                                           ; $7e38: $37
    nop                                           ; $7e39: $00

jr_05a_7e3a:
    inc a                                         ; $7e3a: $3c
    rst $08                                       ; $7e3b: $cf
    ld e, b                                       ; $7e3c: $58
    sub [hl]                                      ; $7e3d: $96
    ld d, h                                       ; $7e3e: $54
    rrca                                          ; $7e3f: $0f
    or h                                          ; $7e40: $b4
    ld a, [hl]                                    ; $7e41: $7e
    pop hl                                        ; $7e42: $e1
    ld e, c                                       ; $7e43: $59
    ld e, e                                       ; $7e44: $5b
    push hl                                       ; $7e45: $e5
    cp b                                          ; $7e46: $b8
    dec [hl]                                      ; $7e47: $35
    ld e, d                                       ; $7e48: $5a
    dec a                                         ; $7e49: $3d
    adc $79                                       ; $7e4a: $ce $79
    reti                                          ; $7e4c: $d9


    rla                                           ; $7e4d: $17
    sbc $6b                                       ; $7e4e: $de $6b
    db $fd                                        ; $7e50: $fd
    call c, $0e00                                 ; $7e51: $dc $00 $0e
    ld [hl+], a                                   ; $7e54: $22
    rst $18                                       ; $7e55: $df
    ld [hl], e                                    ; $7e56: $73
    add d                                         ; $7e57: $82
    ld e, e                                       ; $7e58: $5b
    inc e                                         ; $7e59: $1c
    daa                                           ; $7e5a: $27
    ld a, d                                       ; $7e5b: $7a
    and d                                         ; $7e5c: $a2
    and $a8                                       ; $7e5d: $e6 $a8
    ld b, d                                       ; $7e5f: $42
    or e                                          ; $7e60: $b3
    add a                                         ; $7e61: $87
    ld [bc], a                                    ; $7e62: $02
    ld a, h                                       ; $7e63: $7c
    rst $18                                       ; $7e64: $df
    ld a, a                                       ; $7e65: $7f

jr_05a_7e66:
    xor a                                         ; $7e66: $af
    inc e                                         ; $7e67: $1c
    ld [c], a                                     ; $7e68: $e2
    sbc l                                         ; $7e69: $9d

Call_05a_7e6a:
    jr nz, jr_05a_7df7                            ; $7e6a: $20 $8b

    ld c, h                                       ; $7e6c: $4c
    cp $b3                                        ; $7e6d: $fe $b3
    cpl                                           ; $7e6f: $2f
    ld e, e                                       ; $7e70: $5b
    db $dd                                        ; $7e71: $dd
    ld e, e                                       ; $7e72: $5b
    and e                                         ; $7e73: $a3
    ld h, l                                       ; $7e74: $65
    cp a                                          ; $7e75: $bf
    db $ec                                        ; $7e76: $ec
    rst $38                                       ; $7e77: $ff
    cp h                                          ; $7e78: $bc
    db $ed                                        ; $7e79: $ed
    and $61                                       ; $7e7a: $e6 $61
    ld b, [hl]                                    ; $7e7c: $46
    rla                                           ; $7e7d: $17
    nop                                           ; $7e7e: $00
    cp h                                          ; $7e7f: $bc
    rst $18                                       ; $7e80: $df
    ld d, $67                                     ; $7e81: $16 $67
    ld c, e                                       ; $7e83: $4b
    cp $46                                        ; $7e84: $fe $46
    dec [hl]                                      ; $7e86: $35
    ret                                           ; $7e87: $c9


    ld h, d                                       ; $7e88: $62
    rst $20                                       ; $7e89: $e7
    db $fc                                        ; $7e8a: $fc
    dec a                                         ; $7e8b: $3d
    db $e3                                        ; $7e8c: $e3
    ld l, l                                       ; $7e8d: $6d
    sub e                                         ; $7e8e: $93
    ld [c], a                                     ; $7e8f: $e2
    ld a, c                                       ; $7e90: $79
    add $32                                       ; $7e91: $c6 $32
    add hl, sp                                    ; $7e93: $39
    call nz, Call_05a_60ee                        ; $7e94: $c4 $ee $60
    rla                                           ; $7e97: $17
    nop                                           ; $7e98: $00
    sbc $70                                       ; $7e99: $de $70
    ld e, l                                       ; $7e9b: $5d
    rst $10                                       ; $7e9c: $d7
    ld d, l                                       ; $7e9d: $55
    cp e                                          ; $7e9e: $bb
    ld [hl], l                                    ; $7e9f: $75
    ld e, l                                       ; $7ea0: $5d
    sub a                                         ; $7ea1: $97
    db $ed                                        ; $7ea2: $ed
    sbc d                                         ; $7ea3: $9a
    ld l, h                                       ; $7ea4: $6c
    sbc e                                         ; $7ea5: $9b
    xor [hl]                                      ; $7ea6: $ae
    db $eb                                        ; $7ea7: $eb
    ld [bc], a                                    ; $7ea8: $02
    ret nc                                        ; $7ea9: $d0

    ld h, l                                       ; $7eaa: $65
    dec sp                                        ; $7eab: $3b
    ld l, l                                       ; $7eac: $6d
    rst $20                                       ; $7ead: $e7
    ld d, [hl]                                    ; $7eae: $56
    ld d, d                                       ; $7eaf: $52
    ld [hl], h                                    ; $7eb0: $74
    ld c, b                                       ; $7eb1: $48
    dec e                                         ; $7eb2: $1d
    ld hl, $26db                                  ; $7eb3: $21 $db $26
    ld b, l                                       ; $7eb6: $45
    ld de, $0c69                                  ; $7eb7: $11 $69 $0c
    ld c, b                                       ; $7eba: $48
    ld e, b                                       ; $7ebb: $58
    rst $38                                       ; $7ebc: $ff
    rst $10                                       ; $7ebd: $d7
    dec h                                         ; $7ebe: $25

Jump_05a_7ebf:
    adc a                                         ; $7ebf: $8f
    ld b, [hl]                                    ; $7ec0: $46
    rst $00                                       ; $7ec1: $c7
    add hl, sp                                    ; $7ec2: $39
    rst $38                                       ; $7ec3: $ff
    and l                                         ; $7ec4: $a5
    or e                                          ; $7ec5: $b3
    ld b, [hl]                                    ; $7ec6: $46
    and h                                         ; $7ec7: $a4
    dec sp                                        ; $7ec8: $3b
    db $e3                                        ; $7ec9: $e3
    ld c, d                                       ; $7eca: $4a
    db $e3                                        ; $7ecb: $e3
    cp [hl]                                       ; $7ecc: $be
    or a                                          ; $7ecd: $b7
    ld l, $f1                                     ; $7ece: $2e $f1
    adc a                                         ; $7ed0: $8f
    ld [$9615], a                                 ; $7ed1: $ea $15 $96
    ld a, h                                       ; $7ed4: $7c
    and d                                         ; $7ed5: $a2
    xor $ac                                       ; $7ed6: $ee $ac
    or d                                          ; $7ed8: $b2
    cp [hl]                                       ; $7ed9: $be
    nop                                           ; $7eda: $00
    inc a                                         ; $7edb: $3c
    or c                                          ; $7edc: $b1
    ld c, c                                       ; $7edd: $49
    ld a, c                                       ; $7ede: $79
    adc d                                         ; $7edf: $8a
    ld [hl], l                                    ; $7ee0: $75
    ld bc, $cd0e                                  ; $7ee1: $01 $0e $cd
    ld a, [$2eba]                                 ; $7ee4: $fa $ba $2e
    push bc                                       ; $7ee7: $c5
    ld l, d                                       ; $7ee8: $6a
    ld a, [hl]                                    ; $7ee9: $7e
    push de                                       ; $7eea: $d5
    rst $30                                       ; $7eeb: $f7
    ld l, e                                       ; $7eec: $6b
    xor l                                         ; $7eed: $ad
    rst $00                                       ; $7eee: $c7
    adc e                                         ; $7eef: $8b
    daa                                           ; $7ef0: $27
    ret c                                         ; $7ef1: $d8

    cp l                                          ; $7ef2: $bd
    ld e, b                                       ; $7ef3: $58
    and c                                         ; $7ef4: $a1
    ld a, h                                       ; $7ef5: $7c
    add e                                         ; $7ef6: $83
    add l                                         ; $7ef7: $85
    add hl, de                                    ; $7ef8: $19
    dec h                                         ; $7ef9: $25
    sub l                                         ; $7efa: $95
    ld d, d                                       ; $7efb: $52
    add hl, bc                                    ; $7efc: $09
    ld c, e                                       ; $7efd: $4b
    db $fd                                        ; $7efe: $fd
    ld l, a                                       ; $7eff: $6f
    ld [$a68d], a                                 ; $7f00: $ea $8d $a6
    ld a, h                                       ; $7f03: $7c
    adc e                                         ; $7f04: $8b
    xor b                                         ; $7f05: $a8
    inc [hl]                                      ; $7f06: $34
    ld a, a                                       ; $7f07: $7f
    ld h, a                                       ; $7f08: $67
    sub h                                         ; $7f09: $94
    and $ef                                       ; $7f0a: $e6 $ef
    inc c                                         ; $7f0c: $0c
    db $eb                                        ; $7f0d: $eb
    cp a                                          ; $7f0e: $bf
    nop                                           ; $7f0f: $00
    ret nc                                        ; $7f10: $d0

    xor e                                         ; $7f11: $ab
    ld sp, hl                                     ; $7f12: $f9
    xor e                                         ; $7f13: $ab
    cp $37                                        ; $7f14: $fe $37
    jr z, jr_05a_7f18                             ; $7f16: $28 $00

jr_05a_7f18:
    inc a                                         ; $7f18: $3c
    rst $08                                       ; $7f19: $cf
    ld e, b                                       ; $7f1a: $58
    sub [hl]                                      ; $7f1b: $96
    call nc, Call_000_0f5a                        ; $7f1c: $d4 $5a $0f
    db $dd                                        ; $7f1f: $dd
    ld e, e                                       ; $7f20: $5b

Jump_05a_7f21:
    and e                                         ; $7f21: $a3
    sub h                                         ; $7f22: $94
    ld l, a                                       ; $7f23: $6f
    or b                                          ; $7f24: $b0
    adc b                                         ; $7f25: $88
    jp c, $fc4b                                   ; $7f26: $da $4b $fc

    dec de                                        ; $7f29: $1b
    db $10                                        ; $7f2a: $10
    ld a, [hl+]                                   ; $7f2b: $2a
    call Call_000_19df                            ; $7f2c: $cd $df $19
    and l                                         ; $7f2f: $a5
    ei                                            ; $7f30: $fb
    ld d, e                                       ; $7f31: $53
    ld [$b39e], sp                                ; $7f32: $08 $9e $b3
    ld d, $a5                                     ; $7f35: $16 $a5
    adc h                                         ; $7f37: $8c
    ld [hl], l                                    ; $7f38: $75
    xor h                                         ; $7f39: $ac
    dec [hl]                                      ; $7f3a: $35
    ld e, l                                       ; $7f3b: $5d
    nop                                           ; $7f3c: $00
    ld a, h                                       ; $7f3d: $7c
    ld d, c                                       ; $7f3e: $51

Call_05a_7f3f:
    sub e                                         ; $7f3f: $93
    ret z                                         ; $7f40: $c8

    daa                                           ; $7f41: $27
    xor l                                         ; $7f42: $ad
    push af                                       ; $7f43: $f5
    cp b                                          ; $7f44: $b8
    rst $38                                       ; $7f45: $ff
    dec hl                                        ; $7f46: $2b
    add hl, hl                                    ; $7f47: $29
    db $f4                                        ; $7f48: $f4
    db $fd                                        ; $7f49: $fd
    dec a                                         ; $7f4a: $3d
    rst $38                                       ; $7f4b: $ff
    ld a, l                                       ; $7f4c: $7d
    ld bc, $233c                                  ; $7f4d: $01 $3c $23
    ld c, l                                       ; $7f50: $4d
    jp z, Jump_05a_7842                           ; $7f51: $ca $42 $78

    ld d, [hl]                                    ; $7f54: $56
    add a                                         ; $7f55: $87
    jp nc, $8738                                  ; $7f56: $d2 $38 $87

    ld l, $00                                     ; $7f59: $2e $00
    ret nc                                        ; $7f5b: $d0

    ld h, l                                       ; $7f5c: $65
    ld a, e                                       ; $7f5d: $7b
    rst $18                                       ; $7f5e: $df
    or h                                          ; $7f5f: $b4
    ld d, $e7                                     ; $7f60: $16 $e7
    sub b                                         ; $7f62: $90
    ld [hl-], a                                   ; $7f63: $32
    sub $bd                                       ; $7f64: $d6 $bd
    cp l                                          ; $7f66: $bd
    ld bc, $52c1                                  ; $7f67: $01 $c1 $52
    adc a                                         ; $7f6a: $8f
    xor d                                         ; $7f6b: $aa
    dec a                                         ; $7f6c: $3d
    rst $20                                       ; $7f6d: $e7
    add l                                         ; $7f6e: $85
    ld a, [hl]                                    ; $7f6f: $7e
    ld [hl], h                                    ; $7f70: $74
    rst $00                                       ; $7f71: $c7
    adc c                                         ; $7f72: $89
    ei                                            ; $7f73: $fb
    ld c, $f5                                     ; $7f74: $0e $f5
    xor b                                         ; $7f76: $a8
    ld e, d                                       ; $7f77: $5a
    db $eb                                        ; $7f78: $eb
    cp a                                          ; $7f79: $bf
    rst $38                                       ; $7f7a: $ff
    ld c, e                                       ; $7f7b: $4b
    pop bc                                        ; $7f7c: $c1
    or $fc                                        ; $7f7d: $f6 $fc

Jump_05a_7f7f:
    db $da, $be, $32                              ; $7f7f: $da $be $32

    sub $1d                                       ; $7f82: $d6 $1d
    jr nc, jr_05a_7fe3                            ; $7f84: $30 $5d

    ld [hl], d                                    ; $7f86: $72
    or b                                          ; $7f87: $b0
    db $db                                        ; $7f88: $db
    and h                                         ; $7f89: $a4
    ld c, c                                       ; $7f8a: $49
    ld e, c                                       ; $7f8b: $59
    ld b, a                                       ; $7f8c: $47
    inc de                                        ; $7f8d: $13
    sub l                                         ; $7f8e: $95
    ld a, [$3e77]                                 ; $7f8f: $fa $77 $3e
    inc a                                         ; $7f92: $3c
    ldh a, [$de]                                  ; $7f93: $f0 $de
    jr z, @-$01                                   ; $7f95: $28 $fd

    ld d, [hl]                                    ; $7f97: $56
    ld c, h                                       ; $7f98: $4c
    db $db                                        ; $7f99: $db
    ld a, [$60a4]                                 ; $7f9a: $fa $a4 $60
    db $ec                                        ; $7f9d: $ec
    jr z, @+$63                                   ; $7f9e: $28 $61

    add hl, hl                                    ; $7fa0: $29
    ld d, d                                       ; $7fa1: $52
    ld [$e376], sp                                ; $7fa2: $08 $76 $e3
    db $fd                                        ; $7fa5: $fd
    and l                                         ; $7fa6: $a5
    ld h, $36                                     ; $7fa7: $26 $36
    add e                                         ; $7fa9: $83
    ld c, b                                       ; $7faa: $48
    ld l, b                                       ; $7fab: $68
    rst $18                                       ; $7fac: $df
    xor a                                         ; $7fad: $af
    ld h, b                                       ; $7fae: $60
    ret c                                         ; $7faf: $d8

    db $fd                                        ; $7fb0: $fd
    xor a                                         ; $7fb1: $af
    ld a, [bc]                                    ; $7fb2: $0a
    dec [hl]                                      ; $7fb3: $35
    xor [hl]                                      ; $7fb4: $ae
    xor l                                         ; $7fb5: $ad
    push af                                       ; $7fb6: $f5
    ld a, a                                       ; $7fb7: $7f
    ld e, l                                       ; $7fb8: $5d
    nop                                           ; $7fb9: $00
    ld a, h                                       ; $7fba: $7c
    ld e, e                                       ; $7fbb: $5b
    inc h                                         ; $7fbc: $24
    or h                                          ; $7fbd: $b4
    rst $38                                       ; $7fbe: $ff
    ld [de], a                                    ; $7fbf: $12
    adc h                                         ; $7fc0: $8c
    call c, Call_000_3c00                         ; $7fc1: $dc $00 $3c
    inc bc                                        ; $7fc4: $03
    db $d3                                        ; $7fc5: $d3
    dec bc                                        ; $7fc6: $0b
    nop                                           ; $7fc7: $00
    ld e, $a6                                     ; $7fc8: $1e $a6
    ld e, a                                       ; $7fca: $5f
    ld c, d                                       ; $7fcb: $4a
    xor c                                         ; $7fcc: $a9
    and d                                         ; $7fcd: $a2
    call nc, $ffef                                ; $7fce: $d4 $ef $ff
    ld e, d                                       ; $7fd1: $5a
    rst $38                                       ; $7fd2: $ff

Call_05a_7fd3:
    rst $10                                       ; $7fd3: $d7
    dec b                                         ; $7fd4: $05
    nop                                           ; $7fd5: $00
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

jr_05a_7fe3:
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

Call_05a_7fee:
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
