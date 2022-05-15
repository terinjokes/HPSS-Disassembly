; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

    ld e, l                                       ; $4000: $5d
    inc a                                         ; $4001: $3c
    inc bc                                        ; $4002: $03
    ld c, a                                       ; $4003: $4f
    and h                                         ; $4004: $a4
    sub b                                         ; $4005: $90
    db $ed                                        ; $4006: $ed
    rst $38                                       ; $4007: $ff
    ld d, d                                       ; $4008: $52
    ld c, d                                       ; $4009: $4a
    dec d                                         ; $400a: $15
    sub $a4                                       ; $400b: $d6 $a4
    dec sp                                        ; $400d: $3b
    db $e3                                        ; $400e: $e3
    ld c, d                                       ; $400f: $4a
    db $e3                                        ; $4010: $e3
    cp [hl]                                       ; $4011: $be
    or a                                          ; $4012: $b7
    ld l, $39                                     ; $4013: $2e $39
    ret z                                         ; $4015: $c8

    ld e, d                                       ; $4016: $5a
    ld e, b                                       ; $4017: $58
    ld a, [hl-]                                   ; $4018: $3a
    ld e, h                                       ; $4019: $5c
    add hl, de                                    ; $401a: $19
    inc h                                         ; $401b: $24
    cp d                                          ; $401c: $ba
    add hl, hl                                    ; $401d: $29
    daa                                           ; $401e: $27
    pop af                                        ; $401f: $f1
    inc b                                         ; $4020: $04
    cp e                                          ; $4021: $bb
    rla                                           ; $4022: $17
    dec hl                                        ; $4023: $2b
    cp b                                          ; $4024: $b8
    ld bc, $bf3c                                  ; $4025: $01 $3c $bf
    sub $df                                       ; $4028: $d6 $df
    inc de                                        ; $402a: $13
    dec b                                         ; $402b: $05
    ld h, e                                       ; $402c: $63
    rst $38                                       ; $402d: $ff
    sub [hl]                                      ; $402e: $96
    ld [hl], b                                    ; $402f: $70
    inc [hl]                                      ; $4030: $34
    ld a, $14                                     ; $4031: $3e $14
    nop                                           ; $4033: $00
    ld e, $21                                     ; $4034: $1e $21
    ld e, [hl]                                    ; $4036: $5e
    rst $10                                       ; $4037: $d7
    and l                                         ; $4038: $a5
    db $f4                                        ; $4039: $f4
    rst $10                                       ; $403a: $d7
    ld [hl+], a                                   ; $403b: $22
    sub h                                         ; $403c: $94
    ld a, a                                       ; $403d: $7f
    and l                                         ; $403e: $a5
    ld [$c947], sp                                ; $403f: $08 $47 $c9
    add $9c                                       ; $4042: $c6 $9c
    dec de                                        ; $4044: $1b
    dec h                                         ; $4045: $25
    ld hl, sp+$35                                 ; $4046: $f8 $35
    add hl, hl                                    ; $4048: $29
    cp e                                          ; $4049: $bb
    jp hl                                         ; $404a: $e9


    ld d, b                                       ; $404b: $50
    ret                                           ; $404c: $c9


    ld h, d                                       ; $404d: $62
    ld [c], a                                     ; $404e: $e2
    or $98                                        ; $404f: $f6 $98
    ld d, $a7                                     ; $4051: $16 $a7
    rst $38                                       ; $4053: $ff
    ld [de], a                                    ; $4054: $12
    rst $00                                       ; $4055: $c7
    adc c                                         ; $4056: $89
    ei                                            ; $4057: $fb
    ld c, $e5                                     ; $4058: $0e $e5
    rst $08                                       ; $405a: $cf
    xor $ff                                       ; $405b: $ee $ff
    jp nc, $34a1                                  ; $405d: $d2 $a1 $34

    adc $21                                       ; $4060: $ce $21
    sbc l                                         ; $4062: $9d
    or c                                          ; $4063: $b1
    jp hl                                         ; $4064: $e9


    ld e, b                                       ; $4065: $58
    db $db                                        ; $4066: $db
    cp a                                          ; $4067: $bf
    nop                                           ; $4068: $00
    sbc [hl]                                      ; $4069: $9e
    ld h, d                                       ; $406a: $62
    ld e, l                                       ; $406b: $5d
    rst $10                                       ; $406c: $d7
    dec [hl]                                      ; $406d: $35
    cp a                                          ; $406e: $bf
    dec c                                         ; $406f: $0d
    cp c                                          ; $4070: $b9
    ld bc, $5b7c                                  ; $4071: $01 $7c $5b
    dec d                                         ; $4074: $15
    or d                                          ; $4075: $b2
    ret nc                                        ; $4076: $d0

    dec e                                         ; $4077: $1d
    dec d                                         ; $4078: $15
    ld bc, $0005                                  ; $4079: $01 $05 $00

jr_05d_407c:
    ld e, $ee                                     ; $407c: $1e $ee
    xor $e4                                       ; $407e: $ee $e4
    and $e6                                       ; $4080: $e6 $e6
    ld b, $7c                                     ; $4082: $06 $7c
    dec sp                                        ; $4084: $3b
    ld c, c                                       ; $4085: $49
    ld d, $c2                                     ; $4086: $16 $c2
    or e                                          ; $4088: $b3
    ld d, b                                       ; $4089: $50
    nop                                           ; $408a: $00
    inc a                                         ; $408b: $3c
    pop bc                                        ; $408c: $c1
    xor $c5                                       ; $408d: $ee $c5
    ld a, [bc]                                    ; $408f: $0a
    ld l, [hl]                                    ; $4090: $6e
    add hl, sp                                    ; $4091: $39
    adc h                                         ; $4092: $8c
    sbc l                                         ; $4093: $9d
    inc de                                        ; $4094: $13
    add l                                         ; $4095: $85
    and l                                         ; $4096: $a5
    sub h                                         ; $4097: $94
    ld a, [hl+]                                   ; $4098: $2a
    ld c, d                                       ; $4099: $4a
    ld [hl], e                                    ; $409a: $73
    ld l, a                                       ; $409b: $6f
    ld a, a                                       ; $409c: $7f
    sbc b                                         ; $409d: $98
    db $fd                                        ; $409e: $fd
    rla                                           ; $409f: $17
    scf                                           ; $40a0: $37
    nop                                           ; $40a1: $00
    inc a                                         ; $40a2: $3c
    rst $08                                       ; $40a3: $cf
    ld e, b                                       ; $40a4: $58
    sub [hl]                                      ; $40a5: $96
    sub h                                         ; $40a6: $94
    ld l, l                                       ; $40a7: $6d
    adc l                                         ; $40a8: $8d
    ld [de], a                                    ; $40a9: $12
    sub [hl]                                      ; $40aa: $96
    db $fc                                        ; $40ab: $fc
    jr c, jr_05d_411d                             ; $40ac: $38 $6f

    dec e                                         ; $40ae: $1d
    db $dd                                        ; $40af: $dd
    sbc a                                         ; $40b0: $9f
    cp a                                          ; $40b1: $bf
    ld d, d                                       ; $40b2: $52
    xor d                                         ; $40b3: $aa
    ld l, b                                       ; $40b4: $68
    ld l, [hl]                                    ; $40b5: $6e
    nop                                           ; $40b6: $00
    sbc h                                         ; $40b7: $9c
    cp a                                          ; $40b8: $bf
    dec h                                         ; $40b9: $25
    db $db                                        ; $40ba: $db
    ld a, [de]                                    ; $40bb: $1a
    xor l                                         ; $40bc: $ad
    ld [hl], c                                    ; $40bd: $71
    ret nc                                        ; $40be: $d0

    inc b                                         ; $40bf: $04
    adc a                                         ; $40c0: $8f
    pop bc                                        ; $40c1: $c1
    ld d, [hl]                                    ; $40c2: $56
    rrca                                          ; $40c3: $0f
    db $e3                                        ; $40c4: $e3
    sbc d                                         ; $40c5: $9a
    dec a                                         ; $40c6: $3d
    or a                                          ; $40c7: $b7
    ld a, b                                       ; $40c8: $78
    or d                                          ; $40c9: $b2
    sbc h                                         ; $40ca: $9c
    sub d                                         ; $40cb: $92
    adc d                                         ; $40cc: $8a
    ld l, [hl]                                    ; $40cd: $6e
    jp nc, Jump_000_35bd                          ; $40ce: $d2 $bd $35

    adc $79                                       ; $40d1: $ce $79
    pop hl                                        ; $40d3: $e1
    ld e, c                                       ; $40d4: $59
    pop af                                        ; $40d5: $f1
    ld b, h                                       ; $40d6: $44
    xor a                                         ; $40d7: $af
    rst $18                                       ; $40d8: $df
    add sp, -$35                                  ; $40d9: $e8 $cb
    add hl, de                                    ; $40db: $19
    ld a, b                                       ; $40dc: $78
    ldh [$fd], a                                  ; $40dd: $e0 $fd
    xor a                                         ; $40df: $af
    ld a, e                                       ; $40e0: $7b
    call z, $bfaf                                 ; $40e1: $cc $af $bf
    call nz, $ba37                                ; $40e4: $c4 $37 $ba
    ld e, a                                       ; $40e7: $5f
    inc a                                         ; $40e8: $3c
    pop bc                                        ; $40e9: $c1
    xor $c5                                       ; $40ea: $ee $c5
    ld a, [bc]                                    ; $40ec: $0a
    ld h, c                                       ; $40ed: $61
    add hl, hl                                    ; $40ee: $29
    rst $18                                       ; $40ef: $df
    jr c, jr_05d_4116                             ; $40f0: $38 $24

    db $db                                        ; $40f2: $db
    jr c, jr_05d_407c                             ; $40f3: $38 $87

    ld l, $f1                                     ; $40f5: $2e $f1
    ld d, b                                       ; $40f7: $50
    ld b, l                                       ; $40f8: $45
    dec bc                                        ; $40f9: $0b
    ld c, e                                       ; $40fa: $4b
    ld a, [hl]                                    ; $40fb: $7e
    sbc h                                         ; $40fc: $9c
    or a                                          ; $40fd: $b7
    adc [hl]                                      ; $40fe: $8e
    xor $cf                                       ; $40ff: $ee $cf
    sbc a                                         ; $4101: $9f
    dec de                                        ; $4102: $1b
    nop                                           ; $4103: $00
    inc e                                         ; $4104: $1c
    ld d, l                                       ; $4105: $55
    ld sp, $656d                                  ; $4106: $31 $6d $65
    cp a                                          ; $4109: $bf
    dec h                                         ; $410a: $25
    db $db                                        ; $410b: $db
    ld a, [de]                                    ; $410c: $1a
    xor l                                         ; $410d: $ad
    ld [hl], c                                    ; $410e: $71
    ret nc                                        ; $410f: $d0

    cp b                                          ; $4110: $b8
    push bc                                       ; $4111: $c5
    or a                                          ; $4112: $b7
    dec [hl]                                      ; $4113: $35
    adc $79                                       ; $4114: $ce $79

jr_05d_4116:
    pop hl                                        ; $4116: $e1
    ld e, c                                       ; $4117: $59
    ld h, c                                       ; $4118: $61
    ld d, l                                       ; $4119: $55
    ld c, h                                       ; $411a: $4c
    ld e, e                                       ; $411b: $5b
    dec [hl]                                      ; $411c: $35

jr_05d_411d:
    ld l, [hl]                                    ; $411d: $6e
    ld b, l                                       ; $411e: $45
    call $f12d                                    ; $411f: $cd $2d $f1
    ld b, h                                       ; $4122: $44
    xor a                                         ; $4123: $af
    rst $18                                       ; $4124: $df
    add sp, $3b                                   ; $4125: $e8 $3b
    inc bc                                        ; $4127: $03
    rrca                                          ; $4128: $0f
    cp h                                          ; $4129: $bc
    rst $38                                       ; $412a: $ff
    ld [de], a                                    ; $412b: $12
    rst $18                                       ; $412c: $df
    add sp, $7e                                   ; $412d: $e8 $7e
    pop af                                        ; $412f: $f1
    inc b                                         ; $4130: $04
    cp e                                          ; $4131: $bb
    rla                                           ; $4132: $17
    dec hl                                        ; $4133: $2b
    add h                                         ; $4134: $84
    and l                                         ; $4135: $a5
    ld a, h                                       ; $4136: $7c
    db $e3                                        ; $4137: $e3
    ret nc                                        ; $4138: $d0

    call c, Call_05d_6d92                         ; $4139: $dc $92 $6d
    sbc h                                         ; $413c: $9c
    ld b, e                                       ; $413d: $43
    call c, Call_000_3c00                         ; $413e: $dc $00 $3c
    pop bc                                        ; $4141: $c1
    xor $c5                                       ; $4142: $ee $c5
    ld a, [bc]                                    ; $4144: $0a
    ld l, [hl]                                    ; $4145: $6e
    ld [hl], c                                    ; $4146: $71
    sbc h                                         ; $4147: $9c
    add sp, -$77                                  ; $4148: $e8 $89
    sbc d                                         ; $414a: $9a
    and e                                         ; $414b: $a3
    ld a, [bc]                                    ; $414c: $0a
    call Call_000_0a1e                            ; $414d: $cd $1e $0a
    nop                                           ; $4150: $00
    ld e, $21                                     ; $4151: $1e $21
    ld e, [hl]                                    ; $4153: $5e
    rst $10                                       ; $4154: $d7
    and l                                         ; $4155: $a5
    inc sp                                        ; $4156: $33
    add $89                                       ; $4157: $c6 $89
    ld d, d                                       ; $4159: $52
    db $ed                                        ; $415a: $ed
    sub $75                                       ; $415b: $d6 $75
    ld e, l                                       ; $415d: $5d
    nop                                           ; $415e: $00
    ld a, h                                       ; $415f: $7c
    db $db                                        ; $4160: $db
    and h                                         ; $4161: $a4
    ld a, [hl]                                    ; $4162: $7e
    rst $38                                       ; $4163: $ff
    db $d3                                        ; $4164: $d3
    ld e, $7b                                     ; $4165: $1e $7b
    ld e, l                                       ; $4167: $5d
    sub a                                         ; $4168: $97
    jp nc, $4d2c                                  ; $4169: $d2 $2c $4d

    ld [$e10e], a                                 ; $416c: $ea $0e $e1
    add hl, sp                                    ; $416f: $39
    rst $38                                       ; $4170: $ff
    and l                                         ; $4171: $a5
    adc $ba                                       ; $4172: $ce $ba
    cp c                                          ; $4174: $b9
    ldh [$28], a                                  ; $4175: $e0 $28
    push hl                                       ; $4177: $e5
    ld h, c                                       ; $4178: $61
    or $66                                        ; $4179: $f6 $66
    ld a, a                                       ; $417b: $7f
    ld bc, $517c                                  ; $417c: $01 $7c $51
    db $db                                        ; $417f: $db
    dec e                                         ; $4180: $1d
    sub e                                         ; $4181: $93
    ld c, e                                       ; $4182: $4b
    dec e                                         ; $4183: $1d
    sbc d                                         ; $4184: $9a
    ld a, b                                       ; $4185: $78
    xor $50                                       ; $4186: $ee $50
    or h                                          ; $4188: $b4
    db $ed                                        ; $4189: $ed
    ld c, l                                       ; $418a: $4d
    ld d, h                                       ; $418b: $54
    ld a, [c]                                     ; $418c: $f2
    ld h, e                                       ; $418d: $63
    rst $20                                       ; $418e: $e7
    call nz, $1287                                ; $418f: $c4 $87 $12
    ld c, a                                       ; $4192: $4f
    sub [hl]                                      ; $4193: $96
    ld d, e                                       ; $4194: $53
    ld d, d                                       ; $4195: $52
    pop de                                        ; $4196: $d1
    dec e                                         ; $4197: $1d
    db $dd                                        ; $4198: $dd
    ld hl, $4718                                  ; $4199: $21 $18 $47
    adc a                                         ; $419c: $8f
    adc d                                         ; $419d: $8a
    ld l, b                                       ; $419e: $68
    push af                                       ; $419f: $f5
    ei                                            ; $41a0: $fb
    pop de                                        ; $41a1: $d1
    ld h, e                                       ; $41a2: $63
    jp c, $0372                                   ; $41a3: $da $72 $03

    ld a, h                                       ; $41a6: $7c
    ld e, e                                       ; $41a7: $5b
    and h                                         ; $41a8: $a4
    dec sp                                        ; $41a9: $3b
    ld l, d                                       ; $41aa: $6a
    ld c, e                                       ; $41ab: $4b
    pop de                                        ; $41ac: $d1
    or [hl]                                       ; $41ad: $b6
    scf                                           ; $41ae: $37
    ld d, c                                       ; $41af: $51
    ret                                           ; $41b0: $c9


    adc a                                         ; $41b1: $8f
    sbc l                                         ; $41b2: $9d
    inc de                                        ; $41b3: $13
    ld e, a                                       ; $41b4: $5f
    ld a, b                                       ; $41b5: $78
    ld l, a                                       ; $41b6: $6f
    xor c                                         ; $41b7: $a9
    ld h, d                                       ; $41b8: $62
    db $e4                                        ; $41b9: $e4
    cp b                                          ; $41ba: $b8
    dec d                                         ; $41bb: $15
    or l                                          ; $41bc: $b5
    sub a                                         ; $41bd: $97
    inc a                                         ; $41be: $3c
    ld e, $e3                                     ; $41bf: $1e $e3
    ld l, h                                       ; $41c1: $6c
    ret                                           ; $41c2: $c9


    daa                                           ; $41c3: $27
    ld b, $13                                     ; $41c4: $06 $13
    push hl                                       ; $41c6: $e5
    ld d, h                                       ; $41c7: $54
    dec hl                                        ; $41c8: $2b
    db $db                                        ; $41c9: $db
    ld [hl], e                                    ; $41ca: $73
    ld [hl+], a                                   ; $41cb: $22
    xor c                                         ; $41cc: $a9
    adc c                                         ; $41cd: $89
    ld [hl], $5f                                  ; $41ce: $36 $5f
    ld a, b                                       ; $41d0: $78
    and d                                         ; $41d1: $a2
    ld [hl], h                                    ; $41d2: $74
    add $8c                                       ; $41d3: $c6 $8c
    ld a, [de]                                    ; $41d5: $1a
    xor l                                         ; $41d6: $ad
    jp c, $f92d                                   ; $41d7: $da $2d $f9

    ld a, a                                       ; $41da: $7f
    ld h, b                                       ; $41db: $60
    inc l                                         ; $41dc: $2c
    push de                                       ; $41dd: $d5
    xor [hl]                                      ; $41de: $ae
    dec [hl]                                      ; $41df: $35
    ld e, l                                       ; $41e0: $5d
    ld a, [c]                                     ; $41e1: $f2
    ld [$9e4d], sp                                ; $41e2: $08 $4d $9e
    ld h, d                                       ; $41e5: $62
    add hl, bc                                    ; $41e6: $09
    ld a, [hl]                                    ; $41e7: $7e
    pop af                                        ; $41e8: $f1
    inc a                                         ; $41e9: $3c
    ld h, e                                       ; $41ea: $63
    sbc c                                         ; $41eb: $99
    ld h, d                                       ; $41ec: $62
    ld [hl], e                                    ; $41ed: $73
    ld l, d                                       ; $41ee: $6a
    pop hl                                        ; $41ef: $e1
    ld e, c                                       ; $41f0: $59
    ld e, e                                       ; $41f1: $5b
    dec e                                         ; $41f2: $1d
    xor [hl]                                      ; $41f3: $ae
    xor h                                         ; $41f4: $ac
    xor c                                         ; $41f5: $a9
    ld [hl+], a                                   ; $41f6: $22
    ld e, d                                       ; $41f7: $5a
    rst $30                                       ; $41f8: $f7
    sub $f8                                       ; $41f9: $d6 $f8
    and h                                         ; $41fb: $a4
    ldh a, [$ac]                                  ; $41fc: $f0 $ac
    ld l, l                                       ; $41fe: $6d
    add hl, hl                                    ; $41ff: $29
    ld a, a                                       ; $4200: $7f
    halt                                          ; $4201: $76
    cp a                                          ; $4202: $bf
    push af                                       ; $4203: $f5
    ld l, d                                       ; $4204: $6a
    ld c, $3c                                     ; $4205: $0e $3c
    ld h, a                                       ; $4207: $67
    db $f4                                        ; $4208: $f4
    dec b                                         ; $4209: $05
    nop                                           ; $420a: $00
    db $fc                                        ; $420b: $fc
    ld [hl], h                                    ; $420c: $74
    sub e                                         ; $420d: $93
    ldh a, [$ac]                                  ; $420e: $f0 $ac
    ld l, h                                       ; $4210: $6c
    rst $10                                       ; $4211: $d7
    ld h, h                                       ; $4212: $64
    ld e, e                                       ; $4213: $5b
    and e                                         ; $4214: $a3
    ld h, h                                       ; $4215: $64
    ld e, c                                       ; $4216: $59
    sub $64                                       ; $4217: $d6 $64
    sra l                                         ; $4219: $cb $2d
    ld c, a                                       ; $421b: $4f
    ld sp, $719d                                  ; $421c: $31 $9d $71
    halt                                          ; $421f: $76
    ld [c], a                                     ; $4220: $e2
    jp hl                                         ; $4221: $e9


    ld d, a                                       ; $4222: $57
    ld c, [hl]                                    ; $4223: $4e
    ld l, c                                       ; $4224: $69
    ld d, h                                       ; $4225: $54
    ld b, l                                       ; $4226: $45
    inc de                                        ; $4227: $13
    sub l                                         ; $4228: $95
    ld e, h                                       ; $4229: $5c
    ld d, [hl]                                    ; $422a: $56
    rrca                                          ; $422b: $0f
    rst $38                                       ; $422c: $ff
    db $fd                                        ; $422d: $fd
    or l                                          ; $422e: $b5
    adc [hl]                                      ; $422f: $8e
    ld l, [hl]                                    ; $4230: $6e
    cp d                                          ; $4231: $ba
    db $e4                                        ; $4232: $e4
    ldh a, [$cf]                                  ; $4233: $f0 $cf
    rst $30                                       ; $4235: $f7
    db $fc                                        ; $4236: $fc
    ld d, a                                       ; $4237: $57
    ld h, l                                       ; $4238: $65
    xor l                                         ; $4239: $ad
    ld e, $fe                                     ; $423a: $1e $fe
    ld l, [hl]                                    ; $423c: $6e
    ld d, l                                       ; $423d: $55
    ld e, h                                       ; $423e: $5c
    nop                                           ; $423f: $00
    ld e, $bd                                     ; $4240: $1e $bd
    xor $6d                                       ; $4242: $ee $6d
    ld d, d                                       ; $4244: $52
    rst $00                                       ; $4245: $c7
    and [hl]                                      ; $4246: $a6
    ld e, e                                       ; $4247: $5b
    sbc d                                         ; $4248: $9a
    sbc a                                         ; $4249: $9f
    halt                                          ; $424a: $76
    ld b, h                                       ; $424b: $44
    xor c                                         ; $424c: $a9
    rst $00                                       ; $424d: $c7
    adc c                                         ; $424e: $89
    ld c, b                                       ; $424f: $48
    xor d                                         ; $4250: $aa
    halt                                          ; $4251: $76
    ld c, e                                       ; $4252: $4b
    ld a, b                                       ; $4253: $78
    and d                                         ; $4254: $a2
    sub h                                         ; $4255: $94
    rst $38                                       ; $4256: $ff
    adc $d1                                       ; $4257: $ce $d1
    dec a                                         ; $4259: $3d
    ld l, d                                       ; $425a: $6a
    db $f4                                        ; $425b: $f4
    dec h                                         ; $425c: $25
    ld e, [hl]                                    ; $425d: $5e
    call z, Call_05d_74b7                         ; $425e: $cc $b7 $74
    ld h, e                                       ; $4261: $63
    ld b, l                                       ; $4262: $45
    dec hl                                        ; $4263: $2b
    jp z, $bef6                                   ; $4264: $ca $f6 $be

    ld l, c                                       ; $4267: $69
    dec l                                         ; $4268: $2d
    ld c, d                                       ; $4269: $4a
    ld sp, hl                                     ; $426a: $f9
    ld b, b                                       ; $426b: $40
    ld c, b                                       ; $426c: $48
    sub h                                         ; $426d: $94
    ret nc                                        ; $426e: $d0

    rst $30                                       ; $426f: $f7
    rst $30                                       ; $4270: $f7
    db $fc                                        ; $4271: $fc
    or a                                          ; $4272: $b7
    ld h, d                                       ; $4273: $62
    ld [hl], e                                    ; $4274: $73
    ld l, d                                       ; $4275: $6a
    ld sp, hl                                     ; $4276: $f9
    call nz, Call_05d_5a60                        ; $4277: $c4 $60 $5a
    ld e, e                                       ; $427a: $5b
    dec [hl]                                      ; $427b: $35
    ld h, l                                       ; $427c: $65
    or [hl]                                       ; $427d: $b6
    di                                            ; $427e: $f3
    dec l                                         ; $427f: $2d
    rra                                           ; $4280: $1f
    ld l, e                                       ; $4281: $6b
    ld [hl], c                                    ; $4282: $71
    ld c, [hl]                                    ; $4283: $4e
    jr z, jr_05d_42a5                             ; $4284: $28 $1f

    ret z                                         ; $4286: $c8

    and d                                         ; $4287: $a2
    db $fc                                        ; $4288: $fc
    ret c                                         ; $4289: $d8

    adc c                                         ; $428a: $89
    rst $20                                       ; $428b: $e7
    call nz, $ce25                                ; $428c: $c4 $25 $ce
    rst $38                                       ; $428f: $ff
    xor $d0                                       ; $4290: $ee $d0
    inc e                                         ; $4292: $1c
    or a                                          ; $4293: $b7
    cp a                                          ; $4294: $bf
    ld [hl], e                                    ; $4295: $73
    ld c, e                                       ; $4296: $4b
    ld l, $ab                                     ; $4297: $2e $ab
    add a                                         ; $4299: $87
    rst $38                                       ; $429a: $ff
    cp $5a                                        ; $429b: $fe $5a
    ld b, a                                       ; $429d: $47
    scf                                           ; $429e: $37
    ld e, l                                       ; $429f: $5d
    ld a, [c]                                     ; $42a0: $f2
    inc e                                         ; $42a1: $1c
    or a                                          ; $42a2: $b7
    dec sp                                        ; $42a3: $3b
    db $e4                                        ; $42a4: $e4

jr_05d_42a5:
    db $e3                                        ; $42a5: $e3
    ld e, d                                       ; $42a6: $5a
    adc a                                         ; $42a7: $8f
    cp a                                          ; $42a8: $bf
    nop                                           ; $42a9: $00
    cp h                                          ; $42aa: $bc
    cp e                                          ; $42ab: $bb
    adc l                                         ; $42ac: $8d
    sub [hl]                                      ; $42ad: $96
    call nc, $a51c                                ; $42ae: $d4 $1c $a5
    rra                                           ; $42b1: $1f
    adc l                                         ; $42b2: $8d
    db $db                                        ; $42b3: $db
    cp d                                          ; $42b4: $ba
    ld h, e                                       ; $42b5: $63
    ld hl, $f2d4                                  ; $42b6: $21 $d4 $f2
    rst $00                                       ; $42b9: $c7

jr_05d_42ba:
    ld a, c                                       ; $42ba: $79
    db $eb                                        ; $42bb: $eb
    ld c, a                                       ; $42bc: $4f
    ld a, [hl+]                                   ; $42bd: $2a
    rst $38                                       ; $42be: $ff
    sbc l                                         ; $42bf: $9d
    di                                            ; $42c0: $f3
    push hl                                       ; $42c1: $e5
    adc a                                         ; $42c2: $8f
    ld [hl], h                                    ; $42c3: $74
    db $ec                                        ; $42c4: $ec
    ld a, l                                       ; $42c5: $7d
    rst $00                                       ; $42c6: $c7
    call c, $ed52                                 ; $42c7: $dc $52 $ed
    sub [hl]                                      ; $42ca: $96
    or $cc                                        ; $42cb: $f6 $cc
    jr nz, jr_05d_42ba                            ; $42cd: $20 $eb

    cp l                                          ; $42cf: $bd
    nop                                           ; $42d0: $00
    ld c, $30                                     ; $42d1: $0e $30
    xor c                                         ; $42d3: $a9
    ld c, $cd                                     ; $42d4: $0e $cd
    or c                                          ; $42d6: $b1
    dec e                                         ; $42d7: $1d
    dec [hl]                                      ; $42d8: $35
    or a                                          ; $42d9: $b7
    db $e4                                        ; $42da: $e4
    rst $00                                       ; $42db: $c7
    ld a, c                                       ; $42dc: $79
    db $eb                                        ; $42dd: $eb
    db $ed                                        ; $42de: $ed
    ld c, $dd                                     ; $42df: $0e $dd
    ld e, e                                       ; $42e1: $5b
    and e                                         ; $42e2: $a3
    sub e                                         ; $42e3: $93
    jp z, $e77f                                   ; $42e4: $ca $7f $e7

    db $fc                                        ; $42e7: $fc
    db $eb                                        ; $42e8: $eb
    cp d                                          ; $42e9: $ba
    add h                                         ; $42ea: $84
    daa                                           ; $42eb: $27
    ld l, d                                       ; $42ec: $6a
    ld l, [hl]                                    ; $42ed: $6e
    add hl, bc                                    ; $42ee: $09
    rst $08                                       ; $42ef: $cf
    add hl, de                                    ; $42f0: $19
    xor l                                         ; $42f1: $ad
    sbc h                                         ; $42f2: $9c
    ld d, d                                       ; $42f3: $52
    ld a, [hl+]                                   ; $42f4: $2a
    and l                                         ; $42f5: $a5
    ld e, a                                       ; $42f6: $5f
    di                                            ; $42f7: $f3
    rst $08                                       ; $42f8: $cf
    ld e, a                                       ; $42f9: $5f
    nop                                           ; $42fa: $00
    inc a                                         ; $42fb: $3c

Jump_05d_42fc:
    or c                                          ; $42fc: $b1
    ld c, c                                       ; $42fd: $49
    db $dd                                        ; $42fe: $dd
    or c                                          ; $42ff: $b1
    db $10                                        ; $4300: $10
    ld a, [hl+]                                   ; $4301: $2a
    ld sp, hl                                     ; $4302: $f9
    db $db                                        ; $4303: $db
    or h                                          ; $4304: $b4
    or [hl]                                       ; $4305: $b6
    jp nz, Jump_05d_5e73                          ; $4306: $c2 $73 $5e

    sbc c                                         ; $4309: $99
    dec [hl]                                      ; $430a: $35
    push hl                                       ; $430b: $e5
    ld c, e                                       ; $430c: $4b
    add d                                         ; $430d: $82
    ld e, a                                       ; $430e: $5f
    ccf                                           ; $430f: $3f
    cp d                                          ; $4310: $ba
    rst $38                                       ; $4311: $ff
    push de                                       ; $4312: $d5
    cp b                                          ; $4313: $b8
    or [hl]                                       ; $4314: $b6
    ld a, a                                       ; $4315: $7f
    rst $18                                       ; $4316: $df
    ld [hl], c                                    ; $4317: $71
    ret                                           ; $4318: $c9


    ld h, c                                       ; $4319: $61
    db $ec                                        ; $431a: $ec
    call nz, $fcd2                                ; $431b: $c4 $d2 $fc
    ld [hl-], a                                   ; $431e: $32
    ld a, e                                       ; $431f: $7b
    push af                                       ; $4320: $f5
    ei                                            ; $4321: $fb
    ld a, [hl]                                    ; $4322: $7e
    sbc h                                         ; $4323: $9c
    cp b                                          ; $4324: $b8
    or a                                          ; $4325: $b7
    and d                                         ; $4326: $a2
    ld [hl], h                                    ; $4327: $74
    jr z, @-$71                                   ; $4328: $28 $8d

    ld l, d                                       ; $432a: $6a
    ld [hl+], a                                   ; $432b: $22
    call $df71                                    ; $432c: $cd $71 $df
    ld l, a                                       ; $432f: $6f
    cp l                                          ; $4330: $bd
    rla                                           ; $4331: $17
    nop                                           ; $4332: $00
    ld e, [hl]                                    ; $4333: $5e
    ld e, c                                       ; $4334: $59
    ld d, e                                       ; $4335: $53
    cp [hl]                                       ; $4336: $be
    inc h                                         ; $4337: $24
    db $db                                        ; $4338: $db
    dec [hl]                                      ; $4339: $35
    ld l, [hl]                                    ; $433a: $6e
    nop                                           ; $433b: $00
    ld a, h                                       ; $433c: $7c
    or c                                          ; $433d: $b1
    rst $20                                       ; $433e: $e7
    add h                                         ; $433f: $84
    ldh a, [$ac]                                  ; $4340: $f0 $ac
    xor l                                         ; $4342: $ad
    ld h, [hl]                                    ; $4343: $66
    halt                                          ; $4344: $76
    ld c, $c9                                     ; $4345: $0e $c9
    rst $18                                       ; $4347: $df
    and [hl]                                      ; $4348: $a6
    jp z, Jump_05d_5f5a                           ; $4349: $ca $5a $5f

    db $fd                                        ; $434c: $fd
    xor a                                         ; $434d: $af
    xor b                                         ; $434e: $a8
    cp b                                          ; $434f: $b8
    ld l, a                                       ; $4350: $6f
    ld a, [hl+]                                   ; $4351: $2a
    push af                                       ; $4352: $f5
    ldh a, [$df]                                  ; $4353: $f0 $df
    ld e, a                                       ; $4355: $5f
    db $eb                                        ; $4356: $eb
    ret c                                         ; $4357: $d8

    and [hl]                                      ; $4358: $a6
    dec bc                                        ; $4359: $0b
    nop                                           ; $435a: $00
    ld a, h                                       ; $435b: $7c
    ld e, e                                       ; $435c: $5b
    db $e3                                        ; $435d: $e3
    sbc h                                         ; $435e: $9c
    rla                                           ; $435f: $17
    sub [hl]                                      ; $4360: $96
    ld e, $fe                                     ; $4361: $1e $fe
    ld e, $76                                     ; $4363: $1e $76
    ld e, l                                       ; $4365: $5d
    sub a                                         ; $4366: $97
    xor $a8                                       ; $4367: $ee $a8
    ld [hl+], a                                   ; $4369: $22
    ld a, [hl+]                                   ; $436a: $2a
    ld sp, hl                                     ; $436b: $f9
    inc hl                                        ; $436c: $23
    dec e                                         ; $436d: $1d
    rst $30                                       ; $436e: $f7
    ld a, a                                       ; $436f: $7f
    adc c                                         ; $4370: $89
    rst $20                                       ; $4371: $e7
    inc de                                        ; $4372: $13

jr_05d_4373:
    ld h, d                                       ; $4373: $62
    dec bc                                        ; $4374: $0b
    reti                                          ; $4375: $d9


    jp nc, Jump_000_32fc                          ; $4376: $d2 $fc $32

    ei                                            ; $4379: $fb
    ld c, e                                       ; $437a: $4b
    inc a                                         ; $437b: $3c
    ld d, h                                       ; $437c: $54
    jp nz, $db12                                  ; $437d: $c2 $12 $db

    or l                                          ; $4380: $b5
    cp $ca                                        ; $4381: $fe $ca
    sbc a                                         ; $4383: $9f
    push af                                       ; $4384: $f5
    jp nz, $f82f                                  ; $4385: $c2 $2f $f8

    push de                                       ; $4388: $d5
    dec de                                        ; $4389: $1b
    ld c, l                                       ; $438a: $4d
    and h                                         ; $438b: $a4
    ld sp, hl                                     ; $438c: $f9
    dec sp                                        ; $438d: $3b
    and e                                         ; $438e: $a3

Jump_05d_438f:
    inc d                                         ; $438f: $14
    add a                                         ; $4390: $87
    or $5e                                        ; $4391: $f6 $5e
    ld l, e                                       ; $4393: $6b
    cp d                                          ; $4394: $ba
    inc b                                         ; $4395: $04
    sbc l                                         ; $4396: $9d
    ld c, [hl]                                    ; $4397: $4e
    ld d, d                                       ; $4398: $52
    ld c, d                                       ; $4399: $4a
    and l                                         ; $439a: $a5
    sbc $68                                       ; $439b: $de $68
    ld [hl+], a                                   ; $439d: $22
    pop bc                                        ; $439e: $c1
    ret c                                         ; $439f: $d8

    cp a                                          ; $43a0: $bf
    dec h                                         ; $43a1: $25
    db $db                                        ; $43a2: $db
    ld l, l                                       ; $43a3: $6d
    jp nc, Jump_05d_73c4                          ; $43a4: $d2 $c4 $73

    xor a                                         ; $43a7: $af
    ld c, a                                       ; $43a8: $4f
    ld l, e                                       ; $43a9: $6b
    ld h, c                                       ; $43aa: $61
    ld c, l                                       ; $43ab: $4d
    sbc d                                         ; $43ac: $9a
    cp b                                          ; $43ad: $b8
    db $ec                                        ; $43ae: $ec
    xor l                                         ; $43af: $ad
    ld a, a                                       ; $43b0: $7f
    ld l, [hl]                                    ; $43b1: $6e
    ld e, l                                       ; $43b2: $5d
    nop                                           ; $43b3: $00
    ld e, $a6                                     ; $43b4: $1e $a6
    ld e, a                                       ; $43b6: $5f
    ld l, d                                       ; $43b7: $6a
    db $ec                                        ; $43b8: $ec
    cp $4b                                        ; $43b9: $fe $4b
    ld e, $bd                                     ; $43bb: $1e $bd
    ld h, b                                       ; $43bd: $60
    inc [hl]                                      ; $43be: $34
    pop af                                        ; $43bf: $f1
    ld a, h                                       ; $43c0: $7c
    ld b, d                                       ; $43c1: $42
    ld l, h                                       ; $43c2: $6c
    ld hl, $558a                                  ; $43c3: $21 $8a $55
    ld l, a                                       ; $43c6: $6f
    ld b, b                                       ; $43c7: $40
    jr z, jr_05d_4373                             ; $43c8: $28 $a9

    jp c, $a52d                                   ; $43ca: $da $2d $a5

    ld d, h                                       ; $43cd: $54
    jp z, $8571                                   ; $43ce: $ca $71 $85

    db $dd                                        ; $43d1: $dd
    rst $38                                       ; $43d2: $ff
    jp z, $dd9f                                   ; $43d3: $ca $9f $dd

    ld l, a                                       ; $43d6: $6f
    cp l                                          ; $43d7: $bd

jr_05d_43d8:
    or d                                          ; $43d8: $b2

jr_05d_43d9:
    jr c, @-$05                                   ; $43d9: $38 $f9

    sbc [hl]                                      ; $43db: $9e
    inc de                                        ; $43dc: $13
    sub a                                         ; $43dd: $97
    ld hl, sp-$5e                                 ; $43de: $f8 $a2
    adc d                                         ; $43e0: $8a
    xor b                                         ; $43e1: $a8
    ld l, $00                                     ; $43e2: $2e $00
    cp h                                          ; $43e4: $bc
    res 6, b                                      ; $43e5: $cb $b0
    ld a, e                                       ; $43e7: $7b
    ld [$587b], sp                                ; $43e8: $08 $7b $58
    ld d, d                                       ; $43eb: $52
    cp $36                                        ; $43ec: $fe $36
    xor l                                         ; $43ee: $ad
    xor l                                         ; $43ef: $ad
    ld a, [hl-]                                   ; $43f0: $3a
    jr jr_05d_43d8                                ; $43f1: $18 $e5

    call nc, $ff4a                                ; $43f3: $d4 $4a $ff
    or $ff                                        ; $43f6: $f6 $ff
    bit 3, [hl]                                   ; $43f8: $cb $5e
    ld [hl], e                                    ; $43fa: $73
    or b                                          ; $43fb: $b0
    dec [hl]                                      ; $43fc: $35
    ei                                            ; $43fd: $fb
    ld c, e                                       ; $43fe: $4b
    ld a, h                                       ; $43ff: $7c
    db $db                                        ; $4400: $db
    ld d, c                                       ; $4401: $51
    jp z, $9571                                   ; $4402: $ca $71 $95

    ld a, a                                       ; $4405: $7f
    jp c, $9afb                                   ; $4406: $da $fb $9a

    ld a, b                                       ; $4409: $78
    xor $78                                       ; $440a: $ee $78
    ld sp, hl                                     ; $440c: $f9
    ld b, h                                       ; $440d: $44
    ld c, l                                       ; $440e: $4d
    jp z, Jump_000_26d2                           ; $440f: $ca $d2 $26

    db $fd                                        ; $4412: $fd
    adc $7f                                       ; $4413: $ce $7f
    jr z, jr_05d_4417                             ; $4415: $28 $00

jr_05d_4417:
    ld l, [hl]                                    ; $4417: $6e
    ld d, a                                       ; $4418: $57
    ld b, a                                       ; $4419: $47
    ld c, h                                       ; $441a: $4c
    db $db                                        ; $441b: $db
    and h                                         ; $441c: $a4
    or b                                          ; $441d: $b0
    ld h, $0a                                     ; $441e: $26 $0a
    add $b9                                       ; $4420: $c6 $b9
    and l                                         ; $4422: $a5
    ld a, h                                       ; $4423: $7c
    rst $38                                       ; $4424: $ff
    sbc h                                         ; $4425: $9c
    add a                                         ; $4426: $87
    sub d                                         ; $4427: $92
    inc bc                                        ; $4428: $03
    jp z, $ba9a                                   ; $4429: $ca $9a $ba

    ld b, e                                       ; $442c: $43
    ld e, b                                       ; $442d: $58
    dec a                                         ; $442e: $3d
    ld a, [c]                                     ; $442f: $f2
    xor a                                         ; $4430: $af
    dec bc                                        ; $4431: $0b
    nop                                           ; $4432: $00
    sbc [hl]                                      ; $4433: $9e
    rst $38                                       ; $4434: $ff
    call nz, $d13d                                ; $4435: $c4 $3d $d1
    inc de                                        ; $4438: $13
    ld h, l                                       ; $4439: $65
    ld e, e                                       ; $443a: $5b
    and h                                         ; $443b: $a4
    ld a, e                                       ; $443c: $7b
    ld l, e                                       ; $443d: $6b
    ld a, h                                       ; $443e: $7c
    ld d, d                                       ; $443f: $52
    ld c, $b1                                     ; $4440: $0e $b1
    dec sp                                        ; $4442: $3b
    jr jr_05d_43d9                                ; $4443: $18 $94

    ld a, b                                       ; $4445: $78
    jp Jump_05d_76e6                              ; $4446: $c3 $e6 $76


    ld h, a                                       ; $4449: $67
    ld l, e                                       ; $444a: $6b
    db $db                                        ; $444b: $db
    adc d                                         ; $444c: $8a
    adc d                                         ; $444d: $8a
    ei                                            ; $444e: $fb
    and [hl]                                      ; $444f: $a6
    ld [de], a                                    ; $4450: $12
    ld a, [$336b]                                 ; $4451: $fa $6b $33
    adc $18                                       ; $4454: $ce $18
    dec h                                         ; $4456: $25
    ld hl, sp-$6b                                 ; $4457: $f8 $95
    ld d, e                                       ; $4459: $53
    ld a, [de]                                    ; $445a: $1a
    rst $30                                       ; $445b: $f7
    ld c, l                                       ; $445c: $4d
    and l                                         ; $445d: $a5
    or a                                          ; $445e: $b7
    push bc                                       ; $445f: $c5
    ld c, l                                       ; $4460: $4d
    or a                                          ; $4461: $b7
    sub d                                         ; $4462: $92
    add d                                         ; $4463: $82
    or c                                          ; $4464: $b1
    rst $20                                       ; $4465: $e7
    dec hl                                        ; $4466: $2b
    ld [hl], $a7                                  ; $4467: $36 $a7
    sub $1c                                       ; $4469: $d6 $1c
    db $e3                                        ; $446b: $e3
    inc c                                         ; $446c: $0c
    reti                                          ; $446d: $d9


    sub $38                                       ; $446e: $d6 $38
    daa                                           ; $4470: $27
    ld l, $00                                     ; $4471: $2e $00
    cp h                                          ; $4473: $bc
    ld a, b                                       ; $4474: $78
    xor $90                                       ; $4475: $ee $90
    ld c, a                                       ; $4477: $4f
    call nc, $2504                                ; $4478: $d4 $04 $25
    ld e, $2a                                     ; $447b: $1e $2a
    ld h, l                                       ; $447d: $65
    ld l, h                                       ; $447e: $6c
    cp e                                          ; $447f: $bb
    ld d, a                                       ; $4480: $57
    ld a, $91                                     ; $4481: $3e $91
    dec [hl]                                      ; $4483: $35
    ret                                           ; $4484: $c9


Jump_05d_4485:
    and d                                         ; $4485: $a2
    inc [hl]                                      ; $4486: $34
    pop af                                        ; $4487: $f1
    call c, $d3eb                                 ; $4488: $dc $eb $d3
    ld e, d                                       ; $448b: $5a
    sub h                                         ; $448c: $94
    ld h, $2e                                     ; $448d: $26 $2e
    ei                                            ; $448f: $fb
    ld [de], a                                    ; $4490: $12
    and [hl]                                      ; $4491: $a6
    db $db                                        ; $4492: $db
    ld d, $9a                                     ; $4493: $16 $9a
    add e                                         ; $4495: $83
    ld sp, hl                                     ; $4496: $f9
    db $db                                        ; $4497: $db
    or $f0                                        ; $4498: $f6 $f0
    ld c, b                                       ; $449a: $48
    rst $08                                       ; $449b: $cf
    sbc d                                         ; $449c: $9a
    dec a                                         ; $449d: $3d
    or a                                          ; $449e: $b7
    inc a                                         ; $449f: $3c
    ld a, d                                       ; $44a0: $7a
    pop bc                                        ; $44a1: $c1
    call nz, $b0e0                                ; $44a2: $c4 $e0 $b0
    ld e, [hl]                                    ; $44a5: $5e
    push hl                                       ; $44a6: $e5
    rst $08                                       ; $44a7: $cf
    xor $b7                                       ; $44a8: $ee $b7
    ld e, [hl]                                    ; $44aa: $5e
    and l                                         ; $44ab: $a5
    rst $08                                       ; $44ac: $cf
    jp nc, Jump_000_3d1f                          ; $44ad: $d2 $1f $3d

    and [hl]                                      ; $44b0: $a6
    ld b, l                                       ; $44b1: $45
    ret                                           ; $44b2: $c9


    daa                                           ; $44b3: $27
    or d                                          ; $44b4: $b2
    and [hl]                                      ; $44b5: $a6
    sbc e                                         ; $44b6: $9b
    adc $21                                       ; $44b7: $ce $21
    ld sp, hl                                     ; $44b9: $f9
    or c                                          ; $44ba: $b1
    inc de                                        ; $44bb: $13
    ld c, e                                       ; $44bc: $4b
    or [hl]                                       ; $44bd: $b6
    ld b, [hl]                                    ; $44be: $46
    ld d, h                                       ; $44bf: $54
    call c, $9072                                 ; $44c0: $dc $72 $90
    or l                                          ; $44c3: $b5
    ld a, b                                       ; $44c4: $78
    ld a, $21                                     ; $44c5: $3e $21
    or [hl]                                       ; $44c7: $b6
    sub b                                         ; $44c8: $90
    dec l                                         ; $44c9: $2d
    pop bc                                        ; $44ca: $c1
    and e                                         ; $44cb: $a3
    ld a, e                                       ; $44cc: $7b
    ret c                                         ; $44cd: $d8

    sbc [hl]                                      ; $44ce: $9e
    inc de                                        ; $44cf: $13
    call c, $fc00                                 ; $44d0: $dc $00 $fc
    pop bc                                        ; $44d3: $c1
    ld a, [c]                                     ; $44d4: $f2
    ldh [rNR21], a                                ; $44d5: $e0 $16
    ld [hl], h                                    ; $44d7: $74
    add hl, bc                                    ; $44d8: $09
    or c                                          ; $44d9: $b1
    ei                                            ; $44da: $fb
    ld l, e                                       ; $44db: $6b
    db $f4                                        ; $44dc: $f4
    db $fc                                        ; $44dd: $fc
    cpl                                           ; $44de: $2f
    dec d                                         ; $44df: $15
    call $a9c8                                    ; $44e0: $cd $c8 $a9
    ld d, [hl]                                    ; $44e3: $56
    ld [hl], $5e                                  ; $44e4: $36 $5e
    ld c, l                                       ; $44e6: $4d
    ld b, l                                       ; $44e7: $45
    ld d, h                                       ; $44e8: $54
    rla                                           ; $44e9: $17
    nop                                           ; $44ea: $00
    cp h                                          ; $44eb: $bc
    ld a, a                                       ; $44ec: $7f
    and $33                                       ; $44ed: $e6 $33
    inc [hl]                                      ; $44ef: $34
    ld h, l                                       ; $44f0: $65
    ld l, h                                       ; $44f1: $6c
    cp e                                          ; $44f2: $bb
    ld d, a                                       ; $44f3: $57
    ld a, $91                                     ; $44f4: $3e $91
    dec [hl]                                      ; $44f6: $35
    ret                                           ; $44f7: $c9


    and d                                         ; $44f8: $a2
    inc [hl]                                      ; $44f9: $34
    pop af                                        ; $44fa: $f1
    call c, $d3eb                                 ; $44fb: $dc $eb $d3
    ld e, d                                       ; $44fe: $5a
    sub h                                         ; $44ff: $94
    ld h, $2e                                     ; $4500: $26 $2e
    ei                                            ; $4502: $fb
    ld [de], a                                    ; $4503: $12
    and [hl]                                      ; $4504: $a6
    db $db                                        ; $4505: $db
    ld d, $9a                                     ; $4506: $16 $9a
    dec de                                        ; $4508: $1b
    rst $20                                       ; $4509: $e7
    ld b, h                                       ; $450a: $44
    ld h, a                                       ; $450b: $67
    ld h, [hl]                                    ; $450c: $66
    and h                                         ; $450d: $a4
    ld c, c                                       ; $450e: $49
    ld e, c                                       ; $450f: $59
    ld d, e                                       ; $4510: $53
    ld c, [hl]                                    ; $4511: $4e
    ld h, [hl]                                    ; $4512: $66
    sub h                                         ; $4513: $94
    call nc, $ba3d                                ; $4514: $d4 $3d $ba
    ld e, a                                       ; $4517: $5f
    ld d, $f2                                     ; $4518: $16 $f2
    rlca                                          ; $451a: $07
    ld e, e                                       ; $451b: $5b
    and l                                         ; $451c: $a5
    ld d, h                                       ; $451d: $54
    ld c, l                                       ; $451e: $4d
    add d                                         ; $451f: $82
    rst $38                                       ; $4520: $ff
    call z, $baff                                 ; $4521: $cc $ff $ba
    call nz, Call_05d_67fb                        ; $4524: $c4 $fb $67
    ld a, $43                                     ; $4527: $3e $43
    ld d, e                                       ; $4529: $53
    add $b6                                       ; $452a: $c6 $b6
    sbc e                                         ; $452c: $9b
    ld c, b                                       ; $452d: $48
    ld sp, hl                                     ; $452e: $f9
    or e                                          ; $452f: $b3
    ei                                            ; $4530: $fb
    xor l                                         ; $4531: $ad
    ld d, a                                       ; $4532: $57
    ld sp, hl                                     ; $4533: $f9
    or e                                          ; $4534: $b3
    or a                                          ; $4535: $b7
    cp $17                                        ; $4536: $fe $17
    adc h                                         ; $4538: $8c
    db $fd                                        ; $4539: $fd
    ld e, e                                       ; $453a: $5b
    ld c, c                                       ; $453b: $49
    db $dd                                        ; $453c: $dd
    db $db                                        ; $453d: $db
    inc h                                         ; $453e: $24
    dec bc                                        ; $453f: $0b
    ld c, l                                       ; $4540: $4d
    ld e, h                                       ; $4541: $5c
    or $ca                                        ; $4542: $f6 $ca
    sbc a                                         ; $4544: $9f
    push af                                       ; $4545: $f5
    ld [c], a                                     ; $4546: $e2
    ld e, [hl]                                    ; $4547: $5e
    nop                                           ; $4548: $00
    cp h                                          ; $4549: $bc
    ld h, e                                       ; $454a: $63
    ld l, e                                       ; $454b: $6b
    cp [hl]                                       ; $454c: $be
    xor c                                         ; $454d: $a9
    ld b, e                                       ; $454e: $43
    rst $30                                       ; $454f: $f7
    jr z, jr_05d_459f                             ; $4550: $28 $4d

    inc a                                         ; $4552: $3c
    rst $30                                       ; $4553: $f7
    ld a, [$16b4]                                 ; $4554: $fa $b4 $16
    sub $24                                       ; $4557: $d6 $24
    add a                                         ; $4559: $87
    ld e, h                                       ; $455a: $5c
    adc h                                         ; $455b: $8c
    ld [hl], c                                    ; $455c: $71
    add hl, sp                                    ; $455d: $39
    inc sp                                        ; $455e: $33
    ld [hl], c                                    ; $455f: $71
    reti                                          ; $4560: $d9


    ld e, e                                       ; $4561: $5b
    cp a                                          ; $4562: $bf
    ld a, d                                       ; $4563: $7a
    inc bc                                        ; $4564: $03
    ld b, d                                       ; $4565: $42
    db $dd                                        ; $4566: $dd
    ld bc, $0e25                                  ; $4567: $01 $25 $0e
    db $eb                                        ; $456a: $eb
    dec l                                         ; $456b: $2d
    ld e, c                                       ; $456c: $59
    sub h                                         ; $456d: $94
    or d                                          ; $456e: $b2
    inc [hl]                                      ; $456f: $34
    ld c, [hl]                                    ; $4570: $4e
    sub e                                         ; $4571: $93
    ld h, $8b                                     ; $4572: $26 $8b
    sbc l                                         ; $4574: $9d
    di                                            ; $4575: $f3
    rst $08                                       ; $4576: $cf

jr_05d_4577:
    xor a                                         ; $4577: $af
    push bc                                       ; $4578: $c5
    jp hl                                         ; $4579: $e9


    rst $10                                       ; $457a: $d7
    db $fc                                        ; $457b: $fc
    inc a                                         ; $457c: $3c
    ret c                                         ; $457d: $d8

    sbc [hl]                                      ; $457e: $9e
    ld a, [hl]                                    ; $457f: $7e
    push hl                                       ; $4580: $e5
    cp e                                          ; $4581: $bb
    ld [hl], a                                    ; $4582: $77
    jr z, jr_05d_45a4                             ; $4583: $28 $1f

    ld e, b                                       ; $4585: $58
    push af                                       ; $4586: $f5
    add d                                         ; $4587: $82
    ld e, a                                       ; $4588: $5f
    rst $20                                       ; $4589: $e7
    or a                                          ; $458a: $b7
    sbc $b6                                       ; $458b: $de $b6
    ld h, h                                       ; $458d: $64
    db $db                                        ; $458e: $db
    inc h                                         ; $458f: $24
    rst $30                                       ; $4590: $f7
    add $ed                                       ; $4591: $c6 $ed
    db $fd                                        ; $4593: $fd
    add hl, bc                                    ; $4594: $09
    ld [$38b2], sp                                ; $4595: $08 $b2 $38
    daa                                           ; $4598: $27
    sub h                                         ; $4599: $94
    ld a, a                                       ; $459a: $7f
    jp c, $ff7b                                   ; $459b: $da $7b $ff

    rst $10                                       ; $459e: $d7

jr_05d_459f:
    ld [hl], l                                    ; $459f: $75
    ld e, l                                       ; $45a0: $5d
    ld l, d                                       ; $45a1: $6a
    db $ec                                        ; $45a2: $ec
    ld c, a                                       ; $45a3: $4f

jr_05d_45a4:
    ld l, d                                       ; $45a4: $6a
    inc d                                         ; $45a5: $14

Jump_05d_45a6:
    and [hl]                                      ; $45a6: $a6
    db $fd                                        ; $45a7: $fd
    di                                            ; $45a8: $f3
    ld e, a                                       ; $45a9: $5f
    inc de                                        ; $45aa: $13
    daa                                           ; $45ab: $27
    ld a, [bc]                                    ; $45ac: $0a
    ld e, $dd                                     ; $45ad: $1e $dd
    db $e3                                        ; $45af: $e3
    ld [bc], a                                    ; $45b0: $02
    sbc [hl]                                      ; $45b1: $9e
    ld a, a                                       ; $45b2: $7f
    jp c, $ff7b                                   ; $45b3: $da $7b $ff

    sub a                                         ; $45b6: $97
    xor $6d                                       ; $45b7: $ee $6d
    add d                                         ; $45b9: $82
    ld [bc], a                                    ; $45ba: $02
    cp h                                          ; $45bb: $bc
    ld h, e                                       ; $45bc: $63
    ld d, h                                       ; $45bd: $54
    push bc                                       ; $45be: $c5
    sbc c                                         ; $45bf: $99
    rst $38                                       ; $45c0: $ff
    and [hl]                                      ; $45c1: $a6
    ld a, e                                       ; $45c2: $7b
    ld a, h                                       ; $45c3: $7c
    ld d, d                                       ; $45c4: $52
    sub l                                         ; $45c5: $95
    or l                                          ; $45c6: $b5
    ld a, [hl-]                                   ; $45c7: $3a
    ld h, h                                       ; $45c8: $64
    ld sp, $abff                                  ; $45c9: $31 $ff $ab
    ld b, [hl]                                    ; $45cc: $46
    ld [hl], a                                    ; $45cd: $77
    jr z, jr_05d_4577                             ; $45ce: $28 $a7

    sub h                                         ; $45d0: $94
    ld c, d                                       ; $45d1: $4a
    ld l, a                                       ; $45d2: $6f
    adc e                                         ; $45d3: $8b
    sbc e                                         ; $45d4: $9b
    ld l, [hl]                                    ; $45d5: $6e
    add hl, bc                                    ; $45d6: $09
    add $9e                                       ; $45d7: $c6 $9e
    xor a                                         ; $45d9: $af
    ld e, b                                       ; $45da: $58
    ld [hl], l                                    ; $45db: $75
    db $ec                                        ; $45dc: $ec
    add hl, sp                                    ; $45dd: $39
    and c                                         ; $45de: $a1
    add hl, sp                                    ; $45df: $39
    add $19                                       ; $45e0: $c6 $19
    sub a                                         ; $45e2: $97
    inc a                                         ; $45e3: $3c
    dec hl                                        ; $45e4: $2b
    ld c, h                                       ; $45e5: $4c
    ei                                            ; $45e6: $fb
    rst $20                                       ; $45e7: $e7
    cp a                                          ; $45e8: $bf
    inc l                                         ; $45e9: $2c
    inc [hl]                                      ; $45ea: $34
    ld [hl], c                                    ; $45eb: $71
    reti                                          ; $45ec: $d9


    daa                                           ; $45ed: $27
    dec b                                         ; $45ee: $05
    cp a                                          ; $45ef: $bf
    xor $6d                                       ; $45f0: $ee $6d
    sub d                                         ; $45f2: $92
    add l                                         ; $45f3: $85
    ld a, [c]                                     ; $45f4: $f2
    ld c, a                                       ; $45f5: $4f
    ld a, e                                       ; $45f6: $7b
    rst $30                                       ; $45f7: $f7
    cp d                                          ; $45f8: $ba
    ld l, $59                                     ; $45f9: $2e $59
    ld [$ee4b], sp                                ; $45fb: $08 $4b $ee
    adc l                                         ; $45fe: $8d
    db $db                                        ; $45ff: $db
    ei                                            ; $4600: $fb
    inc de                                        ; $4601: $13
    db $10                                        ; $4602: $10
    ld h, h                                       ; $4603: $64
    ld d, c                                       ; $4604: $51
    add d                                         ; $4605: $82
    ld e, a                                       ; $4606: $5f
    ld c, $36                                     ; $4607: $0e $36
    ld bc, $6f3c                                  ; $4609: $01 $3c $6f
    ld [hl], d                                    ; $460c: $72
    rst $38                                       ; $460d: $ff
    db $fc                                        ; $460e: $fc
    dec e                                         ; $460f: $1d
    ld h, a                                       ; $4610: $67
    ld c, e                                       ; $4611: $4b
    add hl, sp                                    ; $4612: $39
    sbc l                                         ; $4613: $9d
    xor l                                         ; $4614: $ad
    jr z, @-$3d                                   ; $4615: $28 $c1

    and e                                         ; $4617: $a3
    ld a, e                                       ; $4618: $7b
    ld e, h                                       ; $4619: $5c

jr_05d_461a:
    nop                                           ; $461a: $00
    db $fc                                        ; $461b: $fc
    sub h                                         ; $461c: $94
    ld d, d                                       ; $461d: $52
    ret                                           ; $461e: $c9


    halt                                          ; $461f: $76
    ld c, l                                       ; $4620: $4d
    ld h, a                                       ; $4621: $67
    or a                                          ; $4622: $b7
    dec sp                                        ; $4623: $3b
    rlc h                                         ; $4624: $cb $04
    db $e3                                        ; $4626: $e3
    inc e                                         ; $4627: $1c
    ld c, c                                       ; $4628: $49
    pop bc                                        ; $4629: $c1
    ld e, b                                       ; $462a: $58
    di                                            ; $462b: $f3
    ld d, l                                       ; $462c: $55
    ld a, e                                       ; $462d: $7b
    xor a                                         ; $462e: $af
    or b                                          ; $462f: $b0
    db $e4                                        ; $4630: $e4
    ld h, b                                       ; $4631: $60
    inc de                                        ; $4632: $13
    ret nz                                        ; $4633: $c0

    di                                            ; $4634: $f3
    ld h, $f7                                     ; $4635: $26 $f7
    rst $08                                       ; $4637: $cf
    rst $18                                       ; $4638: $df
    ld [hl], c                                    ; $4639: $71
    ld l, $00                                     ; $463a: $2e $00
    ld a, h                                       ; $463c: $7c
    ld e, e                                       ; $463d: $5b
    and h                                         ; $463e: $a4
    jr z, jr_05d_461a                             ; $463f: $28 $d9

    rla                                           ; $4641: $17
    ld a, [hl+]                                   ; $4642: $2a
    adc d                                         ; $4643: $8a
    ld c, b                                       ; $4644: $48
    ld e, c                                       ; $4645: $59
    jp c, $c93b                                   ; $4646: $da $3b $c9

    ld [hl], h                                    ; $4649: $74
    ld l, a                                       ; $464a: $6f
    inc de                                        ; $464b: $13
    dec d                                         ; $464c: $15
    scf                                           ; $464d: $37
    nop                                           ; $464e: $00
    ld a, h                                       ; $464f: $7c
    or c                                          ; $4650: $b1
    db $10                                        ; $4651: $10
    ld a, [hl+]                                   ; $4652: $2a
    dec [hl]                                      ; $4653: $35
    ld h, l                                       ; $4654: $65
    sbc l                                         ; $4655: $9d
    ld h, l                                       ; $4656: $65
    ld a, [hl-]                                   ; $4657: $3a
    ld e, h                                       ; $4658: $5c
    ld e, c                                       ; $4659: $59
    inc de                                        ; $465a: $13
    adc c                                         ; $465b: $89
    daa                                           ; $465c: $27
    ret c                                         ; $465d: $d8

    cp l                                          ; $465e: $bd
    ld e, b                                       ; $465f: $58
    sub c                                         ; $4660: $91
    inc d                                         ; $4661: $14
    rst $08                                       ; $4662: $cf
    inc sp                                        ; $4663: $33
    sub [hl]                                      ; $4664: $96
    ld e, l                                       ; $4665: $5d
    ld [c], a                                     ; $4666: $e2
    and c                                         ; $4667: $a1
    ld [de], a                                    ; $4668: $12
    sub [hl]                                      ; $4669: $96
    and d                                         ; $466a: $a2
    ld l, h                                       ; $466b: $6c
    rst $28                                       ; $466c: $ef
    sbc e                                         ; $466d: $9b
    sub $c2                                       ; $466e: $d6 $c2
    adc h                                         ; $4670: $8c
    inc [hl]                                      ; $4671: $34
    add e                                         ; $4672: $83
    ld sp, $169c                                  ; $4673: $31 $9c $16
    ld h, [hl]                                    ; $4676: $66
    cpl                                           ; $4677: $2f
    jr @-$31                                      ; $4678: $18 $cd

    ld a, [hl]                                    ; $467a: $7e
    ld l, [hl]                                    ; $467b: $6e
    ld [hl], c                                    ; $467c: $71
    inc bc                                        ; $467d: $03
    sbc [hl]                                      ; $467e: $9e
    ld a, a                                       ; $467f: $7f
    jp c, $877b                                   ; $4680: $da $7b $87

    push af                                       ; $4683: $f5
    or e                                          ; $4684: $b3
    sub l                                         ; $4685: $95
    rst $20                                       ; $4686: $e7
    ret z                                         ; $4687: $c8

    ld d, b                                       ; $4688: $50
    add a                                         ; $4689: $87
    dec hl                                        ; $468a: $2b
    or e                                          ; $468b: $b3
    ld d, l                                       ; $468c: $55
    rst $00                                       ; $468d: $c7
    ld b, d                                       ; $468e: $42
    xor b                                         ; $468f: $a8
    push de                                       ; $4690: $d5
    sub h                                         ; $4691: $94
    or $36                                        ; $4692: $f6 $36
    or d                                          ; $4694: $b2
    ld e, d                                       ; $4695: $5a
    db $eb                                        ; $4696: $eb
    rst $20                                       ; $4697: $e7
    ld b, $3c                                     ; $4698: $06 $3c
    rst $08                                       ; $469a: $cf

jr_05d_469b:
    ld e, b                                       ; $469b: $58
    add $ad                                       ; $469c: $c6 $ad
    adc h                                         ; $469e: $8c
    ld l, l                                       ; $469f: $6d
    ld l, a                                       ; $46a0: $6f
    add hl, hl                                    ; $46a1: $29
    ld a, a                                       ; $46a2: $7f
    add [hl]                                      ; $46a3: $86
    db $db                                        ; $46a4: $db
    db $fd                                        ; $46a5: $fd
    cpl                                           ; $46a6: $2f
    db $db                                        ; $46a7: $db
    ld a, [de]                                    ; $46a8: $1a
    sbc a                                         ; $46a9: $9f
    sub h                                         ; $46aa: $94
    ld a, e                                       ; $46ab: $7b
    db $ec                                        ; $46ac: $ec
    inc de                                        ; $46ad: $13
    ld b, b                                       ; $46ae: $40
    call $8d60                                    ; $46af: $cd $60 $8d
    xor e                                         ; $46b2: $ab
    add sp, $26                                   ; $46b3: $e8 $26

Jump_05d_46b5:
    reti                                          ; $46b5: $d9


    sub $38                                       ; $46b6: $d6 $38
    rst $20                                       ; $46b8: $e7
    add l                                         ; $46b9: $85
    ld h, a                                       ; $46ba: $67
    ld [hl], l                                    ; $46bb: $75
    jr nc, jr_05d_469b                            ; $46bc: $30 $dd

    ld a, c                                       ; $46be: $79
    ld e, l                                       ; $46bf: $5d
    rla                                           ; $46c0: $17
    nop                                           ; $46c1: $00
    sbc h                                         ; $46c2: $9c
    ld l, c                                       ; $46c3: $69
    jp z, Jump_000_000d                           ; $46c4: $ca $0d $00

    cp h                                          ; $46c7: $bc
    pop bc                                        ; $46c8: $c1
    jr jr_05d_4739                                ; $46c9: $18 $6e

    srl l                                         ; $46cb: $cb $3d
    or $09                                        ; $46cd: $f6 $09
    ldh [$39], a                                  ; $46cf: $e0 $39
    ld hl, $6b18                                  ; $46d1: $21 $18 $6b
    adc [hl]                                      ; $46d4: $8e
    jp nc, Jump_05d_698c                          ; $46d5: $d2 $8c $69

    db $db                                        ; $46d8: $db
    ld e, c                                       ; $46d9: $59
    xor c                                         ; $46da: $a9
    sbc a                                         ; $46db: $9f
    ld l, l                                       ; $46dc: $6d
    ld a, l                                       ; $46dd: $7d

Jump_05d_46de:
    jp hl                                         ; $46de: $e9


    ld h, b                                       ; $46df: $60
    cp d                                          ; $46e0: $ba
    sub e                                         ; $46e1: $93
    adc b                                         ; $46e2: $88
    db $dd                                        ; $46e3: $dd
    ld de, $94d6                                  ; $46e4: $11 $d6 $94
    inc d                                         ; $46e7: $14
    adc h                                         ; $46e8: $8c
    db $dd                                        ; $46e9: $dd
    xor a                                         ; $46ea: $af
    sub h                                         ; $46eb: $94
    ld c, d                                       ; $46ec: $4a
    add a                                         ; $46ed: $87
    jp nc, Jump_05d_5b5e                          ; $46ee: $d2 $5e $5b

    push af                                       ; $46f1: $f5
    ret z                                         ; $46f2: $c8

    rst $18                                       ; $46f3: $df
    ld a, [$04bf]                                 ; $46f4: $fa $bf $04
    cp a                                          ; $46f7: $bf
    ld h, b                                       ; $46f8: $60
    inc e                                         ; $46f9: $1c
    dec a                                         ; $46fa: $3d
    sub $56                                       ; $46fb: $d6 $56
    ld sp, hl                                     ; $46fd: $f9
    rst $28                                       ; $46fe: $ef
    adc h                                         ; $46ff: $8c
    ld sp, $b76d                                  ; $4700: $31 $6d $b7
    ld l, $71                                     ; $4703: $2e $71
    cp $96                                        ; $4705: $fe $96
    ld d, d                                       ; $4707: $52
    xor d                                         ; $4708: $aa
    ld l, b                                       ; $4709: $68
    pop bc                                        ; $470a: $c1
    xor b                                         ; $470b: $a8
    cp c                                          ; $470c: $b9
    ld e, e                                       ; $470d: $5b
    or l                                          ; $470e: $b5
    sub a                                         ; $470f: $97
    inc e                                         ; $4710: $1c
    ld b, h                                       ; $4711: $44
    cp [hl]                                       ; $4712: $be
    rst $20                                       ; $4713: $e7
    call nz, $d2dc                                ; $4714: $c4 $dc $d2
    or b                                          ; $4717: $b0
    adc c                                         ; $4718: $89
    xor e                                         ; $4719: $ab
    ld a, [hl]                                    ; $471a: $7e
    or [hl]                                       ; $471b: $b6
    push af                                       ; $471c: $f5
    ld e, a                                       ; $471d: $5f
    add d                                         ; $471e: $82
    ld e, a                                       ; $471f: $5f
    add a                                         ; $4720: $87
    jp nc, $9d5e                                  ; $4721: $d2 $5e $9d

    db $dd                                        ; $4724: $dd
    add hl, sp                                    ; $4725: $39
    inc hl                                        ; $4726: $23
    adc $89                                       ; $4727: $ce $89
    dec bc                                        ; $4729: $0b
    nop                                           ; $472a: $00
    ld a, h                                       ; $472b: $7c
    and e                                         ; $472c: $a3
    ei                                            ; $472d: $fb
    xor a                                         ; $472e: $af
    db $eb                                        ; $472f: $eb
    ld [bc], a                                    ; $4730: $02
    cp h                                          ; $4731: $bc
    cp a                                          ; $4732: $bf
    ld [hl], e                                    ; $4733: $73
    rst $08                                       ; $4734: $cf
    add hl, bc                                    ; $4735: $09
    ld c, l                                       ; $4736: $4d
    inc a                                         ; $4737: $3c
    ld [hl], a                                    ; $4738: $77

jr_05d_4739:
    sbc h                                         ; $4739: $9c
    inc de                                        ; $473a: $13
    add d                                         ; $473b: $82
    jp hl                                         ; $473c: $e9


    call z, Call_05d_6675                         ; $473d: $cc $75 $66
    xor l                                         ; $4740: $ad
    ld b, a                                       ; $4741: $47
    dec [hl]                                      ; $4742: $35
    cp [hl]                                       ; $4743: $be
    ldh [$97], a                                  ; $4744: $e0 $97
    and a                                         ; $4746: $a7
    sbc b                                         ; $4747: $98
    adc $38                                       ; $4748: $ce $38
    dec sp                                        ; $474a: $3b
    pop af                                        ; $474b: $f1
    db $f4                                        ; $474c: $f4
    dec hl                                        ; $474d: $2b
    rst $18                                       ; $474e: $df
    add b                                         ; $474f: $80
    db $10                                        ; $4750: $10
    sub l                                         ; $4751: $95
    ld e, h                                       ; $4752: $5c
    halt                                          ; $4753: $76
    ld c, [hl]                                    ; $4754: $4e
    dec a                                         ; $4755: $3d
    db $fc                                        ; $4756: $fc
    rst $30                                       ; $4757: $f7
    rst $10                                       ; $4758: $d7
    ld a, [hl-]                                   ; $4759: $3a
    cp d                                          ; $475a: $ba
    jp hl                                         ; $475b: $e9


    cp d                                          ; $475c: $ba
    ld l, $b9                                     ; $475d: $2e $b9
    db $ec                                        ; $475f: $ec
    sbc h                                         ; $4760: $9c
    db $fc                                        ; $4761: $fc
    or l                                          ; $4762: $b5
    adc [hl]                                      ; $4763: $8e
    ld l, [hl]                                    ; $4764: $6e
    sub d                                         ; $4765: $92
    rra                                           ; $4766: $1f
    ld c, h                                       ; $4767: $4c
    push af                                       ; $4768: $f5
    ld a, a                                       ; $4769: $7f
    ccf                                           ; $476a: $3f
    scf                                           ; $476b: $37
    nop                                           ; $476c: $00
    ld l, $3b                                     ; $476d: $2e $3b
    daa                                           ; $476f: $27
    ld a, a                                       ; $4770: $7f
    xor l                                         ; $4771: $ad
    and e                                         ; $4772: $a3
    sbc e                                         ; $4773: $9b
    db $e4                                        ; $4774: $e4
    rlca                                          ; $4775: $07

jr_05d_4776:
    ld d, e                                       ; $4776: $53
    db $fd                                        ; $4777: $fd
    rst $18                                       ; $4778: $df
    rst $08                                       ; $4779: $cf
    dec c                                         ; $477a: $0d
    nop                                           ; $477b: $00
    ld e, $d1                                     ; $477c: $1e $d1
    sbc c                                         ; $477e: $99
    db $eb                                        ; $477f: $eb
    call z, $8f5a                                 ; $4780: $cc $5a $8f
    ld l, d                                       ; $4783: $6a
    call nc, $f99f                                ; $4784: $d4 $9f $f9
    xor a                                         ; $4787: $af
    ld [hl], h                                    ; $4788: $74
    ldh [$bd], a                                  ; $4789: $e0 $bd
    or [hl]                                       ; $478b: $b6
    and a                                         ; $478c: $a7
    cp a                                          ; $478d: $bf
    ld e, [hl]                                    ; $478e: $5e
    inc sp                                        ; $478f: $33
    adc $41                                       ; $4790: $ce $41
    ld h, l                                       ; $4792: $65
    db $d3                                        ; $4793: $d3
    or [hl]                                       ; $4794: $b6
    ld [hl], c                                    ; $4795: $71
    xor l                                         ; $4796: $ad
    rst $38                                       ; $4797: $ff
    ld [de], a                                    ; $4798: $12
    rst $38                                       ; $4799: $ff
    ei                                            ; $479a: $fb
    rst $38                                       ; $479b: $ff
    db $dd                                        ; $479c: $dd
    and c                                         ; $479d: $a1
    db $fc                                        ; $479e: $fc
    db $d3                                        ; $479f: $d3
    sbc $3b                                       ; $47a0: $de $3b
    xor h                                         ; $47a2: $ac
    sbc a                                         ; $47a3: $9f
    xor l                                         ; $47a4: $ad
    inc a                                         ; $47a5: $3c
    ld b, a                                       ; $47a6: $47
    add [hl]                                      ; $47a7: $86
    dec h                                         ; $47a8: $25
    sbc a                                         ; $47a9: $9f
    ret z                                         ; $47aa: $c8

    sub $88                                       ; $47ab: $d6 $88
    ld l, d                                       ; $47ad: $6a
    ld d, d                                       ; $47ae: $52
    ld d, [hl]                                    ; $47af: $56
    or l                                          ; $47b0: $b5
    and l                                         ; $47b1: $a5
    inc sp                                        ; $47b2: $33
    or b                                          ; $47b3: $b0
    cp $92                                        ; $47b4: $fe $92
    add e                                         ; $47b6: $83
    xor h                                         ; $47b7: $ac
    dec [hl]                                      ; $47b8: $35
    ld a, a                                       ; $47b9: $7f
    rst $20                                       ; $47ba: $e7
    ld e, h                                       ; $47bb: $5c
    push af                                       ; $47bc: $f5
    rst $08                                       ; $47bd: $cf
    ld e, a                                       ; $47be: $5f
    db $db                                        ; $47bf: $db
    ld d, d                                       ; $47c0: $52
    adc l                                         ; $47c1: $8d
    add hl, sp                                    ; $47c2: $39
    rst $00                                       ; $47c3: $c7
    db $fd                                        ; $47c4: $fd
    ld e, a                                       ; $47c5: $5f
    sub a                                         ; $47c6: $97
    and b                                         ; $47c7: $a0
    ld c, e                                       ; $47c8: $4b
    ld a, b                                       ; $47c9: $78
    ld b, d                                       ; $47ca: $42
    inc de                                        ; $47cb: $13
    ld l, l                                       ; $47cc: $6d
    cp $97                                        ; $47cd: $fe $97
    ld h, b                                       ; $47cf: $60
    inc e                                         ; $47d0: $1c
    dec a                                         ; $47d1: $3d
    ld l, d                                       ; $47d2: $6a
    or h                                          ; $47d3: $b4
    ld d, d                                       ; $47d4: $52
    ld a, [c]                                     ; $47d5: $f2
    add e                                         ; $47d6: $83
    ld l, [hl]                                    ; $47d7: $6e
    and d                                         ; $47d8: $a2
    ld d, d                                       ; $47d9: $52
    pop de                                        ; $47da: $d1
    sub [hl]                                      ; $47db: $96
    db $fc                                        ; $47dc: $fc
    ccf                                           ; $47dd: $3f
    jr nc, jr_05d_4776                            ; $47de: $30 $96

    inc a                                         ; $47e0: $3c
    push bc                                       ; $47e1: $c5
    ld [hl], h                                    ; $47e2: $74
    add $d9                                       ; $47e3: $c6 $d9
    adc c                                         ; $47e5: $89
    dec h                                         ; $47e6: $25
    ld a, a                                       ; $47e7: $7f
    ldh [$09], a                                  ; $47e8: $e0 $09
    db $eb                                        ; $47ea: $eb
    cp a                                          ; $47eb: $bf
    nop                                           ; $47ec: $00
    db $fc                                        ; $47ed: $fc
    ld [hl], h                                    ; $47ee: $74
    sub e                                         ; $47ef: $93
    or b                                          ; $47f0: $b0
    inc d                                         ; $47f1: $14
    add a                                         ; $47f2: $87
    ld l, [hl]                                    ; $47f3: $6e
    xor d                                         ; $47f4: $aa
    push de                                       ; $47f5: $d5
    db $fc                                        ; $47f6: $fc
    ei                                            ; $47f7: $fb
    rst $08                                       ; $47f8: $cf
    sub [hl]                                      ; $47f9: $96
    ld a, h                                       ; $47fa: $7c
    jp c, Jump_000_2e9c                           ; $47fb: $da $9c $2e

    pop af                                        ; $47fe: $f1
    cp $ce                                        ; $47ff: $fe $ce
    cp c                                          ; $4801: $b9
    ld [$a68d], a                                 ; $4802: $ea $8d $a6
    sbc h                                         ; $4805: $9c
    ld a, [hl-]                                   ; $4806: $3a
    xor c                                         ; $4807: $a9
    add sp, $26                                   ; $4808: $e8 $26
    db $dd                                        ; $480a: $dd
    or c                                          ; $480b: $b1
    db $10                                        ; $480c: $10
    ld a, [hl+]                                   ; $480d: $2a
    push af                                       ; $480e: $f5
    rst $08                                       ; $480f: $cf
    db $fd                                        ; $4810: $fd
    ei                                            ; $4811: $fb
    ld c, $79                                     ; $4812: $0e $79
    adc d                                         ; $4814: $8a
    jp hl                                         ; $4815: $e9


    adc h                                         ; $4816: $8c
    or e                                          ; $4817: $b3
    ld [hl], e                                    ; $4818: $73
    and d                                         ; $4819: $a2
    xor $a8                                       ; $481a: $ee $a8
    add sp, $5e                                   ; $481c: $e8 $5e
    add hl, sp                                    ; $481e: $39
    rst $28                                       ; $481f: $ef
    or d                                          ; $4820: $b2
    ld [hl], e                                    ; $4821: $73
    ld a, [c]                                     ; $4822: $f2
    rst $10                                       ; $4823: $d7
    ld a, [hl-]                                   ; $4824: $3a
    cp d                                          ; $4825: $ba
    jp hl                                         ; $4826: $e9


    ld [bc], a                                    ; $4827: $02
    ld c, $c7                                     ; $4828: $0e $c7
    or b                                          ; $482a: $b0
    add hl, sp                                    ; $482b: $39
    db $fc                                        ; $482c: $fc
    sub c                                         ; $482d: $91
    ld a, [bc]                                    ; $482e: $0a
    ld a, [hl]                                    ; $482f: $7e
    pop af                                        ; $4830: $f1
    ld [hl+], a                                   ; $4831: $22
    di                                            ; $4832: $f3
    or a                                          ; $4833: $b7
    ld h, [hl]                                    ; $4834: $66
    ld d, [hl]                                    ; $4835: $56
    or [hl]                                       ; $4836: $b6
    ld [hl], e                                    ; $4837: $73
    ld c, e                                       ; $4838: $4b
    sbc b                                         ; $4839: $98
    ld a, a                                       ; $483a: $7f
    dec hl                                        ; $483b: $2b
    rst $18                                       ; $483c: $df
    db $f4                                        ; $483d: $f4
    rst $10                                       ; $483e: $d7
    or $75                                        ; $483f: $f6 $75
    rst $00                                       ; $4841: $c7
    sbc [hl]                                      ; $4842: $9e
    inc de                                        ; $4843: $13
    sub a                                         ; $4844: $97
    ld a, b                                       ; $4845: $78
    ld b, d                                       ; $4846: $42
    ld h, a                                       ; $4847: $67
    adc h                                         ; $4848: $8c
    or e                                          ; $4849: $b3
    ld sp, hl                                     ; $484a: $f9
    ld [hl], a                                    ; $484b: $77
    ld d, d                                       ; $484c: $52
    pop de                                        ; $484d: $d1
    ld c, l                                       ; $484e: $4d
    cp d                                          ; $484f: $ba
    ld b, e                                       ; $4850: $43
    ld a, b                                       ; $4851: $78
    sub $f6                                       ; $4852: $d6 $f6
    cp [hl]                                       ; $4854: $be
    ld b, e                                       ; $4855: $43
    add hl, sp                                    ; $4856: $39
    ld l, [hl]                                    ; $4857: $6e
    ld b, l                                       ; $4858: $45
    or h                                          ; $4859: $b4
    ld [hl], d                                    ; $485a: $72
    call c, $7fee                                 ; $485b: $dc $ee $7f
    push af                                       ; $485e: $f5
    ldh a, [$df]                                  ; $485f: $f0 $df
    rst $00                                       ; $4861: $c7
    ld sp, hl                                     ; $4862: $f9
    ld a, a                                       ; $4863: $7f
    or [hl]                                       ; $4864: $b6
    ld [hl], h                                    ; $4865: $74
    add $a6                                       ; $4866: $c6 $a6
    ld h, e                                       ; $4868: $63
    ld l, l                                       ; $4869: $6d
    ld c, a                                       ; $486a: $4f
    rst $38                                       ; $486b: $ff
    dec h                                         ; $486c: $25
    rlca                                          ; $486d: $07
    sub h                                         ; $486e: $94
    ld b, d                                       ; $486f: $42
    adc b                                         ; $4870: $88
    ld c, d                                       ; $4871: $4a
    ld a, a                                       ; $4872: $7f
    jp nc, Jump_05d_73ff                          ; $4873: $d2 $ff $73

    cp $02                                        ; $4876: $fe $02
    ret nc                                        ; $4878: $d0

    sbc e                                         ; $4879: $9b
    ld d, h                                       ; $487a: $54
    ld l, h                                       ; $487b: $6c
    ld d, d                                       ; $487c: $52
    or c                                          ; $487d: $b1
    ld [$4b7f], a                                 ; $487e: $ea $7f $4b
    ld [$8dd9], a                                 ; $4881: $ea $d9 $8d
    ld a, a                                       ; $4884: $7f
    ld e, l                                       ; $4885: $5d
    rla                                           ; $4886: $17
    nop                                           ; $4887: $00
    cp h                                          ; $4888: $bc
    ld h, e                                       ; $4889: $63
    inc e                                         ; $488a: $1c
    or h                                          ; $488b: $b4
    cp $d7                                        ; $488c: $fe $d7
    and [hl]                                      ; $488e: $a6
    ld e, a                                       ; $488f: $5f
    ld [c], a                                     ; $4890: $e2
    ld h, b                                       ; $4891: $60
    sbc a                                         ; $4892: $9f
    rst $00                                       ; $4893: $c7
    jp hl                                         ; $4894: $e9


    cp a                                          ; $4895: $bf
    nop                                           ; $4896: $00
    ld a, h                                       ; $4897: $7c
    db $e3                                        ; $4898: $e3
    sbc $fa                                       ; $4899: $de $fa
    ld c, a                                       ; $489b: $4f
    ld [$f71e], a                                 ; $489c: $ea $1e $f7
    sub $7f                                       ; $489f: $d6 $7f
    ld d, d                                       ; $48a1: $52
    scf                                           ; $48a2: $37
    ld h, e                                       ; $48a3: $63
    db $ec                                        ; $48a4: $ec
    cp d                                          ; $48a5: $ba
    ld l, $00                                     ; $48a6: $2e $00
    sbc h                                         ; $48a8: $9c
    ld [hl], c                                    ; $48a9: $71
    ld [hl], d                                    ; $48aa: $72
    cp d                                          ; $48ab: $ba
    xor [hl]                                      ; $48ac: $ae
    ld c, e                                       ; $48ad: $4b
    ld d, $27                                     ; $48ae: $16 $27
    daa                                           ; $48b0: $27
    ld e, l                                       ; $48b1: $5d
    rst $10                                       ; $48b2: $d7
    dec [hl]                                      ; $48b3: $35
    add e                                         ; $48b4: $83
    ld sp, $d92c                                  ; $48b5: $31 $2c $d9
    sub $38                                       ; $48b8: $d6 $38
    daa                                           ; $48ba: $27
    xor [hl]                                      ; $48bb: $ae
    db $eb                                        ; $48bc: $eb
    ld [bc], a                                    ; $48bd: $02
    ld c, $cd                                     ; $48be: $0e $cd
    ld a, [$2eba]                                 ; $48c0: $fa $ba $2e
    sbc [hl]                                      ; $48c3: $9e
    ld h, b                                       ; $48c4: $60
    rst $30                                       ; $48c5: $f7
    ld h, d                                       ; $48c6: $62
    push bc                                       ; $48c7: $c5
    ld [hl], l                                    ; $48c8: $75
    ld e, l                                       ; $48c9: $5d
    sbc d                                         ; $48ca: $9a
    ld h, e                                       ; $48cb: $63
    sbc h                                         ; $48cc: $9c
    xor l                                         ; $48cd: $ad
    and h                                         ; $48ce: $a4
    and $d8                                       ; $48cf: $e6 $d8
    sbc d                                         ; $48d1: $9a
    cpl                                           ; $48d2: $2f
    ld c, $f6                                     ; $48d3: $0e $f6
    ld a, c                                       ; $48d5: $79
    ret z                                         ; $48d6: $c8

    rra                                           ; $48d7: $1f
    jp hl                                         ; $48d8: $e9


    ld e, b                                       ; $48d9: $58
    pop bc                                        ; $48da: $c1
    ld e, b                                       ; $48db: $58
    ld [hl], e                                    ; $48dc: $73
    sub h                                         ; $48dd: $94
    and $97                                       ; $48de: $e6 $97
    reti                                          ; $48e0: $d9


    ld e, a                                       ; $48e1: $5f
    ld [c], a                                     ; $48e2: $e2
    and c                                         ; $48e3: $a1
    jp nc, $e31c                                  ; $48e4: $d2 $1c $e3

    and b                                         ; $48e7: $a0
    push af                                       ; $48e8: $f5
    jp z, Jump_05d_438f                           ; $48e9: $ca $8f $43

    sub $59                                       ; $48ec: $d6 $59
    ld b, l                                       ; $48ee: $45
    sbc h                                         ; $48ef: $9c
    and [hl]                                      ; $48f0: $a6
    dec bc                                        ; $48f1: $0b
    nop                                           ; $48f2: $00
    sbc h                                         ; $48f3: $9c
    ld hl, $ab3c                                  ; $48f4: $21 $3c $ab
    db $fc                                        ; $48f7: $fc
    reti                                          ; $48f8: $d9


    db $fd                                        ; $48f9: $fd
    sub $ab                                       ; $48fa: $d6 $ab
    cp $37                                        ; $48fc: $fe $37
    pop af                                        ; $48fe: $f1
    cp $99                                        ; $48ff: $fe $99
    rst $08                                       ; $4901: $cf
    ret nc                                        ; $4902: $d0

    cp b                                          ; $4903: $b8
    ld bc, $ec1c                                  ; $4904: $01 $1c $ec
    di                                            ; $4907: $f3
    ld d, b                                       ; $4908: $50
    rst $38                                       ; $4909: $ff
    or $bf                                        ; $490a: $f6 $bf
    db $fc                                        ; $490c: $fc
    ccf                                           ; $490d: $3f
    ldh a, [$5b]                                  ; $490e: $f0 $5b
    rst $38                                       ; $4910: $ff
    adc e                                         ; $4911: $8b
    rst $30                                       ; $4912: $f7
    rst $08                                       ; $4913: $cf
    ld a, h                                       ; $4914: $7c
    add [hl]                                      ; $4915: $86
    db $d3                                        ; $4916: $d3
    ld [c], a                                     ; $4917: $e2
    sbc h                                         ; $4918: $9c
    ld c, b                                       ; $4919: $48
    ld [$8ede], a                                 ; $491a: $ea $de $8e
    jp nc, Jump_000_3cdc                          ; $491d: $d2 $dc $3c

    and d                                         ; $4920: $a2
    db $e4                                        ; $4921: $e4
    inc de                                        ; $4922: $13
    ld e, c                                       ; $4923: $59
    add h                                         ; $4924: $84
    ld h, $d9                                     ; $4925: $26 $d9
    ld c, [hl]                                    ; $4927: $4e
    ld e, e                                       ; $4928: $5b
    ld l, [hl]                                    ; $4929: $6e
    nop                                           ; $492a: $00
    ld a, h                                       ; $492b: $7c
    or c                                          ; $492c: $b1
    db $10                                        ; $492d: $10
    ld a, [hl+]                                   ; $492e: $2a
    dec [hl]                                      ; $492f: $35
    ld h, l                                       ; $4930: $65
    sbc l                                         ; $4931: $9d
    ld h, l                                       ; $4932: $65
    cp d                                          ; $4933: $ba
    and e                                         ; $4934: $a3
    adc d                                         ; $4935: $8a
    db $e4                                        ; $4936: $e4
    adc a                                         ; $4937: $8f
    ld [hl], h                                    ; $4938: $74
    call c, Call_000_25ff                         ; $4939: $dc $ff $25
    rst $30                                       ; $493c: $f7
    add $ed                                       ; $493d: $c6 $ed
    db $fd                                        ; $493f: $fd
    add hl, bc                                    ; $4940: $09
    ld [$38b2], sp                                ; $4941: $08 $b2 $38
    daa                                           ; $4944: $27
    ld l, $39                                     ; $4945: $2e $39
    ret c                                         ; $4947: $d8

    dec l                                         ; $4948: $2d
    db $dd                                        ; $4949: $dd
    or c                                          ; $494a: $b1
    db $10                                        ; $494b: $10
    ld a, [hl+]                                   ; $494c: $2a
    pop hl                                        ; $494d: $e1
    ld e, c                                       ; $494e: $59
    ld e, e                                       ; $494f: $5b
    ld sp, hl                                     ; $4950: $f9
    db $db                                        ; $4951: $db
    ld d, h                                       ; $4952: $54
    ld e, c                                       ; $4953: $59
    xor e                                         ; $4954: $ab
    inc hl                                        ; $4955: $23
    add l                                         ; $4956: $85
    sub b                                         ; $4957: $90
    ld h, b                                       ; $4958: $60
    call nc, $f1fc                                ; $4959: $d4 $fc $f1
    and l                                         ; $495c: $a5
    rst $18                                       ; $495d: $df
    ld sp, hl                                     ; $495e: $f9
    cpl                                           ; $495f: $2f
    db $db                                        ; $4960: $db
    xor $a8                                       ; $4961: $ee $a8
    dec bc                                        ; $4963: $0b
    nop                                           ; $4964: $00
    ld a, h                                       ; $4965: $7c
    and e                                         ; $4966: $a3
    ei                                            ; $4967: $fb
    ld [hl], l                                    ; $4968: $75
    rst $00                                       ; $4969: $c7
    sbc [hl]                                      ; $496a: $9e
    ld b, e                                       ; $496b: $43
    adc d                                         ; $496c: $8a
    dec d                                         ; $496d: $15
    sbc [hl]                                      ; $496e: $9e
    ld d, b                                       ; $496f: $50
    inc hl                                        ; $4970: $23
    ld h, h                                       ; $4971: $64
    xor l                                         ; $4972: $ad
    ld h, e                                       ; $4973: $63
    ei                                            ; $4974: $fb
    cp c                                          ; $4975: $b9
    dec b                                         ; $4976: $05
    cp l                                          ; $4977: $bd
    sub e                                         ; $4978: $93
    ld [hl], h                                    ; $4979: $74
    rst $00                                       ; $497a: $c7

jr_05d_497b:
    ld b, d                                       ; $497b: $42
    xor b                                         ; $497c: $a8
    inc [hl]                                      ; $497d: $34
    rst $00                                       ; $497e: $c7
    jr c, @+$65                                   ; $497f: $38 $63

    ld l, l                                       ; $4981: $6d
    dec d                                         ; $4982: $15
    sub b                                         ; $4983: $90
    jr nc, jr_05d_497b                            ; $4984: $30 $f5

    ld b, [hl]                                    ; $4986: $46
    inc de                                        ; $4987: $13
    ld l, c                                       ; $4988: $69
    ld l, [hl]                                    ; $4989: $6e
    ld e, $d6                                     ; $498a: $1e $d6
    and h                                         ; $498c: $a4
    cp $95                                        ; $498d: $fe $95
    ld b, e                                       ; $498f: $43
    ld l, $c6                                     ; $4990: $2e $c6
    cp b                                          ; $4992: $b8
    xor h                                         ; $4993: $ac
    jp hl                                         ; $4994: $e9


    ld [bc], a                                    ; $4995: $02
    sbc h                                         ; $4996: $9c
    ld sp, $f7d8                                  ; $4997: $31 $d8 $f7
    db $fc                                        ; $499a: $fc
    rst $10                                       ; $499b: $d7

jr_05d_499c:
    cp l                                          ; $499c: $bd
    dec [hl]                                      ; $499d: $35
    cp $12                                        ; $499e: $fe $12
    rst $18                                       ; $49a0: $df
    ld b, [hl]                                    ; $49a1: $46
    ld l, a                                       ; $49a2: $6f
    ld [hl], a                                    ; $49a3: $77
    jr z, jr_05d_4a25                             ; $49a4: $28 $7f

    halt                                          ; $49a6: $76
    rst $38                                       ; $49a7: $ff
    sub a                                         ; $49a8: $97
    and $a7                                       ; $49a9: $e6 $a7
    sub b                                         ; $49ab: $90
    or b                                          ; $49ac: $b0
    ld e, [hl]                                    ; $49ad: $5e
    ld b, l                                       ; $49ae: $45
    ld d, l                                       ; $49af: $55
    sub h                                         ; $49b0: $94
    and $d8                                       ; $49b1: $e6 $d8
    sub d                                         ; $49b3: $92
    push bc                                       ; $49b4: $c5
    ld h, b                                       ; $49b5: $60
    rst $38                                       ; $49b6: $ff
    ld sp, hl                                     ; $49b7: $f9
    sub a                                         ; $49b8: $97
    ld h, [hl]                                    ; $49b9: $66
    jr nc, @-$08                                  ; $49ba: $30 $f6

    dec h                                         ; $49bc: $25
    or [hl]                                       ; $49bd: $b6
    inc de                                        ; $49be: $13
    cp e                                          ; $49bf: $bb
    ld b, e                                       ; $49c0: $43
    inc de                                        ; $49c1: $13
    rst $00                                       ; $49c2: $c7
    add hl, de                                    ; $49c3: $19
    dec h                                         ; $49c4: $25
    inc hl                                        ; $49c5: $23
    xor d                                         ; $49c6: $aa
    and $82                                       ; $49c7: $e6 $82
    add hl, hl                                    ; $49c9: $29
    xor c                                         ; $49ca: $a9
    db $fc                                        ; $49cb: $fc
    ld d, a                                       ; $49cc: $57
    rst $30                                       ; $49cd: $f7
    ld [hl], $41                                  ; $49ce: $36 $41
    ld bc, $cf3c                                  ; $49d0: $01 $3c $cf
    xor $4d                                       ; $49d3: $ee $4d
    ld a, [hl+]                                   ; $49d5: $2a
    cp d                                          ; $49d6: $ba
    ld c, c                                       ; $49d7: $49
    ld sp, hl                                     ; $49d8: $f9
    ld d, a                                       ; $49d9: $57
    ld a, [$39ad]                                 ; $49da: $fa $ad $39
    xor d                                         ; $49dd: $aa
    or b                                          ; $49de: $b0
    call nz, Call_000_12be                        ; $49df: $c4 $be $12
    ld a, [$1eb5]                                 ; $49e2: $fa $b5 $1e
    db $d3                                        ; $49e5: $d3
    and d                                         ; $49e6: $a2
    dec [hl]                                      ; $49e7: $35
    scf                                           ; $49e8: $37
    adc $89                                       ; $49e9: $ce $89
    xor $dd                                       ; $49eb: $ee $dd
    cp d                                          ; $49ed: $ba
    call nz, Call_000_35b7                        ; $49ee: $c4 $b7 $35
    adc $79                                       ; $49f1: $ce $79
    ld h, c                                       ; $49f3: $61
    add hl, hl                                    ; $49f4: $29
    rst $18                                       ; $49f5: $df
    jr c, jr_05d_499c                             ; $49f6: $38 $a4

    ld sp, hl                                     ; $49f8: $f9
    jp hl                                         ; $49f9: $e9


    adc c                                         ; $49fa: $89
    ld l, b                                       ; $49fb: $68
    push af                                       ; $49fc: $f5
    sbc a                                         ; $49fd: $9f
    inc de                                        ; $49fe: $13
    ld h, [hl]                                    ; $49ff: $66
    ld a, a                                       ; $4a00: $7f
    ld bc, $6fbc                                  ; $4a01: $01 $bc $6f
    jp z, Jump_000_2b7f                           ; $4a04: $ca $7f $2b

    xor c                                         ; $4a07: $a9
    ei                                            ; $4a08: $fb
    db $d3                                        ; $4a09: $d3
    sbc $3c                                       ; $4a0a: $de $3c
    ld c, [hl]                                    ; $4a0c: $4e
    adc d                                         ; $4a0d: $8a
    ld [c], a                                     ; $4a0e: $e2
    ld a, c                                       ; $4a0f: $79
    add $32                                       ; $4a10: $c6 $32
    add hl, sp                                    ; $4a12: $39
    call nz, Call_05d_60ee                        ; $4a13: $c4 $ee $60
    ld [hl], e                                    ; $4a16: $73
    ld c, e                                       ; $4a17: $4b
    ld h, a                                       ; $4a18: $67
    or a                                          ; $4a19: $b7
    dec sp                                        ; $4a1a: $3b
    bit 4, h                                      ; $4a1b: $cb $64
    ld sp, $ffd8                                  ; $4a1d: $31 $d8 $ff
    ld a, l                                       ; $4a20: $7d
    rst $00                                       ; $4a21: $c7
    dec h                                         ; $4a22: $25
    ld c, $08                                     ; $4a23: $0e $08

jr_05d_4a25:
    or $ab                                        ; $4a25: $f6 $ab

jr_05d_4a27:
    ret                                           ; $4a27: $c9


    adc h                                         ; $4a28: $8c
    call nz, Call_000_09f3                        ; $4a29: $c4 $f3 $09
    or c                                          ; $4a2c: $b1
    add l                                         ; $4a2d: $85
    db $ec                                        ; $4a2e: $ec
    ld e, a                                       ; $4a2f: $5f
    ld [hl], d                                    ; $4a30: $72
    db $ec                                        ; $4a31: $ec
    ret nc                                        ; $4a32: $d0

    inc h                                         ; $4a33: $24
    dec e                                         ; $4a34: $1d
    ld c, d                                       ; $4a35: $4a
    ld hl, $7ba1                                  ; $4a36: $21 $a1 $7b
    db $d3                                        ; $4a39: $d3
    xor l                                         ; $4a3a: $ad

Call_05d_4a3b:
    ld c, c                                       ; $4a3b: $49
    ld d, h                                       ; $4a3c: $54
    ld c, c                                       ; $4a3d: $49
    push af                                       ; $4a3e: $f5
    xor a                                         ; $4a3f: $af
    ret c                                         ; $4a40: $d8

    ld d, a                                       ; $4a41: $57
    ld b, d                                       ; $4a42: $42
    cp a                                          ; $4a43: $bf
    sub $c3                                       ; $4a44: $d6 $c3
    add h                                         ; $4a46: $84
    and l                                         ; $4a47: $a5
    ld sp, hl                                     ; $4a48: $f9
    ld l, c                                       ; $4a49: $69
    cp a                                          ; $4a4a: $bf
    ld h, $e6                                     ; $4a4b: $26 $e6
    ld [hl], c                                    ; $4a4d: $71
    ei                                            ; $4a4e: $fb
    ld a, e                                       ; $4a4f: $7b
    ld bc, $9e1e                                  ; $4a50: $01 $1e $9e
    cp $bf                                        ; $4a53: $fe $bf
    call nz, $ce71                                ; $4a55: $c4 $71 $ce
    ld a, a                                       ; $4a58: $7f
    ld c, l                                       ; $4a59: $4d
    inc [hl]                                      ; $4a5a: $34
    reti                                          ; $4a5b: $d9


    ld [hl], $29                                  ; $4a5c: $36 $29
    rst $38                                       ; $4a5e: $ff
    ld [hl], e                                    ; $4a5f: $73
    rst $28                                       ; $4a60: $ef
    or $eb                                        ; $4a61: $f6 $eb
    ld d, b                                       ; $4a63: $50
    jp c, Jump_000_1371                           ; $4a64: $da $71 $13

    sub l                                         ; $4a67: $95
    xor $68                                       ; $4a68: $ee $68
    inc hl                                        ; $4a6a: $23
    ld d, $6b                                     ; $4a6b: $16 $6b
    ld [hl], $ce                                  ; $4a6d: $36 $ce
    add hl, bc                                    ; $4a6f: $09
    jr z, jr_05d_4a72                             ; $4a70: $28 $00

jr_05d_4a72:
    ld a, h                                       ; $4a72: $7c
    ld e, e                                       ; $4a73: $5b
    and h                                         ; $4a74: $a4
    jr z, @-$09                                   ; $4a75: $28 $f5

    ret nz                                        ; $4a77: $c0

    xor d                                         ; $4a78: $aa
    ret nc                                        ; $4a79: $d0

    dec e                                         ; $4a7a: $1d
    ld l, l                                       ; $4a7b: $6d
    ld b, h                                       ; $4a7c: $44
    and l                                         ; $4a7d: $a5
    dec sp                                        ; $4a7e: $3b
    ld a, [hl+]                                   ; $4a7f: $2a
    cp b                                          ; $4a80: $b8
    ld bc, $3ffc                                  ; $4a81: $01 $fc $3f
    rst $00                                       ; $4a84: $c7
    jr c, @-$17                                   ; $4a85: $38 $e7

    ld [hl], l                                    ; $4a87: $75
    ld b, a                                       ; $4a88: $47
    ld [hl], h                                    ; $4a89: $74
    ld d, d                                       ; $4a8a: $52
    jr nc, jr_05d_4a27                            ; $4a8b: $30 $9a

    xor $d8                                       ; $4a8d: $ee $d8
    ld a, [$f16f]                                 ; $4a8f: $fa $6f $f1
    ld h, a                                       ; $4a92: $67
    daa                                           ; $4a93: $27
    di                                            ; $4a94: $f3
    ccf                                           ; $4a95: $3f

jr_05d_4a96:
    sbc l                                         ; $4a96: $9d
    ld l, a                                       ; $4a97: $6f
    or $f2                                        ; $4a98: $f6 $f2
    inc sp                                        ; $4a9a: $33
    res 1, b                                      ; $4a9b: $cb $88
    ld e, e                                       ; $4a9d: $5b
    cp h                                          ; $4a9e: $bc
    rst $18                                       ; $4a9f: $df
    adc l                                         ; $4aa0: $8d
    di                                            ; $4aa1: $f3
    rst $18                                       ; $4aa2: $df
    call nc, Call_000_1554                        ; $4aa3: $d4 $54 $15
    sub a                                         ; $4aa6: $97
    ld hl, sp-$77                                 ; $4aa7: $f8 $89
    sub h                                         ; $4aa9: $94
    and d                                         ; $4aaa: $a2
    rra                                           ; $4aab: $1f
    ld e, e                                       ; $4aac: $5b
    ld d, c                                       ; $4aad: $51
    ld l, d                                       ; $4aae: $6a
    ld [hl-], a                                   ; $4aaf: $32
    inc hl                                        ; $4ab0: $23
    db $dd                                        ; $4ab1: $dd
    rst $38                                       ; $4ab2: $ff
    ld h, [hl]                                    ; $4ab3: $66
    cpl                                           ; $4ab4: $2f
    inc l                                         ; $4ab5: $2c
    ld h, l                                       ; $4ab6: $65
    db $d3                                        ; $4ab7: $d3

jr_05d_4ab8:
    sub $9e                                       ; $4ab8: $d6 $9e
    push hl                                       ; $4aba: $e5
    ld l, e                                       ; $4abb: $6b
    ld d, c                                       ; $4abc: $51
    jp z, $f583                                   ; $4abd: $ca $83 $f5

    ld e, a                                       ; $4ac0: $5f
    ld [c], a                                     ; $4ac1: $e2
    daa                                           ; $4ac2: $27
    ld a, [hl-]                                   ; $4ac3: $3a
    add a                                         ; $4ac4: $87
    add h                                         ; $4ac5: $84
    dec h                                         ; $4ac6: $25
    jr jr_05d_4a96                                ; $4ac7: $18 $cd

    ld a, [hl]                                    ; $4ac9: $7e
    ld c, e                                       ; $4aca: $4b
    cp $a7                                        ; $4acb: $fe $a7
    ld l, a                                       ; $4acd: $6f
    cp l                                          ; $4ace: $bd
    ld a, [hl-]                                   ; $4acf: $3a
    jr c, jr_05d_4ab8                             ; $4ad0: $38 $e6

    db $fc                                        ; $4ad2: $fc
    xor a                                         ; $4ad3: $af
    ld e, $35                                     ; $4ad4: $1e $35
    sub h                                         ; $4ad6: $94
    ld c, l                                       ; $4ad7: $4d
    ld e, e                                       ; $4ad8: $5b
    ld a, e                                       ; $4ad9: $7b
    sub [hl]                                      ; $4ada: $96
    ld l, a                                       ; $4adb: $6f
    ld b, l                                       ; $4adc: $45
    dec h                                         ; $4add: $25
    dec b                                         ; $4ade: $05

Jump_05d_4adf:
    cp a                                          ; $4adf: $bf

jr_05d_4ae0:
    xor $50                                       ; $4ae0: $ee $50
    db $f4                                        ; $4ae2: $f4
    ld [hl], $51                                  ; $4ae3: $36 $51
    xor c                                         ; $4ae5: $a9
    or d                                          ; $4ae6: $b2
    sub [hl]                                      ; $4ae7: $96
    add l                                         ; $4ae8: $85
    ret c                                         ; $4ae9: $d8

    adc a                                         ; $4aea: $8f
    add hl, sp                                    ; $4aeb: $39
    rst $18                                       ; $4aec: $df
    ld a, a                                       ; $4aed: $7f
    ld [hl], $ff                                  ; $4aee: $36 $ff
    ld [bc], a                                    ; $4af0: $02
    ld a, h                                       ; $4af1: $7c
    db $db                                        ; $4af2: $db
    inc h                                         ; $4af3: $24
    jr jr_05d_4b43                                ; $4af4: $18 $4d

    ld d, $3a                                     ; $4af6: $16 $3a
    jr c, jr_05d_4ae0                             ; $4af8: $38 $e6

    db $fc                                        ; $4afa: $fc
    xor a                                         ; $4afb: $af
    ld e, $35                                     ; $4afc: $1e $35
    ld e, d                                       ; $4afe: $5a
    reti                                          ; $4aff: $d9


    or h                                          ; $4b00: $b4
    or l                                          ; $4b01: $b5
    ld h, a                                       ; $4b02: $67
    ld sp, hl                                     ; $4b03: $f9
    ld d, [hl]                                    ; $4b04: $56
    sub h                                         ; $4b05: $94
    ld c, $57                                     ; $4b06: $0e $57
    sub $44                                       ; $4b08: $d6 $44
    cp d                                          ; $4b0a: $ba
    ld h, e                                       ; $4b0b: $63
    ld hl, $8ad4                                  ; $4b0c: $21 $d4 $8a
    or d                                          ; $4b0f: $b2
    dec l                                         ; $4b10: $2d
    jr z, jr_05d_4b13                             ; $4b11: $28 $00

jr_05d_4b13:
    ld a, h                                       ; $4b13: $7c
    pop de                                        ; $4b14: $d1
    ld b, [hl]                                    ; $4b15: $46
    ld h, [hl]                                    ; $4b16: $66
    and h                                         ; $4b17: $a4
    ld e, b                                       ; $4b18: $58
    ld hl, $deea                                  ; $4b19: $21 $ea $de
    ld h, $2a                                     ; $4b1c: $26 $2a
    ld sp, hl                                     ; $4b1e: $f9
    ld [hl], c                                    ; $4b1f: $71
    xor b                                         ; $4b20: $a8
    sbc e                                         ; $4b21: $9b
    ld [hl], d                                    ; $4b22: $72
    and d                                         ; $4b23: $a2
    and h                                         ; $4b24: $a4
    and $a8                                       ; $4b25: $e6 $a8
    db $f4                                        ; $4b27: $f4
    ld c, e                                       ; $4b28: $4b
    ld a, [hl]                                    ; $4b29: $7e
    ld h, [hl]                                    ; $4b2a: $66
    ld e, c                                       ; $4b2b: $59
    ld [hl], a                                    ; $4b2c: $77
    add sp, $1e                                   ; $4b2d: $e8 $1e
    and l                                         ; $4b2f: $a5
    cp $15                                        ; $4b30: $fe $15
    ccf                                           ; $4b32: $3f
    or d                                          ; $4b33: $b2
    cpl                                           ; $4b34: $2f
    push hl                                       ; $4b35: $e5
    dec de                                        ; $4b36: $1b
    inc l                                         ; $4b37: $2c
    adc $a1                                       ; $4b38: $ce $a1

jr_05d_4b3a:
    ld c, e                                       ; $4b3a: $4b
    adc [hl]                                      ; $4b3b: $8e
    sbc l                                         ; $4b3c: $9d
    ld c, c                                       ; $4b3d: $49
    and h                                         ; $4b3e: $a4
    ld b, e                                       ; $4b3f: $43
    ld l, c                                       ; $4b40: $69
    rst $00                                       ; $4b41: $c7
    db $e4                                        ; $4b42: $e4

jr_05d_4b43:
    jp nc, $e9bd                                  ; $4b43: $d2 $bd $e9

    sub $24                                       ; $4b46: $d6 $24
    ld a, [hl+]                                   ; $4b48: $2a
    ld sp, hl                                     ; $4b49: $f9
    ld a, b                                       ; $4b4a: $78
    add $e9                                       ; $4b4b: $c6 $e9
    cp a                                          ; $4b4d: $bf
    call nz, $8217                                ; $4b4e: $c4 $17 $82
    ld a, a                                       ; $4b51: $7f
    cp $57                                        ; $4b52: $fe $57
    adc l                                         ; $4b54: $8d
    cp $2f                                        ; $4b55: $fe $2f
    call Call_05d_7b4f                            ; $4b57: $cd $4f $7b
    rst $38                                       ; $4b5a: $ff
    ld [bc], a                                    ; $4b5b: $02
    ld e, $a1                                     ; $4b5c: $1e $a1
    jp hl                                         ; $4b5e: $e9


    sbc $1a                                       ; $4b5f: $de $1a
    and l                                         ; $4b61: $a5
    and [hl]                                      ; $4b62: $a6
    xor h                                         ; $4b63: $ac
    or e                                          ; $4b64: $b3
    ld c, h                                       ; $4b65: $4c
    ld [hl], a                                    ; $4b66: $77
    ld d, h                                       ; $4b67: $54
    sub c                                         ; $4b68: $91
    ld a, d                                       ; $4b69: $7a
    ld h, b                                       ; $4b6a: $60
    ld d, l                                       ; $4b6b: $55
    inc h                                         ; $4b6c: $24
    sub l                                         ; $4b6d: $95
    cp $19                                        ; $4b6e: $fe $19
    ld e, a                                       ; $4b70: $5f
    ld [c], a                                     ; $4b71: $e2
    ld b, a                                       ; $4b72: $47
    or $a5                                        ; $4b73: $f6 $a5
    ld a, e                                       ; $4b75: $7b
    call z, $baff                                 ; $4b76: $cc $ff $ba
    nop                                           ; $4b79: $00
    sbc h                                         ; $4b7a: $9c
    ld [hl], c                                    ; $4b7b: $71
    ld [hl], d                                    ; $4b7c: $72
    sub d                                         ; $4b7d: $92
    sbc a                                         ; $4b7e: $9f

Jump_05d_4b7f:
    ld h, l                                       ; $4b7f: $65
    sub a                                         ; $4b80: $97
    jr c, jr_05d_4b3a                             ; $4b81: $38 $b7

    ld [hl], l                                    ; $4b83: $75
    ld l, a                                       ; $4b84: $6f
    ld d, c                                       ; $4b85: $51
    ld d, d                                       ; $4b86: $52
    inc a                                         ; $4b87: $3c
    rst $08                                       ; $4b88: $cf
    ld e, b                                       ; $4b89: $58
    ld h, $f8                                     ; $4b8a: $26 $f8
    push bc                                       ; $4b8c: $c5
    inc de                                        ; $4b8d: $13
    db $ec                                        ; $4b8e: $ec
    ld e, [hl]                                    ; $4b8f: $5e
    xor h                                         ; $4b90: $ac
    ret nc                                        ; $4b91: $d0

    dec e                                         ; $4b92: $1d
    ld d, l                                       ; $4b93: $55
    ld b, h                                       ; $4b94: $44
    and l                                         ; $4b95: $a5
    inc l                                         ; $4b96: $2c
    db $ed                                        ; $4b97: $ed
    adc b                                         ; $4b98: $88
    sub d                                         ; $4b99: $92
    adc l                                         ; $4b9a: $8d
    ld d, c                                       ; $4b9b: $51
    db $fd                                        ; $4b9c: $fd

jr_05d_4b9d:
    ld e, a                                       ; $4b9d: $5f
    ld c, c                                       ; $4b9e: $49
    pop bc                                        ; $4b9f: $c1
    cpl                                           ; $4ba0: $2f
    rst $30                                       ; $4ba1: $f7
    ret c                                         ; $4ba2: $d8

    daa                                           ; $4ba3: $27
    add b                                         ; $4ba4: $80
    cp d                                          ; $4ba5: $ba

Jump_05d_4ba6:
    and e                                         ; $4ba6: $a3
    ld [hl+], a                                   ; $4ba7: $22
    db $e4                                        ; $4ba8: $e4
    jr nz, jr_05d_4b9d                            ; $4ba9: $20 $f2

    dec a                                         ; $4bab: $3d
    daa                                           ; $4bac: $27
    ld c, d                                       ; $4bad: $4a
    ldh a, [$8b]                                  ; $4bae: $f0 $8b
    rra                                           ; $4bb0: $1f
    reti                                          ; $4bb1: $d9


    sub a                                         ; $4bb2: $97
    and $97                                       ; $4bb3: $e6 $97
    xor c                                         ; $4bb5: $a9
    ld [hl], c                                    ; $4bb6: $71
    db $ed                                        ; $4bb7: $ed
    rst $38                                       ; $4bb8: $ff
    sbc h                                         ; $4bb9: $9c
    cp b                                          ; $4bba: $b8
    db $e4                                        ; $4bbb: $e4
    ld de, $7a9a                                  ; $4bbc: $11 $9a $7a
    sbc h                                         ; $4bbf: $9c
    ld [$d4a5], sp                                ; $4bc0: $08 $a5 $d4
    sub h                                         ; $4bc3: $94
    ld d, h                                       ; $4bc4: $54
    db $ed                                        ; $4bc5: $ed
    sub [hl]                                      ; $4bc6: $96
    ld c, $a5                                     ; $4bc7: $0e $a5
    pop de                                        ; $4bc9: $d1
    ld c, l                                       ; $4bca: $4d
    sub e                                         ; $4bcb: $93
    ld c, b                                       ; $4bcc: $48
    cp $a8                                        ; $4bcd: $fe $a8
    or a                                          ; $4bcf: $b7
    ld a, [hl]                                    ; $4bd0: $7e
    call $b7f5                                    ; $4bd1: $cd $f5 $b7
    adc b                                         ; $4bd4: $88
    ld h, h                                       ; $4bd5: $64
    ccf                                           ; $4bd6: $3f
    ld a, [c]                                     ; $4bd7: $f2
    or a                                          ; $4bd8: $b7
    cp $0b                                        ; $4bd9: $fe $0b
    nop                                           ; $4bdb: $00

jr_05d_4bdc:
    cp h                                          ; $4bdc: $bc
    jr jr_05d_4bdc                                ; $4bdd: $18 $fd

    ld a, [c]                                     ; $4bdf: $f2
    inc sp                                        ; $4be0: $33
    swap d                                        ; $4be1: $cb $32
    call $c2af                                    ; $4be3: $cd $af $c2
    dec a                                         ; $4be6: $3d
    rst $20                                       ; $4be7: $e7
    sub e                                         ; $4be8: $93
    ld [c], a                                     ; $4be9: $e2
    ld a, c                                       ; $4bea: $79
    add $b2                                       ; $4beb: $c6 $b2
    ld c, e                                       ; $4bed: $4b
    ld a, h                                       ; $4bee: $7c
    pop de                                        ; $4bef: $d1
    ld b, [hl]                                    ; $4bf0: $46
    jp nz, $fe52                                  ; $4bf1: $c2 $52 $fe

    rst $08                                       ; $4bf4: $cf
    cp $9c                                        ; $4bf5: $fe $9c
    xor l                                         ; $4bf7: $ad
    jr z, @-$05                                   ; $4bf8: $28 $f9

    cp a                                          ; $4bfa: $bf
    ld [hl], e                                    ; $4bfb: $73
    cp $05                                        ; $4bfc: $fe $05
    nop                                           ; $4bfe: $00
    cp h                                          ; $4bff: $bc
    ld h, e                                       ; $4c00: $63
    cp [hl]                                       ; $4c01: $be
    ld l, h                                       ; $4c02: $6c
    db $e3                                        ; $4c03: $e3
    inc e                                         ; $4c04: $1c
    cp d                                          ; $4c05: $ba
    xor [hl]                                      ; $4c06: $ae
    db $eb                                        ; $4c07: $eb
    jp nc, $526f                                  ; $4c08: $d2 $6f $52

    or [hl]                                       ; $4c0b: $b6
    ld b, l                                       ; $4c0c: $45
    add hl, hl                                    ; $4c0d: $29
    sub l                                         ; $4c0e: $95
    inc l                                         ; $4c0f: $2c
    ld h, h                                       ; $4c10: $64
    cp e                                          ; $4c11: $bb
    ld b, l                                       ; $4c12: $45
    rla                                           ; $4c13: $17
    nop                                           ; $4c14: $00
    inc a                                         ; $4c15: $3c
    ld e, c                                       ; $4c16: $59
    ld c, [hl]                                    ; $4c17: $4e
    and h                                         ; $4c18: $a4
    dec a                                         ; $4c19: $3d
    db $fd                                        ; $4c1a: $fd
    sbc a                                         ; $4c1b: $9f
    inc d                                         ; $4c1c: $14
    rst $08                                       ; $4c1d: $cf
    daa                                           ; $4c1e: $27
    call nz, Call_05d_7216                        ; $4c1f: $c4 $16 $72
    ld bc, $e80e                                  ; $4c22: $01 $0e $e8
    ld h, $35                                     ; $4c25: $26 $35
    sbc c                                         ; $4c27: $99
    sub c                                         ; $4c28: $91
    jr nc, @+$01                                  ; $4c29: $30 $ff

    ld d, $cf                                     ; $4c2b: $16 $cf
    inc sp                                        ; $4c2d: $33
    sub [hl]                                      ; $4c2e: $96
    ret                                           ; $4c2f: $c9


    ld hl, $0776                                  ; $4c30: $21 $76 $07
    inc de                                        ; $4c33: $13
    db $fc                                        ; $4c34: $fc
    ld [c], a                                     ; $4c35: $e2
    add hl, bc                                    ; $4c36: $09
    halt                                          ; $4c37: $76
    cpl                                           ; $4c38: $2f
    ld d, [hl]                                    ; $4c39: $56
    ret z                                         ; $4c3a: $c8

    inc bc                                        ; $4c3b: $03
    or $95                                        ; $4c3c: $f6 $95
    ld d, b                                       ; $4c3e: $50
    or b                                          ; $4c3f: $b0
    and h                                         ; $4c40: $a4
    ld h, $8e                                     ; $4c41: $26 $8e
    inc sp                                        ; $4c43: $33
    ld c, d                                       ; $4c44: $4a
    add sp, -$05                                  ; $4c45: $e8 $fb
    ld a, e                                       ; $4c47: $7b
    ld a, [hl]                                    ; $4c48: $7e
    ei                                            ; $4c49: $fb
    cpl                                           ; $4c4a: $2f
    ld a, c                                       ; $4c4b: $79
    db $f4                                        ; $4c4c: $f4
    ld l, d                                       ; $4c4d: $6a

Jump_05d_4c4e:
    ld [hl-], a                                   ; $4c4e: $32
    inc hl                                        ; $4c4f: $23
    ld h, c                                       ; $4c50: $61
    ret                                           ; $4c51: $c9


    ld d, e                                       ; $4c52: $53
    xor h                                         ; $4c53: $ac
    xor a                                         ; $4c54: $af
    ld c, e                                       ; $4c55: $4b
    sbc h                                         ; $4c56: $9c
    ld hl, $cd2c                                  ; $4c57: $21 $2c $cd
    xor b                                         ; $4c5a: $a8
    cp $c1                                        ; $4c5b: $fe $c1
    or $02                                        ; $4c5d: $f6 $02
    ld a, h                                       ; $4c5f: $7c
    and c                                         ; $4c60: $a1
    ld [hl], h                                    ; $4c61: $74
    ldh [$fd], a                                  ; $4c62: $e0 $fd
    db $dd                                        ; $4c64: $dd
    cp e                                          ; $4c65: $bb
    ld [hl], l                                    ; $4c66: $75
    ld bc, $4d5e                                  ; $4c67: $01 $5e $4d

Call_05d_4c6a:
    ld e, e                                       ; $4c6a: $5b
    ld a, e                                       ; $4c6b: $7b
    sub [hl]                                      ; $4c6c: $96
    xor a                                         ; $4c6d: $af
    push bc                                       ; $4c6e: $c5
    add hl, sp                                    ; $4c6f: $39
    ld hl, $4d2c                                  ; $4c70: $21 $2c $4d
    jp z, Jump_05d_532a                           ; $4c73: $ca $2a $53

    ld c, [hl]                                    ; $4c76: $4e
    add hl, hl                                    ; $4c77: $29
    ret                                           ; $4c78: $c9


    rst $38                                       ; $4c79: $ff
    db $f4                                        ; $4c7a: $f4
    xor l                                         ; $4c7b: $ad
    ld d, a                                       ; $4c7c: $57
    adc $08                                       ; $4c7d: $ce $08
    or c                                          ; $4c7f: $b1
    daa                                           ; $4c80: $27
    xor d                                         ; $4c81: $aa
    jr z, @-$51                                   ; $4c82: $28 $ad

    ld c, h                                       ; $4c84: $4c
    rst $30                                       ; $4c85: $f7
    ld [hl], $51                                  ; $4c86: $36 $51
    ld l, c                                       ; $4c88: $69
    adc [hl]                                      ; $4c89: $8e
    ei                                            ; $4c8a: $fb
    cp $73                                        ; $4c8b: $fe $73
    sub $fa                                       ; $4c8d: $d6 $fa
    and c                                         ; $4c8f: $a1
    nop                                           ; $4c90: $00
    ld a, h                                       ; $4c91: $7c
    rst $08                                       ; $4c92: $cf
    ld c, h                                       ; $4c93: $4c
    ld e, b                                       ; $4c94: $58
    ld c, d                                       ; $4c95: $4a
    sbc a                                         ; $4c96: $9f
    push hl                                       ; $4c97: $e5
    ld e, e                                       ; $4c98: $5b
    cp a                                          ; $4c99: $bf
    ld d, $a5                                     ; $4c9a: $16 $a5
    cp c                                          ; $4c9c: $b9
    ld l, h                                       ; $4c9d: $6c
    cp [hl]                                       ; $4c9e: $be
    xor c                                         ; $4c9f: $a9
    xor c                                         ; $4ca0: $a9
    ld c, b                                       ; $4ca1: $48
    add hl, de                                    ; $4ca2: $19
    ld d, a                                       ; $4ca3: $57
    pop de                                        ; $4ca4: $d1
    dec b                                         ; $4ca5: $05
    nop                                           ; $4ca6: $00
    db $fc                                        ; $4ca7: $fc
    rst $08                                       ; $4ca8: $cf
    ld h, $f6                                     ; $4ca9: $26 $f6
    sub [hl]                                      ; $4cab: $96
    ld l, d                                       ; $4cac: $6a
    or a                                          ; $4cad: $b7
    and $50                                       ; $4cae: $e6 $50
    sub e                                         ; $4cb0: $93
    add hl, de                                    ; $4cb1: $19
    jp hl                                         ; $4cb2: $e9


    ld d, b                                       ; $4cb3: $50
    ld a, [de]                                    ; $4cb4: $1a
    or a                                          ; $4cb5: $b7
    ld c, a                                       ; $4cb6: $4f
    ld b, l                                       ; $4cb7: $45
    rla                                           ; $4cb8: $17
    nop                                           ; $4cb9: $00
    ld a, h                                       ; $4cba: $7c
    pop de                                        ; $4cbb: $d1
    or [hl]                                       ; $4cbc: $b6
    ld h, [hl]                                    ; $4cbd: $66
    inc h                                         ; $4cbe: $24
    inc l                                         ; $4cbf: $2c
    ld sp, hl                                     ; $4cc0: $f9
    ld a, a                                       ; $4cc1: $7f
    ld h, b                                       ; $4cc2: $60
    inc l                                         ; $4cc3: $2c
    reti                                          ; $4cc4: $d9


    sbc a                                         ; $4cc5: $9f
    ld e, a                                       ; $4cc6: $5f
    dec de                                        ; $4cc7: $1b
    ld h, e                                       ; $4cc8: $63
    jp c, Jump_000_05fe                           ; $4cc9: $da $fe $05

    nop                                           ; $4ccc: $00
    ld e, $bd                                     ; $4ccd: $1e $bd
    ld a, [hl+]                                   ; $4ccf: $2a
    db $f4                                        ; $4cd0: $f4
    ld e, e                                       ; $4cd1: $5b
    ccf                                           ; $4cd2: $3f
    ld d, a                                       ; $4cd3: $57
    ld a, [hl]                                    ; $4cd4: $7e
    ld h, [hl]                                    ; $4cd5: $66
    ld e, c                                       ; $4cd6: $59
    ld h, $1b                                     ; $4cd7: $26 $1b
    rst $20                                       ; $4cd9: $e7
    cp h                                          ; $4cda: $bc
    jp nc, $df2c                                  ; $4cdb: $d2 $2c $df

    cp d                                          ; $4cde: $ba
    nop                                           ; $4cdf: $00
    db $fc                                        ; $4ce0: $fc
    pop bc                                        ; $4ce1: $c1
    ld a, [c]                                     ; $4ce2: $f2
    ld c, b                                       ; $4ce3: $48
    ld hl, $2599                                  ; $4ce4: $21 $99 $25
    push bc                                       ; $4ce7: $c5
    di                                            ; $4ce8: $f3
    add hl, bc                                    ; $4ce9: $09
    or c                                          ; $4cea: $b1
    add l                                         ; $4ceb: $85
    ld e, h                                       ; $4cec: $5c
    nop                                           ; $4ced: $00
    db $fc                                        ; $4cee: $fc
    pop bc                                        ; $4cef: $c1
    ld a, [c]                                     ; $4cf0: $f2
    ld c, b                                       ; $4cf1: $48
    jp z, $af9d                                   ; $4cf2: $ca $9d $af

    cp b                                          ; $4cf5: $b8
    call nz, Call_05d_599b                        ; $4cf6: $c4 $9b $59
    or [hl]                                       ; $4cf9: $b6
    dec [hl]                                      ; $4cfa: $35
    ld d, a                                       ; $4cfb: $57
    ld c, l                                       ; $4cfc: $4d
    ld h, [hl]                                    ; $4cfd: $66
    inc h                                         ; $4cfe: $24
    ld a, b                                       ; $4cff: $78
    ld e, b                                       ; $4d00: $58
    bit 2, e                                      ; $4d01: $cb $53
    xor h                                         ; $4d03: $ac
    xor a                                         ; $4d04: $af
    dec a                                         ; $4d05: $3d
    db $fd                                        ; $4d06: $fd
    ld c, c                                       ; $4d07: $49
    ld b, l                                       ; $4d08: $45
    scf                                           ; $4d09: $37
    add hl, bc                                    ; $4d0a: $09
    ld l, e                                       ; $4d0b: $6b
    and d                                         ; $4d0c: $a2
    jp hl                                         ; $4d0d: $e9


    sbc $26                                       ; $4d0e: $de $26
    ld a, [hl+]                                   ; $4d10: $2a
    pop hl                                        ; $4d11: $e1
    ld l, b                                       ; $4d12: $68
    ld a, h                                       ; $4d13: $7c
    dec d                                         ; $4d14: $15
    call $32ac                                    ; $4d15: $cd $ac $32
    jr z, jr_05d_4d1a                             ; $4d18: $28 $00

jr_05d_4d1a:
    ld a, h                                       ; $4d1a: $7c
    rst $08                                       ; $4d1b: $cf
    ld c, h                                       ; $4d1c: $4c
    ld e, b                                       ; $4d1d: $58
    ld l, d                                       ; $4d1e: $6a
    ld a, [hl+]                                   ; $4d1f: $2a
    and d                                         ; $4d20: $a2
    sub d                                         ; $4d21: $92
    adc a                                         ; $4d22: $8f
    dec sp                                        ; $4d23: $3b
    ld h, a                                       ; $4d24: $67
    adc h                                         ; $4d25: $8c
    ld l, c                                       ; $4d26: $69
    ld [hl], c                                    ; $4d27: $71
    adc $5a                                       ; $4d28: $ce $5a
    sub h                                         ; $4d2a: $94
    and $b2                                       ; $4d2b: $e6 $b2
    ld sp, hl                                     ; $4d2d: $f9
    halt                                          ; $4d2e: $76
    ld bc, $bb9c                                  ; $4d2f: $01 $9c $bb
    ld b, l                                       ; $4d32: $45
    ld [$6210], a                                 ; $4d33: $ea $10 $62
    ld [hl], a                                    ; $4d36: $77
    ld l, b                                       ; $4d37: $68
    db $d3                                        ; $4d38: $d3
    cpl                                           ; $4d39: $2f
    reti                                          ; $4d3a: $d9


    rst $18                                       ; $4d3b: $df
    rst $38                                       ; $4d3c: $ff
    cp d                                          ; $4d3d: $ba
    scf                                           ; $4d3e: $37
    ld c, [hl]                                    ; $4d3f: $4e
    db $d3                                        ; $4d40: $d3
    dec h                                         ; $4d41: $25
    cp [hl]                                       ; $4d42: $be
    ld e, b                                       ; $4d43: $58
    ld [$fc95], sp                                ; $4d44: $08 $95 $fc
    ld l, l                                       ; $4d47: $6d
    ld [hl+], a                                   ; $4d48: $22
    ld d, l                                       ; $4d49: $55
    sub $ba                                       ; $4d4a: $d6 $ba
    and e                                         ; $4d4c: $a3
    adc d                                         ; $4d4d: $8a
    ld l, $79                                     ; $4d4e: $2e $79
    add h                                         ; $4d50: $84
    and [hl]                                      ; $4d51: $a6
    ld c, $d9                                     ; $4d52: $0e $d9

jr_05d_4d54:
    rst $30                                       ; $4d54: $f7
    add sp, $0e                                   ; $4d55: $e8 $0e
    dec d                                         ; $4d57: $15
    call $89b8                                    ; $4d58: $cd $b8 $89
    ld c, d                                       ; $4d5b: $4a
    jr nc, jr_05d_4d54                            ; $4d5c: $30 $f6

    ld l, a                                       ; $4d5e: $6f
    ld l, c                                       ; $4d5f: $69
    db $d3                                        ; $4d60: $d3
    cpl                                           ; $4d61: $2f
    dec [hl]                                      ; $4d62: $35
    pop de                                        ; $4d63: $d1
    add hl, sp                                    ; $4d64: $39
    and h                                         ; $4d65: $a4
    ei                                            ; $4d66: $fb
    cp a                                          ; $4d67: $bf
    db $e4                                        ; $4d68: $e4
    ld l, a                                       ; $4d69: $6f
    push de                                       ; $4d6a: $d5
    sbc a                                         ; $4d6b: $9f
    di                                            ; $4d6c: $f3
    ld c, c                                       ; $4d6d: $49
    push de                                       ; $4d6e: $d5
    ld l, [hl]                                    ; $4d6f: $6e
    ld l, c                                       ; $4d70: $69
    ld b, $6b                                     ; $4d71: $06 $6b
    sbc h                                         ; $4d73: $9c
    rst $38                                       ; $4d74: $ff
    jp hl                                         ; $4d75: $e9


    sub a                                         ; $4d76: $97
    xor $71                                       ; $4d77: $ee $71
    ld c, [hl]                                    ; $4d79: $4e
    ld e, h                                       ; $4d7a: $5c
    nop                                           ; $4d7b: $00
    db $fc                                        ; $4d7c: $fc
    sub h                                         ; $4d7d: $94
    ld b, d                                       ; $4d7e: $42
    and d                                         ; $4d7f: $a2
    dec [hl]                                      ; $4d80: $35
    add e                                         ; $4d81: $83
    dec [hl]                                      ; $4d82: $35
    and $df                                       ; $4d83: $e6 $df
    sbc d                                         ; $4d85: $9a
    sbc b                                         ; $4d86: $98
    or $1f                                        ; $4d87: $f6 $1f
    cp h                                          ; $4d89: $bc
    rst $28                                       ; $4d8a: $ef
    ld c, b                                       ; $4d8b: $48
    ld a, [bc]                                    ; $4d8c: $0a
    ld a, [hl]                                    ; $4d8d: $7e
    ld e, c                                       ; $4d8e: $59
    add sp, -$72                                  ; $4d8f: $e8 $8e
    add l                                         ; $4d91: $85
    ld d, b                                       ; $4d92: $50
    add hl, bc                                    ; $4d93: $09
    ld c, e                                       ; $4d94: $4b
    ld l, c                                       ; $4d95: $69
    sub [hl]                                      ; $4d96: $96
    db $d3                                        ; $4d97: $d3
    or h                                          ; $4d98: $b4
    xor h                                         ; $4d99: $ac
    sbc e                                         ; $4d9a: $9b
    ld [hl], d                                    ; $4d9b: $72
    cp d                                          ; $4d9c: $ba
    nop                                           ; $4d9d: $00
    db $fc                                        ; $4d9e: $fc
    sub h                                         ; $4d9f: $94
    ld b, d                                       ; $4da0: $42
    and d                                         ; $4da1: $a2
    dec d                                         ; $4da2: $15
    sbc e                                         ; $4da3: $9b
    ld d, e                                       ; $4da4: $53
    ld l, e                                       ; $4da5: $6b
    ld b, $63                                     ; $4da6: $06 $63
    jr z, jr_05d_4de9                             ; $4da8: $28 $3f

    adc $24                                       ; $4daa: $ce $24
    ld l, e                                       ; $4dac: $6b
    and d                                         ; $4dad: $a2
    jp nc, $e63d                                  ; $4dae: $d2 $3d $e6

    rst $20                                       ; $4db1: $e7
    ei                                            ; $4db2: $fb
    ld a, d                                       ; $4db3: $7a
    ld e, e                                       ; $4db4: $5b
    call c, $0bfe                                 ; $4db5: $dc $fe $0b
    nop                                           ; $4db8: $00
    ld c, $c2                                     ; $4db9: $0e $c2
    rst $28                                       ; $4dbb: $ef
    ld d, c                                       ; $4dbc: $51

Call_05d_4dbd:
Jump_05d_4dbd:
    jp Jump_000_2b14                              ; $4dbd: $c3 $14 $2b


    inc a                                         ; $4dc0: $3c
    and c                                         ; $4dc1: $a1
    adc c                                         ; $4dc2: $89
    ld sp, hl                                     ; $4dc3: $f9
    sub [hl]                                      ; $4dc4: $96
    and $b2                                       ; $4dc5: $e6 $b2
    ld sp, hl                                     ; $4dc7: $f9
    and [hl]                                      ; $4dc8: $a6
    and [hl]                                      ; $4dc9: $a6
    ld [hl+], a                                   ; $4dca: $22
    ld h, l                                       ; $4dcb: $65
    ld e, h                                       ; $4dcc: $5c
    ld b, l                                       ; $4dcd: $45
    ld c, c                                       ; $4dce: $49
    db $dd                                        ; $4dcf: $dd
    and e                                         ; $4dd0: $a3
    ei                                            ; $4dd1: $fb
    push de                                       ; $4dd2: $d5
    sbc a                                         ; $4dd3: $9f
    rst $38                                       ; $4dd4: $ff
    add hl, sp                                    ; $4dd5: $39
    ld l, e                                       ; $4dd6: $6b
    db $fd                                        ; $4dd7: $fd
    sbc d                                         ; $4dd8: $9a
    set 4, [hl]                                   ; $4dd9: $cb $e6
    db $fc                                        ; $4ddb: $fc
    cp a                                          ; $4ddc: $bf
    db $fd                                        ; $4ddd: $fd
    push de                                       ; $4dde: $d5
    inc e                                         ; $4ddf: $1c
    db $db                                        ; $4de0: $db
    ld d, c                                       ; $4de1: $51
    ld [hl], e                                    ; $4de2: $73
    db $eb                                        ; $4de3: $eb
    ld [bc], a                                    ; $4de4: $02
    ld a, h                                       ; $4de5: $7c
    or c                                          ; $4de6: $b1
    db $10                                        ; $4de7: $10

Jump_05d_4de8:
    ld a, [hl+]                                   ; $4de8: $2a

jr_05d_4de9:
    push bc                                       ; $4de9: $c5
    jp z, $a6df                                   ; $4dea: $ca $df $a6

    or l                                          ; $4ded: $b5

jr_05d_4dee:
    push de                                       ; $4dee: $d5
    adc a                                         ; $4def: $8f
    xor $7f                                       ; $4df0: $ee $7f
    push de                                       ; $4df2: $d5
    ld l, [hl]                                    ; $4df3: $6e
    ld d, e                                       ; $4df4: $53
    ld d, d                                       ; $4df5: $52
    jr nc, jr_05d_4dee                            ; $4df6: $30 $f6

    ld a, h                                       ; $4df8: $7c
    dec [hl]                                      ; $4df9: $35
    and l                                         ; $4dfa: $a5
    sub b                                         ; $4dfb: $90
    ld l, b                                       ; $4dfc: $68
    ld h, c                                       ; $4dfd: $61
    cp $ad                                        ; $4dfe: $fe $ad
    ld e, $78                                     ; $4e00: $1e $78
    ld l, a                                       ; $4e02: $6f
    ld d, l                                       ; $4e03: $55
    ld b, h                                       ; $4e04: $44
    ld e, a                                       ; $4e05: $5f
    nop                                           ; $4e06: $00

Jump_05d_4e07:
    ld a, h                                       ; $4e07: $7c
    or c                                          ; $4e08: $b1
    db $10                                        ; $4e09: $10
    ld a, [hl+]                                   ; $4e0a: $2a
    dec [hl]                                      ; $4e0b: $35
    ld h, l                                       ; $4e0c: $65
    sbc l                                         ; $4e0d: $9d
    ld h, l                                       ; $4e0e: $65
    ld a, [c]                                     ; $4e0f: $f2
    inc sp                                        ; $4e10: $33
    bit 1, b                                      ; $4e11: $cb $48
    push bc                                       ; $4e13: $c5
    sub l                                         ; $4e14: $95
    or c                                          ; $4e15: $b1
    dec l                                         ; $4e16: $2d
    ld d, d                                       ; $4e17: $52
    ld d, e                                       ; $4e18: $53
    jp c, $a51b                                   ; $4e19: $da $1b $a5

    add b                                         ; $4e1c: $80
    add h                                         ; $4e1d: $84
    add hl, de                                    ; $4e1e: $19
    ld e, l                                       ; $4e1f: $5d
    nop                                           ; $4e20: $00
    ld a, h                                       ; $4e21: $7c
    pop de                                        ; $4e22: $d1
    ld b, [hl]                                    ; $4e23: $46
    jp nz, $9dd2                                  ; $4e24: $c2 $d2 $9d

    ld e, c                                       ; $4e27: $59

jr_05d_4e28:
    ld b, a                                       ; $4e28: $47
    or b                                          ; $4e29: $b0
    ret c                                         ; $4e2a: $d8

    ld h, $f5                                     ; $4e2b: $26 $f5
    jr c, jr_05d_4e28                             ; $4e2d: $38 $f9

    sbc [hl]                                      ; $4e2f: $9e
    di                                            ; $4e30: $f3
    ld e, a                                       ; $4e31: $5f
    rla                                           ; $4e32: $17
    nop                                           ; $4e33: $00
    inc a                                         ; $4e34: $3c
    sbc a                                         ; $4e35: $9f
    db $10                                        ; $4e36: $10
    ld e, e                                       ; $4e37: $5b
    ld c, b                                       ; $4e38: $48
    ld d, d                                       ; $4e39: $52
    di                                            ; $4e3a: $f3
    db $db                                        ; $4e3b: $db
    jr nc, @+$2b                                  ; $4e3c: $30 $29

    ld a, a                                       ; $4e3e: $7f
    call nc, $edaf                                ; $4e3f: $d4 $af $ed
    ld l, e                                       ; $4e42: $6b
    xor [hl]                                      ; $4e43: $ae
    cp a                                          ; $4e44: $bf
    push bc                                       ; $4e45: $c5
    or l                                          ; $4e46: $b5
    ld c, l                                       ; $4e47: $4d
    call c, $c7e2                                 ; $4e48: $dc $e2 $c7
    or l                                          ; $4e4b: $b5
    ld l, b                                       ; $4e4c: $68
    ld h, c                                       ; $4e4d: $61
    cp $2d                                        ; $4e4e: $fe $2d
    ld a, a                                       ; $4e50: $7f
    sbc h                                         ; $4e51: $9c
    scf                                           ; $4e52: $37
    ei                                            ; $4e53: $fb
    dec bc                                        ; $4e54: $0b
    nop                                           ; $4e55: $00
    inc e                                         ; $4e56: $1c
    db $10                                        ; $4e57: $10
    db $ec                                        ; $4e58: $ec
    cp $f9                                        ; $4e59: $fe $f9
    xor a                                         ; $4e5b: $af
    ld h, $3a                                     ; $4e5c: $26 $3a
    add a                                         ; $4e5e: $87
    ld l, $00                                     ; $4e5f: $2e $00
    db $fc                                        ; $4e61: $fc
    cp b                                          ; $4e62: $b8
    add hl, sp                                    ; $4e63: $39
    halt                                          ; $4e64: $76
    ld a, a                                       ; $4e65: $7f
    cp $d6                                        ; $4e66: $fe $d6
    xor e                                         ; $4e68: $ab
    add hl, de                                    ; $4e69: $19
    ld l, c                                       ; $4e6a: $69
    call nc, $2a24                                ; $4e6b: $d4 $24 $2a
    push bc                                       ; $4e6e: $c5
    ld a, [bc]                                    ; $4e6f: $0a
    ld c, a                                       ; $4e70: $4f
    ret z                                         ; $4e71: $c8

    cp [hl]                                       ; $4e72: $be
    ld a, e                                       ; $4e73: $7b
    call nc, Call_05d_6e68                        ; $4e74: $d4 $68 $6e
    nop                                           ; $4e77: $00
    ld c, $7f                                     ; $4e78: $0e $7f
    db $db                                        ; $4e7a: $db
    ld d, [hl]                                    ; $4e7b: $56
    sub c                                         ; $4e7c: $91
    ld c, [hl]                                    ; $4e7d: $4e
    sub d                                         ; $4e7e: $92
    ld a, e                                       ; $4e7f: $7b
    db $ec                                        ; $4e80: $ec
    inc de                                        ; $4e81: $13
    ld b, b                                       ; $4e82: $40
    xor h                                         ; $4e83: $ac
    db $eb                                        ; $4e84: $eb
    cp d                                          ; $4e85: $ba
    nop                                           ; $4e86: $00
    ld a, h                                       ; $4e87: $7c
    db $db                                        ; $4e88: $db
    and h                                         ; $4e89: $a4
    ld a, [hl]                                    ; $4e8a: $7e
    rst $38                                       ; $4e8b: $ff
    db $d3                                        ; $4e8c: $d3
    ld e, $0b                                     ; $4e8d: $1e $0b
    dec b                                         ; $4e8f: $05
    nop                                           ; $4e90: $00
    xor $b1                                       ; $4e91: $ee $b1
    ld c, a                                       ; $4e93: $4f
    nop                                           ; $4e94: $00
    add l                                         ; $4e95: $85
    db $dd                                        ; $4e96: $dd
    dec hl                                        ; $4e97: $2b
    ld a, a                                       ; $4e98: $7f
    rrca                                          ; $4e99: $0f
    xor $39                                       ; $4e9a: $ee $39
    rst $38                                       ; $4e9c: $ff
    and l                                         ; $4e9d: $a5
    ld a, e                                       ; $4e9e: $7b
    ld l, e                                       ; $4e9f: $6b
    ld e, b                                       ; $4ea0: $58
    cp a                                          ; $4ea1: $bf
    and $6e                                       ; $4ea2: $e6 $6e
    push de                                       ; $4ea4: $d5
    xor d                                         ; $4ea5: $aa
    ld a, a                                       ; $4ea6: $7f
    cp $fb                                        ; $4ea7: $fe $fb
    or h                                          ; $4ea9: $b4
    sub l                                         ; $4eaa: $95
    inc d                                         ; $4eab: $14
    db $fc                                        ; $4eac: $fc
    add d                                         ; $4ead: $82
    ld [hl], c                                    ; $4eae: $71
    ld b, b                                       ; $4eaf: $40
    add $96                                       ; $4eb0: $c6 $96
    db $fc                                        ; $4eb2: $fc
    xor a                                         ; $4eb3: $af
    db $dd                                        ; $4eb4: $dd
    add hl, sp                                    ; $4eb5: $39
    ld [hl], a                                    ; $4eb6: $77
    db $eb                                        ; $4eb7: $eb

jr_05d_4eb8:
    ld [bc], a                                    ; $4eb8: $02
    ld c, $b2                                     ; $4eb9: $0e $b2
    ld d, [hl]                                    ; $4ebb: $56
    cp $9b                                        ; $4ebc: $fe $9b
    ld b, d                                       ; $4ebe: $42
    and d                                         ; $4ebf: $a2
    rst $38                                       ; $4ec0: $ff
    ld c, e                                       ; $4ec1: $4b
    inc l                                         ; $4ec2: $2c
    ld c, e                                       ; $4ec3: $4b
    rst $28                                       ; $4ec4: $ef
    and l                                         ; $4ec5: $a5
    ld c, e                                       ; $4ec6: $4b
    ld c, $22                                     ; $4ec7: $0e $22
    rst $18                                       ; $4ec9: $df
    ld [hl], e                                    ; $4eca: $73
    ld b, d                                       ; $4ecb: $42
    ldh a, [$8b]                                  ; $4ecc: $f0 $8b
    daa                                           ; $4ece: $27
    ret c                                         ; $4ecf: $d8

    cp l                                          ; $4ed0: $bd
    ld e, b                                       ; $4ed1: $58
    and c                                         ; $4ed2: $a1
    ld a, e                                       ; $4ed3: $7b
    sub h                                         ; $4ed4: $94
    xor $31                                       ; $4ed5: $ee $31
    rst $38                                       ; $4ed7: $ff
    db $eb                                        ; $4ed8: $eb
    ld [de], a                                    ; $4ed9: $12

jr_05d_4eda:
    rst $08                                       ; $4eda: $cf
    inc sp                                        ; $4edb: $33
    sub [hl]                                      ; $4edc: $96
    jp hl                                         ; $4edd: $e9


    adc [hl]                                      ; $4ede: $8e
    adc d                                         ; $4edf: $8a
    sub b                                         ; $4ee0: $90
    ld a, e                                       ; $4ee1: $7b
    db $ec                                        ; $4ee2: $ec
    inc de                                        ; $4ee3: $13
    ret nz                                        ; $4ee4: $c0

    ld [de], a                                    ; $4ee5: $12
    db $fc                                        ; $4ee6: $fc
    ld [c], a                                     ; $4ee7: $e2
    ld b, a                                       ; $4ee8: $47
    or $a5                                        ; $4ee9: $f6 $a5
    ld sp, hl                                     ; $4eeb: $f9
    ld h, l                                       ; $4eec: $65
    or $97                                        ; $4eed: $f6 $97
    jr c, jr_05d_4eb8                             ; $4eef: $38 $c7

    xor e                                         ; $4ef1: $ab
    adc c                                         ; $4ef2: $89
    or h                                          ; $4ef3: $b4
    sub b                                         ; $4ef4: $90
    ld b, l                                       ; $4ef5: $45
    db $ec                                        ; $4ef6: $ec
    ld e, [hl]                                    ; $4ef7: $5e
    push bc                                       ; $4ef8: $c5
    xor d                                         ; $4ef9: $aa
    halt                                          ; $4efa: $76
    ld c, e                                       ; $4efb: $4b
    ld sp, hl                                     ; $4efc: $f9
    ld a, a                                       ; $4efd: $7f
    ret                                           ; $4efe: $c9


    ld l, b                                       ; $4eff: $68
    ld h, a                                       ; $4f00: $67
    sub $1d                                       ; $4f01: $d6 $1d
    daa                                           ; $4f03: $27
    ld l, $00                                     ; $4f04: $2e $00
    cp h                                          ; $4f06: $bc
    rst $18                                       ; $4f07: $df
    add [hl]                                      ; $4f08: $86
    call c, Call_000_0ce2                         ; $4f09: $dc $e2 $0c
    ld h, c                                       ; $4f0c: $61
    ret                                           ; $4f0d: $c9


    ld b, d                                       ; $4f0e: $42
    reti                                          ; $4f0f: $d9


    or h                                          ; $4f10: $b4
    or l                                          ; $4f11: $b5
    ld h, a                                       ; $4f12: $67
    ld sp, hl                                     ; $4f13: $f9
    ld d, [hl]                                    ; $4f14: $56
    call nc, $ce25                                ; $4f15: $d4 $25 $ce
    db $10                                        ; $4f18: $10
    sub [hl]                                      ; $4f19: $96
    and $c0                                       ; $4f1a: $e6 $c0
    ld [hl], e                                    ; $4f1c: $73
    ld b, [hl]                                    ; $4f1d: $46
    ld [hl], e                                    ; $4f1e: $73
    inc bc                                        ; $4f1f: $03
    ld l, [hl]                                    ; $4f20: $6e
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    inc sp                                        ; $4f24: $33
    add $b8                                       ; $4f25: $c6 $b8
    ld bc, $8f6e                                  ; $4f27: $01 $6e $8f
    db $f4                                        ; $4f2a: $f4
    cp d                                          ; $4f2b: $ba
    xor [hl]                                      ; $4f2c: $ae
    ld e, $36                                     ; $4f2d: $1e $36
    rst $38                                       ; $4f2f: $ff
    cp d                                          ; $4f30: $ba
    ld l, $9f                                     ; $4f31: $2e $9f
    jr z, jr_05d_4eda                             ; $4f33: $28 $a5

    jp nc, $9b44                                  ; $4f35: $d2 $44 $9b

    ld de, $75d7                                  ; $4f38: $11 $d7 $75
    ld bc, $db7c                                  ; $4f3b: $01 $7c $db
    and h                                         ; $4f3e: $a4
    ld a, [hl]                                    ; $4f3f: $7e
    rst $38                                       ; $4f40: $ff
    db $d3                                        ; $4f41: $d3
    ld e, $0b                                     ; $4f42: $1e $0b
    dec b                                         ; $4f44: $05
    nop                                           ; $4f45: $00
    sbc h                                         ; $4f46: $9c
    and c                                         ; $4f47: $a1
    dec sp                                        ; $4f48: $3b
    ld l, d                                       ; $4f49: $6a
    dec b                                         ; $4f4a: $05
    db $e3                                        ; $4f4b: $e3
    dec h                                         ; $4f4c: $25
    cp [hl]                                       ; $4f4d: $be
    xor l                                         ; $4f4e: $ad
    ld d, c                                       ; $4f4f: $51
    xor d                                         ; $4f50: $aa
    cp l                                          ; $4f51: $bd
    and e                                         ; $4f52: $a3
    ld d, [hl]                                    ; $4f53: $56
    ld e, b                                       ; $4f54: $58
    ld [hl], d                                    ; $4f55: $72
    ld a, a                                       ; $4f56: $7f
    ld e, c                                       ; $4f57: $59
    ld d, h                                       ; $4f58: $54
    and d                                         ; $4f59: $a2
    ld [hl], c                                    ; $4f5a: $71
    ret                                           ; $4f5b: $c9


    di                                            ; $4f5c: $f3
    dec c                                         ; $4f5d: $0d
    ld [$c951], sp                                ; $4f5e: $08 $51 $c9
    or [hl]                                       ; $4f61: $b6
    ld b, [hl]                                    ; $4f62: $46
    xor e                                         ; $4f63: $ab
    ld a, a                                       ; $4f64: $7f
    cp $da                                        ; $4f65: $fe $da
    sub [hl]                                      ; $4f67: $96
    ld a, b                                       ; $4f68: $78
    ld a, $21                                     ; $4f69: $3e $21
    or [hl]                                       ; $4f6b: $b6
    sub b                                         ; $4f6c: $90
    dec l                                         ; $4f6d: $2d
    sbc l                                         ; $4f6e: $9d
    add c                                         ; $4f6f: $81
    db $d3                                        ; $4f70: $d3
    ld [c], a                                     ; $4f71: $e2
    ld [bc], a                                    ; $4f72: $02
    inc e                                         ; $4f73: $1c
    db $10                                        ; $4f74: $10
    db $ec                                        ; $4f75: $ec
    cp a                                          ; $4f76: $bf
    xor [hl]                                      ; $4f77: $ae
    ld c, e                                       ; $4f78: $4b
    cp l                                          ; $4f79: $bd
    ld bc, $9ea1                                  ; $4f7a: $01 $a1 $9e
    ld e, h                                       ; $4f7d: $5c
    ld c, c                                       ; $4f7e: $49
    call Call_05d_5f31                            ; $4f7f: $cd $31 $5f
    db $fd                                        ; $4f82: $fd
    cp [hl]                                       ; $4f83: $be
    rst $38                                       ; $4f84: $ff
    xor a                                         ; $4f85: $af
    ld l, h                                       ; $4f86: $6c
    jp c, $b3da                                   ; $4f87: $da $da $b3

    ld a, h                                       ; $4f8a: $7c
    ld l, l                                       ; $4f8b: $6d
    rra                                           ; $4f8c: $1f
    ld a, [bc]                                    ; $4f8d: $0a
    nop                                           ; $4f8e: $00

jr_05d_4f8f:
    ld e, $e1                                     ; $4f8f: $1e $e1
    inc e                                         ; $4f91: $1c
    ld c, c                                       ; $4f92: $49
    pop bc                                        ; $4f93: $c1
    jr c, jr_05d_4ff5                             ; $4f94: $38 $5f

    jp hl                                         ; $4f96: $e9


    sbc a                                         ; $4f97: $9f
    pop af                                        ; $4f98: $f1
    xor a                                         ; $4f99: $af
    jp c, Jump_05d_4485                           ; $4f9a: $da $85 $44

    add hl, hl                                    ; $4f9d: $29
    rrca                                          ; $4f9e: $0f
    sub $7f                                       ; $4f9f: $d6 $7f
    ret                                           ; $4fa1: $c9


    xor e                                         ; $4fa2: $ab
    ld l, c                                       ; $4fa3: $69
    ld l, e                                       ; $4fa4: $6b
    rst $08                                       ; $4fa5: $cf
    ld a, [c]                                     ; $4fa6: $f2
    or l                                          ; $4fa7: $b5
    jr z, jr_05d_4f8f                             ; $4fa8: $28 $e5

    pop bc                                        ; $4faa: $c1
    ld d, [hl]                                    ; $4fab: $56
    cp $36                                        ; $4fac: $fe $36
    sub c                                         ; $4fae: $91
    ldh a, [rLY]                                  ; $4faf: $f0 $44
    dec d                                         ; $4fb1: $15
    sub [hl]                                      ; $4fb2: $96
    jp nc, $84a8                                  ; $4fb3: $d2 $a8 $84

    sub $8c                                       ; $4fb6: $d6 $8c
    sub d                                         ; $4fb8: $92
    jp z, $e77f                                   ; $4fb9: $ca $7f $e7

    ld a, h                                       ; $4fbc: $7c
    dec [hl]                                      ; $4fbd: $35
    db $dd                                        ; $4fbe: $dd
    inc h                                         ; $4fbf: $24
    inc a                                         ; $4fc0: $3c
    ld l, e                                       ; $4fc1: $6b
    xor e                                         ; $4fc2: $ab
    add hl, sp                                    ; $4fc3: $39
    ldh a, [$c4]                                  ; $4fc4: $f0 $c4
    db $fd                                        ; $4fc6: $fd
    ld l, e                                       ; $4fc7: $6b
    ld a, e                                       ; $4fc8: $7b
    adc $7f                                       ; $4fc9: $ce $7f
    dec h                                         ; $4fcb: $25
    ld [hl], l                                    ; $4fcc: $75
    adc a                                         ; $4fcd: $8f
    xor $57                                       ; $4fce: $ee $57
    cp d                                          ; $4fd0: $ba
    push de                                       ; $4fd1: $d5
    cpl                                           ; $4fd2: $2f
    inc l                                         ; $4fd3: $2c
    ld c, l                                       ; $4fd4: $4d
    call z, $92ff                                 ; $4fd5: $cc $ff $92
    rst $20                                       ; $4fd8: $e7
    pop bc                                        ; $4fd9: $c1
    ld a, [$0f05]                                 ; $4fda: $fa $05 $0f
    xor h                                         ; $4fdd: $ac
    pop de                                        ; $4fde: $d1
    sbc d                                         ; $4fdf: $9a
    res 6, b                                      ; $4fe0: $cb $b0
    rst $38                                       ; $4fe2: $ff
    ld c, e                                       ; $4fe3: $4b
    or $f7                                        ; $4fe4: $f6 $f7
    sbc a                                         ; $4fe6: $9f
    di                                            ; $4fe7: $f3
    jp c, $d639                                   ; $4fe8: $da $39 $d6

    halt                                          ; $4feb: $76
    jp c, Jump_05d_61ea                           ; $4fec: $da $ea $61

    call c, Call_05d_7b69                         ; $4fef: $dc $69 $7b
    adc c                                         ; $4ff2: $89
    ld l, a                                       ; $4ff3: $6f
    ld [hl], h                                    ; $4ff4: $74

jr_05d_4ff5:
    cp a                                          ; $4ff5: $bf
    ld h, b                                       ; $4ff6: $60
    inc [hl]                                      ; $4ff7: $34
    and l                                         ; $4ff8: $a5
    ld d, h                                       ; $4ff9: $54
    ld a, [hl-]                                   ; $4ffa: $3a
    ld h, e                                       ; $4ffb: $63
    sbc h                                         ; $4ffc: $9c
    ld [$ae1d], sp                                ; $4ffd: $08 $1d $ae
    xor h                                         ; $5000: $ac
    add hl, hl                                    ; $5001: $29
    and a                                         ; $5002: $a7
    ld [hl-], a                                   ; $5003: $32
    ld [de], a                                    ; $5004: $12
    adc h                                         ; $5005: $8c
    db $fd                                        ; $5006: $fd
    ld [hl], e                                    ; $5007: $73
    dec hl                                        ; $5008: $2b
    xor c                                         ; $5009: $a9
    ld a, e                                       ; $500a: $7b
    ld l, e                                       ; $500b: $6b
    sub d                                         ; $500c: $92
    ldh [$81], a                                  ; $500d: $e0 $81
    dec a                                         ; $500f: $3d
    cp $4b                                        ; $5010: $fe $4b
    add hl, hl                                    ; $5012: $29
    sub l                                         ; $5013: $95
    ld h, d                                       ; $5014: $62
    dec [hl]                                      ; $5015: $35
    pop de                                        ; $5016: $d1
    and $7f                                       ; $5017: $e6 $7f
    ld l, c                                       ; $5019: $69
    ld c, $3c                                     ; $501a: $0e $3c
    ld [hl], c                                    ; $501c: $71
    ld e, l                                       ; $501d: $5d
    rla                                           ; $501e: $17
    nop                                           ; $501f: $00
    ld c, $76                                     ; $5020: $0e $76
    ld c, e                                       ; $5022: $4b
    cp l                                          ; $5023: $bd
    pop de                                        ; $5024: $d1
    sbc c                                         ; $5025: $99
    push af                                       ; $5026: $f5
    jp z, $c519                                   ; $5027: $ca $19 $c5

    and c                                         ; $502a: $a1
    sbc e                                         ; $502b: $9b
    ld c, d                                       ; $502c: $4a
    ld [hl], c                                    ; $502d: $71
    halt                                          ; $502e: $76
    jp c, Jump_05d_5b2e                           ; $502f: $da $2e $5b

    push hl                                       ; $5032: $e5
    cp e                                          ; $5033: $bb
    or $d6                                        ; $5034: $f6 $d6
    ld d, c                                       ; $5036: $51
    sbc d                                         ; $5037: $9a
    sbc e                                         ; $5038: $9b
    add a                                         ; $5039: $87
    dec [hl]                                      ; $503a: $35
    ld [hl], c                                    ; $503b: $71
    adc e                                         ; $503c: $8b
    ld l, a                                       ; $503d: $6f
    ld [hl], h                                    ; $503e: $74
    cp a                                          ; $503f: $bf
    and $98                                       ; $5040: $e6 $98
    cpl                                           ; $5042: $2f
    inc a                                         ; $5043: $3c
    ld l, e                                       ; $5044: $6b
    xor e                                         ; $5045: $ab
    jp c, $852d                                   ; $5046: $da $2d $85

    ld c, a                                       ; $5049: $4f
    adc l                                         ; $504a: $8d
    sbc e                                         ; $504b: $9b
    db $e3                                        ; $504c: $e3
    ld d, [hl]                                    ; $504d: $56
    inc d                                         ; $504e: $14
    inc d                                         ; $504f: $14
    nop                                           ; $5050: $00
    ld e, $61                                     ; $5051: $1e $61
    rst $08                                       ; $5053: $cf
    pop de                                        ; $5054: $d1
    sbc d                                         ; $5055: $9a
    ld d, c                                       ; $5056: $51
    db $fd                                        ; $5057: $fd
    add e                                         ; $5058: $83
    ld l, l                                       ; $5059: $6d
    dec hl                                        ; $505a: $2b
    and a                                         ; $505b: $a7
    db $ed                                        ; $505c: $ed
    and [hl]                                      ; $505d: $a6
    sbc h                                         ; $505e: $9c
    ld e, d                                       ; $505f: $5a
    ld b, l                                       ; $5060: $45
    ld l, c                                       ; $5061: $69
    ld b, l                                       ; $5062: $45
    sub h                                         ; $5063: $94
    sub c                                         ; $5064: $91
    sbc d                                         ; $5065: $9a
    ld d, d                                       ; $5066: $52
    ret z                                         ; $5067: $c8

    ld e, d                                       ; $5068: $5a
    ld d, e                                       ; $5069: $53
    ld d, d                                       ; $506a: $52
    pop de                                        ; $506b: $d1
    ld c, l                                       ; $506c: $4d
    or d                                          ; $506d: $b2
    cp a                                          ; $506e: $bf
    ld e, a                                       ; $506f: $5f
    ld l, c                                       ; $5070: $69
    call nc, $c3dc                                ; $5071: $d4 $dc $c3
    and l                                         ; $5074: $a5
    adc c                                         ; $5075: $89
    db $db                                        ; $5076: $db
    ld h, e                                       ; $5077: $63
    ret z                                         ; $5078: $c8

    or [hl]                                       ; $5079: $b6
    ld b, [hl]                                    ; $507a: $46
    ld l, c                                       ; $507b: $69
    ld c, $3c                                     ; $507c: $0e $3c
    ld [hl], c                                    ; $507e: $71
    rst $38                                       ; $507f: $ff
    or h                                          ; $5080: $b4
    or b                                          ; $5081: $b0
    cp l                                          ; $5082: $bd
    db $e4                                        ; $5083: $e4
    ld de, $91ce                                  ; $5084: $11 $ce $91
    inc d                                         ; $5087: $14
    adc h                                         ; $5088: $8c
    di                                            ; $5089: $f3
    add l                                         ; $508a: $85
    dec h                                         ; $508b: $25
    add [hl]                                      ; $508c: $86
    dec sp                                        ; $508d: $3b
    rst $20                                       ; $508e: $e7
    xor b                                         ; $508f: $a8
    pop de                                        ; $5090: $d1
    sbc d                                         ; $5091: $9a
    cp e                                          ; $5092: $bb
    ld d, l                                       ; $5093: $55
    xor e                                         ; $5094: $ab
    jr c, @+$76                                   ; $5095: $38 $74

    sub e                                         ; $5097: $93
    add hl, de                                    ; $5098: $19
    ret                                           ; $5099: $c9


    rst $18                                       ; $509a: $df
    sbc [hl]                                      ; $509b: $9e
    ld d, h                                       ; $509c: $54
    ld a, [$ff9d]                                 ; $509d: $fa $9d $ff
    add d                                         ; $50a0: $82
    ld e, a                                       ; $50a1: $5f
    ld sp, hl                                     ; $50a2: $f9
    ld l, a                                       ; $50a3: $6f
    add hl, bc                                    ; $50a4: $09
    ld hl, $fdd8                                  ; $50a5: $21 $d8 $fd
    dec [hl]                                      ; $50a8: $35
    ld e, d                                       ; $50a9: $5a
    cp l                                          ; $50aa: $bd
    rst $20                                       ; $50ab: $e7
    rst $10                                       ; $50ac: $d7
    add $e8                                       ; $50ad: $c6 $e8
    cp $af                                        ; $50af: $fe $af
    dec bc                                        ; $50b1: $0b
    nop                                           ; $50b2: $00
    sbc [hl]                                      ; $50b3: $9e
    db $e3                                        ; $50b4: $e3
    add c                                         ; $50b5: $81
    call nz, $ac8d                                ; $50b6: $c4 $8d $ac
    cp c                                          ; $50b9: $b9
    ld bc, $cf3c                                  ; $50ba: $01 $3c $cf
    ld e, b                                       ; $50bd: $58
    add $2d                                       ; $50be: $c6 $2d
    adc [hl]                                      ; $50c0: $8e
    inc de                                        ; $50c1: $13
    dec a                                         ; $50c2: $3d
    ld d, c                                       ; $50c3: $51
    ld [hl], e                                    ; $50c4: $73
    ld d, h                                       ; $50c5: $54
    and c                                         ; $50c6: $a1
    reti                                          ; $50c7: $d9


    ld b, e                                       ; $50c8: $43
    ld bc, $271c                                  ; $50c9: $01 $1c $27
    ld [$df12], a                                 ; $50cc: $ea $12 $df
    add sp, $7e                                   ; $50cf: $e8 $7e
    ld h, l                                       ; $50d1: $65
    db $d3                                        ; $50d2: $d3
    sub $9e                                       ; $50d3: $d6 $9e
    push hl                                       ; $50d5: $e5
    ld e, e                                       ; $50d6: $5b
    ld d, c                                       ; $50d7: $51
    jp nz, Jump_000_1cd2                          ; $50d8: $c2 $d2 $1c

    ld a, b                                       ; $50db: $78
    adc $e8                                       ; $50dc: $ce $e8
    dec bc                                        ; $50de: $0b
    nop                                           ; $50df: $00
    ld a, h                                       ; $50e0: $7c
    ld e, e                                       ; $50e1: $5b
    and e                                         ; $50e2: $a3
    add h                                         ; $50e3: $84
    and l                                         ; $50e4: $a5
    jp z, $775a                                   ; $50e5: $ca $5a $77

    ld d, h                                       ; $50e8: $54
    ld d, e                                       ; $50e9: $53
    ld c, [hl]                                    ; $50ea: $4e
    ld c, c                                       ; $50eb: $49
    pop af                                        ; $50ec: $f1
    inc a                                         ; $50ed: $3c
    ld h, e                                       ; $50ee: $63
    reti                                          ; $50ef: $d9


    dec h                                         ; $50f0: $25
    adc [hl]                                      ; $50f1: $8e
    inc de                                        ; $50f2: $13
    xor l                                         ; $50f3: $ad
    jp z, $3d5a                                   ; $50f4: $ca $5a $3d

    ld e, b                                       ; $50f7: $58
    cp $66                                        ; $50f8: $fe $66
    ld a, a                                       ; $50fa: $7f
    ret                                           ; $50fb: $c9


    and e                                         ; $50fc: $a3
    rst $10                                       ; $50fd: $d7
    dec a                                         ; $50fe: $3d
    sub $fa                                       ; $50ff: $d6 $fa
    sub e                                         ; $5101: $93
    adc d                                         ; $5102: $8a
    ld l, [hl]                                    ; $5103: $6e
    ld d, d                                       ; $5104: $52
    ld d, e                                       ; $5105: $53
    ld a, [bc]                                    ; $5106: $0a
    adc c                                         ; $5107: $89
    sbc [hl]                                      ; $5108: $9e
    ld e, e                                       ; $5109: $5b
    jp z, $f371                                   ; $510a: $ca $71 $f3

    ld l, a                                       ; $510d: $6f
    dec b                                         ; $510e: $05
    adc e                                         ; $510f: $8b
    or h                                          ; $5110: $b4
    inc sp                                        ; $5111: $33
    cp d                                          ; $5112: $ba
    nop                                           ; $5113: $00
    ld a, h                                       ; $5114: $7c
    ld d, c                                       ; $5115: $51
    ld b, l                                       ; $5116: $45
    ld d, h                                       ; $5117: $54
    xor d                                         ; $5118: $aa
    xor h                                         ; $5119: $ac
    push de                                       ; $511a: $d5
    ccf                                           ; $511b: $3f
    ld a, a                                       ; $511c: $7f
    ld l, l                                       ; $511d: $6d
    ld c, e                                       ; $511e: $4b
    inc de                                        ; $511f: $13
    ld a, e                                       ; $5120: $7b
    or a                                          ; $5121: $b7
    ld l, $f1                                     ; $5122: $2e $f1
    adc l                                         ; $5124: $8d
    pop de                                        ; $5125: $d1
    jp nz, $8c12                                  ; $5126: $c2 $12 $8c

    jp z, $dd9f                                   ; $5129: $ca $9f $dd

    rst $38                                       ; $512c: $ff
    dec h                                         ; $512d: $25
    db $db                                        ; $512e: $db
    jr c, @-$77                                   ; $512f: $38 $87

    ld l, $00                                     ; $5131: $2e $00
    sbc h                                         ; $5133: $9c
    ld e, e                                       ; $5134: $5b
    db $e3                                        ; $5135: $e3
    sbc h                                         ; $5136: $9c
    rla                                           ; $5137: $17
    sbc [hl]                                      ; $5138: $9e
    dec d                                         ; $5139: $15
    ld d, [hl]                                    ; $513a: $56
    push bc                                       ; $513b: $c5
    daa                                           ; $513c: $27
    dec [hl]                                      ; $513d: $35
    ld b, a                                       ; $513e: $47
    adc c                                         ; $513f: $89
    rst $20                                       ; $5140: $e7
    inc de                                        ; $5141: $13
    ld h, d                                       ; $5142: $62
    dec bc                                        ; $5143: $0b
    pop de                                        ; $5144: $d1
    pop hl                                        ; $5145: $e1
    jp z, Jump_05d_656c                           ; $5146: $ca $6c $65

    ld e, e                                       ; $5149: $5b
    and e                                         ; $514a: $a3
    ld [hl], l                                    ; $514b: $75
    ld b, a                                       ; $514c: $47
    dec de                                        ; $514d: $1b
    ld e, c                                       ; $514e: $59
    db $d3                                        ; $514f: $d3
    dec h                                         ; $5150: $25
    rlca                                          ; $5151: $07
    ld e, c                                       ; $5152: $59
    res 6, [hl]                                   ; $5153: $cb $b6
    ld b, [hl]                                    ; $5155: $46
    add hl, bc                                    ; $5156: $09
    ld c, e                                       ; $5157: $4b
    cp $b3                                        ; $5158: $fe $b3
    or a                                          ; $515a: $b7
    ld a, [hl]                                    ; $515b: $7e
    db $dd                                        ; $515c: $dd
    ld d, c                                       ; $515d: $51
    ld b, l                                       ; $515e: $45
    ld [$bf9f], a                                 ; $515f: $ea $9f $bf
    or [hl]                                       ; $5162: $b6
    dec h                                         ; $5163: $25
    ld c, a                                       ; $5164: $4f
    ld sp, $719d                                  ; $5165: $31 $9d $71
    halt                                          ; $5168: $76
    ld c, [hl]                                    ; $5169: $4e
    call nz, Call_000_00ba                        ; $516a: $c4 $ba $00
    db $fc                                        ; $516d: $fc
    ccf                                           ; $516e: $3f
    ld a, a                                       ; $516f: $7f
    ld l, l                                       ; $5170: $6d
    ld c, e                                       ; $5171: $4b
    ld b, [hl]                                    ; $5172: $46
    dec [hl]                                      ; $5173: $35
    or e                                          ; $5174: $b3
    xor h                                         ; $5175: $ac
    inc b                                         ; $5176: $04
    cp a                                          ; $5177: $bf
    jp nc, Jump_05d_4de8                          ; $5178: $d2 $e8 $4d

    jp z, Jump_05d_7621                           ; $517b: $ca $21 $76

    rlca                                          ; $517e: $07
    cp e                                          ; $517f: $bb
    nop                                           ; $5180: $00
    ld e, $d1                                     ; $5181: $1e $d1
    sbc c                                         ; $5183: $99
    db $eb                                        ; $5184: $eb
    call z, $8f5a                                 ; $5185: $cc $5a $8f
    ld l, d                                       ; $5188: $6a
    inc d                                         ; $5189: $14
    sub [hl]                                      ; $518a: $96
    ld a, h                                       ; $518b: $7c
    and d                                         ; $518c: $a2
    xor $ac                                       ; $518d: $ee $ac
    or d                                          ; $518f: $b2
    ld c, [hl]                                    ; $5190: $4e
    adc d                                         ; $5191: $8a
    rst $20                                       ; $5192: $e7
    add hl, de                                    ; $5193: $19
    sra [hl]                                      ; $5194: $cb $2e
    pop af                                        ; $5196: $f1
    ld b, l                                       ; $5197: $45
    add l                                         ; $5198: $85
    ld a, [$afe7]                                 ; $5199: $fa $e7 $af
    ld l, l                                       ; $519c: $6d
    ret                                           ; $519d: $c9


    ld d, e                                       ; $519e: $53
    ld c, h                                       ; $519f: $4c
    ld h, a                                       ; $51a0: $67
    sbc h                                         ; $51a1: $9c
    sbc l                                         ; $51a2: $9d
    inc de                                        ; $51a3: $13
    or c                                          ; $51a4: $b1
    ld l, $00                                     ; $51a5: $2e $00
    sbc h                                         ; $51a7: $9c
    ei                                            ; $51a8: $fb
    dec [hl]                                      ; $51a9: $35
    adc c                                         ; $51aa: $89
    add hl, de                                    ; $51ab: $19
    ld e, l                                       ; $51ac: $5d
    nop                                           ; $51ad: $00
    inc a                                         ; $51ae: $3c
    rst $08                                       ; $51af: $cf
    ld e, b                                       ; $51b0: $58
    add $2d                                       ; $51b1: $c6 $2d
    cp [hl]                                       ; $51b3: $be
    ld l, l                                       ; $51b4: $6d
    ld d, d                                       ; $51b5: $52
    cp a                                          ; $51b6: $bf
    rst $38                                       ; $51b7: $ff
    ld l, c                                       ; $51b8: $69
    adc a                                         ; $51b9: $8f
    add l                                         ; $51ba: $85
    ld [bc], a                                    ; $51bb: $02
    sbc [hl]                                      ; $51bc: $9e
    db $e3                                        ; $51bd: $e3
    add c                                         ; $51be: $81
    call nz, $ac8d                                ; $51bf: $c4 $8d $ac
    sub l                                         ; $51c2: $95
    rst $38                                       ; $51c3: $ff
    rst $10                                       ; $51c4: $d7
    xor [hl]                                      ; $51c5: $ae
    xor $68                                       ; $51c6: $ee $68
    inc hl                                        ; $51c8: $23
    inc sp                                        ; $51c9: $33
    ld c, d                                       ; $51ca: $4a
    ld a, [bc]                                    ; $51cb: $0a
    ld a, [hl]                                    ; $51cc: $7e
    and l                                         ; $51cd: $a5
    ld a, a                                       ; $51ce: $7f
    add $bf                                       ; $51cf: $c6 $bf
    db $ec                                        ; $51d1: $ec
    rra                                           ; $51d2: $1f
    ld a, [c]                                     ; $51d3: $f2
    sbc d                                         ; $51d4: $9a
    ld h, h                                       ; $51d5: $64
    cp e                                          ; $51d6: $bb
    ld h, l                                       ; $51d7: $65
    and h                                         ; $51d8: $a4
    ld a, h                                       ; $51d9: $7c
    rst $10                                       ; $51da: $d7
    sbc $3a                                       ; $51db: $de $3a
    ld c, d                                       ; $51dd: $4a
    ld [hl], e                                    ; $51de: $73
    di                                            ; $51df: $f3
    xor b                                         ; $51e0: $a8
    ld c, e                                       ; $51e1: $4b
    ld e, $bd                                     ; $51e2: $1e $bd
    adc $18                                       ; $51e4: $ce $18
    daa                                           ; $51e6: $27
    ld a, [hl+]                                   ; $51e7: $2a
    xor c                                         ; $51e8: $a9
    add sp, $26                                   ; $51e9: $e8 $26
    pop af                                        ; $51eb: $f1
    cp $99                                        ; $51ec: $fe $99
    rst $08                                       ; $51ee: $cf
    ret nc                                        ; $51ef: $d0

    add h                                         ; $51f0: $84
    dec h                                         ; $51f1: $25
    ccf                                           ; $51f2: $3f
    ld c, $76                                     ; $51f3: $0e $76
    sbc h                                         ; $51f5: $9c
    inc sp                                        ; $51f6: $33
    ld e, d                                       ; $51f7: $5a
    inc e                                         ; $51f8: $1c
    db $ec                                        ; $51f9: $ec

jr_05d_51fa:
    di                                            ; $51fa: $f3
    jr z, jr_05d_51fa                             ; $51fb: $28 $fd

    add sp, -$02                                  ; $51fd: $e8 $fe
    ei                                            ; $51ff: $fb
    cp a                                          ; $5200: $bf
    sub h                                         ; $5201: $94
    ld d, d                                       ; $5202: $52
    dec [hl]                                      ; $5203: $35
    ret                                           ; $5204: $c9


    halt                                          ; $5205: $76
    adc e                                         ; $5206: $8b
    ld l, $00                                     ; $5207: $2e $00
    adc [hl]                                      ; $5209: $8e
    dec e                                         ; $520a: $1d
    sub d                                         ; $520b: $92
    ld a, l                                       ; $520c: $7d
    and c                                         ; $520d: $a1
    ld l, h                                       ; $520e: $6c
    sbc e                                         ; $520f: $9b
    ld d, h                                       ; $5210: $54
    ld a, e                                       ; $5211: $7b
    rlca                                          ; $5212: $07
    ld [hl], c                                    ; $5213: $71
    inc bc                                        ; $5214: $03
    xor $2f                                       ; $5215: $ee $2f
    adc e                                         ; $5217: $8b
    ld c, d                                       ; $5218: $4a
    inc [hl]                                      ; $5219: $34
    sbc h                                         ; $521a: $9c
    xor c                                         ; $521b: $a9
    cp l                                          ; $521c: $bd
    or a                                          ; $521d: $b7
    and d                                         ; $521e: $a2
    inc [hl]                                      ; $521f: $34
    and e                                         ; $5220: $a3
    ld a, [$5b07]                                 ; $5221: $fa $07 $5b
    ld sp, hl                                     ; $5224: $f9
    ld [hl], c                                    ; $5225: $71
    sbc $7a                                       ; $5226: $de $7a
    ld [hl], l                                    ; $5228: $75
    ld l, a                                       ; $5229: $6f
    adc l                                         ; $522a: $8d
    ld c, [hl]                                    ; $522b: $4e
    ld [$dd1e], a                                 ; $522c: $ea $1e $dd
    cpl                                           ; $522f: $2f
    jr @+$7d                                      ; $5230: $18 $7b

    adc [hl]                                      ; $5232: $8e
    sub $8c                                       ; $5233: $d6 $8c
    ld [$6c1f], a                                 ; $5235: $ea $1f $6c
    ld e, e                                       ; $5238: $5b
    jp $e626                                      ; $5239: $c3 $26 $e6


    rst $18                                       ; $523c: $df
    ld c, c                                       ; $523d: $49
    ld b, l                                       ; $523e: $45
    scf                                           ; $523f: $37
    ret                                           ; $5240: $c9


    ld [hl], e                                    ; $5241: $73
    inc a                                         ; $5242: $3c
    sub b                                         ; $5243: $90
    cp b                                          ; $5244: $b8
    sub c                                         ; $5245: $91
    or l                                          ; $5246: $b5
    ld a, [$ff7d]                                 ; $5247: $fa $7d $ff
    ld e, a                                       ; $524a: $5f
    rst $30                                       ; $524b: $f7
    sub $e8                                       ; $524c: $d6 $e8
    ld c, e                                       ; $524e: $4b
    db $fc                                        ; $524f: $fc
    sub h                                         ; $5250: $94

jr_05d_5251:
    ld b, d                                       ; $5251: $42
    and d                                         ; $5252: $a2
    dec [hl]                                      ; $5253: $35
    add e                                         ; $5254: $83
    dec [hl]                                      ; $5255: $35
    and $df                                       ; $5256: $e6 $df
    sbc d                                         ; $5258: $9a
    ld h, e                                       ; $5259: $63
    sbc h                                         ; $525a: $9c
    cp b                                          ; $525b: $b8
    rst $28                                       ; $525c: $ef
    ld d, a                                       ; $525d: $57
    db $ed                                        ; $525e: $ed
    sub $05                                       ; $525f: $d6 $05
    nop                                           ; $5261: $00
    inc a                                         ; $5262: $3c
    ld d, h                                       ; $5263: $54
    ld [$fdf7], a                                 ; $5264: $ea $f7 $fd
    ld a, a                                       ; $5267: $7f
    db $dd                                        ; $5268: $dd
    or c                                          ; $5269: $b1
    db $10                                        ; $526a: $10
    ld l, d                                       ; $526b: $6a
    push hl                                       ; $526c: $e5
    rst $08                                       ; $526d: $cf
    xor $b7                                       ; $526e: $ee $b7
    sbc $a4                                       ; $5270: $de $a4
    ld h, b                                       ; $5272: $60
    inc [hl]                                      ; $5273: $34
    dec [hl]                                      ; $5274: $35
    xor [hl]                                      ; $5275: $ae
    push af                                       ; $5276: $f5
    or a                                          ; $5277: $b7
    ld d, d                                       ; $5278: $52
    xor d                                         ; $5279: $aa
    jr z, jr_05d_5251                             ; $527a: $28 $d5

    sbc $41                                       ; $527c: $de $41
    ld d, h                                       ; $527e: $54
    call c, Call_000_1c00                         ; $527f: $dc $00 $1c
    daa                                           ; $5282: $27
    ld c, d                                       ; $5283: $4a
    ld [hl], e                                    ; $5284: $73
    adc h                                         ; $5285: $8c
    ld [hl], e                                    ; $5286: $73
    ld b, [hl]                                    ; $5287: $46
    daa                                           ; $5288: $27
    dec d                                         ; $5289: $15
    db $dd                                        ; $528a: $dd
    inc h                                         ; $528b: $24
    rst $08                                       ; $528c: $cf
    pop af                                        ; $528d: $f1
    ld b, b                                       ; $528e: $40
    ld [c], a                                     ; $528f: $e2
    ld b, [hl]                                    ; $5290: $46
    sub $f2                                       ; $5291: $d6 $f2
    db $e3                                        ; $5293: $e3
    ld c, h                                       ; $5294: $4c
    ld [hl+], a                                   ; $5295: $22
    cp c                                          ; $5296: $b9
    scf                                           ; $5297: $37
    ld l, [hl]                                    ; $5298: $6e
    rst $28                                       ; $5299: $ef
    ld c, a                                       ; $529a: $4f
    ld b, b                                       ; $529b: $40
    sub b                                         ; $529c: $90
    push bc                                       ; $529d: $c5
    ld e, a                                       ; $529e: $5f
    ld [c], a                                     ; $529f: $e2
    dec e                                         ; $52a0: $1d
    dec h                                         ; $52a1: $25
    rst $30                                       ; $52a2: $f7
    add $ed                                       ; $52a3: $c6 $ed
    db $fd                                        ; $52a5: $fd
    add hl, bc                                    ; $52a6: $09
    ld [$10b2], sp                                ; $52a7: $08 $b2 $10
    sub [hl]                                      ; $52aa: $96
    sbc d                                         ; $52ab: $9a
    add sp, $1c                                   ; $52ac: $e8 $1c
    ld c, d                                       ; $52ae: $4a
    jp z, $c6b6                                   ; $52af: $ca $b6 $c6

    add hl, sp                                    ; $52b2: $39
    xor a                                         ; $52b3: $af
    ld e, b                                       ; $52b4: $58
    pop hl                                        ; $52b5: $e1
    add hl, bc                                    ; $52b6: $09
    db $dd                                        ; $52b7: $dd
    db $db                                        ; $52b8: $db
    ld b, h                                       ; $52b9: $44
    and l                                         ; $52ba: $a5
    sub h                                         ; $52bb: $94
    sbc d                                         ; $52bc: $9a
    add sp, -$6e                                  ; $52bd: $e8 $92
    add e                                         ; $52bf: $83
    xor h                                         ; $52c0: $ac
    ld [hl], l                                    ; $52c1: $75
    rst $00                                       ; $52c2: $c7
    ld b, d                                       ; $52c3: $42
    xor b                                         ; $52c4: $a8
    db $e4                                        ; $52c5: $e4
    ld l, a                                       ; $52c6: $6f
    inc de                                        ; $52c7: $13
    xor c                                         ; $52c8: $a9
    add $9c                                       ; $52c9: $c6 $9c
    db $e3                                        ; $52cb: $e3
    sub l                                         ; $52cc: $95
    ld d, e                                       ; $52cd: $53
    ld c, d                                       ; $52ce: $4a
    ld [hl], l                                    ; $52cf: $75
    ld bc, $680e                                  ; $52d0: $01 $0e $68
    ld h, [hl]                                    ; $52d3: $66
    scf                                           ; $52d4: $37
    ld [hl], l                                    ; $52d5: $75
    ld [hl], e                                    ; $52d6: $73
    db $dd                                        ; $52d7: $dd
    ld e, c                                       ; $52d8: $59
    ld h, [hl]                                    ; $52d9: $66
    ld sp, hl                                     ; $52da: $f9
    ld l, [hl]                                    ; $52db: $6e
    rst $30                                       ; $52dc: $f7
    ld e, a                                       ; $52dd: $5f
    rst $10                                       ; $52de: $d7
    dec h                                         ; $52df: $25
    ei                                            ; $52e0: $fb
    dec l                                         ; $52e1: $2d
    ld e, c                                       ; $52e2: $59
    sub h                                         ; $52e3: $94
    ld a, [$afe7]                                 ; $52e4: $fa $e7 $af
    ld l, l                                       ; $52e7: $6d
    ld [hl], c                                    ; $52e8: $71
    res 4, e                                      ; $52e9: $cb $a3
    sub a                                         ; $52eb: $97
    db $ed                                        ; $52ec: $ed
    ld d, $09                                     ; $52ed: $16 $09
    ld c, e                                       ; $52ef: $4b
    ld sp, hl                                     ; $52f0: $f9
    add [hl]                                      ; $52f1: $86
    push af                                       ; $52f2: $f5
    ld e, [hl]                                    ; $52f3: $5e
    nop                                           ; $52f4: $00
    cp h                                          ; $52f5: $bc
    cp a                                          ; $52f6: $bf
    inc sp                                        ; $52f7: $33
    ld c, d                                       ; $52f8: $4a
    ld sp, hl                                     ; $52f9: $f9
    or e                                          ; $52fa: $b3
    ccf                                           ; $52fb: $3f
    db $fd                                        ; $52fc: $fd
    rla                                           ; $52fd: $17
    nop                                           ; $52fe: $00
    ret nc                                        ; $52ff: $d0

    ld l, l                                       ; $5300: $6d
    dec hl                                        ; $5301: $2b
    sbc [hl]                                      ; $5302: $9e
    ld c, a                                       ; $5303: $4f
    adc b                                         ; $5304: $88
    dec l                                         ; $5305: $2d
    ld b, h                                       ; $5306: $44
    ld e, $b2                                     ; $5307: $1e $b2
    inc a                                         ; $5309: $3c
    ld a, [$3f4b]                                 ; $530a: $fa $4b $3f
    adc $5b                                       ; $530d: $ce $5b
    rst $38                                       ; $530f: $ff
    dec b                                         ; $5310: $05
    nop                                           ; $5311: $00
    inc e                                         ; $5312: $1c
    sub $af                                       ; $5313: $d6 $af
    ld a, [hl]                                    ; $5315: $7e
    sub [hl]                                      ; $5316: $96
    rst $28                                       ; $5317: $ef
    sbc h                                         ; $5318: $9c
    or c                                          ; $5319: $b1
    db $fd                                        ; $531a: $fd
    rla                                           ; $531b: $17
    nop                                           ; $531c: $00
    ld a, h                                       ; $531d: $7c
    ld d, c                                       ; $531e: $51
    ld hl, $d478                                  ; $531f: $21 $78 $d4
    ld a, a                                       ; $5322: $7f
    ld e, l                                       ; $5323: $5d
    nop                                           ; $5324: $00
    ret nc                                        ; $5325: $d0

    ld l, l                                       ; $5326: $6d
    dec hl                                        ; $5327: $2b
    ld c, a                                       ; $5328: $4f
    or c                                          ; $5329: $b1

Jump_05d_532a:
    inc b                                         ; $532a: $04
    adc a                                         ; $532b: $8f
    ld a, d                                       ; $532c: $7a
    db $eb                                        ; $532d: $eb
    cp a                                          ; $532e: $bf
    nop                                           ; $532f: $00
    ld e, [hl]                                    ; $5330: $5e
    sbc l                                         ; $5331: $9d
    ld l, l                                       ; $5332: $6d
    ld [de], a                                    ; $5333: $12
    ld c, h                                       ; $5334: $4c
    inc l                                         ; $5335: $2c
    rst $18                                       ; $5336: $df
    dec bc                                        ; $5337: $0b
    nop                                           ; $5338: $00
    ld a, h                                       ; $5339: $7c
    ld d, c                                       ; $533a: $51
    ld hl, $ecfe                                  ; $533b: $21 $fe $ec
    ld h, h                                       ; $533e: $64
    cp $a7                                        ; $533f: $fe $a7
    di                                            ; $5341: $f3
    cp a                                          ; $5342: $bf
    ld l, $00                                     ; $5343: $2e $00
    db $fc                                        ; $5345: $fc
    db $e3                                        ; $5346: $e3
    add h                                         ; $5347: $84
    adc $c3                                       ; $5348: $ce $c3
    db $db                                        ; $534a: $db
    ld [hl], c                                    ; $534b: $71
    adc $98                                       ; $534c: $ce $98

jr_05d_534e:
    or [hl]                                       ; $534e: $b6
    rla                                           ; $534f: $17
    nop                                           ; $5350: $00
    ret nc                                        ; $5351: $d0

    ld l, l                                       ; $5352: $6d
    xor e                                         ; $5353: $ab
    ei                                            ; $5354: $fb
    rst $20                                       ; $5355: $e7
    jr jr_05d_534e                                ; $5356: $18 $f6

    ld h, a                                       ; $5358: $67
    cpl                                           ; $5359: $2f
    nop                                           ; $535a: $00
    ld a, h                                       ; $535b: $7c
    ld d, c                                       ; $535c: $51
    and c                                         ; $535d: $a1
    cp $9d                                        ; $535e: $fe $9d
    rrca                                          ; $5360: $0f
    rrca                                          ; $5361: $0f
    cp h                                          ; $5362: $bc
    cp a                                          ; $5363: $bf
    ld b, a                                       ; $5364: $47
    push de                                       ; $5365: $d5
    sbc [hl]                                      ; $5366: $9e
    inc de                                        ; $5367: $13
    rla                                           ; $5368: $17
    nop                                           ; $5369: $00
    ret nc                                        ; $536a: $d0

    ld l, l                                       ; $536b: $6d
    xor e                                         ; $536c: $ab
    rst $18                                       ; $536d: $df
    adc d                                         ; $536e: $8a
    ld l, c                                       ; $536f: $69
    pop de                                        ; $5370: $d1
    ld [c], a                                     ; $5371: $e2
    db $fd                                        ; $5372: $fd
    inc sp                                        ; $5373: $33
    sbc a                                         ; $5374: $9f
    pop hl                                        ; $5375: $e1
    or h                                          ; $5376: $b4
    jr c, jr_05d_53a0                             ; $5377: $38 $27

    ld l, $00                                     ; $5379: $2e $00
    ld [bc], a                                    ; $537b: $02
    inc e                                         ; $537c: $1c
    db $fd                                        ; $537d: $fd
    sbc d                                         ; $537e: $9a
    cp e                                          ; $537f: $bb
    ld d, l                                       ; $5380: $55
    xor e                                         ; $5381: $ab
    ld a, h                                       ; $5382: $7c
    pop af                                        ; $5383: $f1
    ld b, h                                       ; $5384: $44
    rst $30                                       ; $5385: $f7
    ld a, [bc]                                    ; $5386: $0a
    and [hl]                                      ; $5387: $a6
    ld e, d                                       ; $5388: $5a
    cp e                                          ; $5389: $bb
    nop                                           ; $538a: $00
    ret nc                                        ; $538b: $d0

    ld l, l                                       ; $538c: $6d
    dec hl                                        ; $538d: $2b
    ld d, a                                       ; $538e: $57
    sub h                                         ; $538f: $94
    or c                                          ; $5390: $b1
    xor $25                                       ; $5391: $ee $25
    ld h, l                                       ; $5393: $65
    xor h                                         ; $5394: $ac
    ld a, e                                       ; $5395: $7b
    ld a, e                                       ; $5396: $7b
    inc bc                                        ; $5397: $03
    add d                                         ; $5398: $82
    and l                                         ; $5399: $a5
    ld e, $55                                     ; $539a: $1e $55
    ld a, e                                       ; $539c: $7b
    ld c, [hl]                                    ; $539d: $4e
    ld e, h                                       ; $539e: $5c
    nop                                           ; $539f: $00

jr_05d_53a0:
    ret nc                                        ; $53a0: $d0

    ld l, l                                       ; $53a1: $6d
    dec hl                                        ; $53a2: $2b
    ld d, a                                       ; $53a3: $57
    sub h                                         ; $53a4: $94
    or c                                          ; $53a5: $b1
    xor $25                                       ; $53a6: $ee $25
    ld h, l                                       ; $53a8: $65
    xor h                                         ; $53a9: $ac
    ld a, e                                       ; $53aa: $7b
    ld a, e                                       ; $53ab: $7b
    inc bc                                        ; $53ac: $03
    add d                                         ; $53ad: $82
    and l                                         ; $53ae: $a5
    ld e, $55                                     ; $53af: $1e $55
    ld a, e                                       ; $53b1: $7b
    ld c, [hl]                                    ; $53b2: $4e
    ld e, h                                       ; $53b3: $5c
    nop                                           ; $53b4: $00
    ld [bc], a                                    ; $53b5: $02
    ld [bc], a                                    ; $53b6: $02
    ret nc                                        ; $53b7: $d0

    ld l, l                                       ; $53b8: $6d
    dec hl                                        ; $53b9: $2b
    dec de                                        ; $53ba: $1b
    ld [$e8ff], sp                                ; $53bb: $08 $ff $e8
    ld [hl], c                                    ; $53be: $71
    xor a                                         ; $53bf: $af
    ld b, l                                       ; $53c0: $45
    jp hl                                         ; $53c1: $e9


    inc c                                         ; $53c2: $0c
    sbc h                                         ; $53c3: $9c
    di                                            ; $53c4: $f3
    cpl                                           ; $53c5: $2f
    nop                                           ; $53c6: $00
    ld c, $71                                     ; $53c7: $0e $71
    xor l                                         ; $53c9: $ad
    ld e, a                                       ; $53ca: $5f
    ld [hl], e                                    ; $53cb: $73
    add hl, de                                    ; $53cc: $19
    adc [hl]                                      ; $53cd: $8e
    ld l, c                                       ; $53ce: $69
    ld h, c                                       ; $53cf: $61
    ld a, e                                       ; $53d0: $7b
    ld bc, $1c02                                  ; $53d1: $01 $02 $1c
    db $fd                                        ; $53d4: $fd
    cp d                                          ; $53d5: $ba
    rst $00                                       ; $53d6: $c7
    ld e, d                                       ; $53d7: $5a
    xor a                                         ; $53d8: $af
    rst $38                                       ; $53d9: $ff
    rst $20                                       ; $53da: $e7
    ldh [rTIMA], a                                ; $53db: $e0 $05
    nop                                           ; $53dd: $00
    ld [bc], a                                    ; $53de: $02
    ld [bc], a                                    ; $53df: $02
    ld c, $ff                                     ; $53e0: $0e $ff
    db $fc                                        ; $53e2: $fc
    dec hl                                        ; $53e3: $2b
    ld e, l                                       ; $53e4: $5d
    ld l, e                                       ; $53e5: $6b
    ld h, h                                       ; $53e6: $64
    ei                                            ; $53e7: $fb
    and l                                         ; $53e8: $a5
    ld e, $55                                     ; $53e9: $1e $55
    ld a, e                                       ; $53eb: $7b
    ld c, [hl]                                    ; $53ec: $4e
    ld e, h                                       ; $53ed: $5c
    nop                                           ; $53ee: $00
    ret nc                                        ; $53ef: $d0

    ld l, l                                       ; $53f0: $6d
    dec hl                                        ; $53f1: $2b
    sbc $65                                       ; $53f2: $de $65
    inc sp                                        ; $53f4: $33
    sbc h                                         ; $53f5: $9c
    sbc c                                         ; $53f6: $99
    ret z                                         ; $53f7: $c8

    cp d                                          ; $53f8: $ba
    rst $30                                       ; $53f9: $f7
    ld [bc], a                                    ; $53fa: $02
    ret nc                                        ; $53fb: $d0

    ld l, l                                       ; $53fc: $6d
    dec hl                                        ; $53fd: $2b
    sbc $65                                       ; $53fe: $de $65
    inc sp                                        ; $5400: $33
    sbc h                                         ; $5401: $9c
    sbc c                                         ; $5402: $99
    ret z                                         ; $5403: $c8

    cp d                                          ; $5404: $ba
    rst $30                                       ; $5405: $f7
    ld [bc], a                                    ; $5406: $02
    ld [bc], a                                    ; $5407: $02
    ld [bc], a                                    ; $5408: $02
    ld [bc], a                                    ; $5409: $02
    ld c, $ff                                     ; $540a: $0e $ff
    db $fc                                        ; $540c: $fc
    dec hl                                        ; $540d: $2b
    ld e, l                                       ; $540e: $5d
    ld l, e                                       ; $540f: $6b
    ld h, h                                       ; $5410: $64
    ei                                            ; $5411: $fb
    and l                                         ; $5412: $a5
    ld e, $55                                     ; $5413: $1e $55
    ld a, e                                       ; $5415: $7b
    ld c, [hl]                                    ; $5416: $4e
    ld e, h                                       ; $5417: $5c
    nop                                           ; $5418: $00
    ld [bc], a                                    ; $5419: $02
    ld [bc], a                                    ; $541a: $02
    ld [bc], a                                    ; $541b: $02
    ld [bc], a                                    ; $541c: $02
    ld [bc], a                                    ; $541d: $02
    ld [bc], a                                    ; $541e: $02
    ld [bc], a                                    ; $541f: $02
    ld [bc], a                                    ; $5420: $02
    cp h                                          ; $5421: $bc
    sbc b                                         ; $5422: $98
    or $bf                                        ; $5423: $f6 $bf
    call c, $9f63                                 ; $5425: $dc $63 $9f
    nop                                           ; $5428: $00
    ld e, [hl]                                    ; $5429: $5e
    nop                                           ; $542a: $00
    ld a, h                                       ; $542b: $7c
    ld d, c                                       ; $542c: $51
    ld hl, $cfff                                  ; $542d: $21 $ff $cf
    call c, Call_05d_4c6a                         ; $5430: $dc $6a $4c
    rlca                                          ; $5433: $07
    ld d, [hl]                                    ; $5434: $56
    add h                                         ; $5435: $84
    ld b, l                                       ; $5436: $45
    call nc, Call_000_0005                        ; $5437: $d4 $05 $00
    ld a, h                                       ; $543a: $7c
    ld d, c                                       ; $543b: $51
    and c                                         ; $543c: $a1
    cp $f9                                        ; $543d: $fe $f9
    ld l, e                                       ; $543f: $6b
    ld e, e                                       ; $5440: $5b
    ld a, [c]                                     ; $5441: $f2
    inc d                                         ; $5442: $14
    db $d3                                        ; $5443: $d3
    add hl, de                                    ; $5444: $19
    ld h, a                                       ; $5445: $67
    rst $20                                       ; $5446: $e7
    ld b, h                                       ; $5447: $44
    xor h                                         ; $5448: $ac
    dec bc                                        ; $5449: $0b
    nop                                           ; $544a: $00
    ld [bc], a                                    ; $544b: $02
    ld [bc], a                                    ; $544c: $02
    ld [bc], a                                    ; $544d: $02
    ld [bc], a                                    ; $544e: $02
    ld [bc], a                                    ; $544f: $02
    ld [bc], a                                    ; $5450: $02
    ld [bc], a                                    ; $5451: $02
    ld [bc], a                                    ; $5452: $02
    ld [bc], a                                    ; $5453: $02
    ld [bc], a                                    ; $5454: $02
    ld e, $e3                                     ; $5455: $1e $e3
    sbc b                                         ; $5457: $98
    di                                            ; $5458: $f3
    ld e, a                                       ; $5459: $5f
    inc a                                         ; $545a: $3c
    pop bc                                        ; $545b: $c1
    xor $c5                                       ; $545c: $ee $c5
    adc d                                         ; $545e: $8a
    ld d, d                                       ; $545f: $52
    adc a                                         ; $5460: $8f
    ld [$fed8], a                                 ; $5461: $ea $d8 $fe
    dec bc                                        ; $5464: $0b
    nop                                           ; $5465: $00
    ld c, $e3                                     ; $5466: $0e $e3
    cp h                                          ; $5468: $bc
    push af                                       ; $5469: $f5
    adc e                                         ; $546a: $8b
    daa                                           ; $546b: $27
    ret c                                         ; $546c: $d8

    cp l                                          ; $546d: $bd
    ld e, b                                       ; $546e: $58
    ld hl, $763f                                  ; $546f: $21 $3f $76
    ld [c], a                                     ; $5472: $e2
    jp hl                                         ; $5473: $e9


    cp a                                          ; $5474: $bf
    nop                                           ; $5475: $00
    ld a, h                                       ; $5476: $7c
    ld d, c                                       ; $5477: $51
    ld hl, $4f9e                                  ; $5478: $21 $9e $4f
    adc b                                         ; $547b: $88
    dec l                                         ; $547c: $2d
    ld h, h                                       ; $547d: $64
    ld c, e                                       ; $547e: $4b
    scf                                           ; $547f: $37
    rst $10                                       ; $5480: $d7
    sbc h                                         ; $5481: $9c
    cp e                                          ; $5482: $bb
    ld [hl], l                                    ; $5483: $75
    ld bc, $517c                                  ; $5484: $01 $7c $51
    ld hl, $314f                                  ; $5487: $21 $4f $31
    sbc l                                         ; $548a: $9d
    ld [hl], c                                    ; $548b: $71
    halt                                          ; $548c: $76
    ld c, [hl]                                    ; $548d: $4e
    call nz, Call_000_00ba                        ; $548e: $c4 $ba $00
    ret nc                                        ; $5491: $d0

    ld l, l                                       ; $5492: $6d
    dec hl                                        ; $5493: $2b
    jr @-$37                                      ; $5494: $18 $c7

    add hl, de                                    ; $5496: $19
    rst $20                                       ; $5497: $e7
    ld d, e                                       ; $5498: $53
    ld hl, sp-$05                                 ; $5499: $f8 $fb
    ld [bc], a                                    ; $549b: $02
    db $fc                                        ; $549c: $fc
    and e                                         ; $549d: $a3
    rst $20                                       ; $549e: $e7
    jp z, $9dff                                   ; $549f: $ca $ff $9d

    inc de                                        ; $54a2: $13
    pop hl                                        ; $54a3: $e1
    ld d, a                                       ; $54a4: $57
    pop de                                        ; $54a5: $d1
    call z, $ea6e                                 ; $54a6: $cc $6e $ea
    and $ba                                       ; $54a9: $e6 $ba
    xor c                                         ; $54ab: $a9
    add sp, $02                                   ; $54ac: $e8 $02
    ld [bc], a                                    ; $54ae: $02
    ld c, $7f                                     ; $54af: $0e $7f
    ld b, [hl]                                    ; $54b1: $46
    add l                                         ; $54b2: $85
    and $32                                       ; $54b3: $e6 $32
    ld hl, sp-$53                                 ; $54b5: $f8 $ad
    pop de                                        ; $54b7: $d1
    ld a, [$002f]                                 ; $54b8: $fa $2f $00
    ld [bc], a                                    ; $54bb: $02
    ret nc                                        ; $54bc: $d0

    ld l, l                                       ; $54bd: $6d
    dec hl                                        ; $54be: $2b
    rrca                                          ; $54bf: $0f
    dec l                                         ; $54c0: $2d
    ld [hl+], a                                   ; $54c1: $22
    ld e, a                                       ; $54c2: $5f
    ld l, h                                       ; $54c3: $6c
    ld h, a                                       ; $54c4: $67
    db $fc                                        ; $54c5: $fc
    ret c                                         ; $54c6: $d8

    or e                                          ; $54c7: $b3
    rla                                           ; $54c8: $17

jr_05d_54c9:
    nop                                           ; $54c9: $00
    ld [bc], a                                    ; $54ca: $02
    sbc h                                         ; $54cb: $9c
    rst $38                                       ; $54cc: $ff
    or d                                          ; $54cd: $b2
    jr c, jr_05d_54c9                             ; $54ce: $38 $f9

    sbc [hl]                                      ; $54d0: $9e
    inc de                                        ; $54d1: $13
    ld [hl], d                                    ; $54d2: $72
    add b                                         ; $54d3: $80
    call z, Call_05d_60fb                         ; $54d4: $cc $fb $60
    cp l                                          ; $54d7: $bd
    sub $7f                                       ; $54d8: $d6 $7f
    ld bc, $d002                                  ; $54da: $01 $02 $d0
    ld l, l                                       ; $54dd: $6d
    xor e                                         ; $54de: $ab
    ld sp, hl                                     ; $54df: $f9
    add l                                         ; $54e0: $85
    ldh a, [$cb]                                  ; $54e1: $f0 $cb
    ld bc, $ef32                                  ; $54e3: $01 $32 $ef
    add e                                         ; $54e6: $83
    push af                                       ; $54e7: $f5
    sbc [hl]                                      ; $54e8: $9e
    inc de                                        ; $54e9: $13
    rla                                           ; $54ea: $17
    nop                                           ; $54eb: $00
    inc e                                         ; $54ec: $1c
    db $fd                                        ; $54ed: $fd
    ld [hl], d                                    ; $54ee: $72
    add b                                         ; $54ef: $80
    call z, Call_05d_60fb                         ; $54f0: $cc $fb $60
    xor l                                         ; $54f3: $ad
    cp c                                          ; $54f4: $b9
    ld e, e                                       ; $54f5: $5b
    or l                                          ; $54f6: $b5
    rla                                           ; $54f7: $17
    nop                                           ; $54f8: $00
    sbc [hl]                                      ; $54f9: $9e
    ld l, a                                       ; $54fa: $6f
    ret z                                         ; $54fb: $c8

    ld bc, $ef32                                  ; $54fc: $01 $32 $ef
    add e                                         ; $54ff: $83
    or l                                          ; $5500: $b5
    sbc d                                         ; $5501: $9a
    jp nc, Jump_05d_46de                          ; $5502: $d2 $de $46

    ld d, [hl]                                    ; $5505: $56
    cp e                                          ; $5506: $bb
    ld [hl], l                                    ; $5507: $75
    ld bc, $111e                                  ; $5508: $01 $1e $11
    ld l, c                                       ; $550b: $69
    xor $56                                       ; $550c: $ee $56
    xor l                                         ; $550e: $ad
    inc a                                         ; $550f: $3c
    ld b, a                                       ; $5510: $47
    add [hl]                                      ; $5511: $86
    rst $20                                       ; $5512: $e7
    call nz, Call_000_0005                        ; $5513: $c4 $05 $00
    ret nc                                        ; $5516: $d0

    ld l, l                                       ; $5517: $6d
    xor e                                         ; $5518: $ab
    add e                                         ; $5519: $83
    ld h, e                                       ; $551a: $63
    adc $ff                                       ; $551b: $ce $ff
    ld [$a351], a                                 ; $551d: $ea $51 $a3
    sub l                                         ; $5520: $95
    ld c, l                                       ; $5521: $4d
    ld e, e                                       ; $5522: $5b
    ld a, e                                       ; $5523: $7b
    sub [hl]                                      ; $5524: $96
    ld l, a                                       ; $5525: $6f
    ld b, l                                       ; $5526: $45
    ld e, l                                       ; $5527: $5d
    nop                                           ; $5528: $00
    ld [bc], a                                    ; $5529: $02
    ld [bc], a                                    ; $552a: $02
    ld [bc], a                                    ; $552b: $02
    ld [bc], a                                    ; $552c: $02
    ld a, h                                       ; $552d: $7c
    ld d, c                                       ; $552e: $51
    and c                                         ; $552f: $a1
    cp c                                          ; $5530: $b9
    ld [hl], c                                    ; $5531: $71
    ld c, [hl]                                    ; $5532: $4e
    ld [hl], h                                    ; $5533: $74
    ld h, a                                       ; $5534: $67
    ld e, c                                       ; $5535: $59
    ld l, c                                       ; $5536: $69
    ld d, d                                       ; $5537: $52
    sub $94                                       ; $5538: $d6 $94
    inc de                                        ; $553a: $13
    push de                                       ; $553b: $d5
    dec b                                         ; $553c: $05
    nop                                           ; $553d: $00
    cp h                                          ; $553e: $bc
    ld h, e                                       ; $553f: $63
    xor [hl]                                      ; $5540: $ae
    push af                                       ; $5541: $f5
    bit 3, a                                      ; $5542: $cb $5f
    ld [hl], $aa                                  ; $5544: $36 $aa
    ld b, $b2                                     ; $5546: $06 $b2
    cp a                                          ; $5548: $bf
    nop                                           ; $5549: $00
    ret nc                                        ; $554a: $d0

    ld l, l                                       ; $554b: $6d
    dec hl                                        ; $554c: $2b
    db $db                                        ; $554d: $db
    call $9263                                    ; $554e: $cd $63 $92
    jp hl                                         ; $5551: $e9


    di                                            ; $5552: $f3
    rst $18                                       ; $5553: $df
    cp d                                          ; $5554: $ba
    nop                                           ; $5555: $00
    db $fc                                        ; $5556: $fc
    cp a                                          ; $5557: $bf
    sub $71                                       ; $5558: $d6 $71
    ld b, d                                       ; $555a: $42
    sub [hl]                                      ; $555b: $96
    cp $9c                                        ; $555c: $fe $9c
    ld e, e                                       ; $555e: $5b
    rst $28                                       ; $555f: $ef
    ei                                            ; $5560: $fb
    db $e3                                        ; $5561: $e3
    ldh [$f6], a                                  ; $5562: $e0 $f6
    dec hl                                        ; $5564: $2b
    ld a, a                                       ; $5565: $7f
    db $eb                                        ; $5566: $eb
    rst $38                                       ; $5567: $ff
    cp d                                          ; $5568: $ba
    nop                                           ; $5569: $00
    sbc h                                         ; $556a: $9c
    ld [hl], c                                    ; $556b: $71
    ld a, [c]                                     ; $556c: $f2
    ld l, l                                       ; $556d: $6d
    ld [de], a                                    ; $556e: $12
    inc a                                         ; $556f: $3c
    ldh a, [$fe]                                  ; $5570: $f0 $fe
    or d                                          ; $5572: $b2
    sbc b                                         ; $5573: $98
    cp b                                          ; $5574: $b8
    dec a                                         ; $5575: $3d
    call z, $e71f                                 ; $5576: $cc $1f $e7
    cp $0b                                        ; $5579: $fe $0b
    nop                                           ; $557b: $00
    sbc h                                         ; $557c: $9c
    ld [hl], c                                    ; $557d: $71
    ld a, [c]                                     ; $557e: $f2
    ld l, l                                       ; $557f: $6d
    ld [de], a                                    ; $5580: $12
    inc a                                         ; $5581: $3c
    ldh a, [$fe]                                  ; $5582: $f0 $fe
    or d                                          ; $5584: $b2
    sbc b                                         ; $5585: $98
    cp b                                          ; $5586: $b8
    dec a                                         ; $5587: $3d
    call z, $e71f                                 ; $5588: $cc $1f $e7
    cp $0b                                        ; $558b: $fe $0b
    nop                                           ; $558d: $00
    ret nc                                        ; $558e: $d0

    ld l, l                                       ; $558f: $6d
    xor e                                         ; $5590: $ab
    ld a, h                                       ; $5591: $7c
    rst $10                                       ; $5592: $d7
    sbc $3a                                       ; $5593: $de $3a
    ld c, d                                       ; $5595: $4a
    ld [hl], e                                    ; $5596: $73
    di                                            ; $5597: $f3
    cp l                                          ; $5598: $bd
    nop                                           ; $5599: $00
    ld a, h                                       ; $559a: $7c
    ld d, c                                       ; $559b: $51
    ld hl, $831b                                  ; $559c: $21 $1b $83
    ld b, l                                       ; $559f: $45
    sub h                                         ; $55a0: $94
    db $ec                                        ; $55a1: $ec
    rst $08                                       ; $55a2: $cf
    ld l, [hl]                                    ; $55a3: $6e
    ld e, l                                       ; $55a4: $5d
    nop                                           ; $55a5: $00
    ret nc                                        ; $55a6: $d0

    ld l, l                                       ; $55a7: $6d
    dec hl                                        ; $55a8: $2b
    sbc [hl]                                      ; $55a9: $9e
    ld h, a                                       ; $55aa: $67
    inc l                                         ; $55ab: $2c
    ld [hl], e                                    ; $55ac: $73
    ld h, $8f                                     ; $55ad: $26 $8f
    sub e                                         ; $55af: $93
    ld [c], a                                     ; $55b0: $e2
    ld b, h                                       ; $55b1: $44
    sub $bd                                       ; $55b2: $d6 $bd
    rla                                           ; $55b4: $17
    nop                                           ; $55b5: $00
    ret nc                                        ; $55b6: $d0

    ld l, l                                       ; $55b7: $6d
    dec hl                                        ; $55b8: $2b
    sbc [hl]                                      ; $55b9: $9e
    ld c, a                                       ; $55ba: $4f
    adc b                                         ; $55bb: $88
    dec l                                         ; $55bc: $2d
    ld b, h                                       ; $55bd: $44
    add hl, hl                                    ; $55be: $29
    sbc [hl]                                      ; $55bf: $9e
    ld a, h                                       ; $55c0: $7c
    xor l                                         ; $55c1: $ad

jr_05d_55c2:
    rst $38                                       ; $55c2: $ff
    ld [bc], a                                    ; $55c3: $02
    inc e                                         ; $55c4: $1c
    db $fd                                        ; $55c5: $fd
    or d                                          ; $55c6: $b2
    jr c, jr_05d_55c2                             ; $55c7: $38 $f9

    sbc [hl]                                      ; $55c9: $9e
    inc de                                        ; $55ca: $13

jr_05d_55cb:
    ld a, [c]                                     ; $55cb: $f2
    inc d                                         ; $55cc: $14
    db $d3                                        ; $55cd: $d3
    add hl, de                                    ; $55ce: $19
    ld h, a                                       ; $55cf: $67
    daa                                           ; $55d0: $27
    sub [hl]                                      ; $55d1: $96
    ld a, d                                       ; $55d2: $7a
    ld d, h                                       ; $55d3: $54
    dec c                                         ; $55d4: $0d
    or e                                          ; $55d5: $b3
    xor a                                         ; $55d6: $af
    cp a                                          ; $55d7: $bf
    nop                                           ; $55d8: $00
    ret nc                                        ; $55d9: $d0

    ld l, l                                       ; $55da: $6d
    dec hl                                        ; $55db: $2b
    adc e                                         ; $55dc: $8b
    pop bc                                        ; $55dd: $c1
    cp $f3                                        ; $55de: $fe $f3
    rst $10                                       ; $55e0: $d7
    add hl, de                                    ; $55e1: $19
    jr c, jr_05d_55cb                             ; $55e2: $38 $e7

    and a                                         ; $55e4: $a7
    inc bc                                        ; $55e5: $03
    dec hl                                        ; $55e6: $2b
    ld l, $00                                     ; $55e7: $2e $00
    ld c, $ff                                     ; $55e9: $0e $ff
    db $fc                                        ; $55eb: $fc
    add sp, -$29                                  ; $55ec: $e8 $d7
    ld e, h                                       ; $55ee: $5c
    add [hl]                                      ; $55ef: $86
    jp Jump_000_32e6                              ; $55f0: $c3 $e6 $32


    ld hl, sp+$2f                                 ; $55f3: $f8 $2f
    nop                                           ; $55f5: $00
    ld [bc], a                                    ; $55f6: $02
    inc a                                         ; $55f7: $3c
    rra                                           ; $55f8: $1f
    ld [c], a                                     ; $55f9: $e2
    db $fd                                        ; $55fa: $fd
    inc sp                                        ; $55fb: $33
    sbc a                                         ; $55fc: $9f
    pop hl                                        ; $55fd: $e1

jr_05d_55fe:
    or h                                          ; $55fe: $b4
    jr c, jr_05d_55fe                             ; $55ff: $38 $fd

    add d                                         ; $5601: $82
    rlca                                          ; $5602: $07
    sbc $1b                                       ; $5603: $de $1b
    dec h                                         ; $5605: $25
    ld c, h                                       ; $5606: $4c
    pop hl                                        ; $5607: $e1
    adc b                                         ; $5608: $88
    cp [hl]                                       ; $5609: $be
    nop                                           ; $560a: $00
    ld c, $7f                                     ; $560b: $0e $7f
    ld b, [hl]                                    ; $560d: $46
    add l                                         ; $560e: $85
    db $fc                                        ; $560f: $fc
    ccf                                           ; $5610: $3f
    ld [hl], e                                    ; $5611: $73
    xor e                                         ; $5612: $ab
    ld sp, $581d                                  ; $5613: $31 $1d $58
    ld de, $7fd6                                  ; $5616: $11 $d6 $7f
    ld bc, $6dd0                                  ; $5619: $01 $d0 $6d
    xor e                                         ; $561c: $ab
    ld c, c                                       ; $561d: $49
    dec a                                         ; $561e: $3d
    and e                                         ; $561f: $a3
    dec sp                                        ; $5620: $3b
    sub e                                         ; $5621: $93
    rst $38                                       ; $5622: $ff
    inc sp                                        ; $5623: $33
    cp d                                          ; $5624: $ba
    rst $30                                       ; $5625: $f7
    ld [bc], a                                    ; $5626: $02
    inc e                                         ; $5627: $1c
    sub $2f                                       ; $5628: $d6 $2f
    ei                                            ; $562a: $fb
    sub c                                         ; $562b: $91
    rst $38                                       ; $562c: $ff
    dec b                                         ; $562d: $05
    nop                                           ; $562e: $00
    ld c, $ff                                     ; $562f: $0e $ff
    db $fc                                        ; $5631: $fc
    bit 2, e                                      ; $5632: $cb $53
    ld c, h                                       ; $5634: $4c
    ld h, a                                       ; $5635: $67
    sbc h                                         ; $5636: $9c
    sbc l                                         ; $5637: $9d
    inc de                                        ; $5638: $13
    or c                                          ; $5639: $b1
    ld l, $00                                     ; $563a: $2e $00
    ld a, h                                       ; $563c: $7c
    ld d, c                                       ; $563d: $51
    ld hl, $9107                                  ; $563e: $21 $07 $91
    rst $28                                       ; $5641: $ef
    add hl, sp                                    ; $5642: $39
    ld d, c                                       ; $5643: $51
    jp nz, $db74                                  ; $5644: $c2 $74 $db

    ld [c], a                                     ; $5647: $e2
    ld [bc], a                                    ; $5648: $02
    ret nc                                        ; $5649: $d0

    ld l, l                                       ; $564a: $6d
    dec hl                                        ; $564b: $2b
    rst $30                                       ; $564c: $f7
    add $ed                                       ; $564d: $c6 $ed
    db $fd                                        ; $564f: $fd
    add hl, bc                                    ; $5650: $09
    ld [$f8b2], sp                                ; $5651: $08 $b2 $f8
    dec bc                                        ; $5654: $0b
    nop                                           ; $5655: $00
    ld a, h                                       ; $5656: $7c
    ld d, c                                       ; $5657: $51
    and c                                         ; $5658: $a1
    cp $f9                                        ; $5659: $fe $f9
    ld l, e                                       ; $565b: $6b
    ld e, e                                       ; $565c: $5b
    ld a, [c]                                     ; $565d: $f2
    rst $38                                       ; $565e: $ff
    call z, $c6ad                                 ; $565f: $cc $ad $c6
    ld [hl], h                                    ; $5662: $74
    ld h, b                                       ; $5663: $60
    ld b, l                                       ; $5664: $45
    ld e, b                                       ; $5665: $58
    ld b, h                                       ; $5666: $44
    ld e, l                                       ; $5667: $5d
    nop                                           ; $5668: $00
    ret nc                                        ; $5669: $d0

    ld l, l                                       ; $566a: $6d
    dec hl                                        ; $566b: $2b
    sbc $65                                       ; $566c: $de $65
    inc sp                                        ; $566e: $33
    sbc h                                         ; $566f: $9c
    sbc c                                         ; $5670: $99
    ret z                                         ; $5671: $c8

    cp d                                          ; $5672: $ba
    rst $30                                       ; $5673: $f7
    ld [bc], a                                    ; $5674: $02
    sbc [hl]                                      ; $5675: $9e
    rst $28                                       ; $5676: $ef
    ld e, d                                       ; $5677: $5a
    db $e3                                        ; $5678: $e3
    inc e                                         ; $5679: $1c
    ldh a, [$03]                                  ; $567a: $f0 $03
    ld c, $70                                     ; $567c: $0e $70
    ld hl, $f35f                                  ; $567e: $21 $5f $f3
    cp e                                          ; $5681: $bb
    rst $30                                       ; $5682: $f7
    db $fc                                        ; $5683: $fc
    db $fc                                        ; $5684: $fc
    pop hl                                        ; $5685: $e1
    ei                                            ; $5686: $fb
    rrca                                          ; $5687: $0f
    nop                                           ; $5688: $00
    ld l, [hl]                                    ; $5689: $6e
    ei                                            ; $568a: $fb
    ret c                                         ; $568b: $d8

    ld de, $2e73                                  ; $568c: $11 $73 $2e
    nop                                           ; $568f: $00
    ld c, $b9                                     ; $5690: $0e $b9
    adc $e1                                       ; $5692: $ce $e1
    sbc d                                         ; $5694: $9a
    ccf                                           ; $5695: $3f
    ld a, h                                       ; $5696: $7c
    rst $38                                       ; $5697: $ff
    ld bc, $3f9c                                  ; $5698: $01 $9c $3f
    ld a, [c]                                     ; $569b: $f2
    sbc a                                         ; $569c: $9f
    ccf                                           ; $569d: $3f
    ld a, h                                       ; $569e: $7c
    rst $38                                       ; $569f: $ff
    ld bc, $cbbc                                  ; $56a0: $01 $bc $cb
    ldh [$9f], a                                  ; $56a3: $e0 $9f
    ccf                                           ; $56a5: $3f
    ld a, h                                       ; $56a6: $7c
    rst $38                                       ; $56a7: $ff
    ld bc, $ffbc                                  ; $56a8: $01 $bc $ff
    cp $98                                        ; $56ab: $fe $98
    ccf                                           ; $56ad: $3f
    ld a, h                                       ; $56ae: $7c
    rst $38                                       ; $56af: $ff
    ld bc, $cfbc                                  ; $56b0: $01 $bc $cf
    and $dc                                       ; $56b3: $e6 $dc
    ld sp, hl                                     ; $56b5: $f9
    jp Jump_000_1ff7                              ; $56b6: $c3 $f7 $1f


    nop                                           ; $56b9: $00
    ld e, $b2                                     ; $56ba: $1e $b2
    inc a                                         ; $56bc: $3c
    ld a, [$b64b]                                 ; $56bd: $fa $4b $b6
    ld b, [hl]                                    ; $56c0: $46
    ld d, h                                       ; $56c1: $54
    sub e                                         ; $56c2: $93
    or d                                          ; $56c3: $b2
    ld [$1e05], a                                 ; $56c4: $ea $05 $1e
    or d                                          ; $56c7: $b2
    inc a                                         ; $56c8: $3c
    ld a, [$9d4b]                                 ; $56c9: $fa $4b $9d
    or c                                          ; $56cc: $b1
    sbc e                                         ; $56cd: $9b
    db $e4                                        ; $56ce: $e4
    inc a                                         ; $56cf: $3c
    nop                                           ; $56d0: $00
    ld e, $11                                     ; $56d1: $1e $11
    res 4, e                                      ; $56d3: $cb $a3
    sub h                                         ; $56d5: $94
    sbc l                                         ; $56d6: $9d
    db $ed                                        ; $56d7: $ed
    call z, $fc00                                 ; $56d8: $cc $00 $fc
    reti                                          ; $56db: $d9


    ret                                           ; $56dc: $c9


    db $fc                                        ; $56dd: $fc
    ld c, a                                       ; $56de: $4f
    rst $20                                       ; $56df: $e7
    sub a                                         ; $56e0: $97
    ld a, [hl-]                                   ; $56e1: $3a
    ld h, e                                       ; $56e2: $63
    scf                                           ; $56e3: $37
    ret                                           ; $56e4: $c9


    ld a, c                                       ; $56e5: $79
    nop                                           ; $56e6: $00
    db $fc                                        ; $56e7: $fc
    reti                                          ; $56e8: $d9


    ret                                           ; $56e9: $c9


    db $fc                                        ; $56ea: $fc
    ld c, a                                       ; $56eb: $4f
    rst $20                                       ; $56ec: $e7
    sub a                                         ; $56ed: $97
    ld a, [hl-]                                   ; $56ee: $3a
    ld h, e                                       ; $56ef: $63
    scf                                           ; $56f0: $37
    ret                                           ; $56f1: $c9


    dec b                                         ; $56f2: $05
    nop                                           ; $56f3: $00
    db $fc                                        ; $56f4: $fc
    reti                                          ; $56f5: $d9


    ret                                           ; $56f6: $c9


    db $fc                                        ; $56f7: $fc
    ld c, a                                       ; $56f8: $4f
    rst $20                                       ; $56f9: $e7
    sub a                                         ; $56fa: $97
    ld a, [hl-]                                   ; $56fb: $3a
    ld h, e                                       ; $56fc: $63
    scf                                           ; $56fd: $37

Call_05d_56fe:
    ret                                           ; $56fe: $c9


    dec h                                         ; $56ff: $25
    nop                                           ; $5700: $00
    db $fc                                        ; $5701: $fc
    reti                                          ; $5702: $d9


    ret                                           ; $5703: $c9


    db $fc                                        ; $5704: $fc
    ld c, a                                       ; $5705: $4f
    rst $20                                       ; $5706: $e7
    sub a                                         ; $5707: $97
    db $fc                                        ; $5708: $fc
    sbc l                                         ; $5709: $9d
    rrca                                          ; $570a: $0f
    adc a                                         ; $570b: $8f
    ld a, d                                       ; $570c: $7a
    nop                                           ; $570d: $00
    ld a, h                                       ; $570e: $7c
    ld h, e                                       ; $570f: $63
    db $eb                                        ; $5710: $eb
    rst $10                                       ; $5711: $d7
    ld a, [hl-]                                   ; $5712: $3a
    ld c, d                                       ; $5713: $4a
    ld l, h                                       ; $5714: $6c
    rst $30                                       ; $5715: $f7
    ld e, $70                                     ; $5716: $1e $70
    sub h                                         ; $5718: $94

Call_05d_5719:
    adc $c0                                       ; $5719: $ce $c0
    add hl, sp                                    ; $571b: $39
    rra                                           ; $571c: $1f
    nop                                           ; $571d: $00
    ld c, $c6                                     ; $571e: $0e $c6
    dec e                                         ; $5720: $1d
    inc c                                         ; $5721: $0c
    rrca                                          ; $5722: $0f
    ld h, $b4                                     ; $5723: $26 $b4
    ld e, a                                       ; $5725: $5f
    ld a, [hl-]                                   ; $5726: $3a
    inc bc                                        ; $5727: $03
    rst $20                                       ; $5728: $e7
    ld a, h                                       ; $5729: $7c
    nop                                           ; $572a: $00
    inc a                                         ; $572b: $3c
    rst $38                                       ; $572c: $ff
    xor h                                         ; $572d: $ac
    sub $e6                                       ; $572e: $d6 $e6
    and a                                         ; $5730: $a7
    inc bc                                        ; $5731: $03
    dec hl                                        ; $5732: $2b
    nop                                           ; $5733: $00
    db $fc                                        ; $5734: $fc
    sub h                                         ; $5735: $94
    or $f6                                        ; $5736: $f6 $f6
    ld b, [hl]                                    ; $5738: $46
    ld b, a                                       ; $5739: $47
    sub h                                         ; $573a: $94
    adc $c0                                       ; $573b: $ce $c0
    add hl, sp                                    ; $573d: $39
    rra                                           ; $573e: $1f
    nop                                           ; $573f: $00
    ld l, [hl]                                    ; $5740: $6e
    sbc a                                         ; $5741: $9f
    ld h, c                                       ; $5742: $61
    ld l, a                                       ; $5743: $6f
    cp l                                          ; $5744: $bd
    sbc a                                         ; $5745: $9f
    ld c, $ac                                     ; $5746: $0e $ac
    nop                                           ; $5748: $00
    ld e, $8f                                     ; $5749: $1e $8f
    pop de                                        ; $574b: $d1
    ccf                                           ; $574c: $3f
    ld a, a                                       ; $574d: $7f
    ld hl, sp-$02                                 ; $574e: $f8 $fe
    inc bc                                        ; $5750: $03
    ld e, $e3                                     ; $5751: $1e $e3
    or [hl]                                       ; $5753: $b6
    adc l                                         ; $5754: $8d
    inc sp                                        ; $5755: $33
    ld [hl], b                                    ; $5756: $70
    adc $07                                       ; $5757: $ce $07
    sbc h                                         ; $5759: $9c
    inc bc                                        ; $575a: $03
    pop hl                                        ; $575b: $e1
    rra                                           ; $575c: $1f
    dec a                                         ; $575d: $3d
    xor $b5                                       ; $575e: $ee $b5
    inc sp                                        ; $5760: $33
    ld [hl], b                                    ; $5761: $70
    adc $07                                       ; $5762: $ce $07
    ld e, $5a                                     ; $5764: $1e $5a
    ld b, h                                       ; $5766: $44
    cp [hl]                                       ; $5767: $be
    ret c                                         ; $5768: $d8

    adc $f8                                       ; $5769: $ce $f8
    or c                                          ; $576b: $b1
    ld h, a                                       ; $576c: $67
    ld bc, $1bbc                                  ; $576d: $01 $bc $1b
    rst $20                                       ; $5770: $e7
    ld b, h                                       ; $5771: $44
    ld [hl], a                                    ; $5772: $77
    and [hl]                                      ; $5773: $a6
    dec sp                                        ; $5774: $3b
    jp c, $ce48                                   ; $5775: $da $48 $ce

    inc bc                                        ; $5778: $03
    cp h                                          ; $5779: $bc
    dec de                                        ; $577a: $1b
    rst $20                                       ; $577b: $e7
    ld b, h                                       ; $577c: $44
    ld [hl], a                                    ; $577d: $77
    and [hl]                                      ; $577e: $a6
    dec sp                                        ; $577f: $3b
    jp c, $2e48                                   ; $5780: $da $48 $2e

    nop                                           ; $5783: $00
    cp h                                          ; $5784: $bc
    dec de                                        ; $5785: $1b
    rst $20                                       ; $5786: $e7
    ld b, h                                       ; $5787: $44
    ld [hl], a                                    ; $5788: $77
    and [hl]                                      ; $5789: $a6
    dec sp                                        ; $578a: $3b
    jp c, $2e48                                   ; $578b: $da $48 $2e

    ld [bc], a                                    ; $578e: $02
    cp h                                          ; $578f: $bc
    dec de                                        ; $5790: $1b
    rst $20                                       ; $5791: $e7
    ld b, h                                       ; $5792: $44
    ld [hl], a                                    ; $5793: $77
    and [hl]                                      ; $5794: $a6
    dec sp                                        ; $5795: $3b
    jp c, $2e48                                   ; $5796: $da $48 $2e

    ld bc, $1bbc                                  ; $5799: $01 $bc $1b
    rst $20                                       ; $579c: $e7
    ld b, h                                       ; $579d: $44
    ld [hl], a                                    ; $579e: $77
    and [hl]                                      ; $579f: $a6
    dec sp                                        ; $57a0: $3b
    jp c, $2e48                                   ; $57a1: $da $48 $2e

    inc bc                                        ; $57a4: $03
    cp h                                          ; $57a5: $bc
    dec de                                        ; $57a6: $1b
    rst $20                                       ; $57a7: $e7
    ld b, h                                       ; $57a8: $44
    ld [hl], a                                    ; $57a9: $77
    and [hl]                                      ; $57aa: $a6
    dec sp                                        ; $57ab: $3b
    jp c, $ae48                                   ; $57ac: $da $48 $ae

    nop                                           ; $57af: $00
    sbc [hl]                                      ; $57b0: $9e
    rst $28                                       ; $57b1: $ef
    sbc $b1                                       ; $57b2: $de $b1
    dec d                                         ; $57b4: $15
    and l                                         ; $57b5: $a5
    adc $d8                                       ; $57b6: $ce $d8
    ld c, l                                       ; $57b8: $4d
    ld [hl], d                                    ; $57b9: $72
    ld e, $00                                     ; $57ba: $1e $00
    sbc [hl]                                      ; $57bc: $9e
    rst $28                                       ; $57bd: $ef
    sbc $b1                                       ; $57be: $de $b1
    dec d                                         ; $57c0: $15
    and l                                         ; $57c1: $a5
    adc $d8                                       ; $57c2: $ce $d8
    ld c, l                                       ; $57c4: $4d
    ld [hl], d                                    ; $57c5: $72
    ld bc, $9e00                                  ; $57c6: $01 $00 $9e
    rst $28                                       ; $57c9: $ef
    sbc $b1                                       ; $57ca: $de $b1
    dec d                                         ; $57cc: $15
    and l                                         ; $57cd: $a5
    adc $d8                                       ; $57ce: $ce $d8
    ld c, l                                       ; $57d0: $4d
    ld [hl], d                                    ; $57d1: $72
    ld de, $9e00                                  ; $57d2: $11 $00 $9e
    rst $28                                       ; $57d5: $ef
    sbc $b1                                       ; $57d6: $de $b1
    dec d                                         ; $57d8: $15
    and l                                         ; $57d9: $a5
    adc $d8                                       ; $57da: $ce $d8
    ld c, l                                       ; $57dc: $4d
    ld [hl], d                                    ; $57dd: $72
    add hl, bc                                    ; $57de: $09
    nop                                           ; $57df: $00
    sbc [hl]                                      ; $57e0: $9e
    rst $28                                       ; $57e1: $ef
    sbc $b1                                       ; $57e2: $de $b1
    dec d                                         ; $57e4: $15
    and l                                         ; $57e5: $a5
    adc $d8                                       ; $57e6: $ce $d8
    ld c, l                                       ; $57e8: $4d
    ld [hl], d                                    ; $57e9: $72
    add hl, de                                    ; $57ea: $19
    nop                                           ; $57eb: $00
    sbc [hl]                                      ; $57ec: $9e

Jump_05d_57ed:
    rst $28                                       ; $57ed: $ef
    sbc $b1                                       ; $57ee: $de $b1
    dec d                                         ; $57f0: $15
    and l                                         ; $57f1: $a5
    adc $d8                                       ; $57f2: $ce $d8
    ld c, l                                       ; $57f4: $4d
    ld [hl], d                                    ; $57f5: $72
    dec b                                         ; $57f6: $05
    nop                                           ; $57f7: $00
    ld e, $af                                     ; $57f8: $1e $af
    rra                                           ; $57fa: $1f
    cp l                                          ; $57fb: $bd
    cp l                                          ; $57fc: $bd
    and l                                         ; $57fd: $a5
    adc $b8                                       ; $57fe: $ce $b8
    jp nc, $1581                                  ; $5800: $d2 $81 $15

    nop                                           ; $5803: $00
    db $fc                                        ; $5804: $fc
    ld e, c                                       ; $5805: $59
    ld a, [bc]                                    ; $5806: $0a
    sub e                                         ; $5807: $93
    adc $c0                                       ; $5808: $ce $c0
    add hl, sp                                    ; $580a: $39
    rra                                           ; $580b: $1f
    nop                                           ; $580c: $00
    db $fc                                        ; $580d: $fc
    ld e, c                                       ; $580e: $59
    ld a, [bc]                                    ; $580f: $0a
    sub e                                         ; $5810: $93
    adc $c0                                       ; $5811: $ce $c0
    add hl, sp                                    ; $5813: $39
    rra                                           ; $5814: $1f
    nop                                           ; $5815: $00
    cp h                                          ; $5816: $bc
    dec de                                        ; $5817: $1b
    rst $20                                       ; $5818: $e7
    ld b, h                                       ; $5819: $44
    ld [hl], a                                    ; $581a: $77
    and [hl]                                      ; $581b: $a6
    ld c, c                                       ; $581c: $49
    ld e, c                                       ; $581d: $59
    ld d, e                                       ; $581e: $53
    ld c, [hl]                                    ; $581f: $4e
    nop                                           ; $5820: $00
    cp h                                          ; $5821: $bc
    ld l, a                                       ; $5822: $6f
    ld sp, hl                                     ; $5823: $f9
    and [hl]                                      ; $5824: $a6
    inc bc                                        ; $5825: $03
    dec hl                                        ; $5826: $2b
    nop                                           ; $5827: $00
    db $fc                                        ; $5828: $fc
    ld e, c                                       ; $5829: $59
    scf                                           ; $582a: $37
    rla                                           ; $582b: $17
    inc e                                         ; $582c: $1c
    and l                                         ; $582d: $a5
    inc a                                         ; $582e: $3c
    call z, $001e                                 ; $582f: $cc $1e $00
    db $fc                                        ; $5832: $fc
    reti                                          ; $5833: $d9


    ret                                           ; $5834: $c9


    db $fc                                        ; $5835: $fc
    ld c, a                                       ; $5836: $4f
    rst $20                                       ; $5837: $e7
    sub a                                         ; $5838: $97
    db $fc                                        ; $5839: $fc
    ld c, l                                       ; $583a: $4d
    rst $38                                       ; $583b: $ff
    cp $97                                        ; $583c: $fe $97
    di                                            ; $583e: $f3
    nop                                           ; $583f: $00
    inc a                                         ; $5840: $3c
    sbc a                                         ; $5841: $9f
    db $10                                        ; $5842: $10
    ld e, e                                       ; $5843: $5b
    ret z                                         ; $5844: $c8

    sub [hl]                                      ; $5845: $96
    ld l, [hl]                                    ; $5846: $6e
    xor [hl]                                      ; $5847: $ae
    cp c                                          ; $5848: $b9
    dec h                                         ; $5849: $25
    ld e, e                                       ; $584a: $5b
    inc hl                                        ; $584b: $23
    ld a, a                                       ; $584c: $7f
    ldh [$59], a                                  ; $584d: $e0 $59
    nop                                           ; $584f: $00
    adc $5f                                       ; $5850: $ce $5f
    sbc d                                         ; $5852: $9a
    pop bc                                        ; $5853: $c1
    jr jr_05d_58a4                                ; $5854: $18 $4e

    adc e                                         ; $5856: $8b
    jp nc, $aca4                                  ; $5857: $d2 $a4 $ac

    add hl, hl                                    ; $585a: $29
    daa                                           ; $585b: $27
    nop                                           ; $585c: $00
    ld l, $5c                                     ; $585d: $2e $5c
    sbc d                                         ; $585f: $9a
    pop bc                                        ; $5860: $c1
    jr @+$50                                      ; $5861: $18 $4e

    adc e                                         ; $5863: $8b
    jp nc, $aca4                                  ; $5864: $d2 $a4 $ac

    add hl, hl                                    ; $5867: $29
    daa                                           ; $5868: $27
    nop                                           ; $5869: $00
    ld l, $5e                                     ; $586a: $2e $5e
    sbc d                                         ; $586c: $9a
    pop bc                                        ; $586d: $c1
    jr @+$50                                      ; $586e: $18 $4e

    adc e                                         ; $5870: $8b
    jp nc, $aca4                                  ; $5871: $d2 $a4 $ac

    add hl, hl                                    ; $5874: $29
    daa                                           ; $5875: $27
    nop                                           ; $5876: $00
    ld l, $5d                                     ; $5877: $2e $5d
    sbc d                                         ; $5879: $9a
    pop bc                                        ; $587a: $c1
    jr jr_05d_58cb                                ; $587b: $18 $4e

    adc e                                         ; $587d: $8b
    jp nc, $aca4                                  ; $587e: $d2 $a4 $ac

    add hl, hl                                    ; $5881: $29
    daa                                           ; $5882: $27
    nop                                           ; $5883: $00
    ld l, $5f                                     ; $5884: $2e $5f
    sbc d                                         ; $5886: $9a
    pop bc                                        ; $5887: $c1
    jr jr_05d_58d8                                ; $5888: $18 $4e

    adc e                                         ; $588a: $8b
    jp nc, $aca4                                  ; $588b: $d2 $a4 $ac

    add hl, hl                                    ; $588e: $29
    daa                                           ; $588f: $27
    nop                                           ; $5890: $00
    xor [hl]                                      ; $5891: $ae
    ld e, h                                       ; $5892: $5c
    sbc d                                         ; $5893: $9a
    pop bc                                        ; $5894: $c1
    jr @+$50                                      ; $5895: $18 $4e

    adc e                                         ; $5897: $8b
    jp nc, $aca4                                  ; $5898: $d2 $a4 $ac

    add hl, hl                                    ; $589b: $29
    daa                                           ; $589c: $27
    nop                                           ; $589d: $00
    xor [hl]                                      ; $589e: $ae
    ld e, [hl]                                    ; $589f: $5e
    sbc d                                         ; $58a0: $9a
    pop bc                                        ; $58a1: $c1
    jr @+$50                                      ; $58a2: $18 $4e

jr_05d_58a4:
    adc e                                         ; $58a4: $8b
    jp nc, $aca4                                  ; $58a5: $d2 $a4 $ac

    add hl, hl                                    ; $58a8: $29
    daa                                           ; $58a9: $27
    nop                                           ; $58aa: $00
    ld c, $9f                                     ; $58ab: $0e $9f
    ld a, l                                       ; $58ad: $7d
    push af                                       ; $58ae: $f5
    jp $9a5f                                      ; $58af: $c3 $5f $9a


    ccf                                           ; $58b2: $3f
    ld a, h                                       ; $58b3: $7c
    rst $38                                       ; $58b4: $ff
    ld bc, $bffc                                  ; $58b5: $01 $fc $bf
    ld [hl], e                                    ; $58b8: $73
    inc c                                         ; $58b9: $0c
    ld c, b                                       ; $58ba: $48
    sub h                                         ; $58bb: $94
    jp nc, Jump_05d_46b5                          ; $58bc: $d2 $b5 $46

    or [hl]                                       ; $58bf: $b6
    ld e, a                                       ; $58c0: $5f
    ld a, [hl-]                                   ; $58c1: $3a
    inc bc                                        ; $58c2: $03
    rst $20                                       ; $58c3: $e7
    ld a, h                                       ; $58c4: $7c
    nop                                           ; $58c5: $00
    sbc h                                         ; $58c6: $9c
    cp a                                          ; $58c7: $bf
    db $ec                                        ; $58c8: $ec
    rst $38                                       ; $58c9: $ff
    cp h                                          ; $58ca: $bc

jr_05d_58cb:
    db $ed                                        ; $58cb: $ed
    ld a, [$000b]                                 ; $58cc: $fa $0b $00

jr_05d_58cf:
    cp h                                          ; $58cf: $bc
    set 4, b                                      ; $58d0: $cb $e0
    or a                                          ; $58d2: $b7
    ld b, [hl]                                    ; $58d3: $46
    add hl, sp                                    ; $58d4: $39
    rrca                                          ; $58d5: $0f
    nop                                           ; $58d6: $00
    cp h                                          ; $58d7: $bc

jr_05d_58d8:
    set 4, b                                      ; $58d8: $cb $e0
    or a                                          ; $58da: $b7
    ld b, [hl]                                    ; $58db: $46
    cp c                                          ; $58dc: $b9
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    ld a, h                                       ; $58df: $7c
    add hl, bc                                    ; $58e0: $09
    ld a, b                                       ; $58e1: $78
    ldh a, [$ec]                                  ; $58e2: $f0 $ec
    sbc $84                                       ; $58e4: $de $84
    cp a                                          ; $58e6: $bf
    call nc, Call_05d_5719                        ; $58e7: $d4 $19 $57
    ld a, [hl-]                                   ; $58ea: $3a
    or b                                          ; $58eb: $b0
    ld [bc], a                                    ; $58ec: $02
    nop                                           ; $58ed: $00
    ld e, $91                                     ; $58ee: $1e $91
    push af                                       ; $58f0: $f5
    or $06                                        ; $58f1: $f6 $06
    inc b                                         ; $58f3: $04
    ld c, e                                       ; $58f4: $4b
    ld h, a                                       ; $58f5: $67
    ldh [$9c], a                                  ; $58f6: $e0 $9c
    rrca                                          ; $58f8: $0f
    nop                                           ; $58f9: $00
    ld c, $f1                                     ; $58fa: $0e $f1
    ld c, [hl]                                    ; $58fc: $4e
    sub b                                         ; $58fd: $90
    ld b, l                                       ; $58fe: $45
    ld d, [hl]                                    ; $58ff: $56
    ld [$2b8c], a                                 ; $5900: $ea $8c $2b
    dec e                                         ; $5903: $1d
    ld e, b                                       ; $5904: $58
    ld bc, $fc00                                  ; $5905: $01 $00 $fc
    cp a                                          ; $5908: $bf
    di                                            ; $5909: $f3
    pop hl                                        ; $590a: $e1
    add c                                         ; $590b: $81
    rst $30                                       ; $590c: $f7
    sbc a                                         ; $590d: $9f
    add c                                         ; $590e: $81
    ld [hl], e                                    ; $590f: $73
    ld a, $00                                     ; $5910: $3e $00
    inc e                                         ; $5912: $1c
    db $ec                                        ; $5913: $ec
    di                                            ; $5914: $f3
    jr z, jr_05d_598c                             ; $5915: $28 $75

    add $95                                       ; $5917: $c6 $95
    ld c, $ac                                     ; $5919: $0e $ac
    nop                                           ; $591b: $00
    cp h                                          ; $591c: $bc
    ld a, a                                       ; $591d: $7f
    and $33                                       ; $591e: $e6 $33
    sbc h                                         ; $5920: $9c
    ld d, $a5                                     ; $5921: $16 $a5
    adc $b8                                       ; $5923: $ce $b8
    jp nc, $1581                                  ; $5925: $d2 $81 $15

    nop                                           ; $5928: $00
    sbc [hl]                                      ; $5929: $9e
    rlca                                          ; $592a: $07
    inc sp                                        ; $592b: $33
    inc l                                         ; $592c: $2c
    ld [hl], l                                    ; $592d: $75
    add $95                                       ; $592e: $c6 $95
    ld c, $ac                                     ; $5930: $0e $ac
    nop                                           ; $5932: $00
    sbc [hl]                                      ; $5933: $9e
    ccf                                           ; $5934: $3f
    ld a, e                                       ; $5935: $7b
    ld l, e                                       ; $5936: $6b
    ld c, h                                       ; $5937: $4c
    rlca                                          ; $5938: $07
    ld d, [hl]                                    ; $5939: $56
    nop                                           ; $593a: $00
    ld a, h                                       ; $593b: $7c
    inc bc                                        ; $593c: $03
    ld hl, $f758                                  ; $593d: $21 $58 $f7
    jr jr_05d_58cf                                ; $5940: $18 $8d

    halt                                          ; $5942: $76
    ld b, $ce                                     ; $5943: $06 $ce
    ld sp, hl                                     ; $5945: $f9
    nop                                           ; $5946: $00
    ld c, $ff                                     ; $5947: $0e $ff
    call z, $c6ad                                 ; $5949: $cc $ad $c6
    ld [hl], h                                    ; $594c: $74
    ld h, b                                       ; $594d: $60
    dec b                                         ; $594e: $05
    nop                                           ; $594f: $00
    ld e, $b2                                     ; $5950: $1e $b2
    inc a                                         ; $5952: $3c
    ld a, [$9d4b]                                 ; $5953: $fa $4b $9d
    or c                                          ; $5956: $b1
    sbc e                                         ; $5957: $9b
    db $e4                                        ; $5958: $e4
    ld [bc], a                                    ; $5959: $02
    nop                                           ; $595a: $00
    ld e, $ff                                     ; $595b: $1e $ff
    or $60                                        ; $595d: $f6 $60
    dec hl                                        ; $595f: $2b
    rst $10                                       ; $5960: $d7
    push hl                                       ; $5961: $e5
    and d                                         ; $5962: $a2
    or e                                          ; $5963: $b3
    ld l, $01                                     ; $5964: $2e $01
    ld e, $11                                     ; $5966: $1e $11
    res 4, e                                      ; $5968: $cb $a3
    ret c                                         ; $596a: $d8

    ld d, a                                       ; $596b: $57
    ccf                                           ; $596c: $3f
    nop                                           ; $596d: $00
    db $fc                                        ; $596e: $fc
    reti                                          ; $596f: $d9


    ret                                           ; $5970: $c9


    db $fc                                        ; $5971: $fc
    ld c, a                                       ; $5972: $4f
    rst $20                                       ; $5973: $e7

jr_05d_5974:
    sub a                                         ; $5974: $97
    and d                                         ; $5975: $a2
    ld h, e                                       ; $5976: $63
    db $ed                                        ; $5977: $ed
    rst $00                                       ; $5978: $c7
    ld a, c                                       ; $5979: $79
    nop                                           ; $597a: $00
    sbc [hl]                                      ; $597b: $9e
    ld h, d                                       ; $597c: $62
    ld a, [hl-]                                   ; $597d: $3a
    db $e3                                        ; $597e: $e3
    db $ec                                        ; $597f: $ec
    call nz, $8f92                                ; $5980: $c4 $92 $8f
    dec sp                                        ; $5983: $3b
    scf                                           ; $5984: $37
    ld c, d                                       ; $5985: $4a
    rst $30                                       ; $5986: $f7
    rst $08                                       ; $5987: $cf
    ld sp, $cfec                                  ; $5988: $31 $ec $cf
    ld [bc], a                                    ; $598b: $02

jr_05d_598c:
    sbc [hl]                                      ; $598c: $9e
    ld h, d                                       ; $598d: $62
    ld a, [hl-]                                   ; $598e: $3a
    db $e3                                        ; $598f: $e3
    db $ec                                        ; $5990: $ec
    call nz, $9e12                                ; $5991: $c4 $12 $9e
    or b                                          ; $5994: $b0
    add hl, de                                    ; $5995: $19
    ld h, a                                       ; $5996: $67
    db $f4                                        ; $5997: $f4
    sbc [hl]                                      ; $5998: $9e
    rlca                                          ; $5999: $07
    sbc h                                         ; $599a: $9c

Call_05d_599b:
    cp e                                          ; $599b: $bb
    add hl, sp                                    ; $599c: $39
    ld c, $9b                                     ; $599d: $0e $9b
    ld a, b                                       ; $599f: $78
    rlca                                          ; $59a0: $07
    ld b, e                                       ; $59a1: $43
    nop                                           ; $59a2: $00
    sbc [hl]                                      ; $59a3: $9e
    inc hl                                        ; $59a4: $23
    jp Jump_05d_6752                              ; $59a5: $c3 $52 $67


    ld e, h                                       ; $59a8: $5c
    jp hl                                         ; $59a9: $e9


    ret nz                                        ; $59aa: $c0

    ld a, [bc]                                    ; $59ab: $0a
    nop                                           ; $59ac: $00
    db $fc                                        ; $59ad: $fc
    reti                                          ; $59ae: $d9


    ret                                           ; $59af: $c9


    db $fc                                        ; $59b0: $fc
    ld c, a                                       ; $59b1: $4f
    rst $20                                       ; $59b2: $e7
    sub a                                         ; $59b3: $97
    ld l, h                                       ; $59b4: $6c
    inc c                                         ; $59b5: $0c
    or [hl]                                       ; $59b6: $b6
    or d                                          ; $59b7: $b2
    ccf                                           ; $59b8: $3f
    dec bc                                        ; $59b9: $0b
    nop                                           ; $59ba: $00
    db $fc                                        ; $59bb: $fc
    reti                                          ; $59bc: $d9


    ret                                           ; $59bd: $c9


    db $fc                                        ; $59be: $fc
    ld c, a                                       ; $59bf: $4f
    rst $20                                       ; $59c0: $e7
    sub a                                         ; $59c1: $97
    ret nc                                        ; $59c2: $d0

    adc a                                         ; $59c3: $8f
    xor $87                                       ; $59c4: $ee $87
    ld a, a                                       ; $59c6: $7f
    dec hl                                        ; $59c7: $2b
    dec e                                         ; $59c8: $1d
    ld e, b                                       ; $59c9: $58
    ld bc, $7c00                                  ; $59ca: $01 $00 $7c
    inc bc                                        ; $59cd: $03
    dec de                                        ; $59ce: $1b
    rst $20                                       ; $59cf: $e7
    ret z                                         ; $59d0: $c8

    ccf                                           ; $59d1: $3f
    dec e                                         ; $59d2: $1d
    ld e, b                                       ; $59d3: $58
    ld bc, $bc00                                  ; $59d4: $01 $00 $bc
    pop bc                                        ; $59d7: $c1
    jr jr_05d_5974                                ; $59d8: $18 $9a

    sbc h                                         ; $59da: $9c
    ld d, e                                       ; $59db: $53
    ld h, a                                       ; $59dc: $67
    db $ec                                        ; $59dd: $ec
    and [hl]                                      ; $59de: $a6
    ld b, $fc                                     ; $59df: $06 $fc
    cp a                                          ; $59e1: $bf
    di                                            ; $59e2: $f3
    pop hl                                        ; $59e3: $e1
    add c                                         ; $59e4: $81
    rst $30                                       ; $59e5: $f7
    rlc l                                         ; $59e6: $cb $05
    nop                                           ; $59e8: $00
    ld e, $b2                                     ; $59e9: $1e $b2
    inc a                                         ; $59eb: $3c
    ld a, [$294b]                                 ; $59ec: $fa $4b $29
    sbc [hl]                                      ; $59ef: $9e
    ld a, h                                       ; $59f0: $7c
    ld bc, $94fc                                  ; $59f1: $01 $fc $94
    or $f6                                        ; $59f4: $f6 $f6
    ld b, [hl]                                    ; $59f6: $46
    ld b, a                                       ; $59f7: $47
    sub h                                         ; $59f8: $94
    ld h, $65                                     ; $59f9: $26 $65
    ld c, l                                       ; $59fb: $4d
    add hl, sp                                    ; $59fc: $39
    ld bc, $d9fc                                  ; $59fd: $01 $fc $d9
    ret                                           ; $5a00: $c9


    db $fc                                        ; $5a01: $fc
    ld c, a                                       ; $5a02: $4f
    rst $20                                       ; $5a03: $e7
    sub a                                         ; $5a04: $97
    db $fc                                        ; $5a05: $fc
    ld c, l                                       ; $5a06: $4d
    rst $38                                       ; $5a07: $ff
    cp $97                                        ; $5a08: $fe $97
    dec bc                                        ; $5a0a: $0b
    nop                                           ; $5a0b: $00
    db $fc                                        ; $5a0c: $fc
    reti                                          ; $5a0d: $d9


    ret                                           ; $5a0e: $c9


    db $fc                                        ; $5a0f: $fc
    ld c, a                                       ; $5a10: $4f
    rst $20                                       ; $5a11: $e7
    sub a                                         ; $5a12: $97
    db $fc                                        ; $5a13: $fc
    ld c, l                                       ; $5a14: $4d
    rst $38                                       ; $5a15: $ff
    cp $97                                        ; $5a16: $fe $97
    adc e                                         ; $5a18: $8b
    nop                                           ; $5a19: $00
    db $fc                                        ; $5a1a: $fc
    reti                                          ; $5a1b: $d9


    ret                                           ; $5a1c: $c9


    db $fc                                        ; $5a1d: $fc
    ld c, a                                       ; $5a1e: $4f
    rst $20                                       ; $5a1f: $e7
    sub a                                         ; $5a20: $97
    db $fc                                        ; $5a21: $fc
    ld c, l                                       ; $5a22: $4d
    rst $38                                       ; $5a23: $ff
    cp $97                                        ; $5a24: $fe $97
    ld c, e                                       ; $5a26: $4b
    nop                                           ; $5a27: $00
    inc a                                         ; $5a28: $3c
    sbc a                                         ; $5a29: $9f
    db $10                                        ; $5a2a: $10
    ld e, e                                       ; $5a2b: $5b
    ret z                                         ; $5a2c: $c8

    sub [hl]                                      ; $5a2d: $96
    ld l, [hl]                                    ; $5a2e: $6e
    xor [hl]                                      ; $5a2f: $ae
    cp c                                          ; $5a30: $b9
    and l                                         ; $5a31: $a5
    ld [hl], c                                    ; $5a32: $71
    ld h, $fa                                     ; $5a33: $26 $fa
    inc bc                                        ; $5a35: $03
    rst $08                                       ; $5a36: $cf
    ld [bc], a                                    ; $5a37: $02
    cp h                                          ; $5a38: $bc
    ret z                                         ; $5a39: $c8

    cp d                                          ; $5a3a: $ba
    ld [hl], a                                    ; $5a3b: $77
    ld b, $4b                                     ; $5a3c: $06 $4b
    ld de, $9c00                                  ; $5a3e: $11 $00 $9c
    ld h, e                                       ; $5a41: $63
    or b                                          ; $5a42: $b0
    sub l                                         ; $5a43: $95
    db $fd                                        ; $5a44: $fd
    ld e, c                                       ; $5a45: $59
    add hl, sp                                    ; $5a46: $39
    and e                                         ; $5a47: $a3
    adc $52                                       ; $5a48: $ce $52
    sbc b                                         ; $5a4a: $98
    nop                                           ; $5a4b: $00
    sbc h                                         ; $5a4c: $9c
    ld a, a                                       ; $5a4d: $7f
    ld a, [hl]                                    ; $5a4e: $7e
    dec hl                                        ; $5a4f: $2b
    ld c, d                                       ; $5a50: $4a
    jr nc, jr_05d_5aac                            ; $5a51: $30 $59

    ld l, a                                       ; $5a53: $6f
    ld a, [hl-]                                   ; $5a54: $3a
    or b                                          ; $5a55: $b0
    ld [bc], a                                    ; $5a56: $02
    nop                                           ; $5a57: $00
    cp h                                          ; $5a58: $bc
    bit 4, b                                      ; $5a59: $cb $60
    call c, $961e                                 ; $5a5b: $dc $1e $96
    db $d3                                        ; $5a5e: $d3
    reti                                          ; $5a5f: $d9


Call_05d_5a60:
    adc d                                         ; $5a60: $8a
    ld l, b                                       ; $5a61: $68
    nop                                           ; $5a62: $00

Call_05d_5a63:
    ld c, $71                                     ; $5a63: $0e $71
    rst $20                                       ; $5a65: $e7
    ld b, [hl]                                    ; $5a66: $46
    add hl, hl                                    ; $5a67: $29
    rrca                                          ; $5a68: $0f
    or e                                          ; $5a69: $b3
    rlca                                          ; $5a6a: $07
    ld e, $91                                     ; $5a6b: $1e $91
    push af                                       ; $5a6d: $f5
    sbc $c3                                       ; $5a6e: $de $c3
    halt                                          ; $5a70: $76
    rst $20                                       ; $5a71: $e7
    sub [hl]                                      ; $5a72: $96
    adc $c0                                       ; $5a73: $ce $c0
    add hl, sp                                    ; $5a75: $39
    rra                                           ; $5a76: $1f
    nop                                           ; $5a77: $00
    ld e, $91                                     ; $5a78: $1e $91
    push af                                       ; $5a7a: $f5
    or $6f                                        ; $5a7b: $f6 $6f
    ld b, a                                       ; $5a7d: $47
    sub h                                         ; $5a7e: $94
    adc $c0                                       ; $5a7f: $ce $c0
    add hl, sp                                    ; $5a81: $39
    rra                                           ; $5a82: $1f
    nop                                           ; $5a83: $00
    cp h                                          ; $5a84: $bc
    ret z                                         ; $5a85: $c8

    cp d                                          ; $5a86: $ba
    scf                                           ; $5a87: $37
    push bc                                       ; $5a88: $c5
    sub e                                         ; $5a89: $93
    cpl                                           ; $5a8a: $2f
    nop                                           ; $5a8b: $00
    xor [hl]                                      ; $5a8c: $ae
    ld e, h                                       ; $5a8d: $5c
    sbc d                                         ; $5a8e: $9a
    pop bc                                        ; $5a8f: $c1
    jr jr_05d_5ae0                                ; $5a90: $18 $4e

    adc e                                         ; $5a92: $8b
    sub d                                         ; $5a93: $92
    db $fd                                        ; $5a94: $fd
    ld sp, hl                                     ; $5a95: $f9
    ld c, c                                       ; $5a96: $49
    ld e, c                                       ; $5a97: $59
    ld d, e                                       ; $5a98: $53
    ld c, [hl]                                    ; $5a99: $4e
    nop                                           ; $5a9a: $00
    xor $6c                                       ; $5a9b: $ee $6c
    sub l                                         ; $5a9d: $95
    ld l, l                                       ; $5a9e: $6d
    xor c                                         ; $5a9f: $a9
    inc sp                                        ; $5aa0: $33
    xor [hl]                                      ; $5aa1: $ae
    ld [hl], h                                    ; $5aa2: $74
    ld h, b                                       ; $5aa3: $60

Call_05d_5aa4:
    dec b                                         ; $5aa4: $05
    nop                                           ; $5aa5: $00
    db $fc                                        ; $5aa6: $fc
    ld e, c                                       ; $5aa7: $59
    ld a, [bc]                                    ; $5aa8: $0a
    sub e                                         ; $5aa9: $93
    adc $c0                                       ; $5aaa: $ce $c0

jr_05d_5aac:
    add hl, sp                                    ; $5aac: $39
    rra                                           ; $5aad: $1f
    nop                                           ; $5aae: $00
    cp h                                          ; $5aaf: $bc
    rst $08                                       ; $5ab0: $cf
    cp d                                          ; $5ab1: $ba
    ld e, a                                       ; $5ab2: $5f
    or [hl]                                       ; $5ab3: $b6
    sbc e                                         ; $5ab4: $9b
    rst $00                                       ; $5ab5: $c7
    sbc h                                         ; $5ab6: $9c
    ld b, h                                       ; $5ab7: $44
    rst $20                                       ; $5ab8: $e7
    add h                                         ; $5ab9: $84
    ld a, $ff                                     ; $5aba: $3e $ff
    cp l                                          ; $5abc: $bd
    db $e3                                        ; $5abd: $e3
    sbc h                                         ; $5abe: $9c
    nop                                           ; $5abf: $00
    sbc h                                         ; $5ac0: $9c
    ld h, e                                       ; $5ac1: $63
    or b                                          ; $5ac2: $b0
    sub l                                         ; $5ac3: $95
    db $fd                                        ; $5ac4: $fd
    ld e, c                                       ; $5ac5: $59
    add hl, sp                                    ; $5ac6: $39
    and e                                         ; $5ac7: $a3
    add e                                         ; $5ac8: $83
    cp [hl]                                       ; $5ac9: $be
    ccf                                           ; $5aca: $3f
    db $fc                                        ; $5acb: $fc
    jr c, jr_05d_5ad9                             ; $5acc: $38 $0b

    nop                                           ; $5ace: $00
    sbc h                                         ; $5acf: $9c
    jr c, jr_05d_5adc                             ; $5ad0: $38 $0a

    ld [c], a                                     ; $5ad2: $e2
    inc l                                         ; $5ad3: $2c
    rst $18                                       ; $5ad4: $df
    or b                                          ; $5ad5: $b0
    ld c, l                                       ; $5ad6: $4d
    ret nz                                        ; $5ad7: $c0

    dec c                                         ; $5ad8: $0d

jr_05d_5ad9:
    cp c                                          ; $5ad9: $b9
    push hl                                       ; $5ada: $e5
    cp h                                          ; $5adb: $bc

jr_05d_5adc:
    nop                                           ; $5adc: $00
    inc e                                         ; $5add: $1c
    daa                                           ; $5ade: $27
    ld e, d                                       ; $5adf: $5a

jr_05d_5ae0:
    sbc [hl]                                      ; $5ae0: $9e
    rst $28                                       ; $5ae1: $ef
    ld e, d                                       ; $5ae2: $5a
    db $e3                                        ; $5ae3: $e3
    inc e                                         ; $5ae4: $1c
    ldh a, [$9f]                                  ; $5ae5: $f0 $9f
    di                                            ; $5ae7: $f3
    rla                                           ; $5ae8: $17
    nop                                           ; $5ae9: $00
    inc e                                         ; $5aea: $1c
    daa                                           ; $5aeb: $27
    ld e, d                                       ; $5aec: $5a

jr_05d_5aed:
    ld c, $b1                                     ; $5aed: $0e $b1
    ccf                                           ; $5aef: $3f
    and c                                         ; $5af0: $a1
    jr z, @+$17                                   ; $5af1: $28 $15

    ld l, $e4                                     ; $5af3: $2e $e4
    ld l, e                                       ; $5af5: $6b
    ld a, [hl]                                    ; $5af6: $7e
    rst $30                                       ; $5af7: $f7
    sbc [hl]                                      ; $5af8: $9e
    sbc a                                         ; $5af9: $9f
    ccf                                           ; $5afa: $3f
    db $fc                                        ; $5afb: $fc
    scf                                           ; $5afc: $37
    ei                                            ; $5afd: $fb
    dec bc                                        ; $5afe: $0b
    nop                                           ; $5aff: $00
    inc e                                         ; $5b00: $1c
    daa                                           ; $5b01: $27
    ld e, d                                       ; $5b02: $5a
    rst $28                                       ; $5b03: $ef
    ld h, e                                       ; $5b04: $63
    ld b, a                                       ; $5b05: $47
    call z, $fb35                                 ; $5b06: $cc $35 $fb
    dec bc                                        ; $5b09: $0b
    nop                                           ; $5b0a: $00
    inc e                                         ; $5b0b: $1c
    daa                                           ; $5b0c: $27
    ld e, d                                       ; $5b0d: $5a
    ld e, $0f                                     ; $5b0e: $1e $0f
    and $fb                                       ; $5b10: $e6 $fb
    db $e3                                        ; $5b12: $e3
    inc c                                         ; $5b13: $0c
    cp h                                          ; $5b14: $bc
    and e                                         ; $5b15: $a3
    db $e4                                        ; $5b16: $e4
    ld [hl], e                                    ; $5b17: $73
    sbc l                                         ; $5b18: $9d
    jp $c335                                      ; $5b19: $c3 $35 $c3


Jump_05d_5b1c:
    and $98                                       ; $5b1c: $e6 $98
    ld d, $66                                     ; $5b1e: $16 $66
    ld a, a                                       ; $5b20: $7f
    ld bc, $271c                                  ; $5b21: $01 $1c $27
    ld e, d                                       ; $5b24: $5a
    inc e                                         ; $5b25: $1c
    rst $20                                       ; $5b26: $e7
    ld l, h                                       ; $5b27: $6c
    cp $05                                        ; $5b28: $fe $05
    add hl, bc                                    ; $5b2a: $09
    or [hl]                                       ; $5b2b: $b6
    dec h                                         ; $5b2c: $25
    ei                                            ; $5b2d: $fb

Jump_05d_5b2e:
    sub c                                         ; $5b2e: $91
    rst $38                                       ; $5b2f: $ff
    db $fc                                        ; $5b30: $fc
    pop hl                                        ; $5b31: $e1
    cp a                                          ; $5b32: $bf
    reti                                          ; $5b33: $d9


    ld e, a                                       ; $5b34: $5f
    nop                                           ; $5b35: $00
    inc e                                         ; $5b36: $1c
    daa                                           ; $5b37: $27
    ld e, d                                       ; $5b38: $5a
    sbc h                                         ; $5b39: $9c
    or h                                          ; $5b3a: $b4
    add a                                         ; $5b3b: $87
    db $e4                                        ; $5b3c: $e4
    cp b                                          ; $5b3d: $b8
    inc a                                         ; $5b3e: $3c
    cp h                                          ; $5b3f: $bc
    add a                                         ; $5b40: $87
    rst $38                                       ; $5b41: $ff
    ld a, [hl]                                    ; $5b42: $7e
    or b                                          ; $5b43: $b0
    sub l                                         ; $5b44: $95
    inc sp                                        ; $5b45: $33
    ld [hl], e                                    ; $5b46: $73
    add hl, de                                    ; $5b47: $19
    db $fc                                        ; $5b48: $fc
    di                                            ; $5b49: $f3
    add a                                         ; $5b4a: $87
    rst $38                                       ; $5b4b: $ff
    ld h, [hl]                                    ; $5b4c: $66
    ld a, a                                       ; $5b4d: $7f
    ld bc, $271c                                  ; $5b4e: $01 $1c $27
    ld e, d                                       ; $5b51: $5a
    rst $30                                       ; $5b52: $f7
    rst $30                                       ; $5b53: $f7
    rst $18                                       ; $5b54: $df
    dec hl                                        ; $5b55: $2b
    cp [hl]                                       ; $5b56: $be
    ccf                                           ; $5b57: $3f
    ld [hl], e                                    ; $5b58: $73
    ld l, e                                       ; $5b59: $6b
    ld c, e                                       ; $5b5a: $4b
    di                                            ; $5b5b: $f3
    rst $18                                       ; $5b5c: $df
    rra                                           ; $5b5d: $1f

Jump_05d_5b5e:
    di                                            ; $5b5e: $f3
    add a                                         ; $5b5f: $87
    rst $38                                       ; $5b60: $ff
    ld h, [hl]                                    ; $5b61: $66
    ld a, a                                       ; $5b62: $7f
    ld bc, $271c                                  ; $5b63: $01 $1c $27
    ld e, d                                       ; $5b66: $5a
    sbc h                                         ; $5b67: $9c
    jr c, jr_05d_5aed                             ; $5b68: $38 $83

    xor l                                         ; $5b6a: $ad
    ld b, l                                       ; $5b6b: $45
    xor c                                         ; $5b6c: $a9
    ld a, a                                       ; $5b6d: $7f
    rst $20                                       ; $5b6e: $e7
    rst $08                                       ; $5b6f: $cf
    ld h, a                                       ; $5b70: $67
    ld [hl], e                                    ; $5b71: $73
    xor $fc                                       ; $5b72: $ee $fc
    pop hl                                        ; $5b74: $e1
    cp a                                          ; $5b75: $bf
    reti                                          ; $5b76: $d9


    ld e, a                                       ; $5b77: $5f
    nop                                           ; $5b78: $00
    inc e                                         ; $5b79: $1c
    daa                                           ; $5b7a: $27
    ld e, d                                       ; $5b7b: $5a
    ld e, $b2                                     ; $5b7c: $1e $b2
    inc a                                         ; $5b7e: $3c
    ld a, [$3ecd]                                 ; $5b7f: $fa $cd $3e
    xor c                                         ; $5b82: $a9
    inc a                                         ; $5b83: $3c
    ld c, [hl]                                    ; $5b84: $4e
    adc d                                         ; $5b85: $8a
    ld [hl], b                                    ; $5b86: $70
    sub h                                         ; $5b87: $94
    db $fc                                        ; $5b88: $fc
    xor a                                         ; $5b89: $af
    cp c                                          ; $5b8a: $b9
    ld h, [hl]                                    ; $5b8b: $66
    ld a, a                                       ; $5b8c: $7f
    ld bc, $271c                                  ; $5b8d: $01 $1c $27
    ld e, d                                       ; $5b90: $5a
    ld e, $b2                                     ; $5b91: $1e $b2
    inc a                                         ; $5b93: $3c
    ld a, [$9d4b]                                 ; $5b94: $fa $4b $9d
    or c                                          ; $5b97: $b1
    ld a, e                                       ; $5b98: $7b
    call Call_000_02e8                            ; $5b99: $cd $e8 $02
    inc e                                         ; $5b9c: $1c
    daa                                           ; $5b9d: $27
    ld e, d                                       ; $5b9e: $5a
    reti                                          ; $5b9f: $d9


    reti                                          ; $5ba0: $d9


    ld l, [hl]                                    ; $5ba1: $6e
    cp d                                          ; $5ba2: $ba
    ret                                           ; $5ba3: $c9


    adc h                                         ; $5ba4: $8c
    inc b                                         ; $5ba5: $04
    inc de                                        ; $5ba6: $13
    res 0, e                                      ; $5ba7: $cb $83
    ld l, $00                                     ; $5ba9: $2e $00
    inc e                                         ; $5bab: $1c
    daa                                           ; $5bac: $27
    ld e, d                                       ; $5bad: $5a
    sbc l                                         ; $5bae: $9d
    or c                                          ; $5baf: $b1
    sbc e                                         ; $5bb0: $9b
    call z, Call_000_02e8                         ; $5bb1: $cc $e8 $02
    inc e                                         ; $5bb4: $1c
    daa                                           ; $5bb5: $27
    ld e, d                                       ; $5bb6: $5a
    sbc l                                         ; $5bb7: $9d
    or c                                          ; $5bb8: $b1
    sbc e                                         ; $5bb9: $9b
    call z, Call_000_02e8                         ; $5bba: $cc $e8 $02
    inc e                                         ; $5bbd: $1c
    daa                                           ; $5bbe: $27
    ld e, d                                       ; $5bbf: $5a
    sbc l                                         ; $5bc0: $9d
    or c                                          ; $5bc1: $b1
    sbc e                                         ; $5bc2: $9b
    call z, Call_000_02e8                         ; $5bc3: $cc $e8 $02
    inc e                                         ; $5bc6: $1c
    daa                                           ; $5bc7: $27
    ld e, d                                       ; $5bc8: $5a
    db $fc                                        ; $5bc9: $fc
    reti                                          ; $5bca: $d9


    ret                                           ; $5bcb: $c9


    db $fc                                        ; $5bcc: $fc
    ld c, a                                       ; $5bcd: $4f
    rst $20                                       ; $5bce: $e7
    sub a                                         ; $5bcf: $97
    db $fc                                        ; $5bd0: $fc
    sbc l                                         ; $5bd1: $9d
    rrca                                          ; $5bd2: $0f
    adc a                                         ; $5bd3: $8f
    ld a, d                                       ; $5bd4: $7a
    or e                                          ; $5bd5: $b3
    cp a                                          ; $5bd6: $bf
    nop                                           ; $5bd7: $00
    inc e                                         ; $5bd8: $1c
    daa                                           ; $5bd9: $27
    ld e, d                                       ; $5bda: $5a
    rst $30                                       ; $5bdb: $f7
    ret c                                         ; $5bdc: $d8

    ld a, [$8eb5]                                 ; $5bdd: $fa $b5 $8e
    ld [de], a                                    ; $5be0: $12
    db $db                                        ; $5be1: $db
    cp l                                          ; $5be2: $bd
    rlca                                          ; $5be3: $07
    inc e                                         ; $5be4: $1c
    and l                                         ; $5be5: $a5
    inc sp                                        ; $5be6: $33
    ld [hl], b                                    ; $5be7: $70
    cp [hl]                                       ; $5be8: $be
    reti                                          ; $5be9: $d9


    ld e, a                                       ; $5bea: $5f
    nop                                           ; $5beb: $00
    inc e                                         ; $5bec: $1c
    daa                                           ; $5bed: $27
    ld e, d                                       ; $5bee: $5a
    dec [hl]                                      ; $5bef: $35
    xor $60                                       ; $5bf0: $ee $60
    ld a, b                                       ; $5bf2: $78
    jr nc, @-$5d                                  ; $5bf3: $30 $a1

    db $fd                                        ; $5bf5: $fd
    jp nc, Jump_000_3819                          ; $5bf6: $d2 $19 $38

    rst $18                                       ; $5bf9: $df
    db $ec                                        ; $5bfa: $ec
    cpl                                           ; $5bfb: $2f
    nop                                           ; $5bfc: $00
    inc e                                         ; $5bfd: $1c
    daa                                           ; $5bfe: $27
    ld e, d                                       ; $5bff: $5a
    jp hl                                         ; $5c00: $e9


    ccf                                           ; $5c01: $3f
    xor e                                         ; $5c02: $ab
    or l                                          ; $5c03: $b5
    ld sp, hl                                     ; $5c04: $f9

jr_05d_5c05:
    jp hl                                         ; $5c05: $e9


    ret nz                                        ; $5c06: $c0

    adc d                                         ; $5c07: $8a
    jr nc, jr_05d_5c05                            ; $5c08: $30 $fb

    dec bc                                        ; $5c0a: $0b
    nop                                           ; $5c0b: $00
    inc e                                         ; $5c0c: $1c
    daa                                           ; $5c0d: $27
    ld e, d                                       ; $5c0e: $5a
    ld c, l                                       ; $5c0f: $4d
    ld l, c                                       ; $5c10: $69
    ld l, a                                       ; $5c11: $6f
    ld l, a                                       ; $5c12: $6f
    ld [hl], h                                    ; $5c13: $74
    ld b, h                                       ; $5c14: $44
    jp hl                                         ; $5c15: $e9


    inc c                                         ; $5c16: $0c
    sbc h                                         ; $5c17: $9c
    ld l, a                                       ; $5c18: $6f
    or $17                                        ; $5c19: $f6 $17
    nop                                           ; $5c1b: $00
    inc e                                         ; $5c1c: $1c
    daa                                           ; $5c1d: $27
    ld e, d                                       ; $5c1e: $5a
    ld a, a                                       ; $5c1f: $7f
    add [hl]                                      ; $5c20: $86
    cp l                                          ; $5c21: $bd
    push af                                       ; $5c22: $f5
    ld a, [hl]                                    ; $5c23: $7e
    ld a, [hl-]                                   ; $5c24: $3a
    or b                                          ; $5c25: $b0
    ld [hl+], a                                   ; $5c26: $22
    call z, $02fe                                 ; $5c27: $cc $fe $02
    inc e                                         ; $5c2a: $1c
    daa                                           ; $5c2b: $27
    ld e, d                                       ; $5c2c: $5a
    ld h, a                                       ; $5c2d: $67
    adc h                                         ; $5c2e: $8c
    cp $f9                                        ; $5c2f: $fe $f9
    jp $b37f                                      ; $5c31: $c3 $7f $b3


    cp a                                          ; $5c34: $bf
    nop                                           ; $5c35: $00
    inc e                                         ; $5c36: $1c
    daa                                           ; $5c37: $27
    ld e, d                                       ; $5c38: $5a
    rlca                                          ; $5c39: $07
    or a                                          ; $5c3a: $b7
    ld l, l                                       ; $5c3b: $6d
    sbc h                                         ; $5c3c: $9c
    add c                                         ; $5c3d: $81
    di                                            ; $5c3e: $f3
    call $02fe                                    ; $5c3f: $cd $fe $02
    inc e                                         ; $5c42: $1c
    daa                                           ; $5c43: $27
    ld e, d                                       ; $5c44: $5a
    ld [hl], $10                                  ; $5c45: $36 $10
    cp $d1                                        ; $5c47: $fe $d1
    db $e3                                        ; $5c49: $e3
    ld e, [hl]                                    ; $5c4a: $5e
    dec sp                                        ; $5c4b: $3b
    inc bc                                        ; $5c4c: $03
    rst $20                                       ; $5c4d: $e7
    sbc e                                         ; $5c4e: $9b
    db $fd                                        ; $5c4f: $fd
    dec b                                         ; $5c50: $05
    nop                                           ; $5c51: $00
    inc e                                         ; $5c52: $1c
    daa                                           ; $5c53: $27
    ld e, d                                       ; $5c54: $5a
    add a                                         ; $5c55: $87
    dec hl                                        ; $5c56: $2b
    ld l, e                                       ; $5c57: $6b
    xor d                                         ; $5c58: $aa
    xor h                                         ; $5c59: $ac
    push hl                                       ; $5c5a: $e5
    and c                                         ; $5c5b: $a1
    ld b, l                                       ; $5c5c: $45
    db $e4                                        ; $5c5d: $e4
    adc e                                         ; $5c5e: $8b
    db $ed                                        ; $5c5f: $ed
    adc h                                         ; $5c60: $8c
    rra                                           ; $5c61: $1f
    ld a, e                                       ; $5c62: $7b
    or [hl]                                       ; $5c63: $b6
    ld l, $00                                     ; $5c64: $2e $00
    inc e                                         ; $5c66: $1c
    daa                                           ; $5c67: $27
    ld e, d                                       ; $5c68: $5a
    ld [hl], e                                    ; $5c69: $73
    db $e3                                        ; $5c6a: $e3
    sbc h                                         ; $5c6b: $9c
    add sp, -$54                                  ; $5c6c: $e8 $ac
    ld [hl], h                                    ; $5c6e: $74
    ld b, a                                       ; $5c6f: $47
    dec de                                        ; $5c70: $1b
    sub l                                         ; $5c71: $95
    sbc h                                         ; $5c72: $9c
    cp a                                          ; $5c73: $bf
    add h                                         ; $5c74: $84
    or $66                                        ; $5c75: $f6 $66
    ld a, a                                       ; $5c77: $7f
    ld bc, $271c                                  ; $5c78: $01 $1c $27
    ld e, d                                       ; $5c7b: $5a
    ld [hl], e                                    ; $5c7c: $73
    db $e3                                        ; $5c7d: $e3
    sbc h                                         ; $5c7e: $9c
    add sp, -$54                                  ; $5c7f: $e8 $ac
    ld [hl], h                                    ; $5c81: $74
    ld b, a                                       ; $5c82: $47
    dec de                                        ; $5c83: $1b
    sub l                                         ; $5c84: $95
    ld e, h                                       ; $5c85: $5c
    cp b                                          ; $5c86: $b8
    add h                                         ; $5c87: $84
    or $66                                        ; $5c88: $f6 $66
    ld a, a                                       ; $5c8a: $7f
    ld bc, $271c                                  ; $5c8b: $01 $1c $27
    ld e, d                                       ; $5c8e: $5a
    ld [hl], e                                    ; $5c8f: $73
    db $e3                                        ; $5c90: $e3
    sbc h                                         ; $5c91: $9c
    add sp, -$54                                  ; $5c92: $e8 $ac
    ld [hl], h                                    ; $5c94: $74
    ld b, a                                       ; $5c95: $47
    dec de                                        ; $5c96: $1b
    sub l                                         ; $5c97: $95
    ld e, h                                       ; $5c98: $5c
    cp h                                          ; $5c99: $bc
    add h                                         ; $5c9a: $84
    or $66                                        ; $5c9b: $f6 $66
    ld a, a                                       ; $5c9d: $7f
    ld bc, $271c                                  ; $5c9e: $01 $1c $27
    ld e, d                                       ; $5ca1: $5a
    ld [hl], e                                    ; $5ca2: $73
    db $e3                                        ; $5ca3: $e3
    sbc h                                         ; $5ca4: $9c
    add sp, -$54                                  ; $5ca5: $e8 $ac
    ld [hl], h                                    ; $5ca7: $74
    ld b, a                                       ; $5ca8: $47
    dec de                                        ; $5ca9: $1b
    sub l                                         ; $5caa: $95
    ld e, h                                       ; $5cab: $5c
    cp d                                          ; $5cac: $ba
    add h                                         ; $5cad: $84
    or $66                                        ; $5cae: $f6 $66
    ld a, a                                       ; $5cb0: $7f
    ld bc, $271c                                  ; $5cb1: $01 $1c $27
    ld e, d                                       ; $5cb4: $5a
    ld [hl], e                                    ; $5cb5: $73
    db $e3                                        ; $5cb6: $e3
    sbc h                                         ; $5cb7: $9c
    add sp, -$54                                  ; $5cb8: $e8 $ac
    ld [hl], h                                    ; $5cba: $74
    ld b, a                                       ; $5cbb: $47
    dec de                                        ; $5cbc: $1b
    sub l                                         ; $5cbd: $95
    ld e, h                                       ; $5cbe: $5c
    cp [hl]                                       ; $5cbf: $be
    add h                                         ; $5cc0: $84
    or $66                                        ; $5cc1: $f6 $66
    ld a, a                                       ; $5cc3: $7f
    ld bc, $271c                                  ; $5cc4: $01 $1c $27
    ld e, d                                       ; $5cc7: $5a
    ld [hl], e                                    ; $5cc8: $73
    db $e3                                        ; $5cc9: $e3
    sbc h                                         ; $5cca: $9c
    add sp, -$54                                  ; $5ccb: $e8 $ac
    ld [hl], h                                    ; $5ccd: $74
    ld b, a                                       ; $5cce: $47
    dec de                                        ; $5ccf: $1b
    sub l                                         ; $5cd0: $95
    ld e, h                                       ; $5cd1: $5c
    cp c                                          ; $5cd2: $b9
    add h                                         ; $5cd3: $84
    or $66                                        ; $5cd4: $f6 $66
    ld a, a                                       ; $5cd6: $7f
    ld bc, $271c                                  ; $5cd7: $01 $1c $27
    ld e, d                                       ; $5cda: $5a
    sbc l                                         ; $5cdb: $9d
    or c                                          ; $5cdc: $b1
    sbc e                                         ; $5cdd: $9b
    call z, Call_000_02e8                         ; $5cde: $cc $e8 $02
    inc e                                         ; $5ce1: $1c
    daa                                           ; $5ce2: $27
    ld e, d                                       ; $5ce3: $5a
    sbc l                                         ; $5ce4: $9d
    or c                                          ; $5ce5: $b1
    sbc e                                         ; $5ce6: $9b
    call z, Call_000_02e8                         ; $5ce7: $cc $e8 $02
    inc e                                         ; $5cea: $1c
    daa                                           ; $5ceb: $27
    ld e, d                                       ; $5cec: $5a
    sbc l                                         ; $5ced: $9d
    or c                                          ; $5cee: $b1
    sbc e                                         ; $5cef: $9b
    call z, Call_000_02e8                         ; $5cf0: $cc $e8 $02
    inc e                                         ; $5cf3: $1c
    daa                                           ; $5cf4: $27
    ld e, d                                       ; $5cf5: $5a
    sbc l                                         ; $5cf6: $9d
    or c                                          ; $5cf7: $b1
    sbc e                                         ; $5cf8: $9b
    call z, Call_000_02e8                         ; $5cf9: $cc $e8 $02
    inc e                                         ; $5cfc: $1c
    daa                                           ; $5cfd: $27
    ld e, d                                       ; $5cfe: $5a
    sbc l                                         ; $5cff: $9d
    or c                                          ; $5d00: $b1
    sbc e                                         ; $5d01: $9b
    call z, Call_000_02e8                         ; $5d02: $cc $e8 $02
    inc e                                         ; $5d05: $1c
    daa                                           ; $5d06: $27
    ld e, d                                       ; $5d07: $5a
    sbc l                                         ; $5d08: $9d
    or c                                          ; $5d09: $b1
    sbc e                                         ; $5d0a: $9b
    call z, Call_000_02e8                         ; $5d0b: $cc $e8 $02
    inc e                                         ; $5d0e: $1c
    daa                                           ; $5d0f: $27
    ld e, d                                       ; $5d10: $5a
    ld a, $c3                                     ; $5d11: $3e $c3
    inc b                                         ; $5d13: $04
    jp $d90c                                      ; $5d14: $c3 $0c $d9


    jp z, $f5e3                                   ; $5d17: $ca $e3 $f5

    and e                                         ; $5d1a: $a3
    or a                                          ; $5d1b: $b7
    or a                                          ; $5d1c: $b7
    call nc, Call_05d_5719                        ; $5d1d: $d4 $19 $57
    ld a, [hl-]                                   ; $5d20: $3a
    or b                                          ; $5d21: $b0
    ld [hl+], a                                   ; $5d22: $22
    call z, $02fe                                 ; $5d23: $cc $fe $02
    inc e                                         ; $5d26: $1c
    daa                                           ; $5d27: $27
    ld e, d                                       ; $5d28: $5a
    sbc l                                         ; $5d29: $9d
    and l                                         ; $5d2a: $a5
    jr nc, @-$65                                  ; $5d2b: $30 $99

    sub c                                         ; $5d2d: $91
    adc $c0                                       ; $5d2e: $ce $c0
    add hl, sp                                    ; $5d30: $39
    ccf                                           ; $5d31: $3f
    dec e                                         ; $5d32: $1d
    ld e, b                                       ; $5d33: $58
    ld de, $7f66                                  ; $5d34: $11 $66 $7f
    ld bc, $271c                                  ; $5d37: $01 $1c $27
    ld e, d                                       ; $5d3a: $5a
    sbc l                                         ; $5d3b: $9d
    and l                                         ; $5d3c: $a5
    jr nc, @-$65                                  ; $5d3d: $30 $99

    sub c                                         ; $5d3f: $91
    adc $c0                                       ; $5d40: $ce $c0
    add hl, sp                                    ; $5d42: $39
    ccf                                           ; $5d43: $3f
    dec e                                         ; $5d44: $1d
    ld e, b                                       ; $5d45: $58
    ld de, $7f66                                  ; $5d46: $11 $66 $7f
    ld bc, $271c                                  ; $5d49: $01 $1c $27
    ld e, d                                       ; $5d4c: $5a
    ld [hl], e                                    ; $5d4d: $73
    db $e3                                        ; $5d4e: $e3
    sbc h                                         ; $5d4f: $9c
    add sp, -$34                                  ; $5d50: $e8 $cc
    adc h                                         ; $5d52: $8c
    inc [hl]                                      ; $5d53: $34
    add hl, hl                                    ; $5d54: $29
    ld l, e                                       ; $5d55: $6b
    jp z, $8cc9                                   ; $5d56: $ca $c9 $8c

    ld l, $00                                     ; $5d59: $2e $00
    inc e                                         ; $5d5b: $1c
    daa                                           ; $5d5c: $27
    ld e, d                                       ; $5d5d: $5a
    di                                            ; $5d5e: $f3
    dec l                                         ; $5d5f: $2d
    rst $18                                       ; $5d60: $df
    ld [hl], h                                    ; $5d61: $74
    ld h, b                                       ; $5d62: $60
    ld b, l                                       ; $5d63: $45
    sbc b                                         ; $5d64: $98
    db $fd                                        ; $5d65: $fd
    dec b                                         ; $5d66: $05
    nop                                           ; $5d67: $00
    inc e                                         ; $5d68: $1c
    daa                                           ; $5d69: $27
    ld e, d                                       ; $5d6a: $5a
    sbc l                                         ; $5d6b: $9d
    ld [hl], l                                    ; $5d6c: $75
    ld [hl], e                                    ; $5d6d: $73
    pop bc                                        ; $5d6e: $c1
    ld d, c                                       ; $5d6f: $51
    jp z, $ecc3                                   ; $5d70: $ca $c3 $ec

    call $02fe                                    ; $5d73: $cd $fe $02
    inc e                                         ; $5d76: $1c
    daa                                           ; $5d77: $27
    ld e, d                                       ; $5d78: $5a
    db $e3                                        ; $5d79: $e3
    ld c, h                                       ; $5d7a: $4c
    xor h                                         ; $5d7b: $ac
    rla                                           ; $5d7c: $17
    ld a, a                                       ; $5d7d: $7f
    halt                                          ; $5d7e: $76
    ld [hl-], a                                   ; $5d7f: $32
    rst $38                                       ; $5d80: $ff
    db $d3                                        ; $5d81: $d3
    ld sp, hl                                     ; $5d82: $f9
    ld h, [hl]                                    ; $5d83: $66
    ld a, a                                       ; $5d84: $7f
    ld bc, $271c                                  ; $5d85: $01 $1c $27
    ld e, d                                       ; $5d88: $5a
    or [hl]                                       ; $5d89: $b6
    ld b, [hl]                                    ; $5d8a: $46
    rst $20                                       ; $5d8b: $e7
    sub b                                         ; $5d8c: $90
    ld a, b                                       ; $5d8d: $78
    ld a, $21                                     ; $5d8e: $3e $21
    or [hl]                                       ; $5d90: $b6
    sub b                                         ; $5d91: $90
    dec l                                         ; $5d92: $2d
    db $dd                                        ; $5d93: $dd
    ld e, h                                       ; $5d94: $5c
    ld [hl], e                                    ; $5d95: $73
    call Call_000_02e8                            ; $5d96: $cd $e8 $02
    inc e                                         ; $5d99: $1c
    daa                                           ; $5d9a: $27
    ld e, d                                       ; $5d9b: $5a
    adc $5f                                       ; $5d9c: $ce $5f
    sbc d                                         ; $5d9e: $9a
    pop bc                                        ; $5d9f: $c1
    jr jr_05d_5df0                                ; $5da0: $18 $4e

    adc e                                         ; $5da2: $8b
    jp nc, $aca4                                  ; $5da3: $d2 $a4 $ac

    add hl, hl                                    ; $5da6: $29
    daa                                           ; $5da7: $27
    inc sp                                        ; $5da8: $33
    cp d                                          ; $5da9: $ba
    nop                                           ; $5daa: $00
    inc e                                         ; $5dab: $1c
    daa                                           ; $5dac: $27
    ld e, d                                       ; $5dad: $5a
    ld l, $5c                                     ; $5dae: $2e $5c
    sbc d                                         ; $5db0: $9a
    pop bc                                        ; $5db1: $c1
    jr jr_05d_5e02                                ; $5db2: $18 $4e

    adc e                                         ; $5db4: $8b
    jp nc, $aca4                                  ; $5db5: $d2 $a4 $ac

    add hl, hl                                    ; $5db8: $29
    daa                                           ; $5db9: $27
    inc sp                                        ; $5dba: $33
    cp d                                          ; $5dbb: $ba
    nop                                           ; $5dbc: $00
    inc e                                         ; $5dbd: $1c
    daa                                           ; $5dbe: $27
    ld e, d                                       ; $5dbf: $5a
    ld l, $5e                                     ; $5dc0: $2e $5e
    sbc d                                         ; $5dc2: $9a
    pop bc                                        ; $5dc3: $c1
    jr jr_05d_5e14                                ; $5dc4: $18 $4e

    adc e                                         ; $5dc6: $8b
    jp nc, $aca4                                  ; $5dc7: $d2 $a4 $ac

    add hl, hl                                    ; $5dca: $29
    daa                                           ; $5dcb: $27
    inc sp                                        ; $5dcc: $33
    cp d                                          ; $5dcd: $ba
    nop                                           ; $5dce: $00
    inc e                                         ; $5dcf: $1c
    daa                                           ; $5dd0: $27
    ld e, d                                       ; $5dd1: $5a
    ld l, $5d                                     ; $5dd2: $2e $5d
    sbc d                                         ; $5dd4: $9a
    pop bc                                        ; $5dd5: $c1
    jr @+$50                                      ; $5dd6: $18 $4e

    adc e                                         ; $5dd8: $8b
    jp nc, $aca4                                  ; $5dd9: $d2 $a4 $ac

    add hl, hl                                    ; $5ddc: $29
    daa                                           ; $5ddd: $27
    inc sp                                        ; $5dde: $33
    cp d                                          ; $5ddf: $ba
    nop                                           ; $5de0: $00
    inc e                                         ; $5de1: $1c
    daa                                           ; $5de2: $27
    ld e, d                                       ; $5de3: $5a
    ld l, $5f                                     ; $5de4: $2e $5f
    sbc d                                         ; $5de6: $9a
    pop bc                                        ; $5de7: $c1
    jr jr_05d_5e38                                ; $5de8: $18 $4e

    adc e                                         ; $5dea: $8b
    jp nc, $aca4                                  ; $5deb: $d2 $a4 $ac

    add hl, hl                                    ; $5dee: $29
    daa                                           ; $5def: $27

jr_05d_5df0:
    inc sp                                        ; $5df0: $33
    cp d                                          ; $5df1: $ba
    nop                                           ; $5df2: $00
    inc e                                         ; $5df3: $1c
    daa                                           ; $5df4: $27
    ld e, d                                       ; $5df5: $5a
    xor [hl]                                      ; $5df6: $ae
    ld e, h                                       ; $5df7: $5c
    sbc d                                         ; $5df8: $9a
    pop bc                                        ; $5df9: $c1
    jr jr_05d_5e4a                                ; $5dfa: $18 $4e

    adc e                                         ; $5dfc: $8b
    jp nc, $aca4                                  ; $5dfd: $d2 $a4 $ac

    add hl, hl                                    ; $5e00: $29
    daa                                           ; $5e01: $27

jr_05d_5e02:
    inc sp                                        ; $5e02: $33
    cp d                                          ; $5e03: $ba
    nop                                           ; $5e04: $00
    inc e                                         ; $5e05: $1c
    daa                                           ; $5e06: $27
    ld e, d                                       ; $5e07: $5a
    xor [hl]                                      ; $5e08: $ae
    ld e, [hl]                                    ; $5e09: $5e
    sbc d                                         ; $5e0a: $9a
    pop bc                                        ; $5e0b: $c1
    jr jr_05d_5e5c                                ; $5e0c: $18 $4e

    adc e                                         ; $5e0e: $8b
    jp nc, $aca4                                  ; $5e0f: $d2 $a4 $ac

    add hl, hl                                    ; $5e12: $29
    daa                                           ; $5e13: $27

jr_05d_5e14:
    inc sp                                        ; $5e14: $33
    cp d                                          ; $5e15: $ba
    nop                                           ; $5e16: $00
    inc e                                         ; $5e17: $1c
    daa                                           ; $5e18: $27
    ld e, d                                       ; $5e19: $5a
    cp $b3                                        ; $5e1a: $fe $b3
    xor a                                         ; $5e1c: $af
    ld a, [hl]                                    ; $5e1d: $7e
    ld hl, sp+$4b                                 ; $5e1e: $f8 $4b
    di                                            ; $5e20: $f3
    add a                                         ; $5e21: $87
    rst $38                                       ; $5e22: $ff
    ld h, [hl]                                    ; $5e23: $66
    ld a, a                                       ; $5e24: $7f
    ld bc, $271c                                  ; $5e25: $01 $1c $27
    ld e, d                                       ; $5e28: $5a
    db $fd                                        ; $5e29: $fd
    dec sp                                        ; $5e2a: $3b
    rst $00                                       ; $5e2b: $c7
    add b                                         ; $5e2c: $80
    ld b, h                                       ; $5e2d: $44
    add hl, hl                                    ; $5e2e: $29
    ld e, l                                       ; $5e2f: $5d
    ld l, e                                       ; $5e30: $6b
    ld h, h                                       ; $5e31: $64
    ei                                            ; $5e32: $fb
    and l                                         ; $5e33: $a5
    inc sp                                        ; $5e34: $33
    ld [hl], b                                    ; $5e35: $70
    cp [hl]                                       ; $5e36: $be
    reti                                          ; $5e37: $d9


jr_05d_5e38:
    ld e, a                                       ; $5e38: $5f
    nop                                           ; $5e39: $00
    inc e                                         ; $5e3a: $1c
    daa                                           ; $5e3b: $27
    ld e, d                                       ; $5e3c: $5a
    or $cb                                        ; $5e3d: $f6 $cb
    cp $cf                                        ; $5e3f: $fe $cf
    db $db                                        ; $5e41: $db
    ld l, [hl]                                    ; $5e42: $6e
    ld e, $66                                     ; $5e43: $1e $66
    ld [hl], h                                    ; $5e45: $74
    ld bc, $271c                                  ; $5e46: $01 $1c $27
    ld e, d                                       ; $5e49: $5a

jr_05d_5e4a:
    ld [hl], e                                    ; $5e4a: $73
    add hl, de                                    ; $5e4b: $19
    db $fc                                        ; $5e4c: $fc
    sub $68                                       ; $5e4d: $d6 $68
    or $17                                        ; $5e4f: $f6 $17
    nop                                           ; $5e51: $00
    inc e                                         ; $5e52: $1c
    daa                                           ; $5e53: $27
    ld e, d                                       ; $5e54: $5a
    ld [hl], e                                    ; $5e55: $73
    add hl, de                                    ; $5e56: $19
    db $fc                                        ; $5e57: $fc
    sub $68                                       ; $5e58: $d6 $68
    or $17                                        ; $5e5a: $f6 $17

jr_05d_5e5c:
    nop                                           ; $5e5c: $00
    inc e                                         ; $5e5d: $1c
    daa                                           ; $5e5e: $27
    ld e, d                                       ; $5e5f: $5a
    ld a, $c3                                     ; $5e60: $3e $c3
    inc b                                         ; $5e62: $04
    jp $d90c                                      ; $5e63: $c3 $0c $d9


    adc d                                         ; $5e66: $8a
    cpl                                           ; $5e67: $2f
    ld bc, $9e0f                                  ; $5e68: $01 $0f $9e
    db $dd                                        ; $5e6b: $dd
    sbc e                                         ; $5e6c: $9b
    ldh a, [$97]                                  ; $5e6d: $f0 $97
    ld a, [hl-]                                   ; $5e6f: $3a
    db $e3                                        ; $5e70: $e3
    ld c, d                                       ; $5e71: $4a

Call_05d_5e72:
    rlca                                          ; $5e72: $07

Jump_05d_5e73:
    ld d, [hl]                                    ; $5e73: $56
    add h                                         ; $5e74: $84
    reti                                          ; $5e75: $d9


    ld e, a                                       ; $5e76: $5f
    nop                                           ; $5e77: $00
    inc e                                         ; $5e78: $1c
    daa                                           ; $5e79: $27
    ld e, d                                       ; $5e7a: $5a
    jr nc, @+$5b                                  ; $5e7b: $30 $59

    ld l, a                                       ; $5e7d: $6f
    ld l, a                                       ; $5e7e: $6f
    ld b, b                                       ; $5e7f: $40
    or b                                          ; $5e80: $b0
    ld [hl], h                                    ; $5e81: $74
    ld b, $ce                                     ; $5e82: $06 $ce
    scf                                           ; $5e84: $37
    ei                                            ; $5e85: $fb
    dec bc                                        ; $5e86: $0b
    nop                                           ; $5e87: $00
    inc e                                         ; $5e88: $1c

jr_05d_5e89:
    daa                                           ; $5e89: $27
    ld e, d                                       ; $5e8a: $5a
    rst $30                                       ; $5e8b: $f7
    rst $30                                       ; $5e8c: $f7
    rst $18                                       ; $5e8d: $df
    dec hl                                        ; $5e8e: $2b
    add a                                         ; $5e8f: $87
    ld a, b                                       ; $5e90: $78
    daa                                           ; $5e91: $27
    ret z                                         ; $5e92: $c8

    ld [hl+], a                                   ; $5e93: $22
    dec hl                                        ; $5e94: $2b
    ld [hl], l                                    ; $5e95: $75
    add $95                                       ; $5e96: $c6 $95
    ld c, $ac                                     ; $5e98: $0e $ac
    ld [$bfb3], sp                                ; $5e9a: $08 $b3 $bf
    nop                                           ; $5e9d: $00
    inc e                                         ; $5e9e: $1c
    daa                                           ; $5e9f: $27
    ld e, d                                       ; $5ea0: $5a
    db $fd                                        ; $5ea1: $fd
    dec sp                                        ; $5ea2: $3b
    rra                                           ; $5ea3: $1f
    ld e, $78                                     ; $5ea4: $1e $78
    rst $38                                       ; $5ea6: $ff
    add hl, de                                    ; $5ea7: $19
    jr c, jr_05d_5e89                             ; $5ea8: $38 $df

    db $ec                                        ; $5eaa: $ec
    cpl                                           ; $5eab: $2f
    nop                                           ; $5eac: $00
    inc e                                         ; $5ead: $1c
    daa                                           ; $5eae: $27
    ld e, d                                       ; $5eaf: $5a
    ld a, $c3                                     ; $5eb0: $3e $c3
    inc b                                         ; $5eb2: $04
    jp $d90c                                      ; $5eb3: $c3 $0c $d9


    adc d                                         ; $5eb6: $8a
    add e                                         ; $5eb7: $83
    ld a, l                                       ; $5eb8: $7d
    ld e, $a5                                     ; $5eb9: $1e $a5
    adc $b8                                       ; $5ebb: $ce $b8
    jp nc, $1581                                  ; $5ebd: $d2 $81 $15

    ld h, c                                       ; $5ec0: $61
    or $17                                        ; $5ec1: $f6 $17
    nop                                           ; $5ec3: $00
    inc e                                         ; $5ec4: $1c
    daa                                           ; $5ec5: $27
    ld e, d                                       ; $5ec6: $5a
    ld a, $c3                                     ; $5ec7: $3e $c3
    inc b                                         ; $5ec9: $04
    jp $d90c                                      ; $5eca: $c3 $0c $d9


    adc d                                         ; $5ecd: $8a
    rst $30                                       ; $5ece: $f7
    rst $08                                       ; $5ecf: $cf
    ld a, h                                       ; $5ed0: $7c
    add [hl]                                      ; $5ed1: $86
    db $d3                                        ; $5ed2: $d3
    and d                                         ; $5ed3: $a2
    call nc, Call_05d_5719                        ; $5ed4: $d4 $19 $57
    ld a, [hl-]                                   ; $5ed7: $3a
    or b                                          ; $5ed8: $b0
    ld [hl+], a                                   ; $5ed9: $22
    call z, $02fe                                 ; $5eda: $cc $fe $02
    inc e                                         ; $5edd: $1c
    daa                                           ; $5ede: $27
    ld e, d                                       ; $5edf: $5a
    ld a, $c3                                     ; $5ee0: $3e $c3
    inc b                                         ; $5ee2: $04
    jp $d90c                                      ; $5ee3: $c3 $0c $d9


    jp z, Jump_05d_60f3                           ; $5ee6: $ca $f3 $60

    add [hl]                                      ; $5ee9: $86
    and l                                         ; $5eea: $a5
    adc $b8                                       ; $5eeb: $ce $b8
    jp nc, $1581                                  ; $5eed: $d2 $81 $15

    ld h, c                                       ; $5ef0: $61
    or $17                                        ; $5ef1: $f6 $17
    nop                                           ; $5ef3: $00
    inc e                                         ; $5ef4: $1c
    daa                                           ; $5ef5: $27
    ld e, d                                       ; $5ef6: $5a
    ld sp, hl                                     ; $5ef7: $f9
    or e                                          ; $5ef8: $b3
    or a                                          ; $5ef9: $b7
    add $74                                       ; $5efa: $c6 $74
    ld h, b                                       ; $5efc: $60
    ld b, l                                       ; $5efd: $45
    sbc b                                         ; $5efe: $98
    db $fd                                        ; $5eff: $fd
    dec b                                         ; $5f00: $05

jr_05d_5f01:
    nop                                           ; $5f01: $00
    inc e                                         ; $5f02: $1c
    daa                                           ; $5f03: $27
    ld e, d                                       ; $5f04: $5a
    rst $30                                       ; $5f05: $f7
    ld b, b                                       ; $5f06: $40
    ld [$3dd6], sp                                ; $5f07: $08 $d6 $3d
    ld b, [hl]                                    ; $5f0a: $46
    and e                                         ; $5f0b: $a3
    add hl, sp                                    ; $5f0c: $39
    ld [hl], e                                    ; $5f0d: $73
    ld b, $ce                                     ; $5f0e: $06 $ce
    scf                                           ; $5f10: $37
    ei                                            ; $5f11: $fb
    dec bc                                        ; $5f12: $0b
    nop                                           ; $5f13: $00
    inc e                                         ; $5f14: $1c
    daa                                           ; $5f15: $27
    ld e, d                                       ; $5f16: $5a
    cp $9f                                        ; $5f17: $fe $9f

Call_05d_5f19:
    cp c                                          ; $5f19: $b9
    push de                                       ; $5f1a: $d5
    sbc b                                         ; $5f1b: $98
    ld c, $ac                                     ; $5f1c: $0e $ac
    ld [$bfb3], sp                                ; $5f1e: $08 $b3 $bf
    nop                                           ; $5f21: $00
    inc e                                         ; $5f22: $1c
    daa                                           ; $5f23: $27
    ld e, d                                       ; $5f24: $5a
    ld e, $b2                                     ; $5f25: $1e $b2
    inc a                                         ; $5f27: $3c
    ld a, [$9d4b]                                 ; $5f28: $fa $4b $9d
    or c                                          ; $5f2b: $b1
    ld a, e                                       ; $5f2c: $7b
    call Call_000_02e8                            ; $5f2d: $cd $e8 $02
    inc e                                         ; $5f30: $1c

Call_05d_5f31:
    daa                                           ; $5f31: $27
    ld e, d                                       ; $5f32: $5a
    rst $20                                       ; $5f33: $e7
    or a                                          ; $5f34: $b7
    rlca                                          ; $5f35: $07
    db $db                                        ; $5f36: $db
    ld [hl], e                                    ; $5f37: $73
    ld e, [hl]                                    ; $5f38: $5e
    ld e, c                                       ; $5f39: $59
    ld a, [bc]                                    ; $5f3a: $0a
    adc c                                         ; $5f3b: $89
    ld l, c                                       ; $5f3c: $69
    ld d, h                                       ; $5f3d: $54
    add d                                         ; $5f3e: $82
    ld e, a                                       ; $5f3f: $5f
    inc de                                        ; $5f40: $13
    rst $08                                       ; $5f41: $cf
    dec e                                         ; $5f42: $1d
    xor d                                         ; $5f43: $aa
    jr c, jr_05d_5f76                             ; $5f44: $38 $30

    ld d, l                                       ; $5f46: $55
    add l                                         ; $5f47: $85
    dec [hl]                                      ; $5f48: $35
    ld e, l                                       ; $5f49: $5d
    nop                                           ; $5f4a: $00
    inc e                                         ; $5f4b: $1c
    daa                                           ; $5f4c: $27
    ld e, d                                       ; $5f4d: $5a
    jr nc, jr_05d_5f01                            ; $5f4e: $30 $b1

    inc a                                         ; $5f50: $3c
    ld c, d                                       ; $5f51: $4a
    db $ec                                        ; $5f52: $ec
    xor e                                         ; $5f53: $ab
    cp $9c                                        ; $5f54: $fe $9c
    cp a                                          ; $5f56: $bf
    nop                                           ; $5f57: $00
    inc e                                         ; $5f58: $1c
    daa                                           ; $5f59: $27

Jump_05d_5f5a:
    ld e, d                                       ; $5f5a: $5a
    db $fc                                        ; $5f5b: $fc
    reti                                          ; $5f5c: $d9


    ret                                           ; $5f5d: $c9


    db $fc                                        ; $5f5e: $fc
    ld c, a                                       ; $5f5f: $4f
    rst $20                                       ; $5f60: $e7
    sub a                                         ; $5f61: $97
    and d                                         ; $5f62: $a2
    ld h, e                                       ; $5f63: $63
    db $ed                                        ; $5f64: $ed
    rst $00                                       ; $5f65: $c7
    ld a, c                                       ; $5f66: $79
    or e                                          ; $5f67: $b3
    cp a                                          ; $5f68: $bf
    nop                                           ; $5f69: $00
    inc e                                         ; $5f6a: $1c
    daa                                           ; $5f6b: $27
    ld e, d                                       ; $5f6c: $5a
    sbc [hl]                                      ; $5f6d: $9e
    ld h, d                                       ; $5f6e: $62
    ld a, [hl-]                                   ; $5f6f: $3a
    db $e3                                        ; $5f70: $e3
    db $ec                                        ; $5f71: $ec
    call nz, $8f92                                ; $5f72: $c4 $92 $8f
    dec sp                                        ; $5f75: $3b

jr_05d_5f76:
    scf                                           ; $5f76: $37
    ld c, d                                       ; $5f77: $4a
    rst $30                                       ; $5f78: $f7
    rst $08                                       ; $5f79: $cf
    ld sp, $cfec                                  ; $5f7a: $31 $ec $cf
    sbc d                                         ; $5f7d: $9a
    db $fd                                        ; $5f7e: $fd
    dec b                                         ; $5f7f: $05
    nop                                           ; $5f80: $00
    inc e                                         ; $5f81: $1c
    daa                                           ; $5f82: $27
    ld e, d                                       ; $5f83: $5a
    sbc [hl]                                      ; $5f84: $9e
    ld h, d                                       ; $5f85: $62
    ld a, [hl-]                                   ; $5f86: $3a
    db $e3                                        ; $5f87: $e3
    db $ec                                        ; $5f88: $ec
    call nz, $9e12                                ; $5f89: $c4 $12 $9e
    or b                                          ; $5f8c: $b0
    add hl, de                                    ; $5f8d: $19
    ld h, a                                       ; $5f8e: $67
    and h                                         ; $5f8f: $a4
    inc bc                                        ; $5f90: $03
    dec hl                                        ; $5f91: $2b
    jp nz, Jump_000_2fec                          ; $5f92: $c2 $ec $2f

    nop                                           ; $5f95: $00
    inc e                                         ; $5f96: $1c
    daa                                           ; $5f97: $27
    ld e, d                                       ; $5f98: $5a
    or [hl]                                       ; $5f99: $b6
    sbc e                                         ; $5f9a: $9b
    db $e3                                        ; $5f9b: $e3
    or b                                          ; $5f9c: $b0
    adc c                                         ; $5f9d: $89
    ld [hl], a                                    ; $5f9e: $77
    jr nc, jr_05d_5fd5                            ; $5f9f: $30 $34

    ei                                            ; $5fa1: $fb
    dec bc                                        ; $5fa2: $0b
    nop                                           ; $5fa3: $00
    inc e                                         ; $5fa4: $1c
    daa                                           ; $5fa5: $27
    ld e, d                                       ; $5fa6: $5a
    sbc [hl]                                      ; $5fa7: $9e
    inc hl                                        ; $5fa8: $23
    jp Jump_05d_6752                              ; $5fa9: $c3 $52 $67


    ld e, h                                       ; $5fac: $5c

jr_05d_5fad:
    jp hl                                         ; $5fad: $e9


    ret nz                                        ; $5fae: $c0

    adc d                                         ; $5faf: $8a
    jr nc, jr_05d_5fad                            ; $5fb0: $30 $fb

    dec bc                                        ; $5fb2: $0b
    nop                                           ; $5fb3: $00
    inc e                                         ; $5fb4: $1c
    daa                                           ; $5fb5: $27
    ld e, d                                       ; $5fb6: $5a
    ld [hl], $06                                  ; $5fb7: $36 $06
    dec bc                                        ; $5fb9: $0b
    or e                                          ; $5fba: $b3
    sub a                                         ; $5fbb: $97
    db $fd                                        ; $5fbc: $fd
    ld e, c                                       ; $5fbd: $59
    or e                                          ; $5fbe: $b3
    cp a                                          ; $5fbf: $bf
    nop                                           ; $5fc0: $00
    inc e                                         ; $5fc1: $1c
    daa                                           ; $5fc2: $27

Jump_05d_5fc3:
    ld e, d                                       ; $5fc3: $5a
    add sp, $47                                   ; $5fc4: $e8 $47
    rst $30                                       ; $5fc6: $f7
    jp $95bf                                      ; $5fc7: $c3 $bf $95


Jump_05d_5fca:
    ld c, $ac                                     ; $5fca: $0e $ac
    ld [$bfb3], sp                                ; $5fcc: $08 $b3 $bf
    nop                                           ; $5fcf: $00
    inc e                                         ; $5fd0: $1c
    daa                                           ; $5fd1: $27
    ld e, d                                       ; $5fd2: $5a
    rst $30                                       ; $5fd3: $f7
    ret nz                                        ; $5fd4: $c0

jr_05d_5fd5:
    add $39                                       ; $5fd5: $c6 $39
    ld a, [c]                                     ; $5fd7: $f2
    ld c, a                                       ; $5fd8: $4f
    rlca                                          ; $5fd9: $07
    ld d, [hl]                                    ; $5fda: $56
    add h                                         ; $5fdb: $84
    reti                                          ; $5fdc: $d9


    ld e, a                                       ; $5fdd: $5f
    nop                                           ; $5fde: $00
    inc e                                         ; $5fdf: $1c
    daa                                           ; $5fe0: $27
    ld e, d                                       ; $5fe1: $5a
    sbc l                                         ; $5fe2: $9d
    or c                                          ; $5fe3: $b1
    ld a, e                                       ; $5fe4: $7b
    call Call_000_02e8                            ; $5fe5: $cd $e8 $02
    inc e                                         ; $5fe8: $1c
    daa                                           ; $5fe9: $27
    ld e, d                                       ; $5fea: $5a
    ldh a, [$c0]                                  ; $5feb: $f0 $c0
    ei                                            ; $5fed: $fb
    bit 4, d                                      ; $5fee: $cb $62
    ld [c], a                                     ; $5ff0: $e2
    or $30                                        ; $5ff1: $f6 $30
    ld h, a                                       ; $5ff3: $67
    jp nc, $1581                                  ; $5ff4: $d2 $81 $15

    ld h, c                                       ; $5ff7: $61
    or $17                                        ; $5ff8: $f6 $17

Jump_05d_5ffa:
    nop                                           ; $5ffa: $00
    inc e                                         ; $5ffb: $1c
    daa                                           ; $5ffc: $27
    ld e, d                                       ; $5ffd: $5a
    inc a                                         ; $5ffe: $3c
    rst $08                                       ; $5fff: $cf
    ld e, b                                       ; $6000: $58
    ld d, [hl]                                    ; $6001: $56
    ld c, d                                       ; $6002: $4a
    pop af                                        ; $6003: $f1
    db $e4                                        ; $6004: $e4
    ld l, e                                       ; $6005: $6b
    or $17                                        ; $6006: $f6 $17
    nop                                           ; $6008: $00
    inc e                                         ; $6009: $1c
    daa                                           ; $600a: $27
    ld e, d                                       ; $600b: $5a
    ld c, l                                       ; $600c: $4d
    ld l, c                                       ; $600d: $69
    ld l, a                                       ; $600e: $6f
    ld l, a                                       ; $600f: $6f
    ld [hl], h                                    ; $6010: $74
    ld b, h                                       ; $6011: $44
    ld l, c                                       ; $6012: $69
    ld d, d                                       ; $6013: $52
    sub $94                                       ; $6014: $d6 $94
    sub e                                         ; $6016: $93
    add hl, de                                    ; $6017: $19
    ld e, l                                       ; $6018: $5d
    nop                                           ; $6019: $00
    inc e                                         ; $601a: $1c
    daa                                           ; $601b: $27
    ld e, d                                       ; $601c: $5a
    db $fc                                        ; $601d: $fc
    reti                                          ; $601e: $d9


    ret                                           ; $601f: $c9


    db $fc                                        ; $6020: $fc
    ld c, a                                       ; $6021: $4f
    rst $20                                       ; $6022: $e7
    sub a                                         ; $6023: $97
    xor $df                                       ; $6024: $ee $df
    ld [hl], e                                    ; $6026: $73
    cp $02                                        ; $6027: $fe $02
    inc e                                         ; $6029: $1c
    daa                                           ; $602a: $27
    ld e, d                                       ; $602b: $5a
    db $fc                                        ; $602c: $fc
    reti                                          ; $602d: $d9


    ret                                           ; $602e: $c9


    db $fc                                        ; $602f: $fc
    ld c, a                                       ; $6030: $4f
    rst $20                                       ; $6031: $e7
    sub a                                         ; $6032: $97
    xor $df                                       ; $6033: $ee $df
    ld [hl], e                                    ; $6035: $73
    cp $02                                        ; $6036: $fe $02
    inc e                                         ; $6038: $1c
    daa                                           ; $6039: $27
    ld e, d                                       ; $603a: $5a
    db $fc                                        ; $603b: $fc
    reti                                          ; $603c: $d9


    ret                                           ; $603d: $c9


    db $fc                                        ; $603e: $fc
    ld c, a                                       ; $603f: $4f
    rst $20                                       ; $6040: $e7
    sub a                                         ; $6041: $97
    xor $df                                       ; $6042: $ee $df
    ld [hl], e                                    ; $6044: $73
    cp $02                                        ; $6045: $fe $02
    inc e                                         ; $6047: $1c
    daa                                           ; $6048: $27
    ld e, d                                       ; $6049: $5a
    inc a                                         ; $604a: $3c
    sbc a                                         ; $604b: $9f
    db $10                                        ; $604c: $10
    ld e, e                                       ; $604d: $5b
    ret z                                         ; $604e: $c8

    sub [hl]                                      ; $604f: $96
    ld l, [hl]                                    ; $6050: $6e
    xor [hl]                                      ; $6051: $ae
    cp c                                          ; $6052: $b9
    and l                                         ; $6053: $a5
    ld [hl], c                                    ; $6054: $71
    ld h, $fa                                     ; $6055: $26 $fa
    inc bc                                        ; $6057: $03
    ld c, a                                       ; $6058: $4f
    sbc h                                         ; $6059: $9c
    di                                            ; $605a: $f3
    rla                                           ; $605b: $17
    nop                                           ; $605c: $00
    inc e                                         ; $605d: $1c
    daa                                           ; $605e: $27
    ld e, d                                       ; $605f: $5a
    inc de                                        ; $6060: $13
    ld e, c                                       ; $6061: $59
    rst $30                                       ; $6062: $f7
    ld b, [hl]                                    ; $6063: $46
    ld l, c                                       ; $6064: $69
    ld b, $a3                                     ; $6065: $06 $a3
    dec a                                         ; $6067: $3d
    dec bc                                        ; $6068: $0b
    ld [hl], e                                    ; $6069: $73
    dec l                                         ; $606a: $2d
    inc h                                         ; $606b: $24
    ld c, d                                       ; $606c: $4a
    inc sp                                        ; $606d: $33
    ld e, b                                       ; $606e: $58
    adc d                                         ; $606f: $8a

jr_05d_6070:
    jp hl                                         ; $6070: $e9


    ret nz                                        ; $6071: $c0

    adc d                                         ; $6072: $8a
    jr nc, jr_05d_6070                            ; $6073: $30 $fb

    dec bc                                        ; $6075: $0b
    nop                                           ; $6076: $00
    inc e                                         ; $6077: $1c
    daa                                           ; $6078: $27
    ld e, d                                       ; $6079: $5a
    ld [hl], $06                                  ; $607a: $36 $06
    dec bc                                        ; $607c: $0b
    or e                                          ; $607d: $b3
    sub a                                         ; $607e: $97
    db $fd                                        ; $607f: $fd
    ld e, c                                       ; $6080: $59
    or e                                          ; $6081: $b3
    cp a                                          ; $6082: $bf
    nop                                           ; $6083: $00
    inc e                                         ; $6084: $1c
    daa                                           ; $6085: $27
    ld e, d                                       ; $6086: $5a
    or $e7                                        ; $6087: $f6 $e7
    rst $10                                       ; $6089: $d7
    jp nz, Jump_000_05ec                          ; $608a: $c2 $ec $05

    sub e                                         ; $608d: $93
    push af                                       ; $608e: $f5
    and [hl]                                      ; $608f: $a6
    inc bc                                        ; $6090: $03
    dec hl                                        ; $6091: $2b
    jp nz, Jump_000_2fec                          ; $6092: $c2 $ec $2f

    nop                                           ; $6095: $00
    inc e                                         ; $6096: $1c
    daa                                           ; $6097: $27
    ld e, d                                       ; $6098: $5a
    ld [hl], e                                    ; $6099: $73
    add hl, de                                    ; $609a: $19
    adc h                                         ; $609b: $8c
    db $db                                        ; $609c: $db
    jp $3a72                                      ; $609d: $c3 $72 $3a


    ld e, e                                       ; $60a0: $5b
    pop hl                                        ; $60a1: $e1
    ld c, h                                       ; $60a2: $4c
    cp $ec                                        ; $60a3: $fe $ec
    xor l                                         ; $60a5: $ad
    pop de                                        ; $60a6: $d1
    db $ec                                        ; $60a7: $ec
    cpl                                           ; $60a8: $2f

jr_05d_60a9:
    nop                                           ; $60a9: $00
    inc e                                         ; $60aa: $1c
    daa                                           ; $60ab: $27
    ld e, d                                       ; $60ac: $5a
    ld a, $ee                                     ; $60ad: $3e $ee
    call c, $e528                                 ; $60af: $dc $28 $e5
    ld h, c                                       ; $60b2: $61
    or $66                                        ; $60b3: $f6 $66
    ld a, a                                       ; $60b5: $7f
    ld bc, $271c                                  ; $60b6: $01 $1c $27
    ld e, d                                       ; $60b9: $5a
    jr nc, jr_05d_6115                            ; $60ba: $30 $59

    rst $28                                       ; $60bc: $ef
    dec a                                         ; $60bd: $3d
    ld l, h                                       ; $60be: $6c
    ld [hl], a                                    ; $60bf: $77
    ld l, [hl]                                    ; $60c0: $6e
    jp hl                                         ; $60c1: $e9


    inc c                                         ; $60c2: $0c
    sbc h                                         ; $60c3: $9c
    ld l, a                                       ; $60c4: $6f
    or $17                                        ; $60c5: $f6 $17
    nop                                           ; $60c7: $00
    inc e                                         ; $60c8: $1c
    daa                                           ; $60c9: $27
    ld e, d                                       ; $60ca: $5a
    jr nc, jr_05d_6126                            ; $60cb: $30 $59

    ld l, a                                       ; $60cd: $6f
    rst $38                                       ; $60ce: $ff
    halt                                          ; $60cf: $76
    ld b, h                                       ; $60d0: $44
    jp hl                                         ; $60d1: $e9


    inc c                                         ; $60d2: $0c
    sbc h                                         ; $60d3: $9c
    ld l, a                                       ; $60d4: $6f
    or $17                                        ; $60d5: $f6 $17
    nop                                           ; $60d7: $00
    inc e                                         ; $60d8: $1c
    daa                                           ; $60d9: $27
    ld e, d                                       ; $60da: $5a
    inc de                                        ; $60db: $13
    ld e, c                                       ; $60dc: $59
    rst $30                                       ; $60dd: $f7
    and [hl]                                      ; $60de: $a6
    ld a, b                                       ; $60df: $78
    ld a, [c]                                     ; $60e0: $f2
    dec [hl]                                      ; $60e1: $35
    ei                                            ; $60e2: $fb
    dec bc                                        ; $60e3: $0b
    nop                                           ; $60e4: $00
    inc e                                         ; $60e5: $1c
    daa                                           ; $60e6: $27
    ld e, d                                       ; $60e7: $5a
    or $e7                                        ; $60e8: $f6 $e7
    daa                                           ; $60ea: $27
    ld h, l                                       ; $60eb: $65
    ld c, l                                       ; $60ec: $4d
    add hl, sp                                    ; $60ed: $39

Call_05d_60ee:
    sbc c                                         ; $60ee: $99
    pop de                                        ; $60ef: $d1
    dec b                                         ; $60f0: $05
    nop                                           ; $60f1: $00
    inc e                                         ; $60f2: $1c

Jump_05d_60f3:
    daa                                           ; $60f3: $27
    ld e, d                                       ; $60f4: $5a
    ld a, $c3                                     ; $60f5: $3e $c3
    inc b                                         ; $60f7: $04
    jp $d90c                                      ; $60f8: $c3 $0c $d9


Call_05d_60fb:
    jp z, $ad9d                                   ; $60fb: $ca $9d $ad

    or d                                          ; $60fe: $b2
    dec l                                         ; $60ff: $2d
    ld [hl], l                                    ; $6100: $75
    add $95                                       ; $6101: $c6 $95
    ld c, $ac                                     ; $6103: $0e $ac
    ld [$bfb3], sp                                ; $6105: $08 $b3 $bf
    nop                                           ; $6108: $00
    inc e                                         ; $6109: $1c
    daa                                           ; $610a: $27
    ld e, d                                       ; $610b: $5a
    sbc l                                         ; $610c: $9d
    and l                                         ; $610d: $a5
    jr nc, jr_05d_60a9                            ; $610e: $30 $99

    sub c                                         ; $6110: $91
    adc $c0                                       ; $6111: $ce $c0
    add hl, sp                                    ; $6113: $39
    ccf                                           ; $6114: $3f

jr_05d_6115:
    dec e                                         ; $6115: $1d
    ld e, b                                       ; $6116: $58
    ld de, $7f66                                  ; $6117: $11 $66 $7f
    ld bc, $271c                                  ; $611a: $01 $1c $27
    ld e, d                                       ; $611d: $5a
    or [hl]                                       ; $611e: $b6
    sbc e                                         ; $611f: $9b
    rst $00                                       ; $6120: $c7
    sbc h                                         ; $6121: $9c
    or h                                          ; $6122: $b4
    sub b                                         ; $6123: $90
    jr z, jr_05d_61a3                             ; $6124: $28 $7d

jr_05d_6126:
    cp $5b                                        ; $6126: $fe $5b
    dec e                                         ; $6128: $1d
    and l                                         ; $6129: $a5
    ld [hl], h                                    ; $612a: $74
    ld h, b                                       ; $612b: $60
    ld b, l                                       ; $612c: $45
    sbc b                                         ; $612d: $98
    db $fd                                        ; $612e: $fd
    dec b                                         ; $612f: $05
    nop                                           ; $6130: $00
    inc e                                         ; $6131: $1c
    daa                                           ; $6132: $27
    ld e, d                                       ; $6133: $5a
    ld [hl], $06                                  ; $6134: $36 $06
    dec bc                                        ; $6136: $0b
    or e                                          ; $6137: $b3
    sub a                                         ; $6138: $97
    db $fd                                        ; $6139: $fd
    ld e, c                                       ; $613a: $59
    or e                                          ; $613b: $b3
    cp a                                          ; $613c: $bf
    nop                                           ; $613d: $00
    inc e                                         ; $613e: $1c
    or $f2                                        ; $613f: $f6 $f2
    db $e3                                        ; $6141: $e3
    ld l, h                                       ; $6142: $6c
    rst $00                                       ; $6143: $c7
    inc l                                         ; $6144: $2c
    inc a                                         ; $6145: $3c
    sbc b                                         ; $6146: $98
    ret nc                                        ; $6147: $d0

    cp [hl]                                       ; $6148: $be
    push af                                       ; $6149: $f5
    dec hl                                        ; $614a: $2b
    ld sp, $e0b9                                  ; $614b: $31 $b9 $e0
    sbc h                                         ; $614e: $9c
    ld [hl], e                                    ; $614f: $73
    adc $cb                                       ; $6150: $ce $cb
    db $ed                                        ; $6152: $ed
    ei                                            ; $6153: $fb
    inc de                                        ; $6154: $13
    dec c                                         ; $6155: $0d
    ld b, c                                       ; $6156: $41

jr_05d_6157:
    ld d, a                                       ; $6157: $57
    rlca                                          ; $6158: $07
    db $eb                                        ; $6159: $eb
    rst $18                                       ; $615a: $df
    cp d                                          ; $615b: $ba
    and e                                         ; $615c: $a3
    ld a, [hl-]                                   ; $615d: $3a
    add hl, hl                                    ; $615e: $29
    rrca                                          ; $615f: $0f
    dec hl                                        ; $6160: $2b
    add c                                         ; $6161: $81
    ld c, e                                       ; $6162: $4b
    sbc $4a                                       ; $6163: $de $4a
    sbc $ba                                       ; $6165: $de $ba
    ld a, l                                       ; $6167: $7d
    ld a, a                                       ; $6168: $7f
    and d                                         ; $6169: $a2
    ld hl, $eae8                                  ; $616a: $21 $e8 $ea
    ld h, b                                       ; $616d: $60
    db $fd                                        ; $616e: $fd
    ld e, e                                       ; $616f: $5b
    ld [hl], a                                    ; $6170: $77
    ld d, h                                       ; $6171: $54
    dec bc                                        ; $6172: $0b
    ld a, [hl]                                    ; $6173: $7e
    cp c                                          ; $6174: $b9
    ld a, l                                       ; $6175: $7d
    ld a, a                                       ; $6176: $7f
    and d                                         ; $6177: $a2
    ld hl, $eae8                                  ; $6178: $21 $e8 $ea
    ld h, b                                       ; $617b: $60
    db $fd                                        ; $617c: $fd
    ld e, e                                       ; $617d: $5b
    ld [hl], a                                    ; $617e: $77
    ld d, h                                       ; $617f: $54
    bit 3, c                                      ; $6180: $cb $59
    ld a, c                                       ; $6182: $79
    ret nz                                        ; $6183: $c0

    sub $6f                                       ; $6184: $d6 $6f
    xor h                                         ; $6186: $ac
    db $ed                                        ; $6187: $ed
    sub b                                         ; $6188: $90
    inc sp                                        ; $6189: $33
    rlca                                          ; $618a: $07
    inc de                                        ; $618b: $13
    ld b, d                                       ; $618c: $42
    ld h, c                                       ; $618d: $61
    cp $2d                                        ; $618e: $fe $2d
    or a                                          ; $6190: $b7
    rst $28                                       ; $6191: $ef
    ld c, a                                       ; $6192: $4f
    inc [hl]                                      ; $6193: $34
    inc b                                         ; $6194: $04
    ld e, l                                       ; $6195: $5d
    dec e                                         ; $6196: $1d
    xor h                                         ; $6197: $ac
    ld a, a                                       ; $6198: $7f
    db $eb                                        ; $6199: $eb
    adc [hl]                                      ; $619a: $8e
    ld [$3ca4], a                                 ; $619b: $ea $a4 $3c
    xor h                                         ; $619e: $ac
    inc b                                         ; $619f: $04
    ld l, $37                                     ; $61a0: $2e $37
    or [hl]                                       ; $61a2: $b6

jr_05d_61a3:
    call nz, $ae62                                ; $61a3: $c4 $62 $ae
    ld [hl], l                                    ; $61a6: $75
    jr nc, jr_05d_6157                            ; $61a7: $30 $ae

    db $ed                                        ; $61a9: $ed
    inc c                                         ; $61aa: $0c
    ld h, $f5                                     ; $61ab: $26 $f5
    rst $20                                       ; $61ad: $e7
    rst $08                                       ; $61ae: $cf
    cp $0e                                        ; $61af: $fe $0e
    ld [hl], $67                                  ; $61b1: $36 $67
    ret nz                                        ; $61b3: $c0

    inc h                                         ; $61b4: $24
    xor a                                         ; $61b5: $af

Call_05d_61b6:
    ld d, d                                       ; $61b6: $52
    ld c, b                                       ; $61b7: $48
    ld h, [hl]                                    ; $61b8: $66
    ld sp, hl                                     ; $61b9: $f9
    sbc a                                         ; $61ba: $9f
    add e                                         ; $61bb: $83
    ld l, e                                       ; $61bc: $6b
    or $82                                        ; $61bd: $f6 $82
    rst $18                                       ; $61bf: $df
    reti                                          ; $61c0: $d9


    cp $d5                                        ; $61c1: $fe $d5
    dec a                                         ; $61c3: $3d
    sub $ec                                       ; $61c4: $d6 $ec
    ld [hl], l                                    ; $61c6: $75
    rst $38                                       ; $61c7: $ff
    sbc d                                         ; $61c8: $9a
    db $fd                                        ; $61c9: $fd
    dec h                                         ; $61ca: $25
    ld l, a                                       ; $61cb: $6f
    dec h                                         ; $61cc: $25
    ld l, a                                       ; $61cd: $6f
    ld sp, hl                                     ; $61ce: $f9
    add [hl]                                      ; $61cf: $86
    ld h, l                                       ; $61d0: $65
    ld a, [c]                                     ; $61d1: $f2
    ld d, d                                       ; $61d2: $52
    ld l, [hl]                                    ; $61d3: $6e
    rrca                                          ; $61d4: $0f
    ret z                                         ; $61d5: $c8

    and d                                         ; $61d6: $a2
    ld hl, sp+$11                                 ; $61d7: $f8 $11
    adc a                                         ; $61d9: $8f
    cp c                                          ; $61da: $b9
    or c                                          ; $61db: $b1
    and l                                         ; $61dc: $a5
    or e                                          ; $61dd: $b3
    ld d, $65                                     ; $61de: $16 $65
    cp b                                          ; $61e0: $b8
    dec [hl]                                      ; $61e1: $35
    ld e, d                                       ; $61e2: $5a
    xor $7f                                       ; $61e3: $ee $7f
    ld [bc], a                                    ; $61e5: $02
    adc l                                         ; $61e6: $8d
    ld c, h                                       ; $61e7: $4c
    ld l, $cb                                     ; $61e8: $2e $cb

Jump_05d_61ea:
    ld e, e                                       ; $61ea: $5b
    ret                                           ; $61eb: $c9


    ld e, e                                       ; $61ec: $5b
    adc a                                         ; $61ed: $8f
    dec a                                         ; $61ee: $3d
    ld [hl], h                                    ; $61ef: $74
    rla                                           ; $61f0: $17
    jp c, Jump_000_2701                           ; $61f1: $da $01 $27

jr_05d_61f4:
    or h                                          ; $61f4: $b4
    ld a, e                                       ; $61f5: $7b
    ld [hl], d                                    ; $61f6: $72
    rst $00                                       ; $61f7: $c7
    dec hl                                        ; $61f8: $2b
    add hl, sp                                    ; $61f9: $39
    ldh a, [$d0]                                  ; $61fa: $f0 $d0
    ld bc, $b43f                                  ; $61fc: $01 $3f $b4
    inc bc                                        ; $61ff: $03
    rst $30                                       ; $6200: $f7
    jr c, jr_05d_6203                             ; $6201: $38 $00

jr_05d_6203:
    adc c                                         ; $6203: $89
    ret                                           ; $6204: $c9


    dec b                                         ; $6205: $05
    rst $20                                       ; $6206: $e7
    sbc h                                         ; $6207: $9c
    ld [hl], e                                    ; $6208: $73
    ld e, [hl]                                    ; $6209: $5e
    ret nc                                        ; $620a: $d0

    daa                                           ; $620b: $27
    ld [de], a                                    ; $620c: $12
    ld l, b                                       ; $620d: $68
    add [hl]                                      ; $620e: $86
    or l                                          ; $620f: $b5
    add hl, bc                                    ; $6210: $09
    ret z                                         ; $6211: $c8

    ld l, l                                       ; $6212: $6d
    sub $26                                       ; $6213: $d6 $26
    rrca                                          ; $6215: $0f
    dec hl                                        ; $6216: $2b
    add c                                         ; $6217: $81
    ld c, e                                       ; $6218: $4b
    sbc $f2                                       ; $6219: $de $f2
    cp $ce                                        ; $621b: $fe $ce
    cp c                                          ; $621d: $b9
    jp nz, Jump_000_319d                          ; $621e: $c2 $9d $31

    jr nz, jr_05d_61f4                            ; $6221: $20 $d1

    ld a, [c]                                     ; $6223: $f2
    rla                                           ; $6224: $17
    ld b, d                                       ; $6225: $42
    dec e                                         ; $6226: $1d
    ld c, l                                       ; $6227: $4d
    ld d, h                                       ; $6228: $54
    rla                                           ; $6229: $17
    nop                                           ; $622a: $00
    ld c, $7f                                     ; $622b: $0e $7f
    db $eb                                        ; $622d: $eb
    push bc                                       ; $622e: $c5
    ret                                           ; $622f: $c9


    rst $28                                       ; $6230: $ef
    or [hl]                                       ; $6231: $b6
    and a                                         ; $6232: $a7
    db $fc                                        ; $6233: $fc
    adc $d4                                       ; $6234: $ce $d4
    ei                                            ; $6236: $fb
    cp $02                                        ; $6237: $fe $02
    db $fc                                        ; $6239: $fc
    ld l, a                                       ; $623a: $6f
    add sp, -$7a                                  ; $623b: $e8 $86
    ld e, e                                       ; $623d: $5b
    adc $0b                                       ; $623e: $ce $0b
    nop                                           ; $6240: $00
    ld l, [hl]                                    ; $6241: $6e
    rst $28                                       ; $6242: $ef
    ld a, h                                       ; $6243: $7c
    scf                                           ; $6244: $37
    db $e4                                        ; $6245: $e4
    sub [hl]                                      ; $6246: $96
    di                                            ; $6247: $f3
    ld l, [hl]                                    ; $6248: $6e
    cp b                                          ; $6249: $b8
    push hl                                       ; $624a: $e5
    add d                                         ; $624b: $82
    dec de                                        ; $624c: $1b
    ld l, [hl]                                    ; $624d: $6e
    cp c                                          ; $624e: $b9
    jr z, jr_05d_6251                             ; $624f: $28 $00

jr_05d_6251:
    cp h                                          ; $6251: $bc
    sub h                                         ; $6252: $94
    ld [hl], l                                    ; $6253: $75
    db $d3                                        ; $6254: $d3
    ld c, l                                       ; $6255: $4d
    call $f255                                    ; $6256: $cd $55 $f2
    ld d, [hl]                                    ; $6259: $56
    ld a, [c]                                     ; $625a: $f2
    ld d, [hl]                                    ; $625b: $56
    ld a, [c]                                     ; $625c: $f2
    ld d, [hl]                                    ; $625d: $56
    ld [bc], a                                    ; $625e: $02
    ld c, $7f                                     ; $625f: $0e $7f
    rst $20                                       ; $6261: $e7
    ld a, h                                       ; $6262: $7c
    push hl                                       ; $6263: $e5
    rst $08                                       ; $6264: $cf
    cp [hl]                                       ; $6265: $be
    ld a, e                                       ; $6266: $7b
    ld e, h                                       ; $6267: $5c
    ld a, [c]                                     ; $6268: $f2
    sub [hl]                                      ; $6269: $96

Jump_05d_626a:
    rla                                           ; $626a: $17
    ld e, c                                       ; $626b: $59
    cp $fd                                        ; $626c: $fe $fd
    ld e, a                                       ; $626e: $5f
    inc de                                        ; $626f: $13
    and c                                         ; $6270: $a1
    nop                                           ; $6271: $00
    ld e, [hl]                                    ; $6272: $5e
    cp d                                          ; $6273: $ba
    pop hl                                        ; $6274: $e1
    sub [hl]                                      ; $6275: $96
    di                                            ; $6276: $f3
    ld a, [c]                                     ; $6277: $f2
    jp z, $b70d                                   ; $6278: $ca $0d $b7

    ld e, h                                       ; $627b: $5c
    stop                                          ; $627c: $10 $00
    db $fc                                        ; $627e: $fc
    ld [hl], h                                    ; $627f: $74
    sub e                                         ; $6280: $93
    sbc [hl]                                      ; $6281: $9e
    call $8439                                    ; $6282: $cd $39 $84
    and l                                         ; $6285: $a5
    inc sp                                        ; $6286: $33
    and $76                                       ; $6287: $e6 $76
    rrca                                          ; $6289: $0f
    ld l, [hl]                                    ; $628a: $6e
    nop                                           ; $628b: $00
    cp h                                          ; $628c: $bc
    sub h                                         ; $628d: $94
    dec [hl]                                      ; $628e: $35
    cp c                                          ; $628f: $b9
    ld bc, $ce00                                  ; $6290: $01 $00 $ce
    dec sp                                        ; $6293: $3b
    dec h                                         ; $6294: $25
    or a                                          ; $6295: $b7
    sbc h                                         ; $6296: $9c
    rla                                           ; $6297: $17
    nop                                           ; $6298: $00
    ld l, $38                                     ; $6299: $2e $38
    dec h                                         ; $629b: $25
    or a                                          ; $629c: $b7
    sbc h                                         ; $629d: $9c
    rla                                           ; $629e: $17
    nop                                           ; $629f: $00
    ld l, $3a                                     ; $62a0: $2e $3a
    dec h                                         ; $62a2: $25
    or a                                          ; $62a3: $b7
    sbc h                                         ; $62a4: $9c
    rla                                           ; $62a5: $17
    nop                                           ; $62a6: $00
    ld l, $39                                     ; $62a7: $2e $39
    dec h                                         ; $62a9: $25
    or a                                          ; $62aa: $b7
    sbc h                                         ; $62ab: $9c
    rla                                           ; $62ac: $17
    nop                                           ; $62ad: $00
    db $fc                                        ; $62ae: $fc
    ld de, $006e                                  ; $62af: $11 $6e $00
    ret nc                                        ; $62b2: $d0

    dec l                                         ; $62b3: $2d
    inc a                                         ; $62b4: $3c
    and c                                         ; $62b5: $a1

Jump_05d_62b6:
    ld a, h                                       ; $62b6: $7c
    db $e3                                        ; $62b7: $e3
    sub b                                         ; $62b8: $90
    ret nc                                        ; $62b9: $d0

    rst $30                                       ; $62ba: $f7
    or a                                          ; $62bb: $b7
    ld b, [hl]                                    ; $62bc: $46
    xor e                                         ; $62bd: $ab
    xor c                                         ; $62be: $a9
    ld c, c                                       ; $62bf: $49
    inc l                                         ; $62c0: $2c
    inc l                                         ; $62c1: $2c
    db $fc                                        ; $62c2: $fc
    ld e, [hl]                                    ; $62c3: $5e
    ld [c], a                                     ; $62c4: $e2
    ld b, $bc                                     ; $62c5: $06 $bc
    jr c, jr_05d_62da                             ; $62c7: $38 $11

    xor e                                         ; $62c9: $ab
    ld a, a                                       ; $62ca: $7f
    dec sp                                        ; $62cb: $3b
    ld a, [$e152]                                 ; $62cc: $fa $52 $e1
    ld b, d                                       ; $62cf: $42
    cp [hl]                                       ; $62d0: $be
    and $05                                       ; $62d1: $e6 $05
    nop                                           ; $62d3: $00
    cp h                                          ; $62d4: $bc
    jp $b67f                                      ; $62d5: $c3 $7f $b6


    dec d                                         ; $62d8: $15
    and l                                         ; $62d9: $a5

jr_05d_62da:
    jp nz, Jump_05d_7c85                          ; $62da: $c2 $85 $7c

    call $deef                                    ; $62dd: $cd $ef $de
    di                                            ; $62e0: $f3
    nop                                           ; $62e1: $00
    ld a, h                                       ; $62e2: $7c
    ld h, c                                       ; $62e3: $61
    or [hl]                                       ; $62e4: $b6
    dec [hl]                                      ; $62e5: $35
    or a                                          ; $62e6: $b7
    and d                                         ; $62e7: $a2
    ld d, h                                       ; $62e8: $54
    cp b                                          ; $62e9: $b8
    db $fd                                        ; $62ea: $fd
    di                                            ; $62eb: $f3
    cp e                                          ; $62ec: $bb
    rst $30                                       ; $62ed: $f7
    inc a                                         ; $62ee: $3c
    nop                                           ; $62ef: $00
    inc a                                         ; $62f0: $3c
    add sp, -$39                                  ; $62f1: $e8 $c7
    ld d, [hl]                                    ; $62f3: $56
    sub h                                         ; $62f4: $94
    ld a, [bc]                                    ; $62f5: $0a
    rla                                           ; $62f6: $17
    ld a, [c]                                     ; $62f7: $f2
    dec [hl]                                      ; $62f8: $35
    cp a                                          ; $62f9: $bf
    ld a, e                                       ; $62fa: $7b
    rst $08                                       ; $62fb: $cf
    inc bc                                        ; $62fc: $03
    ld e, $b6                                     ; $62fd: $1e $b6
    ld b, l                                       ; $62ff: $45
    ld c, d                                       ; $6300: $4a
    rst $30                                       ; $6301: $f7
    dec e                                         ; $6302: $1d
    push de                                       ; $6303: $d5
    sub h                                         ; $6304: $94
    sub e                                         ; $6305: $93
    ld a, [bc]                                    ; $6306: $0a
    rla                                           ; $6307: $17
    ld a, [c]                                     ; $6308: $f2
    dec [hl]                                      ; $6309: $35
    cp a                                          ; $630a: $bf
    ld a, e                                       ; $630b: $7b
    rst $08                                       ; $630c: $cf
    inc bc                                        ; $630d: $03
    sbc h                                         ; $630e: $9c
    inc bc                                        ; $630f: $03
    rst $08                                       ; $6310: $cf
    ld e, $f8                                     ; $6311: $1e $f8
    rra                                           ; $6313: $1f
    nop                                           ; $6314: $00
    sbc [hl]                                      ; $6315: $9e
    ld c, l                                       ; $6316: $4d
    xor h                                         ; $6317: $ac
    db $f4                                        ; $6318: $f4
    cp e                                          ; $6319: $bb
    rst $00                                       ; $631a: $c7
    inc bc                                        ; $631b: $03
    cp h                                          ; $631c: $bc
    ld h, e                                       ; $631d: $63
    di                                            ; $631e: $f3
    rst $28                                       ; $631f: $ef
    ld e, $f0                                     ; $6320: $1e $f0
    xor e                                         ; $6322: $ab
    ld [hl], b                                    ; $6323: $70

jr_05d_6324:
    ld c, [hl]                                    ; $6324: $4e
    or h                                          ; $6325: $b4
    ld a, l                                       ; $6326: $7d
    nop                                           ; $6327: $00
    ld a, h                                       ; $6328: $7c
    inc [hl]                                      ; $6329: $34
    rst $30                                       ; $632a: $f7
    adc [hl]                                      ; $632b: $8e
    ld h, l                                       ; $632c: $65
    ld a, a                                       ; $632d: $7f
    rst $28                                       ; $632e: $ef
    inc bc                                        ; $632f: $03
    cp h                                          ; $6330: $bc
    cp b                                          ; $6331: $b8
    ld l, h                                       ; $6332: $6c
    ld h, b                                       ; $6333: $60
    adc d                                         ; $6334: $8a
    rrca                                          ; $6335: $0f
    nop                                           ; $6336: $00
    ld l, [hl]                                    ; $6337: $6e
    rra                                           ; $6338: $1f
    ld [hl], $46                                  ; $6339: $36 $46
    db $fd                                        ; $633b: $fd
    inc bc                                        ; $633c: $03
    xor $20                                       ; $633d: $ee $20
    sbc $76                                       ; $633f: $de $76
    cp [hl]                                       ; $6341: $be
    ld [de], a                                    ; $6342: $12

jr_05d_6343:
    jp c, Jump_05d_7d52                           ; $6343: $da $52 $7d

    ld a, [hl-]                                   ; $6346: $3a
    rra                                           ; $6347: $1f
    nop                                           ; $6348: $00
    ld c, $77                                     ; $6349: $0e $77
    rst $20                                       ; $634b: $e7
    ld e, h                                       ; $634c: $5c
    db $db                                        ; $634d: $db
    cpl                                           ; $634e: $2f
    ld sp, hl                                     ; $634f: $f9
    cp e                                          ; $6350: $bb
    ld [hl], e                                    ; $6351: $73
    ld b, $4c                                     ; $6352: $06 $4c
    nop                                           ; $6354: $00
    ld a, h                                       ; $6355: $7c
    jp $e63a                                      ; $6356: $c3 $3a $e6


    sbc a                                         ; $6359: $9f
    rst $30                                       ; $635a: $f7
    rst $00                                       ; $635b: $c7
    ret                                           ; $635c: $c9


    add e                                         ; $635d: $83
    db $ed                                        ; $635e: $ed
    inc bc                                        ; $635f: $03
    cp h                                          ; $6360: $bc
    add sp, -$05                                  ; $6361: $e8 $fb
    ccf                                           ; $6363: $3f
    rlca                                          ; $6364: $07
    or d                                          ; $6365: $b2
    db $fd                                        ; $6366: $fd
    or l                                          ; $6367: $b5
    jr z, jr_05d_6343                             ; $6368: $28 $d9

    sbc [hl]                                      ; $636a: $9e
    sbc e                                         ; $636b: $9b
    nop                                           ; $636c: $00
    cp h                                          ; $636d: $bc
    ccf                                           ; $636e: $3f
    ld l, l                                       ; $636f: $6d
    db $ed                                        ; $6370: $ed

jr_05d_6371:
    ld e, c                                       ; $6371: $59
    cp [hl]                                       ; $6372: $be
    ld d, $25                                     ; $6373: $16 $25
    ld a, e                                       ; $6375: $7b
    sub [hl]                                      ; $6376: $96
    cpl                                           ; $6377: $2f
    nop                                           ; $6378: $00
    cp h                                          ; $6379: $bc
    ld b, h                                       ; $637a: $44
    db $ec                                        ; $637b: $ec
    adc [hl]                                      ; $637c: $8e
    jr z, jr_05d_6324                             ; $637d: $28 $a5

    ld a, a                                       ; $637f: $7f
    rst $18                                       ; $6380: $df
    ld l, a                                       ; $6381: $6f
    nop                                           ; $6382: $00
    xor $84                                       ; $6383: $ee $84
    pop hl                                        ; $6385: $e1
    ccf                                           ; $6386: $3f
    db $db                                        ; $6387: $db
    cp c                                          ; $6388: $b9
    ld sp, hl                                     ; $6389: $f9
    ld [bc], a                                    ; $638a: $02
    inc a                                         ; $638b: $3c
    add sp, -$39                                  ; $638c: $e8 $c7
    ld d, [hl]                                    ; $638e: $56
    sub h                                         ; $638f: $94
    or d                                          ; $6390: $b2
    ld l, c                                       ; $6391: $69
    ld l, e                                       ; $6392: $6b
    rst $08                                       ; $6393: $cf
    ld a, [c]                                     ; $6394: $f2
    or l                                          ; $6395: $b5
    jr z, jr_05d_6371                             ; $6396: $28 $d9

    or e                                          ; $6398: $b3
    ld a, h                                       ; $6399: $7c
    ld bc, $6fbc                                  ; $639a: $01 $bc $6f
    ld sp, hl                                     ; $639d: $f9
    ld a, $b3                                     ; $639e: $3e $b3
    xor b                                         ; $63a0: $a8
    sbc l                                         ; $63a1: $9d
    ld [hl], e                                    ; $63a2: $73
    ld bc, $4f6e                                  ; $63a3: $01 $6e $4f
    xor h                                         ; $63a6: $ac
    sbc l                                         ; $63a7: $9d
    db $e3                                        ; $63a8: $e3
    ld b, $9e                                     ; $63a9: $06 $9e
    cp a                                          ; $63ab: $bf
    push af                                       ; $63ac: $f5
    rra                                           ; $63ad: $1f
    and d                                         ; $63ae: $a2
    add hl, de                                    ; $63af: $19
    nop                                           ; $63b0: $00
    inc a                                         ; $63b1: $3c
    pop de                                        ; $63b2: $d1
    db $eb                                        ; $63b3: $eb
    scf                                           ; $63b4: $37
    ld a, [$c0ce]                                 ; $63b5: $fa $ce $c0
    inc bc                                        ; $63b8: $03
    rst $28                                       ; $63b9: $ef
    rlca                                          ; $63ba: $07
    ret nc                                        ; $63bb: $d0

    ld h, l                                       ; $63bc: $65
    ld a, e                                       ; $63bd: $7b
    ld b, $ce                                     ; $63be: $06 $ce
    ld sp, hl                                     ; $63c0: $f9
    ld e, e                                       ; $63c1: $5b
    ld d, c                                       ; $63c2: $51
    ld [c], a                                     ; $63c3: $e2
    adc c                                         ; $63c4: $89
    ld e, [hl]                                    ; $63c5: $5e
    cp a                                          ; $63c6: $bf
    pop de                                        ; $63c7: $d1
    ld [hl], a                                    ; $63c8: $77
    ld b, $1e                                     ; $63c9: $06 $1e
    ld a, b                                       ; $63cb: $78
    ccf                                           ; $63cc: $3f
    nop                                           ; $63cd: $00
    sbc [hl]                                      ; $63ce: $9e
    ld l, a                                       ; $63cf: $6f
    rst $38                                       ; $63d0: $ff
    cp l                                          ; $63d1: $bd
    dec [hl]                                      ; $63d2: $35
    call z, Call_05d_7819                         ; $63d3: $cc $19 $78
    ldh [$fd], a                                  ; $63d6: $e0 $fd
    nop                                           ; $63d8: $00
    sbc [hl]                                      ; $63d9: $9e
    xor $9c                                       ; $63da: $ee $9c
    rst $08                                       ; $63dc: $cf
    ld b, $a6                                     ; $63dd: $06 $a6
    add sp, $4c                                   ; $63df: $e8 $4c
    db $dd                                        ; $63e1: $dd
    add hl, de                                    ; $63e2: $19
    sbc e                                         ; $63e3: $9b
    inc sp                                        ; $63e4: $33
    add e                                         ; $63e5: $83
    rlca                                          ; $63e6: $07
    sbc $0f                                       ; $63e7: $de $0f
    nop                                           ; $63e9: $00
    ld c, $d7                                     ; $63ea: $0e $d7
    rst $30                                       ; $63ec: $f7
    rlca                                          ; $63ed: $07
    ld e, e                                       ; $63ee: $5b
    ld a, b                                       ; $63ef: $78
    ldh [$fd], a                                  ; $63f0: $e0 $fd
    nop                                           ; $63f2: $00
    ret nc                                        ; $63f3: $d0

    ld h, l                                       ; $63f4: $65
    ld a, e                                       ; $63f5: $7b
    ld l, $f9                                     ; $63f6: $2e $f9
    db $eb                                        ; $63f8: $eb
    ei                                            ; $63f9: $fb
    add e                                         ; $63fa: $83
    dec l                                         ; $63fb: $2d
    inc a                                         ; $63fc: $3c
    ldh a, [$7e]                                  ; $63fd: $f0 $7e
    nop                                           ; $63ff: $00
    cp h                                          ; $6400: $bc
    sub h                                         ; $6401: $94
    dec [hl]                                      ; $6402: $35
    ld bc, $c8bc                                  ; $6403: $01 $bc $c8
    ld a, d                                       ; $6406: $7a
    ld c, e                                       ; $6407: $4b
    dec [hl]                                      ; $6408: $35
    xor $60                                       ; $6409: $ee $60
    add sp, -$7a                                  ; $640b: $e8 $86
    call c, Call_05d_5e72                         ; $640d: $dc $72 $5e
    nop                                           ; $6410: $00
    sbc [hl]                                      ; $6411: $9e
    rst $38                                       ; $6412: $ff
    reti                                          ; $6413: $d9


    or [hl]                                       ; $6414: $b6
    ret nc                                        ; $6415: $d0

    ld b, h                                       ; $6416: $44
    sub $bd                                       ; $6417: $d6 $bd
    nop                                           ; $6419: $00
    sbc [hl]                                      ; $641a: $9e
    rst $38                                       ; $641b: $ff
    and [hl]                                      ; $641c: $a6
    sub b                                         ; $641d: $90
    rlca                                          ; $641e: $07
    ld c, $71                                     ; $641f: $0e $71
    xor l                                         ; $6421: $ad
    rlca                                          ; $6422: $07
    nop                                           ; $6423: $00
    sbc [hl]                                      ; $6424: $9e
    rst $38                                       ; $6425: $ff
    cp c                                          ; $6426: $b9
    ld [hl], a                                    ; $6427: $77
    db $eb                                        ; $6428: $eb
    sub l                                         ; $6429: $95
    rst $38                                       ; $642a: $ff
    and [hl]                                      ; $642b: $a6
    db $fd                                        ; $642c: $fd
    rst $30                                       ; $642d: $f7
    ld a, a                                       ; $642e: $7f
    ld [hl], c                                    ; $642f: $71
    inc bc                                        ; $6430: $03
    inc e                                         ; $6431: $1c
    db $10                                        ; $6432: $10
    db $ec                                        ; $6433: $ec
    add sp, -$01                                  ; $6434: $e8 $ff
    ld d, d                                       ; $6436: $52
    db $e3                                        ; $6437: $e3
    ld e, d                                       ; $6438: $5a
    cp a                                          ; $6439: $bf
    db $fc                                        ; $643a: $fc
    jr c, @+$01                                   ; $643b: $38 $ff

    ldh a, [rIE]                                  ; $643d: $f0 $ff
    dec h                                         ; $643f: $25
    rst $08                                       ; $6440: $cf
    ld [hl], c                                    ; $6441: $71
    ld e, e                                       ; $6442: $5b
    ld a, [hl]                                    ; $6443: $7e
    or b                                          ; $6444: $b0
    ld sp, $ffba                                  ; $6445: $31 $ba $ff
    sub l                                         ; $6448: $95
    rst $38                                       ; $6449: $ff
    and [hl]                                      ; $644a: $a6
    db $10                                        ; $644b: $10
    inc l                                         ; $644c: $2c
    ld sp, hl                                     ; $644d: $f9
    cp a                                          ; $644e: $bf
    push af                                       ; $644f: $f5
    rst $30                                       ; $6450: $f7
    sbc a                                         ; $6451: $9f
    di                                            ; $6452: $f3
    ld [hl], d                                    ; $6453: $72
    rst $00                                       ; $6454: $c7
    sbc c                                         ; $6455: $99
    ld a, d                                       ; $6456: $7a
    rst $18                                       ; $6457: $df
    rst $18                                       ; $6458: $df
    cp a                                          ; $6459: $bf
    nop                                           ; $645a: $00
    sbc [hl]                                      ; $645b: $9e
    rst $38                                       ; $645c: $ff
    and [hl]                                      ; $645d: $a6
    adc l                                         ; $645e: $8d
    ld a, [c]                                     ; $645f: $f2
    add e                                         ; $6460: $83
    adc l                                         ; $6461: $8d
    pop de                                        ; $6462: $d1
    pop de                                        ; $6463: $d1
    dec a                                         ; $6464: $3d
    cp b                                          ; $6465: $b8
    ld bc, $ff9e                                  ; $6466: $01 $9e $ff
    and [hl]                                      ; $6469: $a6
    adc l                                         ; $646a: $8d
    or d                                          ; $646b: $b2
    add c                                         ; $646c: $81
    ld l, h                                       ; $646d: $6c
    dec sp                                        ; $646e: $3b
    cp d                                          ; $646f: $ba
    rlca                                          ; $6470: $07
    scf                                           ; $6471: $37
    nop                                           ; $6472: $00
    ret nc                                        ; $6473: $d0

    xor l                                         ; $6474: $ad
    inc e                                         ; $6475: $1c
    ld d, a                                       ; $6476: $57
    ret c                                         ; $6477: $d8

    db $fd                                        ; $6478: $fd
    xor a                                         ; $6479: $af
    xor b                                         ; $647a: $a8
    cp b                                          ; $647b: $b8
    ld a, l                                       ; $647c: $7d
    ld [hl+], a                                   ; $647d: $22
    ld c, l                                       ; $647e: $4d
    ld h, h                                       ; $647f: $64
    db $dd                                        ; $6480: $dd
    ld bc, $527f                                  ; $6481: $01 $7f $52
    inc de                                        ; $6484: $13
    ld l, l                                       ; $6485: $6d
    cp [hl]                                       ; $6486: $be
    ld h, $b2                                     ; $6487: $26 $b2
    xor $cd                                       ; $6489: $ee $cd
    scf                                           ; $648b: $37
    sbc l                                         ; $648c: $9d
    ld l, b                                       ; $648d: $68
    dec hl                                        ; $648e: $2b
    inc l                                         ; $648f: $2c
    dec [hl]                                      ; $6490: $35
    ld h, l                                       ; $6491: $65
    ld d, l                                       ; $6492: $55
    call nz, Call_000_000d                        ; $6493: $c4 $0d $00
    inc e                                         ; $6496: $1c
    daa                                           ; $6497: $27
    ld e, d                                       ; $6498: $5a
    add a                                         ; $6499: $87
    dec hl                                        ; $649a: $2b
    ld l, e                                       ; $649b: $6b
    xor d                                         ; $649c: $aa
    xor h                                         ; $649d: $ac
    push hl                                       ; $649e: $e5
    inc b                                         ; $649f: $04
    rst $28                                       ; $64a0: $ef
    jr jr_05d_650a                                ; $64a1: $18 $67

    xor h                                         ; $64a3: $ac
    db $ed                                        ; $64a4: $ed
    xor e                                         ; $64a5: $ab
    ld [hl], b                                    ; $64a6: $70
    ld a, e                                       ; $64a7: $7b
    ld e, a                                       ; $64a8: $5f
    ldh a, [$2b]                                  ; $64a9: $f0 $2b
    adc a                                         ; $64ab: $8f
    sub e                                         ; $64ac: $93
    ld [hl+], a                                   ; $64ad: $22
    db $fc                                        ; $64ae: $fc
    ld c, [hl]                                    ; $64af: $4e
    ret z                                         ; $64b0: $c8

    sbc c                                         ; $64b1: $99
    adc c                                         ; $64b2: $89
    xor h                                         ; $64b3: $ac
    or a                                          ; $64b4: $b7
    cp b                                          ; $64b5: $b8
    ld bc, $bf9c                                  ; $64b6: $01 $9c $bf
    dec l                                         ; $64b9: $2d
    ld c, a                                       ; $64ba: $4f
    ld sp, $719d                                  ; $64bb: $31 $9d $71
    halt                                          ; $64be: $76
    ld c, [hl]                                    ; $64bf: $4e
    db $f4                                        ; $64c0: $f4
    ld a, a                                       ; $64c1: $7f
    ld a, [hl]                                    ; $64c2: $7e
    ld [hl], c                                    ; $64c3: $71
    inc bc                                        ; $64c4: $03
    sbc h                                         ; $64c5: $9c
    cp a                                          ; $64c6: $bf
    dec l                                         ; $64c7: $2d
    add a                                         ; $64c8: $87
    ld h, e                                       ; $64c9: $63
    ret c                                         ; $64ca: $d8

    inc e                                         ; $64cb: $1c
    cp $48                                        ; $64cc: $fe $48
    sbc l                                         ; $64ce: $9d
    pop af                                        ; $64cf: $f1
    ld a, a                                       ; $64d0: $7f
    ld a, [hl]                                    ; $64d1: $7e
    ld [hl], c                                    ; $64d2: $71
    inc bc                                        ; $64d3: $03
    sbc h                                         ; $64d4: $9c
    cp a                                          ; $64d5: $bf
    dec l                                         ; $64d6: $2d
    ld e, [hl]                                    ; $64d7: $5e
    ld h, h                                       ; $64d8: $64
    cp $d6                                        ; $64d9: $fe $d6
    call z, $d6ca                                 ; $64db: $cc $ca $d6
    rst $38                                       ; $64de: $ff
    ld sp, hl                                     ; $64df: $f9
    push bc                                       ; $64e0: $c5
    dec c                                         ; $64e1: $0d
    nop                                           ; $64e2: $00
    sbc h                                         ; $64e3: $9c
    cp a                                          ; $64e4: $bf
    dec l                                         ; $64e5: $2d
    adc a                                         ; $64e6: $8f
    rst $00                                       ; $64e7: $c7
    and [hl]                                      ; $64e8: $a6
    ld h, e                                       ; $64e9: $63
    dec hl                                        ; $64ea: $2b
    jp z, $ff19                                   ; $64eb: $ca $19 $ff

    rst $20                                       ; $64ee: $e7
    rla                                           ; $64ef: $17
    scf                                           ; $64f0: $37
    nop                                           ; $64f1: $00
    ret nc                                        ; $64f2: $d0

    dec l                                         ; $64f3: $2d
    inc a                                         ; $64f4: $3c
    and c                                         ; $64f5: $a1
    ld a, h                                       ; $64f6: $7c
    db $e3                                        ; $64f7: $e3
    sub b                                         ; $64f8: $90
    ld a, $ff                                     ; $64f9: $3e $ff
    xor d                                         ; $64fb: $aa
    pop de                                        ; $64fc: $d1
    ld l, d                                       ; $64fd: $6a
    ld l, d                                       ; $64fe: $6a
    sub d                                         ; $64ff: $92
    rra                                           ; $6500: $1f
    ld h, a                                       ; $6501: $67
    adc c                                         ; $6502: $89
    dec de                                        ; $6503: $1b
    nop                                           ; $6504: $00
    inc e                                         ; $6505: $1c
    db $fd                                        ; $6506: $fd
    sbc d                                         ; $6507: $9a
    cp e                                          ; $6508: $bb
    ld d, l                                       ; $6509: $55

jr_05d_650a:
    dec hl                                        ; $650a: $2b
    rst $30                                       ; $650b: $f7
    ret c                                         ; $650c: $d8

    daa                                           ; $650d: $27
    add b                                         ; $650e: $80
    add d                                         ; $650f: $82
    ld e, a                                       ; $6510: $5f
    jp hl                                         ; $6511: $e9


    add a                                         ; $6512: $87
    ld a, [$afe7]                                 ; $6513: $fa $e7 $af
    ld l, l                                       ; $6516: $6d
    ret                                           ; $6517: $c9


    ld b, c                                       ; $6518: $41
    db $e4                                        ; $6519: $e4
    ld a, e                                       ; $651a: $7b
    ld c, [hl]                                    ; $651b: $4e
    sub h                                         ; $651c: $94
    xor $b1                                       ; $651d: $ee $b1
    sub $eb                                       ; $651f: $d6 $eb
    rst $38                                       ; $6521: $ff
    add hl, sp                                    ; $6522: $39
    ret z                                         ; $6523: $c8

    dec c                                         ; $6524: $0d
    nop                                           ; $6525: $00
    ld c, $90                                     ; $6526: $0e $90
    ld a, c                                       ; $6528: $79
    rra                                           ; $6529: $1f
    xor h                                         ; $652a: $ac
    add l                                         ; $652b: $85
    and l                                         ; $652c: $a5
    ld sp, hl                                     ; $652d: $f9
    db $ec                                        ; $652e: $ec
    xor e                                         ; $652f: $ab
    ld b, [hl]                                    ; $6530: $46
    ld [hl], e                                    ; $6531: $73
    adc e                                         ; $6532: $8b
    and e                                         ; $6533: $a3
    ld e, a                                       ; $6534: $5f
    ld d, $9a                                     ; $6535: $16 $9a
    cp e                                          ; $6537: $bb
    ld d, l                                       ; $6538: $55
    ld a, e                                       ; $6539: $7b
    ld bc, $731e                                  ; $653a: $01 $1e $73
    ld h, l                                       ; $653d: $65
    db $10                                        ; $653e: $10
    ld [de], a                                    ; $653f: $12
    xor $8c                                       ; $6540: $ee $8c
    rst $10                                       ; $6542: $d7
    rst $20                                       ; $6543: $e7
    cp a                                          ; $6544: $bf
    dec h                                         ; $6545: $25
    ld hl, sp-$0b                                 ; $6546: $f8 $f5
    ld sp, hl                                     ; $6548: $f9
    cp a                                          ; $6549: $bf
    jr nc, jr_05d_65ab                            ; $654a: $30 $5f

    ld l, [hl]                                    ; $654c: $6e
    nop                                           ; $654d: $00
    cp h                                          ; $654e: $bc
    jr c, jr_05d_65b4                             ; $654f: $38 $63

    ld c, a                                       ; $6551: $4f
    inc h                                         ; $6552: $24
    ld h, l                                       ; $6553: $65
    rst $38                                       ; $6554: $ff
    dec a                                         ; $6555: $3d
    ld d, c                                       ; $6556: $51
    ld a, $d7                                     ; $6557: $3e $d7
    add hl, sp                                    ; $6559: $39
    ld e, h                                       ; $655a: $5c
    and l                                         ; $655b: $a5
    cp c                                          ; $655c: $b9
    ld e, e                                       ; $655d: $5b
    or l                                          ; $655e: $b5
    call c, $9c00                                 ; $655f: $dc $00 $9c
    ld sp, $bfd8                                  ; $6562: $31 $d8 $bf
    inc a                                         ; $6565: $3c
    ld e, [hl]                                    ; $6566: $5e
    ccf                                           ; $6567: $3f
    ld a, d                                       ; $6568: $7a
    ld a, e                                       ; $6569: $7b
    ld c, e                                       ; $656a: $4b
    ld a, [hl]                                    ; $656b: $7e

Jump_05d_656c:
    jr nc, jr_05d_65a0                            ; $656c: $30 $32

    inc hl                                        ; $656e: $23
    ld l, [hl]                                    ; $656f: $6e
    nop                                           ; $6570: $00
    sbc h                                         ; $6571: $9c
    ld sp, $fb71                                  ; $6572: $31 $71 $fb
    add l                                         ; $6575: $85
    dec sp                                        ; $6576: $3b
    db $e3                                        ; $6577: $e3
    dec b                                         ; $6578: $05
    rrca                                          ; $6579: $0f
    cp h                                          ; $657a: $bc
    sbc a                                         ; $657b: $9f
    dec de                                        ; $657c: $1b
    nop                                           ; $657d: $00
    cp h                                          ; $657e: $bc
    ld h, e                                       ; $657f: $63
    sbc h                                         ; $6580: $9c
    or c                                          ; $6581: $b1
    or [hl]                                       ; $6582: $b6
    xor a                                         ; $6583: $af
    jp nz, Jump_05d_7ded                          ; $6584: $c2 $ed $7d

    pop bc                                        ; $6587: $c1
    xor a                                         ; $6588: $af
    inc a                                         ; $6589: $3c
    ld c, [hl]                                    ; $658a: $4e
    adc d                                         ; $658b: $8a
    ldh a, [$cb]                                  ; $658c: $f0 $cb
    sbc c                                         ; $658e: $99
    ld a, e                                       ; $658f: $7b
    xor h                                         ; $6590: $ac
    push af                                       ; $6591: $f5
    ld a, [$9671]                                 ; $6592: $fa $71 $96
    dec de                                        ; $6595: $1b
    nop                                           ; $6596: $00
    ld c, $89                                     ; $6597: $0e $89
    ld l, h                                       ; $6599: $6c
    ld e, e                                       ; $659a: $5b
    ld d, $83                                     ; $659b: $16 $83
    db $fd                                        ; $659d: $fd
    rst $20                                       ; $659e: $e7
    ld a, a                                       ; $659f: $7f

jr_05d_65a0:
    ld c, [hl]                                    ; $65a0: $4e
    xor b                                         ; $65a1: $a8
    rst $18                                       ; $65a2: $df
    ldh a, [$9c]                                  ; $65a3: $f0 $9c
    ldh [rTMA], a                                 ; $65a5: $e0 $06
    ld c, $89                                     ; $65a7: $0e $89
    ld l, h                                       ; $65a9: $6c
    ld e, e                                       ; $65aa: $5b

jr_05d_65ab:
    ld h, e                                       ; $65ab: $63
    ld b, b                                       ; $65ac: $40
    ld [c], a                                     ; $65ad: $e2
    sbc h                                         ; $65ae: $9c
    ret nc                                        ; $65af: $d0

    pop bc                                        ; $65b0: $c1
    ld l, l                                       ; $65b1: $6d
    dec de                                        ; $65b2: $1b
    db $fd                                        ; $65b3: $fd

jr_05d_65b4:
    add [hl]                                      ; $65b4: $86
    rst $20                                       ; $65b5: $e7
    inc b                                         ; $65b6: $04
    scf                                           ; $65b7: $37
    nop                                           ; $65b8: $00
    sbc [hl]                                      ; $65b9: $9e
    db $e3                                        ; $65ba: $e3
    sbc $3f                                       ; $65bb: $de $3f
    rst $20                                       ; $65bd: $e7
    jr jr_05d_65e6                                ; $65be: $18 $26

    and a                                         ; $65c0: $a7
    db $dd                                        ; $65c1: $dd
    ld [hl], d                                    ; $65c2: $72
    ld e, [hl]                                    ; $65c3: $5e
    nop                                           ; $65c4: $00
    ld c, $07                                     ; $65c5: $0e $07
    sbc [hl]                                      ; $65c7: $9e
    ld h, c                                       ; $65c8: $61
    dec a                                         ; $65c9: $3d
    ld c, h                                       ; $65ca: $4c
    ld c, [hl]                                    ; $65cb: $4e
    cp e                                          ; $65cc: $bb
    push hl                                       ; $65cd: $e5
    cp h                                          ; $65ce: $bc
    nop                                           ; $65cf: $00
    db $fc                                        ; $65d0: $fc
    cp a                                          ; $65d1: $bf
    di                                            ; $65d2: $f3
    ld [hl], e                                    ; $65d3: $73
    call c, $e5fb                                 ; $65d4: $dc $fb $e5
    or h                                          ; $65d7: $b4
    ld e, e                                       ; $65d8: $5b
    adc $0b                                       ; $65d9: $ce $0b
    nop                                           ; $65db: $00
    db $fc                                        ; $65dc: $fc
    cp a                                          ; $65dd: $bf
    di                                            ; $65de: $f3
    db $fd                                        ; $65df: $fd
    add c                                         ; $65e0: $81
    rst $20                                       ; $65e1: $e7
    sub d                                         ; $65e2: $92
    db $d3                                        ; $65e3: $d3
    ld l, [hl]                                    ; $65e4: $6e
    add hl, sp                                    ; $65e5: $39

jr_05d_65e6:
    cpl                                           ; $65e6: $2f
    nop                                           ; $65e7: $00
    cp h                                          ; $65e8: $bc
    pop de                                        ; $65e9: $d1
    dec e                                         ; $65ea: $1d
    inc l                                         ; $65eb: $2c
    bit 1, h                                      ; $65ec: $cb $4c
    ld c, [hl]                                    ; $65ee: $4e
    cp e                                          ; $65ef: $bb
    push hl                                       ; $65f0: $e5
    cp h                                          ; $65f1: $bc
    nop                                           ; $65f2: $00
    cp h                                          ; $65f3: $bc
    and e                                         ; $65f4: $a3
    ld a, [de]                                    ; $65f5: $1a
    push hl                                       ; $65f6: $e5
    or h                                          ; $65f7: $b4
    ld e, e                                       ; $65f8: $5b
    adc $0b                                       ; $65f9: $ce $0b
    nop                                           ; $65fb: $00
    sbc h                                         ; $65fc: $9c
    and c                                         ; $65fd: $a1
    ei                                            ; $65fe: $fb
    rst $10                                       ; $65ff: $d7
    ld a, d                                       ; $6600: $7a
    inc c                                         ; $6601: $0c
    and l                                         ; $6602: $a5
    ld e, c                                       ; $6603: $59
    ld c, [hl]                                    ; $6604: $4e
    and a                                         ; $6605: $a7
    ld c, c                                       ; $6606: $49
    ldh a, [$cb]                                  ; $6607: $f0 $cb
    ld [hl], $ce                                  ; $6609: $36 $ce
    ld hl, $6961                                  ; $660b: $21 $61 $69
    ld [hl+], a                                   ; $660e: $22
    db $eb                                        ; $660f: $eb
    ld e, [hl]                                    ; $6610: $5e
    ld l, [hl]                                    ; $6611: $6e
    nop                                           ; $6612: $00
    db $fc                                        ; $6613: $fc
    ld h, h                                       ; $6614: $64
    ld b, [hl]                                    ; $6615: $46
    jp nz, Jump_000_3dd2                          ; $6616: $c2 $d2 $3d

    sub $7a                                       ; $6619: $d6 $7a
    db $fd                                        ; $661b: $fd
    ccf                                           ; $661c: $3f
    rlca                                          ; $661d: $07
    ld l, l                                       ; $661e: $6d
    sub e                                         ; $661f: $93
    ld [hl], d                                    ; $6620: $72
    db $10                                        ; $6621: $10
    ld sp, hl                                     ; $6622: $f9
    sbc [hl]                                      ; $6623: $9e
    inc de                                        ; $6624: $13
    rla                                           ; $6625: $17
    nop                                           ; $6626: $00
    ld c, $17                                     ; $6627: $0e $17
    ld b, d                                       ; $6629: $42
    or d                                          ; $662a: $b2
    dec l                                         ; $662b: $2d
    sub d                                         ; $662c: $92
    add l                                         ; $662d: $85
    ld a, [c]                                     ; $662e: $f2
    rst $18                                       ; $662f: $df
    cp d                                          ; $6630: $ba
    xor [hl]                                      ; $6631: $ae
    ld c, e                                       ; $6632: $4b
    ld b, l                                       ; $6633: $45
    db $db                                        ; $6634: $db
    xor d                                         ; $6635: $aa
    db $dd                                        ; $6636: $dd
    sub d                                         ; $6637: $92
    rst $38                                       ; $6638: $ff
    rlca                                          ; $6639: $07
    add $52                                       ; $663a: $c6 $52
    cp $9b                                        ; $663c: $fe $9b
    rst $38                                       ; $663e: $ff
    set 7, [hl]                                   ; $663f: $cb $fe
    ld hl, $2d3f                                  ; $6641: $21 $3f $2d
    ld l, h                                       ; $6644: $6c
    ld h, l                                       ; $6645: $65
    ld d, c                                       ; $6646: $51
    ld [$bf9f], a                                 ; $6647: $ea $9f $bf
    or [hl]                                       ; $664a: $b6
    ld [hl], l                                    ; $664b: $75
    ld bc, $a11e                                  ; $664c: $01 $1e $a1
    add hl, hl                                    ; $664f: $29
    ld e, d                                       ; $6650: $5a
    jp hl                                         ; $6651: $e9


    sbc a                                         ; $6652: $9f
    pop af                                        ; $6653: $f1
    ld b, d                                       ; $6654: $42
    db $eb                                        ; $6655: $eb
    ld a, a                                       ; $6656: $7f
    push hl                                       ; $6657: $e5
    ld [hl], c                                    ; $6658: $71
    ld d, d                                       ; $6659: $52
    sbc h                                         ; $665a: $9c
    ret z                                         ; $665b: $c8

    cp d                                          ; $665c: $ba
    inc bc                                        ; $665d: $03
    cp $a4                                        ; $665e: $fe $a4
    xor $d8                                       ; $6660: $ee $d8
    ld [hl], e                                    ; $6662: $73
    ld c, b                                       ; $6663: $48
    or c                                          ; $6664: $b1
    jp nz, $ba13                                  ; $6665: $c2 $13 $ba

    or a                                          ; $6668: $b7
    adc c                                         ; $6669: $89
    ld c, d                                       ; $666a: $4a
    cp $48                                        ; $666b: $fe $48
    ld b, a                                       ; $666d: $47
    rst $30                                       ; $666e: $f7
    rst $20                                       ; $666f: $e7
    rst $38                                       ; $6670: $ff
    rla                                           ; $6671: $17
    nop                                           ; $6672: $00
    sbc h                                         ; $6673: $9c
    db $e3                                        ; $6674: $e3

Call_05d_6675:
    sbc h                                         ; $6675: $9c
    rla                                           ; $6676: $17
    sub [hl]                                      ; $6677: $96
    ldh a, [$9c]                                  ; $6678: $f0 $9c
    and c                                         ; $667a: $a1
    and d                                         ; $667b: $a2
    ret                                           ; $667c: $c9


    dec b                                         ; $667d: $05
    inc de                                        ; $667e: $13
    sub l                                         ; $667f: $95
    ret c                                         ; $6680: $d8

    rst $10                                       ; $6681: $d7
    sbc h                                         ; $6682: $9c
    rst $38                                       ; $6683: $ff
    ld c, c                                       ; $6684: $49
    pop af                                        ; $6685: $f1
    inc a                                         ; $6686: $3c
    ld h, e                                       ; $6687: $63
    reti                                          ; $6688: $d9


    dec h                                         ; $6689: $25
    add a                                         ; $668a: $87
    ld e, a                                       ; $668b: $5f
    ld l, e                                       ; $668c: $6b
    ld e, e                                       ; $668d: $5b
    inc de                                        ; $668e: $13
    ld h, l                                       ; $668f: $65
    and e                                         ; $6690: $a3
    dec [hl]                                      ; $6691: $35
    ld b, a                                       ; $6692: $47
    dec [hl]                                      ; $6693: $35
    ld h, d                                       ; $6694: $62
    ld b, c                                       ; $6695: $41
    ld bc, $117c                                  ; $6696: $01 $7c $11
    add hl, hl                                    ; $6699: $29
    sub l                                         ; $669a: $95
    ld a, [hl+]                                   ; $669b: $2a
    ld l, e                                       ; $669c: $6b
    push hl                                       ; $669d: $e5
    ld d, c                                       ; $669e: $51
    ld de, $5116                                  ; $669f: $11 $16 $51
    ld c, c                                       ; $66a2: $49
    pop af                                        ; $66a3: $f1
    inc a                                         ; $66a4: $3c
    ld h, e                                       ; $66a5: $63
    reti                                          ; $66a6: $d9


    dec b                                         ; $66a7: $05
    nop                                           ; $66a8: $00
    adc c                                         ; $66a9: $89
    cp b                                          ; $66aa: $b8
    push hl                                       ; $66ab: $e5
    cp h                                          ; $66ac: $bc
    sbc h                                         ; $66ad: $9c
    call z, $8ed2                                 ; $66ae: $cc $d2 $8e
    jr z, jr_05d_66d6                             ; $66b1: $28 $23

    cp c                                          ; $66b3: $b9
    push hl                                       ; $66b4: $e5
    add d                                         ; $66b5: $82
    call z, $0a77                                 ; $66b6: $cc $77 $0a
    nop                                           ; $66b9: $00
    ld a, h                                       ; $66ba: $7c
    inc bc                                        ; $66bb: $03
    ld hl, $f758                                  ; $66bc: $21 $58 $f7
    jr @-$71                                      ; $66bf: $18 $8d

    ld b, $00                                     ; $66c1: $06 $00
    ld e, [hl]                                    ; $66c3: $5e
    or c                                          ; $66c4: $b1
    xor $ed                                       ; $66c5: $ee $ed
    adc l                                         ; $66c7: $8d
    ld b, [hl]                                    ; $66c8: $46
    nop                                           ; $66c9: $00
    ld c, $f7                                     ; $66ca: $0e $f7
    cp [hl]                                       ; $66cc: $be
    sub h                                         ; $66cd: $94
    db $e3                                        ; $66ce: $e3
    sbc $7b                                       ; $66cf: $de $7b
    ld a, [$0365]                                 ; $66d1: $fa $65 $03
    pop hl                                        ; $66d4: $e1
    rra                                           ; $66d5: $1f

jr_05d_66d6:
    ld a, l                                       ; $66d6: $7d
    ld bc, $471e                                  ; $66d7: $01 $1e $47
    dec [hl]                                      ; $66da: $35
    db $dd                                        ; $66db: $dd
    ld e, e                                       ; $66dc: $5b
    ld d, c                                       ; $66dd: $51
    nop                                           ; $66de: $00
    ld e, $e3                                     ; $66df: $1e $e3
    or [hl]                                       ; $66e1: $b6
    adc l                                         ; $66e2: $8d
    ld b, $fc                                     ; $66e3: $06 $fc
    cp a                                          ; $66e5: $bf
    ld [hl], e                                    ; $66e6: $73
    inc c                                         ; $66e7: $0c
    ld c, b                                       ; $66e8: $48
    sub h                                         ; $66e9: $94
    jp nc, Jump_05d_46b5                          ; $66ea: $d2 $b5 $46

    or [hl]                                       ; $66ed: $b6
    rrca                                          ; $66ee: $0f
    nop                                           ; $66ef: $00
    sbc h                                         ; $66f0: $9c
    ld e, e                                       ; $66f1: $5b
    dec d                                         ; $66f2: $15
    adc d                                         ; $66f3: $8a
    ld d, l                                       ; $66f4: $55
    cp $ec                                        ; $66f5: $fe $ec
    cp $af                                        ; $66f7: $fe $af
    ld sp, hl                                     ; $66f9: $f9
    ld e, a                                       ; $66fa: $5f
    sbc d                                         ; $66fb: $9a
    ld e, a                                       ; $66fc: $5f
    push af                                       ; $66fd: $f5
    db $fd                                        ; $66fe: $fd
    cp d                                          ; $66ff: $ba
    and e                                         ; $6700: $a3
    adc d                                         ; $6701: $8a
    ld l, $f1                                     ; $6702: $2e $f1
    cp $99                                        ; $6704: $fe $99
    rst $08                                       ; $6706: $cf
    ret nc                                        ; $6707: $d0

    ld h, h                                       ; $6708: $64
    rst $38                                       ; $6709: $ff
    db $dd                                        ; $670a: $dd
    rst $38                                       ; $670b: $ff
    jp z, Jump_000_0e37                           ; $670c: $ca $37 $0e

    add hl, hl                                    ; $670f: $29
    and a                                         ; $6710: $a7
    add l                                         ; $6711: $85
    inc sp                                        ; $6712: $33
    sub d                                         ; $6713: $92
    ld l, l                                       ; $6714: $6d
    sbc h                                         ; $6715: $9c
    ld b, e                                       ; $6716: $43
    rla                                           ; $6717: $17
    nop                                           ; $6718: $00
    ld c, $33                                     ; $6719: $0e $33
    set 2, h                                      ; $671b: $cb $d4
    ld b, h                                       ; $671d: $44
    rst $20                                       ; $671e: $e7
    ld d, b                                       ; $671f: $50
    ld d, d                                       ; $6720: $52
    inc a                                         ; $6721: $3c
    rst $08                                       ; $6722: $cf
    ld e, b                                       ; $6723: $58
    halt                                          ; $6724: $76
    ret                                           ; $6725: $c9


    db $e3                                        ; $6726: $e3
    add a                                         ; $6727: $87
    or a                                          ; $6728: $b7
    dec sp                                        ; $6729: $3b
    adc $b0                                       ; $672a: $ce $b0
    ld h, b                                       ; $672c: $60
    ld [hl], c                                    ; $672d: $71
    ld h, e                                       ; $672e: $63

Jump_05d_672f:
    db $ed                                        ; $672f: $ed
    db $eb                                        ; $6730: $eb
    rst $08                                       ; $6731: $cf
    db $fc                                        ; $6732: $fc
    rst $10                                       ; $6733: $d7
    call nz, $ffb4                                ; $6734: $c4 $b4 $ff
    ld [bc], a                                    ; $6737: $02
    sbc h                                         ; $6738: $9c
    ld e, e                                       ; $6739: $5b
    dec d                                         ; $673a: $15
    ld a, [$a6f3]                                 ; $673b: $fa $f3 $a6
    ld e, b                                       ; $673e: $58
    call $faaf                                    ; $673f: $cd $af $fa
    ld a, [hl]                                    ; $6742: $7e
    db $dd                                        ; $6743: $dd
    ld d, c                                       ; $6744: $51
    ld b, l                                       ; $6745: $45
    ld c, c                                       ; $6746: $49
    pop af                                        ; $6747: $f1
    inc a                                         ; $6748: $3c
    ld h, e                                       ; $6749: $63
    reti                                          ; $674a: $d9


    dec h                                         ; $674b: $25
    cp [hl]                                       ; $674c: $be
    ld e, b                                       ; $674d: $58
    ld [$9a95], sp                                ; $674e: $08 $95 $9a
    or d                                          ; $6751: $b2

Jump_05d_6752:
    adc $32                                       ; $6752: $ce $32
    db $dd                                        ; $6754: $dd

jr_05d_6755:
    ld d, c                                       ; $6755: $51
    ld b, l                                       ; $6756: $45
    ld [$bf9f], a                                 ; $6757: $ea $9f $bf
    or [hl]                                       ; $675a: $b6
    and l                                         ; $675b: $a5
    ld e, $fe                                     ; $675c: $1e $fe
    ld a, a                                       ; $675e: $7f
    ld e, l                                       ; $675f: $5d
    nop                                           ; $6760: $00
    db $fc                                        ; $6761: $fc
    cp a                                          ; $6762: $bf
    or [hl]                                       ; $6763: $b6
    and l                                         ; $6764: $a5
    add hl, sp                                    ; $6765: $39
    add $39                                       ; $6766: $c6 $39
    cpl                                           ; $6768: $2f
    db $db                                        ; $6769: $db
    jr c, @+$4f                                   ; $676a: $38 $4d

    add d                                         ; $676c: $82

jr_05d_676d:
    or c                                          ; $676d: $b1
    ld a, a                                       ; $676e: $7f
    ld c, e                                       ; $676f: $4b
    ld b, h                                       ; $6770: $44
    or l                                          ; $6771: $b5
    ld [hl], h                                    ; $6772: $74
    ret                                           ; $6773: $c9


    db $ed                                        ; $6774: $ed
    di                                            ; $6775: $f3
    and [hl]                                      ; $6776: $a6
    ld e, b                                       ; $6777: $58
    push hl                                       ; $6778: $e5
    rst $08                                       ; $6779: $cf
    xor $ff                                       ; $677a: $ee $ff
    ld [de], a                                    ; $677c: $12
    sbc [hl]                                      ; $677d: $9e
    ld d, b                                       ; $677e: $50
    sbc d                                         ; $677f: $9a
    push hl                                       ; $6780: $e5
    and h                                         ; $6781: $a4
    dec sp                                        ; $6782: $3b
    xor d                                         ; $6783: $aa
    add sp, $02                                   ; $6784: $e8 $02
    ld c, $b9                                     ; $6786: $0e $b9
    jr jr_05d_676d                                ; $6788: $18 $e3

    ld [de], a                                    ; $678a: $12
    sub [hl]                                      ; $678b: $96
    sbc d                                         ; $678c: $9a
    call z, $3348                                 ; $678d: $cc $48 $33
    jr jr_05d_6755                                ; $6790: $18 $c3

    ld l, c                                       ; $6792: $69
    ld h, c                                       ; $6793: $61
    or $97                                        ; $6794: $f6 $97
    ld hl, sp+$62                                 ; $6796: $f8 $62
    ld hl, $f254                                  ; $6798: $21 $54 $f2
    or a                                          ; $679b: $b7
    ld l, c                                       ; $679c: $69
    ld l, l                                       ; $679d: $6d
    ld [hl], l                                    ; $679e: $75
    ld b, a                                       ; $679f: $47
    dec d                                         ; $67a0: $15
    xor c                                         ; $67a1: $a9
    or d                                          ; $67a2: $b2
    sub [hl]                                      ; $67a3: $96
    ld b, l                                       ; $67a4: $45
    jp hl                                         ; $67a5: $e9


    inc c                                         ; $67a6: $0c
    sbc h                                         ; $67a7: $9c
    ld d, $17                                     ; $67a8: $16 $17
    nop                                           ; $67aa: $00
    ld l, [hl]                                    ; $67ab: $6e
    cpl                                           ; $67ac: $2f
    db $fc                                        ; $67ad: $fc
    sbc e                                         ; $67ae: $9b
    ld d, h                                       ; $67af: $54
    ld a, [de]                                    ; $67b0: $1a
    adc h                                         ; $67b1: $8c
    cp l                                          ; $67b2: $bd
    inc e                                         ; $67b3: $1c
    ld h, d                                       ; $67b4: $62
    ld [hl], a                                    ; $67b5: $77
    or b                                          ; $67b6: $b0
    and h                                         ; $67b7: $a4
    adc $ee                                       ; $67b8: $ce $ee

jr_05d_67ba:
    sbc h                                         ; $67ba: $9c
    ld de, $90e7                                  ; $67bb: $11 $e7 $90
    ld [hl-], a                                   ; $67be: $32
    xor [hl]                                      ; $67bf: $ae
    rst $18                                       ; $67c0: $df
    ld sp, hl                                     ; $67c1: $f9
    ld e, a                                       ; $67c2: $5f
    sub a                                         ; $67c3: $97
    ld hl, sp+$7f                                 ; $67c4: $f8 $7f
    cp $da                                        ; $67c6: $fe $da
    sub [hl]                                      ; $67c8: $96
    ld a, d                                       ; $67c9: $7a
    ld hl, sp-$01                                 ; $67ca: $f8 $ff
    or [hl]                                       ; $67cc: $b6
    or d                                          ; $67cd: $b2
    db $dd                                        ; $67ce: $dd
    and [hl]                                      ; $67cf: $a6
    and h                                         ; $67d0: $a4
    and d                                         ; $67d1: $a2
    sub h                                         ; $67d2: $94
    ccf                                           ; $67d3: $3f
    jp Jump_05d_57ed                              ; $67d4: $c3 $ed $57


    inc d                                         ; $67d7: $14
    sub c                                         ; $67d8: $91
    ld a, [de]                                    ; $67d9: $1a
    rst $10                                       ; $67da: $d7
    ld a, [hl-]                                   ; $67db: $3a
    ld l, $00                                     ; $67dc: $2e $00
    sbc [hl]                                      ; $67de: $9e
    ccf                                           ; $67df: $3f
    jp Jump_000_2ded                              ; $67e0: $c3 $ed $2d


    pop bc                                        ; $67e3: $c1
    xor b                                         ; $67e4: $a8
    add hl, de                                    ; $67e5: $19
    adc h                                         ; $67e6: $8c
    ld a, l                                       ; $67e7: $7d
    ld e, l                                       ; $67e8: $5d
    ld a, [c]                                     ; $67e9: $f2
    ld l, d                                       ; $67ea: $6a
    jp c, Jump_05d_5fca                           ; $67eb: $da $ca $5f

    db $eb                                        ; $67ee: $eb
    sub b                                         ; $67ef: $90
    adc a                                         ; $67f0: $8f
    ld l, e                                       ; $67f1: $6b
    ld a, [c]                                     ; $67f2: $f2
    inc d                                         ; $67f3: $14
    db $d3                                        ; $67f4: $d3
    add hl, de                                    ; $67f5: $19
    ld h, a                                       ; $67f6: $67
    daa                                           ; $67f7: $27
    sbc [hl]                                      ; $67f8: $9e
    cp $4b                                        ; $67f9: $fe $4b

Call_05d_67fb:
    ld c, $b2                                     ; $67fb: $0e $b2
    ld d, [hl]                                    ; $67fd: $56
    adc l                                         ; $67fe: $8d
    add hl, sp                                    ; $67ff: $39
    rst $00                                       ; $6800: $c7
    db $fd                                        ; $6801: $fd
    ld e, a                                       ; $6802: $5f
    or d                                          ; $6803: $b2
    db $dd                                        ; $6804: $dd
    and [hl]                                      ; $6805: $a6
    dec bc                                        ; $6806: $0b
    nop                                           ; $6807: $00
    inc a                                         ; $6808: $3c
    rst $08                                       ; $6809: $cf
    ld e, b                                       ; $680a: $58
    sub [hl]                                      ; $680b: $96
    ld d, h                                       ; $680c: $54
    rst $38                                       ; $680d: $ff
    ld a, h                                       ; $680e: $7c
    db $db                                        ; $680f: $db
    ld d, d                                       ; $6810: $52
    adc l                                         ; $6811: $8d
    add hl, sp                                    ; $6812: $39
    rst $00                                       ; $6813: $c7
    db $fd                                        ; $6814: $fd
    ld e, a                                       ; $6815: $5f
    or d                                          ; $6816: $b2
    db $dd                                        ; $6817: $dd
    ld h, $6e                                     ; $6818: $26 $6e
    ld b, c                                       ; $681a: $41
    xor a                                         ; $681b: $af
    ld l, h                                       ; $681c: $6c
    sbc e                                         ; $681d: $9b
    inc [hl]                                      ; $681e: $34
    pop de                                        ; $681f: $d1
    and $7f                                       ; $6820: $e6 $7f
    xor c                                         ; $6822: $a9
    scf                                           ; $6823: $37
    jr nz, jr_05d_67ba                            ; $6824: $20 $94

    call nc, Call_05d_4dbd                        ; $6826: $d4 $bd $4d
    ld b, d                                       ; $6829: $42
    ccf                                           ; $682a: $3f
    cp d                                          ; $682b: $ba
    rra                                           ; $682c: $1f
    sbc $57                                       ; $682d: $de $57
    inc de                                        ; $682f: $13
    sbc l                                         ; $6830: $9d
    ld b, e                                       ; $6831: $43
    ld a, [c]                                     ; $6832: $f2
    inc sp                                        ; $6833: $33
    ld l, $b6                                     ; $6834: $2e $b6
    rrc l                                         ; $6836: $cb $0d
    nop                                           ; $6838: $00
    ld a, h                                       ; $6839: $7c
    ld e, e                                       ; $683a: $5b
    sub h                                         ; $683b: $94
    ld d, d                                       ; $683c: $52
    ret                                           ; $683d: $c9


    cp [hl]                                       ; $683e: $be
    ld [hl], b                                    ; $683f: $70
    ld c, e                                       ; $6840: $4b
    jr nc, jr_05d_68b5                            ; $6841: $30 $72

    bit 2, e                                      ; $6843: $cb $53
    ld c, h                                       ; $6845: $4c
    ld h, a                                       ; $6846: $67
    sbc h                                         ; $6847: $9c
    sbc l                                         ; $6848: $9d
    inc de                                        ; $6849: $13
    or c                                          ; $684a: $b1
    ld h, h                                       ; $684b: $64
    cp e                                          ; $684c: $bb
    ld c, l                                       ; $684d: $4d
    ld c, c                                       ; $684e: $49
    pop bc                                        ; $684f: $c1
    ld l, b                                       ; $6850: $68
    ld [$bfe1], a                                 ; $6851: $ea $e1 $bf
    cp a                                          ; $6854: $bf
    sub $11                                       ; $6855: $d6 $11
    dec l                                         ; $6857: $2d
    inc l                                         ; $6858: $2c
    reti                                          ; $6859: $d9


    jr c, jr_05d_6883                             ; $685a: $38 $27

    inc [hl]                                      ; $685c: $34
    rst $38                                       ; $685d: $ff
    sbc h                                         ; $685e: $9c
    db $dd                                        ; $685f: $dd
    and $06                                       ; $6860: $e6 $06
    inc a                                         ; $6862: $3c

Jump_05d_6863:
    rst $08                                       ; $6863: $cf
    ld e, b                                       ; $6864: $58
    sub [hl]                                      ; $6865: $96
    ld d, h                                       ; $6866: $54
    sub h                                         ; $6867: $94
    ld c, a                                       ; $6868: $4f
    ld a, [de]                                    ; $6869: $1a
    ld [hl], $b1                                  ; $686a: $36 $b1
    ld b, [hl]                                    ; $686c: $46
    res 6, [hl]                                   ; $686d: $cb $b6
    add $28                                       ; $686f: $c6 $28
    ld h, l                                       ; $6871: $65
    ld e, h                                       ; $6872: $5c
    rst $20                                       ; $6873: $e7
    sub b                                         ; $6874: $90
    sbc d                                         ; $6875: $9a
    adc e                                         ; $6876: $8b
    db $dd                                        ; $6877: $dd
    ld b, h                                       ; $6878: $44
    add hl, sp                                    ; $6879: $39
    push de                                       ; $687a: $d5
    ld e, [hl]                                    ; $687b: $5e
    add d                                         ; $687c: $82
    ld l, $cd                                     ; $687d: $2e $cd
    ld h, b                                       ; $687f: $60
    inc c                                         ; $6880: $0c
    dec [hl]                                      ; $6881: $35
    and e                                         ; $6882: $a3

jr_05d_6883:
    ld [c], a                                     ; $6883: $e2
    sbc h                                         ; $6884: $9c
    sbc b                                         ; $6885: $98
    ld b, h                                       ; $6886: $44
    sub l                                         ; $6887: $95
    call nc, $ba3d                                ; $6888: $d4 $3d $ba
    ld e, a                                       ; $688b: $5f
    sub l                                         ; $688c: $95
    or l                                          ; $688d: $b5
    db $ec                                        ; $688e: $ec
    cp a                                          ; $688f: $bf
    ld [hl], l                                    ; $6890: $75
    ld b, [hl]                                    ; $6891: $46
    cp $a5                                        ; $6892: $fe $a5
    or l                                          ; $6894: $b5
    ld e, $dd                                     ; $6895: $1e $dd
    rst $38                                       ; $6897: $ff
    jp c, $b0b6                                   ; $6898: $da $b6 $b0

    ld d, l                                       ; $689b: $55
    rst $38                                       ; $689c: $ff
    db $fc                                        ; $689d: $fc
    or l                                          ; $689e: $b5
    dec l                                         ; $689f: $2d
    add hl, de                                    ; $68a0: $19
    push de                                       ; $68a1: $d5
    call z, $bab2                                 ; $68a2: $cc $b2 $ba
    nop                                           ; $68a5: $00
    sbc [hl]                                      ; $68a6: $9e
    rst $38                                       ; $68a7: $ff
    ld a, [hl+]                                   ; $68a8: $2a
    cp d                                          ; $68a9: $ba
    ld c, c                                       ; $68aa: $49
    ld bc, $7389                                  ; $68ab: $01 $89 $73
    ld [hl+], a                                   ; $68ae: $22
    ld c, d                                       ; $68af: $4a
    ld h, a                                       ; $68b0: $67
    ld [hl], a                                    ; $68b1: $77
    add $fc                                       ; $68b2: $c6 $fc
    xor d                                         ; $68b4: $aa

jr_05d_68b5:
    ccf                                           ; $68b5: $3f
    rst $20                                       ; $68b6: $e7
    and c                                         ; $68b7: $a1
    db $e4                                        ; $68b8: $e4
    jr nc, @-$30                                  ; $68b9: $30 $ce

    inc h                                         ; $68bb: $24
    ld a, [hl+]                                   ; $68bc: $2a
    sbc a                                         ; $68bd: $9f
    sub d                                         ; $68be: $92
    adc d                                         ; $68bf: $8a
    ld l, [hl]                                    ; $68c0: $6e
    jp nc, Jump_000_35bd                          ; $68c1: $d2 $bd $35

    ld c, d                                       ; $68c4: $4a
    ld c, l                                       ; $68c5: $4d
    ld e, c                                       ; $68c6: $59
    ld h, a                                       ; $68c7: $67
    sbc c                                         ; $68c8: $99
    and $f6                                       ; $68c9: $e6 $f6
    inc c                                         ; $68cb: $0c
    ld d, d                                       ; $68cc: $52
    ld [hl], $6d                                  ; $68cd: $36 $6d
    push de                                       ; $68cf: $d5
    jp Jump_05d_7f7f                              ; $68d0: $c3 $7f $7f


    xor l                                         ; $68d3: $ad
    ld b, e                                       ; $68d4: $43
    sbc [hl]                                      ; $68d5: $9e
    ld h, d                                       ; $68d6: $62
    ld a, [hl-]                                   ; $68d7: $3a
    db $e3                                        ; $68d8: $e3
    db $ec                                        ; $68d9: $ec
    call nz, Call_05d_7fd3                        ; $68da: $c4 $d3 $7f
    ret                                           ; $68dd: $c9


    db $d3                                        ; $68de: $d3
    adc l                                         ; $68df: $8d
    ld a, [hl+]                                   ; $68e0: $2a
    ld c, d                                       ; $68e1: $4a
    xor c                                         ; $68e2: $a9
    ld d, h                                       ; $68e3: $54
    ld e, c                                       ; $68e4: $59
    xor e                                         ; $68e5: $ab
    add $9c                                       ; $68e6: $c6 $9c
    db $e3                                        ; $68e8: $e3
    cp $af                                        ; $68e9: $fe $af
    dec bc                                        ; $68eb: $0b
    nop                                           ; $68ec: $00
    ld e, $8f                                     ; $68ed: $1e $8f
    jr z, @-$25                                   ; $68ef: $28 $d9

    sub $78                                       ; $68f1: $d6 $78
    call $a5b1                                    ; $68f3: $cd $b1 $a5
    rst $08                                       ; $68f6: $cf
    ld [hl], c                                    ; $68f7: $71
    xor e                                         ; $68f8: $ab
    ld e, a                                       ; $68f9: $5f
    ld [hl], e                                    ; $68fa: $73
    add hl, de                                    ; $68fb: $19
    db $fc                                        ; $68fc: $fc
    sbc a                                         ; $68fd: $9f
    inc d                                         ; $68fe: $14
    rst $08                                       ; $68ff: $cf
    inc sp                                        ; $6900: $33
    sub [hl]                                      ; $6901: $96
    ret                                           ; $6902: $c9


    ld hl, $0776                                  ; $6903: $21 $76 $07
    db $e3                                        ; $6906: $e3
    ld d, $ff                                     ; $6907: $16 $ff
    rst $08                                       ; $6909: $cf
    ld e, a                                       ; $690a: $5f
    db $db                                        ; $690b: $db
    ld d, d                                       ; $690c: $52
    rrca                                          ; $690d: $0f
    rst $38                                       ; $690e: $ff
    rst $18                                       ; $690f: $df
    ld d, [hl]                                    ; $6910: $56
    ldh a, [$2b]                                  ; $6911: $f0 $2b
    adc l                                         ; $6913: $8d
    ld e, [hl]                                    ; $6914: $5e
    ld l, [hl]                                    ; $6915: $6e
    nop                                           ; $6916: $00
    ld c, $b2                                     ; $6917: $0e $b2
    ld d, $9e                                     ; $6919: $16 $9e
    ld l, b                                       ; $691b: $68
    ld sp, hl                                     ; $691c: $f9
    db $e3                                        ; $691d: $e3
    cp h                                          ; $691e: $bc
    reti                                          ; $691f: $d9


    ld [hl], e                                    ; $6920: $73
    bit 2, e                                      ; $6921: $cb $53
    ld c, h                                       ; $6923: $4c
    ld h, a                                       ; $6924: $67
    sbc h                                         ; $6925: $9c
    sbc l                                         ; $6926: $9d
    ld a, b                                       ; $6927: $78
    ld a, [$9735]                                 ; $6928: $fa $35 $97
    pop bc                                        ; $692b: $c1
    rst $18                                       ; $692c: $df
    rst $38                                       ; $692d: $ff
    dec h                                         ; $692e: $25
    rra                                           ; $692f: $1f
    rst $10                                       ; $6930: $d7
    sub h                                         ; $6931: $94
    ld c, l                                       ; $6932: $4d
    ld e, e                                       ; $6933: $5b
    push af                                       ; $6934: $f5
    ldh a, [$df]                                  ; $6935: $f0 $df
    ld e, a                                       ; $6937: $5f
    db $eb                                        ; $6938: $eb
    cp b                                          ; $6939: $b8
    db $e4                                        ; $693a: $e4
    ld h, b                                       ; $693b: $60
    call z, $ee39                                 ; $693c: $cc $39 $ee
    rst $38                                       ; $693f: $ff
    sub d                                         ; $6940: $92
    db $ed                                        ; $6941: $ed
    ld [hl], $71                                  ; $6942: $36 $71
    inc bc                                        ; $6944: $03
    ld l, [hl]                                    ; $6945: $6e
    ld d, a                                       ; $6946: $57
    ld a, l                                       ; $6947: $7d
    ret                                           ; $6948: $c9


    add $39                                       ; $6949: $c6 $39
    and c                                         ; $694b: $a1
    ld a, h                                       ; $694c: $7c
    db $e3                                        ; $694d: $e3
    sub b                                         ; $694e: $90
    sbc d                                         ; $694f: $9a
    ld c, d                                       ; $6950: $4a
    ld d, c                                       ; $6951: $51
    dec d                                         ; $6952: $15
    ld [hl], e                                    ; $6953: $73
    ld l, h                                       ; $6954: $6c
    jp hl                                         ; $6955: $e9


    ld d, b                                       ; $6956: $50
    ld a, [de]                                    ; $6957: $1a
    ld [hl], l                                    ; $6958: $75
    adc c                                         ; $6959: $89
    ccf                                           ; $695a: $3f
    dec sp                                        ; $695b: $3b
    sbc c                                         ; $695c: $99
    rst $38                                       ; $695d: $ff
    jp hl                                         ; $695e: $e9


    db $fc                                        ; $695f: $fc
    ld [de], a                                    ; $6960: $12
    ld a, [$9efe]                                 ; $6961: $fa $fe $9e
    rst $38                                       ; $6964: $ff
    ld d, $96                                     ; $6965: $16 $96
    ld [hl], $fd                                  ; $6967: $36 $fd
    ld d, d                                       ; $6969: $52
    ld a, [hl-]                                   ; $696a: $3a
    adc $19                                       ; $696b: $ce $19
    ld e, e                                       ; $696d: $5b
    cpl                                           ; $696e: $2f
    ld b, a                                       ; $696f: $47
    ld a, c                                       ; $6970: $79
    rst $00                                       ; $6971: $c7
    jr c, jr_05d_69d7                             ; $6972: $38 $63

    db $ed                                        ; $6974: $ed
    ld e, e                                       ; $6975: $5b
    add l                                         ; $6976: $85
    dec bc                                        ; $6977: $0b
    ld sp, hl                                     ; $6978: $f9
    ld d, $fc                                     ; $6979: $16 $fc
    jp z, $a4e3                                   ; $697b: $ca $e3 $a4

    ret c                                         ; $697e: $d8

    adc [hl]                                      ; $697f: $8e
    ld a, [hl-]                                   ; $6980: $3a
    inc sp                                        ; $6981: $33
    sub c                                         ; $6982: $91
    ld [hl], l                                    ; $6983: $75
    rst $00                                       ; $6984: $c7
    and [hl]                                      ; $6985: $a6
    ld e, e                                       ; $6986: $5b
    sub a                                         ; $6987: $97
    inc e                                         ; $6988: $1c
    ret nc                                        ; $6989: $d0

    and [hl]                                      ; $698a: $a6
    ld e, e                                       ; $698b: $5b

Jump_05d_698c:
    sbc d                                         ; $698c: $9a
    ld e, a                                       ; $698d: $5f
    or [hl]                                       ; $698e: $b6
    cp b                                          ; $698f: $b8
    jp hl                                         ; $6990: $e9


    sub [hl]                                      ; $6991: $96
    ld [hl], d                                    ; $6992: $72
    call c, Call_000_0cd6                         ; $6993: $dc $d6 $0c
    ld b, [hl]                                    ; $6996: $46
    ld c, l                                       ; $6997: $4d
    sbc d                                         ; $6998: $9a
    ret z                                         ; $6999: $c8

    cp d                                          ; $699a: $ba
    rst $10                                       ; $699b: $d7
    ld l, $f1                                     ; $699c: $2e $f1
    adc [hl]                                      ; $699e: $8e
    inc bc                                        ; $699f: $03
    ld b, a                                       ; $69a0: $47
    cp a                                          ; $69a1: $bf
    db $fc                                        ; $69a2: $fc
    adc l                                         ; $69a3: $8d
    ld l, d                                       ; $69a4: $6a

jr_05d_69a5:
    sub d                                         ; $69a5: $92
    ei                                            ; $69a6: $fb
    ld a, b                                       ; $69a7: $78
    ld d, $e5                                     ; $69a8: $16 $e5
    ld c, $8b                                     ; $69aa: $0e $8b
    ld a, h                                       ; $69ac: $7c
    xor l                                         ; $69ad: $ad
    ld c, c                                       ; $69ae: $49
    rst $30                                       ; $69af: $f7
    sbc b                                         ; $69b0: $98
    ld e, a                                       ; $69b1: $5f
    ld l, a                                       ; $69b2: $6f
    sbc e                                         ; $69b3: $9b
    call nc, $ba3d                                ; $69b4: $d4 $3d $ba
    ld e, a                                       ; $69b7: $5f
    ld a, $d1                                     ; $69b8: $3e $d1
    db $fc                                        ; $69ba: $fc
    or d                                          ; $69bb: $b2
    ld b, l                                       ; $69bc: $45
    cp c                                          ; $69bd: $b9
    adc a                                         ; $69be: $8f
    ld h, a                                       ; $69bf: $67
    ld d, c                                       ; $69c0: $51
    ld a, h                                       ; $69c1: $7c
    sbc a                                         ; $69c2: $9f
    ret nc                                        ; $69c3: $d0

    ld a, [bc]                                    ; $69c4: $0a
    ld c, e                                       ; $69c5: $4b
    ld h, a                                       ; $69c6: $67
    rst $30                                       ; $69c7: $f7
    ld c, e                                       ; $69c8: $4b
    ld l, e                                       ; $69c9: $6b
    xor b                                         ; $69ca: $a8
    ld a, e                                       ; $69cb: $7b
    call z, Call_000_17af                         ; $69cc: $cc $af $17
    ei                                            ; $69cf: $fb
    ld c, a                                       ; $69d0: $4f
    cp a                                          ; $69d1: $bf
    ei                                            ; $69d2: $fb
    di                                            ; $69d3: $f3
    sbc a                                         ; $69d4: $9f
    halt                                          ; $69d5: $76
    adc c                                         ; $69d6: $89

jr_05d_69d7:
    inc sp                                        ; $69d7: $33
    add h                                         ; $69d8: $84
    ret c                                         ; $69d9: $d8

    db $fd                                        ; $69da: $fd
    cpl                                           ; $69db: $2f
    dec de                                        ; $69dc: $1b
    cpl                                           ; $69dd: $2f
    jr jr_05d_69a5                                ; $69de: $18 $c5

    sbc a                                         ; $69e0: $9f
    sbc l                                         ; $69e1: $9d
    call z, Call_05d_74ff                         ; $69e2: $cc $ff $74
    cp [hl]                                       ; $69e5: $be
    reti                                          ; $69e6: $d9


    ld e, a                                       ; $69e7: $5f
    ld a, [c]                                     ; $69e8: $f2
    inc e                                         ; $69e9: $1c
    or a                                          ; $69ea: $b7
    dec [hl]                                      ; $69eb: $35
    or e                                          ; $69ec: $b3
    ld [hl], e                                    ; $69ed: $73
    ld c, b                                       ; $69ee: $48
    or [hl]                                       ; $69ef: $b6
    and a                                         ; $69f0: $a7
    ld d, a                                       ; $69f1: $57
    di                                            ; $69f2: $f3
    cp e                                          ; $69f3: $bb
    ld de, $db65                                  ; $69f4: $11 $65 $db
    sub h                                         ; $69f7: $94
    ld d, h                                       ; $69f8: $54
    cp $3b                                        ; $69f9: $fe $3b
    ld h, a                                       ; $69fb: $67
    or h                                          ; $69fc: $b4
    ld a, [c]                                     ; $69fd: $f2
    adc l                                         ; $69fe: $8d
    ld b, e                                       ; $69ff: $43
    jp z, $e771                                   ; $6a00: $ca $71 $e7

    db $fc                                        ; $6a03: $fc
    cpl                                           ; $6a04: $2f
    ld sp, hl                                     ; $6a05: $f9
    ld l, e                                       ; $6a06: $6b
    ld c, l                                       ; $6a07: $4d
    and h                                         ; $6a08: $a4
    adc c                                         ; $6a09: $89
    xor h                                         ; $6a0a: $ac
    dec sp                                        ; $6a0b: $3b
    ldh [$37], a                                  ; $6a0c: $e0 $37
    reti                                          ; $6a0e: $d9


    ld l, [hl]                                    ; $6a0f: $6e
    ld a, [de]                                    ; $6a10: $1a
    ld [hl], l                                    ; $6a11: $75
    ld bc, $0f1e                                  ; $6a12: $01 $1e $0f
    ld d, h                                       ; $6a15: $54
    rst $38                                       ; $6a16: $ff
    adc $87                                       ; $6a17: $ce $87
    rlca                                          ; $6a19: $07
    sbc $0f                                       ; $6a1a: $de $0f
    nop                                           ; $6a1c: $00
    cp h                                          ; $6a1d: $bc
    and e                                         ; $6a1e: $a3
    ld a, [bc]                                    ; $6a1f: $0a
    ld l, e                                       ; $6a20: $6b
    ld h, d                                       ; $6a21: $62
    adc d                                         ; $6a22: $8a
    dec a                                         ; $6a23: $3d
    inc c                                         ; $6a24: $0c
    nop                                           ; $6a25: $00
    ld c, $3f                                     ; $6a26: $0e $3f
    push bc                                       ; $6a28: $c5
    xor l                                         ; $6a29: $ad
    inc e                                         ; $6a2a: $1c
    or a                                          ; $6a2b: $b7
    ld a, d                                       ; $6a2c: $7a
    ld bc, $469e                                  ; $6a2d: $01 $9e $46
    ld b, d                                       ; $6a30: $42
    ld d, c                                       ; $6a31: $51
    pop bc                                        ; $6a32: $c1
    ld [hl], b                                    ; $6a33: $70
    xor e                                         ; $6a34: $ab
    rla                                           ; $6a35: $17
    nop                                           ; $6a36: $00
    sbc [hl]                                      ; $6a37: $9e
    ld h, [hl]                                    ; $6a38: $66
    jp hl                                         ; $6a39: $e9


    sbc l                                         ; $6a3a: $9d
    reti                                          ; $6a3b: $d9


    ld b, e                                       ; $6a3c: $43
    ld [bc], a                                    ; $6a3d: $02
    nop                                           ; $6a3e: $00
    sbc h                                         ; $6a3f: $9c
    dec de                                        ; $6a40: $1b
    cp [hl]                                       ; $6a41: $be
    cp a                                          ; $6a42: $bf
    adc $ac                                       ; $6a43: $ce $ac
    call Call_000_0001                            ; $6a45: $cd $01 $00
    sbc h                                         ; $6a48: $9c
    dec de                                        ; $6a49: $1b
    cp [hl]                                       ; $6a4a: $be
    cp a                                          ; $6a4b: $bf
    jp hl                                         ; $6a4c: $e9


    or e                                          ; $6a4d: $b3
    db $f4                                        ; $6a4e: $f4
    ld b, a                                       ; $6a4f: $47
    rrca                                          ; $6a50: $0f
    inc bc                                        ; $6a51: $03
    sbc [hl]                                      ; $6a52: $9e
    db $d3                                        ; $6a53: $d3
    ld e, c                                       ; $6a54: $59
    rst $38                                       ; $6a55: $ff
    rst $08                                       ; $6a56: $cf
    inc bc                                        ; $6a57: $03
    ld c, $d7                                     ; $6a58: $0e $d7
    ld a, [hl-]                                   ; $6a5a: $3a
    cp h                                          ; $6a5b: $bc
    rst $00                                       ; $6a5c: $c7
    ld a, [de]                                    ; $6a5d: $1a
    ld b, $00                                     ; $6a5e: $06 $00
    ld c, $9f                                     ; $6a60: $0e $9f
    ld a, l                                       ; $6a62: $7d
    push de                                       ; $6a63: $d5
    db $eb                                        ; $6a64: $eb
    adc $d8                                       ; $6a65: $ce $d8
    call z, Call_000_333a                         ; $6a67: $cc $3a $33
    nop                                           ; $6a6a: $00
    ld c, $71                                     ; $6a6b: $0e $71
    xor l                                         ; $6a6d: $ad
    ld e, a                                       ; $6a6e: $5f
    ld [hl], e                                    ; $6a6f: $73
    add hl, de                                    ; $6a70: $19
    ld c, $03                                     ; $6a71: $0e $03
    sbc h                                         ; $6a73: $9c
    inc bc                                        ; $6a74: $03
    pop hl                                        ; $6a75: $e1
    rra                                           ; $6a76: $1f
    ld b, $00                                     ; $6a77: $06 $00
    db $fc                                        ; $6a79: $fc
    ret z                                         ; $6a7a: $c8

    ldh [rHDMA1], a                               ; $6a7b: $e0 $51
    db $fd                                        ; $6a7d: $fd
    nop                                           ; $6a7e: $00
    sbc [hl]                                      ; $6a7f: $9e
    db $e3                                        ; $6a80: $e3
    sbc $3f                                       ; $6a81: $de $3f
    rst $20                                       ; $6a83: $e7
    jr jr_05d_6a8c                                ; $6a84: $18 $06

    nop                                           ; $6a86: $00
    inc a                                         ; $6a87: $3c
    cp e                                          ; $6a88: $bb
    ld h, a                                       ; $6a89: $67
    db $fd                                        ; $6a8a: $fd
    rst $30                                       ; $6a8b: $f7

jr_05d_6a8c:
    add e                                         ; $6a8c: $83
    db $ed                                        ; $6a8d: $ed
    ld b, h                                       ; $6a8e: $44
    ld a, a                                       ; $6a8f: $7f
    ld de, $0e00                                  ; $6a90: $11 $00 $0e
    db $e3                                        ; $6a93: $e3
    ld h, b                                       ; $6a94: $60
    rst $30                                       ; $6a95: $f7
    rst $20                                       ; $6a96: $e7
    rst $18                                       ; $6a97: $df
    jp z, $ef71                                   ; $6a98: $ca $71 $ef

    ld l, a                                       ; $6a9b: $6f
    nop                                           ; $6a9c: $00
    sbc [hl]                                      ; $6a9d: $9e
    push de                                       ; $6a9e: $d5
    ld [bc], a                                    ; $6a9f: $02
    ret nc                                        ; $6aa0: $d0

    or [hl]                                       ; $6aa1: $b6
    dec d                                         ; $6aa2: $15
    or d                                          ; $6aa3: $b2
    ld [hl], c                                    ; $6aa4: $71
    ld a, [hl]                                    ; $6aa5: $7e
    jp c, Jump_000_0e02                           ; $6aa6: $da $02 $0e

    sbc a                                         ; $6aa9: $9f
    ld a, l                                       ; $6aaa: $7d
    ld d, l                                       ; $6aab: $55
    ld [hl], h                                    ; $6aac: $74
    rrca                                          ; $6aad: $0f
    push af                                       ; $6aae: $f5
    rst $28                                       ; $6aaf: $ef
    inc e                                         ; $6ab0: $1c
    jp Jump_05d_7c00                              ; $6ab1: $c3 $00 $7c


    add hl, de                                    ; $6ab4: $19
    sbc e                                         ; $6ab5: $9b
    inc sp                                        ; $6ab6: $33
    set 3, a                                      ; $6ab7: $cb $df
    ld a, d                                       ; $6ab9: $7a
    ld e, b                                       ; $6aba: $58
    rrca                                          ; $6abb: $0f
    inc bc                                        ; $6abc: $03
    sbc h                                         ; $6abd: $9c
    sla d                                         ; $6abe: $cb $22
    ld l, d                                       ; $6ac0: $6a
    ld bc, $b43c                                  ; $6ac1: $01 $3c $b4
    ld l, h                                       ; $6ac4: $6c
    xor e                                         ; $6ac5: $ab
    add hl, bc                                    ; $6ac6: $09
    nop                                           ; $6ac7: $00
    cp h                                          ; $6ac8: $bc
    sub c                                         ; $6ac9: $91
    ld [hl], $9e                                  ; $6aca: $36 $9e
    rra                                           ; $6acc: $1f
    ld h, a                                       ; $6acd: $67
    nop                                           ; $6ace: $00
    inc a                                         ; $6acf: $3c
    cp a                                          ; $6ad0: $bf
    ld [hl], $d2                                  ; $6ad1: $36 $d2
    ret c                                         ; $6ad3: $d8

    ld [hl+], a                                   ; $6ad4: $22
    nop                                           ; $6ad5: $00
    inc a                                         ; $6ad6: $3c
    dec bc                                        ; $6ad7: $0b
    ld a, c                                       ; $6ad8: $79
    db $eb                                        ; $6ad9: $eb
    ld h, c                                       ; $6ada: $61
    nop                                           ; $6adb: $00
    ret nc                                        ; $6adc: $d0

    db $fd                                        ; $6add: $fd
    push af                                       ; $6ade: $f5
    nop                                           ; $6adf: $00
    ld a, h                                       ; $6ae0: $7c
    add hl, de                                    ; $6ae1: $19
    or e                                          ; $6ae2: $b3
    sbc c                                         ; $6ae3: $99
    ld bc, $637c                                  ; $6ae4: $01 $7c $63
    db $f4                                        ; $6ae7: $f4
    dec hl                                        ; $6ae8: $2b
    ld a, a                                       ; $6ae9: $7f
    db $eb                                        ; $6aea: $eb
    ld h, c                                       ; $6aeb: $61
    db $fd                                        ; $6aec: $fd
    ldh a, [$3f]                                  ; $6aed: $f0 $3f
    nop                                           ; $6aef: $00
    db $fc                                        ; $6af0: $fc
    jp $ef3f                                      ; $6af1: $c3 $3f $ef


    inc c                                         ; $6af4: $0c
    xor a                                         ; $6af5: $af
    ld b, e                                       ; $6af6: $43
    nop                                           ; $6af7: $00
    ld c, $47                                     ; $6af8: $0e $47
    ld a, [bc]                                    ; $6afa: $0a
    ld e, c                                       ; $6afb: $59
    db $eb                                        ; $6afc: $eb
    ld h, c                                       ; $6afd: $61
    nop                                           ; $6afe: $00
    sbc h                                         ; $6aff: $9c
    bit 7, h                                      ; $6b00: $cb $7c
    ld a, a                                       ; $6b02: $7f
    di                                            ; $6b03: $f3
    rst $18                                       ; $6b04: $df
    ld a, [de]                                    ; $6b05: $1a
    nop                                           ; $6b06: $00
    cp h                                          ; $6b07: $bc
    sbc b                                         ; $6b08: $98
    or $7f                                        ; $6b09: $f6 $7f
    cp $2d                                        ; $6b0b: $fe $2d
    rra                                           ; $6b0d: $1f
    rst $08                                       ; $6b0e: $cf
    ld l, b                                       ; $6b0f: $68
    nop                                           ; $6b10: $00
    ret nc                                        ; $6b11: $d0

    ld d, l                                       ; $6b12: $55
    ccf                                           ; $6b13: $3f
    daa                                           ; $6b14: $27
    and $cf                                       ; $6b15: $e6 $cf
    ld [hl], b                                    ; $6b17: $70
    ld a, e                                       ; $6b18: $7b
    jr jr_05d_6b1b                                ; $6b19: $18 $00

jr_05d_6b1b:
    inc a                                         ; $6b1b: $3c
    or c                                          ; $6b1c: $b1
    ld [hl], e                                    ; $6b1d: $73
    and d                                         ; $6b1e: $a2
    ld h, $a6                                     ; $6b1f: $26 $a6
    db $fd                                        ; $6b21: $fd
    nop                                           ; $6b22: $00
    ld c, $ff                                     ; $6b23: $0e $ff
    db $fc                                        ; $6b25: $fc
    add sp, $57                                   ; $6b26: $e8 $57
    rst $38                                       ; $6b28: $ff
    adc $f7                                       ; $6b29: $ce $f7
    rst $10                                       ; $6b2b: $d7
    ld a, [hl-]                                   ; $6b2c: $3a
    and d                                         ; $6b2d: $a2
    ld bc, $bffc                                  ; $6b2e: $01 $fc $bf
    ld e, a                                       ; $6b31: $5f
    ld a, [c]                                     ; $6b32: $f2
    ld [hl], c                                    ; $6b33: $71
    xor l                                         ; $6b34: $ad
    ld de, $0e00                                  ; $6b35: $11 $00 $0e
    rst $38                                       ; $6b38: $ff
    db $fc                                        ; $6b39: $fc
    add sp, -$29                                  ; $6b3a: $e8 $d7
    inc e                                         ; $6b3c: $1c
    push de                                       ; $6b3d: $d5
    add sp, -$51                                  ; $6b3e: $e8 $af
    ld [hl], l                                    ; $6b40: $75
    ld b, h                                       ; $6b41: $44
    inc bc                                        ; $6b42: $03
    sbc h                                         ; $6b43: $9c
    rst $18                                       ; $6b44: $df
    ld de, $3f95                                  ; $6b45: $11 $95 $3f
    add e                                         ; $6b48: $83
    ld de, $7c00                                  ; $6b49: $11 $00 $7c
    ld a, a                                       ; $6b4c: $7f
    adc $a2                                       ; $6b4d: $ce $a2
    rst $28                                       ; $6b4f: $ef
    rst $28                                       ; $6b50: $ef
    ld a, c                                       ; $6b51: $79
    inc bc                                        ; $6b52: $03
    ld c, $9f                                     ; $6b53: $0e $9f
    ld a, l                                       ; $6b55: $7d
    push af                                       ; $6b56: $f5
    rst $20                                       ; $6b57: $e7
    xor a                                         ; $6b58: $af
    inc [hl]                                      ; $6b59: $34
    db $e3                                        ; $6b5a: $e3
    sbc d                                         ; $6b5b: $9a
    sub e                                         ; $6b5c: $93
    ld [hl-], a                                   ; $6b5d: $32
    inc bc                                        ; $6b5e: $03
    db $fc                                        ; $6b5f: $fc
    ld l, a                                       ; $6b60: $6f
    xor b                                         ; $6b61: $a8
    db $ec                                        ; $6b62: $ec
    ld [hl], b                                    ; $6b63: $70
    add hl, de                                    ; $6b64: $19
    nop                                           ; $6b65: $00
    cp h                                          ; $6b66: $bc
    ld c, $9d                                     ; $6b67: $0e $9d
    add hl, sp                                    ; $6b69: $39
    ld l, e                                       ; $6b6a: $6b
    inc b                                         ; $6b6b: $04
    nop                                           ; $6b6c: $00
    db $fc                                        ; $6b6d: $fc
    ld c, $9d                                     ; $6b6e: $0e $9d
    add hl, sp                                    ; $6b70: $39
    ld l, e                                       ; $6b71: $6b
    inc b                                         ; $6b72: $04
    nop                                           ; $6b73: $00
    db $fc                                        ; $6b74: $fc
    ld c, $9d                                     ; $6b75: $0e $9d
    pop af                                        ; $6b77: $f1
    ld [hl], c                                    ; $6b78: $71
    xor l                                         ; $6b79: $ad
    ld de, $0e00                                  ; $6b7a: $11 $00 $0e
    rst $38                                       ; $6b7d: $ff
    db $fc                                        ; $6b7e: $fc
    add sp, -$29                                  ; $6b7f: $e8 $d7
    db $fc                                        ; $6b81: $fc
    sbc l                                         ; $6b82: $9d
    ld [hl], e                                    ; $6b83: $73
    ld bc, $bffc                                  ; $6b84: $01 $fc $bf
    di                                            ; $6b87: $f3
    di                                            ; $6b88: $f3
    or a                                          ; $6b89: $b7
    ld e, $d6                                     ; $6b8a: $1e $d6

Jump_05d_6b8c:
    jp $9e00                                      ; $6b8c: $c3 $00 $9e


    cp a                                          ; $6b8f: $bf
    push af                                       ; $6b90: $f5
    or b                                          ; $6b91: $b0
    ld e, $06                                     ; $6b92: $1e $06
    nop                                           ; $6b94: $00
    ld c, $88                                     ; $6b95: $0e $88
    xor d                                         ; $6b97: $aa
    or d                                          ; $6b98: $b2
    adc $0c                                       ; $6b99: $ce $0c
    nop                                           ; $6b9b: $00
    db $fc                                        ; $6b9c: $fc
    cp a                                          ; $6b9d: $bf
    di                                            ; $6b9e: $f3
    ld [hl], e                                    ; $6b9f: $73
    call c, $1ffb                                 ; $6ba0: $dc $fb $1f
    nop                                           ; $6ba3: $00
    sbc h                                         ; $6ba4: $9c
    ld e, a                                       ; $6ba5: $5f
    di                                            ; $6ba6: $f3
    reti                                          ; $6ba7: $d9


    sbc [hl]                                      ; $6ba8: $9e
    or e                                          ; $6ba9: $b3
    ld d, $ad                                     ; $6baa: $16 $ad
    inc e                                         ; $6bac: $1c
    rst $30                                       ; $6bad: $f7
    cp $06                                        ; $6bae: $fe $06
    sbc h                                         ; $6bb0: $9c
    jp Jump_05d_760f                              ; $6bb1: $c3 $0f $76


    add $8d                                       ; $6bb4: $c6 $8d
    jp $bc00                                      ; $6bb6: $c3 $00 $bc


    ret z                                         ; $6bb9: $c8

    ld a, d                                       ; $6bba: $7a
    ld e, e                                       ; $6bbb: $5b
    dec e                                         ; $6bbc: $1d
    ld [hl], e                                    ; $6bbd: $73
    ld [hl], e                                    ; $6bbe: $73
    ld l, d                                       ; $6bbf: $6a
    push af                                       ; $6bc0: $f5
    rst $28                                       ; $6bc1: $ef
    ld a, h                                       ; $6bc2: $7c
    ld a, b                                       ; $6bc3: $78
    ldh [$fd], a                                  ; $6bc4: $e0 $fd
    push bc                                       ; $6bc6: $c5
    dec c                                         ; $6bc7: $0d
    nop                                           ; $6bc8: $00
    cp h                                          ; $6bc9: $bc
    ret z                                         ; $6bca: $c8

    ld a, d                                       ; $6bcb: $7a
    ld e, e                                       ; $6bcc: $5b
    cp $9f                                        ; $6bcd: $fe $9f
    rra                                           ; $6bcf: $1f
    db $dd                                        ; $6bd0: $dd
    sbc e                                         ; $6bd1: $9b
    ld a, a                                       ; $6bd2: $7f
    dec hl                                        ; $6bd3: $2b
    and a                                         ; $6bd4: $a7
    sub h                                         ; $6bd5: $94
    ld c, d                                       ; $6bd6: $4a
    ld [hl], e                                    ; $6bd7: $73
    ld d, h                                       ; $6bd8: $54
    and e                                         ; $6bd9: $a3
    cp a                                          ; $6bda: $bf
    sub $b1                                       ; $6bdb: $d6 $b1
    ld c, l                                       ; $6bdd: $4d
    or [hl]                                       ; $6bde: $b6
    rla                                           ; $6bdf: $17
    nop                                           ; $6be0: $00
    cp h                                          ; $6be1: $bc
    ret z                                         ; $6be2: $c8

    ld a, [hl-]                                   ; $6be3: $3a
    sub $fa                                       ; $6be4: $d6 $fa
    dec d                                         ; $6be6: $15
    dec hl                                        ; $6be7: $2b
    inc a                                         ; $6be8: $3c
    ld h, a                                       ; $6be9: $67
    or h                                          ; $6bea: $b4
    ld a, [hl+]                                   ; $6beb: $2a
    ld l, e                                       ; $6bec: $6b
    and l                                         ; $6bed: $a5
    add hl, de                                    ; $6bee: $19
    ld d, a                                       ; $6bef: $57
    ld h, a                                       ; $6bf0: $67
    ld [hl], h                                    ; $6bf1: $74
    adc c                                         ; $6bf2: $89
    rst $28                                       ; $6bf3: $ef
    db $d3                                        ; $6bf4: $d3
    or a                                          ; $6bf5: $b7
    dec d                                         ; $6bf6: $15
    sub [hl]                                      ; $6bf7: $96
    inc l                                         ; $6bf8: $2c
    and $af                                       ; $6bf9: $e6 $af
    ld l, l                                       ; $6bfb: $6d
    dec h                                         ; $6bfc: $25
    dec b                                         ; $6bfd: $05
    cp a                                          ; $6bfe: $bf
    ld a, d                                       ; $6bff: $7a
    ld d, h                                       ; $6c00: $54
    ld b, l                                       ; $6c01: $45
    dec bc                                        ; $6c02: $0b
    rrca                                          ; $6c03: $0f
    jp c, $8d2a                                   ; $6c04: $da $2a $8d

    sbc l                                         ; $6c07: $9d
    jr c, @+$6f                                   ; $6c08: $38 $6d

    cpl                                           ; $6c0a: $2f
    pop af                                        ; $6c0b: $f1
    ld b, l                                       ; $6c0c: $45
    ld b, l                                       ; $6c0d: $45
    ld l, a                                       ; $6c0e: $6f
    dec hl                                        ; $6c0f: $2b
    db $dd                                        ; $6c10: $dd
    cp b                                          ; $6c11: $b8
    cp a                                          ; $6c12: $bf
    inc [hl]                                      ; $6c13: $34
    ld b, a                                       ; $6c14: $47
    dec [hl]                                      ; $6c15: $35
    ld a, [$1d6b]                                 ; $6c16: $fa $6b $1d
    db $db                                        ; $6c19: $db
    ld [hl], h                                    ; $6c1a: $74
    ld bc, $c8bc                                  ; $6c1b: $01 $bc $c8
    ld a, d                                       ; $6c1e: $7a
    ld e, e                                       ; $6c1f: $5b
    add l                                         ; $6c20: $85
    sub $9b                                       ; $6c21: $d6 $9b
    ld a, a                                       ; $6c23: $7f
    ld l, e                                       ; $6c24: $6b
    adc [hl]                                      ; $6c25: $8e
    ld l, d                                       ; $6c26: $6a
    db $f4                                        ; $6c27: $f4
    rst $10                                       ; $6c28: $d7
    ld a, [hl-]                                   ; $6c29: $3a
    or [hl]                                       ; $6c2a: $b6
    ret                                           ; $6c2b: $c9


    or $92                                        ; $6c2c: $f6 $92
    add a                                         ; $6c2e: $87
    ld l, l                                       ; $6c2f: $6d
    and c                                         ; $6c30: $a1
    or a                                          ; $6c31: $b7
    ld a, l                                       ; $6c32: $7d
    or e                                          ; $6c33: $b3
    ld d, a                                       ; $6c34: $57
    adc a                                         ; $6c35: $8f
    xor d                                         ; $6c36: $aa
    add sp, -$5c                                  ; $6c37: $e8 $a4
    and d                                         ; $6c39: $a2
    sbc e                                         ; $6c3a: $9b
    inc [hl]                                      ; $6c3b: $34
    ld b, a                                       ; $6c3c: $47

Jump_05d_6c3d:
    dec [hl]                                      ; $6c3d: $35
    jp c, $be6a                                   ; $6c3e: $da $6a $be

    push hl                                       ; $6c41: $e5
    rst $38                                       ; $6c42: $ff
    sbc d                                         ; $6c43: $9a
    cp a                                          ; $6c44: $bf
    inc sp                                        ; $6c45: $33
    ld c, d                                       ; $6c46: $4a
    cp a                                          ; $6c47: $bf
    di                                            ; $6c48: $f3
    sbc a                                         ; $6c49: $9f
    dec de                                        ; $6c4a: $1b
    nop                                           ; $6c4b: $00
    db $fc                                        ; $6c4c: $fc
    cp a                                          ; $6c4d: $bf
    ld sp, hl                                     ; $6c4e: $f9
    rst $38                                       ; $6c4f: $ff
    jp hl                                         ; $6c50: $e9


    sub a                                         ; $6c51: $97
    ld a, l                                       ; $6c52: $7d
    rst $38                                       ; $6c53: $ff
    adc e                                         ; $6c54: $8b
    ld h, l                                       ; $6c55: $65
    jp hl                                         ; $6c56: $e9


    sbc l                                         ; $6c57: $9d
    pop bc                                        ; $6c58: $c1
    and h                                         ; $6c59: $a4
    db $fc                                        ; $6c5a: $fc
    xor l                                         ; $6c5b: $ad
    add a                                         ; $6c5c: $87
    push af                                       ; $6c5d: $f5
    jp $ab6f                                      ; $6c5e: $c3 $6f $ab


    ld e, d                                       ; $6c61: $5a
    sbc e                                         ; $6c62: $9b
    rst $38                                       ; $6c63: $ff
    push bc                                       ; $6c64: $c5
    dec c                                         ; $6c65: $0d
    nop                                           ; $6c66: $00
    cp h                                          ; $6c67: $bc
    ret z                                         ; $6c68: $c8

    ld a, d                                       ; $6c69: $7a
    ld e, e                                       ; $6c6a: $5b
    ld h, a                                       ; $6c6b: $67
    ld h, b                                       ; $6c6c: $60
    cp $ad                                        ; $6c6d: $fe $ad
    add hl, sp                                    ; $6c6f: $39
    ld c, [hl]                                    ; $6c70: $4e
    rst $38                                       ; $6c71: $ff
    ld e, d                                       ; $6c72: $5a
    sub h                                         ; $6c73: $94
    ld l, h                                       ; $6c74: $6c
    jp Jump_05d_4adf                              ; $6c75: $c3 $df $4a


    ld a, [bc]                                    ; $6c78: $0a
    add $f9                                       ; $6c79: $c6 $f9
    ld a, [c]                                     ; $6c7b: $f2
    db $e3                                        ; $6c7c: $e3
    ld h, b                                       ; $6c7d: $60
    rst $30                                       ; $6c7e: $f7
    cp a                                          ; $6c7f: $bf
    ld a, [c]                                     ; $6c80: $f2
    or a                                          ; $6c81: $b7
    ld e, $d6                                     ; $6c82: $1e $d6
    rrca                                          ; $6c84: $0f
    ld a, a                                       ; $6c85: $7f
    ld l, c                                       ; $6c86: $69
    ld a, $9b                                     ; $6c87: $3e $9b

jr_05d_6c89:
    ld h, e                                       ; $6c89: $63
    call nc, Call_000_0005                        ; $6c8a: $d4 $05 $00
    cp h                                          ; $6c8d: $bc
    ret z                                         ; $6c8e: $c8

    ld a, d                                       ; $6c8f: $7a
    ld e, e                                       ; $6c90: $5b
    rlca                                          ; $6c91: $07
    scf                                           ; $6c92: $37
    db $ed                                        ; $6c93: $ed
    call $15bf                                    ; $6c94: $cd $bf $15
    or [hl]                                       ; $6c97: $b6
    ld e, e                                       ; $6c98: $5b
    sbc d                                         ; $6c99: $9a
    db $e3                                        ; $6c9a: $e3
    db $f4                                        ; $6c9b: $f4
    xor a                                         ; $6c9c: $af
    ld b, l                                       ; $6c9d: $45
    ret                                           ; $6c9e: $c9


    ld [hl], $fc                                  ; $6c9f: $36 $fc
    xor l                                         ; $6ca1: $ad
    and h                                         ; $6ca2: $a4
    ld h, b                                       ; $6ca3: $60
    sbc h                                         ; $6ca4: $9c
    xor a                                         ; $6ca5: $af
    sub h                                         ; $6ca6: $94
    sub [hl]                                      ; $6ca7: $96
    ld l, l                                       ; $6ca8: $6d
    ld e, e                                       ; $6ca9: $5b
    add h                                         ; $6caa: $84
    ld a, [c]                                     ; $6cab: $f2
    or a                                          ; $6cac: $b7
    ld e, $d6                                     ; $6cad: $1e $d6
    rrca                                          ; $6caf: $0f
    rst $38                                       ; $6cb0: $ff
    db $db                                        ; $6cb1: $db
    jp z, $b8cf                                   ; $6cb2: $ca $cf $b8

    ret c                                         ; $6cb5: $d8

    ld b, [hl]                                    ; $6cb6: $46
    ret                                           ; $6cb7: $c9


    and d                                         ; $6cb8: $a2
    sub h                                         ; $6cb9: $94
    db $dd                                        ; $6cba: $dd
    ld a, $b1                                     ; $6cbb: $3e $b1
    dec a                                         ; $6cbd: $3d
    add a                                         ; $6cbe: $87
    ld l, $00                                     ; $6cbf: $2e $00
    cp h                                          ; $6cc1: $bc
    ret z                                         ; $6cc2: $c8

    ld a, d                                       ; $6cc3: $7a
    ld e, e                                       ; $6cc4: $5b
    ld e, a                                       ; $6cc5: $5f
    adc l                                         ; $6cc6: $8d
    sbc e                                         ; $6cc7: $9b
    ld a, a                                       ; $6cc8: $7f

jr_05d_6cc9:
    res 6, [hl]                                   ; $6cc9: $cb $b6
    add $39                                       ; $6ccb: $c6 $39
    and c                                         ; $6ccd: $a1
    ld sp, hl                                     ; $6cce: $f9
    ld l, h                                       ; $6ccf: $6c
    adc $7d                                       ; $6cd0: $ce $7d
    ld l, [hl]                                    ; $6cd2: $6e
    nop                                           ; $6cd3: $00
    cp h                                          ; $6cd4: $bc
    ret z                                         ; $6cd5: $c8

    ld a, d                                       ; $6cd6: $7a
    ld e, e                                       ; $6cd7: $5b
    ld e, a                                       ; $6cd8: $5f
    db $fd                                        ; $6cd9: $fd
    ld sp, hl                                     ; $6cda: $f9
    or a                                          ; $6cdb: $b7
    ld l, h                                       ; $6cdc: $6c
    ld l, e                                       ; $6cdd: $6b
    sbc h                                         ; $6cde: $9c
    inc de                                        ; $6cdf: $13
    ld a, [hl-]                                   ; $6ce0: $3a
    ld l, e                                       ; $6ce1: $6b
    ld b, h                                       ; $6ce2: $44
    sbc d                                         ; $6ce3: $9a
    jr c, jr_05d_6cc9                             ; $6ce4: $38 $e3

    ld e, $e6                                     ; $6ce6: $1e $e6
    xor a                                         ; $6ce8: $af
    ld [hl], l                                    ; $6ce9: $75
    ld l, h                                       ; $6cea: $6c
    ld d, e                                       ; $6ceb: $53
    ld d, d                                       ; $6cec: $52
    jr nc, jr_05d_6c89                            ; $6ced: $30 $9a

    ld [hl], d                                    ; $6cef: $72
    call c, Call_05d_56fe                         ; $6cf0: $dc $fe $56
    db $d3                                        ; $6cf3: $d3
    ld c, l                                       ; $6cf4: $4d
    and l                                         ; $6cf5: $a5
    cp $b5                                        ; $6cf6: $fe $b5
    adc [hl]                                      ; $6cf8: $8e
    inc sp                                        ; $6cf9: $33
    adc d                                         ; $6cfa: $8a
    dec de                                        ; $6cfb: $1b
    nop                                           ; $6cfc: $00

jr_05d_6cfd:
    cp h                                          ; $6cfd: $bc
    ret z                                         ; $6cfe: $c8

Jump_05d_6cff:
    ld a, d                                       ; $6cff: $7a
    ld e, e                                       ; $6d00: $5b
    sub c                                         ; $6d01: $91
    ld c, [hl]                                    ; $6d02: $4e
    ld e, d                                       ; $6d03: $5a
    adc e                                         ; $6d04: $8b
    sbc h                                         ; $6d05: $9c
    ld e, d                                       ; $6d06: $5a
    di                                            ; $6d07: $f3
    ld [hl], a                                    ; $6d08: $77
    adc $8d                                       ; $6d09: $ce $8d
    jp nc, $b19d                                  ; $6d0b: $d2 $9d $b1

    add hl, sp                                    ; $6d0e: $39
    or e                                          ; $6d0f: $b3
    inc [hl]                                      ; $6d10: $34
    db $e3                                        ; $6d11: $e3
    sbc d                                         ; $6d12: $9a
    sub e                                         ; $6d13: $93
    ld [hl-], a                                   ; $6d14: $32
    db $eb                                        ; $6d15: $eb
    jr z, jr_05d_6cfd                             ; $6d16: $28 $e5

    cp a                                          ; $6d18: $bf
    ld [hl], e                                    ; $6d19: $73
    db $f4                                        ; $6d1a: $f4
    sbc b                                         ; $6d1b: $98
    ld d, $ad                                     ; $6d1c: $16 $ad
    and [hl]                                      ; $6d1e: $a6
    sbc e                                         ; $6d1f: $9b
    ld c, d                                       ; $6d20: $4a
    db $fd                                        ; $6d21: $fd
    ld l, e                                       ; $6d22: $6b
    dec e                                         ; $6d23: $1d
    ld h, a                                       ; $6d24: $67
    sub h                                         ; $6d25: $94
    ld e, $fe                                     ; $6d26: $1e $fe
    ld [c], a                                     ; $6d28: $e2
    ld b, $bc                                     ; $6d29: $06 $bc
    ret z                                         ; $6d2b: $c8

    ld a, d                                       ; $6d2c: $7a
    ld e, e                                       ; $6d2d: $5b
    ld a, $ae                                     ; $6d2e: $3e $ae
    push af                                       ; $6d30: $f5
    rst $20                                       ; $6d31: $e7
    rst $18                                       ; $6d32: $df
    sbc d                                         ; $6d33: $9a
    cp a                                          ; $6d34: $bf
    ld [hl], e                                    ; $6d35: $73
    xor [hl]                                      ; $6d36: $ae
    ld a, h                                       ; $6d37: $7c
    and d                                         ; $6d38: $a2
    ld [hl], e                                    ; $6d39: $73
    jp nz, $e756                                  ; $6d3a: $c2 $56 $e7

    dec hl                                        ; $6d3d: $2b
    and c                                         ; $6d3e: $a1
    add sp, -$18                                  ; $6d3f: $e8 $e8
    pop de                                        ; $6d41: $d1
    sbc d                                         ; $6d42: $9a
    bit 6, b                                      ; $6d43: $cb $70
    ld c, h                                       ; $6d45: $4c
    adc e                                         ; $6d46: $8b
    and $06                                       ; $6d47: $e6 $06
    cp h                                          ; $6d49: $bc
    ret z                                         ; $6d4a: $c8

    ld a, d                                       ; $6d4b: $7a
    ld e, e                                       ; $6d4c: $5b
    dec e                                         ; $6d4d: $1d
    ld [hl], e                                    ; $6d4e: $73
    ld [hl], e                                    ; $6d4f: $73
    ld l, d                                       ; $6d50: $6a
    reti                                          ; $6d51: $d9


    sub $b0                                       ; $6d52: $d6 $b0
    ld a, [hl]                                    ; $6d54: $7e
    push hl                                       ; $6d55: $e5
    cp a                                          ; $6d56: $bf
    inc sp                                        ; $6d57: $33
    sbc $7a                                       ; $6d58: $de $7a
    sub l                                         ; $6d5a: $95
    cp $e7                                        ; $6d5b: $fe $e7
    cp b                                          ; $6d5d: $b8
    dec e                                         ; $6d5e: $1d
    db $dd                                        ; $6d5f: $dd
    sbc a                                         ; $6d60: $9f
    ld a, a                                       ; $6d61: $7f
    ld [hl], c                                    ; $6d62: $71
    inc bc                                        ; $6d63: $03
    cp h                                          ; $6d64: $bc
    ret z                                         ; $6d65: $c8

    ld a, d                                       ; $6d66: $7a
    ld e, e                                       ; $6d67: $5b
    adc l                                         ; $6d68: $8d
    inc c                                         ; $6d69: $0c
    ld e, $f9                                     ; $6d6a: $1e $f9
    or a                                          ; $6d6c: $b7
    ret nc                                        ; $6d6d: $d0

    cp [hl]                                       ; $6d6e: $be
    ld [hl], h                                    ; $6d6f: $74
    xor a                                         ; $6d70: $af
    dec [hl]                                      ; $6d71: $35
    xor c                                         ; $6d72: $a9
    ccf                                           ; $6d73: $3f
    db $fd                                        ; $6d74: $fd
    or d                                          ; $6d75: $b2
    ld d, a                                       ; $6d76: $57
    add d                                         ; $6d77: $82
    ld e, c                                       ; $6d78: $59
    ld h, [hl]                                    ; $6d79: $66
    ld l, e                                       ; $6d7a: $6b
    ld h, c                                       ; $6d7b: $61
    ld c, l                                       ; $6d7c: $4d
    ld [$dd5f], a                                 ; $6d7d: $ea $5f $dd
    rst $38                                       ; $6d80: $ff
    add hl, bc                                    ; $6d81: $09
    xor l                                         ; $6d82: $ad
    add l                                         ; $6d83: $85
    push af                                       ; $6d84: $f5
    dec hl                                        ; $6d85: $2b
    call $e6b8                                    ; $6d86: $cd $b8 $e6
    and h                                         ; $6d89: $a4
    ld l, h                                       ; $6d8a: $6c
    ld e, d                                       ; $6d8b: $5a
    ld e, b                                       ; $6d8c: $58
    inc de                                        ; $6d8d: $13
    scf                                           ; $6d8e: $37
    nop                                           ; $6d8f: $00
    db $fc                                        ; $6d90: $fc
    and e                                         ; $6d91: $a3

Call_05d_6d92:
    ld a, [hl+]                                   ; $6d92: $2a
    ld e, d                                       ; $6d93: $5a
    ld a, b                                       ; $6d94: $78
    ret nc                                        ; $6d95: $d0

    ld d, [hl]                                    ; $6d96: $56
    add hl, sp                                    ; $6d97: $39
    xor $fd                                       ; $6d98: $ee $fd
    ld [hl], e                                    ; $6d9a: $73
    cp $df                                        ; $6d9b: $fe $df
    rst $30                                       ; $6d9d: $f7
    ld c, a                                       ; $6d9e: $4f
    db $db                                        ; $6d9f: $db
    ld c, e                                       ; $6da0: $4b
    ld e, $8f                                     ; $6da1: $1e $8f
    ld [hl], c                                    ; $6da3: $71
    and d                                         ; $6da4: $a2
    sub e                                         ; $6da5: $93
    adc d                                         ; $6da6: $8a
    ld l, [hl]                                    ; $6da7: $6e
    jp nc, $371c                                  ; $6da8: $d2 $1c $37

    ld l, [hl]                                    ; $6dab: $6e
    rrca                                          ; $6dac: $0f
    ld [hl], e                                    ; $6dad: $73
    and $e0                                       ; $6dae: $e6 $e0
    or [hl]                                       ; $6db0: $b6
    dec c                                         ; $6db1: $0d
    reti                                          ; $6db2: $d9


    ld a, a                                       ; $6db3: $7f
    rst $30                                       ; $6db4: $f7
    xor a                                         ; $6db5: $af
    xor l                                         ; $6db6: $ad
    ldh a, [$9c]                                  ; $6db7: $f0 $9c
    ld d, a                                       ; $6db9: $57
    ld h, l                                       ; $6dba: $65
    xor l                                         ; $6dbb: $ad
    adc [hl]                                      ; $6dbc: $8e
    inc d                                         ; $6dbd: $14
    rst $20                                       ; $6dbe: $e7
    db $fc                                        ; $6dbf: $fc
    cp a                                          ; $6dc0: $bf
    db $fd                                        ; $6dc1: $fd
    cp l                                          ; $6dc2: $bd
    nop                                           ; $6dc3: $00
    cp h                                          ; $6dc4: $bc
    ret z                                         ; $6dc5: $c8

    ld a, d                                       ; $6dc6: $7a
    ld e, e                                       ; $6dc7: $5b
    inc de                                        ; $6dc8: $13
    db $fd                                        ; $6dc9: $fd
    push bc                                       ; $6dca: $c5
    call $65bf                                    ; $6dcb: $cd $bf $65
    ld e, e                                       ; $6dce: $5b
    jp Jump_000_35fa                              ; $6dcf: $c3 $fa $35


    ld a, a                                       ; $6dd2: $7f
    jp c, $a52a                                   ; $6dd3: $da $2a $a5

    dec a                                         ; $6dd6: $3d
    ld e, c                                       ; $6dd7: $59
    ld c, [hl]                                    ; $6dd8: $4e
    and h                                         ; $6dd9: $a4
    add hl, sp                                    ; $6dda: $39
    ld a, [c]                                     ; $6ddb: $f2
    add a                                         ; $6ddc: $87
    ld a, a                                       ; $6ddd: $7f
    xor l                                         ; $6dde: $ad
    ccf                                           ; $6ddf: $3f
    add hl, hl                                    ; $6de0: $29
    jr jr_05d_6e5e                                ; $6de1: $18 $7b

    cp [hl]                                       ; $6de3: $be
    ld d, d                                       ; $6de4: $52
    ld e, d                                       ; $6de5: $5a
    or [hl]                                       ; $6de6: $b6
    ld l, l                                       ; $6de7: $6d
    sub c                                         ; $6de8: $91
    ld d, e                                       ; $6de9: $53
    dec hl                                        ; $6dea: $2b
    ld a, a                                       ; $6deb: $7f
    db $eb                                        ; $6dec: $eb
    ld h, c                                       ; $6ded: $61
    db $fd                                        ; $6dee: $fd
    ldh a, [$be]                                  ; $6def: $f0 $be
    db $ed                                        ; $6df1: $ed
    dec b                                         ; $6df2: $05
    nop                                           ; $6df3: $00
    cp h                                          ; $6df4: $bc
    ret z                                         ; $6df5: $c8

    ld a, [hl-]                                   ; $6df6: $3a
    or $9c                                        ; $6df7: $f6 $9c
    ld d, a                                       ; $6df9: $57
    xor h                                         ; $6dfa: $ac
    adc d                                         ; $6dfb: $8a
    or d                                          ; $6dfc: $b2
    ld l, [hl]                                    ; $6dfd: $6e
    xor d                                         ; $6dfe: $aa
    xor h                                         ; $6dff: $ac
    add l                                         ; $6e00: $85
    daa                                           ; $6e01: $27
    ld a, [c]                                     ; $6e02: $f2
    cpl                                           ; $6e03: $2f
    reti                                          ; $6e04: $d9


    sub $18                                       ; $6e05: $d6 $18
    and l                                         ; $6e07: $a5
    ld a, e                                       ; $6e08: $7b
    sbc e                                         ; $6e09: $9b
    xor b                                         ; $6e0a: $a8
    sub h                                         ; $6e0b: $94
    rst $38                                       ; $6e0c: $ff
    adc $d1                                       ; $6e0d: $ce $d1
    jp Jump_000_2ffa                              ; $6e0f: $c3 $fa $2f


    ld a, c                                       ; $6e12: $79
    cp $d6                                        ; $6e13: $fe $d6
    jp $e1fa                                      ; $6e15: $c3 $fa $e1


    or a                                          ; $6e18: $b7
    sub l                                         ; $6e19: $95
    add l                                         ; $6e1a: $85
    ld l, h                                       ; $6e1b: $6c
    pop hl                                        ; $6e1c: $e1
    rst $38                                       ; $6e1d: $ff
    ld d, d                                       ; $6e1e: $52
    ld d, c                                       ; $6e1f: $51
    sub $4d                                       ; $6e20: $d6 $4d
    and h                                         ; $6e22: $a4
    db $fc                                        ; $6e23: $fc
    db $d3                                        ; $6e24: $d3
    inc a                                         ; $6e25: $3c
    xor $fb                                       ; $6e26: $ee $fb
    ld c, a                                       ; $6e28: $4f
    rst $38                                       ; $6e29: $ff
    dec b                                         ; $6e2a: $05
    nop                                           ; $6e2b: $00
    cp h                                          ; $6e2c: $bc
    ret z                                         ; $6e2d: $c8

    ld a, d                                       ; $6e2e: $7a
    ld e, e                                       ; $6e2f: $5b
    dec a                                         ; $6e30: $3d
    ld b, $64                                     ; $6e31: $06 $64
    cp e                                          ; $6e33: $bb
    scf                                           ; $6e34: $37
    rst $38                                       ; $6e35: $ff
    ld d, [hl]                                    ; $6e36: $56
    cp $d6                                        ; $6e37: $fe $d6
    jp $e1fa                                      ; $6e39: $c3 $fa $e1


    or a                                          ; $6e3c: $b7
    push de                                       ; $6e3d: $d5
    xor b                                         ; $6e3e: $a8

jr_05d_6e3f:
    adc b                                         ; $6e3f: $88
    ld c, d                                       ; $6e40: $4a
    ld a, [bc]                                    ; $6e41: $0a
    ld a, [hl]                                    ; $6e42: $7e
    dec [hl]                                      ; $6e43: $35
    or d                                          ; $6e44: $b2
    add hl, sp                                    ; $6e45: $39
    ld b, a                                       ; $6e46: $47
    cp $ad                                        ; $6e47: $fe $ad
    db $fc                                        ; $6e49: $fc
    xor l                                         ; $6e4a: $ad
    add a                                         ; $6e4b: $87
    push af                                       ; $6e4c: $f5
    jp $e9df                                      ; $6e4d: $c3 $df $e9


    sub a                                         ; $6e50: $97
    ld h, d                                       ; $6e51: $62
    ld [hl], e                                    ; $6e52: $73
    ld l, d                                       ; $6e53: $6a
    and l                                         ; $6e54: $a5
    add hl, de                                    ; $6e55: $19
    rst $10                                       ; $6e56: $d7
    sbc h                                         ; $6e57: $9c
    ld b, h                                       ; $6e58: $44
    call c, $bc00                                 ; $6e59: $dc $00 $bc
    ret z                                         ; $6e5c: $c8

    ld a, d                                       ; $6e5d: $7a

jr_05d_6e5e:
    ld e, e                                       ; $6e5e: $5b
    rst $30                                       ; $6e5f: $f7
    jr jr_05d_6e3f                                ; $6e60: $18 $dd

    sbc e                                         ; $6e62: $9b
    ld a, a                                       ; $6e63: $7f
    dec bc                                        ; $6e64: $0b
    add $9a                                       ; $6e65: $c6 $9a
    ld e, e                                       ; $6e67: $5b

Call_05d_6e68:
    ld [$9fcf], a                                 ; $6e68: $ea $cf $9f
    pop hl                                        ; $6e6b: $e1
    ld e, d                                       ; $6e6c: $5a
    cp a                                          ; $6e6d: $bf
    db $ed                                        ; $6e6e: $ed
    ld [hl], l                                    ; $6e6f: $75
    ld e, l                                       ; $6e70: $5d
    or d                                          ; $6e71: $b2
    ld h, [hl]                                    ; $6e72: $66
    and e                                         ; $6e73: $a3
    ld l, l                                       ; $6e74: $6d
    set 0, [hl]                                   ; $6e75: $cb $c6
    ld sp, hl                                     ; $6e77: $f9
    ld l, c                                       ; $6e78: $69
    dec bc                                        ; $6e79: $0b
    push bc                                       ; $6e7a: $c5
    dec c                                         ; $6e7b: $0d
    nop                                           ; $6e7c: $00
    cp h                                          ; $6e7d: $bc
    ret z                                         ; $6e7e: $c8

    ld a, d                                       ; $6e7f: $7a
    ld e, e                                       ; $6e80: $5b
    add hl, sp                                    ; $6e81: $39
    xor $bd                                       ; $6e82: $ee $bd
    sub $9f                                       ; $6e84: $d6 $9f
    ld a, a                                       ; $6e86: $7f
    db $eb                                        ; $6e87: $eb
    ldh [$b6], a                                  ; $6e88: $e0 $b6
    dec c                                         ; $6e8a: $0d
    ld hl, sp+$6d                                 ; $6e8b: $f8 $6d
    push de                                       ; $6e8d: $d5
    ld [hl], h                                    ; $6e8e: $74
    ld d, e                                       ; $6e8f: $53
    xor c                                         ; $6e90: $a9
    ld a, a                                       ; $6e91: $7f
    xor l                                         ; $6e92: $ad
    db $e3                                        ; $6e93: $e3
    adc h                                         ; $6e94: $8c
    jp nc, Jump_05d_5fc3                          ; $6e95: $d2 $c3 $5f

    call c, $bc00                                 ; $6e98: $dc $00 $bc
    ret z                                         ; $6e9b: $c8

    cp d                                          ; $6e9c: $ba
    scf                                           ; $6e9d: $37
    ld c, d                                       ; $6e9e: $4a
    ld e, a                                       ; $6e9f: $5f
    or [hl]                                       ; $6ea0: $b6
    ld l, b                                       ; $6ea1: $68
    db $fd                                        ; $6ea2: $fd
    jp nz, $ad13                                  ; $6ea3: $c2 $13 $ad

    and [hl]                                      ; $6ea6: $a6
    sbc e                                         ; $6ea7: $9b
    ld c, d                                       ; $6ea8: $4a
    db $fd                                        ; $6ea9: $fd
    ld l, e                                       ; $6eaa: $6b
    dec e                                         ; $6eab: $1d
    ld h, a                                       ; $6eac: $67
    sub h                                         ; $6ead: $94
    ld e, $fe                                     ; $6eae: $1e $fe
    jp nc, $f7de                                  ; $6eb0: $d2 $de $f7

    jr @-$49                                      ; $6eb3: $18 $b5

    cp d                                          ; $6eb5: $ba
    inc sp                                        ; $6eb6: $33
    ld [hl], $b3                                  ; $6eb7: $36 $b3
    ld [hl], e                                    ; $6eb9: $73
    ld [c], a                                     ; $6eba: $e2
    ld [bc], a                                    ; $6ebb: $02
    cp h                                          ; $6ebc: $bc
    ret z                                         ; $6ebd: $c8

    cp d                                          ; $6ebe: $ba
    scf                                           ; $6ebf: $37
    ld c, d                                       ; $6ec0: $4a
    ld a, $91                                     ; $6ec1: $3e $91
    dec [hl]                                      ; $6ec3: $35
    db $dd                                        ; $6ec4: $dd
    and h                                         ; $6ec5: $a4
    cp c                                          ; $6ec6: $b9
    ld [hl], a                                    ; $6ec7: $77
    sub b                                         ; $6ec8: $90
    and $b2                                       ; $6ec9: $e6 $b2
    add hl, sp                                    ; $6ecb: $39
    ld [$c7e5], a                                 ; $6ecc: $ea $e5 $c7
    ld hl, $aceb                                  ; $6ecf: $21 $eb $ac
    sbc e                                         ; $6ed2: $9b
    ld c, b                                       ; $6ed3: $48
    ld e, c                                       ; $6ed4: $59

jr_05d_6ed5:
    ld a, [bc]                                    ; $6ed5: $0a
    adc c                                         ; $6ed6: $89
    ld d, d                                       ; $6ed7: $52
    cp $d6                                        ; $6ed8: $fe $d6
    jp $e1fa                                      ; $6eda: $c3 $fa $e1


    or l                                          ; $6edd: $b5
    ld a, [hl]                                    ; $6ede: $7e
    ld e, e                                       ; $6edf: $5b
    push af                                       ; $6ee0: $f5
    ld b, [hl]                                    ; $6ee1: $46
    ld a, [de]                                    ; $6ee2: $1a
    ld h, l                                       ; $6ee3: $65
    ld [hl], h                                    ; $6ee4: $74
    ld bc, $c8bc                                  ; $6ee5: $01 $bc $c8
    ld a, [hl-]                                   ; $6ee8: $3a
    sub $fa                                       ; $6ee9: $d6 $fa
    ld [hl], l                                    ; $6eeb: $75
    jr z, @-$11                                   ; $6eec: $28 $ed

    ld [$b4a5], sp                                ; $6eee: $08 $a5 $b4
    ld l, h                                       ; $6ef1: $6c
    db $db                                        ; $6ef2: $db
    ld [hl+], a                                   ; $6ef3: $22
    daa                                           ; $6ef4: $27
    jp nc, Jump_05d_6c3d                          ; $6ef5: $d2 $3d $6c

    ld [hl], a                                    ; $6ef8: $77
    adc $fd                                       ; $6ef9: $ce $fd
    and h                                         ; $6efb: $a4
    ld h, b                                       ; $6efc: $60
    xor h                                         ; $6efd: $ac
    ld sp, hl                                     ; $6efe: $f9
    jp z, Jump_05d_4e07                           ; $6eff: $ca $07 $4e

    ld e, e                                       ; $6f02: $5b
    push hl                                       ; $6f03: $e5
    ld l, a                                       ; $6f04: $6f
    dec a                                         ; $6f05: $3d
    xor h                                         ; $6f06: $ac
    rra                                           ; $6f07: $1f
    ld a, [hl]                                    ; $6f08: $7e

jr_05d_6f09:
    ld e, e                                       ; $6f09: $5b
    db $dd                                        ; $6f0a: $dd
    ld d, c                                       ; $6f0b: $51
    pop de                                        ; $6f0c: $d1
    ld c, l                                       ; $6f0d: $4d
    and h                                         ; $6f0e: $a4
    ld a, h                                       ; $6f0f: $7c
    jr nz, jr_05d_6ed5                            ; $6f10: $20 $c3

    cp d                                          ; $6f12: $ba
    nop                                           ; $6f13: $00
    cp h                                          ; $6f14: $bc
    ret z                                         ; $6f15: $c8

    ld a, [hl-]                                   ; $6f16: $3a
    sub $fa                                       ; $6f17: $d6 $fa
    ld [hl], l                                    ; $6f19: $75
    jr z, jr_05d_6f09                             ; $6f1a: $28 $ed

    ld [$1fb1], sp                                ; $6f1c: $08 $b1 $1f
    add hl, hl                                    ; $6f1f: $29
    ld l, [hl]                                    ; $6f20: $6e
    rst $30                                       ; $6f21: $f7
    rst $20                                       ; $6f22: $e7
    rst $38                                       ; $6f23: $ff
    cp d                                          ; $6f24: $ba
    add a                                         ; $6f25: $87
    db $ed                                        ; $6f26: $ed
    adc $b9                                       ; $6f27: $ce $b9
    sbc a                                         ; $6f29: $9f
    inc d                                         ; $6f2a: $14
    adc h                                         ; $6f2b: $8c
    di                                            ; $6f2c: $f3
    push de                                       ; $6f2d: $d5
    ld h, e                                       ; $6f2e: $63
    ld b, b                                       ; $6f2f: $40
    or [hl]                                       ; $6f30: $b6
    ei                                            ; $6f31: $fb
    ld e, a                                       ; $6f32: $5f
    ld e, c                                       ; $6f33: $59
    ld a, [bc]                                    ; $6f34: $0a
    adc c                                         ; $6f35: $89
    ld d, d                                       ; $6f36: $52
    cp $d6                                        ; $6f37: $fe $d6
    jp $e1fa                                      ; $6f39: $c3 $fa $e1


    or l                                          ; $6f3c: $b5
    ld a, [hl]                                    ; $6f3d: $7e
    ld e, e                                       ; $6f3e: $5b
    adc l                                         ; $6f3f: $8d
    adc d                                         ; $6f40: $8a
    xor b                                         ; $6f41: $a8
    dec bc                                        ; $6f42: $0b
    nop                                           ; $6f43: $00
    cp h                                          ; $6f44: $bc
    ret z                                         ; $6f45: $c8

    ld a, d                                       ; $6f46: $7a
    ld e, e                                       ; $6f47: $5b
    di                                            ; $6f48: $f3
    dec l                                         ; $6f49: $2d
    rst $38                                       ; $6f4a: $ff
    xor $cd                                       ; $6f4b: $ee $cd
    cp a                                          ; $6f4d: $bf
    push de                                       ; $6f4e: $d5
    cp a                                          ; $6f4f: $bf
    di                                            ; $6f50: $f3
    rst $20                                       ; $6f51: $e7
    sbc b                                         ; $6f52: $98
    ld [hl], e                                    ; $6f53: $73
    ccf                                           ; $6f54: $3f
    add hl, hl                                    ; $6f55: $29
    jr jr_05d_6fd3                                ; $6f56: $18 $7b

    cp [hl]                                       ; $6f58: $be
    jp nc, $8b5f                                  ; $6f59: $d2 $5f $8b

    db $fc                                        ; $6f5c: $fc
    ld e, e                                       ; $6f5d: $5b
    di                                            ; $6f5e: $f3
    reti                                          ; $6f5f: $d9


    dec e                                         ; $6f60: $1d
    ld a, a                                       ; $6f61: $7f
    ld c, [hl]                                    ; $6f62: $4e
    ld [hl], b                                    ; $6f63: $70
    adc e                                         ; $6f64: $8b
    rst $20                                       ; $6f65: $e7
    pop hl                                        ; $6f66: $e1
    ld hl, $57fb                                  ; $6f67: $21 $fb $57
    cp $d6                                        ; $6f6a: $fe $d6
    jp $e1fa                                      ; $6f6c: $c3 $fa $e1


    or a                                          ; $6f6f: $b7
    ld d, l                                       ; $6f70: $55
    adc [hl]                                      ; $6f71: $8e
    ld a, e                                       ; $6f72: $7b
    rst $38                                       ; $6f73: $ff
    sub a                                         ; $6f74: $97
    db $fc                                        ; $6f75: $fc
    ld c, a                                       ; $6f76: $4f
    ld [hl], c                                    ; $6f77: $71
    db $eb                                        ; $6f78: $eb
    ld [bc], a                                    ; $6f79: $02
    cp h                                          ; $6f7a: $bc
    ret z                                         ; $6f7b: $c8

    ld a, d                                       ; $6f7c: $7a
    ld e, e                                       ; $6f7d: $5b
    ld b, l                                       ; $6f7e: $45
    ld e, c                                       ; $6f7f: $59
    rst $30                                       ; $6f80: $f7
    and $d4                                       ; $6f81: $e6 $d4
    ld c, d                                       ; $6f83: $4a
    rla                                           ; $6f84: $17
    ld a, [c]                                     ; $6f85: $f2
    sub $9f                                       ; $6f86: $d6 $9f
    ld a, a                                       ; $6f88: $7f
    add hl, hl                                    ; $6f89: $29
    ld a, a                                       ; $6f8a: $7f
    db $eb                                        ; $6f8b: $eb
    ld h, c                                       ; $6f8c: $61
    db $fd                                        ; $6f8d: $fd
    ldh a, [$bf]                                  ; $6f8e: $f0 $bf
    dec l                                         ; $6f90: $2d
    scf                                           ; $6f91: $37
    nop                                           ; $6f92: $00
    ld e, $d1                                     ; $6f93: $1e $d1
    ld c, l                                       ; $6f95: $4d
    add hl, hl                                    ; $6f96: $29
    ld h, h                                       ; $6f97: $64
    ld e, e                                       ; $6f98: $5b
    cp $ef                                        ; $6f99: $fe $ef
    db $fc                                        ; $6f9b: $fc
    ld [hl], e                                    ; $6f9c: $73
    jp nz, Jump_05d_7356                          ; $6f9d: $c2 $56 $73

    ld l, h                                       ; $6fa0: $6c
    xor c                                         ; $6fa1: $a9
    ld l, c                                       ; $6fa2: $69
    push de                                       ; $6fa3: $d5
    pop bc                                        ; $6fa4: $c1
    ld a, [c]                                     ; $6fa5: $f2
    rst $38                                       ; $6fa6: $ff
    cp d                                          ; $6fa7: $ba
    call nz, $374f                                ; $6fa8: $c4 $4f $37
    sub l                                         ; $6fab: $95
    sbc d                                         ; $6fac: $9a
    or d                                          ; $6fad: $b2
    adc $32                                       ; $6fae: $ce $32
    pop bc                                        ; $6fb0: $c1
    sbc b                                         ; $6fb1: $98
    or $78                                        ; $6fb2: $f6 $78
    ld c, l                                       ; $6fb4: $4d
    ld h, h                                       ; $6fb5: $64
    dec e                                         ; $6fb6: $1d
    ld l, e                                       ; $6fb7: $6b
    db $fd                                        ; $6fb8: $fd
    call c, $bc00                                 ; $6fb9: $dc $00 $bc
    ret z                                         ; $6fbc: $c8

    ld a, d                                       ; $6fbd: $7a
    ld e, e                                       ; $6fbe: $5b
    add l                                         ; $6fbf: $85
    sub $df                                       ; $6fc0: $d6 $df

jr_05d_6fc2:
    db $fd                                        ; $6fc2: $fd
    ld sp, hl                                     ; $6fc3: $f9
    or a                                          ; $6fc4: $b7
    db $fc                                        ; $6fc5: $fc
    sub c                                         ; $6fc6: $91
    ld c, $b6                                     ; $6fc7: $0e $b6
    sub l                                         ; $6fc9: $95
    inc d                                         ; $6fca: $14
    adc h                                         ; $6fcb: $8c
    di                                            ; $6fcc: $f3
    sub l                                         ; $6fcd: $95
    ld l, a                                       ; $6fce: $6f
    jr z, jr_05d_7050                             ; $6fcf: $28 $7f

    db $eb                                        ; $6fd1: $eb

Call_05d_6fd2:
    ld h, c                                       ; $6fd2: $61

jr_05d_6fd3:
    db $fd                                        ; $6fd3: $fd
    ldh a, [$db]                                  ; $6fd4: $f0 $db
    ld [$aa8e], a                                 ; $6fd6: $ea $8e $aa
    jr nc, @+$25                                  ; $6fd9: $30 $23

    xor d                                         ; $6fdb: $aa
    dec bc                                        ; $6fdc: $0b
    nop                                           ; $6fdd: $00
    cp h                                          ; $6fde: $bc
    ret z                                         ; $6fdf: $c8

    ld a, d                                       ; $6fe0: $7a
    ld e, e                                       ; $6fe1: $5b
    rst $30                                       ; $6fe2: $f7
    jr jr_05d_6fc2                                ; $6fe3: $18 $dd

    sbc e                                         ; $6fe5: $9b
    ld a, a                                       ; $6fe6: $7f
    dec hl                                        ; $6fe7: $2b
    ld a, a                                       ; $6fe8: $7f
    db $eb                                        ; $6fe9: $eb
    ld h, c                                       ; $6fea: $61
    db $fd                                        ; $6feb: $fd
    ldh a, [$db]                                  ; $6fec: $f0 $db
    ld e, [hl]                                    ; $6fee: $5e
    rst $10                                       ; $6fef: $d7
    dec h                                         ; $6ff0: $25
    jr @-$57                                      ; $6ff1: $18 $a7

    db $ed                                        ; $6ff3: $ed
    call c, Call_05d_6fd2                         ; $6ff4: $dc $d2 $6f
    cp $a5                                        ; $6ff7: $fe $a5
    ld a, e                                       ; $6ff9: $7b
    adc h                                         ; $6ffa: $8c
    ld l, c                                       ; $6ffb: $69
    ld a, e                                       ; $6ffc: $7b
    ld bc, $c8bc                                  ; $6ffd: $01 $bc $c8
    ld a, d                                       ; $7000: $7a
    ld e, e                                       ; $7001: $5b
    dec a                                         ; $7002: $3d
    db $fc                                        ; $7003: $fc
    di                                            ; $7004: $f3
    sbc a                                         ; $7005: $9f
    ld a, a                                       ; $7006: $7f
    ld l, e                                       ; $7007: $6b
    adc [hl]                                      ; $7008: $8e
    ld l, d                                       ; $7009: $6a
    db $f4                                        ; $700a: $f4
    rst $10                                       ; $700b: $d7
    ld a, [hl-]                                   ; $700c: $3a
    jp nz, $4d56                                  ; $700d: $c2 $56 $4d

    scf                                           ; $7010: $37
    sub l                                         ; $7011: $95
    ld a, [$3ad7]                                 ; $7012: $fa $d7 $3a
    adc $28                                       ; $7015: $ce $28
    dec a                                         ; $7017: $3d
    db $fc                                        ; $7018: $fc
    db $d3                                        ; $7019: $d3
    sub [hl]                                      ; $701a: $96
    dec de                                        ; $701b: $1b
    nop                                           ; $701c: $00
    cp h                                          ; $701d: $bc
    ret z                                         ; $701e: $c8

    ld a, d                                       ; $701f: $7a
    ld e, e                                       ; $7020: $5b
    ld a, $ae                                     ; $7021: $3e $ae
    push af                                       ; $7023: $f5
    rst $20                                       ; $7024: $e7
    rst $18                                       ; $7025: $df
    sbc d                                         ; $7026: $9a
    cp a                                          ; $7027: $bf
    ld [hl], e                                    ; $7028: $73
    xor [hl]                                      ; $7029: $ae
    xor $8c                                       ; $702a: $ee $8c
    call $c199                                    ; $702c: $cd $99 $c1
    ld d, c                                       ; $702f: $51
    add d                                         ; $7030: $82
    ld e, a                                       ; $7031: $5f
    jp hl                                         ; $7032: $e9


    ld l, a                                       ; $7033: $6f
    rst $38                                       ; $7034: $ff
    add hl, sp                                    ; $7035: $39
    ld l, e                                       ; $7036: $6b
    dec e                                         ; $7037: $1d
    and l                                         ; $7038: $a5
    cp $9d                                        ; $7039: $fe $9d
    ld [$2947], sp                                ; $703b: $08 $47 $29
    rst $38                                       ; $703e: $ff
    sbc l                                         ; $703f: $9d
    and e                                         ; $7040: $a3
    rst $00                                       ; $7041: $c7
    or h                                          ; $7042: $b4
    ld l, b                                       ; $7043: $68
    ld sp, hl                                     ; $7044: $f9
    ld b, h                                       ; $7045: $44
    and a                                         ; $7046: $a7
    ret                                           ; $7047: $c9


    sub [hl]                                      ; $7048: $96
    dec de                                        ; $7049: $1b
    nop                                           ; $704a: $00
    cp h                                          ; $704b: $bc
    ret z                                         ; $704c: $c8

    ld a, d                                       ; $704d: $7a
    ld e, e                                       ; $704e: $5b
    ccf                                           ; $704f: $3f

jr_05d_7050:
    cp d                                          ; $7050: $ba
    ccf                                           ; $7051: $3f
    rst $38                                       ; $7052: $ff
    sub [hl]                                      ; $7053: $96
    ld l, l                                       ; $7054: $6d
    adc l                                         ; $7055: $8d
    ld d, a                                       ; $7056: $57
    halt                                          ; $7057: $76
    rst $18                                       ; $7058: $df
    call nz, $6e9a                                ; $7059: $c4 $9a $6e
    and d                                         ; $705c: $a2
    ld c, d                                       ; $705d: $4a
    ld [$6b5e], a                                 ; $705e: $ea $5e $6b
    ld d, d                                       ; $7061: $52
    adc [hl]                                      ; $7062: $8e
    ld l, e                                       ; $7063: $6b
    xor e                                         ; $7064: $ab
    jp $7595                                      ; $7065: $c3 $95 $75


    ld b, [hl]                                    ; $7068: $46
    ld c, d                                       ; $7069: $4a
    pop de                                        ; $706a: $d1
    adc a                                         ; $706b: $8f
    or a                                          ; $706c: $b7
    ld h, l                                       ; $706d: $65
    cp [hl]                                       ; $706e: $be
    rra                                           ; $706f: $1f
    jr nc, jr_05d_70e3                            ; $7070: $30 $71

    inc bc                                        ; $7072: $03
    cp h                                          ; $7073: $bc
    ret z                                         ; $7074: $c8

    ld a, d                                       ; $7075: $7a
    ld e, e                                       ; $7076: $5b
    add hl, hl                                    ; $7077: $29
    adc [hl]                                      ; $7078: $8e
    add hl, sp                                    ; $7079: $39
    cp d                                          ; $707a: $ba
    db $e3                                        ; $707b: $e3
    ld b, h                                       ; $707c: $44
    cp $2d                                        ; $707d: $fe $2d
    ld a, a                                       ; $707f: $7f
    ldh [$89], a                                  ; $7080: $e0 $89
    jr z, jr_05d_70ff                             ; $7082: $28 $7b

    and l                                         ; $7084: $a5
    set 6, d                                      ; $7085: $cb $f2
    push hl                                       ; $7087: $e5
    jp c, Jump_05d_4ba6                           ; $7088: $da $a6 $4b

    ld e, $e1                                     ; $708b: $1e $e1
    add b                                         ; $708d: $80
    adc h                                         ; $708e: $8c
    ld d, [hl]                                    ; $708f: $56
    ld a, [de]                                    ; $7090: $1a
    dec a                                         ; $7091: $3d
    and e                                         ; $7092: $a3
    db $f4                                        ; $7093: $f4
    dec sp                                        ; $7094: $3b
    rst $38                                       ; $7095: $ff
    dec [hl]                                      ; $7096: $35
    inc l                                         ; $7097: $2c
    cp $f6                                        ; $7098: $fe $f6
    ld [hl], a                                    ; $709a: $77
    ld c, e                                       ; $709b: $4b
    rst $30                                       ; $709c: $f7
    ld a, a                                       ; $709d: $7f
    ld b, d                                       ; $709e: $42
    ld l, e                                       ; $709f: $6b
    cp e                                          ; $70a0: $bb
    and l                                         ; $70a1: $a5
    cp $b5                                        ; $70a2: $fe $b5
    adc [hl]                                      ; $70a4: $8e
    inc sp                                        ; $70a5: $33
    ld [hl], $dd                                  ; $70a6: $36 $dd
    jp nc, Jump_05d_5b1c                          ; $70a8: $d2 $1c $5b

    ld [$ffcf], a                                 ; $70ab: $ea $cf $ff
    sbc h                                         ; $70ae: $9c
    or l                                          ; $70af: $b5
    or b                                          ; $70b0: $b0
    sbc $0b                                       ; $70b1: $de $0b
    nop                                           ; $70b3: $00
    cp h                                          ; $70b4: $bc
    ret z                                         ; $70b5: $c8

    ld a, [hl-]                                   ; $70b6: $3a
    sub $fa                                       ; $70b7: $d6 $fa
    add l                                         ; $70b9: $85
    ld h, a                                       ; $70ba: $67
    push hl                                       ; $70bb: $e5
    rst $00                                       ; $70bc: $c7
    sbc c                                         ; $70bd: $99
    sub e                                         ; $70be: $93
    ld c, b                                       ; $70bf: $48
    jp hl                                         ; $70c0: $e9


    ld l, a                                       ; $70c1: $6f
    rst $30                                       ; $70c2: $f7
    cp a                                          ; $70c3: $bf
    sbc h                                         ; $70c4: $9c
    ld d, c                                       ; $70c5: $51
    add l                                         ; $70c6: $85
    ld a, [c]                                     ; $70c7: $f2
    ld c, l                                       ; $70c8: $4d
    pop hl                                        ; $70c9: $e1
    rst $38                                       ; $70ca: $ff
    db $fc                                        ; $70cb: $fc
    ld e, e                                       ; $70cc: $5b
    ld sp, hl                                     ; $70cd: $f9
    ld e, e                                       ; $70ce: $5b
    rrca                                          ; $70cf: $0f
    db $eb                                        ; $70d0: $eb
    add a                                         ; $70d1: $87
    rst $38                                       ; $70d2: $ff
    sbc h                                         ; $70d3: $9c
    or b                                          ; $70d4: $b0
    push de                                       ; $70d5: $d5
    cp l                                          ; $70d6: $bd
    ld c, l                                       ; $70d7: $4d
    ld a, [$56c5]                                 ; $70d8: $fa $c5 $56
    ld b, a                                       ; $70db: $47
    ld a, [bc]                                    ; $70dc: $0a
    and c                                         ; $70dd: $a1
    and h                                         ; $70de: $a4
    ldh [$97], a                                  ; $70df: $e0 $97
    rst $38                                       ; $70e1: $ff
    db $ec                                        ; $70e2: $ec

jr_05d_70e3:
    xor e                                         ; $70e3: $ab
    ccf                                           ; $70e4: $3f
    rst $38                                       ; $70e5: $ff
    ld d, [hl]                                    ; $70e6: $56
    pop de                                        ; $70e7: $d1
    sub [hl]                                      ; $70e8: $96
    sbc d                                         ; $70e9: $9a
    ld l, [hl]                                    ; $70ea: $6e
    ld a, [hl+]                                   ; $70eb: $2a
    ld sp, hl                                     ; $70ec: $f9
    inc bc                                        ; $70ed: $03
    rst $08                                       ; $70ee: $cf
    or b                                          ; $70ef: $b0
    ld e, $d6                                     ; $70f0: $1e $d6
    ld a, a                                       ; $70f2: $7f
    ld bc, $c8bc                                  ; $70f3: $01 $bc $c8
    ld a, d                                       ; $70f6: $7a
    ld e, e                                       ; $70f7: $5b
    cp $1f                                        ; $70f8: $fe $1f
    ld hl, sp-$53                                 ; $70fa: $f8 $ad
    ccf                                           ; $70fc: $3f
    rst $38                                       ; $70fd: $ff
    sub [hl]                                      ; $70fe: $96

jr_05d_70ff:
    ld l, l                                       ; $70ff: $6d
    adc l                                         ; $7100: $8d
    ld [hl], e                                    ; $7101: $73
    ld b, d                                       ; $7102: $42
    ld sp, hl                                     ; $7103: $f9
    ld e, e                                       ; $7104: $5b
    rrca                                          ; $7105: $0f
    db $eb                                        ; $7106: $eb
    add a                                         ; $7107: $87
    scf                                           ; $7108: $37
    ld l, h                                       ; $7109: $6c
    sub l                                         ; $710a: $95
    add $4e                                       ; $710b: $c6 $4e
    ld l, h                                       ; $710d: $6c
    ld c, l                                       ; $710e: $4d
    ld c, h                                       ; $710f: $4c
    ld hl, $97df                                  ; $7110: $21 $df $97
    inc e                                         ; $7113: $1c
    ld h, h                                       ; $7114: $64
    xor l                                         ; $7115: $ad
    add e                                         ; $7116: $83
    db $db                                        ; $7117: $db
    ld [hl], $6c                                  ; $7118: $36 $6c
    push de                                       ; $711a: $d5
    cp b                                          ; $711b: $b8
    rst $30                                       ; $711c: $f7
    and $df                                       ; $711d: $e6 $df
    ld [$7148], a                                 ; $711f: $ea $48 $71
    adc $ff                                       ; $7122: $ce $ff
    ei                                            ; $7124: $fb
    sbc $ba                                       ; $7125: $de $ba
    nop                                           ; $7127: $00
    cp h                                          ; $7128: $bc
    ret z                                         ; $7129: $c8

    ld a, d                                       ; $712a: $7a
    ld e, e                                       ; $712b: $5b
    cp $9f                                        ; $712c: $fe $9f
    rra                                           ; $712e: $1f
    db $dd                                        ; $712f: $dd
    sbc a                                         ; $7130: $9f
    ld a, a                                       ; $7131: $7f
    xor e                                         ; $7132: $ab
    ld a, a                                       ; $7133: $7f
    rst $20                                       ; $7134: $e7
    ei                                            ; $7135: $fb
    ld l, e                                       ; $7136: $6b
    dec e                                         ; $7137: $1d
    ld h, c                                       ; $7138: $61
    xor e                                         ; $7139: $ab
    ei                                            ; $713a: $fb
    and a                                         ; $713b: $a7
    db $ed                                        ; $713c: $ed
    cp l                                          ; $713d: $bd
    ld e, e                                       ; $713e: $5b
    call c, $bc00                                 ; $713f: $dc $00 $bc
    ret z                                         ; $7142: $c8

    ld a, d                                       ; $7143: $7a
    ld e, e                                       ; $7144: $5b
    ld a, $ae                                     ; $7145: $3e $ae
    push af                                       ; $7147: $f5
    rst $20                                       ; $7148: $e7
    rst $18                                       ; $7149: $df
    or d                                          ; $714a: $b2
    xor l                                         ; $714b: $ad
    ld h, c                                       ; $714c: $61
    db $fd                                        ; $714d: $fd
    sbc d                                         ; $714e: $9a
    cp a                                          ; $714f: $bf
    ld [hl], e                                    ; $7150: $73
    xor [hl]                                      ; $7151: $ae
    xor $ff                                       ; $7152: $ee $ff
    add h                                         ; $7154: $84
    sub $a2                                       ; $7155: $d6 $a2
    sub l                                         ; $7157: $95
    rst $38                                       ; $7158: $ff
    adc $d1                                       ; $7159: $ce $d1
    ld h, e                                       ; $715b: $63
    ld e, d                                       ; $715c: $5a
    db $f4                                        ; $715d: $f4
    ld [hl], l                                    ; $715e: $75
    ld e, l                                       ; $715f: $5d
    xor d                                         ; $7160: $aa
    db $dd                                        ; $7161: $dd
    ld d, d                                       ; $7162: $52
    ld a, [$7fdb]                                 ; $7163: $fa $db $7f
    adc $5a                                       ; $7166: $ce $5a
    or h                                          ; $7168: $b4
    and $d8                                       ; $7169: $e6 $d8
    ld d, d                                       ; $716b: $52
    sbc d                                         ; $716c: $9a
    ld [hl], c                                    ; $716d: $71
    ld b, c                                       ; $716e: $41
    or d                                          ; $716f: $b2
    ld [hl], e                                    ; $7170: $73
    sub $a2                                       ; $7171: $d6 $a2
    rst $20                                       ; $7173: $e7
    sub $05                                       ; $7174: $d6 $05
    nop                                           ; $7176: $00
    cp h                                          ; $7177: $bc
    ret z                                         ; $7178: $c8

    ld a, d                                       ; $7179: $7a
    ld e, e                                       ; $717a: $5b
    cp $b3                                        ; $717b: $fe $b3
    xor a                                         ; $717d: $af
    cp $fc                                        ; $717e: $fe $fc
    ld e, e                                       ; $7180: $5b
    or [hl]                                       ; $7181: $b6
    dec [hl]                                      ; $7182: $35
    ld e, d                                       ; $7183: $5a
    inc de                                        ; $7184: $13
    daa                                           ; $7185: $27
    sub $7f                                       ; $7186: $d6 $7f
    add hl, bc                                    ; $7188: $09
    ld a, [hl]                                    ; $7189: $7e
    ld sp, hl                                     ; $718a: $f9
    ld a, a                                       ; $718b: $7f
    ld a, [hl]                                    ; $718c: $7e
    ld [hl], h                                    ; $718d: $74
    ld a, a                                       ; $718e: $7f
    cp $ad                                        ; $718f: $fe $ad
    add hl, sp                                    ; $7191: $39
    xor d                                         ; $7192: $aa
    pop de                                        ; $7193: $d1
    ld e, a                                       ; $7194: $5f
    db $eb                                        ; $7195: $eb
    ld [$dd5b], sp                                ; $7196: $08 $5b $dd
    ccf                                           ; $7199: $3f
    ld l, l                                       ; $719a: $6d
    rst $28                                       ; $719b: $ef
    db $dd                                        ; $719c: $dd
    ld [c], a                                     ; $719d: $e2
    ld b, $bc                                     ; $719e: $06 $bc
    ret z                                         ; $71a0: $c8

    ld a, d                                       ; $71a1: $7a
    ld e, e                                       ; $71a2: $5b
    ld e, a                                       ; $71a3: $5f
    adc l                                         ; $71a4: $8d
    sbc e                                         ; $71a5: $9b
    ld a, a                                       ; $71a6: $7f
    res 6, [hl]                                   ; $71a7: $cb $b6
    add $39                                       ; $71a9: $c6 $39
    ld [hl], c                                    ; $71ab: $71
    ld e, l                                       ; $71ac: $5d
    sub a                                         ; $71ad: $97
    db $ec                                        ; $71ae: $ec
    dec sp                                        ; $71af: $3b
    and d                                         ; $71b0: $a2
    ld a, [c]                                     ; $71b1: $f2
    ld h, a                                       ; $71b2: $67
    jr nc, jr_05d_71cb                            ; $71b3: $30 $16

    inc d                                         ; $71b5: $14
    scf                                           ; $71b6: $37
    nop                                           ; $71b7: $00
    cp h                                          ; $71b8: $bc
    ret z                                         ; $71b9: $c8

    ld a, d                                       ; $71ba: $7a
    ld e, e                                       ; $71bb: $5b
    dec e                                         ; $71bc: $1d
    ld [hl], e                                    ; $71bd: $73
    ld [hl], e                                    ; $71be: $73
    ld l, d                                       ; $71bf: $6a
    reti                                          ; $71c0: $d9


    sub $b0                                       ; $71c1: $d6 $b0
    ld a, [hl]                                    ; $71c3: $7e
    dec h                                         ; $71c4: $25
    cp b                                          ; $71c5: $b8
    db $d3                                        ; $71c6: $d3
    add $7d                                       ; $71c7: $c6 $7d
    ld a, a                                       ; $71c9: $7f
    ld [hl], c                                    ; $71ca: $71

jr_05d_71cb:
    bit 4, e                                      ; $71cb: $cb $63
    call c, $b1b6                                 ; $71cd: $dc $b6 $b1
    jp hl                                         ; $71d0: $e9


    sub [hl]                                      ; $71d1: $96
    ld a, [$be59]                                 ; $71d2: $fa $59 $be
    db $fd                                        ; $71d5: $fd
    ld e, a                                       ; $71d6: $5f
    xor d                                         ; $71d7: $aa
    xor h                                         ; $71d8: $ac
    push hl                                       ; $71d9: $e5
    rrca                                          ; $71da: $0f
    inc a                                         ; $71db: $3c
    pop de                                        ; $71dc: $d1
    jp z, $8d29                                   ; $71dd: $ca $29 $8d

    ei                                            ; $71e0: $fb
    and [hl]                                      ; $71e1: $a6
    ld d, d                                       ; $71e2: $52
    rst $38                                       ; $71e3: $ff
    adc $f7                                       ; $71e4: $ce $f7
    rst $10                                       ; $71e6: $d7
    ld a, [hl-]                                   ; $71e7: $3a
    or [hl]                                       ; $71e8: $b6
    adc c                                         ; $71e9: $89
    dec de                                        ; $71ea: $1b
    nop                                           ; $71eb: $00
    cp h                                          ; $71ec: $bc
    ret z                                         ; $71ed: $c8

    ld a, d                                       ; $71ee: $7a
    ld e, e                                       ; $71ef: $5b
    ld h, a                                       ; $71f0: $67
    call c, $f9f8                                 ; $71f1: $dc $f8 $f9
    or a                                          ; $71f4: $b7
    ld a, [c]                                     ; $71f5: $f2
    or a                                          ; $71f6: $b7
    ld e, $d6                                     ; $71f7: $1e $d6
    rrca                                          ; $71f9: $0f
    cp a                                          ; $71fa: $bf
    xor l                                         ; $71fb: $ad
    ld l, d                                       ; $71fc: $6a
    or a                                          ; $71fd: $b7
    sub d                                         ; $71fe: $92
    adc d                                         ; $71ff: $8a
    ld l, [hl]                                    ; $7200: $6e
    ld d, d                                       ; $7201: $52
    db $ed                                        ; $7202: $ed
    ld b, d                                       ; $7203: $42
    and d                                         ; $7204: $a2
    sub h                                         ; $7205: $94
    ld h, b                                       ; $7206: $60
    sub [hl]                                      ; $7207: $96
    reti                                          ; $7208: $d9


    ld e, d                                       ; $7209: $5a
    or h                                          ; $720a: $b4
    jp nc, Jump_05d_6b8c                          ; $720b: $d2 $8c $6b

    ld c, [hl]                                    ; $720e: $4e
    jp z, Jump_05d_45a6                           ; $720f: $ca $a6 $45

    bit 7, a                                      ; $7212: $cb $7f
    or $d5                                        ; $7214: $f6 $d5

Call_05d_7216:
    sbc a                                         ; $7216: $9f
    ld a, a                                       ; $7217: $7f
    res 6, [hl]                                   ; $7218: $cb $b6
    add $73                                       ; $721a: $c6 $73
    inc bc                                        ; $721c: $03
    cp h                                          ; $721d: $bc
    ret z                                         ; $721e: $c8

    ld a, d                                       ; $721f: $7a
    ld e, e                                       ; $7220: $5b
    add l                                         ; $7221: $85
    sub $9b                                       ; $7222: $d6 $9b
    ld a, a                                       ; $7224: $7f
    res 6, [hl]                                   ; $7225: $cb $b6
    ld b, [hl]                                    ; $7227: $46
    bit 4, d                                      ; $7228: $cb $62
    or b                                          ; $722a: $b0
    rst $38                                       ; $722b: $ff
    db $fc                                        ; $722c: $fc
    rst $08                                       ; $722d: $cf
    add hl, bc                                    ; $722e: $09
    push af                                       ; $722f: $f5
    dec de                                        ; $7230: $1b
    sbc [hl]                                      ; $7231: $9e
    inc de                                        ; $7232: $13
    call c, $a7e2                                 ; $7233: $dc $e2 $a7
    sbc e                                         ; $7236: $9b
    sub h                                         ; $7237: $94
    and l                                         ; $7238: $a5
    sub b                                         ; $7239: $90
    or l                                          ; $723a: $b5
    adc [hl]                                      ; $723b: $8e
    ld [hl], e                                    ; $723c: $73
    sub e                                         ; $723d: $93
    ld a, [de]                                    ; $723e: $1a
    rst $30                                       ; $723f: $f7
    sbc $55                                       ; $7240: $de $55
    cp $5b                                        ; $7242: $fe $5b
    sbc d                                         ; $7244: $9a
    pop bc                                        ; $7245: $c1
    ret c                                         ; $7246: $d8

    rst $10                                       ; $7247: $d7
    dec b                                         ; $7248: $05
    nop                                           ; $7249: $00
    cp h                                          ; $724a: $bc
    ret z                                         ; $724b: $c8

    ld a, d                                       ; $724c: $7a
    ld e, e                                       ; $724d: $5b
    add l                                         ; $724e: $85
    sub $9b                                       ; $724f: $d6 $9b
    ld a, a                                       ; $7251: $7f
    ld l, e                                       ; $7252: $6b
    adc [hl]                                      ; $7253: $8e
    ld l, d                                       ; $7254: $6a
    db $f4                                        ; $7255: $f4
    rst $10                                       ; $7256: $d7
    ld a, [hl-]                                   ; $7257: $3a
    or [hl]                                       ; $7258: $b6
    ret                                           ; $7259: $c9


    ld d, [hl]                                    ; $725a: $56
    ld a, [hl]                                    ; $725b: $7e
    ld h, [hl]                                    ; $725c: $66
    ld e, c                                       ; $725d: $59
    ld c, [hl]                                    ; $725e: $4e
    sub $cb                                       ; $725f: $d6 $cb
    dec l                                         ; $7261: $2d
    ld a, [hl]                                    ; $7262: $7e
    cp d                                          ; $7263: $ba
    ld c, c                                       ; $7264: $49
    ld e, c                                       ; $7265: $59
    ld a, [bc]                                    ; $7266: $0a
    ld e, c                                       ; $7267: $59
    db $eb                                        ; $7268: $eb
    jr c, jr_05d_72a2                             ; $7269: $38 $37

    xor c                                         ; $726b: $a9
    ld [hl], c                                    ; $726c: $71
    rst $28                                       ; $726d: $ef
    ld e, l                                       ; $726e: $5d
    push hl                                       ; $726f: $e5
    cp a                                          ; $7270: $bf
    and l                                         ; $7271: $a5
    add hl, de                                    ; $7272: $19
    adc h                                         ; $7273: $8c
    ld a, l                                       ; $7274: $7d
    ld e, l                                       ; $7275: $5d
    nop                                           ; $7276: $00
    cp h                                          ; $7277: $bc
    ret z                                         ; $7278: $c8

    ld a, d                                       ; $7279: $7a
    ld e, e                                       ; $727a: $5b
    add l                                         ; $727b: $85
    sub $9b                                       ; $727c: $d6 $9b
    ld a, a                                       ; $727e: $7f
    xor e                                         ; $727f: $ab
    ld a, a                                       ; $7280: $7f
    rst $20                                       ; $7281: $e7
    ei                                            ; $7282: $fb
    ld l, e                                       ; $7283: $6b
    dec e                                         ; $7284: $1d
    db $db                                        ; $7285: $db
    ld h, h                                       ; $7286: $64
    dec hl                                        ; $7287: $2b
    ccf                                           ; $7288: $3f
    or e                                          ; $7289: $b3
    inc l                                         ; $728a: $2c
    daa                                           ; $728b: $27
    db $eb                                        ; $728c: $eb
    push hl                                       ; $728d: $e5
    ld d, $3f                                     ; $728e: $16 $3f
    db $dd                                        ; $7290: $dd
    and h                                         ; $7291: $a4
    inc l                                         ; $7292: $2c
    add l                                         ; $7293: $85
    xor h                                         ; $7294: $ac
    ld [hl], l                                    ; $7295: $75
    sbc h                                         ; $7296: $9c
    sbc e                                         ; $7297: $9b
    call nc, $f7b8                                ; $7298: $d4 $b8 $f7
    xor [hl]                                      ; $729b: $ae
    ld a, [c]                                     ; $729c: $f2
    rst $18                                       ; $729d: $df
    jp nc, $c60c                                  ; $729e: $d2 $0c $c6

    cp [hl]                                       ; $72a1: $be

jr_05d_72a2:
    ld l, $00                                     ; $72a2: $2e $00
    cp h                                          ; $72a4: $bc
    ccf                                           ; $72a5: $3f
    jp nc, $1eb5                                  ; $72a6: $d2 $b5 $1e

    add $2d                                       ; $72a9: $c6 $2d
    sbc $df                                       ; $72ab: $de $df
    add hl, sp                                    ; $72ad: $39
    ld d, a                                       ; $72ae: $57
    db $fd                                        ; $72af: $fd
    dec sp                                        ; $72b0: $3b

jr_05d_72b1:
    rst $18                                       ; $72b1: $df
    ld e, a                                       ; $72b2: $5f
    db $eb                                        ; $72b3: $eb
    ld [$a55b], sp                                ; $72b4: $08 $5b $a5
    sub h                                         ; $72b7: $94
    xor a                                         ; $72b8: $af
    ld l, l                                       ; $72b9: $6d
    ld c, [hl]                                    ; $72ba: $4e
    call Call_000_000d                            ; $72bb: $cd $0d $00
    db $fc                                        ; $72be: $fc
    and e                                         ; $72bf: $a3
    ld a, [hl+]                                   ; $72c0: $2a
    ld a, [hl-]                                   ; $72c1: $3a
    xor c                                         ; $72c2: $a9
    add hl, sp                                    ; $72c3: $39
    or [hl]                                       ; $72c4: $b6
    and $ab                                       ; $72c5: $e6 $ab
    ld a, a                                       ; $72c7: $7f
    rst $20                                       ; $72c8: $e7
    dec sp                                        ; $72c9: $3b
    inc hl                                        ; $72ca: $23
    ld hl, sp+$35                                 ; $72cb: $f8 $35
    ld b, a                                       ; $72cd: $47
    dec [hl]                                      ; $72ce: $35
    ld a, [$1d6b]                                 ; $72cf: $fa $6b $1d
    ld h, c                                       ; $72d2: $61
    dec hl                                        ; $72d3: $2b
    rst $38                                       ; $72d4: $ff
    rst $08                                       ; $72d5: $cf
    ld a, a                                       ; $72d6: $7f
    cp $ad                                        ; $72d7: $fe $ad
    ei                                            ; $72d9: $fb
    and a                                         ; $72da: $a7
    db $ed                                        ; $72db: $ed
    cp l                                          ; $72dc: $bd
    db $fd                                        ; $72dd: $fd
    add [hl]                                      ; $72de: $86
    rst $20                                       ; $72df: $e7
    inc b                                         ; $72e0: $04
    scf                                           ; $72e1: $37
    nop                                           ; $72e2: $00
    sbc h                                         ; $72e3: $9c
    ld e, e                                       ; $72e4: $5b
    jp $d5fa                                      ; $72e5: $c3 $fa $d5


    and e                                         ; $72e8: $a3
    ld a, d                                       ; $72e9: $7a
    adc h                                         ; $72ea: $8c
    and h                                         ; $72eb: $a4
    and d                                         ; $72ec: $a2
    sbc e                                         ; $72ed: $9b
    add h                                         ; $72ee: $84
    daa                                           ; $72ef: $27
    ld e, d                                       ; $72f0: $5a
    ld l, c                                       ; $72f1: $69
    db $f4                                        ; $72f2: $f4
    adc h                                         ; $72f3: $8c
    jp nc, $fcef                                  ; $72f4: $d2 $ef $fc

    rst $10                                       ; $72f7: $d7
    sbc $f7                                       ; $72f8: $de $f7
    jr jr_05d_72b1                                ; $72fa: $18 $b5

    sbc d                                         ; $72fc: $9a
    cp a                                          ; $72fd: $bf
    ld [hl], e                                    ; $72fe: $73
    rst $08                                       ; $72ff: $cf
    add hl, bc                                    ; $7300: $09
    push af                                       ; $7301: $f5
    cpl                                           ; $7302: $2f
    xor $39                                       ; $7303: $ee $39
    pop bc                                        ; $7305: $c1
    dec c                                         ; $7306: $0d
    nop                                           ; $7307: $00
    cp h                                          ; $7308: $bc
    ret z                                         ; $7309: $c8

    cp d                                          ; $730a: $ba
    scf                                           ; $730b: $37
    ld c, e                                       ; $730c: $4b
    ld hl, $1d6b                                  ; $730d: $21 $6b $1d
    rst $20                                       ; $7310: $e7
    and [hl]                                      ; $7311: $a6
    jp nc, $2d97                                  ; $7312: $d2 $97 $2d

    ld e, d                                       ; $7315: $5a
    cp a                                          ; $7316: $bf
    ldh a, [rLY]                                  ; $7317: $f0 $44
    xor e                                         ; $7319: $ab
    jp hl                                         ; $731a: $e9


    and [hl]                                      ; $731b: $a6
    ld d, d                                       ; $731c: $52
    rst $38                                       ; $731d: $ff
    ld e, d                                       ; $731e: $5a
    rst $00                                       ; $731f: $c7
    add hl, de                                    ; $7320: $19
    and l                                         ; $7321: $a5
    add a                                         ; $7322: $87
    cp a                                          ; $7323: $bf
    sub h                                         ; $7324: $94
    ld a, a                                       ; $7325: $7f
    sbc d                                         ; $7326: $9a
    rst $00                                       ; $7327: $c7
    db $ed                                        ; $7328: $ed
    xor a                                         ; $7329: $af
    ld h, d                                       ; $732a: $62
    sbc l                                         ; $732b: $9d
    cp c                                          ; $732c: $b9
    rst $38                                       ; $732d: $ff
    inc de                                        ; $732e: $13
    ld e, d                                       ; $732f: $5a
    db $db                                        ; $7330: $db
    ld d, a                                       ; $7331: $57
    sbc d                                         ; $7332: $9a
    ld [hl], c                                    ; $7333: $71
    call $d949                                    ; $7334: $cd $49 $d9
    or h                                          ; $7337: $b4
    dec h                                         ; $7338: $25
    push hl                                       ; $7339: $e5
    ld l, a                                       ; $733a: $6f
    db $fd                                        ; $733b: $fd
    ld e, a                                       ; $733c: $5f
    rla                                           ; $733d: $17
    nop                                           ; $733e: $00
    cp h                                          ; $733f: $bc
    and e                                         ; $7340: $a3
    sub h                                         ; $7341: $94
    and l                                         ; $7342: $a5
    sub b                                         ; $7343: $90
    or l                                          ; $7344: $b5
    and [hl]                                      ; $7345: $a6
    sub $44                                       ; $7346: $d6 $44
    sub $db                                       ; $7348: $d6 $db
    ld c, c                                       ; $734a: $49
    push hl                                       ; $734b: $e5
    ld l, a                                       ; $734c: $6f
    dec a                                         ; $734d: $3d
    xor h                                         ; $734e: $ac
    rra                                           ; $734f: $1f
    ld a, [hl]                                    ; $7350: $7e
    ld e, e                                       ; $7351: $5b

Jump_05d_7352:
    dec d                                         ; $7352: $15
    ld h, l                                       ; $7353: $65
    db $dd                                        ; $7354: $dd
    ld b, h                                       ; $7355: $44

Jump_05d_7356:
    ld c, d                                       ; $7356: $4a
    or e                                          ; $7357: $b3
    ld a, h                                       ; $7358: $7c
    dec hl                                        ; $7359: $2b
    xor c                                         ; $735a: $a9
    inc [hl]                                      ; $735b: $34
    res 6, a                                      ; $735c: $cb $b7
    sub h                                         ; $735e: $94
    add $4e                                       ; $735f: $c6 $4e
    inc a                                         ; $7361: $3c
    db $fd                                        ; $7362: $fd
    rst $10                                       ; $7363: $d7
    ld [hl], l                                    ; $7364: $75
    ld bc, $a3fc                                  ; $7365: $01 $fc $a3
    ld a, [hl+]                                   ; $7368: $2a
    ld a, [hl-]                                   ; $7369: $3a
    xor c                                         ; $736a: $a9
    add sp, $26                                   ; $736b: $e8 $26
    call $39df                                    ; $736d: $cd $df $39
    ld d, a                                       ; $7370: $57
    rlca                                          ; $7371: $07
    or a                                          ; $7372: $b7
    ld l, l                                       ; $7373: $6d
    ret c                                         ; $7374: $d8

    xor d                                         ; $7375: $aa
    ld [hl], c                                    ; $7376: $71
    rst $28                                       ; $7377: $ef
    call $e5bf                                    ; $7378: $cd $bf $e5
    rst $38                                       ; $737b: $ff
    add c                                         ; $737c: $81
    or c                                          ; $737d: $b1
    inc d                                         ; $737e: $14
    push de                                       ; $737f: $d5
    ld l, e                                       ; $7380: $6b
    ld c, l                                       ; $7381: $4d
    ld [$7148], a                                 ; $7382: $ea $48 $71
    adc $ff                                       ; $7385: $ce $ff
    ei                                            ; $7387: $fb
    sbc $e2                                       ; $7388: $de $e2
    ld b, $0e                                     ; $738a: $06 $0e
    or d                                          ; $738c: $b2
    ld d, [hl]                                    ; $738d: $56
    sbc d                                         ; $738e: $9a
    ld [hl], c                                    ; $738f: $71
    call $9949                                    ; $7390: $cd $49 $99
    dec e                                         ; $7393: $1d
    call c, Call_05d_61b6                         ; $7394: $dc $b6 $61
    dec hl                                        ; $7397: $2b
    call z, $d5bf                                 ; $7398: $cc $bf $d5
    ld [hl], h                                    ; $739b: $74
    ld d, e                                       ; $739c: $53
    xor c                                         ; $739d: $a9
    ld a, a                                       ; $739e: $7f
    xor l                                         ; $739f: $ad
    db $e3                                        ; $73a0: $e3
    adc h                                         ; $73a1: $8c
    jp nc, Jump_05d_5fc3                          ; $73a2: $d2 $c3 $5f

    ld c, d                                       ; $73a5: $4a
    rlca                                          ; $73a6: $07
    sbc $df                                       ; $73a7: $de $df
    db $fd                                        ; $73a9: $fd
    ld sp, hl                                     ; $73aa: $f9
    ld e, e                                       ; $73ab: $5b
    xor a                                         ; $73ac: $af
    ld a, [hl-]                                   ; $73ad: $3a
    ld d, d                                       ; $73ae: $52
    sbc h                                         ; $73af: $9c
    di                                            ; $73b0: $f3
    rst $38                                       ; $73b1: $ff
    or $f7                                        ; $73b2: $f6 $f7
    cpl                                           ; $73b4: $2f
    nop                                           ; $73b5: $00
    inc a                                         ; $73b6: $3c
    rst $08                                       ; $73b7: $cf
    ld e, b                                       ; $73b8: $58
    ld h, $87                                     ; $73b9: $26 $87
    ret c                                         ; $73bb: $d8

    dec e                                         ; $73bc: $1d
    ld c, h                                       ; $73bd: $4c
    adc $4c                                       ; $73be: $ce $4c
    ld h, h                                       ; $73c0: $64
    db $dd                                        ; $73c1: $dd
    dec hl                                        ; $73c2: $2b
    inc l                                         ; $73c3: $2c

Jump_05d_73c4:
    dec d                                         ; $73c4: $15
    ld e, d                                       ; $73c5: $5a
    ld a, a                                       ; $73c6: $7f
    adc l                                         ; $73c7: $8d
    sub $fc                                       ; $73c8: $d6 $fc
    sbc l                                         ; $73ca: $9d
    ld [hl], e                                    ; $73cb: $73
    ld [hl], l                                    ; $73cc: $75
    ld [hl], b                                    ; $73cd: $70
    db $db                                        ; $73ce: $db
    add [hl]                                      ; $73cf: $86
    xor l                                         ; $73d0: $ad
    ld h, $b2                                     ; $73d1: $26 $b2
    add hl, de                                    ; $73d3: $19
    ld a, e                                       ; $73d4: $7b
    rst $18                                       ; $73d5: $df
    ld a, a                                       ; $73d6: $7f
    ld c, [hl]                                    ; $73d7: $4e
    xor b                                         ; $73d8: $a8
    rst $18                                       ; $73d9: $df
    ldh a, [$9c]                                  ; $73da: $f0 $9c
    ld c, b                                       ; $73dc: $48
    ld a, [bc]                                    ; $73dd: $0a
    ld a, [hl]                                    ; $73de: $7e
    push hl                                       ; $73df: $e5
    call nz, $0ef6                                ; $73e0: $c4 $f6 $0e
    ld [hl], $b7                                  ; $73e3: $36 $b7
    ld a, [hl+]                                   ; $73e5: $2a
    ld l, e                                       ; $73e6: $6b
    call $39df                                    ; $73e7: $cd $df $39
    ld d, a                                       ; $73ea: $57
    ld [hl], d                                    ; $73eb: $72
    rra                                           ; $73ec: $1f
    rst $08                                       ; $73ed: $cf
    and d                                         ; $73ee: $a2
    ld hl, sp+$3e                                 ; $73ef: $f8 $3e
    and c                                         ; $73f1: $a1
    dec [hl]                                      ; $73f2: $35
    ld a, e                                       ; $73f3: $7b
    ld e, e                                       ; $73f4: $5b
    pop hl                                        ; $73f5: $e1
    adc c                                         ; $73f6: $89
    db $fc                                        ; $73f7: $fc

Call_05d_73f8:
    ld e, e                                       ; $73f8: $5b
    inc de                                        ; $73f9: $13
    ld e, c                                       ; $73fa: $59
    ld l, a                                       ; $73fb: $6f
    set 7, a                                      ; $73fc: $cb $ff
    adc c                                         ; $73fe: $89

Jump_05d_73ff:
    db $db                                        ; $73ff: $db
    db $fd                                        ; $7400: $fd
    ld e, e                                       ; $7401: $5b
    call c, Call_000_1c00                         ; $7402: $dc $00 $1c
    daa                                           ; $7405: $27
    ld e, d                                       ; $7406: $5a
    or $5f                                        ; $7407: $f6 $5f
    and e                                         ; $7409: $a3
    dec d                                         ; $740a: $15
    or [hl]                                       ; $740b: $b6
    dec d                                         ; $740c: $15
    ld d, c                                       ; $740d: $51
    ld c, c                                       ; $740e: $49
    pop bc                                        ; $740f: $c1
    ld e, b                                       ; $7410: $58
    di                                            ; $7411: $f3
    sub l                                         ; $7412: $95
    db $e3                                        ; $7413: $e3
    or [hl]                                       ; $7414: $b6
    ld a, [c]                                     ; $7415: $f2
    ld h, a                                       ; $7416: $67
    jp Jump_05d_5ffa                              ; $7417: $c3 $fa $5f


    inc a                                         ; $741a: $3c
    rst $08                                       ; $741b: $cf
    ld e, b                                       ; $741c: $58
    halt                                          ; $741d: $76
    ld c, [hl]                                    ; $741e: $4e
    ld e, h                                       ; $741f: $5c
    ld a, [c]                                     ; $7420: $f2
    ld [$e94d], sp                                ; $7421: $08 $4d $e9
    sbc a                                         ; $7424: $9f
    pop af                                        ; $7425: $f1
    xor l                                         ; $7426: $ad
    adc [hl]                                      ; $7427: $8e
    inc d                                         ; $7428: $14
    ld b, d                                       ; $7429: $42
    xor d                                         ; $742a: $aa
    db $dd                                        ; $742b: $dd
    ld c, d                                       ; $742c: $4a
    jp z, Jump_000_1976                           ; $742d: $ca $76 $19

    set 4, h                                      ; $7430: $cb $e4
    inc de                                        ; $7432: $13
    push hl                                       ; $7433: $e5
    ld a, a                                       ; $7434: $7f
    halt                                          ; $7435: $76
    ld c, [hl]                                    ; $7436: $4e
    call nz, $ff92                                ; $7437: $c4 $92 $ff
    ld e, e                                       ; $743a: $5b
    ld a, a                                       ; $743b: $7f
    rst $38                                       ; $743c: $ff
    add hl, sp                                    ; $743d: $39
    cpl                                           ; $743e: $2f
    ld c, [hl]                                    ; $743f: $4e
    ld a, [hl]                                    ; $7440: $7e
    or a                                          ; $7441: $b7
    dec a                                         ; $7442: $3d
    push hl                                       ; $7443: $e5
    ld [hl], a                                    ; $7444: $77
    and [hl]                                      ; $7445: $a6
    sbc $f7                                       ; $7446: $de $f7
    ld d, a                                       ; $7448: $57
    ldh a, [$2b]                                  ; $7449: $f0 $2b
    rst $38                                       ; $744b: $ff
    or e                                          ; $744c: $b3
    ld l, l                                       ; $744d: $6d
    ld hl, $0dfe                                  ; $744e: $21 $fe $0d
    ld [$b3b6], sp                                ; $7451: $08 $b6 $b3
    ld sp, hl                                     ; $7454: $f9
    or e                                          ; $7455: $b3
    ld h, c                                       ; $7456: $61
    dec a                                         ; $7457: $3d
    db $ec                                        ; $7458: $ec
    sub d                                         ; $7459: $92
    rst $20                                       ; $745a: $e7
    ld a, a                                       ; $745b: $7f
    or [hl]                                       ; $745c: $b6
    dec l                                         ; $745d: $2d
    call nz, $8cf3                                ; $745e: $c4 $f3 $8c
    ld h, l                                       ; $7461: $65
    and l                                         ; $7462: $a5
    add hl, sp                                    ; $7463: $39
    ld a, [c]                                     ; $7464: $f2
    or a                                          ; $7465: $b7
    ld a, [hl]                                    ; $7466: $7e
    ld sp, hl                                     ; $7467: $f9
    cp a                                          ; $7468: $bf
    ld [hl], e                                    ; $7469: $73
    cp [hl]                                       ; $746a: $be
    jp nz, $22b6                                  ; $746b: $c2 $b6 $22

    adc $09                                       ; $746e: $ce $09
    pop bc                                        ; $7470: $c1
    cpl                                           ; $7471: $2f
    rst $38                                       ; $7472: $ff
    or a                                          ; $7473: $b7
    ld e, [hl]                                    ; $7474: $5e
    ld l, [hl]                                    ; $7475: $6e
    dec sp                                        ; $7476: $3b
    ld d, e                                       ; $7477: $53
    rst $28                                       ; $7478: $ef
    ei                                            ; $7479: $fb
    ei                                            ; $747a: $fb
    sub a                                         ; $747b: $97
    ld hl, sp-$17                                 ; $747c: $f8 $e9
    inc [hl]                                      ; $747e: $34
    adc c                                         ; $747f: $89
    adc l                                         ; $7480: $8d
    ld bc, $a719                                  ; $7481: $01 $19 $a7
    ld e, a                                       ; $7484: $5f
    ld b, l                                       ; $7485: $45
    pop de                                        ; $7486: $d1
    cp d                                          ; $7487: $ba
    inc sp                                        ; $7488: $33
    ld l, $53                                     ; $7489: $2e $53
    cp a                                          ; $748b: $bf
    and c                                         ; $748c: $a1
    ld l, l                                       ; $748d: $6d
    ld d, d                                       ; $748e: $52
    inc de                                        ; $748f: $13
    ld h, a                                       ; $7490: $67
    call c, Call_05d_5a63                         ; $7491: $dc $63 $5a
    ret c                                         ; $7494: $d8

    ld h, $c5                                     ; $7495: $26 $c5
    ld a, $7d                                     ; $7497: $3e $7d
    ld e, e                                       ; $7499: $5b
    pop bc                                        ; $749a: $c1
    xor a                                         ; $749b: $af
    ld a, e                                       ; $749c: $7b
    adc h                                         ; $749d: $8c
    ld d, [hl]                                    ; $749e: $56
    ld l, a                                       ; $749f: $6f
    ld b, b                                       ; $74a0: $40
    or b                                          ; $74a1: $b0
    cpl                                           ; $74a2: $2f
    nop                                           ; $74a3: $00
    ld e, $a1                                     ; $74a4: $1e $a1
    add hl, hl                                    ; $74a6: $29
    db $fd                                        ; $74a7: $fd
    inc sp                                        ; $74a8: $33
    cp [hl]                                       ; $74a9: $be
    dec [hl]                                      ; $74aa: $35
    add hl, hl                                    ; $74ab: $29
    db $eb                                        ; $74ac: $eb
    ld h, $52                                     ; $74ad: $26 $52
    ret c                                         ; $74af: $d8

    ld d, [hl]                                    ; $74b0: $56
    ld [hl], h                                    ; $74b1: $74
    ld d, e                                       ; $74b2: $53
    ld d, d                                       ; $74b3: $52
    or [hl]                                       ; $74b4: $b6
    bit 3, b                                      ; $74b5: $cb $58

Call_05d_74b7:
    ld h, $9f                                     ; $74b7: $26 $9f
    jr z, @+$01                                   ; $74b9: $28 $ff

    or e                                          ; $74bb: $b3
    ld [hl], e                                    ; $74bc: $73
    ld [hl+], a                                   ; $74bd: $22
    sub [hl]                                      ; $74be: $96
    db $fc                                        ; $74bf: $fc
    rst $18                                       ; $74c0: $df
    ld a, [$cffb]                                 ; $74c1: $fa $fb $cf
    ld a, c                                       ; $74c4: $79
    ld [hl], c                                    ; $74c5: $71
    ld a, [c]                                     ; $74c6: $f2
    cp e                                          ; $74c7: $bb
    db $ed                                        ; $74c8: $ed
    add hl, hl                                    ; $74c9: $29
    cp a                                          ; $74ca: $bf
    inc sp                                        ; $74cb: $33
    push af                                       ; $74cc: $f5

jr_05d_74cd:
    cp [hl]                                       ; $74cd: $be
    cp a                                          ; $74ce: $bf
    add d                                         ; $74cf: $82
    ld e, a                                       ; $74d0: $5f
    ld sp, hl                                     ; $74d1: $f9
    sbc a                                         ; $74d2: $9f
    ld l, l                                       ; $74d3: $6d
    dec bc                                        ; $74d4: $0b
    ld b, c                                       ; $74d5: $41
    db $db                                        ; $74d6: $db
    ld d, [hl]                                    ; $74d7: $56
    inc h                                         ; $74d8: $24
    ld d, l                                       ; $74d9: $55
    cp e                                          ; $74da: $bb
    and l                                         ; $74db: $a5
    and d                                         ; $74dc: $a2
    ld l, b                                       ; $74dd: $68
    call $39df                                    ; $74de: $cd $df $39
    ld d, a                                       ; $74e1: $57
    ld h, c                                       ; $74e2: $61
    ld e, e                                       ; $74e3: $5b
    ld de, $97b6                                  ; $74e4: $11 $b6 $97
    inc a                                         ; $74e7: $3c
    rst $38                                       ; $74e8: $ff
    or e                                          ; $74e9: $b3
    ld l, l                                       ; $74ea: $6d
    and c                                         ; $74eb: $a1
    ld c, c                                       ; $74ec: $49
    ld e, c                                       ; $74ed: $59
    ld b, a                                       ; $74ee: $47
    scf                                           ; $74ef: $37
    push hl                                       ; $74f0: $e5
    and h                                         ; $74f1: $a4
    or b                                          ; $74f2: $b0
    xor l                                         ; $74f3: $ad
    db $10                                        ; $74f4: $10
    db $fc                                        ; $74f5: $fc
    ld a, [c]                                     ; $74f6: $f2
    ld a, a                                       ; $74f7: $7f
    db $eb                                        ; $74f8: $eb
    push hl                                       ; $74f9: $e5
    or [hl]                                       ; $74fa: $b6
    inc sp                                        ; $74fb: $33
    push af                                       ; $74fc: $f5
    cp [hl]                                       ; $74fd: $be
    cp a                                          ; $74fe: $bf

Call_05d_74ff:
    ld a, a                                       ; $74ff: $7f
    ld bc, $bfbc                                  ; $7500: $01 $bc $bf
    ld [hl], e                                    ; $7503: $73
    xor [hl]                                      ; $7504: $ae
    ld a, [$3e77]                                 ; $7505: $fa $77 $3e
    inc a                                         ; $7508: $3c
    ldh a, [$fe]                                  ; $7509: $f0 $fe
    ld d, [hl]                                    ; $750b: $56
    ld b, a                                       ; $750c: $47
    ld a, [bc]                                    ; $750d: $0a
    ld hl, $152a                                  ; $750e: $21 $2a $15
    ld l, $e4                                     ; $7511: $2e $e4
    ld l, e                                       ; $7513: $6b
    ld a, [hl]                                    ; $7514: $7e
    rst $30                                       ; $7515: $f7
    ld e, $5c                                     ; $7516: $1e $5c
    or e                                          ; $7518: $b3
    cp a                                          ; $7519: $bf
    call nz, Call_05d_4a3b                        ; $751a: $c4 $3b $4a
    sub e                                         ; $751d: $93
    or d                                          ; $751e: $b2
    and [hl]                                      ; $751f: $a6
    sub [hl]                                      ; $7520: $96
    rst $38                                       ; $7521: $ff
    db $fd                                        ; $7522: $fd
    ld l, a                                       ; $7523: $6f
    sbc e                                         ; $7524: $9b
    call nc, $9dfc                                ; $7525: $d4 $fc $9d
    ld [hl], e                                    ; $7528: $73
    add l                                         ; $7529: $85
    rst $30                                       ; $752a: $f7
    ld e, d                                       ; $752b: $5a
    rst $38                                       ; $752c: $ff
    db $fd                                        ; $752d: $fd
    or [hl]                                       ; $752e: $b6
    ld a, [$98ad]                                 ; $752f: $fa $ad $98
    ld d, $ad                                     ; $7532: $16 $ad
    dec a                                         ; $7534: $3d
    ld [hl], a                                    ; $7535: $77
    ld e, b                                       ; $7536: $58
    ld h, a                                       ; $7537: $67
    add hl, sp                                    ; $7538: $39
    or l                                          ; $7539: $b5
    ret c                                         ; $753a: $d8

    jr jr_05d_74cd                                ; $753b: $18 $90

    ld [hl], c                                    ; $753d: $71
    ld c, [hl]                                    ; $753e: $4e
    ld e, h                                       ; $753f: $5c
    ld a, [c]                                     ; $7540: $f2
    db $fc                                        ; $7541: $fc
    rst $08                                       ; $7542: $cf
    or [hl]                                       ; $7543: $b6
    add l                                         ; $7544: $85
    jp nc, $e33f                                  ; $7545: $d2 $3f $e3

    rst $28                                       ; $7548: $ef
    or a                                          ; $7549: $b7
    push de                                       ; $754a: $d5
    ld l, a                                       ; $754b: $6f
    push bc                                       ; $754c: $c5
    or h                                          ; $754d: $b4
    ld l, b                                       ; $754e: $68
    pop bc                                        ; $754f: $c1
    cpl                                           ; $7550: $2f
    adc e                                         ; $7551: $8b
    adc c                                         ; $7552: $89
    db $db                                        ; $7553: $db
    xor a                                         ; $7554: $af
    ld a, [bc]                                    ; $7555: $0a
    ld sp, hl                                     ; $7556: $f9
    cp a                                          ; $7557: $bf
    push af                                       ; $7558: $f5
    rst $30                                       ; $7559: $f7
    sbc a                                         ; $755a: $9f
    di                                            ; $755b: $f3
    ld [c], a                                     ; $755c: $e2
    db $e4                                        ; $755d: $e4
    ld [hl], a                                    ; $755e: $77
    db $db                                        ; $755f: $db
    ld d, e                                       ; $7560: $53
    ld a, [hl]                                    ; $7561: $7e
    ld h, a                                       ; $7562: $67
    ld [$7f7d], a                                 ; $7563: $ea $7d $7f
    rst $38                                       ; $7566: $ff
    ld [bc], a                                    ; $7567: $02
    ld c, $b2                                     ; $7568: $0e $b2
    sub [hl]                                      ; $756a: $96
    ld l, l                                       ; $756b: $6d
    adc l                                         ; $756c: $8d
    ld [hl], e                                    ; $756d: $73
    ld e, [hl]                                    ; $756e: $5e
    ld e, b                                       ; $756f: $58
    ld a, [$b0ad]                                 ; $7570: $fa $ad $b0
    cp c                                          ; $7573: $b9
    inc c                                         ; $7574: $0c
    cp $a4                                        ; $7575: $fe $a4
    ld h, b                                       ; $7577: $60
    xor h                                         ; $7578: $ac
    ld a, [bc]                                    ; $7579: $0a
    push hl                                       ; $757a: $e5
    cp b                                          ; $757b: $b8
    xor l                                         ; $757c: $ad
    add hl, de                                    ; $757d: $19
    adc h                                         ; $757e: $8c
    sbc d                                         ; $757f: $9a
    call nc, $f3bf                                ; $7580: $d4 $bf $f3
    pop hl                                        ; $7583: $e1
    add c                                         ; $7584: $81
    rst $30                                       ; $7585: $f7
    ld b, [hl]                                    ; $7586: $46
    jp hl                                         ; $7587: $e9


    or a                                          ; $7588: $b7
    ld h, d                                       ; $7589: $62
    jp c, $e0be                                   ; $758a: $da $be $e0

    ld d, a                                       ; $758d: $57
    rst $38                                       ; $758e: $ff
    add hl, sp                                    ; $758f: $39
    ld d, c                                       ; $7590: $51
    db $fd                                        ; $7591: $fd
    cpl                                           ; $7592: $2f
    ld a, b                                       ; $7593: $78
    ldh [$fd], a                                  ; $7594: $e0 $fd
    inc l                                         ; $7596: $2c
    inc l                                         ; $7597: $2c
    db $fc                                        ; $7598: $fc
    ld c, $98                                     ; $7599: $0e $98
    ld l, $39                                     ; $759b: $2e $39
    db $fc                                        ; $759d: $fc
    xor l                                         ; $759e: $ad
    rla                                           ; $759f: $17
    daa                                           ; $75a0: $27
    cp a                                          ; $75a1: $bf
    db $db                                        ; $75a2: $db
    sbc [hl]                                      ; $75a3: $9e
    ld a, [c]                                     ; $75a4: $f2
    dec sp                                        ; $75a5: $3b
    ld d, e                                       ; $75a6: $53
    rst $28                                       ; $75a7: $ef
    ei                                            ; $75a8: $fb
    dec hl                                        ; $75a9: $2b
    ld hl, sp-$6b                                 ; $75aa: $f8 $95
    rst $38                                       ; $75ac: $ff
    reti                                          ; $75ad: $d9


    or [hl]                                       ; $75ae: $b6
    sub b                                         ; $75af: $90
    ld c, a                                       ; $75b0: $4f
    sub h                                         ; $75b1: $94

jr_05d_75b2:
    rst $38                                       ; $75b2: $ff
    reti                                          ; $75b3: $d9


    adc c                                         ; $75b4: $89
    sub $2f                                       ; $75b5: $d6 $2f
    daa                                           ; $75b7: $27
    call c, Call_000_0ade                         ; $75b8: $dc $de $0a
    sbc e                                         ; $75bb: $9b
    set 4, b                                      ; $75bc: $cb $e0
    ld [hl], a                                    ; $75be: $77
    ld [hl+], a                                   ; $75bf: $22
    xor c                                         ; $75c0: $a9
    jp c, Jump_000_152d                           ; $75c1: $da $2d $15

    ld b, l                                       ; $75c4: $45
    ld l, e                                       ; $75c5: $6b
    cp $ce                                        ; $75c6: $fe $ce
    cp c                                          ; $75c8: $b9
    sbc d                                         ; $75c9: $9a
    pop bc                                        ; $75ca: $c1
    adc b                                         ; $75cb: $88

jr_05d_75cc:
    ld l, [hl]                                    ; $75cc: $6e
    or d                                          ; $75cd: $b2
    push de                                       ; $75ce: $d5
    ld l, a                                       ; $75cf: $6f
    push bc                                       ; $75d0: $c5
    or h                                          ; $75d1: $b4
    ld l, b                                       ; $75d2: $68
    pop bc                                        ; $75d3: $c1
    xor a                                         ; $75d4: $af
    inc e                                         ; $75d5: $1c
    or a                                          ; $75d6: $b7
    push de                                       ; $75d7: $d5
    and e                                         ; $75d8: $a3
    rst $20                                       ; $75d9: $e7
    cp [hl]                                       ; $75da: $be
    ld e, b                                       ; $75db: $58
    ld e, b                                       ; $75dc: $58
    ld hl, sp+$1d                                 ; $75dd: $f8 $1d
    jr nc, @-$25                                  ; $75df: $30 $d9

    ld e, [hl]                                    ; $75e1: $5e
    nop                                           ; $75e2: $00
    db $fc                                        ; $75e3: $fc
    rst $08                                       ; $75e4: $cf
    and $5b                                       ; $75e5: $e6 $5b
    rst $00                                       ; $75e7: $c7
    add hl, sp                                    ; $75e8: $39
    ccf                                           ; $75e9: $3f
    dec l                                         ; $75ea: $2d
    ld l, h                                       ; $75eb: $6c
    add l                                         ; $75ec: $85
    rst $30                                       ; $75ed: $f7
    cp a                                          ; $75ee: $bf
    call c, $b3c7                                 ; $75ef: $dc $c7 $b3
    jr z, jr_05d_75b2                             ; $75f2: $28 $be

    ld c, a                                       ; $75f4: $4f
    ld l, b                                       ; $75f5: $68
    rst $18                                       ; $75f6: $df
    ld d, [hl]                                    ; $75f7: $56
    ldh a, [$cb]                                  ; $75f8: $f0 $cb
    ld a, l                                       ; $75fa: $7d
    inc a                                         ; $75fb: $3c
    adc e                                         ; $75fc: $8b
    ld [c], a                                     ; $75fd: $e2
    ld h, a                                       ; $75fe: $67
    db $eb                                        ; $75ff: $eb
    sbc a                                         ; $7600: $9f
    ld c, l                                       ; $7601: $4d
    ld h, b                                       ; $7602: $60
    ld e, b                                       ; $7603: $58
    cp a                                          ; $7604: $bf

jr_05d_7605:
    ld l, l                                       ; $7605: $6d
    ld d, d                                       ; $7606: $52
    cp $6f                                        ; $7607: $fe $6f
    cp l                                          ; $7609: $bd
    jr c, jr_05d_7605                             ; $760a: $38 $f9

    db $dd                                        ; $760c: $dd
    or $94                                        ; $760d: $f6 $94

Jump_05d_760f:
    rst $18                                       ; $760f: $df
    sbc c                                         ; $7610: $99
    ld a, d                                       ; $7611: $7a
    rst $18                                       ; $7612: $df
    rst $18                                       ; $7613: $df
    ld c, e                                       ; $7614: $4b

jr_05d_7615:
    sbc [hl]                                      ; $7615: $9e
    rst $38                                       ; $7616: $ff
    reti                                          ; $7617: $d9


    or [hl]                                       ; $7618: $b6
    sub b                                         ; $7619: $90
    ld l, l                                       ; $761a: $6d
    ld [hl], a                                    ; $761b: $77
    sub h                                         ; $761c: $94
    ld a, h                                       ; $761d: $7c
    and d                                         ; $761e: $a2
    db $fc                                        ; $761f: $fc
    rst $08                                       ; $7620: $cf

Jump_05d_7621:
    ld c, [hl]                                    ; $7621: $4e
    or h                                          ; $7622: $b4
    ld a, [hl]                                    ; $7623: $7e
    cp c                                          ; $7624: $b9
    adc a                                         ; $7625: $8f
    ld h, a                                       ; $7626: $67
    ld d, c                                       ; $7627: $51
    ld a, h                                       ; $7628: $7c
    sbc a                                         ; $7629: $9f
    ret nc                                        ; $762a: $d0

    xor d                                         ; $762b: $aa
    ld a, a                                       ; $762c: $7f
    push hl                                       ; $762d: $e5
    ld a, $9e                                     ; $762e: $3e $9e
    ld b, l                                       ; $7630: $45
    pop af                                        ; $7631: $f1
    or e                                          ; $7632: $b3
    push af                                       ; $7633: $f5
    rst $08                                       ; $7634: $cf
    ld h, $30                                     ; $7635: $26 $30
    db $ec                                        ; $7637: $ec
    ld [bc], a                                    ; $7638: $02
    inc e                                         ; $7639: $1c
    daa                                           ; $763a: $27
    ld e, d                                       ; $763b: $5a
    jr nc, jr_05d_75cc                            ; $763c: $30 $8e

    ld e, $35                                     ; $763e: $1e $35
    ld e, d                                       ; $7640: $5a
    db $fd                                        ; $7641: $fd
    ld l, e                                       ; $7642: $6b
    dec e                                         ; $7643: $1d
    ld h, a                                       ; $7644: $67
    adc h                                         ; $7645: $8c
    ld c, d                                       ; $7646: $4a
    ld a, [bc]                                    ; $7647: $0a
    ld a, [hl]                                    ; $7648: $7e
    reti                                          ; $7649: $d9


    sub $38                                       ; $764a: $d6 $38
    rst $20                                       ; $764c: $e7
    add l                                         ; $764d: $85
    and l                                         ; $764e: $a5
    jp z, $c35a                                   ; $764f: $ca $5a $c3

    ld h, d                                       ; $7652: $62
    ei                                            ; $7653: $fb
    sub l                                         ; $7654: $95
    rst $38                                       ; $7655: $ff
    and [hl]                                      ; $7656: $a6
    adc l                                         ; $7657: $8d
    sub c                                         ; $7658: $91
    ld [hl], $c2                                  ; $7659: $36 $c2
    rst $28                                       ; $765b: $ef
    add [hl]                                      ; $765c: $86
    inc a                                         ; $765d: $3c
    rst $00                                       ; $765e: $c7
    ld l, l                                       ; $765f: $6d
    ld c, l                                       ; $7660: $4d
    jp z, $89ba                                   ; $7661: $ca $ba $89

    ld [hl], h                                    ; $7664: $74
    ld [hl], b                                    ; $7665: $70
    db $db                                        ; $7666: $db
    ld b, $fc                                     ; $7667: $06 $fc
    ld c, c                                       ; $7669: $49
    add l                                         ; $766a: $85
    ld l, l                                       ; $766b: $6d
    push bc                                       ; $766c: $c5
    ld [hl], $a9                                  ; $766d: $36 $a9
    ld a, a                                       ; $766f: $7f
    push de                                       ; $7670: $d5
    sub c                                         ; $7671: $91
    ld b, d                                       ; $7672: $42
    ld c, b                                       ; $7673: $48
    db $fd                                        ; $7674: $fd
    dec sp                                        ; $7675: $3b
    ld de, $cd7e                                  ; $7676: $11 $7e $cd
    ld h, b                                       ; $7679: $60
    ld b, h                                       ; $767a: $44
    rst $30                                       ; $767b: $f7
    sbc [hl]                                      ; $767c: $9e
    ld b, e                                       ; $767d: $43
    or [hl]                                       ; $767e: $b6
    jp z, $a4e3                                   ; $767f: $ca $e3 $a4

    jr c, jr_05d_7615                             ; $7682: $38 $91

    ld [hl], l                                    ; $7684: $75
    db $ec                                        ; $7685: $ec
    add hl, sp                                    ; $7686: $39
    ld a, a                                       ; $7687: $7f
    ret                                           ; $7688: $c9


    ld [hl], e                                    ; $7689: $73
    call c, $9dd6                                 ; $768a: $dc $d6 $9d
    ld [hl], c                                    ; $768d: $71
    sbc c                                         ; $768e: $99
    ld [hl-], a                                   ; $768f: $32
    or [hl]                                       ; $7690: $b6
    db $dd                                        ; $7691: $dd
    ld b, h                                       ; $7692: $44
    ld a, [c]                                     ; $7693: $f2
    ccf                                           ; $7694: $3f
    ld a, [$bfd5]                                 ; $7695: $fa $d5 $bf
    sub $71                                       ; $7698: $d6 $71
    add [hl]                                      ; $769a: $86
    push af                                       ; $769b: $f5
    ld e, a                                       ; $769c: $5f
    ld [c], a                                     ; $769d: $e2
    dec e                                         ; $769e: $1d
    push de                                       ; $769f: $d5
    add sp, -$74                                  ; $76a0: $e8 $8c
    ldh [$57], a                                  ; $76a2: $e0 $57
    rst $38                                       ; $76a4: $ff
    adc $f7                                       ; $76a5: $ce $f7
    rst $10                                       ; $76a7: $d7
    ld a, [hl-]                                   ; $76a8: $3a
    jp nz, $4556                                  ; $76a9: $c2 $56 $45

    inc sp                                        ; $76ac: $33
    res 5, c                                      ; $76ad: $cb $a9
    add l                                         ; $76af: $85
    dec sp                                        ; $76b0: $3b
    db $e3                                        ; $76b1: $e3
    rst $08                                       ; $76b2: $cf
    ld sp, hl                                     ; $76b3: $f9
    dec bc                                        ; $76b4: $0b
    nop                                           ; $76b5: $00
    db $fc                                        ; $76b6: $fc
    pop bc                                        ; $76b7: $c1
    ld a, [c]                                     ; $76b8: $f2
    add sp, $71                                   ; $76b9: $e8 $71
    ldh a, [$75]                                  ; $76bb: $f0 $75
    ld [hl], b                                    ; $76bd: $70
    db $db                                        ; $76be: $db
    ld b, [hl]                                    ; $76bf: $46
    adc a                                         ; $76c0: $8f
    xor d                                         ; $76c1: $aa
    dec a                                         ; $76c2: $3d
    daa                                           ; $76c3: $27

jr_05d_76c4:
    ld l, $79                                     ; $76c4: $2e $79
    push bc                                       ; $76c6: $c5
    or [hl]                                       ; $76c7: $b6
    ld c, c                                       ; $76c8: $49
    or $0f                                        ; $76c9: $f6 $0f
    ld a, c                                       ; $76cb: $79
    add l                                         ; $76cc: $85
    ld l, l                                       ; $76cd: $6d
    ld b, l                                       ; $76ce: $45
    or h                                          ; $76cf: $b4
    ld c, [hl]                                    ; $76d0: $4e
    ld d, h                                       ; $76d1: $54
    db $d3                                        ; $76d2: $d3
    ld c, l                                       ; $76d3: $4d
    ld d, h                                       ; $76d4: $54
    or d                                          ; $76d5: $b2
    jr jr_05d_76c4                                ; $76d6: $18 $ec

    rst $38                                       ; $76d8: $ff
    cp $73                                        ; $76d9: $fe $73
    ld e, [hl]                                    ; $76db: $5e
    ld h, c                                       ; $76dc: $61
    ld a, e                                       ; $76dd: $7b
    rlca                                          ; $76de: $07
    sbc e                                         ; $76df: $9b
    ld [hl], e                                    ; $76e0: $73
    ld l, e                                       ; $76e1: $6b
    ld [hl], l                                    ; $76e2: $75
    adc a                                         ; $76e3: $8f
    ld sp, hl                                     ; $76e4: $f9
    ld e, a                                       ; $76e5: $5f

Jump_05d_76e6:
    sub a                                         ; $76e6: $97
    inc a                                         ; $76e7: $3c
    ld b, d                                       ; $76e8: $42
    sub e                                         ; $76e9: $93
    db $fd                                        ; $76ea: $fd
    or a                                          ; $76eb: $b7
    jp nz, $22b6                                  ; $76ec: $c2 $b6 $22

    ld c, d                                       ; $76ef: $4a
    add l                                         ; $76f0: $85
    jp $fee2                                      ; $76f1: $c3 $e2 $fe


    cpl                                           ; $76f4: $2f
    or c                                          ; $76f5: $b1
    db $dd                                        ; $76f6: $dd
    ld l, [hl]                                    ; $76f7: $6e
    jp z, Jump_000_34a9                           ; $76f8: $ca $a9 $34

    sub c                                         ; $76fb: $91
    call Call_05d_73f8                            ; $76fc: $cd $f8 $73
    ld [hl+], a                                   ; $76ff: $22
    xor c                                         ; $7700: $a9
    inc e                                         ; $7701: $1c
    rst $30                                       ; $7702: $f7
    cp [hl]                                       ; $7703: $be
    ld b, e                                       ; $7704: $43
    or [hl]                                       ; $7705: $b6
    srl d                                         ; $7706: $cb $3a
    inc hl                                        ; $7708: $23
    or c                                          ; $7709: $b1
    or a                                          ; $770a: $b7
    ld sp, hl                                     ; $770b: $f9
    ld a, a                                       ; $770c: $7f
    ei                                            ; $770d: $fb
    rst $38                                       ; $770e: $ff
    and l                                         ; $770f: $a5
    or b                                          ; $7710: $b0
    xor l                                         ; $7711: $ad
    ld [$a88b], sp                                ; $7712: $08 $8b $a8
    ld c, e                                       ; $7715: $4b
    ld e, $a1                                     ; $7716: $1e $a1
    xor c                                         ; $7718: $a9
    inc hl                                        ; $7719: $23
    ld e, d                                       ; $771a: $5a
    ld h, a                                       ; $771b: $67
    ld [hl], a                                    ; $771c: $77
    cp $2b                                        ; $771d: $fe $2b
    ld e, a                                       ; $771f: $5f
    sub [hl]                                      ; $7720: $96
    add $36                                       ; $7721: $c6 $36
    dec h                                         ; $7723: $25
    ld h, l                                       ; $7724: $65
    ld e, e                                       ; $7725: $5b
    and e                                         ; $7726: $a3
    add h                                         ; $7727: $84
    and l                                         ; $7728: $a5
    ccf                                           ; $7729: $3f
    cp b                                          ; $772a: $b8
    dec e                                         ; $772b: $1d
    db $dd                                        ; $772c: $dd
    sbc a                                         ; $772d: $9f
    cp a                                          ; $772e: $bf
    add $80                                       ; $772f: $c6 $80
    call nz, Call_000_1139                        ; $7731: $c4 $39 $11
    and l                                         ; $7734: $a5
    ccf                                           ; $7735: $3f
    jp Jump_000_2ffa                              ; $7736: $c3 $fa $2f


    nop                                           ; $7739: $00
    sbc h                                         ; $773a: $9c

jr_05d_773b:
    ld [hl], c                                    ; $773b: $71
    ld a, [c]                                     ; $773c: $f2
    ld l, l                                       ; $773d: $6d
    ld [de], a                                    ; $773e: $12
    inc a                                         ; $773f: $3c
    ldh a, [$fe]                                  ; $7740: $f0 $fe
    db $f4                                        ; $7742: $f4
    rst $18                                       ; $7743: $df
    ld a, [hl-]                                   ; $7744: $3a
    sub h                                         ; $7745: $94
    rst $38                                       ; $7746: $ff
    reti                                          ; $7747: $d9


    or [hl]                                       ; $7748: $b6
    cp b                                          ; $7749: $b8
    rst $38                                       ; $774a: $ff
    sbc h                                         ; $774b: $9c
    rla                                           ; $774c: $17
    xor $8c                                       ; $774d: $ee $8c
    ld d, a                                       ; $774f: $57
    pop hl                                        ; $7750: $e1
    ld b, d                                       ; $7751: $42
    cp [hl]                                       ; $7752: $be
    and $77                                       ; $7753: $e6 $77
    rst $28                                       ; $7755: $ef
    ld a, c                                       ; $7756: $79
    pop bc                                        ; $7757: $c1
    cpl                                           ; $7758: $2f
    call c, $df19                                 ; $7759: $dc $19 $df
    ld a, [$98ad]                                 ; $775c: $fa $ad $98
    ld d, $7d                                     ; $775f: $16 $7d
    adc c                                         ; $7761: $89
    ccf                                           ; $7762: $3f
    ld b, d                                       ; $7763: $42
    ld sp, hl                                     ; $7764: $f9
    sbc a                                         ; $7765: $9f
    xor l                                         ; $7766: $ad
    ld a, [hl]                                    ; $7767: $7e
    ld e, e                                       ; $7768: $5b
    ld sp, hl                                     ; $7769: $f9
    cp a                                          ; $776a: $bf
    push af                                       ; $776b: $f5
    rst $30                                       ; $776c: $f7
    sbc a                                         ; $776d: $9f
    di                                            ; $776e: $f3
    jp z, $970e                                   ; $776f: $ca $0e $97

    add hl, bc                                    ; $7772: $09
    ld a, [hl]                                    ; $7773: $7e
    db $fd                                        ; $7774: $fd
    ld a, c                                       ; $7775: $79
    cp e                                          ; $7776: $bb
    call nz, $cbb9                                ; $7777: $c4 $b9 $cb
    ld e, b                                       ; $777a: $58
    ld h, $8b                                     ; $777b: $26 $8b
    pop bc                                        ; $777d: $c1
    cp $f3                                        ; $777e: $fe $f3
    rst $38                                       ; $7780: $ff
    ld d, d                                       ; $7781: $52
    cp $67                                        ; $7782: $fe $67
    xor e                                         ; $7784: $ab

jr_05d_7785:
    rst $38                                       ; $7785: $ff
    ld c, e                                       ; $7786: $4b
    cp $6f                                        ; $7787: $fe $6f
    db $fd                                        ; $7789: $fd
    db $fd                                        ; $778a: $fd
    rst $20                                       ; $778b: $e7
    cp h                                          ; $778c: $bc
    ld [hl], b                                    ; $778d: $70
    ld h, a                                       ; $778e: $67
    db $fc                                        ; $778f: $fc
    add hl, sp                                    ; $7790: $39
    sub c                                         ; $7791: $91
    ld d, h                                       ; $7792: $54
    rst $38                                       ; $7793: $ff
    jp z, $adff                                   ; $7794: $ca $ff $ad

    ld d, a                                       ; $7797: $57
    cp $16                                        ; $7798: $fe $16
    rst $30                                       ; $779a: $f7
    db $fd                                        ; $779b: $fd
    rst $20                                       ; $779c: $e7
    ld b, h                                       ; $779d: $44
    ld d, d                                       ; $779e: $52
    jr nc, jr_05d_773b                            ; $779f: $30 $9a

    jp nc, $e33f                                  ; $77a1: $d2 $3f $e3

    ld e, e                                       ; $77a4: $5b
    rst $30                                       ; $77a5: $f7
    jr jr_05d_7785                                ; $77a6: $18 $dd

jr_05d_77a8:
    rst $38                                       ; $77a8: $ff
    ld a, [$bf9d]                                 ; $77a9: $fa $9d $bf
    ld d, $b7                                     ; $77ac: $16 $b7
    rst $38                                       ; $77ae: $ff
    xor a                                         ; $77af: $af
    db $fc                                        ; $77b0: $fc
    rst $08                                       ; $77b1: $cf
    ld d, [hl]                                    ; $77b2: $56
    rst $38                                       ; $77b3: $ff
    db $db                                        ; $77b4: $db
    ld e, [hl]                                    ; $77b5: $5e
    ld [c], a                                     ; $77b6: $e2
    dec e                                         ; $77b7: $1d
    dec h                                         ; $77b8: $25
    inc a                                         ; $77b9: $3c
    pop de                                        ; $77ba: $d1
    ld [$eb2c], a                                 ; $77bb: $ea $2c $eb
    inc l                                         ; $77be: $2c
    and a                                         ; $77bf: $a7
    xor l                                         ; $77c0: $ad
    jr z, jr_05d_77a8                             ; $77c1: $28 $e5

    ld a, a                                       ; $77c3: $7f
    or [hl]                                       ; $77c4: $b6
    ld a, [de]                                    ; $77c5: $1a
    scf                                           ; $77c6: $37
    ld e, l                                       ; $77c7: $5d
    db $db                                        ; $77c8: $db
    and h                                         ; $77c9: $a4
    ld a, [c]                                     ; $77ca: $f2
    ld h, a                                       ; $77cb: $67
    rst $30                                       ; $77cc: $f7
    ld e, d                                       ; $77cd: $5a
    cp a                                          ; $77ce: $bf
    db $fc                                        ; $77cf: $fc
    rst $18                                       ; $77d0: $df
    ld a, [$cffb]                                 ; $77d1: $fa $fb $cf
    ld a, c                                       ; $77d4: $79
    cp c                                          ; $77d5: $b9
    db $ed                                        ; $77d6: $ed
    ld c, h                                       ; $77d7: $4c
    cp l                                          ; $77d8: $bd
    rst $28                                       ; $77d9: $ef
    rst $28                                       ; $77da: $ef
    ld e, a                                       ; $77db: $5f
    ld [c], a                                     ; $77dc: $e2
    dec de                                        ; $77dd: $1b
    sub $df                                       ; $77de: $d6 $df
    cp d                                          ; $77e0: $ba
    add e                                         ; $77e1: $83
    call $e56d                                    ; $77e2: $cd $6d $e5
    ld a, a                                       ; $77e5: $7f
    or [hl]                                       ; $77e6: $b6
    ld a, [de]                                    ; $77e7: $1a
    pop hl                                        ; $77e8: $e1
    or b                                          ; $77e9: $b0
    ld d, l                                       ; $77ea: $55
    cp [hl]                                       ; $77eb: $be
    pop bc                                        ; $77ec: $c1
    jp nz, $d48c                                  ; $77ed: $c2 $8c $d4

    rst $08                                       ; $77f0: $cf
    ld h, $6e                                     ; $77f1: $26 $6e
    rst $30                                       ; $77f3: $f7
    rst $20                                       ; $77f4: $e7
    rst $18                                       ; $77f5: $df
    jp nz, $b19d                                  ; $77f6: $c2 $9d $b1

    db $fd                                        ; $77f9: $fd
    jp z, Jump_05d_6cff                           ; $77fa: $ca $ff $6c

    dec [hl]                                      ; $77fd: $35
    jp nz, Jump_05d_672f                          ; $77fe: $c2 $2f $67

    ld [hl], h                                    ; $7801: $74
    ld l, a                                       ; $7802: $6f
    sub e                                         ; $7803: $93
    and d                                         ; $7804: $a2
    ld [c], a                                     ; $7805: $e2
    cp [hl]                                       ; $7806: $be
    xor c                                         ; $7807: $a9
    ld d, h                                       ; $7808: $54
    cp e                                          ; $7809: $bb
    ld c, l                                       ; $780a: $4d
    jp nz, $ca4a                                  ; $780b: $c2 $4a $ca

    and d                                         ; $780e: $a2
    db $e4                                        ; $780f: $e4
    ccf                                           ; $7810: $3f
    adc e                                         ; $7811: $8b
    db $db                                        ; $7812: $db
    ld e, a                                       ; $7813: $5f
    ld l, [hl]                                    ; $7814: $6e
    ld a, c                                       ; $7815: $79
    add h                                         ; $7816: $84
    ld h, $ac                                     ; $7817: $26 $ac

Call_05d_7819:
    ld e, d                                       ; $7819: $5a
    db $eb                                        ; $781a: $eb
    pop de                                        ; $781b: $d1
    jp z, Jump_05d_6cff                           ; $781c: $ca $ff $6c

    ld e, e                                       ; $781f: $5b
    call c, Call_000_25ff                         ; $7820: $dc $ff $25
    call c, Call_05d_5f19                         ; $7823: $dc $19 $5f
    ld a, [hl+]                                   ; $7826: $2a
    ld e, h                                       ; $7827: $5c
    ret z                                         ; $7828: $c8

    rst $10                                       ; $7829: $d7
    db $fc                                        ; $782a: $fc
    xor $3d                                       ; $782b: $ee $3d
    ld e, a                                       ; $782d: $5f
    add d                                         ; $782e: $82
    ld e, a                                       ; $782f: $5f
    cp b                                          ; $7830: $b8
    inc sp                                        ; $7831: $33
    cp [hl]                                       ; $7832: $be
    push af                                       ; $7833: $f5
    ld e, e                                       ; $7834: $5b
    ld sp, $3a2d                                  ; $7835: $31 $2d $3a
    xor c                                         ; $7838: $a9
    inc e                                         ; $7839: $1c
    or a                                          ; $783a: $b7
    cp a                                          ; $783b: $bf
    sub l                                         ; $783c: $95
    cp $5b                                        ; $783d: $fe $5b
    ld b, a                                       ; $783f: $47
    inc d                                         ; $7840: $14
    or a                                          ; $7841: $b7
    jr c, @+$01                                   ; $7842: $38 $ff

    ld e, e                                       ; $7844: $5b
    add hl, de                                    ; $7845: $19
    db $db                                        ; $7846: $db
    ld l, [hl]                                    ; $7847: $6e
    ld [hl+], a                                   ; $7848: $22
    add hl, sp                                    ; $7849: $39
    rst $28                                       ; $784a: $ef
    add d                                         ; $784b: $82
    ld h, [hl]                                    ; $784c: $66
    or b                                          ; $784d: $b0
    cp $bf                                        ; $784e: $fe $bf
    nop                                           ; $7850: $00
    ld e, [hl]                                    ; $7851: $5e
    or c                                          ; $7852: $b1
    ld l, l                                       ; $7853: $6d
    jp nc, $cae1                                  ; $7854: $d2 $e1 $ca

    sbc d                                         ; $7857: $9a
    ld c, b                                       ; $7858: $48
    or $f7                                        ; $7859: $f6 $f7
    rst $10                                       ; $785b: $d7
    ld sp, hl                                     ; $785c: $f9
    or l                                          ; $785d: $b5
    ld l, b                                       ; $785e: $68
    ld c, l                                       ; $785f: $4d
    ld h, h                                       ; $7860: $64
    cp l                                          ; $7861: $bd
    ld a, l                                       ; $7862: $7d
    ret                                           ; $7863: $c9


    di                                            ; $7864: $f3
    ccf                                           ; $7865: $3f
    db $db                                        ; $7866: $db
    ld d, $8a                                     ; $7867: $16 $8a
    or d                                          ; $7869: $b2
    cp l                                          ; $786a: $bd
    ld l, a                                       ; $786b: $6f
    jp c, $d28a                                   ; $786c: $da $8a $d2

    ld b, h                                       ; $786f: $44
    sub $bd                                       ; $7870: $d6 $bd
    ld a, [hl-]                                   ; $7872: $3a
    cp e                                          ; $7873: $bb
    ld [hl], e                                    ; $7874: $73
    ld [hl], h                                    ; $7875: $74
    rst $38                                       ; $7876: $ff
    db $fd                                        ; $7877: $fd
    rst $20                                       ; $7878: $e7
    cp h                                          ; $7879: $bc
    ld h, $a6                                     ; $787a: $26 $a6
    sub b                                         ; $787c: $90
    or l                                          ; $787d: $b5
    sbc $ea                                       ; $787e: $de $ea
    rla                                           ; $7880: $17
    db $fc                                        ; $7881: $fc
    sbc d                                         ; $7882: $9a
    ld b, h                                       ; $7883: $44
    ld d, l                                       ; $7884: $55
    and h                                         ; $7885: $a4
    adc c                                         ; $7886: $89
    xor h                                         ; $7887: $ac
    ld a, e                                       ; $7888: $7b
    push hl                                       ; $7889: $e5
    rst $38                                       ; $788a: $ff
    sub $df                                       ; $788b: $d6 $df
    ld a, a                                       ; $788d: $7f
    adc $cb                                       ; $788e: $ce $cb
    ld l, l                                       ; $7890: $6d
    ld h, a                                       ; $7891: $67
    ld [$7f7d], a                                 ; $7892: $ea $7d $7f
    rst $38                                       ; $7895: $ff
    ld [de], a                                    ; $7896: $12
    cpl                                           ; $7897: $2f
    ld d, c                                       ; $7898: $51
    dec d                                         ; $7899: $15
    xor c                                         ; $789a: $a9
    ld [hl], c                                    ; $789b: $71
    dec hl                                        ; $789c: $2b
    ld c, d                                       ; $789d: $4a
    inc de                                        ; $789e: $13
    ld e, c                                       ; $789f: $59
    rst $30                                       ; $78a0: $f7
    jp z, $fefe                                   ; $78a1: $ca $fe $fe

    ld [hl], e                                    ; $78a4: $73
    ld e, [hl]                                    ; $78a5: $5e
    db $fd                                        ; $78a6: $fd
    add hl, sp                                    ; $78a7: $39
    ld l, [hl]                                    ; $78a8: $6e
    ld e, l                                       ; $78a9: $5d
    ld a, [c]                                     ; $78aa: $f2
    ld [$874d], sp                                ; $78ab: $08 $4d $87
    dec hl                                        ; $78ae: $2b
    add e                                         ; $78af: $83
    ld d, b                                       ; $78b0: $50
    set 7, [hl]                                   ; $78b1: $cb $fe
    cp $3a                                        ; $78b3: $fe $3a
    cp a                                          ; $78b5: $bf
    ld d, $ad                                     ; $78b6: $16 $ad
    adc c                                         ; $78b8: $89
    xor h                                         ; $78b9: $ac
    or a                                          ; $78ba: $b7
    sub e                                         ; $78bb: $93
    xor d                                         ; $78bc: $aa
    sub b                                         ; $78bd: $90
    adc a                                         ; $78be: $8f
    ld l, e                                       ; $78bf: $6b
    dec e                                         ; $78c0: $1d
    db $fd                                        ; $78c1: $fd
    ld e, a                                       ; $78c2: $5f
    ld a, [c]                                     ; $78c3: $f2
    db $e3                                        ; $78c4: $e3
    xor h                                         ; $78c5: $ac
    dec [hl]                                      ; $78c6: $35
    ld e, l                                       ; $78c7: $5d
    ld a, [c]                                     ; $78c8: $f2
    ld [$584d], sp                                ; $78c9: $08 $4d $58
    or l                                          ; $78cc: $b5
    sub $a3                                       ; $78cd: $d6 $a3
    push hl                                       ; $78cf: $e5
    db $e3                                        ; $78d0: $e3
    ld e, d                                       ; $78d1: $5a
    rst $38                                       ; $78d2: $ff
    db $fd                                        ; $78d3: $fd
    ld e, a                                       ; $78d4: $5f
    sbc d                                         ; $78d5: $9a
    cp a                                          ; $78d6: $bf
    ld [hl], e                                    ; $78d7: $73
    xor [hl]                                      ; $78d8: $ae
    ld h, $b2                                     ; $78d9: $26 $b2
    sbc $4e                                       ; $78db: $de $4e
    ld a, [hl+]                                   ; $78dd: $2a
    rst $00                                       ; $78de: $c7
    db $ed                                        ; $78df: $ed
    ld l, a                                       ; $78e0: $6f
    ld sp, hl                                     ; $78e1: $f9
    ld [hl], c                                    ; $78e2: $71
    or [hl]                                       ; $78e3: $b6
    ld l, $00                                     ; $78e4: $2e $00
    ld e, $a1                                     ; $78e6: $1e $a1
    ret                                           ; $78e8: $c9


    cp [hl]                                       ; $78e9: $be
    ld b, a                                       ; $78ea: $47
    dec hl                                        ; $78eb: $2b
    and [hl]                                      ; $78ec: $a6
    ld h, l                                       ; $78ed: $65
    scf                                           ; $78ee: $37
    ld d, c                                       ; $78ef: $51
    dec h                                         ; $78f0: $25
    ld h, l                                       ; $78f1: $65
    rst $38                                       ; $78f2: $ff
    xor l                                         ; $78f3: $ad
    sbc $80                                       ; $78f4: $de $80
    ld h, b                                       ; $78f6: $60
    add hl, bc                                    ; $78f7: $09
    rst $08                                       ; $78f8: $cf
    sub [hl]                                      ; $78f9: $96
    rst $38                                       ; $78fa: $ff
    dec sp                                        ; $78fb: $3b
    rst $18                                       ; $78fc: $df
    ld a, [$e56d]                                 ; $78fd: $fa $6d $e5
    rst $38                                       ; $7900: $ff
    sub $df                                       ; $7901: $d6 $df
    ld a, a                                       ; $7903: $7f
    adc $8b                                       ; $7904: $ce $8b
    inc de                                        ; $7906: $13
    jp c, Jump_05d_6863                           ; $7907: $da $63 $68

    ld [hl], a                                    ; $790a: $77
    ld sp, hl                                     ; $790b: $f9
    sbc l                                         ; $790c: $9d
    xor c                                         ; $790d: $a9
    rst $30                                       ; $790e: $f7
    db $fd                                        ; $790f: $fd
    cp l                                          ; $7910: $bd
    nop                                           ; $7911: $00
    sbc [hl]                                      ; $7912: $9e
    db $e3                                        ; $7913: $e3
    or [hl]                                       ; $7914: $b6
    and d                                         ; $7915: $a2
    ld l, l                                       ; $7916: $6d
    ld c, c                                       ; $7917: $49
    sub e                                         ; $7918: $93
    ld a, d                                       ; $7919: $7a
    ld b, [hl]                                    ; $791a: $46
    ld [hl], a                                    ; $791b: $77
    ld b, $93                                     ; $791c: $06 $93
    jp nz, Jump_05d_62b6                          ; $791e: $c2 $b6 $62

    sbc e                                         ; $7921: $9b
    inc d                                         ; $7922: $14
    sub b                                         ; $7923: $90
    or b                                          ; $7924: $b0
    ld h, $5b                                     ; $7925: $26 $5b
    ld sp, hl                                     ; $7927: $f9
    cp a                                          ; $7928: $bf
    push af                                       ; $7929: $f5
    rst $30                                       ; $792a: $f7
    sbc a                                         ; $792b: $9f
    di                                            ; $792c: $f3
    ld [hl], d                                    ; $792d: $72
    db $db                                        ; $792e: $db
    sbc c                                         ; $792f: $99
    ld a, d                                       ; $7930: $7a
    rst $18                                       ; $7931: $df
    rst $18                                       ; $7932: $df
    cp a                                          ; $7933: $bf

jr_05d_7934:
    db $e4                                        ; $7934: $e4
    ld de, $0e9a                                  ; $7935: $11 $9a $0e
    ld d, a                                       ; $7938: $57
    ld b, $a1                                     ; $7939: $06 $a1
    ld d, $8c                                     ; $793b: $16 $8c
    db $fd                                        ; $793d: $fd
    ld e, e                                       ; $793e: $5b
    ld c, c                                       ; $793f: $49
    or c                                          ; $7940: $b1
    ld sp, $e320                                  ; $7941: $31 $20 $e3
    sbc h                                         ; $7944: $9c
    ret nc                                        ; $7945: $d0

    sbc [hl]                                      ; $7946: $9e
    dec sp                                        ; $7947: $3b
    xor h                                         ; $7948: $ac
    or e                                          ; $7949: $b3
    ld c, h                                       ; $794a: $4c
    ld sp, hl                                     ; $794b: $f9
    add [hl]                                      ; $794c: $86
    push af                                       ; $794d: $f5
    ld h, $05                                     ; $794e: $26 $05
    db $e3                                        ; $7950: $e3
    ld a, h                                       ; $7951: $7c
    call $8d60                                    ; $7952: $cd $60 $8d
    sbc b                                         ; $7955: $98
    call nc, Call_05d_4dbd                        ; $7956: $d4 $bd $4d
    jp nz, $ad13                                  ; $7959: $c2 $13 $ad

    jp $3595                                      ; $795c: $c3 $95 $35


    ld d, l                                       ; $795f: $55
    sub $17                                       ; $7960: $d6 $17
    nop                                           ; $7962: $00
    ld a, h                                       ; $7963: $7c
    ld d, c                                       ; $7964: $51
    and c                                         ; $7965: $a1
    sbc c                                         ; $7966: $99
    ld e, c                                       ; $7967: $59
    halt                                          ; $7968: $76
    inc de                                        ; $7969: $13
    sub l                                         ; $796a: $95
    ld a, b                                       ; $796b: $78
    rst $38                                       ; $796c: $ff
    call z, $3867                                 ; $796d: $cc $67 $38
    dec l                                         ; $7970: $2d
    ld c, [hl]                                    ; $7971: $4e
    cp a                                          ; $7972: $bf
    ldh [$81], a                                  ; $7973: $e0 $81
    rst $30                                       ; $7975: $f7
    ld b, [hl]                                    ; $7976: $46
    adc c                                         ; $7977: $89
    add l                                         ; $7978: $85
    add l                                         ; $7979: $85
    rst $18                                       ; $797a: $df
    db $db                                        ; $797b: $db
    ld c, c                                       ; $797c: $49
    pop af                                        ; $797d: $f1
    inc a                                         ; $797e: $3c
    ld h, e                                       ; $797f: $63
    reti                                          ; $7980: $d9


    dec b                                         ; $7981: $05
    nop                                           ; $7982: $00
    cp h                                          ; $7983: $bc
    bit 4, b                                      ; $7984: $cb $60
    add h                                         ; $7986: $84
    ld e, a                                       ; $7987: $5f
    or $af                                        ; $7988: $f6 $af
    ld sp, hl                                     ; $798a: $f9
    ld l, l                                       ; $798b: $6d
    ld [hl], c                                    ; $798c: $71
    adc $2b                                       ; $798d: $ce $2b
    ld a, a                                       ; $798f: $7f
    rst $38                                       ; $7990: $ff
    rst $18                                       ; $7991: $df
    ld a, d                                       ; $7992: $7a
    cpl                                           ; $7993: $2f
    ld [hl], c                                    ; $7994: $71
    ld l, [hl]                                    ; $7995: $6e
    sub e                                         ; $7996: $93
    ld h, d                                       ; $7997: $62
    dec [hl]                                      ; $7998: $35
    pop de                                        ; $7999: $d1
    and $7f                                       ; $799a: $e6 $7f
    xor c                                         ; $799c: $a9
    scf                                           ; $799d: $37
    jr nz, jr_05d_7934                            ; $799e: $20 $94

    call nc, Call_05d_4dbd                        ; $79a0: $d4 $bd $4d
    add d                                         ; $79a3: $82
    xor c                                         ; $79a4: $a9
    ld l, d                                       ; $79a5: $6a
    cp e                                          ; $79a6: $bb
    add hl, hl                                    ; $79a7: $29
    daa                                           ; $79a8: $27
    ld d, d                                       ; $79a9: $52
    db $ed                                        ; $79aa: $ed
    ld e, d                                       ; $79ab: $5a
    sub e                                         ; $79ac: $93
    ld c, $57                                     ; $79ad: $0e $57
    sub $59                                       ; $79af: $d6 $59
    halt                                          ; $79b1: $76
    ld bc, $7f9c                                  ; $79b2: $01 $9c $7f
    ld a, [hl]                                    ; $79b5: $7e
    xor l                                         ; $79b6: $ad
    and e                                         ; $79b7: $a3
    inc [hl]                                      ; $79b8: $34
    sub a                                         ; $79b9: $97
    pop bc                                        ; $79ba: $c1
    ld [$0947], sp                                ; $79bb: $08 $47 $09
    db $ed                                        ; $79be: $ed
    xor l                                         ; $79bf: $ad
    pop af                                        ; $79c0: $f1
    sbc h                                         ; $79c1: $9c
    ld d, b                                       ; $79c2: $50
    xor h                                         ; $79c3: $ac
    db $ec                                        ; $79c4: $ec
    ld e, a                                       ; $79c5: $5f
    ld [hl], a                                    ; $79c6: $77
    ld d, h                                       ; $79c7: $54
    sub c                                         ; $79c8: $91
    or $dc                                        ; $79c9: $f6 $dc
    ld e, a                                       ; $79cb: $5f
    ld a, [hl-]                                   ; $79cc: $3a
    jp $bfff                                      ; $79cd: $c3 $ff $bf


    nop                                           ; $79d0: $00
    ld a, h                                       ; $79d1: $7c
    ld d, c                                       ; $79d2: $51
    and c                                         ; $79d3: $a1
    add hl, de                                    ; $79d4: $19
    xor h                                         ; $79d5: $ac
    pop af                                        ; $79d6: $f1
    cp $2f                                        ; $79d7: $fe $2f
    ld [hl], c                                    ; $79d9: $71
    or b                                          ; $79da: $b0
    rst $08                                       ; $79db: $cf
    db $e3                                        ; $79dc: $e3
    sbc h                                         ; $79dd: $9c
    ld c, b                                       ; $79de: $48
    ld a, [hl+]                                   ; $79df: $2a
    cp d                                          ; $79e0: $ba
    ld c, c                                       ; $79e1: $49
    add a                                         ; $79e2: $87
    dec hl                                        ; $79e3: $2b
    or e                                          ; $79e4: $b3
    ld l, l                                       ; $79e5: $6d
    ld sp, hl                                     ; $79e6: $f9
    rst $08                                       ; $79e7: $cf
    cp [hl]                                       ; $79e8: $be
    ld l, d                                       ; $79e9: $6a
    ret c                                         ; $79ea: $d8

    adc h                                         ; $79eb: $8c
    dec l                                         ; $79ec: $2d
    xor h                                         ; $79ed: $ac
    dec bc                                        ; $79ee: $0b
    nop                                           ; $79ef: $00
    inc e                                         ; $79f0: $1c
    ld h, a                                       ; $79f1: $67
    ld l, l                                       ; $79f2: $6d
    db $fd                                        ; $79f3: $fd
    sub a                                         ; $79f4: $97
    cp a                                          ; $79f5: $bf
    jp hl                                         ; $79f6: $e9


    sbc a                                         ; $79f7: $9f
    di                                            ; $79f8: $f3
    jp z, $8d29                                   ; $79f9: $ca $29 $8d

    ei                                            ; $79fc: $fb
    and [hl]                                      ; $79fd: $a6
    jp nc, Jump_05d_42fc                          ; $79fe: $d2 $fc $42

    ld hl, sp+$2f                                 ; $7a01: $f8 $2f
    nop                                           ; $7a03: $00
    sbc [hl]                                      ; $7a04: $9e
    sbc l                                         ; $7a05: $9d
    adc c                                         ; $7a06: $89
    push af                                       ; $7a07: $f5
    adc d                                         ; $7a08: $8a
    dec d                                         ; $7a09: $15
    sbc [hl]                                      ; $7a0a: $9e
    ret nc                                        ; $7a0b: $d0

    call c, $35fc                                 ; $7a0c: $dc $fc $35
    add hl, hl                                    ; $7a0f: $29
    adc a                                         ; $7a10: $8f
    ld [hl], e                                    ; $7a11: $73
    jr z, @-$55                                   ; $7a12: $28 $a9

    add hl, sp                                    ; $7a14: $39
    ld c, d                                       ; $7a15: $4a
    di                                            ; $7a16: $f3
    db $eb                                        ; $7a17: $eb
    ld e, e                                       ; $7a18: $5b
    ld a, [hl]                                    ; $7a19: $7e
    add $c5                                       ; $7a1a: $c6 $c5
    ld [hl], $a7                                  ; $7a1c: $36 $a7
    sub $fc                                       ; $7a1e: $d6 $fc
    sbc l                                         ; $7a20: $9d
    ld d, c                                       ; $7a21: $51
    ld a, [$ff9d]                                 ; $7a22: $fa $9d $ff
    add d                                         ; $7a25: $82
    rst $38                                       ; $7a26: $ff
    ldh [$9a], a                                  ; $7a27: $e0 $9a
    db $fd                                        ; $7a29: $fd
    dec b                                         ; $7a2a: $05
    nop                                           ; $7a2b: $00
    sbc [hl]                                      ; $7a2c: $9e
    dec c                                         ; $7a2d: $0d
    ld c, b                                       ; $7a2e: $48
    or h                                          ; $7a2f: $b4
    ld l, [hl]                                    ; $7a30: $6e
    sbc h                                         ; $7a31: $9c
    di                                            ; $7a32: $f3
    ld h, a                                       ; $7a33: $67
    call nc, Call_05d_5aa4                        ; $7a34: $d4 $a4 $5a
    db $dd                                        ; $7a37: $dd
    ld d, c                                       ; $7a38: $51
    sbc e                                         ; $7a39: $9b
    ld d, e                                       ; $7a3a: $53
    set 3, a                                      ; $7a3b: $cb $df
    di                                            ; $7a3d: $f3
    rst $20                                       ; $7a3e: $e7
    ld b, h                                       ; $7a3f: $44
    ld d, d                                       ; $7a40: $52
    ld [hl], e                                    ; $7a41: $73
    sub h                                         ; $7a42: $94
    sbc $7a                                       ; $7a43: $de $7a
    ld l, h                                       ; $7a45: $6c
    ld l, c                                       ; $7a46: $69
    sbc h                                         ; $7a47: $9c
    adc c                                         ; $7a48: $89
    push af                                       ; $7a49: $f5
    sbc d                                         ; $7a4a: $9a
    ld e, a                                       ; $7a4b: $5f
    ld e, a                                       ; $7a4c: $5f
    rst $30                                       ; $7a4d: $f7
    xor b                                         ; $7a4e: $a8
    rst $38                                       ; $7a4f: $ff
    cp d                                          ; $7a50: $ba
    nop                                           ; $7a51: $00
    ld c, $76                                     ; $7a52: $0e $76
    ld hl, $f251                                  ; $7a54: $21 $51 $f2
    or a                                          ; $7a57: $b7
    ld l, c                                       ; $7a58: $69
    ld l, l                                       ; $7a59: $6d
    push de                                       ; $7a5a: $d5
    rst $08                                       ; $7a5b: $cf
    ld h, b                                       ; $7a5c: $60
    db $ec                                        ; $7a5d: $ec
    rst $10                                       ; $7a5e: $d7
    or b                                          ; $7a5f: $b0
    ld hl, sp-$05                                 ; $7a60: $f8 $fb
    sbc $d2                                       ; $7a62: $de $d2
    db $fc                                        ; $7a64: $fc
    ld a, [$1b17]                                 ; $7a65: $fa $17 $1b
    ld hl, sp-$2d                                 ; $7a68: $f8 $d3
    or $02                                        ; $7a6a: $f6 $02
    cp h                                          ; $7a6c: $bc
    ld e, a                                       ; $7a6d: $5f
    rst $28                                       ; $7a6e: $ef
    rst $28                                       ; $7a6f: $ef
    or d                                          ; $7a70: $b2
    scf                                           ; $7a71: $37
    call Call_000_0e31                            ; $7a72: $cd $31 $0e
    ld e, d                                       ; $7a75: $5a
    rst $38                                       ; $7a76: $ff
    dec bc                                        ; $7a77: $0b
    ld e, $83                                     ; $7a78: $1e $83
    xor l                                         ; $7a7a: $ad
    ld a, [hl+]                                   ; $7a7b: $2a
    ld l, e                                       ; $7a7c: $6b
    dec b                                         ; $7a7d: $05
    db $db                                        ; $7a7e: $db
    adc $d6                                       ; $7a7f: $ce $d6
    and d                                         ; $7a81: $a2
    sub h                                         ; $7a82: $94
    ld b, $9b                                     ; $7a83: $06 $9b
    db $e3                                        ; $7a85: $e3
    sbc h                                         ; $7a86: $9c

jr_05d_7a87:
    or l                                          ; $7a87: $b5
    jr c, jr_05d_7a87                             ; $7a88: $38 $fd

    rla                                           ; $7a8a: $17
    nop                                           ; $7a8b: $00
    inc e                                         ; $7a8c: $1c
    daa                                           ; $7a8d: $27
    ld a, d                                       ; $7a8e: $7a
    and d                                         ; $7a8f: $a2
    ld h, $da                                     ; $7a90: $26 $da
    db $fc                                        ; $7a92: $fc
    cpl                                           ; $7a93: $2f
    call $c36f                                    ; $7a94: $cd $6f $c3
    ld a, [de]                                    ; $7a97: $1a
    xor l                                         ; $7a98: $ad
    ld sp, hl                                     ; $7a99: $f9
    push af                                       ; $7a9a: $f5
    cpl                                           ; $7a9b: $2f
    dec de                                        ; $7a9c: $1b
    ret z                                         ; $7a9d: $c8

    cp $4b                                        ; $7a9e: $fe $4b
    or [hl]                                       ; $7aa0: $b6
    rst $20                                       ; $7aa1: $e7
    sbc $2d                                       ; $7aa2: $de $2d
    jr z, @+$3b                                   ; $7aa4: $28 $39

    adc h                                         ; $7aa6: $8c
    add e                                         ; $7aa7: $83
    db $dd                                        ; $7aa8: $dd
    sbc a                                         ; $7aa9: $9f
    rst $38                                       ; $7aaa: $ff
    ld e, a                                       ; $7aab: $5f
    nop                                           ; $7aac: $00
    ld a, h                                       ; $7aad: $7c
    dec sp                                        ; $7aae: $3b
    ld l, l                                       ; $7aaf: $6d
    dec [hl]                                      ; $7ab0: $35
    ld a, a                                       ; $7ab1: $7f
    rst $20                                       ; $7ab2: $e7
    ld e, h                                       ; $7ab3: $5c
    dec [hl]                                      ; $7ab4: $35
    pop de                                        ; $7ab5: $d1
    add hl, sp                                    ; $7ab6: $39
    inc h                                         ; $7ab7: $24
    ld a, a                                       ; $7ab8: $7f
    and h                                         ; $7ab9: $a4
    inc hl                                        ; $7aba: $23
    rst $38                                       ; $7abb: $ff
    sub $fc                                       ; $7abc: $d6 $fc
    jp nz, Jump_05d_7eb5                          ; $7abe: $c2 $b5 $7e

    jr z, jr_05d_7ac3                             ; $7ac1: $28 $00

jr_05d_7ac3:
    ld a, h                                       ; $7ac3: $7c
    ld e, e                                       ; $7ac4: $5b
    db $e3                                        ; $7ac5: $e3
    sbc h                                         ; $7ac6: $9c
    rla                                           ; $7ac7: $17
    sub [hl]                                      ; $7ac8: $96
    halt                                          ; $7ac9: $76
    ld d, d                                       ; $7aca: $52
    ld c, [hl]                                    ; $7acb: $4e
    and d                                         ; $7acc: $a2
    add l                                         ; $7acd: $85
    ld l, h                                       ; $7ace: $6c
    ld l, c                                       ; $7acf: $69
    ld a, [hl]                                    ; $7ad0: $7e
    cp l                                          ; $7ad1: $bd
    db $fd                                        ; $7ad2: $fd
    ld sp, hl                                     ; $7ad3: $f9
    rst $28                                       ; $7ad4: $ef
    sbc $bf                                       ; $7ad5: $de $bf

jr_05d_7ad7:
    nop                                           ; $7ad7: $00
    ld c, $b2                                     ; $7ad8: $0e $b2
    ld d, $9e                                     ; $7ada: $16 $9e
    or l                                          ; $7adc: $b5
    push de                                       ; $7add: $d5
    call z, Call_000_21ce                         ; $7ade: $cc $ce $21
    reti                                          ; $7ae1: $d9


    jr c, jr_05d_7ad7                             ; $7ae2: $38 $f3

    db $ed                                        ; $7ae4: $ed
    ld hl, $f258                                  ; $7ae5: $21 $58 $f2
    ld a, a                                       ; $7ae8: $7f
    rst $20                                       ; $7ae9: $e7
    db $fc                                        ; $7aea: $fc
    dec bc                                        ; $7aeb: $0b
    nop                                           ; $7aec: $00
    ld e, $8f                                     ; $7aed: $1e $8f
    ld c, l                                       ; $7aef: $4d
    rst $00                                       ; $7af0: $c7
    ld e, d                                       ; $7af1: $5a
    or h                                          ; $7af2: $b4
    and $38                                       ; $7af3: $e6 $38
    ld [hl], b                                    ; $7af5: $70
    ret c                                         ; $7af6: $d8

    adc h                                         ; $7af7: $8c
    inc de                                        ; $7af8: $13
    ld sp, hl                                     ; $7af9: $f9
    or a                                          ; $7afa: $b7
    ld c, [hl]                                    ; $7afb: $4e
    adc h                                         ; $7afc: $8c
    ld sp, hl                                     ; $7afd: $f9
    ld a, [c]                                     ; $7afe: $f2
    inc sp                                        ; $7aff: $33
    db $eb                                        ; $7b00: $eb
    call z, $348c                                 ; $7b01: $cc $8c $34
    rst $00                                       ; $7b04: $c7
    sub [hl]                                      ; $7b05: $96
    xor $ed                                       ; $7b06: $ee $ed
    ld c, c                                       ; $7b08: $49
    ld [hl], e                                    ; $7b09: $73
    ld c, e                                       ; $7b0a: $4b
    ld [hl], e                                    ; $7b0b: $73
    ld c, h                                       ; $7b0c: $4c
    inc l                                         ; $7b0d: $2c
    rra                                           ; $7b0e: $1f
    pop hl                                        ; $7b0f: $e1
    ld l, a                                       ; $7b10: $6f
    ld l, [hl]                                    ; $7b11: $6e
    nop                                           ; $7b12: $00
    ld a, h                                       ; $7b13: $7c
    ld a, a                                       ; $7b14: $7f
    ld [de], a                                    ; $7b15: $12
    call nz, Call_000_194c                        ; $7b16: $c4 $4c $19
    db $db                                        ; $7b19: $db
    xor $55                                       ; $7b1a: $ee $55
    ld a, [$fd6f]                                 ; $7b1c: $fa $6f $fd
    xor a                                         ; $7b1f: $af
    ld a, e                                       ; $7b20: $7b
    ld l, e                                       ; $7b21: $6b
    or h                                          ; $7b22: $b4
    adc $18                                       ; $7b23: $ce $18
    db $fd                                        ; $7b25: $fd
    ld [hl], e                                    ; $7b26: $73
    adc a                                         ; $7b27: $8f
    rst $38                                       ; $7b28: $ff
    ld a, e                                       ; $7b29: $7b
    add $a8                                       ; $7b2a: $c6 $a8
    ld c, e                                       ; $7b2c: $4b
    ld e, $ef                                     ; $7b2d: $1e $ef
    ld a, [hl]                                    ; $7b2f: $7e
    add hl, hl                                    ; $7b30: $29
    rst $38                                       ; $7b31: $ff
    ld h, a                                       ; $7b32: $67
    ld a, a                                       ; $7b33: $7f
    adc $5a                                       ; $7b34: $ce $5a
    cp a                                          ; $7b36: $bf
    xor $ad                                       ; $7b37: $ee $ad
    ld [hl], c                                    ; $7b39: $71
    ld c, [hl]                                    ; $7b3a: $4e
    ld [hl], b                                    ; $7b3b: $70
    inc bc                                        ; $7b3c: $03
    ld a, h                                       ; $7b3d: $7c
    db $e3                                        ; $7b3e: $e3
    cp [hl]                                       ; $7b3f: $be
    or a                                          ; $7b40: $b7
    ld d, [hl]                                    ; $7b41: $56
    dec e                                         ; $7b42: $1d
    inc sp                                        ; $7b43: $33
    ld b, d                                       ; $7b44: $42
    ld l, c                                       ; $7b45: $69
    or b                                          ; $7b46: $b0
    add hl, sp                                    ; $7b47: $39
    adc $59                                       ; $7b48: $ce $59
    db $eb                                        ; $7b4a: $eb
    rst $10                                       ; $7b4b: $d7
    db $fc                                        ; $7b4c: $fc
    ld a, d                                       ; $7b4d: $7a
    rst $38                                       ; $7b4e: $ff

Call_05d_7b4f:
    ei                                            ; $7b4f: $fb
    rst $38                                       ; $7b50: $ff
    ld [bc], a                                    ; $7b51: $02
    cp h                                          ; $7b52: $bc
    ld e, a                                       ; $7b53: $5f
    ld [$62bf], sp                                ; $7b54: $08 $bf $62
    dec [hl]                                      ; $7b57: $35
    ld sp, $d2df                                  ; $7b58: $31 $df $d2
    or b                                          ; $7b5b: $b0
    ret c                                         ; $7b5c: $d8

    ld d, d                                       ; $7b5d: $52
    ld d, c                                       ; $7b5e: $51
    jr z, jr_05d_7b9c                             ; $7b5f: $28 $3b

    inc [hl]                                      ; $7b61: $34
    add e                                         ; $7b62: $83
    ld sp, $b69c                                  ; $7b63: $31 $9c $b6
    ld h, [hl]                                    ; $7b66: $66
    ld a, a                                       ; $7b67: $7f
    ret                                           ; $7b68: $c9


Call_05d_7b69:
    ld b, c                                       ; $7b69: $41
    add sp, -$72                                  ; $7b6a: $e8 $8e
    adc d                                         ; $7b6c: $8a
    sbc h                                         ; $7b6d: $9c
    ld e, d                                       ; $7b6e: $5a
    ld d, $f3                                     ; $7b6f: $16 $f3
    rst $10                                       ; $7b71: $d7
    or [hl]                                       ; $7b72: $b6
    db $e4                                        ; $7b73: $e4
    inc hl                                        ; $7b74: $23
    db $eb                                        ; $7b75: $eb
    ld e, a                                       ; $7b76: $5f
    or e                                          ; $7b77: $b3
    cp a                                          ; $7b78: $bf
    nop                                           ; $7b79: $00
    ld a, h                                       ; $7b7a: $7c
    ld e, e                                       ; $7b7b: $5b
    and e                                         ; $7b7c: $a3
    or h                                          ; $7b7d: $b4
    ld b, [hl]                                    ; $7b7e: $46
    or l                                          ; $7b7f: $b5
    jp nz, Jump_05d_7352                          ; $7b80: $c2 $52 $73

    xor l                                         ; $7b83: $ad
    add hl, de                                    ; $7b84: $19
    add hl, bc                                    ; $7b85: $09
    add $f9                                       ; $7b86: $c6 $f9
    ld a, [c]                                     ; $7b88: $f2
    ld l, c                                       ; $7b89: $69
    ld [hl], e                                    ; $7b8a: $73
    cp d                                          ; $7b8b: $ba
    call nz, Call_000_2543                        ; $7b8c: $c4 $43 $25
    inc hl                                        ; $7b8f: $23
    or d                                          ; $7b90: $b2
    ld h, $d2                                     ; $7b91: $26 $d2
    inc e                                         ; $7b93: $1c
    db $e3                                        ; $7b94: $e3
    call nz, $bf7d                                ; $7b95: $c4 $7d $bf
    db $fc                                        ; $7b98: $fc
    jr nc, @-$44                                  ; $7b99: $30 $ba

    ld b, a                                       ; $7b9b: $47

jr_05d_7b9c:
    db $fd                                        ; $7b9c: $fd
    ld e, a                                       ; $7b9d: $5f
    nop                                           ; $7b9e: $00
    db $fc                                        ; $7b9f: $fc
    dec de                                        ; $7ba0: $1b
    or [hl]                                       ; $7ba1: $b6
    dec a                                         ; $7ba2: $3d
    cp c                                          ; $7ba3: $b9
    sub d                                         ; $7ba4: $92
    adc d                                         ; $7ba5: $8a
    ld l, [hl]                                    ; $7ba6: $6e
    jp nc, $d51a                                  ; $7ba7: $d2 $1a $d5

    ld a, [bc]                                    ; $7baa: $0a
    ld c, e                                       ; $7bab: $4b
    rlca                                          ; $7bac: $07
    rst $10                                       ; $7bad: $d7
    ld a, [$57f3]                                 ; $7bae: $fa $f3 $57
    ld b, d                                       ; $7bb1: $42
    ld a, b                                       ; $7bb2: $78
    ld [de], a                                    ; $7bb3: $12
    call c, $e3f2                                 ; $7bb4: $dc $f2 $e3
    db $fc                                        ; $7bb7: $fc
    jp Jump_000_050f                              ; $7bb8: $c3 $0f $05


    nop                                           ; $7bbb: $00
    sbc [hl]                                      ; $7bbc: $9e
    db $e3                                        ; $7bbd: $e3
    halt                                          ; $7bbe: $76
    rst $38                                       ; $7bbf: $ff
    jp c, Jump_05d_4c4e                           ; $7bc0: $da $4e $4c

    cp a                                          ; $7bc3: $bf
    db $e4                                        ; $7bc4: $e4
    nop                                           ; $7bc5: $00
    add hl, de                                    ; $7bc6: $19
    ld e, e                                       ; $7bc7: $5b
    sbc e                                         ; $7bc8: $9b
    xor a                                         ; $7bc9: $af
    ld sp, hl                                     ; $7bca: $f9
    push af                                       ; $7bcb: $f5
    dec h                                         ; $7bcc: $25
    ld d, $7b                                     ; $7bcd: $16 $7b
    add [hl]                                      ; $7bcf: $86
    reti                                          ; $7bd0: $d9


    xor e                                         ; $7bd1: $ab
    rst $18                                       ; $7bd2: $df
    rst $30                                       ; $7bd3: $f7
    db $e3                                        ; $7bd4: $e3
    inc c                                         ; $7bd5: $0c
    or e                                          ; $7bd6: $b3
    add a                                         ; $7bd7: $87
    ld [bc], a                                    ; $7bd8: $02
    ld e, [hl]                                    ; $7bd9: $5e
    ld e, c                                       ; $7bda: $59
    ld d, e                                       ; $7bdb: $53
    ld c, [hl]                                    ; $7bdc: $4e
    or [hl]                                       ; $7bdd: $b6
    ld [c], a                                     ; $7bde: $e2
    add hl, bc                                    ; $7bdf: $09
    halt                                          ; $7be0: $76
    cpl                                           ; $7be1: $2f
    ld d, [hl]                                    ; $7be2: $56
    ld [$bf4b], sp                                ; $7be3: $08 $4b $bf
    di                                            ; $7be6: $f3
    ld l, a                                       ; $7be7: $6f
    call c, $d28a                                 ; $7be8: $dc $8a $d2
    db $fc                                        ; $7beb: $fc
    ld a, [$60a4]                                 ; $7bec: $fa $a4 $60
    inc [hl]                                      ; $7bef: $34
    db $dd                                        ; $7bf0: $dd
    ld e, e                                       ; $7bf1: $5b
    db $e3                                        ; $7bf2: $e3
    db $f4                                        ; $7bf3: $f4
    ld l, e                                       ; $7bf4: $6b
    ld h, [hl]                                    ; $7bf5: $66
    sub [hl]                                      ; $7bf6: $96
    dec [hl]                                      ; $7bf7: $35
    ld d, c                                       ; $7bf8: $51
    ld e, l                                       ; $7bf9: $5d
    nop                                           ; $7bfa: $00
    db $fc                                        ; $7bfb: $fc
    reti                                          ; $7bfc: $d9


    ret                                           ; $7bfd: $c9


    db $fc                                        ; $7bfe: $fc
    ld c, a                                       ; $7bff: $4f

Jump_05d_7c00:
    rst $20                                       ; $7c00: $e7
    dec bc                                        ; $7c01: $0b
    ld c, e                                       ; $7c02: $4b
    ccf                                           ; $7c03: $3f
    cp d                                          ; $7c04: $ba
    cp a                                          ; $7c05: $bf
    ld b, [hl]                                    ; $7c06: $46
    db $eb                                        ; $7c07: $eb
    sbc $1a                                       ; $7c08: $de $1a
    cpl                                           ; $7c0a: $2f
    sbc a                                         ; $7c0b: $9f
    ret z                                         ; $7c0c: $c8

    ld [c], a                                     ; $7c0d: $e2
    ld h, $2a                                     ; $7c0e: $26 $2a
    adc l                                         ; $7c10: $8d
    add e                                         ; $7c11: $83
    and [hl]                                      ; $7c12: $a6
    add hl, sp                                    ; $7c13: $39
    sub b                                         ; $7c14: $90
    add l                                         ; $7c15: $85
    push af                                       ; $7c16: $f5
    rst $10                                       ; $7c17: $d7
    ld e, [hl]                                    ; $7c18: $5e
    nop                                           ; $7c19: $00
    inc a                                         ; $7c1a: $3c
    or c                                          ; $7c1b: $b1
    ld c, c                                       ; $7c1c: $49
    call Call_05d_5f31                            ; $7c1d: $cd $31 $5f
    or l                                          ; $7c20: $b5
    db $db                                        ; $7c21: $db
    and h                                         ; $7c22: $a4
    jp nz, Jump_05d_7c85                          ; $7c23: $c2 $85 $7c

    call $deef                                    ; $7c26: $cd $ef $de
    di                                            ; $7c29: $f3
    di                                            ; $7c2a: $f3
    rst $20                                       ; $7c2b: $e7
    inc e                                         ; $7c2c: $1c
    ldh a, [$0b]                                  ; $7c2d: $f0 $0b
    ld [hl], a                                    ; $7c2f: $77
    add $96                                       ; $7c30: $c6 $96
    jp nc, $8d1f                                  ; $7c32: $d2 $1f $8d

    ld [$0005], sp                                ; $7c35: $08 $05 $00
    cp h                                          ; $7c38: $bc
    ld a, a                                       ; $7c39: $7f
    and $33                                       ; $7c3a: $e6 $33
    sbc h                                         ; $7c3c: $9c
    ld d, $a5                                     ; $7c3d: $16 $a5
    ld e, $55                                     ; $7c3f: $1e $55
    or c                                          ; $7c41: $b1
    rst $20                                       ; $7c42: $e7
    cp h                                          ; $7c43: $bc
    ld h, d                                       ; $7c44: $62
    ld h, l                                       ; $7c45: $65
    sbc b                                         ; $7c46: $98
    xor a                                         ; $7c47: $af
    xor $51                                       ; $7c48: $ee $51
    rst $18                                       ; $7c4a: $df
    xor a                                         ; $7c4b: $af
    ld l, l                                       ; $7c4c: $6d
    dec bc                                        ; $7c4d: $0b
    and d                                         ; $7c4e: $a2
    cp d                                          ; $7c4f: $ba
    nop                                           ; $7c50: $00
    inc e                                         ; $7c51: $1c
    daa                                           ; $7c52: $27
    ld c, d                                       ; $7c53: $4a
    or l                                          ; $7c54: $b5
    ld e, e                                       ; $7c55: $5b
    jp z, $b2c9                                   ; $7c56: $ca $c9 $b2

    jp z, Jump_000_12fa                           ; $7c59: $ca $fa $12

    rst $08                                       ; $7c5c: $cf
    sbc a                                         ; $7c5d: $9f
    pop af                                        ; $7c5e: $f1
    ld l, e                                       ; $7c5f: $6b
    ld e, e                                       ; $7c60: $5b
    jp z, Jump_05d_4b7f                           ; $7c61: $ca $7f $4b

    sub e                                         ; $7c64: $93
    db $fc                                        ; $7c65: $fc
    ld h, b                                       ; $7c66: $60
    sbc l                                         ; $7c67: $9d
    sub c                                         ; $7c68: $91
    ld b, [hl]                                    ; $7c69: $46
    push af                                       ; $7c6a: $f5
    ret z                                         ; $7c6b: $c8

    rst $18                                       ; $7c6c: $df
    adc a                                         ; $7c6d: $8f
    ld l, l                                       ; $7c6e: $6d
    inc l                                         ; $7c6f: $2c
    db $fd                                        ; $7c70: $fd
    add hl, sp                                    ; $7c71: $39
    ld [hl], c                                    ; $7c72: $71
    ld bc, $5fbc                                  ; $7c73: $01 $bc $5f
    rst $18                                       ; $7c76: $df
    ld a, e                                       ; $7c77: $7b
    cp [hl]                                       ; $7c78: $be
    ld a, [hl+]                                   ; $7c79: $2a
    inc [hl]                                      ; $7c7a: $34
    adc $c4                                       ; $7c7b: $ce $c4
    ld a, d                                       ; $7c7d: $7a
    ld h, c                                       ; $7c7e: $61
    adc c                                         ; $7c7f: $89
    db $ed                                        ; $7c80: $ed
    ld e, d                                       ; $7c81: $5a
    ld d, e                                       ; $7c82: $53
    sub $d9                                       ; $7c83: $d6 $d9

Jump_05d_7c85:
    ld c, l                                       ; $7c85: $4d
    ld h, [hl]                                    ; $7c86: $66
    and h                                         ; $7c87: $a4
    ld c, c                                       ; $7c88: $49
    or [hl]                                       ; $7c89: $b6
    sub $74                                       ; $7c8a: $d6 $74
    ld bc, $576e                                  ; $7c8c: $01 $6e $57
    ld b, a                                       ; $7c8f: $47
    ld c, h                                       ; $7c90: $4c
    db $db                                        ; $7c91: $db
    and h                                         ; $7c92: $a4
    xor $d1                                       ; $7c93: $ee $d1
    db $fd                                        ; $7c95: $fd
    adc d                                         ; $7c96: $8a
    ld d, d                                       ; $7c97: $52
    ld h, l                                       ; $7c98: $65
    dec l                                         ; $7c99: $2d
    ld hl, sp-$59                                 ; $7c9a: $f8 $a7
    cp l                                          ; $7c9c: $bd
    ldh [$d1], a                                  ; $7c9d: $e0 $d1
    ld [hl], c                                    ; $7c9f: $71
    adc $5f                                       ; $7ca0: $ce $5f
    ld [c], a                                     ; $7ca2: $e2
    jr c, jr_05d_7cf6                             ; $7ca3: $38 $51

    jp z, $a529                                   ; $7ca5: $ca $29 $a5

    ld d, d                                       ; $7ca8: $52
    ld c, [hl]                                    ; $7ca9: $4e
    sub [hl]                                      ; $7caa: $96
    ld d, l                                       ; $7cab: $55
    sub $17                                       ; $7cac: $d6 $17
    nop                                           ; $7cae: $00
    ld e, $a1                                     ; $7caf: $1e $a1
    jp hl                                         ; $7cb1: $e9


    sbc $1a                                       ; $7cb2: $de $1a
    and a                                         ; $7cb4: $a7
    ld e, a                                       ; $7cb5: $5f
    inc sp                                        ; $7cb6: $33
    or e                                          ; $7cb7: $b3
    xor h                                         ; $7cb8: $ac
    adc c                                         ; $7cb9: $89
    ld a, [hl+]                                   ; $7cba: $2a
    add hl, hl                                    ; $7cbb: $29
    sbc $3f                                       ; $7cbc: $de $3f
    di                                            ; $7cbe: $f3
    add hl, de                                    ; $7cbf: $19
    sbc d                                         ; $7cc0: $9a
    xor $51                                       ; $7cc1: $ee $51
    rst $38                                       ; $7cc3: $ff
    jp z, Jump_000_0e37                           ; $7cc4: $ca $37 $0e

    ld l, c                                       ; $7cc7: $69
    db $db                                        ; $7cc8: $db
    and d                                         ; $7cc9: $a2
    adc h                                         ; $7cca: $8c
    inc b                                         ; $7ccb: $04
    ld h, e                                       ; $7ccc: $63
    db $fd                                        ; $7ccd: $fd
    sub [hl]                                      ; $7cce: $96
    ld a, h                                       ; $7ccf: $7c
    jp c, $8a9c                                   ; $7cd0: $da $9c $8a

    ld l, $00                                     ; $7cd3: $2e $00
    ld a, h                                       ; $7cd5: $7c
    ld d, c                                       ; $7cd6: $51
    ld d, c                                       ; $7cd7: $51
    cp d                                          ; $7cd8: $ba
    add a                                         ; $7cd9: $87
    db $ed                                        ; $7cda: $ed
    adc $b9                                       ; $7cdb: $ce $b9
    ld h, a                                       ; $7cdd: $67
    ldh [$9c], a                                  ; $7cde: $e0 $9c
    rst $38                                       ; $7ce0: $ff
    and l                                         ; $7ce1: $a5
    adc c                                         ; $7ce2: $89
    inc sp                                        ; $7ce3: $33
    or $c4                                        ; $7ce4: $f6 $c4
    db $fd                                        ; $7ce6: $fd
    ld e, a                                       ; $7ce7: $5f
    ld a, [de]                                    ; $7ce8: $1a
    jp $c5f6                                      ; $7ce9: $c3 $f6 $c5


    add $ed                                       ; $7cec: $c6 $ed
    adc a                                         ; $7cee: $8f
    ld sp, hl                                     ; $7cef: $f9
    cp $38                                        ; $7cf0: $fe $38
    cp b                                          ; $7cf2: $b8
    db $fd                                        ; $7cf3: $fd
    or l                                          ; $7cf4: $b5
    rla                                           ; $7cf5: $17

jr_05d_7cf6:
    nop                                           ; $7cf6: $00
    ret nc                                        ; $7cf7: $d0

    and l                                         ; $7cf8: $a5
    inc sp                                        ; $7cf9: $33
    ld h, [hl]                                    ; $7cfa: $66
    call nc, $f568                                ; $7cfb: $d4 $68 $f5
    inc sp                                        ; $7cfe: $33
    ccf                                           ; $7cff: $3f
    ld h, d                                       ; $7d00: $62
    jp c, Jump_05d_626a                           ; $7d01: $da $6a $62

    ld [hl], h                                    ; $7d04: $74
    cp a                                          ; $7d05: $bf
    ld a, [c]                                     ; $7d06: $f2
    ld h, a                                       ; $7d07: $67
    dec e                                         ; $7d08: $1d
    ld [hl], l                                    ; $7d09: $75
    adc c                                         ; $7d0a: $89
    sbc a                                         ; $7d0b: $9f
    or d                                          ; $7d0c: $b2
    adc $32                                       ; $7d0d: $ce $32
    push hl                                       ; $7d0f: $e5
    cp a                                          ; $7d10: $bf
    and l                                         ; $7d11: $a5
    inc sp                                        ; $7d12: $33
    or b                                          ; $7d13: $b0
    ei                                            ; $7d14: $fb
    ld e, a                                       ; $7d15: $5f
    dec a                                         ; $7d16: $3d
    ld b, $db                                     ; $7d17: $06 $db
    xor l                                         ; $7d19: $ad
    dec bc                                        ; $7d1a: $0b
    nop                                           ; $7d1b: $00
    cp h                                          ; $7d1c: $bc
    ld h, e                                       ; $7d1d: $63
    sbc h                                         ; $7d1e: $9c
    xor l                                         ; $7d1f: $ad
    and h                                         ; $7d20: $a4
    and d                                         ; $7d21: $a2
    sbc e                                         ; $7d22: $9b
    call nz, Call_000_3ec1                        ; $7d23: $c4 $c1 $3e
    adc a                                         ; $7d26: $8f
    sub d                                         ; $7d27: $92
    ld c, a                                       ; $7d28: $4f
    inc h                                         ; $7d29: $24
    jr jr_05d_7d73                                ; $7d2a: $18 $47

    adc a                                         ; $7d2c: $8f
    ld hl, $eb9f                                  ; $7d2d: $21 $9f $eb
    call z, $9cec                                 ; $7d30: $cc $ec $9c
    ld c, b                                       ; $7d33: $48
    ld a, [bc]                                    ; $7d34: $0a
    ld b, [hl]                                    ; $7d35: $46
    ld d, e                                       ; $7d36: $53
    ld c, d                                       ; $7d37: $4a
    dec d                                         ; $7d38: $15
    and l                                         ; $7d39: $a5
    ld e, $d5                                     ; $7d3a: $1e $d5
    dec de                                        ; $7d3c: $1b
    ld h, l                                       ; $7d3d: $65
    xor a                                         ; $7d3e: $af
    ld a, [hl]                                    ; $7d3f: $7e
    ld b, e                                       ; $7d40: $43
    push bc                                       ; $7d41: $c5
    jp z, $f67f                                   ; $7d42: $ca $7f $f6

    dec d                                         ; $7d45: $15
    rla                                           ; $7d46: $17
    nop                                           ; $7d47: $00
    ld c, $19                                     ; $7d48: $0e $19
    ld h, $18                                     ; $7d4a: $26 $18
    ld h, [hl]                                    ; $7d4c: $66
    ret z                                         ; $7d4d: $c8

    ld d, [hl]                                    ; $7d4e: $56
    ld a, h                                       ; $7d4f: $7c
    add hl, bc                                    ; $7d50: $09
    ld a, b                                       ; $7d51: $78

Jump_05d_7d52:
    ldh a, [$ec]                                  ; $7d52: $f0 $ec
    sbc $84                                       ; $7d54: $de $84
    ld e, a                                       ; $7d56: $5f
    cp $36                                        ; $7d57: $fe $36
    sub c                                         ; $7d59: $91
    jp nc, Jump_000_2781                          ; $7d5a: $d2 $81 $27

    ld a, [hl+]                                   ; $7d5d: $2a
    xor c                                         ; $7d5e: $a9
    add sp, -$72                                  ; $7d5f: $e8 $8e
    call $c5a9                                    ; $7d61: $cd $a9 $c5
    jr nc, @-$61                                  ; $7d64: $30 $9d

    ld [hl], c                                    ; $7d66: $71
    halt                                          ; $7d67: $76
    ld h, d                                       ; $7d68: $62
    sla a                                         ; $7d69: $cb $27
    or d                                          ; $7d6b: $b2
    ret nc                                        ; $7d6c: $d0

    dec a                                         ; $7d6d: $3d
    ld [$feff], a                                 ; $7d6e: $ea $ff $fe
    cpl                                           ; $7d71: $2f
    ld l, l                                       ; $7d72: $6d

jr_05d_7d73:
    ld e, e                                       ; $7d73: $5b
    db $10                                        ; $7d74: $10
    push de                                       ; $7d75: $d5
    dec b                                         ; $7d76: $05
    nop                                           ; $7d77: $00
    sbc h                                         ; $7d78: $9c
    and c                                         ; $7d79: $a1
    add e                                         ; $7d7a: $83
    and e                                         ; $7d7b: $a3
    cp $a7                                        ; $7d7c: $fe $a7
    xor l                                         ; $7d7e: $ad
    ld a, [$8c19]                                 ; $7d7f: $fa $19 $8c
    ld a, e                                       ; $7d82: $7b
    ld a, d                                       ; $7d83: $7a
    ld l, b                                       ; $7d84: $68
    ld a, [hl]                                    ; $7d85: $7e
    db $fd                                        ; $7d86: $fd
    adc h                                         ; $7d87: $8c
    db $ed                                        ; $7d88: $ed
    ld b, [hl]                                    ; $7d89: $46
    pop hl                                        ; $7d8a: $e1
    ld e, c                                       ; $7d8b: $59
    and l                                         ; $7d8c: $a5
    add e                                         ; $7d8d: $83
    pop bc                                        ; $7d8e: $c1
    ld e, a                                       ; $7d8f: $5f
    ld c, d                                       ; $7d90: $4a
    or e                                          ; $7d91: $b3
    sbc h                                         ; $7d92: $9c
    adc b                                         ; $7d93: $88
    dec de                                        ; $7d94: $1b
    nop                                           ; $7d95: $00
    ld l, [hl]                                    ; $7d96: $6e
    sbc a                                         ; $7d97: $9f
    cpl                                           ; $7d98: $2f
    pop bc                                        ; $7d99: $c1
    xor b                                         ; $7d9a: $a8
    add $ee                                       ; $7d9b: $c6 $ee
    pop af                                        ; $7d9d: $f1
    sbc d                                         ; $7d9e: $9a
    bit 4, b                                      ; $7d9f: $cb $60
    call c, $bfee                                 ; $7da1: $dc $ee $bf
    rst $38                                       ; $7da4: $ff
    ld c, e                                       ; $7da5: $4b
    ld [hl], $ce                                  ; $7da6: $36 $ce
    db $fc                                        ; $7da8: $fc
    sbc c                                         ; $7da9: $99
    dec d                                         ; $7daa: $15
    sbc l                                         ; $7dab: $9d
    ld b, e                                       ; $7dac: $43
    rla                                           ; $7dad: $17
    nop                                           ; $7dae: $00
    inc a                                         ; $7daf: $3c
    ld e, c                                       ; $7db0: $59
    ld c, [hl]                                    ; $7db1: $4e
    and h                                         ; $7db2: $a4
    adc $b8                                       ; $7db3: $ce $b8
    sbc d                                         ; $7db5: $9a
    sub d                                         ; $7db6: $92
    ld [c], a                                     ; $7db7: $e2
    ld a, c                                       ; $7db8: $79
    add $32                                       ; $7db9: $c6 $32
    ld l, [hl]                                    ; $7dbb: $6e
    nop                                           ; $7dbc: $00
    ld a, h                                       ; $7dbd: $7c
    sbc a                                         ; $7dbe: $9f
    or $e7                                        ; $7dbf: $f6 $e7
    rst $38                                       ; $7dc1: $ff
    ld c, c                                       ; $7dc2: $49
    ld b, l                                       ; $7dc3: $45
    scf                                           ; $7dc4: $37
    ld l, c                                       ; $7dc5: $69
    ld [c], a                                     ; $7dc6: $e2
    jr c, jr_05d_7e0c                             ; $7dc7: $38 $43

    ld a, a                                       ; $7dc9: $7f
    and $bf                                       ; $7dca: $e6 $bf
    ld h, $a6                                     ; $7dcc: $26 $a6
    db $fd                                        ; $7dce: $fd
    call c, $fde2                                 ; $7dcf: $dc $e2 $fd
    sbc l                                         ; $7dd2: $9d
    ld [hl], e                                    ; $7dd3: $73
    push hl                                       ; $7dd4: $e5
    ld b, l                                       ; $7dd5: $45
    cp h                                          ; $7dd6: $bc
    sbc l                                         ; $7dd7: $9d
    ret z                                         ; $7dd8: $c8

    inc [hl]                                      ; $7dd9: $34
    add hl, hl                                    ; $7dda: $29
    res 5, c                                      ; $7ddb: $cb $a9
    push bc                                       ; $7ddd: $c5
    sbc a                                         ; $7dde: $9f
    sbc l                                         ; $7ddf: $9d
    call z, Call_05d_74ff                         ; $7de0: $cc $ff $74
    cp [hl]                                       ; $7de3: $be
    reti                                          ; $7de4: $d9


    ld e, a                                       ; $7de5: $5f
    nop                                           ; $7de6: $00
    inc a                                         ; $7de7: $3c
    ld e, c                                       ; $7de8: $59
    ld c, [hl]                                    ; $7de9: $4e
    call c, $c7e2                                 ; $7dea: $dc $e2 $c7

Jump_05d_7ded:
    call $fbb1                                    ; $7ded: $cd $b1 $fb
    di                                            ; $7df0: $f3
    or a                                          ; $7df1: $b7
    ld e, [hl]                                    ; $7df2: $5e
    db $dd                                        ; $7df3: $dd
    ld e, e                                       ; $7df4: $5b
    and e                                         ; $7df5: $a3
    rst $20                                       ; $7df6: $e7
    sub [hl]                                      ; $7df7: $96
    adc $c3                                       ; $7df8: $ce $c3
    db $db                                        ; $7dfa: $db
    ld [hl], c                                    ; $7dfb: $71
    adc $7f                                       ; $7dfc: $ce $7f
    ret                                           ; $7dfe: $c9


    ld d, e                                       ; $7dff: $53
    ld c, h                                       ; $7e00: $4c
    ld h, a                                       ; $7e01: $67
    sbc h                                         ; $7e02: $9c
    sbc l                                         ; $7e03: $9d
    inc de                                        ; $7e04: $13
    or c                                          ; $7e05: $b1
    cp b                                          ; $7e06: $b8
    ld bc, $e11e                                  ; $7e07: $01 $1e $e1
    sbc [hl]                                      ; $7e0a: $9e
    di                                            ; $7e0b: $f3

jr_05d_7e0c:
    ld e, e                                       ; $7e0c: $5b
    ld a, [$b567]                                 ; $7e0d: $fa $67 $b5
    inc de                                        ; $7e10: $13
    ld a, e                                       ; $7e11: $7b
    xor $39                                       ; $7e12: $ee $39
    cpl                                           ; $7e14: $2f
    inc l                                         ; $7e15: $2c
    dec d                                         ; $7e16: $15
    adc $2f                                       ; $7e17: $ce $2f
    sbc l                                         ; $7e19: $9d
    dec [hl]                                      ; $7e1a: $35
    sbc d                                         ; $7e1b: $9a
    or [hl]                                       ; $7e1c: $b6
    cp d                                          ; $7e1d: $ba
    inc sp                                        ; $7e1e: $33
    ld l, $53                                     ; $7e1f: $2e $53
    ld a, [$ffb7]                                 ; $7e21: $fa $b7 $ff
    rst $18                                       ; $7e24: $df
    rla                                           ; $7e25: $17
    nop                                           ; $7e26: $00
    cp h                                          ; $7e27: $bc
    ld e, a                                       ; $7e28: $5f
    cp b                                          ; $7e29: $b8
    rst $20                                       ; $7e2a: $e7
    cp h                                          ; $7e2b: $bc
    ld h, d                                       ; $7e2c: $62
    add l                                         ; $7e2d: $85
    daa                                           ; $7e2e: $27
    sub h                                         ; $7e2f: $94
    adc [hl]                                      ; $7e30: $8e
    ld [hl], c                                    ; $7e31: $71
    or $93                                        ; $7e32: $f6 $93
    cp d                                          ; $7e34: $ba
    ld b, a                                       ; $7e35: $47
    rst $30                                       ; $7e36: $f7
    dec bc                                        ; $7e37: $0b
    add $3d                                       ; $7e38: $c6 $3d
    rst $20                                       ; $7e3a: $e7
    or a                                          ; $7e3b: $b7
    db $f4                                        ; $7e3c: $f4
    rst $08                                       ; $7e3d: $cf
    ld l, d                                       ; $7e3e: $6a
    daa                                           ; $7e3f: $27
    or $dc                                        ; $7e40: $f6 $dc
    ld [hl], e                                    ; $7e42: $73
    ld e, [hl]                                    ; $7e43: $5e
    ld e, b                                       ; $7e44: $58
    ld c, d                                       ; $7e45: $4a
    rst $38                                       ; $7e46: $ff
    or $ff                                        ; $7e47: $f6 $ff
    ei                                            ; $7e49: $fb
    ld [bc], a                                    ; $7e4a: $02
    db $fc                                        ; $7e4b: $fc
    ld l, b                                       ; $7e4c: $68
    xor e                                         ; $7e4d: $ab
    ld [hl], h                                    ; $7e4e: $74
    and e                                         ; $7e4f: $a3
    ldh a, [$85]                                  ; $7e50: $f0 $85
    rst $20                                       ; $7e52: $e7
    cp h                                          ; $7e53: $bc
    sbc d                                         ; $7e54: $9a
    add sp, $1c                                   ; $7e55: $e8 $1c
    ld [c], a                                     ; $7e57: $e2
    sub [hl]                                      ; $7e58: $96
    ld b, e                                       ; $7e59: $43
    add [hl]                                      ; $7e5a: $86
    add hl, bc                                    ; $7e5b: $09
    add [hl]                                      ; $7e5c: $86
    add hl, de                                    ; $7e5d: $19
    or d                                          ; $7e5e: $b2
    ld l, l                                       ; $7e5f: $6d
    reti                                          ; $7e60: $d9


    ld a, a                                       ; $7e61: $7f
    cp $ad                                        ; $7e62: $fe $ad
    ld a, h                                       ; $7e64: $7c
    db $e3                                        ; $7e65: $e3
    sub b                                         ; $7e66: $90
    ldh a, [$9c]                                  ; $7e67: $f0 $9c
    rst $10                                       ; $7e69: $d7
    cp l                                          ; $7e6a: $bd
    dec [hl]                                      ; $7e6b: $35
    xor h                                         ; $7e6c: $ac
    ld e, a                                       ; $7e6d: $5f

jr_05d_7e6e:
    reti                                          ; $7e6e: $d9


    pop af                                        ; $7e6f: $f1
    ld h, e                                       ; $7e70: $63
    sbc e                                         ; $7e71: $9b
    cp b                                          ; $7e72: $b8
    ld bc, $3b7c                                  ; $7e73: $01 $7c $3b
    ld l, l                                       ; $7e76: $6d
    push af                                       ; $7e77: $f5
    ld a, a                                       ; $7e78: $7f
    rrca                                          ; $7e79: $0f
    push af                                       ; $7e7a: $f5
    jr c, jr_05d_7e8e                             ; $7e7b: $38 $11

    ld a, [$d7ad]                                 ; $7e7d: $fa $ad $d7
    reti                                          ; $7e80: $d9


    db $fd                                        ; $7e81: $fd
    jp nc, $fcef                                  ; $7e82: $d2 $ef $fc

    or l                                          ; $7e85: $b5
    dec l                                         ; $7e86: $2d
    jr z, jr_05d_7e89                             ; $7e87: $28 $00

jr_05d_7e89:
    ret nc                                        ; $7e89: $d0

    jp hl                                         ; $7e8a: $e9


    inc h                                         ; $7e8b: $24
    pop bc                                        ; $7e8c: $c1
    ccf                                           ; $7e8d: $3f

jr_05d_7e8e:
    db $ed                                        ; $7e8e: $ed
    rst $10                                       ; $7e8f: $d7
    or [hl]                                       ; $7e90: $b6
    or h                                          ; $7e91: $b4
    ld d, l                                       ; $7e92: $55
    ld l, b                                       ; $7e93: $68
    dec a                                         ; $7e94: $3d
    ld e, [hl]                                    ; $7e95: $5e
    ld d, c                                       ; $7e96: $51
    or [hl]                                       ; $7e97: $b6
    rst $30                                       ; $7e98: $f7
    ld c, l                                       ; $7e99: $4d
    ld l, e                                       ; $7e9a: $6b
    ld h, c                                       ; $7e9b: $61
    ld c, l                                       ; $7e9c: $4d
    sbc d                                         ; $7e9d: $9a
    jr c, jr_05d_7e6e                             ; $7e9e: $38 $ce

    ldh a, [rBCPD]                                ; $7ea0: $f0 $69
    ld [hl], e                                    ; $7ea2: $73
    or d                                          ; $7ea3: $b2
    and [hl]                                      ; $7ea4: $a6
    and h                                         ; $7ea5: $a4
    and $28                                       ; $7ea6: $e6 $28
    ld b, l                                       ; $7ea8: $45
    reti                                          ; $7ea9: $d9


    sub [hl]                                      ; $7eaa: $96
    jp nc, $b460                                  ; $7eab: $d2 $60 $b4

    or [hl]                                       ; $7eae: $b6
    and l                                         ; $7eaf: $a5
    ld h, $6b                                     ; $7eb0: $26 $6b

jr_05d_7eb2:
    cp d                                          ; $7eb2: $ba
    nop                                           ; $7eb3: $00
    ret nc                                        ; $7eb4: $d0

Jump_05d_7eb5:
    xor l                                         ; $7eb5: $ad
    sbc $80                                       ; $7eb6: $de $80
    sub b                                         ; $7eb8: $90
    or d                                          ; $7eb9: $b2
    or h                                          ; $7eba: $b4
    adc c                                         ; $7ebb: $89
    ld c, d                                       ; $7ebc: $4a
    inc de                                        ; $7ebd: $13
    ld e, c                                       ; $7ebe: $59
    rst $30                                       ; $7ebf: $f7
    ld h, [hl]                                    ; $7ec0: $66
    add hl, hl                                    ; $7ec1: $29
    ld h, h                                       ; $7ec2: $64
    xor l                                         ; $7ec3: $ad
    db $e3                                        ; $7ec4: $e3
    call c, $dc44                                 ; $7ec5: $dc $44 $dc
    nop                                           ; $7ec8: $00
    db $fc                                        ; $7ec9: $fc
    pop bc                                        ; $7eca: $c1
    ld a, [c]                                     ; $7ecb: $f2
    add sp, $71                                   ; $7ecc: $e8 $71
    ldh a, [$d5]                                  ; $7ece: $f0 $d5
    ccf                                           ; $7ed0: $3f
    ld a, a                                       ; $7ed1: $7f
    ld l, l                                       ; $7ed2: $6d
    dec hl                                        ; $7ed3: $2b
    add hl, hl                                    ; $7ed4: $29
    sbc [hl]                                      ; $7ed5: $9e
    ld h, a                                       ; $7ed6: $67
    inc l                                         ; $7ed7: $2c
    cp e                                          ; $7ed8: $bb
    call nz, Call_000_368b                        ; $7ed9: $c4 $8b $36
    ld e, a                                       ; $7edc: $5f
    ld a, $31                                     ; $7edd: $3e $31
    sbc b                                         ; $7edf: $98
    ld l, h                                       ; $7ee0: $6c
    ld e, e                                       ; $7ee1: $5b
    or l                                          ; $7ee2: $b5
    ld e, e                                       ; $7ee3: $5b
    ld c, d                                       ; $7ee4: $4a
    or e                                          ; $7ee5: $b3
    ld a, h                                       ; $7ee6: $7c
    ld c, e                                       ; $7ee7: $4b
    cp a                                          ; $7ee8: $bf

jr_05d_7ee9:
    di                                            ; $7ee9: $f3
    rst $10                                       ; $7eea: $d7
    ld [c], a                                     ; $7eeb: $e2
    cp [hl]                                       ; $7eec: $be
    or a                                          ; $7eed: $b7
    sub d                                         ; $7eee: $92
    ld a, [$2faa]                                 ; $7eef: $fa $aa $2f
    ld sp, hl                                     ; $7ef2: $f9
    ld a, a                                       ; $7ef3: $7f
    and $56                                       ; $7ef4: $e6 $56
    pop hl                                        ; $7ef6: $e1
    or h                                          ; $7ef7: $b4
    sub l                                         ; $7ef8: $95
    ld l, l                                       ; $7ef9: $6d
    adc l                                         ; $7efa: $8d
    ld d, d                                       ; $7efb: $52
    ld a, [$c60c]                                 ; $7efc: $fa $0c $c6
    db $ed                                        ; $7eff: $ed
    jr c, jr_05d_7ee9                             ; $7f00: $38 $e7

    dec b                                         ; $7f02: $05
    ld a, a                                       ; $7f03: $7f
    jp c, $f7ff                                   ; $7f04: $da $ff $f7

    sbc a                                         ; $7f07: $9f
    di                                            ; $7f08: $f3
    ld a, [c]                                     ; $7f09: $f2
    cp c                                          ; $7f0a: $b9
    adc $e1                                       ; $7f0b: $ce $e1
    and d                                         ; $7f0d: $a2
    dec bc                                        ; $7f0e: $0b
    nop                                           ; $7f0f: $00
    inc e                                         ; $7f10: $1c
    dec sp                                        ; $7f11: $3b
    ld h, e                                       ; $7f12: $63
    ld c, e                                       ; $7f13: $4b
    ld l, c                                       ; $7f14: $69
    sub [hl]                                      ; $7f15: $96
    ld d, e                                       ; $7f16: $53
    ld d, d                                       ; $7f17: $52
    inc a                                         ; $7f18: $3c
    rst $08                                       ; $7f19: $cf
    ld e, b                                       ; $7f1a: $58
    halt                                          ; $7f1b: $76
    adc c                                         ; $7f1c: $89
    ld a, a                                       ; $7f1d: $7f
    sbc h                                         ; $7f1e: $9c
    ret nc                                        ; $7f1f: $d0

    jr jr_05d_7eb2                                ; $7f20: $18 $90

    or b                                          ; $7f22: $b0
    cp $2f                                        ; $7f23: $fe $2f
    db $fd                                        ; $7f25: $fd
    sub $27                                       ; $7f26: $d6 $27
    dec [hl]                                      ; $7f28: $35
    ld b, a                                       ; $7f29: $47
    ret                                           ; $7f2a: $c9


    or $34                                        ; $7f2b: $f6 $34
    xor c                                         ; $7f2d: $a9
    ld b, a                                       ; $7f2e: $47
    push af                                       ; $7f2f: $f5
    jr jr_05d_7f49                                ; $7f30: $18 $17

    nop                                           ; $7f32: $00
    ld c, $b7                                     ; $7f33: $0e $b7
    ld l, c                                       ; $7f35: $69
    ld l, l                                       ; $7f36: $6d
    dec [hl]                                      ; $7f37: $35
    rst $00                                       ; $7f38: $c7
    jr c, jr_05d_7fac                             ; $7f39: $38 $71

    rst $18                                       ; $7f3b: $df
    xor a                                         ; $7f3c: $af
    jp $3595                                      ; $7f3d: $c3 $95 $35


    sub c                                         ; $7f40: $91
    inc a                                         ; $7f41: $3c
    push bc                                       ; $7f42: $c5
    ld [hl], h                                    ; $7f43: $74
    add $d9                                       ; $7f44: $c6 $d9
    adc c                                         ; $7f46: $89
    and l                                         ; $7f47: $a5
    adc c                                         ; $7f48: $89

jr_05d_7f49:
    cp l                                          ; $7f49: $bd
    ld [hl], e                                    ; $7f4a: $73
    call c, $f6f7                                 ; $7f4b: $dc $f7 $f6
    or b                                          ; $7f4e: $b0
    ld c, e                                       ; $7f4f: $4b
    ret nc                                        ; $7f50: $d0

    and l                                         ; $7f51: $a5
    and d                                         ; $7f52: $a2
    sub b                                         ; $7f53: $90
    ld l, l                                       ; $7f54: $6d
    sub e                                         ; $7f55: $93
    ld a, [hl]                                    ; $7f56: $7e
    db $eb                                        ; $7f57: $eb
    rst $20                                       ; $7f58: $e7
    ld a, a                                       ; $7f59: $7f
    xor c                                         ; $7f5a: $a9
    adc c                                         ; $7f5b: $89
    adc $a1                                       ; $7f5c: $ce $a1
    dec bc                                        ; $7f5e: $0b
    nop                                           ; $7f5f: $00
    cp h                                          ; $7f60: $bc
    ret c                                         ; $7f61: $d8

    dec sp                                        ; $7f62: $3b
    rst $00                                       ; $7f63: $c7
    ld a, l                                       ; $7f64: $7d
    ld l, a                                       ; $7f65: $6f
    adc a                                         ; $7f66: $8f
    ld l, c                                       ; $7f67: $69
    pop de                                        ; $7f68: $d1
    ld [$a68d], a                                 ; $7f69: $ea $8d $a6
    sbc h                                         ; $7f6c: $9c
    ld e, d                                       ; $7f6d: $5a
    dec a                                         ; $7f6e: $3d
    db $fc                                        ; $7f6f: $fc
    adc l                                         ; $7f70: $8d
    or d                                          ; $7f71: $b2
    ld d, a                                       ; $7f72: $57
    adc a                                         ; $7f73: $8f
    xor d                                         ; $7f74: $aa
    ld h, c                                       ; $7f75: $61
    or $f5                                        ; $7f76: $f6 $f5
    sbc l                                         ; $7f78: $9d
    call nc, $ba3d                                ; $7f79: $d4 $3d $ba
    ld e, a                                       ; $7f7c: $5f
    ld d, c                                       ; $7f7d: $51
    ld a, [de]                                    ; $7f7e: $1a

Jump_05d_7f7f:
    ld [hl], $ff                                  ; $7f7f: $36 $ff
    sbc h                                         ; $7f81: $9c
    rst $10                                       ; $7f82: $d7
    call z, Call_000_232c                         ; $7f83: $cc $2c $23
    push de                                       ; $7f86: $d5
    xor $69                                       ; $7f87: $ee $69
    jp nc, Jump_05d_4dbd                          ; $7f89: $d2 $bd $4d

    ld d, h                                       ; $7f8c: $54
    rla                                           ; $7f8d: $17
    nop                                           ; $7f8e: $00
    cp h                                          ; $7f8f: $bc
    ret c                                         ; $7f90: $d8

    dec sp                                        ; $7f91: $3b
    rst $00                                       ; $7f92: $c7
    ld a, l                                       ; $7f93: $7d
    ld l, a                                       ; $7f94: $6f
    adc a                                         ; $7f95: $8f
    ld l, c                                       ; $7f96: $69
    pop de                                        ; $7f97: $d1
    ld [$a68d], a                                 ; $7f98: $ea $8d $a6
    sbc h                                         ; $7f9b: $9c
    ld e, d                                       ; $7f9c: $5a
    dec a                                         ; $7f9d: $3d
    xor d                                         ; $7f9e: $aa
    add [hl]                                      ; $7f9f: $86
    reti                                          ; $7fa0: $d9


    rst $10                                       ; $7fa1: $d7
    rst $30                                       ; $7fa2: $f7
    dec h                                         ; $7fa3: $25
    add sp, -$4a                                  ; $7fa4: $e8 $b6
    sub l                                         ; $7fa6: $95
    db $ed                                        ; $7fa7: $ed
    sbc d                                         ; $7fa8: $9a
    ld h, b                                       ; $7fa9: $60
    sbc h                                         ; $7faa: $9c
    ld b, e                                       ; $7fab: $43

jr_05d_7fac:
    ld [hl], e                                    ; $7fac: $73
    ldh [$39], a                                  ; $7fad: $e0 $39
    and e                                         ; $7faf: $a3
    dec b                                         ; $7fb0: $05
    cp a                                          ; $7fb1: $bf
    ld h, [hl]                                    ; $7fb2: $66
    ld h, [hl]                                    ; $7fb3: $66
    sbc c                                         ; $7fb4: $99
    ld a, h                                       ; $7fb5: $7c
    ld e, h                                       ; $7fb6: $5c
    cp e                                          ; $7fb7: $bb
    nop                                           ; $7fb8: $00
    cp h                                          ; $7fb9: $bc
    db $e3                                        ; $7fba: $e3
    cp [hl]                                       ; $7fbb: $be
    or a                                          ; $7fbc: $b7
    rst $00                                       ; $7fbd: $c7
    or h                                          ; $7fbe: $b4
    ld l, b                                       ; $7fbf: $68
    push hl                                       ; $7fc0: $e5
    rra                                           ; $7fc1: $1f
    and a                                         ; $7fc2: $a7
    ccf                                           ; $7fc3: $3f
    rst $38                                       ; $7fc4: $ff
    ld d, $d7                                     ; $7fc5: $16 $d7
    jp c, $e096                                   ; $7fc7: $da $96 $e0

    ld d, a                                       ; $7fca: $57
    ld l, a                                       ; $7fcb: $6f
    inc [hl]                                      ; $7fcc: $34
    push hl                                       ; $7fcd: $e5
    call nc, $b1ba                                ; $7fce: $d4 $ba $b1
    or $65                                        ; $7fd1: $f6 $65

Call_05d_7fd3:
    ld a, a                                       ; $7fd3: $7f
    ld a, [hl]                                    ; $7fd4: $7e
    ld l, l                                       ; $7fd5: $6d
    adc h                                         ; $7fd6: $8c
    ld l, c                                       ; $7fd7: $69
    ei                                            ; $7fd8: $fb
    sub a                                         ; $7fd9: $97
    and b                                         ; $7fda: $a0
    db $d3                                        ; $7fdb: $d3
    ld c, c                                       ; $7fdc: $49
    xor d                                         ; $7fdd: $aa
    ld d, b                                       ; $7fde: $50
    ld l, a                                       ; $7fdf: $6f
    inc [hl]                                      ; $7fe0: $34
    push hl                                       ; $7fe1: $e5
    call nc, $51ea                                ; $7fe2: $d4 $ea $51
    dec [hl]                                      ; $7fe5: $35
    call z, Call_000_10be                         ; $7fe6: $cc $be $10
    cp $b9                                        ; $7fe9: $fe $b9
    ld [hl], l                                    ; $7feb: $75
    ld bc, $ffff                                  ; $7fec: $01 $ff $ff
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
