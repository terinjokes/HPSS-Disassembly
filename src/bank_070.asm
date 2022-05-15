; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

    ld [hl], b                                    ; $4000: $70
    scf                                           ; $4001: $37
    ld b, a                                       ; $4002: $47
    sbc [hl]                                      ; $4003: $9e
    sub l                                         ; $4004: $95
    ld a, [de]                                    ; $4005: $1a
    add e                                         ; $4006: $83
    sbc e                                         ; $4007: $9b
    and a                                         ; $4008: $a7
    rst $28                                       ; $4009: $ef
    ld a, [de]                                    ; $400a: $1a
    or d                                          ; $400b: $b2
    ld h, a                                       ; $400c: $67
    ld l, a                                       ; $400d: $6f
    ld h, b                                       ; $400e: $60
    rst $38                                       ; $400f: $ff
    sbc l                                         ; $4010: $9d
    db $ed                                        ; $4011: $ed
    nop                                           ; $4012: $00
    scf                                           ; $4013: $37
    ld b, a                                       ; $4014: $47
    sbc [hl]                                      ; $4015: $9e
    sub l                                         ; $4016: $95
    ld a, [de]                                    ; $4017: $1a
    add e                                         ; $4018: $83
    sbc e                                         ; $4019: $9b
    pop de                                        ; $401a: $d1
    dec de                                        ; $401b: $1b
    ret c                                         ; $401c: $d8

    pop de                                        ; $401d: $d1
    dec de                                        ; $401e: $1b
    sub h                                         ; $401f: $94
    add $88                                       ; $4020: $c6 $88
    ld a, [$7ed1]                                 ; $4022: $fa $d1 $7e
    ld h, [hl]                                    ; $4025: $66
    sub e                                         ; $4026: $93
    ld l, [hl]                                    ; $4027: $6e
    ld b, c                                       ; $4028: $41
    or a                                          ; $4029: $b7
    inc bc                                        ; $402a: $03
    scf                                           ; $402b: $37
    ld b, a                                       ; $402c: $47
    sbc [hl]                                      ; $402d: $9e
    sub l                                         ; $402e: $95
    ld a, [de]                                    ; $402f: $1a
    add e                                         ; $4030: $83
    sbc e                                         ; $4031: $9b
    pop de                                        ; $4032: $d1
    dec de                                        ; $4033: $1b
    ret c                                         ; $4034: $d8

    ld d, c                                       ; $4035: $51
    rst $08                                       ; $4036: $cf
    ld e, [hl]                                    ; $4037: $5e
    ld b, e                                       ; $4038: $43
    and h                                         ; $4039: $a4
    dec l                                         ; $403a: $2d
    inc l                                         ; $403b: $2c
    xor l                                         ; $403c: $ad
    ld h, a                                       ; $403d: $67
    rst $08                                       ; $403e: $cf
    ld d, l                                       ; $403f: $55
    jp c, $f78a                                   ; $4040: $da $8a $f7

    ret c                                         ; $4043: $d8

    sbc d                                         ; $4044: $9a
    db $ed                                        ; $4045: $ed
    nop                                           ; $4046: $00
    scf                                           ; $4047: $37
    ld b, a                                       ; $4048: $47
    sbc [hl]                                      ; $4049: $9e
    sub l                                         ; $404a: $95
    ld a, [de]                                    ; $404b: $1a
    add e                                         ; $404c: $83
    sbc e                                         ; $404d: $9b
    and a                                         ; $404e: $a7
    ld b, d                                       ; $404f: $42
    ld h, h                                       ; $4050: $64
    ld sp, $4d97                                  ; $4051: $31 $97 $4d
    db $fd                                        ; $4054: $fd
    ld l, b                                       ; $4055: $68
    dec e                                         ; $4056: $1d
    di                                            ; $4057: $f3
    jp z, $dba3                                   ; $4058: $ca $a3 $db

    ld bc, $4737                                  ; $405b: $01 $37 $47
    sbc [hl]                                      ; $405e: $9e
    sub l                                         ; $405f: $95
    ld a, [de]                                    ; $4060: $1a
    add e                                         ; $4061: $83
    sbc e                                         ; $4062: $9b
    ld d, c                                       ; $4063: $51
    cp c                                          ; $4064: $b9
    ld b, e                                       ; $4065: $43
    sub l                                         ; $4066: $95
    push af                                       ; $4067: $f5
    db $ec                                        ; $4068: $ec
    or l                                          ; $4069: $b5
    ei                                            ; $406a: $fb
    ld [hl], l                                    ; $406b: $75
    ld c, c                                       ; $406c: $49
    db $f4                                        ; $406d: $f4
    inc sp                                        ; $406e: $33
    sbc e                                         ; $406f: $9b
    ld [hl], h                                    ; $4070: $74
    dec bc                                        ; $4071: $0b
    db $db                                        ; $4072: $db
    ld bc, $4737                                  ; $4073: $01 $37 $47
    sbc [hl]                                      ; $4076: $9e
    sub l                                         ; $4077: $95
    ld a, [de]                                    ; $4078: $1a
    add e                                         ; $4079: $83
    sbc e                                         ; $407a: $9b
    ld d, c                                       ; $407b: $51
    cp c                                          ; $407c: $b9
    ld b, e                                       ; $407d: $43
    sub l                                         ; $407e: $95
    push af                                       ; $407f: $f5
    db $ec                                        ; $4080: $ec
    ld h, l                                       ; $4081: $65
    adc e                                         ; $4082: $8b
    db $ec                                        ; $4083: $ec
    ld h, a                                       ; $4084: $67
    ld [hl], $e9                                  ; $4085: $36 $e9
    ld d, $b6                                     ; $4087: $16 $b6
    inc bc                                        ; $4089: $03
    scf                                           ; $408a: $37
    ld b, a                                       ; $408b: $47
    sbc [hl]                                      ; $408c: $9e
    sub l                                         ; $408d: $95
    ld a, [de]                                    ; $408e: $1a
    add e                                         ; $408f: $83
    sbc e                                         ; $4090: $9b
    and a                                         ; $4091: $a7
    ld d, a                                       ; $4092: $57
    ld b, [hl]                                    ; $4093: $46
    ld h, h                                       ; $4094: $64
    xor h                                         ; $4095: $ac
    ld b, a                                       ; $4096: $47
    xor a                                         ; $4097: $af
    ret nz                                        ; $4098: $c0

    ld [hl+], a                                   ; $4099: $22
    or [hl]                                       ; $409a: $b6
    inc bc                                        ; $409b: $03
    scf                                           ; $409c: $37
    ld b, a                                       ; $409d: $47
    sbc [hl]                                      ; $409e: $9e
    sub l                                         ; $409f: $95
    ld a, [de]                                    ; $40a0: $1a
    add e                                         ; $40a1: $83
    ld c, e                                       ; $40a2: $4b
    rst $10                                       ; $40a3: $d7
    db $e4                                        ; $40a4: $e4
    ld a, [hl+]                                   ; $40a5: $2a
    rst $00                                       ; $40a6: $c7
    adc h                                         ; $40a7: $8c
    ld a, [hl]                                    ; $40a8: $7e
    xor h                                         ; $40a9: $ac
    ld c, d                                       ; $40aa: $4a
    ld l, c                                       ; $40ab: $69
    adc h                                         ; $40ac: $8c
    or e                                          ; $40ad: $b3
    dec e                                         ; $40ae: $1d
    scf                                           ; $40af: $37
    ld b, a                                       ; $40b0: $47
    sbc [hl]                                      ; $40b1: $9e
    sub l                                         ; $40b2: $95
    ld a, [de]                                    ; $40b3: $1a
    add e                                         ; $40b4: $83
    sbc e                                         ; $40b5: $9b
    and a                                         ; $40b6: $a7
    ld d, h                                       ; $40b7: $54
    ld l, c                                       ; $40b8: $69
    dec hl                                        ; $40b9: $2b
    sbc $63                                       ; $40ba: $de $63
    ld l, e                                       ; $40bc: $6b
    ld [$a1a7], a                                 ; $40bd: $ea $a7 $a1
    adc l                                         ; $40c0: $8d
    adc b                                         ; $40c1: $88
    xor d                                         ; $40c2: $aa
    ld h, e                                       ; $40c3: $63
    ld a, l                                       ; $40c4: $7d
    ld l, e                                       ; $40c5: $6b
    push hl                                       ; $40c6: $e5
    xor h                                         ; $40c7: $ac
    db $db                                        ; $40c8: $db
    ld bc, $4737                                  ; $40c9: $01 $37 $47
    sbc [hl]                                      ; $40cc: $9e
    sub l                                         ; $40cd: $95
    ld a, [de]                                    ; $40ce: $1a
    add e                                         ; $40cf: $83
    ld c, e                                       ; $40d0: $4b
    rst $10                                       ; $40d1: $d7
    db $e4                                        ; $40d2: $e4
    ld d, b                                       ; $40d3: $50
    cp c                                          ; $40d4: $b9
    ld b, e                                       ; $40d5: $43
    sub l                                         ; $40d6: $95
    db $fd                                        ; $40d7: $fd
    db $e3                                        ; $40d8: $e3
    or $c2                                        ; $40d9: $f6 $c2
    halt                                          ; $40db: $76
    nop                                           ; $40dc: $00
    scf                                           ; $40dd: $37
    ld b, a                                       ; $40de: $47
    sbc [hl]                                      ; $40df: $9e
    sub l                                         ; $40e0: $95
    ld a, [de]                                    ; $40e1: $1a
    add e                                         ; $40e2: $83
    sbc e                                         ; $40e3: $9b
    ld d, c                                       ; $40e4: $51
    push bc                                       ; $40e5: $c5
    adc [hl]                                      ; $40e6: $8e
    ld a, d                                       ; $40e7: $7a
    ld l, b                                       ; $40e8: $68
    xor a                                         ; $40e9: $af
    adc b                                         ; $40ea: $88
    pop af                                        ; $40eb: $f1
    and a                                         ; $40ec: $a7
    or $e6                                        ; $40ed: $f6 $e6
    ret nz                                        ; $40ef: $c0

    adc a                                         ; $40f0: $8f
    ld b, c                                       ; $40f1: $41
    or a                                          ; $40f2: $b7
    inc bc                                        ; $40f3: $03
    scf                                           ; $40f4: $37
    ld b, a                                       ; $40f5: $47
    sbc [hl]                                      ; $40f6: $9e
    sub l                                         ; $40f7: $95
    ld a, [de]                                    ; $40f8: $1a
    add e                                         ; $40f9: $83
    sbc e                                         ; $40fa: $9b
    and a                                         ; $40fb: $a7
    rst $28                                       ; $40fc: $ef
    ld a, [de]                                    ; $40fd: $1a

jr_070_40fe:
    or d                                          ; $40fe: $b2
    ld h, a                                       ; $40ff: $67
    ld l, a                                       ; $4100: $6f
    ld h, b                                       ; $4101: $60
    rst $38                                       ; $4102: $ff
    sbc l                                         ; $4103: $9d
    db $ed                                        ; $4104: $ed
    nop                                           ; $4105: $00
    ld d, a                                       ; $4106: $57
    ld l, b                                       ; $4107: $68
    ld de, $f72b                                  ; $4108: $11 $2b $f7
    inc sp                                        ; $410b: $33
    ld c, d                                       ; $410c: $4a
    ld [hl], c                                    ; $410d: $71
    sbc [hl]                                      ; $410e: $9e
    ld a, l                                       ; $410f: $7d
    ld c, [hl]                                    ; $4110: $4e
    ccf                                           ; $4111: $3f
    dec [hl]                                      ; $4112: $35
    ld c, b                                       ; $4113: $48
    sbc a                                         ; $4114: $9f
    ld a, c                                       ; $4115: $79
    ld [$a7a9], a                                 ; $4116: $ea $a9 $a7
    ld a, e                                       ; $4119: $7b
    reti                                          ; $411a: $d9


    pop hl                                        ; $411b: $e1
    ld [hl], $7b                                  ; $411c: $36 $7b
    sbc [hl]                                      ; $411e: $9e
    inc hl                                        ; $411f: $23
    dec l                                         ; $4120: $2d
    ld h, d                                       ; $4121: $62
    ld h, l                                       ; $4122: $65
    rst $00                                       ; $4123: $c7
    inc e                                         ; $4124: $1c
    dec b                                         ; $4125: $05
    ld a, l                                       ; $4126: $7d
    cpl                                           ; $4127: $2f
    res 5, l                                      ; $4128: $cb $ad
    rst $18                                       ; $412a: $df
    or [hl]                                       ; $412b: $b6
    rst $18                                       ; $412c: $df
    ld e, [hl]                                    ; $412d: $5e
    halt                                          ; $412e: $76
    cp b                                          ; $412f: $b8
    call $e79e                                    ; $4130: $cd $9e $e7
    ld c, b                                       ; $4133: $48
    adc e                                         ; $4134: $8b
    ld e, b                                       ; $4135: $58
    reti                                          ; $4136: $d9


    ld sp, $b2c7                                  ; $4137: $31 $c7 $b2
    db $d3                                        ; $413a: $d3
    ld a, l                                       ; $413b: $7d
    ld c, [hl]                                    ; $413c: $4e
    inc de                                        ; $413d: $13
    ld d, a                                       ; $413e: $57
    jr c, jr_070_40fe                             ; $413f: $38 $bd

    db $ec                                        ; $4141: $ec
    ld [hl], b                                    ; $4142: $70
    sbc e                                         ; $4143: $9b
    dec a                                         ; $4144: $3d
    rst $08                                       ; $4145: $cf
    sub c                                         ; $4146: $91
    ld d, $b1                                     ; $4147: $16 $b1
    or d                                          ; $4149: $b2
    ld h, e                                       ; $414a: $63
    adc [hl]                                      ; $414b: $8e
    ld a, l                                       ; $414c: $7d
    or d                                          ; $414d: $b2
    rst $28                                       ; $414e: $ef
    jp c, $e30a                                   ; $414f: $da $0a $e3

    db $e4                                        ; $4152: $e4
    dec d                                         ; $4153: $15
    ld e, c                                       ; $4154: $59
    db $fd                                        ; $4155: $fd
    sbc l                                         ; $4156: $9d
    ld a, [hl-]                                   ; $4157: $3a
    sbc b                                         ; $4158: $98
    add h                                         ; $4159: $84
    sub $78                                       ; $415a: $d6 $78
    ld e, d                                       ; $415c: $5a
    ld a, [de]                                    ; $415d: $1a
    dec c                                         ; $415e: $0d
    ld e, $5a                                     ; $415f: $1e $5a
    adc a                                         ; $4161: $8f
    ld e, [hl]                                    ; $4162: $5e
    halt                                          ; $4163: $76
    cp b                                          ; $4164: $b8
    call $e79e                                    ; $4165: $cd $9e $e7
    ld c, b                                       ; $4168: $48
    adc e                                         ; $4169: $8b
    ld e, b                                       ; $416a: $58
    reti                                          ; $416b: $d9


    ld sp, $4147                                  ; $416c: $31 $47 $41
    rst $18                                       ; $416f: $df
    bit 6, d                                      ; $4170: $cb $72
    ld l, e                                       ; $4172: $6b
    ld e, $ed                                     ; $4173: $1e $ed
    ld sp, hl                                     ; $4175: $f9
    rst $20                                       ; $4176: $e7
    sub a                                         ; $4177: $97
    sla a                                         ; $4178: $cb $27
    daa                                           ; $417a: $27
    ld [hl], l                                    ; $417b: $75
    ld d, d                                       ; $417c: $52
    or h                                          ; $417d: $b4
    pop de                                        ; $417e: $d1
    add [hl]                                      ; $417f: $86
    cp b                                          ; $4180: $b8
    ld e, e                                       ; $4181: $5b
    xor c                                         ; $4182: $a9
    ld e, e                                       ; $4183: $5b
    cp a                                          ; $4184: $bf
    ld l, l                                       ; $4185: $6d
    cp a                                          ; $4186: $bf
    cp l                                          ; $4187: $bd
    sub [hl]                                      ; $4188: $96
    db $f4                                        ; $4189: $f4
    and a                                         ; $418a: $a7
    cpl                                           ; $418b: $2f
    ld a, e                                       ; $418c: $7b
    add hl, sp                                    ; $418d: $39
    ld sp, hl                                     ; $418e: $f9
    dec [hl]                                      ; $418f: $35
    db $fd                                        ; $4190: $fd
    ld l, h                                       ; $4191: $6c
    ld h, [hl]                                    ; $4192: $66
    rst $10                                       ; $4193: $d7
    ld a, [hl]                                    ; $4194: $7e
    cp b                                          ; $4195: $b8
    inc h                                         ; $4196: $24
    or e                                          ; $4197: $b3
    ld l, $f8                                     ; $4198: $2e $f8
    ld l, c                                       ; $419a: $69
    ret z                                         ; $419b: $c8

    dec e                                         ; $419c: $1d
    ld a, l                                       ; $419d: $7d
    rlca                                          ; $419e: $07
    ld [hl-], a                                   ; $419f: $32
    adc [hl]                                      ; $41a0: $8e
    push af                                       ; $41a1: $f5
    ld sp, hl                                     ; $41a2: $f9
    ld a, [hl]                                    ; $41a3: $7e
    db $db                                        ; $41a4: $db
    ld a, [hl]                                    ; $41a5: $7e
    ei                                            ; $41a6: $fb
    pop hl                                        ; $41a7: $e1
    ld a, e                                       ; $41a8: $7b
    ld d, a                                       ; $41a9: $57
    adc $3f                                       ; $41aa: $ce $3f
    cp d                                          ; $41ac: $ba
    ld [hl], c                                    ; $41ad: $71
    cp $76                                        ; $41ae: $fe $76
    rst $18                                       ; $41b0: $df
    ld a, [$1faa]                                 ; $41b1: $fa $aa $1f
    cp l                                          ; $41b4: $bd
    rst $30                                       ; $41b5: $f7
    pop de                                        ; $41b6: $d1
    ld h, a                                       ; $41b7: $67
    rst $20                                       ; $41b8: $e7
    rra                                           ; $41b9: $1f
    cp l                                          ; $41ba: $bd
    db $fd                                        ; $41bb: $fd
    pop af                                        ; $41bc: $f1
    ld bc, $fa41                                  ; $41bd: $01 $41 $fa
    call z, Call_070_4f53                         ; $41c0: $cc $53 $4f
    dec a                                         ; $41c3: $3d
    db $dd                                        ; $41c4: $dd
    di                                            ; $41c5: $f3
    sbc l                                         ; $41c6: $9d
    ld [hl-], a                                   ; $41c7: $32
    jp c, $25e4                                   ; $41c8: $da $e4 $25

    ld a, e                                       ; $41cb: $7b
    reti                                          ; $41cc: $d9


    and d                                         ; $41cd: $a2
    or $bd                                        ; $41ce: $f6 $bd
    inc l                                         ; $41d0: $2c
    or a                                          ; $41d1: $b7
    ld a, [hl]                                    ; $41d2: $7e
    ei                                            ; $41d3: $fb
    reti                                          ; $41d4: $d9


    ld hl, sp-$2f                                 ; $41d5: $f8 $d1
    adc [hl]                                      ; $41d7: $8e
    sub $2f                                       ; $41d8: $d6 $2f
    db $e3                                        ; $41da: $e3
    adc d                                         ; $41db: $8a
    and e                                         ; $41dc: $a3
    dec [hl]                                      ; $41dd: $35
    ld a, [hl+]                                   ; $41de: $2a
    db $ed                                        ; $41df: $ed
    rrca                                          ; $41e0: $0f
    ccf                                           ; $41e1: $3f
    cp d                                          ; $41e2: $ba
    dec e                                         ; $41e3: $1d
    rst $10                                       ; $41e4: $d7
    adc l                                         ; $41e5: $8d
    xor d                                         ; $41e6: $aa
    ld l, e                                       ; $41e7: $6b
    ld [hl-], a                                   ; $41e8: $32
    ei                                            ; $41e9: $fb
    add hl, de                                    ; $41ea: $19
    push hl                                       ; $41eb: $e5
    adc [hl]                                      ; $41ec: $8e
    ld l, d                                       ; $41ed: $6a
    add h                                         ; $41ee: $84
    push bc                                       ; $41ef: $c5
    inc bc                                        ; $41f0: $03
    rra                                           ; $41f1: $1f
    db $dd                                        ; $41f2: $dd
    db $fd                                        ; $41f3: $fd
    rst $20                                       ; $41f4: $e7
    cp $ca                                        ; $41f5: $fe $ca
    sbc e                                         ; $41f7: $9b
    ld c, a                                       ; $41f8: $4f
    rst $30                                       ; $41f9: $f7
    nop                                           ; $41fa: $00
    sbc a                                         ; $41fb: $9f
    pop de                                        ; $41fc: $d1
    add l                                         ; $41fd: $85
    di                                            ; $41fe: $f3
    ld c, d                                       ; $41ff: $4a
    rst $18                                       ; $4200: $df
    ld a, h                                       ; $4201: $7c
    ld a, [$3795]                                 ; $4202: $fa $95 $37
    sbc a                                         ; $4205: $9f
    ld a, c                                       ; $4206: $79
    push hl                                       ; $4207: $e5
    call Call_070_7b67                            ; $4208: $cd $67 $7b
    nop                                           ; $420b: $00
    rra                                           ; $420c: $1f
    db $fd                                        ; $420d: $fd
    ld c, [hl]                                    ; $420e: $4e
    ccf                                           ; $420f: $3f
    ld d, a                                       ; $4210: $57
    ld hl, sp-$17                                 ; $4211: $f8 $e9
    or a                                          ; $4213: $b7
    db $ed                                        ; $4214: $ed
    or a                                          ; $4215: $b7
    db $ed                                        ; $4216: $ed
    or a                                          ; $4217: $b7
    db $ed                                        ; $4218: $ed
    ld bc, $2d97                                  ; $4219: $01 $97 $2d
    sub b                                         ; $421c: $90
    sub $7f                                       ; $421d: $d6 $7f
    ld c, d                                       ; $421f: $4a
    rst $10                                       ; $4220: $d7
    and h                                         ; $4221: $a4
    or e                                          ; $4222: $b3
    push af                                       ; $4223: $f5
    db $db                                        ; $4224: $db
    ld c, a                                       ; $4225: $4f
    ld a, c                                       ; $4226: $79
    ld [hl-], a                                   ; $4227: $32
    db $fc                                        ; $4228: $fc
    ld h, c                                       ; $4229: $61
    ld l, a                                       ; $422a: $6f
    inc e                                         ; $422b: $1c
    ld e, a                                       ; $422c: $5f
    cp [hl]                                       ; $422d: $be
    ld a, [c]                                     ; $422e: $f2
    and $d3                                       ; $422f: $e6 $d3
    db $fd                                        ; $4231: $fd
    ld [$3795], a                                 ; $4232: $ea $95 $37
    sbc a                                         ; $4235: $9f
    jp hl                                         ; $4236: $e9


    ld bc, $1ae7                                  ; $4237: $01 $e7 $1a
    ld e, c                                       ; $423a: $59
    ld hl, $2fee                                  ; $423b: $21 $ee $2f
    dec [hl]                                      ; $423e: $35
    ld b, $37                                     ; $423f: $06 $37
    ld a, [de]                                    ; $4241: $1a
    or d                                          ; $4242: $b2
    add h                                         ; $4243: $84
    sbc a                                         ; $4244: $9f
    ld c, e                                       ; $4245: $4b
    rlca                                          ; $4246: $07
    sbc a                                         ; $4247: $9f
    dec hl                                        ; $4248: $2b
    db $ec                                        ; $4249: $ec
    sub l                                         ; $424a: $95
    inc bc                                        ; $424b: $03
    ld c, a                                       ; $424c: $4f
    ccf                                           ; $424d: $3f
    sub $37                                       ; $424e: $d6 $37
    sbc a                                         ; $4250: $9f
    xor $01                                       ; $4251: $ee $01
    rst $08                                       ; $4253: $cf
    inc a                                         ; $4254: $3c
    sub $37                                       ; $4255: $d6 $37
    sbc a                                         ; $4257: $9f
    xor $01                                       ; $4258: $ee $01
    rst $08                                       ; $425a: $cf
    ld a, $d6                                     ; $425b: $3e $d6
    scf                                           ; $425d: $37
    sbc a                                         ; $425e: $9f
    xor $01                                       ; $425f: $ee $01
    rst $08                                       ; $4261: $cf
    dec a                                         ; $4262: $3d
    sub $37                                       ; $4263: $d6 $37
    sbc a                                         ; $4265: $9f
    xor $01                                       ; $4266: $ee $01
    rst $10                                       ; $4268: $d7
    ld h, c                                       ; $4269: $61
    add sp, $3b                                   ; $426a: $e8 $3b
    cp b                                          ; $426c: $b8
    ld c, l                                       ; $426d: $4d
    ld a, e                                       ; $426e: $7b
    push hl                                       ; $426f: $e5
    nop                                           ; $4270: $00
    scf                                           ; $4271: $37
    ld b, a                                       ; $4272: $47
    sbc [hl]                                      ; $4273: $9e
    dec d                                         ; $4274: $15
    dec hl                                        ; $4275: $2b
    ld a, e                                       ; $4276: $7b
    inc [hl]                                      ; $4277: $34
    rst $38                                       ; $4278: $ff
    ld c, [hl]                                    ; $4279: $4e
    ld de, $b31a                                  ; $427a: $11 $1a $b3
    ld h, a                                       ; $427d: $67
    ld a, [hl+]                                   ; $427e: $2a
    dec [hl]                                      ; $427f: $35
    and d                                         ; $4280: $a2
    ld b, [hl]                                    ; $4281: $46
    ret                                           ; $4282: $c9


    dec d                                         ; $4283: $15
    ld [hl], c                                    ; $4284: $71
    jp hl                                         ; $4285: $e9


    nop                                           ; $4286: $00
    ld d, a                                       ; $4287: $57
    or b                                          ; $4288: $b0
    ld a, e                                       ; $4289: $7b
    ld l, $fb                                     ; $428a: $2e $fb
    sbc l                                         ; $428c: $9d
    cp [hl]                                       ; $428d: $be
    dec a                                         ; $428e: $3d
    ld b, d                                       ; $428f: $42
    dec bc                                        ; $4290: $0b
    cp $73                                        ; $4291: $fe $73
    ccf                                           ; $4293: $3f
    nop                                           ; $4294: $00
    ld d, a                                       ; $4295: $57
    or b                                          ; $4296: $b0
    ld a, e                                       ; $4297: $7b
    ld l, $fb                                     ; $4298: $2e $fb
    sbc l                                         ; $429a: $9d
    ld a, d                                       ; $429b: $7a
    or $ca                                        ; $429c: $f6 $ca
    ld [$078d], sp                                ; $429e: $08 $8d $07
    ld d, a                                       ; $42a1: $57
    or b                                          ; $42a2: $b0
    ld a, e                                       ; $42a3: $7b
    ld l, $fb                                     ; $42a4: $2e $fb
    sbc l                                         ; $42a6: $9d
    ld a, d                                       ; $42a7: $7a
    or $5c                                        ; $42a8: $f6 $5c
    inc hl                                        ; $42aa: $23
    or d                                          ; $42ab: $b2
    ld a, b                                       ; $42ac: $78
    ld c, $57                                     ; $42ad: $0e $57
    or b                                          ; $42af: $b0
    ld a, e                                       ; $42b0: $7b
    ld l, $fb                                     ; $42b1: $2e $fb
    sbc l                                         ; $42b3: $9d
    ld a, d                                       ; $42b4: $7a
    or $ba                                        ; $42b5: $f6 $ba
    ld hl, $00e2                                  ; $42b7: $21 $e2 $00
    ld d, a                                       ; $42ba: $57
    or b                                          ; $42bb: $b0
    ld a, e                                       ; $42bc: $7b
    ld l, $fb                                     ; $42bd: $2e $fb
    sbc l                                         ; $42bf: $9d
    ld e, [hl]                                    ; $42c0: $5e
    ld c, [hl]                                    ; $42c1: $4e
    ld [hl], c                                    ; $42c2: $71
    inc e                                         ; $42c3: $1c
    ld l, a                                       ; $42c4: $6f
    pop de                                        ; $42c5: $d1
    xor a                                         ; $42c6: $af
    adc e                                         ; $42c7: $8b
    ld [hl], e                                    ; $42c8: $73
    nop                                           ; $42c9: $00
    sbc a                                         ; $42ca: $9f
    ld [c], a                                     ; $42cb: $e2
    xor $db                                       ; $42cc: $ee $db
    push af                                       ; $42ce: $f5
    db $ec                                        ; $42cf: $ec
    ld h, l                                       ; $42d0: $65
    dec d                                         ; $42d1: $15
    db $dd                                        ; $42d2: $dd
    db $e3                                        ; $42d3: $e3
    cp c                                          ; $42d4: $b9
    rst $08                                       ; $42d5: $cf
    ld bc, $e597                                  ; $42d6: $01 $97 $e5
    ld a, l                                       ; $42d9: $7d
    ld a, c                                       ; $42da: $79
    push bc                                       ; $42db: $c5
    jp hl                                         ; $42dc: $e9


    add a                                         ; $42dd: $87
    ld c, e                                       ; $42de: $4b
    adc [hl]                                      ; $42df: $8e
    adc h                                         ; $42e0: $8c
    sub e                                         ; $42e1: $93
    rst $20                                       ; $42e2: $e7
    nop                                           ; $42e3: $00
    sbc a                                         ; $42e4: $9f
    ld e, e                                       ; $42e5: $5b
    ld e, h                                       ; $42e6: $5c
    daa                                           ; $42e7: $27
    ld l, b                                       ; $42e8: $68
    ld l, a                                       ; $42e9: $6f
    ld d, b                                       ; $42ea: $50
    ld b, d                                       ; $42eb: $42
    rrca                                          ; $42ec: $0f
    ld l, a                                       ; $42ed: $6f
    xor a                                         ; $42ee: $af
    ld [$e797], sp                                ; $42ef: $08 $97 $e7
    nop                                           ; $42f2: $00
    rra                                           ; $42f3: $1f
    adc [hl]                                      ; $42f4: $8e
    ld h, [hl]                                    ; $42f5: $66
    inc e                                         ; $42f6: $1c
    sbc a                                         ; $42f7: $9f
    ld [c], a                                     ; $42f8: $e2
    xor $db                                       ; $42f9: $ee $db
    push af                                       ; $42fb: $f5
    db $ec                                        ; $42fc: $ec
    dec [hl]                                      ; $42fd: $35
    ld h, h                                       ; $42fe: $64
    ld l, a                                       ; $42ff: $6f
    pop bc                                        ; $4300: $c1
    and a                                         ; $4301: $a7
    ld sp, $d71c                                  ; $4302: $31 $1c $d7
    cp c                                          ; $4305: $b9
    or e                                          ; $4306: $b3
    sbc [hl]                                      ; $4307: $9e
    cp l                                          ; $4308: $bd
    ld l, h                                       ; $4309: $6c
    jr nc, jr_070_4344                            ; $430a: $30 $38

    pop hl                                        ; $430c: $e1
    dec a                                         ; $430d: $3d
    dec bc                                        ; $430e: $0b
    rlca                                          ; $430f: $07
    rst $20                                       ; $4310: $e7
    ld a, [de]                                    ; $4311: $1a
    xor [hl]                                      ; $4312: $ae
    inc l                                         ; $4313: $2c
    ld e, $3d                                     ; $4314: $1e $3d
    nop                                           ; $4316: $00
    rst $10                                       ; $4317: $d7
    rst $28                                       ; $4318: $ef
    xor c                                         ; $4319: $a9
    ld h, a                                       ; $431a: $67
    xor a                                         ; $431b: $af
    rst $08                                       ; $431c: $cf
    cp $9f                                        ; $431d: $fe $9f
    inc bc                                        ; $431f: $03
    rra                                           ; $4320: $1f
    rst $28                                       ; $4321: $ef
    ld [c], a                                     ; $4322: $e2
    pop de                                        ; $4323: $d1
    ld a, d                                       ; $4324: $7a
    or $2d                                        ; $4325: $f6 $2d

Call_070_4327:
    ld [$9b24], a                                 ; $4327: $ea $24 $9b
    inc bc                                        ; $432a: $03
    ld d, a                                       ; $432b: $57
    call nz, $644b                                ; $432c: $c4 $4b $64
    xor h                                         ; $432f: $ac
    ld h, a                                       ; $4330: $67
    rst $18                                       ; $4331: $df
    ld e, d                                       ; $4332: $5a
    ld a, [c]                                     ; $4333: $f2
    ld e, $cb                                     ; $4334: $1e $cb
    ld l, e                                       ; $4336: $6b
    ld c, $d7                                     ; $4337: $0e $d7
    adc l                                         ; $4339: $8d
    ld a, [bc]                                    ; $433a: $0a
    xor l                                         ; $433b: $ad
    ld h, a                                       ; $433c: $67
    ld l, a                                       ; $433d: $6f
    ret nc                                        ; $433e: $d0

    ld b, d                                       ; $433f: $42
    and $c8                                       ; $4340: $e6 $c8
    inc bc                                        ; $4342: $03
    rst $10                                       ; $4343: $d7

jr_070_4344:
    jp hl                                         ; $4344: $e9


    dec c                                         ; $4345: $0d
    ld a, l                                       ; $4346: $7d
    adc e                                         ; $4347: $8b
    or a                                          ; $4348: $b7
    rlca                                          ; $4349: $07
    halt                                          ; $434a: $76
    nop                                           ; $434b: $00
    ld d, a                                       ; $434c: $57
    call nz, $644b                                ; $434d: $c4 $4b $64
    xor h                                         ; $4350: $ac
    ld h, a                                       ; $4351: $67
    ccf                                           ; $4352: $3f
    rst $08                                       ; $4353: $cf
    ld c, e                                       ; $4354: $4b
    sbc $63                                       ; $4355: $de $63
    ld a, c                                       ; $4357: $79
    call $9701                                    ; $4358: $cd $01 $97
    push hl                                       ; $435b: $e5
    ld a, l                                       ; $435c: $7d
    ld a, c                                       ; $435d: $79
    push bc                                       ; $435e: $c5
    jp hl                                         ; $435f: $e9


    add a                                         ; $4360: $87
    ld [$cfb9], sp                                ; $4361: $08 $b9 $cf
    ld bc, $e597                                  ; $4364: $01 $97 $e5
    ld a, l                                       ; $4367: $7d
    ld a, c                                       ; $4368: $79
    push bc                                       ; $4369: $c5
    pop de                                        ; $436a: $d1
    inc bc                                        ; $436b: $03
    sub a                                         ; $436c: $97
    ld [hl], e                                    ; $436d: $73
    cp h                                          ; $436e: $bc
    db $db                                        ; $436f: $db
    ld c, a                                       ; $4370: $4f
    sbc h                                         ; $4371: $9c
    inc bc                                        ; $4372: $03
    rst $10                                       ; $4373: $d7
    rst $20                                       ; $4374: $e7
    ld [c], a                                     ; $4375: $e2
    rst $28                                       ; $4376: $ef
    call nc, Call_070_57b3                        ; $4377: $d4 $b3 $57
    sub d                                         ; $437a: $92
    pop hl                                        ; $437b: $e1
    nop                                           ; $437c: $00
    rst $28                                       ; $437d: $ef
    ld a, [de]                                    ; $437e: $1a
    or d                                          ; $437f: $b2
    ld h, a                                       ; $4380: $67
    xor a                                         ; $4381: $af
    rst $08                                       ; $4382: $cf
    push bc                                       ; $4383: $c5
    rst $18                                       ; $4384: $df
    xor c                                         ; $4385: $a9
    ld h, a                                       ; $4386: $67
    xor a                                         ; $4387: $af
    inc h                                         ; $4388: $24
    jp $d701                                      ; $4389: $c3 $01 $d7


    rst $20                                       ; $438c: $e7
    ld [c], a                                     ; $438d: $e2
    rst $28                                       ; $438e: $ef
    db $f4                                        ; $438f: $f4
    and $8a                                       ; $4390: $e6 $8a
    ld [hl], b                                    ; $4392: $70
    db $eb                                        ; $4393: $eb
    sub $01                                       ; $4394: $d6 $01
    rst $10                                       ; $4396: $d7
    rst $20                                       ; $4397: $e7
    ld [c], a                                     ; $4398: $e2
    rst $28                                       ; $4399: $ef
    db $f4                                        ; $439a: $f4
    ld a, [hl+]                                   ; $439b: $2a
    ld c, l                                       ; $439c: $4d
    cp b                                          ; $439d: $b8
    db $e4                                        ; $439e: $e4
    ld a, [c]                                     ; $439f: $f2
    jr c, jr_070_43a2                             ; $43a0: $38 $00

jr_070_43a2:
    rst $10                                       ; $43a2: $d7
    rst $20                                       ; $43a3: $e7
    ld [c], a                                     ; $43a4: $e2
    rst $28                                       ; $43a5: $ef
    db $f4                                        ; $43a6: $f4
    ld e, h                                       ; $43a7: $5c
    db $e3                                        ; $43a8: $e3
    ld [hl], d                                    ; $43a9: $72
    ld l, c                                       ; $43aa: $69
    ld b, a                                       ; $43ab: $47
    adc [hl]                                      ; $43ac: $8e
    inc a                                         ; $43ad: $3c
    nop                                           ; $43ae: $00
    rst $28                                       ; $43af: $ef
    ld a, [de]                                    ; $43b0: $1a
    or d                                          ; $43b1: $b2
    ld h, a                                       ; $43b2: $67
    xor a                                         ; $43b3: $af
    rst $08                                       ; $43b4: $cf
    push bc                                       ; $43b5: $c5
    rst $18                                       ; $43b6: $df
    jp hl                                         ; $43b7: $e9


    cp c                                          ; $43b8: $b9
    add $e5                                       ; $43b9: $c6 $e5
    jp nc, Jump_000_1c8e                          ; $43bb: $d2 $8e $1c

    ld a, c                                       ; $43be: $79
    nop                                           ; $43bf: $00
    rst $20                                       ; $43c0: $e7
    or a                                          ; $43c1: $b7
    jr z, jr_070_4417                             ; $43c2: $28 $53

    add h                                         ; $43c4: $84
    dec e                                         ; $43c5: $1d
    ld d, a                                       ; $43c6: $57
    ld h, b                                       ; $43c7: $60
    ld de, $e8fd                                  ; $43c8: $11 $fd $e8
    ld a, [hl]                                    ; $43cb: $7e
    ld b, a                                       ; $43cc: $47
    sbc e                                         ; $43cd: $9b
    ld d, a                                       ; $43ce: $57
    ld a, [$d3e6]                                 ; $43cf: $fa $e6 $d3
    rlca                                          ; $43d2: $07
    rst $20                                       ; $43d3: $e7
    ld a, [hl+]                                   ; $43d4: $2a
    ld h, a                                       ; $43d5: $67
    rla                                           ; $43d6: $17
    db $d3                                        ; $43d7: $d3
    ld a, d                                       ; $43d8: $7a
    dec b                                         ; $43d9: $05
    ld d, $71                                     ; $43da: $16 $71
    nop                                           ; $43dc: $00
    sbc a                                         ; $43dd: $9f
    reti                                          ; $43de: $d9


    ld c, b                                       ; $43df: $48
    ret c                                         ; $43e0: $d8

jr_070_43e1:
    ld bc, $b037                                  ; $43e1: $01 $37 $b0
    db $ec                                        ; $43e4: $ec
    nop                                           ; $43e5: $00
    rst $10                                       ; $43e6: $d7
    ld l, l                                       ; $43e7: $6d
    ld [hl], d                                    ; $43e8: $72
    sbc h                                         ; $43e9: $9c
    add [hl]                                      ; $43ea: $86
    jr nc, jr_070_43e1                            ; $43eb: $30 $f4

    inc sp                                        ; $43ed: $33
    dec de                                        ; $43ee: $1b
    add hl, bc                                    ; $43ef: $09
    db $e3                                        ; $43f0: $e3
    and l                                         ; $43f1: $a5
    inc bc                                        ; $43f2: $03
    sub a                                         ; $43f3: $97
    ld c, a                                       ; $43f4: $4f
    add hl, bc                                    ; $43f5: $09
    and $91                                       ; $43f6: $e6 $91
    db $fd                                        ; $43f8: $fd
    ld [hl], h                                    ; $43f9: $74
    ld a, [hl-]                                   ; $43fa: $3a
    add hl, hl                                    ; $43fb: $29
    jp c, $fbf4                                   ; $43fc: $da $f4 $fb

    add hl, sp                                    ; $43ff: $39
    pop bc                                        ; $4400: $c1
    adc a                                         ; $4401: $8f
    ld l, l                                       ; $4402: $6d
    cp l                                          ; $4403: $bd
    ld l, [hl]                                    ; $4404: $6e
    ld d, h                                       ; $4405: $54
    ld e, l                                       ; $4406: $5d
    sub e                                         ; $4407: $93
    reti                                          ; $4408: $d9


    jp hl                                         ; $4409: $e9


    ld h, a                                       ; $440a: $67
    sub h                                         ; $440b: $94
    dec sp                                        ; $440c: $3b
    ld a, [$4356]                                 ; $440d: $fa $56 $43
    jr jr_070_443c                                ; $4410: $18 $2a

    sub c                                         ; $4412: $91
    dec h                                         ; $4413: $25
    ld [hl], a                                    ; $4414: $77
    ld e, b                                       ; $4415: $58
    pop de                                        ; $4416: $d1

jr_070_4417:
    ld l, b                                       ; $4417: $68
    inc hl                                        ; $4418: $23
    or c                                          ; $4419: $b1
    dec e                                         ; $441a: $1d
    sbc a                                         ; $441b: $9f
    reti                                          ; $441c: $d9


    ld c, b                                       ; $441d: $48
    db $f4                                        ; $441e: $f4
    ld a, [bc]                                    ; $441f: $0a
    or d                                          ; $4420: $b2
    db $e4                                        ; $4421: $e4
    ld c, $8f                                     ; $4422: $0e $8f
    ld c, e                                       ; $4424: $4b
    rlca                                          ; $4425: $07
    sbc a                                         ; $4426: $9f
    reti                                          ; $4427: $d9


    ld c, b                                       ; $4428: $48
    db $f4                                        ; $4429: $f4
    jp z, $70b8                                   ; $442a: $ca $b8 $70

    ld h, a                                       ; $442d: $67
    call nz, $03a5                                ; $442e: $c4 $a5 $03
    scf                                           ; $4431: $37
    ld b, a                                       ; $4432: $47
    sbc [hl]                                      ; $4433: $9e
    dec [hl]                                      ; $4434: $35
    rst $38                                       ; $4435: $ff
    ld c, [hl]                                    ; $4436: $4e
    jp $6cf1                                      ; $4437: $c3 $f1 $6c


    ret z                                         ; $443a: $c8

    inc de                                        ; $443b: $13

jr_070_443c:
    xor h                                         ; $443c: $ac
    ld c, $4b                                     ; $443d: $0e $4b
    sbc e                                         ; $443f: $9b
    sbc c                                         ; $4440: $99
    push bc                                       ; $4441: $c5
    ret                                           ; $4442: $c9


    and c                                         ; $4443: $a1
    ld [de], a                                    ; $4444: $12
    ld d, $d1                                     ; $4445: $16 $d1
    ld [hl], b                                    ; $4447: $70
    inc l                                         ; $4448: $2c
    sub b                                         ; $4449: $90
    ld e, b                                       ; $444a: $58
    ld h, l                                       ; $444b: $65
    ld [$b33b], a                                 ; $444c: $ea $3b $b3
    xor a                                         ; $444f: $af
    jp hl                                         ; $4450: $e9


    ld e, e                                       ; $4451: $5b
    add $ff                                       ; $4452: $c6 $ff
    jp nc, Jump_070_6352                          ; $4454: $d2 $52 $63

    ld [hl], b                                    ; $4457: $70
    and l                                         ; $4458: $a5
    sbc b                                         ; $4459: $98
    ld l, e                                       ; $445a: $6b
    ld l, $1d                                     ; $445b: $2e $1d
    scf                                           ; $445d: $37
    ld b, a                                       ; $445e: $47
    sbc [hl]                                      ; $445f: $9e
    dec d                                         ; $4460: $15
    ld d, d                                       ; $4461: $52
    inc a                                         ; $4462: $3c
    xor c                                         ; $4463: $a9
    ret                                           ; $4464: $c9


    and c                                         ; $4465: $a1
    ld [de], a                                    ; $4466: $12
    ld d, $51                                     ; $4467: $16 $51
    rst $08                                       ; $4469: $cf
    ld a, [bc]                                    ; $446a: $0a
    dec l                                         ; $446b: $2d
    db $dd                                        ; $446c: $dd
    add d                                         ; $446d: $82
    sub [hl]                                      ; $446e: $96
    dec d                                         ; $446f: $15
    ld e, d                                       ; $4470: $5a
    cp d                                          ; $4471: $ba
    dec [hl]                                      ; $4472: $35
    ld e, d                                       ; $4473: $5a
    ld de, $e8dc                                  ; $4474: $11 $dc $e8
    add sp, -$5b                                  ; $4477: $e8 $a5
    inc bc                                        ; $4479: $03
    scf                                           ; $447a: $37
    ld b, a                                       ; $447b: $47
    sbc [hl]                                      ; $447c: $9e
    push af                                       ; $447d: $f5
    adc a                                         ; $447e: $8f
    ld d, l                                       ; $447f: $55
    ld l, d                                       ; $4480: $6a
    add h                                         ; $4481: $84
    ld d, l                                       ; $4482: $55
    adc $4e                                       ; $4483: $ce $4e
    cp c                                          ; $4485: $b9
    ld h, $23                                     ; $4486: $26 $23
    ei                                            ; $4488: $fb
    jp hl                                         ; $4489: $e9


    db $f4                                        ; $448a: $f4
    ld l, l                                       ; $448b: $6d
    jp z, $ea1f                                   ; $448c: $ca $1f $ea

    pop de                                        ; $448f: $d1
    ld [hl], a                                    ; $4490: $77
    ld l, l                                       ; $4491: $6d
    adc c                                         ; $4492: $89
    ld d, [hl]                                    ; $4493: $56
    cp [hl]                                       ; $4494: $be
    rst $00                                       ; $4495: $c7
    ld d, $2e                                     ; $4496: $16 $2e
    dec e                                         ; $4498: $1d
    scf                                           ; $4499: $37
    ld b, a                                       ; $449a: $47
    sbc [hl]                                      ; $449b: $9e
    push af                                       ; $449c: $f5
    adc a                                         ; $449d: $8f
    ld d, l                                       ; $449e: $55
    ld l, d                                       ; $449f: $6a
    add h                                         ; $44a0: $84
    ld d, l                                       ; $44a1: $55
    adc $4e                                       ; $44a2: $ce $4e
    cp c                                          ; $44a4: $b9
    ld h, $23                                     ; $44a5: $26 $23
    ei                                            ; $44a7: $fb
    jp hl                                         ; $44a8: $e9


    db $f4                                        ; $44a9: $f4
    ld l, l                                       ; $44aa: $6d
    jp z, $ea1f                                   ; $44ab: $ca $1f $ea

    pop de                                        ; $44ae: $d1
    rrca                                          ; $44af: $0f
    sub e                                         ; $44b0: $93
    ld [$ec4f], sp                                ; $44b1: $08 $4f $ec
    ld c, c                                       ; $44b4: $49
    add h                                         ; $44b5: $84
    ld c, e                                       ; $44b6: $4b
    rlca                                          ; $44b7: $07
    scf                                           ; $44b8: $37
    ld b, a                                       ; $44b9: $47
    sbc [hl]                                      ; $44ba: $9e
    push af                                       ; $44bb: $f5
    adc a                                         ; $44bc: $8f
    ld d, l                                       ; $44bd: $55
    ld l, d                                       ; $44be: $6a
    add h                                         ; $44bf: $84
    ld d, l                                       ; $44c0: $55
    adc $4e                                       ; $44c1: $ce $4e
    cp c                                          ; $44c3: $b9
    ld h, $23                                     ; $44c4: $26 $23
    ei                                            ; $44c6: $fb
    jp hl                                         ; $44c7: $e9


    db $f4                                        ; $44c8: $f4
    ld l, l                                       ; $44c9: $6d
    jp z, Jump_070_7a1f                           ; $44ca: $ca $1f $7a

    ld h, l                                       ; $44cd: $65
    db $ec                                        ; $44ce: $ec
    cp a                                          ; $44cf: $bf
    ld [hl-], a                                   ; $44d0: $32
    or $4b                                        ; $44d1: $f6 $4b
    rlca                                          ; $44d3: $07
    scf                                           ; $44d4: $37
    ld b, a                                       ; $44d5: $47
    sbc [hl]                                      ; $44d6: $9e

jr_070_44d7:
    push af                                       ; $44d7: $f5
    adc a                                         ; $44d8: $8f
    ld d, l                                       ; $44d9: $55
    ld l, d                                       ; $44da: $6a
    add h                                         ; $44db: $84
    ld d, l                                       ; $44dc: $55
    adc $4e                                       ; $44dd: $ce $4e
    cp c                                          ; $44df: $b9
    ld h, $23                                     ; $44e0: $26 $23
    ei                                            ; $44e2: $fb
    jp hl                                         ; $44e3: $e9


    db $f4                                        ; $44e4: $f4
    ld l, l                                       ; $44e5: $6d
    jp z, $ea1f                                   ; $44e6: $ca $1f $ea

    pop de                                        ; $44e9: $d1
    dec de                                        ; $44ea: $1b
    sub e                                         ; $44eb: $93
    sub l                                         ; $44ec: $95
    or [hl]                                       ; $44ed: $b6
    ld [hl-], a                                   ; $44ee: $32
    ld l, $1d                                     ; $44ef: $2e $1d
    scf                                           ; $44f1: $37
    ld b, a                                       ; $44f2: $47
    sbc [hl]                                      ; $44f3: $9e
    dec d                                         ; $44f4: $15
    dec hl                                        ; $44f5: $2b
    ld a, e                                       ; $44f6: $7b
    inc [hl]                                      ; $44f7: $34
    rst $38                                       ; $44f8: $ff
    ld c, [hl]                                    ; $44f9: $4e
    dec a                                         ; $44fa: $3d
    dec [hl]                                      ; $44fb: $35
    ld a, [de]                                    ; $44fc: $1a
    cp $93                                        ; $44fd: $fe $93
    ld c, d                                       ; $44ff: $4a
    adc l                                         ; $4500: $8d
    db $ec                                        ; $4501: $ec
    rst $30                                       ; $4502: $f7
    ld [hl], e                                    ; $4503: $73

Jump_070_4504:
    sbc d                                         ; $4504: $9a
    ld c, e                                       ; $4505: $4b
    rlca                                          ; $4506: $07
    ld d, a                                       ; $4507: $57
    add $0c                                       ; $4508: $c6 $0c
    sub l                                         ; $450a: $95
    sub e                                         ; $450b: $93
    and e                                         ; $450c: $a3
    and c                                         ; $450d: $a1
    ld l, a                                       ; $450e: $6f
    dec de                                        ; $450f: $1b
    db $e4                                        ; $4510: $e4
    inc [hl]                                      ; $4511: $34
    add h                                         ; $4512: $84
    and c                                         ; $4513: $a1
    ld b, [hl]                                    ; $4514: $46
    sbc c                                         ; $4515: $99
    ld b, d                                       ; $4516: $42
    ld a, [de]                                    ; $4517: $1a
    xor h                                         ; $4518: $ac
    db $d3                                        ; $4519: $d3
    rrca                                          ; $451a: $0f
    jp hl                                         ; $451b: $e9


    add h                                         ; $451c: $84
    ld [hl], $7b                                  ; $451d: $36 $7b
    dec a                                         ; $451f: $3d
    ei                                            ; $4520: $fb
    ld de, $6bff                                  ; $4521: $11 $ff $6b
    rst $18                                       ; $4524: $df
    ld a, c                                       ; $4525: $79
    jp hl                                         ; $4526: $e9


    nop                                           ; $4527: $00
    rra                                           ; $4528: $1f
    adc l                                         ; $4529: $8d
    add hl, bc                                    ; $452a: $09
    ld l, c                                       ; $452b: $69
    ld [hl], c                                    ; $452c: $71
    ld c, d                                       ; $452d: $4a
    sub l                                         ; $452e: $95
    ld [$5d27], sp                                ; $452f: $08 $27 $5d
    ld [$3195], a                                 ; $4532: $ea $95 $31
    ld b, e                                       ; $4535: $43
    ld b, e                                       ; $4536: $43
    jr jr_070_45a3                                ; $4537: $18 $6a

    sub h                                         ; $4539: $94
    ld [$b263], sp                                ; $453a: $08 $63 $b2
    ldh [$27], a                                  ; $453d: $e0 $27
    or $d9                                        ; $453f: $f6 $d9
    ld c, $e7                                     ; $4541: $0e $e7
    ld e, c                                       ; $4543: $59
    ld c, [hl]                                    ; $4544: $4e
    adc [hl]                                      ; $4545: $8e
    add $a2                                       ; $4546: $c6 $a2
    ld d, d                                       ; $4548: $52
    adc h                                         ; $4549: $8c

Jump_070_454a:
    ccf                                           ; $454a: $3f
    dec hl                                        ; $454b: $2b
    rst $00                                       ; $454c: $c7
    adc h                                         ; $454d: $8c
    ld de, $610d                                  ; $454e: $11 $0d $61
    jr z, jr_070_44d7                             ; $4551: $28 $84

    or [hl]                                       ; $4553: $b6
    xor h                                         ; $4554: $ac
    ld l, b                                       ; $4555: $68
    jr c, jr_070_456e                             ; $4556: $38 $16

    ld [hl], c                                    ; $4558: $71
    jp hl                                         ; $4559: $e9


    nop                                           ; $455a: $00
    sbc a                                         ; $455b: $9f
    ld sp, $1647                                  ; $455c: $31 $47 $16
    daa                                           ; $455f: $27
    sbc b                                         ; $4560: $98
    pop bc                                        ; $4561: $c1
    adc d                                         ; $4562: $8a
    jp z, $f4b1                                   ; $4563: $ca $b1 $f4

    dec a                                         ; $4566: $3d
    ld l, $1d                                     ; $4567: $2e $1d
    scf                                           ; $4569: $37
    sub $09                                       ; $456a: $d6 $09
    add l                                         ; $456c: $85
    halt                                          ; $456d: $76

jr_070_456e:
    ld h, l                                       ; $456e: $65
    adc l                                         ; $456f: $8d
    sub [hl]                                      ; $4570: $96
    ld l, $de                                     ; $4571: $2e $de
    ld c, e                                       ; $4573: $4b
    xor l                                         ; $4574: $ad
    ld h, a                                       ; $4575: $67
    rst $18                                       ; $4576: $df
    reti                                          ; $4577: $d9


    ld d, a                                       ; $4578: $57
    db $fc                                        ; $4579: $fc
    ld [hl], c                                    ; $457a: $71
    ret                                           ; $457b: $c9


    rra                                           ; $457c: $1f
    ld l, $1d                                     ; $457d: $2e $1d
    ld d, a                                       ; $457f: $57
    ld l, h                                       ; $4580: $6c
    or c                                          ; $4581: $b1
    ld l, b                                       ; $4582: $68
    jr c, @+$19                                   ; $4583: $38 $17

    ld a, a                                       ; $4585: $7f
    and a                                         ; $4586: $a7
    ld [hl], d                                    ; $4587: $72
    call z, Call_070_7118                         ; $4588: $cc $18 $71
    jp hl                                         ; $458b: $e9


    nop                                           ; $458c: $00
    rst $28                                       ; $458d: $ef
    rst $08                                       ; $458e: $cf
    ld l, c                                       ; $458f: $69
    ld [$6bd1], a                                 ; $4590: $ea $d1 $6b
    ld [hl], h                                    ; $4593: $74
    rst $30                                       ; $4594: $f7
    ret c                                         ; $4595: $d8

    ld b, d                                       ; $4596: $42
    dec a                                         ; $4597: $3d
    or h                                          ; $4598: $b4
    ld d, a                                       ; $4599: $57
    ld h, b                                       ; $459a: $60
    ld de, $cf5a                                  ; $459b: $11 $5a $cf
    cp [hl]                                       ; $459e: $be
    ld h, l                                       ; $459f: $65
    jp hl                                         ; $45a0: $e9


    ld d, $b4                                     ; $45a1: $16 $b4

jr_070_45a3:
    db $ec                                        ; $45a3: $ec
    ld e, e                                       ; $45a4: $5b
    sub [hl]                                      ; $45a5: $96
    ld l, [hl]                                    ; $45a6: $6e
    adc l                                         ; $45a7: $8d
    or $1d                                        ; $45a8: $f6 $1d
    cp b                                          ; $45aa: $b8
    pop de                                        ; $45ab: $d1
    pop de                                        ; $45ac: $d1
    ld c, e                                       ; $45ad: $4b
    rlca                                          ; $45ae: $07
    scf                                           ; $45af: $37
    ld b, a                                       ; $45b0: $47
    sbc [hl]                                      ; $45b1: $9e
    push af                                       ; $45b2: $f5
    add h                                         ; $45b3: $84
    inc l                                         ; $45b4: $2c
    sbc [hl]                                      ; $45b5: $9e
    call nc, $9ae4                                ; $45b6: $d4 $e4 $9a
    rst $28                                       ; $45b9: $ef
    cp $73                                        ; $45ba: $fe $73
    cp a                                          ; $45bc: $bf
    ld [hl], h                                    ; $45bd: $74
    nop                                           ; $45be: $00
    scf                                           ; $45bf: $37
    ld b, a                                       ; $45c0: $47
    sbc [hl]                                      ; $45c1: $9e
    push af                                       ; $45c2: $f5
    add h                                         ; $45c3: $84
    inc l                                         ; $45c4: $2c
    sbc [hl]                                      ; $45c5: $9e
    call nc, $9ae4                                ; $45c6: $d4 $e4 $9a
    rst $20                                       ; $45c9: $e7
    ccf                                           ; $45ca: $3f
    call $ff77                                    ; $45cb: $cd $77 $ff
    cp c                                          ; $45ce: $b9
    rst $10                                       ; $45cf: $d7
    or e                                          ; $45d0: $b3
    ld [hl+], a                                   ; $45d1: $22
    xor [hl]                                      ; $45d2: $ae
    cp b                                          ; $45d3: $b8
    ld l, $ce                                     ; $45d4: $2e $ce
    and l                                         ; $45d6: $a5
    inc bc                                        ; $45d7: $03
    rst $28                                       ; $45d8: $ef
    adc h                                         ; $45d9: $8c
    ld e, l                                       ; $45da: $5d
    ld b, h                                       ; $45db: $44
    rra                                           ; $45dc: $1f
    ld a, a                                       ; $45dd: $7f
    di                                            ; $45de: $f3
    jp hl                                         ; $45df: $e9


    ld e, $6f                                     ; $45e0: $1e $6f
    ld d, e                                       ; $45e2: $53
    ld b, h                                       ; $45e3: $44
    ld b, l                                       ; $45e4: $45
    rra                                           ; $45e5: $1f
    ld a, a                                       ; $45e6: $7f
    di                                            ; $45e7: $f3
    jp hl                                         ; $45e8: $e9


    ld e, $ef                                     ; $45e9: $1e $ef
    adc h                                         ; $45eb: $8c
    push af                                       ; $45ec: $f5
    ld e, d                                       ; $45ed: $5a
    ldh a, [rBCPD]                                ; $45ee: $f0 $69
    ld c, c                                       ; $45f0: $49
    db $f4                                        ; $45f1: $f4
    pop af                                        ; $45f2: $f1
    scf                                           ; $45f3: $37
    sbc a                                         ; $45f4: $9f
    xor $01                                       ; $45f5: $ee $01
    ld l, a                                       ; $45f7: $6f
    ld d, e                                       ; $45f8: $53
    call nc, $c16b                                ; $45f9: $d4 $6b $c1
    and a                                         ; $45fc: $a7
    dec h                                         ; $45fd: $25
    pop de                                        ; $45fe: $d1
    rst $00                                       ; $45ff: $c7
    rst $18                                       ; $4600: $df
    ld a, h                                       ; $4601: $7c
    cp d                                          ; $4602: $ba
    rlca                                          ; $4603: $07
    sub a                                         ; $4604: $97
    ld c, a                                       ; $4605: $4f
    ld l, e                                       ; $4606: $6b
    ld e, a                                       ; $4607: $5f
    ld e, $9e                                     ; $4608: $1e $9e
    ld a, l                                       ; $460a: $7d
    db $fc                                        ; $460b: $fc
    call Call_070_7ba7                            ; $460c: $cd $a7 $7b
    nop                                           ; $460f: $00

Jump_070_4610:
    rst $20                                       ; $4610: $e7
    sbc c                                         ; $4611: $99
    halt                                          ; $4612: $76
    ld e, d                                       ; $4613: $5a
    add sp, -$1d                                  ; $4614: $e8 $e3
    ld l, a                                       ; $4616: $6f
    ld a, $dd                                     ; $4617: $3e $dd
    inc bc                                        ; $4619: $03
    xor a                                         ; $461a: $af
    scf                                           ; $461b: $37
    cp c                                          ; $461c: $b9
    ld a, [$ac91]                                 ; $461d: $fa $91 $ac
    rst $20                                       ; $4620: $e7
    cp [hl]                                       ; $4621: $be
    db $e4                                        ; $4622: $e4
    ld a, [de]                                    ; $4623: $1a
    dec e                                         ; $4624: $1d
    ld b, c                                       ; $4625: $41
    ld e, c                                       ; $4626: $59
    xor h                                         ; $4627: $ac
    db $ec                                        ; $4628: $ec
    pop de                                        ; $4629: $d1
    ld c, b                                       ; $462a: $48
    rst $10                                       ; $462b: $d7
    db $e4                                        ; $462c: $e4
    ld d, b                                       ; $462d: $50
    add hl, bc                                    ; $462e: $09
    adc e                                         ; $462f: $8b
    xor b                                         ; $4630: $a8
    ld h, a                                       ; $4631: $67
    adc [hl]                                      ; $4632: $8e
    ld [hl], $97                                  ; $4633: $36 $97
    ld c, $97                                     ; $4635: $0e $97
    inc bc                                        ; $4637: $03
    ld l, c                                       ; $4638: $69
    sub l                                         ; $4639: $95
    ld a, [de]                                    ; $463a: $1a
    add e                                         ; $463b: $83
    xor e                                         ; $463c: $ab
    ld c, h                                       ; $463d: $4c
    db $fd                                        ; $463e: $fd
    sub b                                         ; $463f: $90
    ld c, [hl]                                    ; $4640: $4e
    ld l, b                                       ; $4641: $68
    or e                                          ; $4642: $b3
    dec bc                                        ; $4643: $0b
    ld a, [$ff11]                                 ; $4644: $fa $11 $ff
    ld l, e                                       ; $4647: $6b
    rst $18                                       ; $4648: $df
    cp c                                          ; $4649: $b9
    dec e                                         ; $464a: $1d
    rst $10                                       ; $464b: $d7
    rst $00                                       ; $464c: $c7
    or e                                          ; $464d: $b3
    and d                                         ; $464e: $a2
    dec h                                         ; $464f: $25
    ld h, c                                       ; $4650: $61
    sub l                                         ; $4651: $95
    db $e3                                        ; $4652: $e3
    jp z, $829d                                   ; $4653: $ca $9d $82

Jump_070_4656:
    ld e, [hl]                                    ; $4656: $5e
    add l                                         ; $4657: $85
    reti                                          ; $4658: $d9


    ld c, a                                       ; $4659: $4f
    db $dd                                        ; $465a: $dd
    or [hl]                                       ; $465b: $b6
    xor l                                         ; $465c: $ad
    rst $38                                       ; $465d: $ff
    sub c                                         ; $465e: $91
    ld h, a                                       ; $465f: $67
    dec c                                         ; $4660: $0d

jr_070_4661:
    and c                                         ; $4661: $a1
    ld a, [hl-]                                   ; $4662: $3a
    xor c                                         ; $4663: $a9
    pop hl                                        ; $4664: $e1
    ld e, b                                       ; $4665: $58
    dec e                                         ; $4666: $1d
    sub d                                         ; $4667: $92
    ld d, [hl]                                    ; $4668: $56
    jr c, jr_070_467d                             ; $4669: $38 $12

    ld a, [hl]                                    ; $466b: $7e
    or h                                          ; $466c: $b4
    ld hl, $0d0c                                  ; $466d: $21 $0c $0d
    ld a, c                                       ; $4670: $79
    ld a, [bc]                                    ; $4671: $0a
    ld a, [hl]                                    ; $4672: $7e
    ld h, d                                       ; $4673: $62
    sbc a                                         ; $4674: $9f
    ld a, d                                       ; $4675: $7a
    or $3f                                        ; $4676: $f6 $3f
    ld a, e                                       ; $4678: $7b
    call nz, Call_000_0076                        ; $4679: $c4 $76 $00
    scf                                           ; $467c: $37

jr_070_467d:
    ret c                                         ; $467d: $d8

    rst $38                                       ; $467e: $ff
    ret z                                         ; $467f: $c8

    or e                                          ; $4680: $b3
    and $df                                       ; $4681: $e6 $df
    add hl, hl                                    ; $4683: $29
    dec [hl]                                      ; $4684: $35
    ld b, $57                                     ; $4685: $06 $57
    adc [hl]                                      ; $4687: $8e
    dec bc                                        ; $4688: $0b
    dec c                                         ; $4689: $0d
    reti                                          ; $468a: $d9


    ld c, a                                       ; $468b: $4f
    dec h                                         ; $468c: $25

Call_070_468d:
    inc l                                         ; $468d: $2c
    ld b, d                                       ; $468e: $42
    db $eb                                        ; $468f: $eb
    ld e, c                                       ; $4690: $59
    and c                                         ; $4691: $a1
    and l                                         ; $4692: $a5
    ld e, e                                       ; $4693: $5b
    and e                                         ; $4694: $a3
    add d                                         ; $4695: $82
    and $7b                                       ; $4696: $e6 $7b
    or h                                          ; $4698: $b4
    ld sp, hl                                     ; $4699: $f9
    ld [hl], a                                    ; $469a: $77
    ld a, [de]                                    ; $469b: $1a
    jp hl                                         ; $469c: $e9


    ld b, [hl]                                    ; $469d: $46

Call_070_469e:
    sbc e                                         ; $469e: $9b
    pop hl                                        ; $469f: $e1
    pop de                                        ; $46a0: $d1
    db $10                                        ; $46a1: $10
    add [hl]                                      ; $46a2: $86
    jp z, Jump_070_7fc9                           ; $46a3: $ca $c9 $7f

    sbc d                                         ; $46a6: $9a
    jp nz, $03b6                                  ; $46a7: $c2 $b6 $03

    rst $10                                       ; $46aa: $d7
    ld h, c                                       ; $46ab: $61
    sub h                                         ; $46ac: $94
    ld l, h                                       ; $46ad: $6c
    jr nz, jr_070_4661                            ; $46ae: $20 $b1

    rst $38                                       ; $46b0: $ff
    sub c                                         ; $46b1: $91
    ld h, a                                       ; $46b2: $67
    dec c                                         ; $46b3: $0d
    and c                                         ; $46b4: $a1
    ld a, [hl-]                                   ; $46b5: $3a
    xor c                                         ; $46b6: $a9
    pop hl                                        ; $46b7: $e1
    ld e, b                                       ; $46b8: $58
    dec e                                         ; $46b9: $1d
    sub d                                         ; $46ba: $92
    ld d, [hl]                                    ; $46bb: $56
    jr c, @+$14                                   ; $46bc: $38 $12

    ld a, [hl]                                    ; $46be: $7e

jr_070_46bf:
    ld d, h                                       ; $46bf: $54
    ret nc                                        ; $46c0: $d0

    xor e                                         ; $46c1: $ab
    jr nc, jr_070_46bf                            ; $46c2: $30 $fb

    ld l, c                                       ; $46c4: $69
    db $eb                                        ; $46c5: $eb
    daa                                           ; $46c6: $27
    adc c                                         ; $46c7: $89
    sub $40                                       ; $46c8: $d6 $40
    ld h, d                                       ; $46ca: $62
    sbc c                                         ; $46cb: $99
    ld a, [hl-]                                   ; $46cc: $3a
    sub l                                         ; $46cd: $95
    ret                                           ; $46ce: $c9


    ld hl, sp-$3a                                 ; $46cf: $f8 $c6
    ld bc, $4f97                                  ; $46d1: $01 $97 $4f
    ld h, e                                       ; $46d4: $63
    add sp, $3f                                   ; $46d5: $e8 $3f
    cp b                                          ; $46d7: $b8
    ld hl, $9d0c                                  ; $46d8: $21 $0c $9d
    ld a, [hl+]                                   ; $46db: $2a
    ld d, e                                       ; $46dc: $53
    add l                                         ; $46dd: $85
    jr nc, jr_070_4719                            ; $46de: $30 $39

    add d                                         ; $46e0: $82
    ld e, [hl]                                    ; $46e1: $5e
    add l                                         ; $46e2: $85
    reti                                          ; $46e3: $d9


    ld c, a                                       ; $46e4: $4f
    db $db                                        ; $46e5: $db
    ld bc, $deb7                                  ; $46e6: $01 $b7 $de
    ld a, h                                       ; $46e9: $7c
    cp d                                          ; $46ea: $ba
    adc a                                         ; $46eb: $8f
    cp [hl]                                       ; $46ec: $be
    ld sp, hl                                     ; $46ed: $f9
    ld c, h                                       ; $46ee: $4c
    ld l, a                                       ; $46ef: $6f
    ret z                                         ; $46f0: $c8

    add $89                                       ; $46f1: $c6 $89
    ret c                                         ; $46f3: $d8

    rra                                           ; $46f4: $1f
    dec sp                                        ; $46f5: $3b
    nop                                           ; $46f6: $00
    sub a                                         ; $46f7: $97
    db $d3                                        ; $46f8: $d3
    adc [hl]                                      ; $46f9: $8e
    ld a, d                                       ; $46fa: $7a
    or $33                                        ; $46fb: $f6 $33
    ld b, e                                       ; $46fd: $43
    ld d, [hl]                                    ; $46fe: $56
    pop de                                        ; $46ff: $d1
    ld a, [hl-]                                   ; $4700: $3a
    dec h                                         ; $4701: $25
    jp $dfc5                                      ; $4702: $c3 $c5 $df


    add hl, sp                                    ; $4705: $39
    nop                                           ; $4706: $00
    sub a                                         ; $4707: $97
    db $d3                                        ; $4708: $d3
    adc [hl]                                      ; $4709: $8e
    ld a, d                                       ; $470a: $7a

jr_070_470b:
    or $2a                                        ; $470b: $f6 $2a
    ld c, l                                       ; $470d: $4d
    jr c, jr_070_470b                             ; $470e: $38 $fb

    sbc h                                         ; $4710: $9c
    ld d, $0e                                     ; $4711: $16 $0e
    sub a                                         ; $4713: $97
    db $d3                                        ; $4714: $d3

Call_070_4715:
    adc [hl]                                      ; $4715: $8e
    ld a, d                                       ; $4716: $7a
    or $ed                                        ; $4717: $f6 $ed

jr_070_4719:
    db $ed                                        ; $4719: $ed
    jp z, Jump_070_7976                           ; $471a: $ca $76 $79

    ei                                            ; $471d: $fb
    ld l, h                                       ; $471e: $6c
    dec sp                                        ; $471f: $3b
    nop                                           ; $4720: $00
    sub a                                         ; $4721: $97
    db $d3                                        ; $4722: $d3
    adc [hl]                                      ; $4723: $8e
    ld a, d                                       ; $4724: $7a
    or $e6                                        ; $4725: $f6 $e6
    ld a, l                                       ; $4727: $7d
    ld d, e                                       ; $4728: $53
    add hl, sp                                    ; $4729: $39
    xor [hl]                                      ; $472a: $ae
    scf                                           ; $472b: $37
    and c                                         ; $472c: $a1
    ld a, [hl-]                                   ; $472d: $3a
    ret                                           ; $472e: $c9


    and b                                         ; $472f: $a0
    rlca                                          ; $4730: $07

Jump_070_4731:
    sub a                                         ; $4731: $97
    db $d3                                        ; $4732: $d3
    adc [hl]                                      ; $4733: $8e
    ld a, d                                       ; $4734: $7a
    or $1d                                        ; $4735: $f6 $1d
    xor [hl]                                      ; $4737: $ae
    cp b                                          ; $4738: $b8
    ld l, $8e                                     ; $4739: $2e $8e
    ld e, $97                                     ; $473b: $1e $97
    db $d3                                        ; $473d: $d3
    adc [hl]                                      ; $473e: $8e
    ld a, d                                       ; $473f: $7a
    or $ea                                        ; $4740: $f6 $ea
    jp nc, $8f78                                  ; $4742: $d2 $78 $8f

    dec l                                         ; $4745: $2d
    call nc, $d7a3                                ; $4746: $d4 $a3 $d7
    add d                                         ; $4749: $82
    ld c, a                                       ; $474a: $4f
    ld c, e                                       ; $474b: $4b
    ld [c], a                                     ; $474c: $e2
    nop                                           ; $474d: $00
    rst $10                                       ; $474e: $d7
    cp b                                          ; $474f: $b8
    adc e                                         ; $4750: $8b
    rst $00                                       ; $4751: $c7
    sbc d                                         ; $4752: $9a
    ld a, a                                       ; $4753: $7f
    and a                                         ; $4754: $a7
    rr d                                          ; $4755: $cb $1a
    adc [hl]                                      ; $4757: $8e
    dec d                                         ; $4758: $15
    add c                                         ; $4759: $81
    call nz, $959d                                ; $475a: $c4 $9d $95
    ld [hl], b                                    ; $475d: $70
    dec hl                                        ; $475e: $2b
    adc e                                         ; $475f: $8b
    ld h, a                                       ; $4760: $67
    db $eb                                        ; $4761: $eb
    adc l                                         ; $4762: $8d
    adc h                                         ; $4763: $8c
    sub b                                         ; $4764: $90
    push bc                                       ; $4765: $c5
    jp z, Jump_000_0d1e                           ; $4766: $ca $1e $0d

    rst $00                                       ; $4769: $c7
    or e                                          ; $476a: $b3
    call nc, Call_000_2b08                        ; $476b: $d4 $08 $2b
    ld d, l                                       ; $476e: $55
    ld c, [hl]                                    ; $476f: $4e
    or $cb                                        ; $4770: $f6 $cb
    ld c, a                                       ; $4772: $4f
    jp $eeb1                                      ; $4773: $c3 $b1 $ee


    pop bc                                        ; $4776: $c1
    db $db                                        ; $4777: $db
    ld bc, $acef                                  ; $4778: $01 $ef $ac
    ld b, b                                       ; $477b: $40
    ld h, d                                       ; $477c: $62
    ld de, $ab48                                  ; $477d: $11 $48 $ab
    ld [hl], h                                    ; $4780: $74
    ld b, d                                       ; $4781: $42
    xor h                                         ; $4782: $ac
    ld e, e                                       ; $4783: $5b
    inc hl                                        ; $4784: $23
    add sp, $55                                   ; $4785: $e8 $55
    sbc b                                         ; $4787: $98
    db $fd                                        ; $4788: $fd
    or h                                          ; $4789: $b4
    push af                                       ; $478a: $f5
    ld [hl], d                                    ; $478b: $72
    xor a                                         ; $478c: $af
    ret nc                                        ; $478d: $d0

    sub [hl]                                      ; $478e: $96
    cp e                                          ; $478f: $bb
    cpl                                           ; $4790: $2f
    cpl                                           ; $4791: $2f
    call nc, Call_000_37b3                        ; $4792: $d4 $b3 $37
    cp b                                          ; $4795: $b8
    di                                            ; $4796: $f3
    ld [c], a                                     ; $4797: $e2
    rst $28                                       ; $4798: $ef
    sub h                                         ; $4799: $94
    ld a, [de]                                    ; $479a: $1a
    add e                                         ; $479b: $83
    dec de                                        ; $479c: $1b
    jp nz, $3950                                  ; $479d: $c2 $50 $39

    adc [hl]                                      ; $47a0: $8e
    rla                                           ; $47a1: $17
    ld h, c                                       ; $47a2: $61
    db $db                                        ; $47a3: $db
    ld bc, $dd1f                                  ; $47a4: $01 $1f $dd
    and e                                         ; $47a7: $a3
    call $53bf                                    ; $47a8: $cd $bf $53
    rst $08                                       ; $47ab: $cf
    ccf                                           ; $47ac: $3f
    db $ed                                        ; $47ad: $ed
    ld l, [hl]                                    ; $47ae: $6e
    cp b                                          ; $47af: $b8
    pop de                                        ; $47b0: $d1
    ld a, d                                       ; $47b1: $7a
    xor d                                         ; $47b2: $aa
    and h                                         ; $47b3: $a4
    dec d                                         ; $47b4: $15
    pop af                                        ; $47b5: $f1
    ld b, d                                       ; $47b6: $42
    rst $30                                       ; $47b7: $f7
    ld h, b                                       ; $47b8: $60
    ld b, c                                       ; $47b9: $41
    xor a                                         ; $47ba: $af
    jp nz, $a7ec                                  ; $47bb: $c2 $ec $a7

    xor l                                         ; $47be: $ad
    rra                                           ; $47bf: $1f
    db $dd                                        ; $47c0: $dd
    and e                                         ; $47c1: $a3
    adc l                                         ; $47c2: $8d
    ld [hl], h                                    ; $47c3: $74
    and e                                         ; $47c4: $a3
    dec c                                         ; $47c5: $0d
    inc h                                         ; $47c6: $24
    or $3f                                        ; $47c7: $f6 $3f
    ld a, e                                       ; $47c9: $7b
    add h                                         ; $47ca: $84
    dec [hl]                                      ; $47cb: $35
    add h                                         ; $47cc: $84
    and c                                         ; $47cd: $a1
    ld d, e                                       ; $47ce: $53
    ccf                                           ; $47cf: $3f
    and $56                                       ; $47d0: $e6 $56
    cp h                                          ; $47d2: $bc
    rst $00                                       ; $47d3: $c7
    sub $6c                                       ; $47d4: $d6 $6c
    rlca                                          ; $47d6: $07
    sub a                                         ; $47d7: $97
    and l                                         ; $47d8: $a5
    ld a, b                                       ; $47d9: $78
    ld a, [de]                                    ; $47da: $1a
    ld c, b                                       ; $47db: $48
    db $ec                                        ; $47dc: $ec
    and h                                         ; $47dd: $a4
    rst $38                                       ; $47de: $ff
    ld a, [hl+]                                   ; $47df: $2a
    or $53                                        ; $47e0: $f6 $53
    ld [hl], d                                    ; $47e2: $72
    xor b                                         ; $47e3: $a8
    sbc h                                         ; $47e4: $9c
    and l                                         ; $47e5: $a5
    add sp, $1e                                   ; $47e6: $e8 $1e
    ld e, h                                       ; $47e8: $5c
    ld a, [hl-]                                   ; $47e9: $3a
    ld hl, $add6                                  ; $47ea: $21 $d6 $ad
    reti                                          ; $47ed: $d9


    ld a, d                                       ; $47ee: $7a
    adc l                                         ; $47ef: $8d
    cp e                                          ; $47f0: $bb
    ld a, b                                       ; $47f1: $78
    xor h                                         ; $47f2: $ac
    ld sp, hl                                     ; $47f3: $f9
    ld [hl], a                                    ; $47f4: $77
    ld [$92a9], a                                 ; $47f5: $ea $a9 $92
    ld d, [hl]                                    ; $47f8: $56
    rst $08                                       ; $47f9: $cf
    and $f9                                       ; $47fa: $e6 $f9
    rst $08                                       ; $47fc: $cf
    halt                                          ; $47fd: $76

Call_070_47fe:
Jump_070_47fe:
    nop                                           ; $47fe: $00
    rst $28                                       ; $47ff: $ef
    adc h                                         ; $4800: $8c
    ld l, b                                       ; $4801: $68
    ld c, d                                       ; $4802: $4a
    adc l                                         ; $4803: $8d
    pop bc                                        ; $4804: $c1
    call $c8d4                                    ; $4805: $cd $d4 $c8
    ld [hl+], a                                   ; $4808: $22
    ld a, e                                       ; $4809: $7b
    ret c                                         ; $480a: $d8

    sub $6b                                       ; $480b: $d6 $6b
    call c, Call_070_63c5                         ; $480d: $dc $c5 $63
    sub l                                         ; $4810: $95
    ld h, d                                       ; $4811: $62
    sbc [hl]                                      ; $4812: $9e
    ld h, b                                       ; $4813: $60
    ld l, [hl]                                    ; $4814: $6e
    or h                                          ; $4815: $b4
    adc b                                         ; $4816: $88
    rla                                           ; $4817: $17
    jp z, $9d9d                                   ; $4818: $ca $9d $9d

Call_070_481b:
    ld a, [hl-]                                   ; $481b: $3a
    inc l                                         ; $481c: $2c
    xor l                                         ; $481d: $ad

Jump_070_481e:
    dec b                                         ; $481e: $05
    add a                                         ; $481f: $87
    bit 1, a                                      ; $4820: $cb $4f
    jp $bd51                                      ; $4822: $c3 $51 $bd


    ei                                            ; $4825: $fb
    rst $08                                       ; $4826: $cf
    ld a, l                                       ; $4827: $7d
    dec sp                                        ; $4828: $3b
    nop                                           ; $4829: $00
    sbc a                                         ; $482a: $9f
    xor c                                         ; $482b: $a9
    inc d                                         ; $482c: $14
    inc [hl]                                      ; $482d: $34
    xor d                                         ; $482e: $aa
    inc d                                         ; $482f: $14
    db $f4                                        ; $4830: $f4
    add [hl]                                      ; $4831: $86
    ld l, l                                       ; $4832: $6d
    cp l                                          ; $4833: $bd
    ld a, $31                                     ; $4834: $3e $31
    jp nc, Jump_070_4504                          ; $4836: $d2 $04 $45

    or $c8                                        ; $4839: $f6 $c8
    ld a, [hl]                                    ; $483b: $7e
    ld a, [de]                                    ; $483c: $1a
    ld [hl], d                                    ; $483d: $72
    rra                                           ; $483e: $1f
    xor l                                         ; $483f: $ad
    inc e                                         ; $4840: $1c
    inc sp                                        ; $4841: $33
    ld a, [$6a31]                                 ; $4842: $fa $31 $6a
    ld d, c                                       ; $4845: $51
    ld l, d                                       ; $4846: $6a
    ld b, h                                       ; $4847: $44
    push bc                                       ; $4848: $c5
    ld h, e                                       ; $4849: $63
    ret c                                         ; $484a: $d8

    ld a, d                                       ; $484b: $7a
    adc l                                         ; $484c: $8d
    cp e                                          ; $484d: $bb
    ld a, b                                       ; $484e: $78
    xor h                                         ; $484f: $ac
    rst $38                                       ; $4850: $ff
    reti                                          ; $4851: $d9


    inc hl                                        ; $4852: $23
    xor h                                         ; $4853: $ac
    ld hl, $550c                                  ; $4854: $21 $0c $55
    and [hl]                                      ; $4857: $a6
    ld a, [$b731]                                 ; $4858: $fa $31 $b7
    ld [c], a                                     ; $485b: $e2
    dec a                                         ; $485c: $3d
    or [hl]                                       ; $485d: $b6
    ld b, [hl]                                    ; $485e: $46
    ret nc                                        ; $485f: $d0

    db $fc                                        ; $4860: $fc
    dec sp                                        ; $4861: $3b
    db $fd                                        ; $4862: $fd
    ld c, a                                       ; $4863: $4f
    ld a, [hl+]                                   ; $4864: $2a
    cp $4b                                        ; $4865: $fe $4b
    ld h, c                                       ; $4867: $61
    call $87f3                                    ; $4868: $cd $f3 $87
    ld h, e                                       ; $486b: $63
    adc [hl]                                      ; $486c: $8e
    call c, $e70e                                 ; $486d: $dc $0e $e7
    xor c                                         ; $4870: $a9
    ld hl, sp+$2f                                 ; $4871: $f8 $2f
    push hl                                       ; $4873: $e5
    jp c, Jump_070_74fa                           ; $4874: $da $fa $74

    jp Jump_070_71c9                              ; $4877: $c3 $c9 $71


    adc d                                         ; $487a: $8a
    ld a, [hl-]                                   ; $487b: $3a
    and $d1                                       ; $487c: $e6 $d1
    add [hl]                                      ; $487e: $86
    jr nc, jr_070_4895                            ; $487f: $30 $14

    ld a, l                                       ; $4881: $7d
    rst $10                                       ; $4882: $d7
    sub [hl]                                      ; $4883: $96
    ld l, b                                       ; $4884: $68
    push hl                                       ; $4885: $e5
    ld a, e                                       ; $4886: $7b
    ld l, h                                       ; $4887: $6c
    ld h, c                                       ; $4888: $61
    db $eb                                        ; $4889: $eb
    push hl                                       ; $488a: $e5
    db $d3                                        ; $488b: $d3
    jr jr_070_4892                                ; $488c: $18 $04

    db $fd                                        ; $488e: $fd
    rst $08                                       ; $488f: $cf
    ld e, $d9                                     ; $4890: $1e $d9

jr_070_4892:
    db $10                                        ; $4892: $10
    add [hl]                                      ; $4893: $86
    and d                                         ; $4894: $a2

jr_070_4895:
    ld [de], a                                    ; $4895: $12
    ld c, $db                                     ; $4896: $0e $db
    ld bc, $6157                                  ; $4898: $01 $57 $61
    or $93                                        ; $489b: $f6 $93
    and b                                         ; $489d: $a0
    rst $18                                       ; $489e: $df
    rlca                                          ; $489f: $07
    scf                                           ; $48a0: $37
    add h                                         ; $48a1: $84
    and c                                         ; $48a2: $a1
    xor b                                         ; $48a3: $a8
    add h                                         ; $48a4: $84
    jp Jump_070_7ea5                              ; $48a5: $c3 $a5 $7e


    db $f4                                        ; $48a8: $f4
    dec sp                                        ; $48a9: $3b
    cp l                                          ; $48aa: $bd
    ld d, b                                       ; $48ab: $50
    push hl                                       ; $48ac: $e5
    add hl, hl                                    ; $48ad: $29
    reti                                          ; $48ae: $d9


    inc d                                         ; $48af: $14
    add c                                         ; $48b0: $81
    or h                                          ; $48b1: $b4
    ld a, [hl+]                                   ; $48b2: $2a
    ld a, [de]                                    ; $48b3: $1a
    ld b, e                                       ; $48b4: $43
    ld d, c                                       ; $48b5: $51
    xor d                                         ; $48b6: $aa
    and d                                         ; $48b7: $a2
    ld [c], a                                     ; $48b8: $e2
    ld sp, $db74                                  ; $48b9: $31 $74 $db
    or [hl]                                       ; $48bc: $b6
    ld a, [c]                                     ; $48bd: $f2
    sub $d2                                       ; $48be: $d6 $d2
    ld c, b                                       ; $48c0: $48
    rst $10                                       ; $48c1: $d7
    ret nc                                        ; $48c2: $d0

    ld b, [hl]                                    ; $48c3: $46
    ld b, h                                       ; $48c4: $44
    push de                                       ; $48c5: $d5
    ld sp, $916a                                  ; $48c6: $31 $6a $91
    dec a                                         ; $48c9: $3d
    or d                                          ; $48ca: $b2
    sbc a                                         ; $48cb: $9f
    add [hl]                                      ; $48cc: $86
    ld h, e                                       ; $48cd: $63
    push bc                                       ; $48ce: $c5
    db $dd                                        ; $48cf: $dd
    sub a                                         ; $48d0: $97
    ld c, $e7                                     ; $48d1: $0e $e7

Call_070_48d3:
    xor c                                         ; $48d3: $a9
    rst $18                                       ; $48d4: $df
    rlca                                          ; $48d5: $07
    scf                                           ; $48d6: $37
    or d                                          ; $48d7: $b2
    ld hl, sp+$2f                                 ; $48d8: $f8 $2f
    push hl                                       ; $48da: $e5
    ld l, d                                       ; $48db: $6a
    ld [hl], d                                    ; $48dc: $72
    add sp, -$61                                  ; $48dd: $e8 $9f
    or a                                          ; $48df: $b7
    cpl                                           ; $48e0: $2f
    push af                                       ; $48e1: $f5
    and $ec                                       ; $48e2: $e6 $ec
    sub c                                         ; $48e4: $91
    dec c                                         ; $48e5: $0d
    ld h, c                                       ; $48e6: $61
    jr z, @-$04                                   ; $48e7: $28 $fa

    xor [hl]                                      ; $48e9: $ae
    dec l                                         ; $48ea: $2d
    pop de                                        ; $48eb: $d1
    jp z, $d8f7                                   ; $48ec: $ca $f7 $d8

    ld b, d                                       ; $48ef: $42
    ld d, c                                       ; $48f0: $51
    rst $00                                       ; $48f1: $c7
    inc a                                         ; $48f2: $3c
    jp c, Jump_070_6240                           ; $48f3: $da $40 $62

    inc bc                                        ; $48f6: $03
    adc c                                         ; $48f7: $89
    set 2, b                                      ; $48f8: $cb $d0
    sub b                                         ; $48fa: $90
    and $69                                       ; $48fb: $e6 $69
    dec c                                         ; $48fd: $0d
    daa                                           ; $48fe: $27
    rst $00                                       ; $48ff: $c7
    pop de                                        ; $4900: $d1
    ld c, e                                       ; $4901: $4b
    rlca                                          ; $4902: $07
    rra                                           ; $4903: $1f
    dec de                                        ; $4904: $1b
    inc b                                         ; $4905: $04
    dec e                                         ; $4906: $1d
    add e                                         ; $4907: $83
    and b                                         ; $4908: $a0
    ld c, h                                       ; $4909: $4c
    call $d3bf                                    ; $490a: $cd $bf $d3
    push hl                                       ; $490d: $e5
    ld [hl], b                                    ; $490e: $70
    ld e, d                                       ; $490f: $5a
    add hl, de                                    ; $4910: $19
    ld a, a                                       ; $4911: $7f
    inc [hl]                                      ; $4912: $34
    sub b                                         ; $4913: $90
    ret c                                         ; $4914: $d8

    rst $38                                       ; $4915: $ff
    ret z                                         ; $4916: $c8

    or e                                          ; $4917: $b3
    jp nc, $e4d0                                  ; $4918: $d2 $d0 $e4

    ld d, b                                       ; $491b: $50
    ld l, c                                       ; $491c: $69
    dec bc                                        ; $491d: $0b
    ld sp, $9a19                                  ; $491e: $31 $19 $9a
    daa                                           ; $4921: $27
    ld h, $cb                                     ; $4922: $26 $cb
    db $10                                        ; $4924: $10
    db $f4                                        ; $4925: $f4
    ld a, [hl+]                                   ; $4926: $2a
    call z, $da7e                                 ; $4927: $cc $7e $da
    ld a, d                                       ; $492a: $7a
    sbc [hl]                                      ; $492b: $9e
    sbc d                                         ; $492c: $9a
    ld a, a                                       ; $492d: $7f
    and a                                         ; $492e: $a7
    rst $38                                       ; $492f: $ff
    ld c, c                                       ; $4930: $49
    dec c                                         ; $4931: $0d
    ld d, e                                       ; $4932: $53
    cp [hl]                                       ; $4933: $be
    ei                                            ; $4934: $fb
    adc c                                         ; $4935: $89
    ld a, l                                       ; $4936: $7d
    ld [$11a9], a                                 ; $4937: $ea $a9 $11
    db $fd                                        ; $493a: $fd
    di                                            ; $493b: $f3
    or [hl]                                       ; $493c: $b6
    and b                                         ; $493d: $a0
    ld c, $da                                     ; $493e: $0e $da
    dec bc                                        ; $4940: $0b
    ld [hl], l                                    ; $4941: $75
    call c, Call_070_63c5                         ; $4942: $dc $c5 $63
    db $fd                                        ; $4945: $fd
    rst $08                                       ; $4946: $cf
    ld e, $61                                     ; $4947: $1e $61
    dec c                                         ; $4949: $0d
    ld h, c                                       ; $494a: $61
    jr z, @+$2c                                   ; $494b: $28 $2a

    pop hl                                        ; $494d: $e1
    or b                                          ; $494e: $b0
    dec e                                         ; $494f: $1d
    sub a                                         ; $4950: $97
    ld d, a                                       ; $4951: $57
    or $28                                        ; $4952: $f6 $28
    or d                                          ; $4954: $b2
    ld b, a                                       ; $4955: $47
    or $d3                                        ; $4956: $f6 $d3
    sub b                                         ; $4958: $90
    ei                                            ; $4959: $fb
    ld l, b                                       ; $495a: $68
    push hl                                       ; $495b: $e5
    sbc b                                         ; $495c: $98
    pop de                                        ; $495d: $d1
    adc a                                         ; $495e: $8f
    ld d, c                                       ; $495f: $51
    dec de                                        ; $4960: $1b
    ld [hl], d                                    ; $4961: $72
    sbc a                                         ; $4962: $9f
    ld b, $12                                     ; $4963: $06 $12
    ei                                            ; $4965: $fb
    rst $20                                       ; $4966: $e7
    rst $30                                       ; $4967: $f7
    or e                                          ; $4968: $b3
    push af                                       ; $4969: $f5
    or d                                          ; $496a: $b2
    inc d                                         ; $496b: $14
    ld c, a                                       ; $496c: $4f
    inc bc                                        ; $496d: $03
    adc c                                         ; $496e: $89
    adc l                                         ; $496f: $8d
    inc [hl]                                      ; $4970: $34
    xor [hl]                                      ; $4971: $ae
    ld b, $12                                     ; $4972: $06 $12
    ld l, e                                       ; $4974: $6b
    adc h                                         ; $4975: $8c
    bit 4, b                                      ; $4976: $cb $60
    ld c, l                                       ; $4978: $4d
    xor [hl]                                      ; $4979: $ae
    pop hl                                        ; $497a: $e1
    db $e4                                        ; $497b: $e4
    jr c, @-$09                                   ; $497c: $38 $f5

Jump_070_497e:
    add sp, -$45                                  ; $497e: $e8 $bb
    or [hl]                                       ; $4980: $b6
    ld b, h                                       ; $4981: $44
    dec hl                                        ; $4982: $2b
    rst $18                                       ; $4983: $df
    ld h, e                                       ; $4984: $63
    dec bc                                        ; $4985: $0b
    dec c                                         ; $4986: $0d
    rst $00                                       ; $4987: $c7
    cp d                                          ; $4988: $ba
    inc [hl]                                      ; $4989: $34
    adc $d6                                       ; $498a: $ce $d6
    res 4, a                                      ; $498c: $cb $a7
    ld sp, $fa08                                  ; $498e: $31 $08 $fa
    sbc a                                         ; $4991: $9f
    dec a                                         ; $4992: $3d
    or d                                          ; $4993: $b2
    ld hl, $d50c                                  ; $4994: $21 $0c $d5
    add h                                         ; $4997: $84
    ld c, d                                       ; $4998: $4a
    jr c, jr_070_4a07                             ; $4999: $38 $6c

    rlca                                          ; $499b: $07
    rst $20                                       ; $499c: $e7
    xor c                                         ; $499d: $a9
    pop hl                                        ; $499e: $e1
    xor b                                         ; $499f: $a8
    ld c, [hl]                                    ; $49a0: $4e
    ld [hl], a                                    ; $49a1: $77
    ld e, d                                       ; $49a2: $5a
    rst $38                                       ; $49a3: $ff
    inc hl                                        ; $49a4: $23
    rst $08                                       ; $49a5: $cf
    ld a, [hl+]                                   ; $49a6: $2a
    rst $00                                       ; $49a7: $c7
    ld c, l                                       ; $49a8: $4d
    sub e                                         ; $49a9: $93
    db $eb                                        ; $49aa: $eb
    cp [hl]                                       ; $49ab: $be
    cp $36                                        ; $49ac: $fe $36
    add d                                         ; $49ae: $82
    ld e, [hl]                                    ; $49af: $5e
    add l                                         ; $49b0: $85
    reti                                          ; $49b1: $d9


    ld c, a                                       ; $49b2: $4f
    cp l                                          ; $49b3: $bd
    ld a, $31                                     ; $49b4: $3e $31
    jp nc, $f52e                                  ; $49b6: $d2 $2e $f5

    and $ec                                       ; $49b9: $e6 $ec
    sub c                                         ; $49bb: $91
    dec c                                         ; $49bc: $0d
    ld h, c                                       ; $49bd: $61
    xor b                                         ; $49be: $a8
    ld [hl-], a                                   ; $49bf: $32
    push de                                       ; $49c0: $d5
    adc a                                         ; $49c1: $8f
    cp c                                          ; $49c2: $b9
    dec d                                         ; $49c3: $15
    rst $28                                       ; $49c4: $ef
    or c                                          ; $49c5: $b1
    dec [hl]                                      ; $49c6: $35
    call $c8d4                                    ; $49c7: $cd $d4 $c8
    xor [hl]                                      ; $49ca: $ae
    xor h                                         ; $49cb: $ac
    ld de, $f239                                  ; $49cc: $11 $39 $f2
    jp nc, $ef01                                  ; $49cf: $d2 $01 $ef

    ld l, c                                       ; $49d2: $69
    sbc h                                         ; $49d3: $9c
    xor $62                                       ; $49d4: $ee $62
    ld [hl], $1a                                  ; $49d6: $36 $1a
    inc l                                         ; $49d8: $2c
    cp b                                          ; $49d9: $b8
    call z, $98d2                                 ; $49da: $cc $d2 $98
    dec h                                         ; $49dd: $25
    db $f4                                        ; $49de: $f4
    ld d, d                                       ; $49df: $52
    rst $08                                       ; $49e0: $cf
    dec [hl]                                      ; $49e1: $35
    ld c, [hl]                                    ; $49e2: $4e
    ld l, d                                       ; $49e3: $6a
    ld e, h                                       ; $49e4: $5c
    add [hl]                                      ; $49e5: $86
    db $ec                                        ; $49e6: $ec
    and a                                         ; $49e7: $a7
    ld c, a                                       ; $49e8: $4f
    scf                                           ; $49e9: $37
    sbc h                                         ; $49ea: $9c
    inc e                                         ; $49eb: $1c
    and a                                         ; $49ec: $a7
    ld e, $7d                                     ; $49ed: $1e $7d
    rst $10                                       ; $49ef: $d7
    sub [hl]                                      ; $49f0: $96
    ld l, b                                       ; $49f1: $68
    push hl                                       ; $49f2: $e5
    ld a, e                                       ; $49f3: $7b
    ld l, h                                       ; $49f4: $6c
    ld h, c                                       ; $49f5: $61
    db $eb                                        ; $49f6: $eb
    push hl                                       ; $49f7: $e5
    db $d3                                        ; $49f8: $d3
    jr jr_070_49ff                                ; $49f9: $18 $04

    db $fd                                        ; $49fb: $fd
    rst $08                                       ; $49fc: $cf
    ld e, $d9                                     ; $49fd: $1e $d9

jr_070_49ff:
    db $10                                        ; $49ff: $10
    add [hl]                                      ; $4a00: $86
    and d                                         ; $4a01: $a2
    ld [de], a                                    ; $4a02: $12
    ld c, $97                                     ; $4a03: $0e $97
    ld c, $97                                     ; $4a05: $0e $97

jr_070_4a07:
    ld [hl], e                                    ; $4a07: $73
    and h                                         ; $4a08: $a4
    sub $b3                                       ; $4a09: $d6 $b3
    ld c, h                                       ; $4a0b: $4c
    ld e, l                                       ; $4a0c: $5d
    ld h, $28                                     ; $4a0d: $26 $28
    and h                                         ; $4a0f: $a4
    ld a, b                                       ; $4a10: $78
    ld a, [de]                                    ; $4a11: $1a
    ld c, b                                       ; $4a12: $48
    db $ec                                        ; $4a13: $ec
    ld a, a                                       ; $4a14: $7f
    db $e4                                        ; $4a15: $e4
    ld e, c                                       ; $4a16: $59
    ld c, a                                       ; $4a17: $4f
    and e                                         ; $4a18: $a3
    ld de, $50b6                                  ; $4a19: $11 $b6 $50
    rst $08                                       ; $4a1c: $cf
    adc d                                         ; $4a1d: $8a
    sub [hl]                                      ; $4a1e: $96
    add h                                         ; $4a1f: $84
    ld d, l                                       ; $4a20: $55
    adc [hl]                                      ; $4a21: $8e
    db $eb                                        ; $4a22: $eb
    jp nc, $5b38                                  ; $4a23: $d2 $38 $5b

    ccf                                           ; $4a26: $3f
    dec de                                        ; $4a27: $1b
    ccf                                           ; $4a28: $3f
    jp c, Jump_070_52d1                           ; $4a29: $da $d1 $52

    ld h, e                                       ; $4a2c: $63
    ld a, [c]                                     ; $4a2d: $f2
    ret z                                         ; $4a2e: $c8

    sub c                                         ; $4a2f: $91
    ld e, d                                       ; $4a30: $5a
    rst $08                                       ; $4a31: $cf
    ld e, [hl]                                    ; $4a32: $5e
    sbc l                                         ; $4a33: $9d
    db $d3                                        ; $4a34: $d3
    adc a                                         ; $4a35: $8f
    or b                                          ; $4a36: $b0
    xor b                                         ; $4a37: $a8
    push de                                       ; $4a38: $d5
    rst $18                                       ; $4a39: $df
    xor c                                         ; $4a3a: $a9
    add sp, $57                                   ; $4a3b: $e8 $57
    db $eb                                        ; $4a3d: $eb
    and c                                         ; $4a3e: $a1
    sub l                                         ; $4a3f: $95
    or b                                          ; $4a40: $b0
    ld [$67ad], sp                                ; $4a41: $08 $ad $67
    add l                                         ; $4a44: $85
    sub [hl]                                      ; $4a45: $96
    ld l, [hl]                                    ; $4a46: $6e
    ld b, c                                       ; $4a47: $41
    rrc d                                         ; $4a48: $cb $0a
    dec l                                         ; $4a4a: $2d
    db $dd                                        ; $4a4b: $dd
    ld a, [de]                                    ; $4a4c: $1a
    xor l                                         ; $4a4d: $ad
    ld [$746e], sp                                ; $4a4e: $08 $6e $74
    ld [hl], h                                    ; $4a51: $74
    db $eb                                        ; $4a52: $eb
    cp c                                          ; $4a53: $b9
    ld b, [hl]                                    ; $4a54: $46
    ld l, d                                       ; $4a55: $6a
    rst $18                                       ; $4a56: $df
    sbc c                                         ; $4a57: $99
    ld a, l                                       ; $4a58: $7d
    adc l                                         ; $4a59: $8d
    ld d, [hl]                                    ; $4a5a: $56
    ld a, a                                       ; $4a5b: $7f
    and a                                         ; $4a5c: $a7
    ld hl, $fd0c                                  ; $4a5d: $21 $0c $fd
    adc a                                         ; $4a60: $8f
    inc a                                         ; $4a61: $3c
    db $eb                                        ; $4a62: $eb
    add hl, hl                                    ; $4a63: $29
    pop bc                                        ; $4a64: $c1
    inc a                                         ; $4a65: $3c
    xor h                                         ; $4a66: $ac
    sbc d                                         ; $4a67: $9a
    and b                                         ; $4a68: $a0
    sub l                                         ; $4a69: $95
    or b                                          ; $4a6a: $b0
    ld [$7add], sp                                ; $4a6b: $08 $dd $7a
    ld [hl], e                                    ; $4a6e: $73
    db $e4                                        ; $4a6f: $e4
    ld e, c                                       ; $4a70: $59
    jp $acf1                                      ; $4a71: $c3 $f1 $ac


    add h                                         ; $4a74: $84
    add hl, de                                    ; $4a75: $19
    ld c, a                                       ; $4a76: $4f
    or b                                          ; $4a77: $b0
    ld c, [hl]                                    ; $4a78: $4e
    rst $18                                       ; $4a79: $df
    sbc c                                         ; $4a7a: $99

Call_070_4a7b:
    ld a, l                                       ; $4a7b: $7d
    ld c, l                                       ; $4a7c: $4d
    rst $18                                       ; $4a7d: $df
    ld [hl-], a                                   ; $4a7e: $32
    cp $97                                        ; $4a7f: $fe $97
    ld a, [bc]                                    ; $4a81: $0a
    ld [$9da0], a                                 ; $4a82: $ea $a0 $9d
    cp [hl]                                       ; $4a85: $be
    inc sp                                        ; $4a86: $33
    ei                                            ; $4a87: $fb
    sbc d                                         ; $4a88: $9a
    ld e, [hl]                                    ; $4a89: $5e
    jp Jump_000_0969                              ; $4a8a: $c3 $69 $09


    ld a, [hl-]                                   ; $4a8d: $3a
    ld [hl], l                                    ; $4a8e: $75
    ld e, b                                       ; $4a8f: $58
    ld h, e                                       ; $4a90: $63
    add d                                         ; $4a91: $82
    ld e, [hl]                                    ; $4a92: $5e
    add sp, -$37                                  ; $4a93: $e8 $c9
    sub b                                         ; $4a95: $90
    dec a                                         ; $4a96: $3d
    db $eb                                        ; $4a97: $eb
    jp hl                                         ; $4a98: $e9


    or b                                          ; $4a99: $b0
    or h                                          ; $4a9a: $b4
    ld hl, $150c                                  ; $4a9b: $21 $0c $15
    dec l                                         ; $4a9e: $2d
    add hl, bc                                    ; $4a9f: $09
    xor e                                         ; $4aa0: $ab
    add h                                         ; $4aa1: $84
    add hl, de                                    ; $4aa2: $19
    ld c, a                                       ; $4aa3: $4f
    ret z                                         ; $4aa4: $c8

    ld a, [hl]                                    ; $4aa5: $7e
    ld a, [de]                                    ; $4aa6: $1a
    adc [hl]                                      ; $4aa7: $8e
    dec d                                         ; $4aa8: $15
    ld [hl], a                                    ; $4aa9: $77
    ld l, a                                       ; $4aaa: $6f
    db $fd                                        ; $4aab: $fd
    cp b                                          ; $4aac: $b8
    jp z, $efd4                                   ; $4aad: $ca $d4 $ef

    add e                                         ; $4ab0: $83
    ld c, e                                       ; $4ab1: $4b
    adc l                                         ; $4ab2: $8d
    pop bc                                        ; $4ab3: $c1
    and l                                         ; $4ab4: $a5
    add [hl]                                      ; $4ab5: $86
    inc [hl]                                      ; $4ab6: $34
    ld h, h                                       ; $4ab7: $64
    ccf                                           ; $4ab8: $3f
    and l                                         ; $4ab9: $a5
    db $eb                                        ; $4aba: $eb
    push de                                       ; $4abb: $d5
    add hl, sp                                    ; $4abc: $39
    db $fd                                        ; $4abd: $fd
    ld [$2a8b], sp                                ; $4abe: $08 $8b $2a
    xor b                                         ; $4ac1: $a8
    add e                                         ; $4ac2: $83
    or $3f                                        ; $4ac3: $f6 $3f
    ld a, [c]                                     ; $4ac5: $f2
    xor h                                         ; $4ac6: $ac
    pop hl                                        ; $4ac7: $e1
    ld a, b                                       ; $4ac8: $78
    sub $c3                                       ; $4ac9: $d6 $c3
    sbc d                                         ; $4acb: $9a
    inc e                                         ; $4acc: $1c
    ld a, [hl-]                                   ; $4acd: $3a
    cp e                                          ; $4ace: $bb
    jr jr_070_4aef                                ; $4acf: $18 $1e

    call $59dc                                    ; $4ad1: $cd $dc $59
    sbc h                                         ; $4ad4: $9c
    add $50                                       ; $4ad5: $c6 $50
    ld b, a                                       ; $4ad7: $47
    ld [hl], l                                    ; $4ad8: $75
    or e                                          ; $4ad9: $b3
    push af                                       ; $4ada: $f5
    add $3d                                       ; $4adb: $c6 $3d
    call $53bf                                    ; $4add: $cd $bf $53
    and l                                         ; $4ae0: $a5
    dec b                                         ; $4ae1: $05
    scf                                           ; $4ae2: $37
    inc e                                         ; $4ae3: $1c
    push de                                       ; $4ae4: $d5
    cp e                                          ; $4ae5: $bb
    rst $38                                       ; $4ae6: $ff
    call c, Call_070_4a7b                         ; $4ae7: $dc $7b $4a
    jr nc, jr_070_4afb                            ; $4aea: $30 $0f

    xor e                                         ; $4aec: $ab
    add h                                         ; $4aed: $84
    ld b, l                                       ; $4aee: $45

jr_070_4aef:
    ld l, b                                       ; $4aef: $68
    inc sp                                        ; $4af0: $33
    ld [hl], a                                    ; $4af1: $77
    ld [hl], $1c                                  ; $4af2: $36 $1c
    dec hl                                        ; $4af4: $2b
    ld [hl], e                                    ; $4af5: $73
    jr nz, jr_070_4b19                            ; $4af6: $20 $21

    rst $00                                       ; $4af8: $c7
    add hl, sp                                    ; $4af9: $39
    nop                                           ; $4afa: $00

jr_070_4afb:
    ld d, a                                       ; $4afb: $57
    ld l, h                                       ; $4afc: $6c
    pop bc                                        ; $4afd: $c1
    ld a, d                                       ; $4afe: $7a
    ld a, l                                       ; $4aff: $7d
    ld l, $fe                                     ; $4b00: $2e $fe
    adc $01                                       ; $4b02: $ce $01
    scf                                           ; $4b04: $37
    ld h, $b4                                     ; $4b05: $26 $b4
    xor c                                         ; $4b07: $a9
    ld h, a                                       ; $4b08: $67
    ld l, a                                       ; $4b09: $6f
    ldh [$7e], a                                  ; $4b0a: $e0 $7e
    rst $08                                       ; $4b0c: $cf
    inc bc                                        ; $4b0d: $03
    rra                                           ; $4b0e: $1f
    dec b                                         ; $4b0f: $05
    daa                                           ; $4b10: $27
    dec h                                         ; $4b11: $25
    ld c, $9f                                     ; $4b12: $0e $9f
    ld a, [c]                                     ; $4b14: $f2
    call nz, $c34c                                ; $4b15: $c4 $4c $c3
    push bc                                       ; $4b18: $c5

jr_070_4b19:
    rst $18                                       ; $4b19: $df
    add hl, sp                                    ; $4b1a: $39
    nop                                           ; $4b1b: $00
    ld d, a                                       ; $4b1c: $57
    call nz, $8fe9                                ; $4b1d: $c4 $e9 $8f
    ld a, d                                       ; $4b20: $7a
    or $2d                                        ; $4b21: $f6 $2d
    db $ec                                        ; $4b23: $ec
    cp b                                          ; $4b24: $b8
    jr c, jr_070_4ba1                             ; $4b25: $38 $7a

    nop                                           ; $4b27: $00
    sub a                                         ; $4b28: $97
    inc hl                                        ; $4b29: $23
    ld [bc], a                                    ; $4b2a: $02
    adc c                                         ; $4b2b: $89
    push af                                       ; $4b2c: $f5
    db $d3                                        ; $4b2d: $d3
    db $eb                                        ; $4b2e: $eb
    db $e3                                        ; $4b2f: $e3
    and $00                                       ; $4b30: $e6 $00
    scf                                           ; $4b32: $37
    ld d, d                                       ; $4b33: $52
    ld c, b                                       ; $4b34: $48
    db $eb                                        ; $4b35: $eb
    push hl                                       ; $4b36: $e5
    adc b                                         ; $4b37: $88
    ld b, b                                       ; $4b38: $40
    ld h, d                                       ; $4b39: $62
    db $fd                                        ; $4b3a: $fd
    db $f4                                        ; $4b3b: $f4
    ld a, [$39b8]                                 ; $4b3c: $fa $b8 $39
    nop                                           ; $4b3f: $00
    ld d, a                                       ; $4b40: $57
    ld h, $7f                                     ; $4b41: $26 $7f
    sbc a                                         ; $4b43: $9f
    inc c                                         ; $4b44: $0c
    sub $b7                                       ; $4b45: $d6 $b7
    ld b, a                                       ; $4b47: $47
    ld a, [c]                                     ; $4b48: $f2
    nop                                           ; $4b49: $00
    ld d, a                                       ; $4b4a: $57
    db $ec                                        ; $4b4b: $ec
    add d                                         ; $4b4c: $82
    ld e, a                                       ; $4b4d: $5f
    ld [hl], c                                    ; $4b4e: $71
    ld a, d                                       ; $4b4f: $7a
    ld a, [hl]                                    ; $4b50: $7e
    dec hl                                        ; $4b51: $2b
    ld a, [de]                                    ; $4b52: $1a
    ld c, $57                                     ; $4b53: $0e $57
    sub d                                         ; $4b55: $92
    pop bc                                        ; $4b56: $c1
    ld a, d                                       ; $4b57: $7a
    sbc [hl]                                      ; $4b58: $9e
    rst $38                                       ; $4b59: $ff
    call z, Call_070_70cc                         ; $4b5a: $cc $cc $70
    call z, $0e71                                 ; $4b5d: $cc $71 $0e
    sbc a                                         ; $4b60: $9f
    jp nc, $9fcd                                  ; $4b61: $d2 $cd $9f

    sub $eb                                       ; $4b64: $d6 $eb
    add [hl]                                      ; $4b66: $86
    inc de                                        ; $4b67: $13
    ld c, $d7                                     ; $4b68: $0e $d7
    ld l, l                                       ; $4b6a: $6d
    ld [hl+], a                                   ; $4b6b: $22
    cpl                                           ; $4b6c: $2f
    cp $ce                                        ; $4b6d: $fe $ce
    ld bc, $536f                                  ; $4b6f: $01 $6f $53
    rst $38                                       ; $4b72: $ff
    dec bc                                        ; $4b73: $0b
    sub $cb                                       ; $4b74: $d6 $cb
    ld de, $4481                                  ; $4b76: $11 $81 $44
    dec a                                         ; $4b79: $3d
    nop                                           ; $4b7a: $00
    rst $28                                       ; $4b7b: $ef
    adc h                                         ; $4b7c: $8c
    ld e, l                                       ; $4b7d: $5d
    call nz, Call_070_5701                        ; $4b7e: $c4 $01 $57
    xor $09                                       ; $4b81: $ee $09
    rla                                           ; $4b83: $17
    ld a, d                                       ; $4b84: $7a
    ld h, e                                       ; $4b85: $63
    sbc h                                         ; $4b86: $9c
    ret nc                                        ; $4b87: $d0

    ld d, $0e                                     ; $4b88: $16 $0e
    scf                                           ; $4b8a: $37
    ld d, d                                       ; $4b8b: $52
    ld c, b                                       ; $4b8c: $48
    db $eb                                        ; $4b8d: $eb
    dec sp                                        ; $4b8e: $3b
    ld h, e                                       ; $4b8f: $63
    rla                                           ; $4b90: $17
    ld [hl], c                                    ; $4b91: $71
    nop                                           ; $4b92: $00
    scf                                           ; $4b93: $37
    ld h, $cf                                     ; $4b94: $26 $cf
    ld bc, $45ef                                  ; $4b96: $01 $ef $45
    cp d                                          ; $4b99: $ba
    jp nc, Jump_000_3af5                          ; $4b9a: $d2 $f5 $3a

    inc sp                                        ; $4b9d: $33
    ld c, $d7                                     ; $4b9e: $0e $d7
    ld [hl], b                                    ; $4ba0: $70

jr_070_4ba1:
    ld e, d                                       ; $4ba1: $5a
    add sp, $35                                   ; $4ba2: $e8 $35
    xor $e2                                       ; $4ba4: $ee $e2
    ld sp, $1c78                                  ; $4ba6: $31 $78 $1c
    rst $28                                       ; $4ba9: $ef
    cp c                                          ; $4baa: $b9
    sub h                                         ; $4bab: $94
    sub a                                         ; $4bac: $97
    add a                                         ; $4bad: $87
    ld h, a                                       ; $4bae: $67
    rst $28                                       ; $4baf: $ef
    db $ec                                        ; $4bb0: $ec
    ld c, l                                       ; $4bb1: $4d
    ld h, [hl]                                    ; $4bb2: $66
    and $d1                                       ; $4bb3: $e6 $d1
    inc bc                                        ; $4bb5: $03
    rst $20                                       ; $4bb6: $e7
    or a                                          ; $4bb7: $b7
    jp nz, $f47d                                  ; $4bb8: $c2 $7d $f4

    ld [hl], a                                    ; $4bbb: $77
    ld a, d                                       ; $4bbc: $7a
    db $e3                                        ; $4bbd: $e3
    cp [hl]                                       ; $4bbe: $be
    cp h                                          ; $4bbf: $bc
    inc h                                         ; $4bc0: $24
    ld c, $6f                                     ; $4bc1: $0e $6f
    cpl                                           ; $4bc3: $2f
    adc l                                         ; $4bc4: $8d
    add [hl]                                      ; $4bc5: $86
    adc e                                         ; $4bc6: $8b
    cp a                                          ; $4bc7: $bf
    ld [hl], e                                    ; $4bc8: $73
    nop                                           ; $4bc9: $00
    ld d, a                                       ; $4bca: $57
    sub b                                         ; $4bcb: $90
    cpl                                           ; $4bcc: $2f
    cp $4e                                        ; $4bcd: $fe $4e
    dec a                                         ; $4bcf: $3d
    ei                                            ; $4bd0: $fb
    pop de                                        ; $4bd1: $d1
    jp z, $03b0                                   ; $4bd2: $ca $b0 $03

    rst $28                                       ; $4bd5: $ef
    ret nc                                        ; $4bd6: $d0

    adc a                                         ; $4bd7: $8f
    dec e                                         ; $4bd8: $1d
    rra                                           ; $4bd9: $1f
    ld [hl-], a                                   ; $4bda: $32
    rst $00                                       ; $4bdb: $c7
    push hl                                       ; $4bdc: $e5
    ld a, a                                       ; $4bdd: $7f
    rst $20                                       ; $4bde: $e7
    nop                                           ; $4bdf: $00
    rra                                           ; $4be0: $1f
    jp nc, Jump_070_6f3c                          ; $4be1: $d2 $3c $6f

    db $e3                                        ; $4be4: $e3
    nop                                           ; $4be5: $00
    sbc a                                         ; $4be6: $9f
    pop de                                        ; $4be7: $d1
    add l                                         ; $4be8: $85
    call nc, $cf08                                ; $4be9: $d4 $08 $cf
    inc bc                                        ; $4bec: $03
    sub a                                         ; $4bed: $97
    rst $30                                       ; $4bee: $f7
    ld c, b                                       ; $4bef: $48
    add e                                         ; $4bf0: $83
    push af                                       ; $4bf1: $f5
    cp l                                          ; $4bf2: $bd
    cp h                                          ; $4bf3: $bc
    call c, $cd3a                                 ; $4bf4: $dc $3a $cd
    ld bc, $8f6f                                  ; $4bf7: $01 $6f $8f
    ret nc                                        ; $4bfa: $d0

    ld h, b                                       ; $4bfb: $60
    cp l                                          ; $4bfc: $bd
    ld a, [hl]                                    ; $4bfd: $7e
    ld a, [hl]                                    ; $4bfe: $7e
    nop                                           ; $4bff: $00
    sbc a                                         ; $4c00: $9f
    ld a, [c]                                     ; $4c01: $f2
    ld c, a                                       ; $4c02: $4f
    adc e                                         ; $4c03: $8b
    or h                                          ; $4c04: $b4
    inc bc                                        ; $4c05: $03
    rst $28                                       ; $4c06: $ef
    ret nz                                        ; $4c07: $c0

    ld hl, sp+$3d                                 ; $4c08: $f8 $3d
    db $fc                                        ; $4c0a: $fc
    ld e, b                                       ; $4c0b: $58
    dec a                                         ; $4c0c: $3d
    ld a, e                                       ; $4c0d: $7b
    ld h, e                                       ; $4c0e: $63
    ret                                           ; $4c0f: $c9


    sbc l                                         ; $4c10: $9d
    ld a, d                                       ; $4c11: $7a
    nop                                           ; $4c12: $00
    ld d, a                                       ; $4c13: $57
    ldh [rRP], a                                  ; $4c14: $e0 $56
    ld d, $4f                                     ; $4c16: $16 $4f
    dec a                                         ; $4c18: $3d
    ei                                            ; $4c19: $fb
    ld e, [hl]                                    ; $4c1a: $5e
    ld e, [hl]                                    ; $4c1b: $5e
    ld l, [hl]                                    ; $4c1c: $6e
    sbc l                                         ; $4c1d: $9d
    ld b, [hl]                                    ; $4c1e: $46
    rrca                                          ; $4c1f: $0f
    rst $20                                       ; $4c20: $e7
    ei                                            ; $4c21: $fb
    db $f4                                        ; $4c22: $f4
    inc sp                                        ; $4c23: $33
    xor $0c                                       ; $4c24: $ee $0c
    add e                                         ; $4c26: $83
    db $e3                                        ; $4c27: $e3
    sub d                                         ; $4c28: $92
    ld [hl], e                                    ; $4c29: $73
    nop                                           ; $4c2a: $00
    rst $10                                       ; $4c2b: $d7
    daa                                           ; $4c2c: $27
    rst $00                                       ; $4c2d: $c7
    jp hl                                         ; $4c2e: $e9


    dec sp                                        ; $4c2f: $3b
    ld b, $39                                     ; $4c30: $06 $39
    rlca                                          ; $4c32: $07
    sbc a                                         ; $4c33: $9f
    ld d, d                                       ; $4c34: $52
    and [hl]                                      ; $4c35: $a6
    sub b                                         ; $4c36: $90
    ld b, $eb                                     ; $4c37: $06 $eb
    push af                                       ; $4c39: $f5
    ld l, e                                       ; $4c3a: $6b
    rlca                                          ; $4c3b: $07
    sbc a                                         ; $4c3c: $9f
    ld a, [c]                                     ; $4c3d: $f2
    ld c, a                                       ; $4c3e: $4f
    adc e                                         ; $4c3f: $8b
    or h                                          ; $4c40: $b4
    cp [hl]                                       ; $4c41: $be
    jp $d715                                      ; $4c42: $c3 $15 $d7


    push bc                                       ; $4c45: $c5
    pop de                                        ; $4c46: $d1
    inc bc                                        ; $4c47: $03
    sbc a                                         ; $4c48: $9f
    ld d, d                                       ; $4c49: $52
    and [hl]                                      ; $4c4a: $a6
    sub b                                         ; $4c4b: $90
    ld b, $eb                                     ; $4c4c: $06 $eb
    push af                                       ; $4c4e: $f5
    di                                            ; $4c4f: $f3
    inc bc                                        ; $4c50: $03
    ld d, a                                       ; $4c51: $57
    ld h, $7f                                     ; $4c52: $26 $7f
    sbc a                                         ; $4c54: $9f
    inc c                                         ; $4c55: $0c
    sub $77                                       ; $4c56: $d6 $77
    inc de                                        ; $4c58: $13
    call z, $89e3                                 ; $4c59: $cc $e3 $89
    dec hl                                        ; $4c5c: $2b
    ld [c], a                                     ; $4c5d: $e2
    db $f4                                        ; $4c5e: $f4
    rst $00                                       ; $4c5f: $c7
    ld bc, $d257                                  ; $4c60: $01 $57 $d2
    ld e, $93                                     ; $4c63: $1e $93
    pop hl                                        ; $4c65: $e1
    nop                                           ; $4c66: $00
    sub a                                         ; $4c67: $97
    inc hl                                        ; $4c68: $23
    ld [bc], a                                    ; $4c69: $02
    adc c                                         ; $4c6a: $89
    dec a                                         ; $4c6b: $3d
    rst $08                                       ; $4c6c: $cf
    or h                                          ; $4c6d: $b4
    db $d3                                        ; $4c6e: $d3
    add l                                         ; $4c6f: $85
    cp b                                          ; $4c70: $b8
    db $e4                                        ; $4c71: $e4
    inc e                                         ; $4c72: $1c
    rst $28                                       ; $4c73: $ef
    ld [hl+], a                                   ; $4c74: $22
    adc e                                         ; $4c75: $8b
    ld h, c                                       ; $4c76: $61
    db $fd                                        ; $4c77: $fd
    add sp, -$12                                  ; $4c78: $e8 $ee
    ccf                                           ; $4c7a: $3f
    rst $30                                       ; $4c7b: $f7
    inc bc                                        ; $4c7c: $03
    rst $28                                       ; $4c7d: $ef
    ld [hl+], a                                   ; $4c7e: $22

Jump_070_4c7f:
    adc e                                         ; $4c7f: $8b
    ld h, c                                       ; $4c80: $61
    cp l                                          ; $4c81: $bd
    ld a, [hl]                                    ; $4c82: $7e
    ld a, [hl]                                    ; $4c83: $7e
    nop                                           ; $4c84: $00
    rst $28                                       ; $4c85: $ef
    ld [hl+], a                                   ; $4c86: $22
    adc e                                         ; $4c87: $8b
    ld h, c                                       ; $4c88: $61
    cp l                                          ; $4c89: $bd
    ld a, [hl]                                    ; $4c8a: $7e
    db $ed                                        ; $4c8b: $ed
    nop                                           ; $4c8c: $00
    rst $20                                       ; $4c8d: $e7
    ei                                            ; $4c8e: $fb
    ld [hl], d                                    ; $4c8f: $72
    dec hl                                        ; $4c90: $2b
    jp $fd7a                                      ; $4c91: $c3 $7a $fd


    jp c, $9f01                                   ; $4c94: $da $01 $9f

    ld d, d                                       ; $4c97: $52
    and [hl]                                      ; $4c98: $a6
    sub b                                         ; $4c99: $90
    add [hl]                                      ; $4c9a: $86
    adc e                                         ; $4c9b: $8b

jr_070_4c9c:
    cp a                                          ; $4c9c: $bf
    db $d3                                        ; $4c9d: $d3
    rst $08                                       ; $4c9e: $cf
    ld h, $62                                     ; $4c9f: $26 $62
    ccf                                           ; $4ca1: $3f
    nop                                           ; $4ca2: $00
    rst $28                                       ; $4ca3: $ef
    cp c                                          ; $4ca4: $b9
    sub h                                         ; $4ca5: $94
    sub a                                         ; $4ca6: $97
    add a                                         ; $4ca7: $87
    ld h, a                                       ; $4ca8: $67
    xor a                                         ; $4ca9: $af
    dec b                                         ; $4caa: $05
    sbc a                                         ; $4cab: $9f
    sub [hl]                                      ; $4cac: $96
    call nz, $ef01                                ; $4cad: $c4 $01 $ef
    cp c                                          ; $4cb0: $b9
    sub h                                         ; $4cb1: $94
    sub a                                         ; $4cb2: $97
    add a                                         ; $4cb3: $87
    ld h, a                                       ; $4cb4: $67
    rst $18                                       ; $4cb5: $df
    cp c                                          ; $4cb6: $b9
    ld e, e                                       ; $4cb7: $5b
    sub a                                         ; $4cb8: $97
    call nz, $e701                                ; $4cb9: $c4 $01 $e7
    or a                                          ; $4cbc: $b7
    sub b                                         ; $4cbd: $90
    inc [hl]                                      ; $4cbe: $34
    cp $ce                                        ; $4cbf: $fe $ce
    ld bc, $c7d7                                  ; $4cc1: $01 $d7 $c7
    db $d3                                        ; $4cc4: $d3
    ld a, d                                       ; $4cc5: $7a
    ld a, [hl]                                    ; $4cc6: $7e
    dec hl                                        ; $4cc7: $2b
    call c, $d747                                 ; $4cc8: $dc $47 $d7
    ld a, a                                       ; $4ccb: $7f
    ld c, $ef                                     ; $4ccc: $0e $ef
    adc h                                         ; $4cce: $8c
    ld e, l                                       ; $4ccf: $5d
    ld b, h                                       ; $4cd0: $44
    xor a                                         ; $4cd1: $af
    jp nc, Jump_070_59ee                          ; $4cd2: $d2 $ee $59

    ld [de], a                                    ; $4cd5: $12
    rlca                                          ; $4cd6: $07
    rst $20                                       ; $4cd7: $e7
    ld e, c                                       ; $4cd8: $59
    ld [hl+], a                                   ; $4cd9: $22
    ld b, a                                       ; $4cda: $47
    jr c, @-$18                                   ; $4cdb: $38 $e6

    jr c, jr_070_4c9c                             ; $4cdd: $38 $bd

    ld [hl-], a                                   ; $4cdf: $32
    ld l, $dc                                     ; $4ce0: $2e $dc
    add hl, de                                    ; $4ce2: $19
    rst $20                                       ; $4ce3: $e7
    nop                                           ; $4ce4: $00
    sub a                                         ; $4ce5: $97
    or l                                          ; $4ce6: $b5
    ld [de], a                                    ; $4ce7: $12
    ld d, $a1                                     ; $4ce8: $16 $a1
    sub l                                         ; $4cea: $95
    or [hl]                                       ; $4ceb: $b6
    ldh [$9a], a                                  ; $4cec: $e0 $9a
    inc e                                         ; $4cee: $1c
    ld a, [de]                                    ; $4cef: $1a
    adc $c5                                       ; $4cf0: $ce $c5
    rst $18                                       ; $4cf2: $df
    add hl, hl                                    ; $4cf3: $29
    halt                                          ; $4cf4: $76
    ld [hl+], a                                   ; $4cf5: $22
    sbc $63                                       ; $4cf6: $de $63
    dec bc                                        ; $4cf8: $0b
    sub a                                         ; $4cf9: $97
    ld c, $97                                     ; $4cfa: $0e $97
    or l                                          ; $4cfc: $b5
    ld [de], a                                    ; $4cfd: $12
    ld d, $a1                                     ; $4cfe: $16 $a1
    dec [hl]                                      ; $4d00: $35
    ld l, d                                       ; $4d01: $6a
    ld b, h                                       ; $4d02: $44
    ld [hl-], a                                   ; $4d03: $32
    cp b                                          ; $4d04: $b8
    ld h, $87                                     ; $4d05: $26 $87
    add [hl]                                      ; $4d07: $86
    inc c                                         ; $4d08: $0c
    inc h                                         ; $4d09: $24
    ld h, [hl]                                    ; $4d0a: $66
    inc [hl]                                      ; $4d0b: $34
    sub b                                         ; $4d0c: $90
    sub b                                         ; $4d0d: $90
    db $e3                                        ; $4d0e: $e3
    ld a, [c]                                     ; $4d0f: $f2
    ldh a, [$ac]                                  ; $4d10: $f0 $ac
    ld h, a                                       ; $4d12: $67
    sub l                                         ; $4d13: $95
    ld c, c                                       ; $4d14: $49
    ld a, e                                       ; $4d15: $7b
    db $fd                                        ; $4d16: $fd
    ld a, h                                       ; $4d17: $7c
    dec sp                                        ; $4d18: $3b
    nop                                           ; $4d19: $00
    sub a                                         ; $4d1a: $97
    or l                                          ; $4d1b: $b5
    ld [de], a                                    ; $4d1c: $12
    ld d, $a1                                     ; $4d1d: $16 $a1
    dec d                                         ; $4d1f: $15
    pop hl                                        ; $4d20: $e1
    ld [hl], $5d                                  ; $4d21: $36 $5d
    rst $38                                       ; $4d23: $ff
    inc hl                                        ; $4d24: $23
    rst $08                                       ; $4d25: $cf
    xor d                                         ; $4d26: $aa
    call z, $5971                                 ; $4d27: $cc $71 $59
    db $e3                                        ; $4d2a: $e3
    db $e4                                        ; $4d2b: $e4
    sbc b                                         ; $4d2c: $98
    inc c                                         ; $4d2d: $0c
    ld e, d                                       ; $4d2e: $5a
    ld d, [hl]                                    ; $4d2f: $56
    ld h, h                                       ; $4d30: $64
    ld [$de24], sp                                ; $4d31: $08 $24 $de
    add $d6                                       ; $4d34: $c6 $d6
    rst $08                                       ; $4d36: $cf
    or b                                          ; $4d37: $b0
    rst $38                                       ; $4d38: $ff
    ld a, c                                       ; $4d39: $79
    cp e                                          ; $4d3a: $bb
    sub c                                         ; $4d3b: $91

Jump_070_4d3c:
    ld e, c                                       ; $4d3c: $59
    adc h                                         ; $4d3d: $8c
    add [hl]                                      ; $4d3e: $86
    inc [hl]                                      ; $4d3f: $34
    cp a                                          ; $4d40: $bf
    db $fc                                        ; $4d41: $fc
    inc d                                         ; $4d42: $14
    ei                                            ; $4d43: $fb
    add hl, hl                                    ; $4d44: $29
    ld h, l                                       ; $4d45: $65
    db $ed                                        ; $4d46: $ed
    push af                                       ; $4d47: $f5
    di                                            ; $4d48: $f3
    db $ed                                        ; $4d49: $ed
    nop                                           ; $4d4a: $00
    sub a                                         ; $4d4b: $97
    or l                                          ; $4d4c: $b5

jr_070_4d4d:
    ld [de], a                                    ; $4d4d: $12
    ld d, $a1                                     ; $4d4e: $16 $a1

Jump_070_4d50:
    ld b, l                                       ; $4d50: $45
    ld [hl], d                                    ; $4d51: $72
    call z, $ae11                                 ; $4d52: $cc $11 $ae
    jp z, $bda4                                   ; $4d55: $ca $a4 $bd

    ld a, [hl]                                    ; $4d58: $7e
    cp [hl]                                       ; $4d59: $be
    push af                                       ; $4d5a: $f5
    inc hl                                        ; $4d5b: $23
    db $f4                                        ; $4d5c: $f4
    ld c, a                                       ; $4d5d: $4f
    di                                            ; $4d5e: $f3
    ldh a, [rNR14]                                ; $4d5f: $f0 $14
    db $f4                                        ; $4d61: $f4
    ccf                                           ; $4d62: $3f
    ld a, [c]                                     ; $4d63: $f2
    xor h                                         ; $4d64: $ac
    jp z, $591c                                   ; $4d65: $ca $1c $59

    add hl, sp                                    ; $4d68: $39
    ld l, [hl]                                    ; $4d69: $6e
    xor d                                         ; $4d6a: $aa
    xor h                                         ; $4d6b: $ac
    sbc h                                         ; $4d6c: $9c
    xor h                                         ; $4d6d: $ac
    inc a                                         ; $4d6e: $3c
    and l                                         ; $4d6f: $a5
    and l                                         ; $4d70: $a5

jr_070_4d71:
    jp z, $2c3a                                   ; $4d71: $ca $3a $2c

    dec l                                         ; $4d74: $2d
    db $eb                                        ; $4d75: $eb
    or b                                          ; $4d76: $b0
    or h                                          ; $4d77: $b4
    rst $10                                       ; $4d78: $d7
    rst $08                                       ; $4d79: $cf
    adc e                                         ; $4d7a: $8b
    ld c, d                                       ; $4d7b: $4a
    ld a, b                                       ; $4d7c: $78
    ld [hl], h                                    ; $4d7d: $74
    ld h, l                                       ; $4d7e: $65
    adc l                                         ; $4d7f: $8d
    ret z                                         ; $4d80: $c8

    sub c                                         ; $4d81: $91
    sub a                                         ; $4d82: $97
    ld c, $97                                     ; $4d83: $0e $97
    or l                                          ; $4d85: $b5
    ld [de], a                                    ; $4d86: $12
    ld d, $a1                                     ; $4d87: $16 $a1
    sub l                                         ; $4d89: $95
    or [hl]                                       ; $4d8a: $b6
    ldh [$9a], a                                  ; $4d8b: $e0 $9a
    inc e                                         ; $4d8d: $1c
    ld a, [hl+]                                   ; $4d8e: $2a
    push bc                                       ; $4d8f: $c5
    jp hl                                         ; $4d90: $e9


    adc a                                         ; $4d91: $8f
    ld a, d                                       ; $4d92: $7a
    or $2d                                        ; $4d93: $f6 $2d
    db $ec                                        ; $4d95: $ec
    cp b                                          ; $4d96: $b8
    jr c, jr_070_4dc3                             ; $4d97: $38 $2a

    ld l, b                                       ; $4d99: $68
    jr nz, jr_070_4d4d                            ; $4d9a: $20 $b1

    ld [de], a                                    ; $4d9c: $12

jr_070_4d9d:
    ld [hl], h                                    ; $4d9d: $74
    push de                                       ; $4d9e: $d5
    ld de, $ab1a                                  ; $4d9f: $11 $1a $ab
    ld c, h                                       ; $4da2: $4c
    jp c, Jump_000_2709                           ; $4da3: $da $09 $27

    inc sp                                        ; $4da6: $33
    ld b, a                                       ; $4da7: $47
    ld [$0076], a                                 ; $4da8: $ea $76 $00
    sub a                                         ; $4dab: $97
    or l                                          ; $4dac: $b5
    ld [de], a                                    ; $4dad: $12
    ld d, $a1                                     ; $4dae: $16 $a1
    sub l                                         ; $4db0: $95
    or [hl]                                       ; $4db1: $b6
    ldh [$9a], a                                  ; $4db2: $e0 $9a
    ld e, h                                       ; $4db4: $5c
    xor a                                         ; $4db5: $af
    adc a                                         ; $4db6: $8f
    sbc e                                         ; $4db7: $9b
    ld a, d                                       ; $4db8: $7a
    or $e3                                        ; $4db9: $f6 $e3
    ld h, h                                       ; $4dbb: $64
    inc hl                                        ; $4dbc: $23
    ld l, b                                       ; $4dbd: $68
    jr nz, jr_070_4d71                            ; $4dbe: $20 $b1

    sub b                                         ; $4dc0: $90
    or h                                          ; $4dc1: $b4
    adc b                                         ; $4dc2: $88

jr_070_4dc3:
    ld h, $d7                                     ; $4dc3: $26 $d7
    sub l                                         ; $4dc5: $95
    sub a                                         ; $4dc6: $97
    ld e, e                                       ; $4dc7: $5b
    and a                                         ; $4dc8: $a7
    xor c                                         ; $4dc9: $a9
    ld b, h                                       ; $4dca: $44
    ld d, d                                       ; $4dcb: $52
    ld h, h                                       ; $4dcc: $64
    ccf                                           ; $4dcd: $3f
    push de                                       ; $4dce: $d5
    dec bc                                        ; $4dcf: $0b
    or [hl]                                       ; $4dd0: $b6
    ld b, [hl]                                    ; $4dd1: $46
    db $eb                                        ; $4dd2: $eb
    sub c                                         ; $4dd3: $91
    ld b, a                                       ; $4dd4: $47
    cpl                                           ; $4dd5: $2f
    dec e                                         ; $4dd6: $1d
    sub a                                         ; $4dd7: $97
    or l                                          ; $4dd8: $b5
    ld [de], a                                    ; $4dd9: $12
    ld d, $a1                                     ; $4dda: $16 $a1
    sub l                                         ; $4ddc: $95
    or [hl]                                       ; $4ddd: $b6
    ldh [$9a], a                                  ; $4dde: $e0 $9a
    ld e, h                                       ; $4de0: $5c
    xor a                                         ; $4de1: $af
    adc a                                         ; $4de2: $8f
    sbc e                                         ; $4de3: $9b
    ld a, d                                       ; $4de4: $7a
    or $e3                                        ; $4de5: $f6 $e3
    ld h, h                                       ; $4de7: $64
    inc hl                                        ; $4de8: $23
    ld l, b                                       ; $4de9: $68
    jr nz, jr_070_4d9d                            ; $4dea: $20 $b1

    and d                                         ; $4dec: $a2
    dec h                                         ; $4ded: $25
    pop de                                        ; $4dee: $d1
    db $d3                                        ; $4def: $d3
    ld [hl-], a                                   ; $4df0: $32
    ld h, h                                       ; $4df1: $64
    ccf                                           ; $4df2: $3f
    and l                                         ; $4df3: $a5
    db $eb                                        ; $4df4: $eb
    ld a, a                                       ; $4df5: $7f
    or $88                                        ; $4df6: $f6 $88
    ld a, [$cae9]                                 ; $4df8: $fa $e9 $ca
    res 5, l                                      ; $4dfb: $cb $ad
    db $d3                                        ; $4dfd: $d3
    ld [$97ea], sp                                ; $4dfe: $08 $ea $97
    ld b, [hl]                                    ; $4e01: $46
    jp Jump_070_7eca                              ; $4e02: $c3 $ca $7e


    sbc [hl]                                      ; $4e05: $9e
    sbc b                                         ; $4e06: $98
    ld c, e                                       ; $4e07: $4b
    rlca                                          ; $4e08: $07
    sub a                                         ; $4e09: $97
    or l                                          ; $4e0a: $b5
    ld [de], a                                    ; $4e0b: $12
    ld d, $a1                                     ; $4e0c: $16 $a1
    adc l                                         ; $4e0e: $8d
    xor h                                         ; $4e0f: $ac
    and a                                         ; $4e10: $a7
    pop bc                                        ; $4e11: $c1
    dec [hl]                                      ; $4e12: $35
    cp c                                          ; $4e13: $b9
    ld a, [$bc91]                                 ; $4e14: $fa $91 $bc
    ld [hl], h                                    ; $4e17: $74
    nop                                           ; $4e18: $00
    sub a                                         ; $4e19: $97
    or l                                          ; $4e1a: $b5
    ld [de], a                                    ; $4e1b: $12
    ld d, $a1                                     ; $4e1c: $16 $a1
    ld b, l                                       ; $4e1e: $45
    ld [hl], d                                    ; $4e1f: $72
    call z, $0611                                 ; $4e20: $cc $11 $06
    rst $10                                       ; $4e23: $d7
    pop de                                        ; $4e24: $d1
    add [hl]                                      ; $4e25: $86
    sub e                                         ; $4e26: $93
    db $e3                                        ; $4e27: $e3
    ld l, b                                       ; $4e28: $68
    dec a                                         ; $4e29: $3d
    bit 3, e                                      ; $4e2a: $cb $5b
    ld hl, $9d6d                                  ; $4e2c: $21 $6d $9d
    ld h, l                                       ; $4e2f: $65
    cp c                                          ; $4e30: $b9
    ret nc                                        ; $4e31: $d0

    ld b, b                                       ; $4e32: $40

jr_070_4e33:
    ld h, d                                       ; $4e33: $62
    rst $38                                       ; $4e34: $ff
    inc hl                                        ; $4e35: $23
    rst $08                                       ; $4e36: $cf
    cp d                                          ; $4e37: $ba
    inc l                                         ; $4e38: $2c
    cp b                                          ; $4e39: $b8
    ld b, [hl]                                    ; $4e3a: $46
    ld c, c                                       ; $4e3b: $49
    ld hl, $caad                                  ; $4e3c: $21 $ad $ca
    cp $99                                        ; $4e3f: $fe $99
    dec h                                         ; $4e41: $25
    xor l                                         ; $4e42: $ad
    call nc, Call_000_32c8                        ; $4e43: $d4 $c8 $32
    set 1, c                                      ; $4e46: $cb $c9
    pop de                                        ; $4e48: $d1
    and $d2                                       ; $4e49: $e6 $d2
    ld bc, $b597                                  ; $4e4b: $01 $97 $b5
    ld [de], a                                    ; $4e4e: $12
    ld d, $a1                                     ; $4e4f: $16 $a1
    sub l                                         ; $4e51: $95
    ret z                                         ; $4e52: $c8

    sub d                                         ; $4e53: $92
    dec sp                                        ; $4e54: $3b
    ld e, h                                       ; $4e55: $5c
    ld b, a                                       ; $4e56: $47
    ld c, e                                       ; $4e57: $4b
    ld de, $1c57                                  ; $4e58: $11 $57 $1c
    xor l                                         ; $4e5b: $ad
    ld h, a                                       ; $4e5c: $67
    inc bc                                        ; $4e5d: $03
    add hl, bc                                    ; $4e5e: $09
    ld a, e                                       ; $4e5f: $7b
    jr nz, jr_070_4e33                            ; $4e60: $20 $d1

    jp z, Jump_070_67fc                           ; $4e62: $ca $fc $67

    ld h, [hl]                                    ; $4e65: $66
    add [hl]                                      ; $4e66: $86
    ld h, e                                       ; $4e67: $63
    adc [hl]                                      ; $4e68: $8e
    ld d, e                                       ; $4e69: $53
    dec e                                         ; $4e6a: $1d
    sub c                                         ; $4e6b: $91
    dec l                                         ; $4e6c: $2d
    ccf                                           ; $4e6d: $3f
    call $c8d4                                    ; $4e6e: $cd $d4 $c8
    ld [hl-], a                                   ; $4e71: $32
    set 1, c                                      ; $4e72: $cb $c9
    pop de                                        ; $4e74: $d1
    and $d2                                       ; $4e75: $e6 $d2
    ld bc, $b597                                  ; $4e77: $01 $97 $b5
    ld [de], a                                    ; $4e7a: $12
    ld d, $a1                                     ; $4e7b: $16 $a1
    dec [hl]                                      ; $4e7d: $35
    cp d                                          ; $4e7e: $ba
    ld sp, hl                                     ; $4e7f: $f9
    db $d3                                        ; $4e80: $d3
    dec [hl]                                      ; $4e81: $35
    sub b                                         ; $4e82: $90
    or b                                          ; $4e83: $b0
    rlca                                          ; $4e84: $07
    ld [de], a                                    ; $4e85: $12
    xor l                                         ; $4e86: $ad
    ld c, $bb                                     ; $4e87: $0e $bb
    ld e, a                                       ; $4e89: $5f
    rla                                           ; $4e8a: $17
    ld a, a                                       ; $4e8b: $7f
    and a                                         ; $4e8c: $a7
    dec sp                                        ; $4e8d: $3b
    ld a, [c]                                     ; $4e8e: $f2
    ld b, l                                       ; $4e8f: $45
    ld a, b                                       ; $4e90: $78
    ld d, h                                       ; $4e91: $54
    ld b, a                                       ; $4e92: $47
    ld l, b                                       ; $4e93: $68
    db $ec                                        ; $4e94: $ec
    ld a, a                                       ; $4e95: $7f
    db $e4                                        ; $4e96: $e4
    ld e, c                                       ; $4e97: $59
    inc sp                                        ; $4e98: $33
    dec [hl]                                      ; $4e99: $35
    or d                                          ; $4e9a: $b2
    call z, Call_070_7272                         ; $4e9b: $cc $72 $72
    or h                                          ; $4e9e: $b4
    cp c                                          ; $4e9f: $b9
    ld [hl], h                                    ; $4ea0: $74
    nop                                           ; $4ea1: $00
    sub a                                         ; $4ea2: $97
    or l                                          ; $4ea3: $b5
    ld [de], a                                    ; $4ea4: $12
    ld d, $a1                                     ; $4ea5: $16 $a1
    sbc l                                         ; $4ea7: $9d
    ld a, d                                       ; $4ea8: $7a
    xor [hl]                                      ; $4ea9: $ae
    ld e, e                                       ; $4eaa: $5b
    ld [hl], b                                    ; $4eab: $70
    ld [hl], l                                    ; $4eac: $75
    ld e, b                                       ; $4ead: $58
    ld e, d                                       ; $4eae: $5a
    cp a                                          ; $4eaf: $bf
    ld b, h                                       ; $4eb0: $44
    ld [hl], a                                    ; $4eb1: $77
    res 6, l                                      ; $4eb2: $cb $b5
    rst $10                                       ; $4eb4: $d7
    or e                                          ; $4eb5: $b3
    ld c, d                                       ; $4eb6: $4a
    dec hl                                        ; $4eb7: $2b
    ld [c], a                                     ; $4eb8: $e2
    jp z, $e5a7                                   ; $4eb9: $ca $a7 $e5

    and a                                         ; $4ebc: $a7
    and d                                         ; $4ebd: $a2
    and l                                         ; $4ebe: $a5
    ld c, e                                       ; $4ebf: $4b
    jp nz, Jump_070_4731                          ; $4ec0: $c2 $31 $47

    ld e, [hl]                                    ; $4ec3: $5e
    ld a, [hl-]                                   ; $4ec4: $3a
    nop                                           ; $4ec5: $00
    sub a                                         ; $4ec6: $97
    or l                                          ; $4ec7: $b5
    ld [de], a                                    ; $4ec8: $12
    ld d, $a1                                     ; $4ec9: $16 $a1
    push af                                       ; $4ecb: $f5
    call nc, $82ff                                ; $4ecc: $d4 $ff $82
    db $fd                                        ; $4ecf: $fd
    ld c, [hl]                                    ; $4ed0: $4e
    ld b, e                                       ; $4ed1: $43
    ld e, b                                       ; $4ed2: $58
    ld h, h                                       ; $4ed3: $64
    db $fd                                        ; $4ed4: $fd
    ld l, b                                       ; $4ed5: $68
    dec a                                         ; $4ed6: $3d
    ld a, [c]                                     ; $4ed7: $f2
    ld l, b                                       ; $4ed8: $68
    dec h                                         ; $4ed9: $25
    sub d                                         ; $4eda: $92
    jp nz, $368f                                  ; $4edb: $c2 $8f $36

    inc e                                         ; $4ede: $1c
    dec hl                                        ; $4edf: $2b
    ld [hl+], a                                   ; $4ee0: $22
    ld [bc], a                                    ; $4ee1: $02
    adc c                                         ; $4ee2: $89
    ld e, d                                       ; $4ee3: $5a
    pop de                                        ; $4ee4: $d1
    db $dd                                        ; $4ee5: $dd
    cp d                                          ; $4ee6: $ba
    db $e4                                        ; $4ee7: $e4
    ld l, b                                       ; $4ee8: $68
    daa                                           ; $4ee9: $27
    push de                                       ; $4eea: $d5
    dec b                                         ; $4eeb: $05
    sbc a                                         ; $4eec: $9f
    sub [hl]                                      ; $4eed: $96
    inc e                                         ; $4eee: $1c
    ld l, l                                       ; $4eef: $6d
    and [hl]                                      ; $4ef0: $a6
    ld b, [hl]                                    ; $4ef1: $46
    sub [hl]                                      ; $4ef2: $96
    ld e, c                                       ; $4ef3: $59
    ld c, [hl]                                    ; $4ef4: $4e
    adc [hl]                                      ; $4ef5: $8e
    ld [hl], $97                                  ; $4ef6: $36 $97
    ld c, $37                                     ; $4ef8: $0e $37
    ld b, a                                       ; $4efa: $47
    sbc [hl]                                      ; $4efb: $9e
    ld d, l                                       ; $4efc: $55
    sbc c                                         ; $4efd: $99
    inc hl                                        ; $4efe: $23
    dec de                                        ; $4eff: $1b
    ld c, b                                       ; $4f00: $48
    db $ec                                        ; $4f01: $ec
    inc [hl]                                      ; $4f02: $34
    inc e                                         ; $4f03: $1c
    ld c, a                                       ; $4f04: $4f
    xor e                                         ; $4f05: $ab
    ld h, a                                       ; $4f06: $67
    sub l                                         ; $4f07: $95
    xor c                                         ; $4f08: $a9
    ld [hl+], a                                   ; $4f09: $22
    xor [hl]                                      ; $4f0a: $ae
    cp b                                          ; $4f0b: $b8
    ld l, $4e                                     ; $4f0c: $2e $4e
    rst $18                                       ; $4f0e: $df
    reti                                          ; $4f0f: $d9


    ld d, a                                       ; $4f10: $57
    ret z                                         ; $4f11: $c8

    db $ec                                        ; $4f12: $ec
    and a                                         ; $4f13: $a7
    ld c, b                                       ; $4f14: $48
    adc [hl]                                      ; $4f15: $8e
    add hl, sp                                    ; $4f16: $39
    and d                                         ; $4f17: $a2
    sbc [hl]                                      ; $4f18: $9e
    pop hl                                        ; $4f19: $e1
    inc l                                         ; $4f1a: $2c
    xor l                                         ; $4f1b: $ad
    ld h, a                                       ; $4f1c: $67
    sub e                                         ; $4f1d: $93
    jp nz, $8d4a                                  ; $4f1e: $c2 $4a $8d

    ret nc                                        ; $4f21: $d0

    ld c, d                                       ; $4f22: $4a
    ld e, b                                       ; $4f23: $58
    add h                                         ; $4f24: $84
    ld l, [hl]                                    ; $4f25: $6e
    rlca                                          ; $4f26: $07
    sub a                                         ; $4f27: $97
    or l                                          ; $4f28: $b5
    ld [de], a                                    ; $4f29: $12
    ld d, $a1                                     ; $4f2a: $16 $a1
    sub l                                         ; $4f2c: $95
    or [hl]                                       ; $4f2d: $b6
    ldh [$ea], a                                  ; $4f2e: $e0 $ea
    inc de                                        ; $4f30: $13
    or h                                          ; $4f31: $b4
    ld a, [c]                                     ; $4f32: $f2
    sbc [hl]                                      ; $4f33: $9e
    ld [hl], b                                    ; $4f34: $70
    ld b, c                                       ; $4f35: $41
    sbc a                                         ; $4f36: $9f
    db $10                                        ; $4f37: $10
    ld hl, $a847                                  ; $4f38: $21 $47 $a8
    ld b, e                                       ; $4f3b: $43
    dec a                                         ; $4f3c: $3d
    ei                                            ; $4f3d: $fb
    rra                                           ; $4f3e: $1f
    ld a, c                                       ; $4f3f: $79
    halt                                          ; $4f40: $76
    xor c                                         ; $4f41: $a9
    scf                                           ; $4f42: $37
    sbc b                                         ; $4f43: $98
    or h                                          ; $4f44: $b4
    dec hl                                        ; $4f45: $2b
    cpl                                           ; $4f46: $2f
    or a                                          ; $4f47: $b7
    ld c, [hl]                                    ; $4f48: $4e
    and e                                         ; $4f49: $a3
    dec c                                         ; $4f4a: $0d
    ld h, c                                       ; $4f4b: $61
    sub h                                         ; $4f4c: $94
    ld [hl], h                                    ; $4f4d: $74
    ld d, l                                       ; $4f4e: $55
    sub $2f                                       ; $4f4f: $d6 $2f
    adc l                                         ; $4f51: $8d
    add [hl]                                      ; $4f52: $86

Call_070_4f53:
    ld h, l                                       ; $4f53: $65

Jump_070_4f54:
    sub l                                         ; $4f54: $95
    db $e3                                        ; $4f55: $e3
    jp z, $ba1d                                   ; $4f56: $ca $1d $ba

    dec e                                         ; $4f59: $1d
    sub a                                         ; $4f5a: $97
    or l                                          ; $4f5b: $b5
    ld [de], a                                    ; $4f5c: $12
    ld d, $a1                                     ; $4f5d: $16 $a1
    call $53bf                                    ; $4f5f: $cd $bf $53
    ld de, $d36e                                  ; $4f62: $11 $6e $d3
    dec [hl]                                      ; $4f65: $35
    jp Jump_070_77a3                              ; $4f66: $c3 $a3 $77


    or $3f                                        ; $4f69: $f6 $3f
    ld a, [c]                                     ; $4f6b: $f2
    ld l, h                                       ; $4f6c: $6c
    db $eb                                        ; $4f6d: $eb
    dec [hl]                                      ; $4f6e: $35
    ld l, b                                       ; $4f6f: $68
    sub e                                         ; $4f70: $93
    xor e                                         ; $4f71: $ab
    ld h, a                                       ; $4f72: $67
    sub l                                         ; $4f73: $95
    ld c, c                                       ; $4f74: $49
    cp e                                          ; $4f75: $bb
    ld a, [c]                                     ; $4f76: $f2
    ld [hl], d                                    ; $4f77: $72
    db $eb                                        ; $4f78: $eb
    inc [hl]                                      ; $4f79: $34
    jp c, Jump_070_4610                           ; $4f7a: $da $10 $46

    ret                                           ; $4f7d: $c9


    ld d, d                                       ; $4f7e: $52
    inc hl                                        ; $4f7f: $23
    xor h                                         ; $4f80: $ac
    ld c, $4b                                     ; $4f81: $0e $4b
    dec hl                                        ; $4f83: $2b
    ld a, [de]                                    ; $4f84: $1a
    adc e                                         ; $4f85: $8b
    call c, $970e                                 ; $4f86: $dc $0e $97
    or l                                          ; $4f89: $b5
    ld [de], a                                    ; $4f8a: $12
    ld d, $a1                                     ; $4f8b: $16 $a1
    dec d                                         ; $4f8d: $15
    pop hl                                        ; $4f8e: $e1
    ld [hl], $5d                                  ; $4f8f: $36 $5d
    sub l                                         ; $4f91: $95
    ld c, c                                       ; $4f92: $49
    cp e                                          ; $4f93: $bb
    ld a, [c]                                     ; $4f94: $f2

Jump_070_4f95:
    ld [hl], d                                    ; $4f95: $72
    db $eb                                        ; $4f96: $eb
    inc [hl]                                      ; $4f97: $34
    ld e, d                                       ; $4f98: $5a
    ccf                                           ; $4f99: $3f
    and $96                                       ; $4f9a: $e6 $96
    pop de                                        ; $4f9c: $d1
    ld e, l                                       ; $4f9d: $5d
    ld [$b979], a                                 ; $4f9e: $ea $79 $b9
    ld d, e                                       ; $4fa1: $53
    sbc e                                         ; $4fa2: $9b
    ld a, a                                       ; $4fa3: $7f
    and a                                         ; $4fa4: $a7
    pop hl                                        ; $4fa5: $e1
    ld a, b                                       ; $4fa6: $78
    cp d                                          ; $4fa7: $ba
    ld [hl+], a                                   ; $4fa8: $22
    ld b, d                                       ; $4fa9: $42
    jp nz, Jump_000_1cca                          ; $4faa: $c2 $ca $1c

    ld c, b                                       ; $4fad: $48
    ret z                                         ; $4fae: $c8

    ld [hl], c                                    ; $4faf: $71
    ld l, d                                       ; $4fb0: $6a
    sub e                                         ; $4fb1: $93
    dec h                                         ; $4fb2: $25
    call c, $03a5                                 ; $4fb3: $dc $a5 $03
    sub a                                         ; $4fb6: $97
    or l                                          ; $4fb7: $b5
    ld [de], a                                    ; $4fb8: $12
    ld d, $a1                                     ; $4fb9: $16 $a1
    adc l                                         ; $4fbb: $8d
    add [hl]                                      ; $4fbc: $86
    xor h                                         ; $4fbd: $ac
    and d                                         ; $4fbe: $a2
    ld sp, $5707                                  ; $4fbf: $31 $07 $57
    db $ec                                        ; $4fc2: $ec
    and a                                         ; $4fc3: $a7
    db $e4                                        ; $4fc4: $e4
    ld d, b                                       ; $4fc5: $50
    add hl, sp                                    ; $4fc6: $39
    ld c, e                                       ; $4fc7: $4b
    ld d, c                                       ; $4fc8: $51
    rst $08                                       ; $4fc9: $cf
    ld a, [hl+]                                   ; $4fca: $2a
    ld d, e                                       ; $4fcb: $53
    ld d, a                                       ; $4fcc: $57
    cp $33                                        ; $4fcd: $fe $33
    rst $00                                       ; $4fcf: $c7
    ld h, b                                       ; $4fd0: $60
    ld e, e                                       ; $4fd1: $5b
    ld d, e                                       ; $4fd2: $53
    cp d                                          ; $4fd3: $ba
    ld l, [hl]                                    ; $4fd4: $6e
    db $db                                        ; $4fd5: $db
    sub $e4                                       ; $4fd6: $d6 $e4
    ret nc                                        ; $4fd8: $d0

    sub b                                         ; $4fd9: $90
    add hl, de                                    ; $4fda: $19
    push af                                       ; $4fdb: $f5
    inc l                                         ; $4fdc: $2c
    cp $d4                                        ; $4fdd: $fe $d4
    ld l, b                                       ; $4fdf: $68
    jp hl                                         ; $4fe0: $e9


    or $1b                                        ; $4fe1: $f6 $1b
    sub a                                         ; $4fe3: $97
    ld c, $97                                     ; $4fe4: $0e $97
    or l                                          ; $4fe6: $b5
    ld [de], a                                    ; $4fe7: $12
    ld d, $a1                                     ; $4fe8: $16 $a1
    ld b, l                                       ; $4fea: $45
    ld [hl], d                                    ; $4feb: $72
    call z, $ae11                                 ; $4fec: $cc $11 $ae
    ld d, e                                       ; $4fef: $53
    adc a                                         ; $4ff0: $8f
    inc a                                         ; $4ff1: $3c
    dec c                                         ; $4ff2: $0d
    inc h                                         ; $4ff3: $24
    ld d, [hl]                                    ; $4ff4: $56
    inc de                                        ; $4ff5: $13
    or h                                          ; $4ff6: $b4
    ld c, $a7                                     ; $4ff7: $0e $a7
    dec b                                         ; $4ff9: $05
    xor l                                         ; $4ffa: $ad
    ld b, h                                       ; $4ffb: $44
    ld d, d                                       ; $4ffc: $52
    ret c                                         ; $4ffd: $d8

    rst $28                                       ; $4ffe: $ef
    call nc, Call_070_4327                        ; $4fff: $d4 $27 $43
    adc [hl]                                      ; $5002: $8e
    inc l                                         ; $5003: $2c
    dec [hl]                                      ; $5004: $35
    or d                                          ; $5005: $b2
    call z, Call_070_7272                         ; $5006: $cc $72 $72
    or h                                          ; $5009: $b4
    cp c                                          ; $500a: $b9
    ld [hl], h                                    ; $500b: $74
    nop                                           ; $500c: $00
    sub a                                         ; $500d: $97
    or l                                          ; $500e: $b5
    ld [de], a                                    ; $500f: $12
    ld d, $a1                                     ; $5010: $16 $a1
    sbc l                                         ; $5012: $9d
    add $b1                                       ; $5013: $c6 $b1
    inc c                                         ; $5015: $0c
    rst $10                                       ; $5016: $d7
    push hl                                       ; $5017: $e5
    ld d, d                                       ; $5018: $52
    ld h, [hl]                                    ; $5019: $66
    rst $28                                       ; $501a: $ef
    db $ec                                        ; $501b: $ec
    sbc a                                         ; $501c: $9f
    sbc c                                         ; $501d: $99
    ld a, c                                       ; $501e: $79
    or h                                          ; $501f: $b4
    ld a, $19                                     ; $5020: $3e $19
    ld [hl], d                                    ; $5022: $72
    ld h, h                                       ; $5023: $64
    xor c                                         ; $5024: $a9
    sub c                                         ; $5025: $91
    ld h, l                                       ; $5026: $65
    sub [hl]                                      ; $5027: $96
    sub e                                         ; $5028: $93
    and e                                         ; $5029: $a3
    call Call_000_0076                            ; $502a: $cd $76 $00
    sub a                                         ; $502d: $97
    or l                                          ; $502e: $b5
    ld [de], a                                    ; $502f: $12
    ld d, $a1                                     ; $5030: $16 $a1
    sub l                                         ; $5032: $95
    or [hl]                                       ; $5033: $b6
    ldh [$9a], a                                  ; $5034: $e0 $9a
    ld e, h                                       ; $5036: $5c
    add l                                         ; $5037: $85
    or b                                          ; $5038: $b0
    or h                                          ; $5039: $b4
    adc e                                         ; $503a: $8b
    and a                                         ; $503b: $a7
    ld [c], a                                     ; $503c: $e2
    ld sp, $fbbb                                  ; $503d: $31 $bb $fb
    rst $08                                       ; $5040: $cf
    ld e, l                                       ; $5041: $5d
    ld d, b                                       ; $5042: $50
    ld de, $336e                                  ; $5043: $11 $6e $33
    ei                                            ; $5046: $fb
    ld l, c                                       ; $5047: $69
    ld [hl], d                                    ; $5048: $72
    ld e, l                                       ; $5049: $5d
    ld a, c                                       ; $504a: $79
    cp c                                          ; $504b: $b9
    ld [hl], l                                    ; $504c: $75
    sbc d                                         ; $504d: $9a
    adc d                                         ; $504e: $8a
    jp nc, $d969                                  ; $504f: $d2 $69 $d9

    and l                                         ; $5052: $a5
    inc bc                                        ; $5053: $03
    sub a                                         ; $5054: $97
    or l                                          ; $5055: $b5
    ld [de], a                                    ; $5056: $12
    ld d, $a1                                     ; $5057: $16 $a1
    sub l                                         ; $5059: $95
    or [hl]                                       ; $505a: $b6
    ldh [$9a], a                                  ; $505b: $e0 $9a
    inc e                                         ; $505d: $1c
    ld [$d7ee], a                                 ; $505e: $ea $ee $d7
    dec h                                         ; $5061: $25
    pop de                                        ; $5062: $d1
    ld b, b                                       ; $5063: $40
    ld h, d                                       ; $5064: $62
    db $fd                                        ; $5065: $fd
    jp nc, Jump_070_5868                          ; $5066: $d2 $68 $58

    dec e                                         ; $5069: $1d
    db $ed                                        ; $506a: $ed
    jp z, $adcb                                   ; $506b: $ca $cb $ad

    db $d3                                        ; $506e: $d3
    xor b                                         ; $506f: $a8
    and b                                         ; $5070: $a0
    ld [hl+], a                                   ; $5071: $22
    call c, $f666                                 ; $5072: $dc $66 $f6
    ld d, e                                       ; $5075: $53
    add hl, sp                                    ; $5076: $39
    xor [hl]                                      ; $5077: $ae
    add c                                         ; $5078: $81
    call nz, $a772                                ; $5079: $c4 $72 $a7
    ld [hl], $a4                                  ; $507c: $36 $a4
    ld c, c                                       ; $507e: $49
    cp b                                          ; $507f: $b8
    ld h, $d7                                     ; $5080: $26 $d7
    sbc b                                         ; $5082: $98
    inc l                                         ; $5083: $2c
    rst $08                                       ; $5084: $cf
    halt                                          ; $5085: $76
    nop                                           ; $5086: $00
    sub a                                         ; $5087: $97
    or l                                          ; $5088: $b5
    ld [de], a                                    ; $5089: $12
    ld d, $a1                                     ; $508a: $16 $a1
    sub l                                         ; $508c: $95
    or [hl]                                       ; $508d: $b6
    ldh [$9a], a                                  ; $508e: $e0 $9a
    inc e                                         ; $5090: $1c
    ld [$d7ee], a                                 ; $5091: $ea $ee $d7
    dec h                                         ; $5094: $25

jr_070_5095:
    pop de                                        ; $5095: $d1
    ld l, b                                       ; $5096: $68
    ret z                                         ; $5097: $c8

    add c                                         ; $5098: $81
    rlca                                          ; $5099: $07
    sub $0e                                       ; $509a: $d6 $0e
    ld b, c                                       ; $509c: $41
    inc bc                                        ; $509d: $03
    adc c                                         ; $509e: $89
    dec d                                         ; $509f: $15
    pop hl                                        ; $50a0: $e1
    halt                                          ; $50a1: $76
    sub e                                         ; $50a2: $93
    db $eb                                        ; $50a3: $eb
    jp z, $adcb                                   ; $50a4: $ca $cb $ad

    db $d3                                        ; $50a7: $d3
    call nc, $b98f                                ; $50a8: $d4 $8f $b9
    ld h, l                                       ; $50ab: $65
    db $db                                        ; $50ac: $db
    ld bc, $b597                                  ; $50ad: $01 $97 $b5
    ld [de], a                                    ; $50b0: $12
    ld d, $a1                                     ; $50b1: $16 $a1
    sub l                                         ; $50b3: $95
    or [hl]                                       ; $50b4: $b6
    ldh [$2a], a                                  ; $50b5: $e0 $2a
    jp c, $a8c7                                   ; $50b7: $da $c7 $a8

    ld [hl], l                                    ; $50ba: $75
    pop bc                                        ; $50bb: $c1
    and a                                         ; $50bc: $a7
    dec h                                         ; $50bd: $25
    and c                                         ; $50be: $a1
    sub l                                         ; $50bf: $95
    db $e3                                        ; $50c0: $e3
    sbc d                                         ; $50c1: $9a
    ld e, h                                       ; $50c2: $5c
    ld h, c                                       ; $50c3: $61
    db $e3                                        ; $50c4: $e3
    ld d, b                                       ; $50c5: $50
    pop af                                        ; $50c6: $f1
    sbc b                                         ; $50c7: $98
    db $dd                                        ; $50c8: $dd
    db $fd                                        ; $50c9: $fd
    rst $20                                       ; $50ca: $e7
    sbc $40                                       ; $50cb: $de $40
    ld h, d                                       ; $50cd: $62
    ld b, e                                       ; $50ce: $43
    jr jr_070_50f6                                ; $50cf: $18 $25

    ld e, l                                       ; $50d1: $5d
    ld hl, $8462                                  ; $50d2: $21 $62 $84
    ld [hl], l                                    ; $50d5: $75
    or h                                          ; $50d6: $b4
    dec hl                                        ; $50d7: $2b
    cpl                                           ; $50d8: $2f
    or a                                          ; $50d9: $b7
    ld c, [hl]                                    ; $50da: $4e
    and e                                         ; $50db: $a3
    sub a                                         ; $50dc: $97
    ld c, $d7                                     ; $50dd: $0e $d7
    ld h, c                                       ; $50df: $61
    sub h                                         ; $50e0: $94
    ld l, h                                       ; $50e1: $6c
    jr nz, jr_070_5095                            ; $50e2: $20 $b1

    ret nc                                        ; $50e4: $d0

    ld c, d                                       ; $50e5: $4a
    ld e, b                                       ; $50e6: $58
    add h                                         ; $50e7: $84
    sub $73                                       ; $50e8: $d6 $73
    db $dd                                        ; $50ea: $dd
    add d                                         ; $50eb: $82
    pop bc                                        ; $50ec: $c1
    ld d, l                                       ; $50ed: $55
    sbc c                                         ; $50ee: $99
    or h                                          ; $50ef: $b4
    dec hl                                        ; $50f0: $2b
    cpl                                           ; $50f1: $2f
    or a                                          ; $50f2: $b7
    ld c, [hl]                                    ; $50f3: $4e
    and e                                         ; $50f4: $a3
    ld [hl], l                                    ; $50f5: $75

jr_070_50f6:
    ld e, b                                       ; $50f6: $58
    jp c, Jump_000_399d                           ; $50f7: $da $9d $39

    adc [hl]                                      ; $50fa: $8e
    ld e, [hl]                                    ; $50fb: $5e
    ld a, [hl-]                                   ; $50fc: $3a
    nop                                           ; $50fd: $00
    scf                                           ; $50fe: $37
    ld b, a                                       ; $50ff: $47
    sbc [hl]                                      ; $5100: $9e
    sub l                                         ; $5101: $95
    ld a, [de]                                    ; $5102: $1a
    add e                                         ; $5103: $83
    xor e                                         ; $5104: $ab
    xor h                                         ; $5105: $ac
    sbc e                                         ; $5106: $9b

jr_070_5107:
    ccf                                           ; $5107: $3f
    or e                                          ; $5108: $b3
    sbc a                                         ; $5109: $9f
    cp d                                          ; $510a: $ba
    or h                                          ; $510b: $b4
    ld [c], a                                     ; $510c: $e2
    ld [hl], h                                    ; $510d: $74
    ld h, a                                       ; $510e: $67
    adc [hl]                                      ; $510f: $8e
    ld [hl], b                                    ; $5110: $70
    call z, $5b91                                 ; $5111: $cc $91 $5b
    cpl                                           ; $5114: $2f
    ld l, e                                       ; $5115: $6b
    dec h                                         ; $5116: $25
    inc l                                         ; $5117: $2c
    ld b, d                                       ; $5118: $42
    db $eb                                        ; $5119: $eb
    ld sp, hl                                     ; $511a: $f9
    and a                                         ; $511b: $a7
    ld l, e                                       ; $511c: $6b
    and h                                         ; $511d: $a4
    ld d, l                                       ; $511e: $55
    ld [hl+], a                                   ; $511f: $22
    add hl, hl                                    ; $5120: $29
    db $fc                                        ; $5121: $fc
    ld [hl], h                                    ; $5122: $74
    ld l, c                                       ; $5123: $69
    sbc h                                         ; $5124: $9c
    ld c, e                                       ; $5125: $4b
    rlca                                          ; $5126: $07
    sub a                                         ; $5127: $97
    or l                                          ; $5128: $b5
    ld [de], a                                    ; $5129: $12
    ld d, $a1                                     ; $512a: $16 $a1
    sub l                                         ; $512c: $95
    or [hl]                                       ; $512d: $b6
    ldh [$9a], a                                  ; $512e: $e0 $9a
    inc e                                         ; $5130: $1c
    ld l, d                                       ; $5131: $6a
    ld hl, sp+$1e                                 ; $5132: $f8 $1e
    ld e, $f5                                     ; $5134: $1e $f5
    db $ec                                        ; $5136: $ec
    sbc a                                         ; $5137: $9f
    add hl, sp                                    ; $5138: $39
    ld c, [hl]                                    ; $5139: $4e
    inc bc                                        ; $513a: $03
    adc c                                         ; $513b: $89
    push de                                       ; $513c: $d5
    add hl, bc                                    ; $513d: $09
    dec c                                         ; $513e: $0d
    ld c, l                                       ; $513f: $4d
    xor [hl]                                      ; $5140: $ae
    sbc [hl]                                      ; $5141: $9e
    ld d, l                                       ; $5142: $55
    ld h, $ed                                     ; $5143: $26 $ed
    jp z, $adcb                                   ; $5145: $ca $cb $ad

    db $d3                                        ; $5148: $d3
    ld l, b                                       ; $5149: $68
    ld b, e                                       ; $514a: $43
    jr jr_070_5107                                ; $514b: $18 $ba

    ld c, a                                       ; $514d: $4f
    ld a, $f1                                     ; $514e: $3e $f1
    jp nc, $9701                                  ; $5150: $d2 $01 $97

    or l                                          ; $5153: $b5
    ld [de], a                                    ; $5154: $12
    ld d, $a1                                     ; $5155: $16 $a1
    adc l                                         ; $5157: $8d
    add [hl]                                      ; $5158: $86
    xor h                                         ; $5159: $ac
    and d                                         ; $515a: $a2
    ld sp, $d707                                  ; $515b: $31 $07 $d7
    db $e4                                        ; $515e: $e4
    ld [$6559], a                                 ; $515f: $ea $59 $65
    jp nc, $bcae                                  ; $5162: $d2 $ae $bc

    call c, $8d3a                                 ; $5165: $dc $3a $8d
    sub [hl]                                      ; $5168: $96
    xor [hl]                                      ; $5169: $ae
    db $db                                        ; $516a: $db
    or [hl]                                       ; $516b: $b6
    dec d                                         ; $516c: $15
    ei                                            ; $516d: $fb
    add hl, hl                                    ; $516e: $29
    add hl, sp                                    ; $516f: $39
    ld d, h                                       ; $5170: $54
    adc $52                                       ; $5171: $ce $52
    ld l, h                                       ; $5173: $6c
    rlca                                          ; $5174: $07
    sub a                                         ; $5175: $97
    or l                                          ; $5176: $b5
    ld [de], a                                    ; $5177: $12
    ld d, $a1                                     ; $5178: $16 $a1
    push af                                       ; $517a: $f5
    inc hl                                        ; $517b: $23
    inc [hl]                                      ; $517c: $34
    cp b                                          ; $517d: $b8
    ld a, [hl+]                                   ; $517e: $2a
    sub e                                         ; $517f: $93
    or $fa                                        ; $5180: $f6 $fa
    ld a, c                                       ; $5182: $79
    ld a, l                                       ; $5183: $7d
    ld [hl-], a                                   ; $5184: $32
    db $e4                                        ; $5185: $e4
    ret z                                         ; $5186: $c8

    ld d, d                                       ; $5187: $52
    inc hl                                        ; $5188: $23
    sra h                                         ; $5189: $cb $2c
    daa                                           ; $518b: $27
    ld b, a                                       ; $518c: $47
    sbc e                                         ; $518d: $9b
    ld c, e                                       ; $518e: $4b
    rlca                                          ; $518f: $07
    sub a                                         ; $5190: $97
    or l                                          ; $5191: $b5
    ld [de], a                                    ; $5192: $12
    ld d, $a1                                     ; $5193: $16 $a1
    call $d14c                                    ; $5195: $cd $4c $d1
    or b                                          ; $5198: $b0
    xor a                                         ; $5199: $af
    db $db                                        ; $519a: $db
    ld [hl], b                                    ; $519b: $70
    dec e                                         ; $519c: $1d
    dec l                                         ; $519d: $2d
    ld b, l                                       ; $519e: $45
    ld e, h                                       ; $519f: $5c
    ld [hl], c                                    ; $51a0: $71
    or h                                          ; $51a1: $b4
    sbc [hl]                                      ; $51a2: $9e
    dec c                                         ; $51a3: $0d
    inc h                                         ; $51a4: $24
    db $ec                                        ; $51a5: $ec
    add c                                         ; $51a6: $81
    ld b, h                                       ; $51a7: $44
    xor e                                         ; $51a8: $ab
    jp $a169                                      ; $51a9: $c3 $69 $a1


    sub e                                         ; $51ac: $93
    ld a, [$6667]                                 ; $51ad: $fa $67 $66
    sbc [hl]                                      ; $51b0: $9e
    ld b, $12                                     ; $51b1: $06 $12
    ld c, e                                       ; $51b3: $4b
    adc l                                         ; $51b4: $8d
    db $fc                                        ; $51b5: $fc
    ld e, $ae                                     ; $51b6: $1e $ae
    db $10                                        ; $51b8: $10
    ld sp, $fb22                                  ; $51b9: $31 $22 $fb
    jp hl                                         ; $51bc: $e9


    ld a, a                                       ; $51bd: $7f
    db $e4                                        ; $51be: $e4
    reti                                          ; $51bf: $d9


    and l                                         ; $51c0: $a5
    inc bc                                        ; $51c1: $03
    sub a                                         ; $51c2: $97
    or l                                          ; $51c3: $b5
    ld [de], a                                    ; $51c4: $12
    ld d, $a1                                     ; $51c5: $16 $a1
    ld e, l                                       ; $51c7: $5d
    or $3b                                        ; $51c8: $f6 $3b
    push bc                                       ; $51ca: $c5
    rst $30                                       ; $51cb: $f7
    ret                                           ; $51cc: $c9


    rlca                                          ; $51cd: $07
    ccf                                           ; $51ce: $3f
    or c                                          ; $51cf: $b1
    ld c, a                                       ; $51d0: $4f
    ld d, c                                       ; $51d1: $51
    add hl, sp                                    ; $51d2: $39
    ld e, c                                       ; $51d3: $59
    ld a, c                                       ; $51d4: $79
    ld c, d                                       ; $51d5: $4a
    res 5, d                                      ; $51d6: $cb $aa
    ld c, e                                       ; $51d8: $4b
    xor $d4                                       ; $51d9: $ee $d4
    ld a, d                                       ; $51db: $7a
    ld [hl], $34                                  ; $51dc: $36 $34
    ld b, h                                       ; $51de: $44
    ld e, h                                       ; $51df: $5c
    ld a, [hl-]                                   ; $51e0: $3a
    nop                                           ; $51e1: $00
    sub a                                         ; $51e2: $97
    or l                                          ; $51e3: $b5
    ld [de], a                                    ; $51e4: $12
    ld d, $a1                                     ; $51e5: $16 $a1
    sbc l                                         ; $51e7: $9d
    ld b, [hl]                                    ; $51e8: $46
    ld b, e                                       ; $51e9: $43
    ld d, [hl]                                    ; $51ea: $56
    pop de                                        ; $51eb: $d1
    sbc b                                         ; $51ec: $98
    add e                                         ; $51ed: $83
    dec hl                                        ; $51ee: $2b
    ld e, l                                       ; $51ef: $5d
    sub e                                         ; $51f0: $93
    ld b, e                                       ; $51f1: $43
    sub a                                         ; $51f2: $97
    ld c, d                                       ; $51f3: $4a
    call nc, Call_070_6eb3                        ; $51f4: $d4 $b3 $6e
    or d                                          ; $51f7: $b2
    ld b, [hl]                                    ; $51f8: $46
    sbc e                                         ; $51f9: $9b

jr_070_51fa:
    xor l                                         ; $51fa: $ad
    scf                                           ; $51fb: $37
    ld b, a                                       ; $51fc: $47
    sbc [hl]                                      ; $51fd: $9e
    dec [hl]                                      ; $51fe: $35
    jp nc, $eb82                                  ; $51ff: $d2 $82 $eb

    or b                                          ; $5202: $b0
    or h                                          ; $5203: $b4
    call z, Call_070_7272                         ; $5204: $cc $72 $72
    or h                                          ; $5207: $b4
    pop de                                        ; $5208: $d1
    ld b, $12                                     ; $5209: $06 $12
    dec sp                                        ; $520b: $3b
    call Call_000_0e63                            ; $520c: $cd $63 $0e
    ld a, e                                       ; $520f: $7b
    jp Jump_070_62b1                              ; $5210: $c3 $b1 $62


    ccf                                           ; $5213: $3f
    dec h                                         ; $5214: $25
    rst $10                                       ; $5215: $d7
    ld c, b                                       ; $5216: $48
    rla                                           ; $5217: $17
    adc $76                                       ; $5218: $ce $76
    nop                                           ; $521a: $00
    sub a                                         ; $521b: $97
    or l                                          ; $521c: $b5
    ld [de], a                                    ; $521d: $12
    ld d, $a1                                     ; $521e: $16 $a1
    ld h, l                                       ; $5220: $65
    cp $2f                                        ; $5221: $fe $2f
    cp b                                          ; $5223: $b8
    ld h, $87                                     ; $5224: $26 $87
    ld a, [$5125]                                 ; $5226: $fa $25 $51
    rst $08                                       ; $5229: $cf
    ld a, [hl+]                                   ; $522a: $2a
    ld d, e                                       ; $522b: $53
    ld b, e                                       ; $522c: $43
    cp e                                          ; $522d: $bb
    rst $20                                       ; $522e: $e7
    sub $72                                       ; $522f: $d6 $72
    ld d, e                                       ; $5231: $53
    scf                                           ; $5232: $37
    rst $38                                       ; $5233: $ff
    push hl                                       ; $5234: $e5
    sbc b                                         ; $5235: $98
    db $e3                                        ; $5236: $e3
    db $f4                                        ; $5237: $f4
    adc $26                                       ; $5238: $ce $26
    ld d, a                                       ; $523a: $57
    ccf                                           ; $523b: $3f
    jp c, $9795                                   ; $523c: $da $95 $97

    ld e, e                                       ; $523f: $5b
    and a                                         ; $5240: $a7
    ld d, c                                       ; $5241: $51
    ld b, c                                       ; $5242: $41
    dec e                                         ; $5243: $1d
    ld [hl], a                                    ; $5244: $77
    pop af                                        ; $5245: $f1
    jr jr_070_51fa                                ; $5246: $18 $b2

    sbc a                                         ; $5248: $9f
    ld l, d                                       ; $5249: $6a
    ld b, d                                       ; $524a: $42
    dec a                                         ; $524b: $3d
    ld b, l                                       ; $524c: $45
    ld d, h                                       ; $524d: $54
    ld d, h                                       ; $524e: $54
    ld c, [hl]                                    ; $524f: $4e
    adc [hl]                                      ; $5250: $8e
    add [hl]                                      ; $5251: $86
    ld a, [hl+]                                   ; $5252: $2a
    sub e                                         ; $5253: $93
    ld d, $11                                     ; $5254: $16 $11
    add c                                         ; $5256: $81
    ld b, h                                       ; $5257: $44
    db $dd                                        ; $5258: $dd
    ld c, $97                                     ; $5259: $0e $97
    or l                                          ; $525b: $b5
    ld [de], a                                    ; $525c: $12
    ld d, $a1                                     ; $525d: $16 $a1
    dec [hl]                                      ; $525f: $35
    cp $b9                                        ; $5260: $fe $b9
    jp $1a75                                      ; $5262: $c3 $75 $1a


    ld c, [hl]                                    ; $5265: $4e
    adc [hl]                                      ; $5266: $8e
    ld d, e                                       ; $5267: $53
    sub c                                         ; $5268: $91
    ld b, c                                       ; $5269: $41
    ld c, [hl]                                    ; $526a: $4e
    dec a                                         ; $526b: $3d
    xor e                                         ; $526c: $ab
    ld c, h                                       ; $526d: $4c
    ld e, l                                       ; $526e: $5d
    ld a, c                                       ; $526f: $79
    cp c                                          ; $5270: $b9
    ld [hl], l                                    ; $5271: $75
    ld a, [de]                                    ; $5272: $1a
    ld b, c                                       ; $5273: $41
    db $e3                                        ; $5274: $e3
    ld e, b                                       ; $5275: $58
    ld b, [hl]                                    ; $5276: $46
    or $53                                        ; $5277: $f6 $53
    ld h, l                                       ; $5279: $65
    jp nc, Jump_000_2222                          ; $527a: $d2 $22 $22

    sub b                                         ; $527d: $90
    xor b                                         ; $527e: $a8
    ld [hl], l                                    ; $527f: $75
    ld e, b                                       ; $5280: $58
    ld e, d                                       ; $5281: $5a
    adc d                                         ; $5282: $8a
    sub [hl]                                      ; $5283: $96
    ld e, h                                       ; $5284: $5c
    call z, $ba91                                 ; $5285: $cc $91 $ba
    dec e                                         ; $5288: $1d
    sub a                                         ; $5289: $97
    or l                                          ; $528a: $b5
    ld [de], a                                    ; $528b: $12
    ld d, $a1                                     ; $528c: $16 $a1
    dec [hl]                                      ; $528e: $35
    ld l, d                                       ; $528f: $6a
    ld b, h                                       ; $5290: $44
    ld [hl-], a                                   ; $5291: $32
    cp b                                          ; $5292: $b8
    ld a, [hl+]                                   ; $5293: $2a
    sub e                                         ; $5294: $93
    or $fa                                        ; $5295: $f6 $fa
    or l                                          ; $5297: $b5
    ld h, d                                       ; $5298: $62
    ld [$6f82], a                                 ; $5299: $ea $82 $6f
    dec l                                         ; $529c: $2d
    scf                                           ; $529d: $37
    sub a                                         ; $529e: $97
    ld c, $97                                     ; $529f: $0e $97
    or l                                          ; $52a1: $b5
    ld [de], a                                    ; $52a2: $12
    ld d, $a1                                     ; $52a3: $16 $a1
    dec [hl]                                      ; $52a5: $35
    cp d                                          ; $52a6: $ba
    ld sp, hl                                     ; $52a7: $f9
    db $d3                                        ; $52a8: $d3
    dec [hl]                                      ; $52a9: $35
    sub b                                         ; $52aa: $90
    or b                                          ; $52ab: $b0
    rlca                                          ; $52ac: $07
    ld [de], a                                    ; $52ad: $12
    xor l                                         ; $52ae: $ad
    inc d                                         ; $52af: $14
    ld [hl], c                                    ; $52b0: $71
    push bc                                       ; $52b1: $c5
    xor c                                         ; $52b2: $a9
    dec bc                                        ; $52b3: $0b
    ld a, $2d                                     ; $52b4: $3e $2d
    add hl, sp                                    ; $52b6: $39
    add d                                         ; $52b7: $82
    ld a, [bc]                                    ; $52b8: $0a
    sbc c                                         ; $52b9: $99
    cpl                                           ; $52ba: $2f
    adc b                                         ; $52bb: $88
    sub [hl]                                      ; $52bc: $96
    sbc h                                         ; $52bd: $9c
    ld c, [hl]                                    ; $52be: $4e
    ld l, d                                       ; $52bf: $6a
    ld l, b                                       ; $52c0: $68
    db $fc                                        ; $52c1: $fc
    ld a, $f9                                     ; $52c2: $3e $f9
    dec h                                         ; $52c4: $25
    rla                                           ; $52c5: $17
    halt                                          ; $52c6: $76
    ld b, c                                       ; $52c7: $41
    ld [hl], a                                    ; $52c8: $77
    db $e4                                        ; $52c9: $e4
    adc e                                         ; $52ca: $8b
    ldh a, [rHDMA3]                               ; $52cb: $f0 $53
    cp d                                          ; $52cd: $ba
    cp $47                                        ; $52ce: $fe $47
    sbc [hl]                                      ; $52d0: $9e

Jump_070_52d1:
    dec d                                         ; $52d1: $15
    add hl, sp                                    ; $52d2: $39
    jp nc, $98d6                                  ; $52d3: $d2 $d6 $98

    ld h, e                                       ; $52d6: $63
    adc [hl]                                      ; $52d7: $8e
    call c, $970e                                 ; $52d8: $dc $0e $97
    or l                                          ; $52db: $b5

Jump_070_52dc:
    ld [de], a                                    ; $52dc: $12
    ld d, $a1                                     ; $52dd: $16 $a1
    sub l                                         ; $52df: $95
    ret                                           ; $52e0: $c9


    ldh [rNR30], a                                ; $52e1: $e0 $1a
    rst $00                                       ; $52e3: $c7
    adc a                                         ; $52e4: $8f
    halt                                          ; $52e5: $76
    or h                                          ; $52e6: $b4
    jp z, $15a4                                   ; $52e7: $ca $a4 $15

    pop de                                        ; $52ea: $d1
    sub [hl]                                      ; $52eb: $96
    ld h, e                                       ; $52ec: $63
    adc [hl]                                      ; $52ed: $8e
    and e                                         ; $52ee: $a3

jr_070_52ef:
    ld h, l                                       ; $52ef: $65
    adc l                                         ; $52f0: $8d
    ld a, [de]                                    ; $52f1: $1a
    sub c                                         ; $52f2: $91
    inc c                                         ; $52f3: $0c
    xor [hl]                                      ; $52f4: $ae
    jp z, $bda4                                   ; $52f5: $ca $a4 $bd

    ld a, [hl]                                    ; $52f8: $7e
    ld e, [hl]                                    ; $52f9: $5e
    ld c, h                                       ; $52fa: $4c
    ld e, l                                       ; $52fb: $5d
    ldh a, [$ad]                                  ; $52fc: $f0 $ad
    push hl                                       ; $52fe: $e5
    and $d2                                       ; $52ff: $e6 $d2

jr_070_5301:
    ld bc, $b597                                  ; $5301: $01 $97 $b5
    ld [de], a                                    ; $5304: $12
    ld d, $a1                                     ; $5305: $16 $a1
    push af                                       ; $5307: $f5
    inc [hl]                                      ; $5308: $34
    cp b                                          ; $5309: $b8
    add [hl]                                      ; $530a: $86
    jr nc, jr_070_5301                            ; $530b: $30 $f4

    ccf                                           ; $530d: $3f
    ld a, [c]                                     ; $530e: $f2
    xor h                                         ; $530f: $ac
    db $db                                        ; $5310: $db
    or [hl]                                       ; $5311: $b6
    dec [hl]                                      ; $5312: $35
    cp c                                          ; $5313: $b9
    sbc [hl]                                      ; $5314: $9e
    ld [de], a                                    ; $5315: $12
    call z, $09e3                                 ; $5316: $cc $e3 $09
    add hl, hl                                    ; $5319: $29
    ld c, [hl]                                    ; $531a: $4e
    ld a, a                                       ; $531b: $7f
    cp h                                          ; $531c: $bc
    ld [hl], c                                    ; $531d: $71
    jp hl                                         ; $531e: $e9


    nop                                           ; $531f: $00
    sub a                                         ; $5320: $97
    dec de                                        ; $5321: $1b
    ld c, b                                       ; $5322: $48
    ret z                                         ; $5323: $c8

    ld [hl], c                                    ; $5324: $71
    ld a, c                                       ; $5325: $79
    ld a, b                                       ; $5326: $78
    sub $b3                                       ; $5327: $d6 $b3
    rst $10                                       ; $5329: $d7
    xor a                                         ; $532a: $af
    dec [hl]                                      ; $532b: $35
    ld d, e                                       ; $532c: $53
    ld d, d                                       ; $532d: $52
    dec [hl]                                      ; $532e: $35
    ret c                                         ; $532f: $d8

    sub $68                                       ; $5330: $d6 $68
    ld b, e                                       ; $5332: $43
    jr jr_070_52ef                                ; $5333: $18 $ba

    inc hl                                        ; $5335: $23
    ld e, a                                       ; $5336: $5f
    add h                                         ; $5337: $84
    dec [hl]                                      ; $5338: $35
    cp c                                          ; $5339: $b9
    adc d                                         ; $533a: $8a
    cp b                                          ; $533b: $b8
    ld [c], a                                     ; $533c: $e2
    cp d                                          ; $533d: $ba
    jr c, @-$41                                   ; $533e: $38 $bd

    ld d, b                                       ; $5340: $50
    and e                                         ; $5341: $a3
    ld c, a                                       ; $5342: $4f
    or a                                          ; $5343: $b7
    sub a                                         ; $5344: $97
    sbc a                                         ; $5345: $9f
    add [hl]                                      ; $5346: $86
    jr nc, jr_070_535d                            ; $5347: $30 $14

    ld [hl], l                                    ; $5349: $75
    adc h                                         ; $534a: $8c
    ldh a, [$bc]                                  ; $534b: $f0 $bc
    ld [hl], h                                    ; $534d: $74
    nop                                           ; $534e: $00
    sub a                                         ; $534f: $97
    or l                                          ; $5350: $b5
    ld [de], a                                    ; $5351: $12
    ld d, $a1                                     ; $5352: $16 $a1
    ld h, l                                       ; $5354: $65
    ld d, $71                                     ; $5355: $16 $71
    push bc                                       ; $5357: $c5
    ld [hl], l                                    ; $5358: $75
    ld de, $c9ae                                  ; $5359: $11 $ae $c9
    push de                                       ; $535c: $d5

jr_070_535d:
    adc a                                         ; $535d: $8f
    halt                                          ; $535e: $76
    push hl                                       ; $535f: $e5
    push hl                                       ; $5360: $e5
    sub $69                                       ; $5361: $d6 $69
    or h                                          ; $5363: $b4
    ld hl, $0d0c                                  ; $5364: $21 $0c $0d
    inc h                                         ; $5367: $24
    ld d, [hl]                                    ; $5368: $56
    sbc c                                         ; $5369: $99
    or h                                          ; $536a: $b4
    adc b                                         ; $536b: $88
    ld [$6a24], sp                                ; $536c: $08 $24 $6a
    ld b, l                                       ; $536f: $45
    ld [hl], a                                    ; $5370: $77

Jump_070_5371:
    db $eb                                        ; $5371: $eb
    sub d                                         ; $5372: $92
    and e                                         ; $5373: $a3
    sub l                                         ; $5374: $95
    ret                                           ; $5375: $c9


    add sp, -$06                                  ; $5376: $e8 $fa
    rra                                           ; $5378: $1f
    ld a, c                                       ; $5379: $79
    halt                                          ; $537a: $76
    jp hl                                         ; $537b: $e9


    nop                                           ; $537c: $00
    sub a                                         ; $537d: $97
    or l                                          ; $537e: $b5
    ld [de], a                                    ; $537f: $12
    ld d, $a1                                     ; $5380: $16 $a1
    dec d                                         ; $5382: $15
    pop hl                                        ; $5383: $e1
    ld [hl], $5d                                  ; $5384: $36 $5d
    rst $38                                       ; $5386: $ff
    inc hl                                        ; $5387: $23
    rst $08                                       ; $5388: $cf
    xor d                                         ; $5389: $aa

Jump_070_538a:
    ld c, c                                       ; $538a: $49
    cp b                                          ; $538b: $b8
    xor h                                         ; $538c: $ac
    sbc [hl]                                      ; $538d: $9e
    call $ff77                                    ; $538e: $cd $77 $ff
    cp c                                          ; $5391: $b9
    ld e, a                                       ; $5392: $5f
    ld [$46b9], a                                 ; $5393: $ea $b9 $46
    ld d, h                                       ; $5396: $54
    adc [hl]                                      ; $5397: $8e
    inc de                                        ; $5398: $13
    xor [hl]                                      ; $5399: $ae
    adc h                                         ; $539a: $8c
    adc e                                         ; $539b: $8b
    cp a                                          ; $539c: $bf
    ld d, e                                       ; $539d: $53
    ld d, c                                       ; $539e: $51
    jp z, $4d72                                   ; $539f: $ca $72 $4d

    ld b, [hl]                                    ; $53a2: $46
    ld de, $4332                                  ; $53a3: $11 $32 $43
    sbc e                                         ; $53a6: $9b
    inc e                                         ; $53a7: $1c
    ld a, [$ede7]                                 ; $53a8: $fa $e7 $ed
    db $ed                                        ; $53ab: $ed

jr_070_53ac:
    nop                                           ; $53ac: $00
    sub a                                         ; $53ad: $97
    or l                                          ; $53ae: $b5
    ld [de], a                                    ; $53af: $12
    ld d, $a1                                     ; $53b0: $16 $a1
    push af                                       ; $53b2: $f5
    inc [hl]                                      ; $53b3: $34
    cp b                                          ; $53b4: $b8
    add [hl]                                      ; $53b5: $86
    jr nc, jr_070_53ac                            ; $53b6: $30 $f4

    ccf                                           ; $53b8: $3f
    ld a, [c]                                     ; $53b9: $f2
    xor h                                         ; $53ba: $ac
    ret                                           ; $53bb: $c9


    dec d                                         ; $53bc: $15
    ret                                           ; $53bd: $c9


    ld sp, $69c7                                  ; $53be: $31 $c7 $69
    ld c, b                                       ; $53c1: $48
    ld [hl], e                                    ; $53c2: $73
    ret z                                         ; $53c3: $c8

    call z, $f591                                 ; $53c4: $cc $91 $f5
    xor h                                         ; $53c7: $ac
    ld [hl-], a                                   ; $53c8: $32
    ld l, c                                       ; $53c9: $69
    xor a                                         ; $53ca: $af
    sbc a                                         ; $53cb: $9f
    ld e, a                                       ; $53cc: $5f
    ld [$46b9], a                                 ; $53cd: $ea $b9 $46
    ld d, h                                       ; $53d0: $54
    adc [hl]                                      ; $53d1: $8e
    inc de                                        ; $53d2: $13
    xor [hl]                                      ; $53d3: $ae
    adc h                                         ; $53d4: $8c
    adc e                                         ; $53d5: $8b
    cp a                                          ; $53d6: $bf
    ld d, e                                       ; $53d7: $53
    ld d, c                                       ; $53d8: $51
    jp z, $4d72                                   ; $53d9: $ca $72 $4d

    ld b, [hl]                                    ; $53dc: $46
    ld de, $4332                                  ; $53dd: $11 $32 $43
    sbc e                                         ; $53e0: $9b
    inc e                                         ; $53e1: $1c
    ld a, [$ede7]                                 ; $53e2: $fa $e7 $ed
    db $ed                                        ; $53e5: $ed

jr_070_53e6:
    nop                                           ; $53e6: $00
    sub a                                         ; $53e7: $97
    or l                                          ; $53e8: $b5
    ld [de], a                                    ; $53e9: $12
    ld d, $a1                                     ; $53ea: $16 $a1
    push af                                       ; $53ec: $f5
    inc [hl]                                      ; $53ed: $34
    cp b                                          ; $53ee: $b8
    add [hl]                                      ; $53ef: $86
    jr nc, jr_070_53e6                            ; $53f0: $30 $f4

    ccf                                           ; $53f2: $3f
    ld a, [c]                                     ; $53f3: $f2
    xor h                                         ; $53f4: $ac
    ret                                           ; $53f5: $c9


    dec d                                         ; $53f6: $15
    ret                                           ; $53f7: $c9


    ld sp, $69c7                                  ; $53f8: $31 $c7 $69
    ld c, b                                       ; $53fb: $48
    ld [hl], e                                    ; $53fc: $73
    ret z                                         ; $53fd: $c8

    call z, $f591                                 ; $53fe: $cc $91 $f5
    xor h                                         ; $5401: $ac
    ld [hl-], a                                   ; $5402: $32
    ld l, c                                       ; $5403: $69
    xor a                                         ; $5404: $af
    ld e, a                                       ; $5405: $5f
    cp e                                          ; $5406: $bb
    call nc, $8d73                                ; $5407: $d4 $73 $8d
    xor b                                         ; $540a: $a8
    inc e                                         ; $540b: $1c
    daa                                           ; $540c: $27
    ld e, h                                       ; $540d: $5c
    add hl, de                                    ; $540e: $19
    rla                                           ; $540f: $17
    ld a, a                                       ; $5410: $7f
    and a                                         ; $5411: $a7
    and d                                         ; $5412: $a2
    sub h                                         ; $5413: $94
    push hl                                       ; $5414: $e5
    sbc d                                         ; $5415: $9a
    adc h                                         ; $5416: $8c
    ld [hl+], a                                   ; $5417: $22
    ld h, h                                       ; $5418: $64
    add [hl]                                      ; $5419: $86
    ld [hl], $39                                  ; $541a: $36 $39
    db $f4                                        ; $541c: $f4
    rst $08                                       ; $541d: $cf
    db $db                                        ; $541e: $db
    db $db                                        ; $541f: $db
    ld bc, $4737                                  ; $5420: $01 $37 $47
    sbc [hl]                                      ; $5423: $9e
    dec [hl]                                      ; $5424: $35
    and h                                         ; $5425: $a4
    ld a, c                                       ; $5426: $79
    and [hl]                                      ; $5427: $a6
    add $f1                                       ; $5428: $c6 $f1
    and e                                         ; $542a: $a3
    dec e                                         ; $542b: $1d
    xor l                                         ; $542c: $ad
    ld [hl-], a                                   ; $542d: $32
    ld l, c                                       ; $542e: $69
    xor a                                         ; $542f: $af
    ld e, a                                       ; $5430: $5f
    cp e                                          ; $5431: $bb
    call nc, Call_000_124f                        ; $5432: $d4 $4f $12
    dec hl                                        ; $5435: $2b
    ld e, $b3                                     ; $5436: $1e $b3
    or c                                          ; $5438: $b1
    ld c, e                                       ; $5439: $4b
    db $fd                                        ; $543a: $fd
    inc h                                         ; $543b: $24
    or c                                          ; $543c: $b1
    ld [c], a                                     ; $543d: $e2
    ld sp, $bb1b                                  ; $543e: $31 $1b $bb
    ld [hl], h                                    ; $5441: $74
    nop                                           ; $5442: $00
    sub a                                         ; $5443: $97
    or l                                          ; $5444: $b5
    ld [de], a                                    ; $5445: $12
    ld d, $a1                                     ; $5446: $16 $a1
    dec [hl]                                      ; $5448: $35
    ld l, d                                       ; $5449: $6a
    ld b, h                                       ; $544a: $44
    ld [hl-], a                                   ; $544b: $32
    cp b                                          ; $544c: $b8
    ld a, [hl+]                                   ; $544d: $2a
    sub e                                         ; $544e: $93
    or $fa                                        ; $544f: $f6 $fa
    ld a, c                                       ; $5451: $79
    reti                                          ; $5452: $d9


    db $eb                                        ; $5453: $eb
    rst $10                                       ; $5454: $d7
    adc d                                         ; $5455: $8a
    xor c                                         ; $5456: $a9
    dec bc                                        ; $5457: $0b
    cp [hl]                                       ; $5458: $be
    or l                                          ; $5459: $b5
    call c, Call_000_3a5c                         ; $545a: $dc $5c $3a
    nop                                           ; $545d: $00
    scf                                           ; $545e: $37
    ld b, a                                       ; $545f: $47
    sbc [hl]                                      ; $5460: $9e
    ld d, l                                       ; $5461: $55

Jump_070_5462:
    sbc c                                         ; $5462: $99
    inc hl                                        ; $5463: $23
    dec de                                        ; $5464: $1b
    ld c, b                                       ; $5465: $48
    ld l, h                                       ; $5466: $6c
    ld h, [hl]                                    ; $5467: $66
    ld d, $27                                     ; $5468: $16 $27
    ld d, a                                       ; $546a: $57
    ld de, $5c57                                  ; $546b: $11 $57 $5c
    rla                                           ; $546e: $17
    and a                                         ; $546f: $a7
    pop hl                                        ; $5470: $e1
    ld a, b                                       ; $5471: $78
    ld d, $22                                     ; $5472: $16 $22
    add $e0                                       ; $5474: $c6 $e0
    daa                                           ; $5476: $27
    or $a9                                        ; $5477: $f6 $a9
    ld c, a                                       ; $5479: $4f
    add [hl]                                      ; $547a: $86
    inc e                                         ; $547b: $1c
    ld e, c                                       ; $547c: $59
    ld l, d                                       ; $547d: $6a
    ld h, h                                       ; $547e: $64
    sbc c                                         ; $547f: $99

jr_070_5480:
    push hl                                       ; $5480: $e5
    db $e4                                        ; $5481: $e4
    ld l, b                                       ; $5482: $68
    ld [hl], e                                    ; $5483: $73
    jp hl                                         ; $5484: $e9


    nop                                           ; $5485: $00
    sub a                                         ; $5486: $97
    or l                                          ; $5487: $b5
    ld [de], a                                    ; $5488: $12
    ld d, $a1                                     ; $5489: $16 $a1
    sbc l                                         ; $548b: $9d
    add $b1                                       ; $548c: $c6 $b1
    inc c                                         ; $548e: $0c
    rst $10                                       ; $548f: $d7
    push hl                                       ; $5490: $e5
    ld d, d                                       ; $5491: $52
    ld h, [hl]                                    ; $5492: $66
    pop de                                        ; $5493: $d1
    ld b, b                                       ; $5494: $40
    jp nz, Jump_070_481e                          ; $5495: $c2 $1e $48

    or h                                          ; $5498: $b4
    ld [hl+], a                                   ; $5499: $22
    ld [hl+], a                                   ; $549a: $22
    sub b                                         ; $549b: $90
    ld e, b                                       ; $549c: $58
    pop de                                        ; $549d: $d1
    db $dd                                        ; $549e: $dd
    cp d                                          ; $549f: $ba
    db $e4                                        ; $54a0: $e4
    call nc, Call_070_4327                        ; $54a1: $d4 $27 $43
    adc [hl]                                      ; $54a4: $8e
    inc l                                         ; $54a5: $2c
    dec [hl]                                      ; $54a6: $35
    or d                                          ; $54a7: $b2
    call z, Call_070_7272                         ; $54a8: $cc $72 $72
    or h                                          ; $54ab: $b4
    cp c                                          ; $54ac: $b9
    ld [hl], h                                    ; $54ad: $74
    nop                                           ; $54ae: $00
    ld l, a                                       ; $54af: $6f
    inc sp                                        ; $54b0: $33
    sbc h                                         ; $54b1: $9c
    and l                                         ; $54b2: $a5
    push af                                       ; $54b3: $f5
    xor h                                         ; $54b4: $ac
    inc e                                         ; $54b5: $1c
    daa                                           ; $54b6: $27
    ld e, h                                       ; $54b7: $5c
    add hl, de                                    ; $54b8: $19
    ld d, [hl]                                    ; $54b9: $56
    ld l, d                                       ; $54ba: $6a
    add h                                         ; $54bb: $84
    ld d, [hl]                                    ; $54bc: $56
    jp nz, $5422                                  ; $54bd: $c2 $22 $54

    ret nc                                        ; $54c0: $d0

    rst $38                                       ; $54c1: $ff
    ret z                                         ; $54c2: $c8

    or e                                          ; $54c3: $b3
    ld b, [hl]                                    ; $54c4: $46
    cp d                                          ; $54c5: $ba
    and d                                         ; $54c6: $a2
    res 0, l                                      ; $54c7: $cb $85
    ld b, [hl]                                    ; $54c9: $46
    push de                                       ; $54ca: $d5
    rst $18                                       ; $54cb: $df
    ld l, c                                       ; $54cc: $69
    jr nz, jr_070_5480                            ; $54cd: $20 $b1

    jp z, Jump_070_5da4                           ; $54cf: $ca $a4 $5d

    ld a, c                                       ; $54d2: $79
    cp c                                          ; $54d3: $b9
    ld [hl], l                                    ; $54d4: $75
    ld a, [de]                                    ; $54d5: $1a
    dec l                                         ; $54d6: $2d
    dec [hl]                                      ; $54d7: $35
    cp $4e                                        ; $54d8: $fe $4e
    ld e, l                                       ; $54da: $5d
    ld e, d                                       ; $54db: $5a
    ld [hl], c                                    ; $54dc: $71
    inc b                                         ; $54dd: $04
    ld [hl], l                                    ; $54de: $75
    ld l, c                                       ; $54df: $69
    push bc                                       ; $54e0: $c5
    xor c                                         ; $54e1: $a9
    ret z                                         ; $54e2: $c8

    jr nz, jr_070_552c                            ; $54e3: $20 $47

    cp e                                          ; $54e5: $bb
    ld l, l                                       ; $54e6: $6d
    db $db                                        ; $54e7: $db
    ld bc, $336f                                  ; $54e8: $01 $6f $33
    sbc h                                         ; $54eb: $9c
    and l                                         ; $54ec: $a5
    push af                                       ; $54ed: $f5
    xor h                                         ; $54ee: $ac
    inc e                                         ; $54ef: $1c
    daa                                           ; $54f0: $27
    ld e, h                                       ; $54f1: $5c
    add hl, de                                    ; $54f2: $19
    ld d, [hl]                                    ; $54f3: $56
    ld l, d                                       ; $54f4: $6a
    add h                                         ; $54f5: $84
    ld d, [hl]                                    ; $54f6: $56
    jp nz, $5422                                  ; $54f7: $c2 $22 $54

    ret nc                                        ; $54fa: $d0

    rst $38                                       ; $54fb: $ff
    ret z                                         ; $54fc: $c8

    or e                                          ; $54fd: $b3
    ld a, [hl+]                                   ; $54fe: $2a
    ld [hl], e                                    ; $54ff: $73
    ld h, h                                       ; $5500: $64
    inc bc                                        ; $5501: $03
    adc c                                         ; $5502: $89
    dec c                                         ; $5503: $0d
    inc h                                         ; $5504: $24
    db $ec                                        ; $5505: $ec
    add c                                         ; $5506: $81
    ld b, h                                       ; $5507: $44
    xor e                                         ; $5508: $ab
    adc b                                         ; $5509: $88
    dec hl                                        ; $550a: $2b
    xor [hl]                                      ; $550b: $ae
    adc e                                         ; $550c: $8b
    db $d3                                        ; $550d: $d3
    ld b, b                                       ; $550e: $40
    ld h, d                                       ; $550f: $62
    ld [hl], a                                    ; $5510: $77
    db $e4                                        ; $5511: $e4
    adc e                                         ; $5512: $8b
    or b                                          ; $5513: $b0
    ld a, [hl+]                                   ; $5514: $2a
    dec l                                         ; $5515: $2d
    cp b                                          ; $5516: $b8
    ld l, $ad                                     ; $5517: $2e $ad
    jr c, @+$77                                   ; $5519: $38 $75

    ld e, b                                       ; $551b: $58
    ld e, d                                       ; $551c: $5a
    pop de                                        ; $551d: $d1
    ld e, b                                       ; $551e: $58
    db $e4                                        ; $551f: $e4
    and l                                         ; $5520: $a5
    inc bc                                        ; $5521: $03
    sub a                                         ; $5522: $97
    or l                                          ; $5523: $b5
    ld [de], a                                    ; $5524: $12
    ld d, $a1                                     ; $5525: $16 $a1
    ld b, l                                       ; $5527: $45
    ld [hl], d                                    ; $5528: $72
    call z, $ae11                                 ; $5529: $cc $11 $ae

jr_070_552c:
    and e                                         ; $552c: $a3
    push af                                       ; $552d: $f5
    ret z                                         ; $552e: $c8

    and e                                         ; $552f: $a3
    sub l                                         ; $5530: $95
    ld c, b                                       ; $5531: $48

Call_070_5532:
    ld a, [bc]                                    ; $5532: $0a
    ccf                                           ; $5533: $3f
    jp c, $ac70                                   ; $5534: $da $70 $ac

    rst $38                                       ; $5537: $ff
    sub c                                         ; $5538: $91
    ld h, a                                       ; $5539: $67
    push af                                       ; $553a: $f5
    ret                                           ; $553b: $c9


    sub b                                         ; $553c: $90
    inc hl                                        ; $553d: $23
    ld c, e                                       ; $553e: $4b
    adc l                                         ; $553f: $8d
    inc l                                         ; $5540: $2c
    or e                                          ; $5541: $b3
    sbc h                                         ; $5542: $9c
    inc e                                         ; $5543: $1c
    ld l, l                                       ; $5544: $6d
    or [hl]                                       ; $5545: $b6
    inc bc                                        ; $5546: $03
    sub a                                         ; $5547: $97
    dec hl                                        ; $5548: $2b
    ld h, c                                       ; $5549: $61
    ld de, $0abd                                  ; $554a: $11 $bd $0a
    or e                                          ; $554d: $b3
    sbc a                                         ; $554e: $9f
    ld a, d                                       ; $554f: $7a
    ld a, l                                       ; $5550: $7d
    ld h, d                                       ; $5551: $62
    and h                                         ; $5552: $a4
    ld [hl], l                                    ; $5553: $75
    rla                                           ; $5554: $17
    or e                                          ; $5555: $b3
    sbc [hl]                                      ; $5556: $9e
    xor c                                         ; $5557: $a9
    ld [hl], c                                    ; $5558: $71
    db $fc                                        ; $5559: $fc
    ld l, b                                       ; $555a: $68
    ld b, a                                       ; $555b: $47
    dec hl                                        ; $555c: $2b
    ld [c], a                                     ; $555d: $e2
    adc d                                         ; $555e: $8a
    db $eb                                        ; $555f: $eb
    ld [c], a                                     ; $5560: $e2
    ld l, b                                       ; $5561: $68
    jp hl                                         ; $5562: $e9


    sbc d                                         ; $5563: $9a
    rst $28                                       ; $5564: $ef
    cp $73                                        ; $5565: $fe $73
    xor a                                         ; $5567: $af
    dec bc                                        ; $5568: $0b

Jump_070_5569:
    cp [hl]                                       ; $5569: $be
    or l                                          ; $556a: $b5
    call c, $9594                                 ; $556b: $dc $94 $95
    dec sp                                        ; $556e: $3b
    ld d, h                                       ; $556f: $54
    sub a                                         ; $5570: $97
    ld l, b                                       ; $5571: $68
    ret                                           ; $5572: $c9


    ld c, c                                       ; $5573: $49
    add l                                         ; $5574: $85
    ld d, [hl]                                    ; $5575: $56
    jp nz, $b422                                  ; $5576: $c2 $22 $b4

    ld [hl], h                                    ; $5579: $74
    ld d, l                                       ; $557a: $55
    and [hl]                                      ; $557b: $a6
    cp [hl]                                       ; $557c: $be
    inc sp                                        ; $557d: $33
    ei                                            ; $557e: $fb
    sbc d                                         ; $557f: $9a
    ld e, [hl]                                    ; $5580: $5e
    jp Jump_070_5569                              ; $5581: $c3 $69 $55


    adc [hl]                                      ; $5584: $8e
    xor e                                         ; $5585: $ab
    inc e                                         ; $5586: $1c
    and e                                         ; $5587: $a3
    ld d, [hl]                                    ; $5588: $56
    ld [$3c25], sp                                ; $5589: $08 $25 $3c
    or h                                          ; $558c: $b4
    ld [hl], h                                    ; $558d: $74
    sub l                                         ; $558e: $95
    ldh a, [$a8]                                  ; $558f: $f0 $a8
    and a                                         ; $5591: $a7
    db $fc                                        ; $5592: $fc
    pop hl                                        ; $5593: $e1
    jp nc, $3701                                  ; $5594: $d2 $01 $37

    ld b, a                                       ; $5597: $47
    sbc [hl]                                      ; $5598: $9e
    dec d                                         ; $5599: $15
    ld a, $90                                     ; $559a: $3e $90
    sub [hl]                                      ; $559c: $96
    xor l                                         ; $559d: $ad
    call nc, $bae4                                ; $559e: $d4 $e4 $ba
    ld [hl+], a                                   ; $55a1: $22
    ld e, l                                       ; $55a2: $5d
    inc bc                                        ; $55a3: $03
    adc c                                         ; $55a4: $89
    dec c                                         ; $55a5: $0d

Call_070_55a6:
    rst $00                                       ; $55a6: $c7
    or e                                          ; $55a7: $b3
    ld c, d                                       ; $55a8: $4a
    dec hl                                        ; $55a9: $2b
    inc bc                                        ; $55aa: $03
    ld l, c                                       ; $55ab: $69
    add l                                         ; $55ac: $85
    ldh a, [$b3]                                  ; $55ad: $f0 $b3
    push af                                       ; $55af: $f5
    ld a, [hl-]                                   ; $55b0: $3a
    inc c                                         ; $55b1: $0c
    ld b, l                                       ; $55b2: $45
    ld e, h                                       ; $55b3: $5c
    ld a, a                                       ; $55b4: $7f
    ld e, b                                       ; $55b5: $58
    sub e                                         ; $55b6: $93
    db $eb                                        ; $55b7: $eb
    adc d                                         ; $55b8: $8a
    ld [hl], h                                    ; $55b9: $74
    push af                                       ; $55ba: $f5
    call nc, $c6c8                                ; $55bb: $d4 $c8 $c6
    dec d                                         ; $55be: $15
    adc [hl]                                      ; $55bf: $8e
    and b                                         ; $55c0: $a0
    and c                                         ; $55c1: $a1
    ld d, c                                       ; $55c2: $51
    ld [hl], l                                    ; $55c3: $75
    ld c, l                                       ; $55c4: $4d
    ld h, [hl]                                    ; $55c5: $66
    ccf                                           ; $55c6: $3f
    and e                                         ; $55c7: $a3
    call c, $8d51                                 ; $55c8: $dc $51 $8d
    or b                                          ; $55cb: $b0
    ret c                                         ; $55cc: $d8

    db $10                                        ; $55cd: $10
    add [hl]                                      ; $55ce: $86
    ld b, d                                       ; $55cf: $42
    ld d, d                                       ; $55d0: $52
    dec d                                         ; $55d1: $15
    sub $e9                                       ; $55d2: $d6 $e9
    dec [hl]                                      ; $55d4: $35
    and $d4                                       ; $55d5: $e6 $d4
    db $eb                                        ; $55d7: $eb
    or [hl]                                       ; $55d8: $b6
    or d                                          ; $55d9: $b2
    ld e, h                                       ; $55da: $5c
    ld hl, $b2f6                                  ; $55db: $21 $f6 $b2
    ld d, h                                       ; $55de: $54
    add hl, sp                                    ; $55df: $39
    cp e                                          ; $55e0: $bb
    jr @-$41                                      ; $55e1: $18 $bd

    ld de, $9311                                  ; $55e3: $11 $11 $93
    ld a, $79                                     ; $55e6: $3e $79
    ld e, $48                                     ; $55e8: $1e $48
    dec hl                                        ; $55ea: $2b
    add h                                         ; $55eb: $84
    ld h, e                                       ; $55ec: $63
    adc [hl]                                      ; $55ed: $8e
    or e                                          ; $55ee: $b3
    push af                                       ; $55ef: $f5
    ld a, [hl-]                                   ; $55f0: $3a
    inc c                                         ; $55f1: $0c
    ld d, l                                       ; $55f2: $55
    or $3c                                        ; $55f3: $f6 $3c
    sub b                                         ; $55f5: $90
    ld d, [hl]                                    ; $55f6: $56
    ld [$1cab], sp                                ; $55f7: $08 $ab $1c
    rst $10                                       ; $55fa: $d7
    jp hl                                         ; $55fb: $e9


    adc d                                         ; $55fc: $8a
    ld [hl], h                                    ; $55fd: $74
    push af                                       ; $55fe: $f5
    ld d, h                                       ; $55ff: $54
    ld a, [hl]                                    ; $5600: $7e
    rrca                                          ; $5601: $0f
    ccf                                           ; $5602: $3f
    add d                                         ; $5603: $82
    ld d, d                                       ; $5604: $52
    push hl                                       ; $5605: $e5
    db $ec                                        ; $5606: $ec
    ld h, d                                       ; $5607: $62
    ld [hl], h                                    ; $5608: $74
    cp d                                          ; $5609: $ba
    and a                                         ; $560a: $a7
    inc de                                        ; $560b: $13
    xor h                                         ; $560c: $ac
    add hl, de                                    ; $560d: $19
    dec d                                         ; $560e: $15
    xor l                                         ; $560f: $ad
    ld d, e                                       ; $5610: $53
    ld [hl-], a                                   ; $5611: $32
    call nc, Call_070_57b3                        ; $5612: $d4 $b3 $57
    ld h, c                                       ; $5615: $61
    or $53                                        ; $5616: $f6 $53
    di                                            ; $5618: $f3
    inc [hl]                                      ; $5619: $34
    sub b                                         ; $561a: $90
    or b                                          ; $561b: $b0
    sub a                                         ; $561c: $97
    dec sp                                        ; $561d: $3b
    db $eb                                        ; $561e: $eb
    ld sp, hl                                     ; $561f: $f9
    ld h, a                                       ; $5620: $67
    sub l                                         ; $5621: $95
    ld d, [hl]                                    ; $5622: $56
    add hl, sp                                    ; $5623: $39
    ei                                            ; $5624: $fb
    ld c, b                                       ; $5625: $48
    ld hl, sp+$29                                 ; $5626: $f8 $29
    dec de                                        ; $5628: $1b
    ld a, [de]                                    ; $5629: $1a
    ld d, l                                       ; $562a: $55
    rst $10                                       ; $562b: $d7
    ld h, h                                       ; $562c: $64
    or $33                                        ; $562d: $f6 $33
    jp z, $bd1d                                   ; $562f: $ca $1d $bd

    cp h                                          ; $5632: $bc
    push af                                       ; $5633: $f5
    ld e, h                                       ; $5634: $5c
    inc hl                                        ; $5635: $23
    ld a, [de]                                    ; $5636: $1a
    cp c                                          ; $5637: $b9
    and e                                         ; $5638: $a3
    cp e                                          ; $5639: $bb
    sbc b                                         ; $563a: $98
    push af                                       ; $563b: $f5
    pop bc                                        ; $563c: $c1
    ld e, l                                       ; $563d: $5d
    ld e, c                                       ; $563e: $59
    inc [hl]                                      ; $563f: $34
    and $70                                       ; $5640: $e6 $70
    pop af                                        ; $5642: $f1
    ld e, [hl]                                    ; $5643: $5e
    ld l, d                                       ; $5644: $6a
    ld [hl], l                                    ; $5645: $75
    add h                                         ; $5646: $84
    add $6a                                       ; $5647: $c6 $6a
    add d                                         ; $5649: $82
    sub [hl]                                      ; $564a: $96
    ld a, [de]                                    ; $564b: $1a
    ld de, $d6ef                                  ; $564c: $11 $ef $d6
    cp b                                          ; $564f: $b8
    inc h                                         ; $5650: $24
    ld d, h                                       ; $5651: $54
    ret nc                                        ; $5652: $d0

    adc a                                         ; $5653: $8f
    xor $fe                                       ; $5654: $ee $fe
    ld [hl], e                                    ; $5656: $73
    rla                                           ; $5657: $17
    db $f4                                        ; $5658: $f4
    db $fc                                        ; $5659: $fc
    ld d, [hl]                                    ; $565a: $56
    ld c, b                                       ; $565b: $48
    ld e, e                                       ; $565c: $5b
    ld h, a                                       ; $565d: $67
    ld e, c                                       ; $565e: $59
    ld l, $94                                     ; $565f: $2e $94
    cp l                                          ; $5661: $bd
    or c                                          ; $5662: $b1
    db $e4                                        ; $5663: $e4
    ld c, [hl]                                    ; $5664: $4e
    db $dd                                        ; $5665: $dd
    ld c, $d7                                     ; $5666: $0e $d7
    ld h, c                                       ; $5668: $61
    ld l, b                                       ; $5669: $68
    ld d, d                                       ; $566a: $52
    ld e, b                                       ; $566b: $58
    sub e                                         ; $566c: $93
    db $eb                                        ; $566d: $eb
    adc d                                         ; $566e: $8a
    ld [hl], h                                    ; $566f: $74
    add d                                         ; $5670: $82
    add [hl]                                      ; $5671: $86
    ld b, [hl]                                    ; $5672: $46
    push de                                       ; $5673: $d5
    dec [hl]                                      ; $5674: $35
    sbc c                                         ; $5675: $99
    db $fd                                        ; $5676: $fd
    adc h                                         ; $5677: $8c
    ld [hl], d                                    ; $5678: $72
    ld b, a                                       ; $5679: $47
    dec [hl]                                      ; $567a: $35
    jp nz, $4362                                  ; $567b: $c2 $62 $43

    jr @+$0c                                      ; $567e: $18 $0a

    ld c, c                                       ; $5680: $49
    ld d, l                                       ; $5681: $55
    ld e, b                                       ; $5682: $58
    and a                                         ; $5683: $a7
    rst $10                                       ; $5684: $d7
    sbc b                                         ; $5685: $98
    ld d, e                                       ; $5686: $53
    xor a                                         ; $5687: $af
    db $db                                        ; $5688: $db
    jp z, $8572                                   ; $5689: $ca $72 $85

    ret c                                         ; $568c: $d8

    dec b                                         ; $568d: $05
    ld h, l                                       ; $568e: $65
    sbc c                                         ; $568f: $99
    db $e3                                        ; $5690: $e3

jr_070_5691:
    rst $28                                       ; $5691: $ef
    sub h                                         ; $5692: $94
    ld a, [hl+]                                   ; $5693: $2a
    ld h, a                                       ; $5694: $67
    rla                                           ; $5695: $17
    and e                                         ; $5696: $a3
    rst $28                                       ; $5697: $ef
    ld b, l                                       ; $5698: $45
    cp d                                          ; $5699: $ba
    add [hl]                                      ; $569a: $86
    jr nc, jr_070_5691                            ; $569b: $30 $f4

    ld c, a                                       ; $569d: $4f
    ld l, e                                       ; $569e: $6b
    jr nz, jr_070_5702                            ; $569f: $20 $61

    ld l, c                                       ; $56a1: $69
    ld d, a                                       ; $56a2: $57
    ld h, h                                       ; $56a3: $64
    sub $fe                                       ; $56a4: $d6 $fe
    ld b, a                                       ; $56a6: $47
    sbc [hl]                                      ; $56a7: $9e
    dec [hl]                                      ; $56a8: $35
    jp nc, Jump_000_3d6d                          ; $56a9: $d2 $6d $3d

    ld d, a                                       ; $56ac: $57
    add hl, sp                                    ; $56ad: $39
    cp e                                          ; $56ae: $bb
    jr @-$61                                      ; $56af: $18 $9d

    xor [hl]                                      ; $56b1: $ae
    ld c, b                                       ; $56b2: $48
    rst $10                                       ; $56b3: $d7
    ld b, b                                       ; $56b4: $40
    ld h, d                                       ; $56b5: $62
    rst $38                                       ; $56b6: $ff
    inc hl                                        ; $56b7: $23
    rst $08                                       ; $56b8: $cf
    ld [$fca9], a                                 ; $56b9: $ea $a9 $fc
    ld e, $4d                                     ; $56bc: $1e $4d
    ld a, [bc]                                    ; $56be: $0a
    dec hl                                        ; $56bf: $2b
    dec de                                        ; $56c0: $1b
    ld a, [de]                                    ; $56c1: $1a
    ld d, l                                       ; $56c2: $55
    rst $10                                       ; $56c3: $d7
    ld h, h                                       ; $56c4: $64

jr_070_56c5:
    or $33                                        ; $56c5: $f6 $33
    jp z, $bd1d                                   ; $56c7: $ca $1d $bd

    cp h                                          ; $56ca: $bc
    dec e                                         ; $56cb: $1d
    sbc a                                         ; $56cc: $9f
    adc l                                         ; $56cd: $8d
    add a                                         ; $56ce: $87
    ld d, $da                                     ; $56cf: $16 $da
    db $eb                                        ; $56d1: $eb
    ld [hl], e                                    ; $56d2: $73
    pop af                                        ; $56d3: $f1
    ld e, [hl]                                    ; $56d4: $5e
    ld l, d                                       ; $56d5: $6a
    push af                                       ; $56d6: $f5
    ld [hl], a                                    ; $56d7: $77
    ld a, [de]                                    ; $56d8: $1a
    ld a, [de]                                    ; $56d9: $1a
    ld b, e                                       ; $56da: $43
    jr jr_070_5719                                ; $56db: $18 $3c

    or h                                          ; $56dd: $b4
    ld [hl], h                                    ; $56de: $74
    cp l                                          ; $56df: $bd
    add d                                         ; $56e0: $82
    db $dd                                        ; $56e1: $dd
    ld [hl], e                                    ; $56e2: $73
    reti                                          ; $56e3: $d9


    cp l                                          ; $56e4: $bd
    call nc, $37ad                                ; $56e5: $d4 $ad $37
    ld e, b                                       ; $56e8: $58
    push hl                                       ; $56e9: $e5
    ld c, [hl]                                    ; $56ea: $4e
    cp c                                          ; $56eb: $b9
    ld h, $c3                                     ; $56ec: $26 $c3
    jp z, $8526                                   ; $56ee: $ca $26 $85

    ld d, l                                       ; $56f1: $55
    sbc c                                         ; $56f2: $99
    ld a, d                                       ; $56f3: $7a
    dec b                                         ; $56f4: $05
    cp e                                          ; $56f5: $bb
    rst $20                                       ; $56f6: $e7
    or d                                          ; $56f7: $b2
    rst $18                                       ; $56f8: $df
    ld de, $3ff4                                  ; $56f9: $11 $f4 $3f
    ld a, [c]                                     ; $56fc: $f2
    xor h                                         ; $56fd: $ac
    ld a, a                                       ; $56fe: $7f
    ld e, d                                       ; $56ff: $5a
    ld [hl], b                                    ; $5700: $70

Call_070_5701:
    sub e                                         ; $5701: $93

jr_070_5702:
    ld b, e                                       ; $5702: $43
    inc hl                                        ; $5703: $23
    ld [hl], a                                    ; $5704: $77
    call nc, Call_070_468d                        ; $5705: $d4 $8d $46
    ld b, e                                       ; $5708: $43
    or $d3                                        ; $5709: $f6 $d3
    jr c, jr_070_578b                             ; $570b: $38 $7e

    or h                                          ; $570d: $b4
    and e                                         ; $570e: $a3
    ld e, l                                       ; $570f: $5d
    ld sp, hl                                     ; $5710: $f9
    ld h, h                                       ; $5711: $64
    db $f4                                        ; $5712: $f4
    adc e                                         ; $5713: $8b
    add hl, sp                                    ; $5714: $39
    ld d, d                                       ; $5715: $52
    dec de                                        ; $5716: $1b
    ld c, b                                       ; $5717: $48
    ld l, h                                       ; $5718: $6c

jr_070_5719:
    jr c, jr_070_56c5                             ; $5719: $38 $aa

    ld l, c                                       ; $571b: $69
    ld l, l                                       ; $571c: $6d
    cp l                                          ; $571d: $bd
    pop bc                                        ; $571e: $c1
    sbc l                                         ; $571f: $9d
    ld [hl], d                                    ; $5720: $72
    ld c, l                                       ; $5721: $4d
    ld h, [hl]                                    ; $5722: $66
    ld b, a                                       ; $5723: $47
    cp e                                          ; $5724: $bb
    ld a, [c]                                     ; $5725: $f2
    ret                                           ; $5726: $c9


    add sp, $17                                   ; $5727: $e8 $17
    ld [hl], e                                    ; $5729: $73
    and h                                         ; $572a: $a4
    ld [hl], $90                                  ; $572b: $36 $90

jr_070_572d:
    ret c                                         ; $572d: $d8

    ld b, b                                       ; $572e: $40
    ld e, d                                       ; $572f: $5a
    ld c, d                                       ; $5730: $4a
    dec hl                                        ; $5731: $2b
    rr h                                          ; $5732: $cb $1c
    ld a, a                                       ; $5734: $7f
    and a                                         ; $5735: $a7
    ld [$9169], sp                                ; $5736: $08 $69 $91
    db $fd                                        ; $5739: $fd
    adc h                                         ; $573a: $8c
    ld [hl], d                                    ; $573b: $72
    ld b, a                                       ; $573c: $47
    dec [hl]                                      ; $573d: $35
    jp nz, $4362                                  ; $573e: $c2 $62 $43

    jr jr_070_572d                                ; $5741: $18 $ea

    sub [hl]                                      ; $5743: $96
    add $64                                       ; $5744: $c6 $64
    pop bc                                        ; $5746: $c1
    ld c, a                                       ; $5747: $4f
    db $ec                                        ; $5748: $ec
    and e                                         ; $5749: $a3
    db $db                                        ; $574a: $db
    ld bc, $4737                                  ; $574b: $01 $37 $47
    sbc [hl]                                      ; $574e: $9e
    dec [hl]                                      ; $574f: $35
    inc e                                         ; $5750: $1c
    push de                                       ; $5751: $d5
    or h                                          ; $5752: $b4
    adc d                                         ; $5753: $8a
    sbc [hl]                                      ; $5754: $9e
    ld h, a                                       ; $5755: $67
    cp c                                          ; $5756: $b9
    db $e4                                        ; $5757: $e4
    ld a, $e1                                     ; $5758: $3e $e1
    dec b                                         ; $575a: $05
    cp a                                          ; $575b: $bf
    ld d, b                                       ; $575c: $50
    rst $08                                       ; $575d: $cf
    cp [hl]                                       ; $575e: $be
    sub a                                         ; $575f: $97
    ld c, a                                       ; $5760: $4f
    ld b, [hl]                                    ; $5761: $46
    cp a                                          ; $5762: $bf
    sbc b                                         ; $5763: $98
    inc hl                                        ; $5764: $23
    ld [hl], l                                    ; $5765: $75
    db $eb                                        ; $5766: $eb
    push hl                                       ; $5767: $e5
    db $d3                                        ; $5768: $d3
    jr jr_070_5785                                ; $5769: $18 $1a

    adc [hl]                                      ; $576b: $8e
    ld h, a                                       ; $576c: $67
    cp a                                          ; $576d: $bf
    ld c, a                                       ; $576e: $4f
    add hl, sp                                    ; $576f: $39
    jp nz, $da3a                                  ; $5770: $c2 $3a $da

    sub l                                         ; $5773: $95
    ld c, a                                       ; $5774: $4f
    ld b, [hl]                                    ; $5775: $46
    cp a                                          ; $5776: $bf
    sbc b                                         ; $5777: $98
    inc hl                                        ; $5778: $23
    or l                                          ; $5779: $b5
    ld hl, $850c                                  ; $577a: $21 $0c $85
    ld [hl], $9c                                  ; $577d: $36 $9c
    adc e                                         ; $577f: $8b
    rst $30                                       ; $5780: $f7
    ld d, d                                       ; $5781: $52
    res 3, [hl]                                   ; $5782: $cb $9e
    ld [de], a                                    ; $5784: $12

jr_070_5785:
    call z, $0ac3                                 ; $5785: $cc $c3 $0a
    xor l                                         ; $5788: $ad
    ld d, c                                       ; $5789: $51
    ld [hl], d                                    ; $578a: $72

jr_070_578b:
    ld b, l                                       ; $578b: $45
    ld l, b                                       ; $578c: $68
    dec a                                         ; $578d: $3d
    dec de                                        ; $578e: $1b
    adc $c5                                       ; $578f: $ce $c5
    ld a, e                                       ; $5791: $7b
    xor c                                         ; $5792: $a9
    ld e, e                                       ; $5793: $5b
    cpl                                           ; $5794: $2f
    add a                                         ; $5795: $87
    or h                                          ; $5796: $b4
    ret z                                         ; $5797: $c8

    ld a, [hl]                                    ; $5798: $7e
    ld b, [hl]                                    ; $5799: $46
    cp c                                          ; $579a: $b9
    and e                                         ; $579b: $a3
    ld a, [de]                                    ; $579c: $1a
    ld h, c                                       ; $579d: $61
    ld d, c                                       ; $579e: $51
    ld d, b                                       ; $579f: $50
    and $f8                                       ; $57a0: $e6 $f8
    dec sp                                        ; $57a2: $3b
    ld d, l                                       ; $57a3: $55
    xor $94                                       ; $57a4: $ee $94
    ld l, e                                       ; $57a6: $6b
    ld [hl-], a                                   ; $57a7: $32
    adc e                                         ; $57a8: $8b
    sbc [hl]                                      ; $57a9: $9e
    ld h, a                                       ; $57aa: $67
    cp c                                          ; $57ab: $b9
    db $e4                                        ; $57ac: $e4
    ld a, $e1                                     ; $57ad: $3e $e1
    dec b                                         ; $57af: $05
    cp a                                          ; $57b0: $bf
    ld d, b                                       ; $57b1: $50
    rst $08                                       ; $57b2: $cf

Call_070_57b3:
    cp [hl]                                       ; $57b3: $be
    sub a                                         ; $57b4: $97
    ld c, a                                       ; $57b5: $4f
    ld b, [hl]                                    ; $57b6: $46
    cp a                                          ; $57b7: $bf

Call_070_57b8:
    sbc b                                         ; $57b8: $98
    inc hl                                        ; $57b9: $23
    or l                                          ; $57ba: $b5
    ld a, c                                       ; $57bb: $79
    ld a, d                                       ; $57bc: $7a
    adc l                                         ; $57bd: $8d
    add hl, sp                                    ; $57be: $39
    push af                                       ; $57bf: $f5
    cp d                                          ; $57c0: $ba
    xor l                                         ; $57c1: $ad
    inc l                                         ; $57c2: $2c
    ld d, a                                       ; $57c3: $57
    adc b                                         ; $57c4: $88
    cp l                                          ; $57c5: $bd
    ld hl, $fd0c                                  ; $57c6: $21 $0c $fd
    db $d3                                        ; $57c9: $d3
    xor d                                         ; $57ca: $aa
    ld c, h                                       ; $57cb: $4c
    jp c, Jump_070_4f95                           ; $57cc: $da $95 $4f

    ld b, [hl]                                    ; $57cf: $46
    cp a                                          ; $57d0: $bf
    sbc b                                         ; $57d1: $98
    inc hl                                        ; $57d2: $23
    or l                                          ; $57d3: $b5
    db $ec                                        ; $57d4: $ec
    sbc a                                         ; $57d5: $9f
    sub $a9                                       ; $57d6: $d6 $a9
    ld [hl-], a                                   ; $57d8: $32
    ld [hl], l                                    ; $57d9: $75
    ld e, a                                       ; $57da: $5f
    ld a, a                                       ; $57db: $7f
    sbc e                                         ; $57dc: $9b
    ld a, d                                       ; $57dd: $7a
    sub $28                                       ; $57de: $d6 $28
    cp c                                          ; $57e0: $b9
    ld [hl+], a                                   ; $57e1: $22
    ld [hl], h                                    ; $57e2: $74
    dec sp                                        ; $57e3: $3b
    nop                                           ; $57e4: $00
    rst $10                                       ; $57e5: $d7
    ld h, c                                       ; $57e6: $61
    add sp, -$61                                  ; $57e7: $e8 $9f
    ld d, [hl]                                    ; $57e9: $56
    ld h, l                                       ; $57ea: $65
    ld [$b33b], a                                 ; $57eb: $ea $3b $b3
    xor a                                         ; $57ee: $af
    jp hl                                         ; $57ef: $e9


    dec [hl]                                      ; $57f0: $35
    sbc h                                         ; $57f1: $9c
    ld d, [hl]                                    ; $57f2: $56
    ld e, c                                       ; $57f3: $59
    ld h, l                                       ; $57f4: $65
    ld [$b33b], a                                 ; $57f5: $ea $3b $b3
    xor a                                         ; $57f8: $af
    jp hl                                         ; $57f9: $e9


    ld h, a                                       ; $57fa: $67
    or [hl]                                       ; $57fb: $b6
    jp nz, $c97d                                  ; $57fc: $c2 $7d $c9

    and h                                         ; $57ff: $a4
    add d                                         ; $5800: $82
    add [hl]                                      ; $5801: $86
    ld b, [hl]                                    ; $5802: $46
    push de                                       ; $5803: $d5
    dec [hl]                                      ; $5804: $35

jr_070_5805:
    sbc c                                         ; $5805: $99
    db $fd                                        ; $5806: $fd
    adc h                                         ; $5807: $8c
    ld [hl], d                                    ; $5808: $72
    ld b, a                                       ; $5809: $47
    dec [hl]                                      ; $580a: $35
    jp nz, $4362                                  ; $580b: $c2 $62 $43

    jr @+$0c                                      ; $580e: $18 $0a

    ld c, c                                       ; $5810: $49
    ld d, l                                       ; $5811: $55
    ld e, b                                       ; $5812: $58
    and a                                         ; $5813: $a7
    rst $10                                       ; $5814: $d7
    sbc b                                         ; $5815: $98
    ld d, e                                       ; $5816: $53
    xor a                                         ; $5817: $af
    db $db                                        ; $5818: $db
    jp z, $8572                                   ; $5819: $ca $72 $85

    ret c                                         ; $581c: $d8

    swap d                                        ; $581d: $cb $32
    rst $00                                       ; $581f: $c7
    rst $18                                       ; $5820: $df
    add hl, hl                                    ; $5821: $29
    ld d, l                                       ; $5822: $55
    adc $2e                                       ; $5823: $ce $2e
    ld b, [hl]                                    ; $5825: $46
    rst $18                                       ; $5826: $df
    sbc c                                         ; $5827: $99
    ld a, l                                       ; $5828: $7d
    ld c, l                                       ; $5829: $4d
    xor a                                         ; $582a: $af
    pop hl                                        ; $582b: $e1
    or h                                          ; $582c: $b4
    ld a, [hl-]                                   ; $582d: $3a
    xor c                                         ; $582e: $a9
    rst $28                                       ; $582f: $ef
    call z, $a6be                                 ; $5830: $cc $be $a6
    sbc a                                         ; $5833: $9f
    reti                                          ; $5834: $d9


    ld a, [bc]                                    ; $5835: $0a
    rst $30                                       ; $5836: $f7
    dec h                                         ; $5837: $25
    sub e                                         ; $5838: $93
    ld l, [hl]                                    ; $5839: $6e
    rlca                                          ; $583a: $07
    scf                                           ; $583b: $37
    ld b, a                                       ; $583c: $47
    sbc [hl]                                      ; $583d: $9e
    sub l                                         ; $583e: $95
    ld a, [de]                                    ; $583f: $1a
    add e                                         ; $5840: $83
    dec de                                        ; $5841: $1b
    ld a, [de]                                    ; $5842: $1a
    dec [hl]                                      ; $5843: $35
    ld d, d                                       ; $5844: $52
    ld a, e                                       ; $5845: $7b
    ld h, a                                       ; $5846: $67
    sbc c                                         ; $5847: $99
    and e                                         ; $5848: $a3
    pop bc                                        ; $5849: $c1
    ld c, d                                       ; $584a: $4a
    rst $10                                       ; $584b: $d7
    db $e4                                        ; $584c: $e4
    ld a, d                                       ; $584d: $7a
    sbc [hl]                                      ; $584e: $9e
    push hl                                       ; $584f: $e5

jr_070_5850:
    db $e4                                        ; $5850: $e4
    ld l, b                                       ; $5851: $68
    db $d3                                        ; $5852: $d3
    ld l, e                                       ; $5853: $6b
    pop bc                                        ; $5854: $c1
    and a                                         ; $5855: $a7
    dec h                                         ; $5856: $25
    and a                                         ; $5857: $a7
    ld l, h                                       ; $5858: $6c
    jr c, jr_070_5805                             ; $5859: $38 $aa

    ld l, c                                       ; $585b: $69
    dec d                                         ; $585c: $15
    ei                                            ; $585d: $fb
    add hl, hl                                    ; $585e: $29
    add hl, sp                                    ; $585f: $39
    ld l, b                                       ; $5860: $68
    daa                                           ; $5861: $27
    cp h                                          ; $5862: $bc
    ld a, b                                       ; $5863: $78
    cpl                                           ; $5864: $2f
    push af                                       ; $5865: $f5
    sub l                                         ; $5866: $95
    cp [hl]                                       ; $5867: $be

Jump_070_5868:
    jp $d715                                      ; $5868: $c3 $15 $d7


    push bc                                       ; $586b: $c5
    ld l, c                                       ; $586c: $69
    ld c, b                                       ; $586d: $48
    ld [hl], e                                    ; $586e: $73
    dec hl                                        ; $586f: $2b
    or d                                          ; $5870: $b2
    add c                                         ; $5871: $81
    call nz, Call_070_47fe                        ; $5872: $c4 $fe $47
    sbc [hl]                                      ; $5875: $9e
    ld [hl], l                                    ; $5876: $75
    ld b, a                                       ; $5877: $47
    sub [hl]                                      ; $5878: $96
    xor h                                         ; $5879: $ac
    adc b                                         ; $587a: $88
    dec hl                                        ; $587b: $2b
    xor [hl]                                      ; $587c: $ae
    adc e                                         ; $587d: $8b
    and e                                         ; $587e: $a3
    xor a                                         ; $587f: $af
    or $bd                                        ; $5880: $f6 $bd
    ld c, b                                       ; $5882: $48
    rst $10                                       ; $5883: $d7
    sub b                                         ; $5884: $90
    and $56                                       ; $5885: $e6 $56
    ld h, h                                       ; $5887: $64
    inc bc                                        ; $5888: $03
    adc c                                         ; $5889: $89
    db $fd                                        ; $588a: $fd
    adc a                                         ; $588b: $8f
    inc a                                         ; $588c: $3c
    ld l, e                                       ; $588d: $6b
    ld d, d                                       ; $588e: $52
    ld [hl], $b9                                  ; $588f: $36 $b9
    xor [hl]                                      ; $5891: $ae
    ld c, b                                       ; $5892: $48
    rst $30                                       ; $5893: $f7
    ld l, d                                       ; $5894: $6a
    xor a                                         ; $5895: $af
    ret nz                                        ; $5896: $c0

    ld [hl+], a                                   ; $5897: $22
    ld a, [de]                                    ; $5898: $1a
    jp nc, $8adc                                  ; $5899: $d2 $dc $8a

    ld l, h                                       ; $589c: $6c
    jr nz, jr_070_5850                            ; $589d: $20 $b1

    rst $38                                       ; $589f: $ff
    sub c                                         ; $58a0: $91
    ld h, a                                       ; $58a1: $67
    sub l                                         ; $58a2: $95
    or [hl]                                       ; $58a3: $b6
    ret c                                         ; $58a4: $d8

    db $e4                                        ; $58a5: $e4
    ld c, d                                       ; $58a6: $4a
    ld de, $9c57                                  ; $58a7: $11 $57 $9c
    ld a, d                                       ; $58aa: $7a
    ld d, [hl]                                    ; $58ab: $56
    jp nz, $b422                                  ; $58ac: $c2 $22 $b4

    add hl, hl                                    ; $58af: $29
    xor [hl]                                      ; $58b0: $ae
    ld a, l                                       ; $58b1: $7d
    db $dd                                        ; $58b2: $dd
    ld b, [hl]                                    ; $58b3: $46
    or $53                                        ; $58b4: $f6 $53
    add hl, bc                                    ; $58b6: $09
    adc e                                         ; $58b7: $8b
    ret nc                                        ; $58b8: $d0

    ld a, d                                       ; $58b9: $7a
    ld d, [hl]                                    ; $58ba: $56
    ld l, b                                       ; $58bb: $68
    jp hl                                         ; $58bc: $e9


    ld d, $b4                                     ; $58bd: $16 $b4
    xor h                                         ; $58bf: $ac
    ret nc                                        ; $58c0: $d0

    jp nc, $d1ad                                  ; $58c1: $d2 $ad $d1

    adc d                                         ; $58c4: $8a
    ldh [rDMA], a                                 ; $58c5: $e0 $46
    ld b, a                                       ; $58c7: $47
    ld e, a                                       ; $58c8: $5f
    dec l                                         ; $58c9: $2d
    ei                                            ; $58ca: $fb
    ld c, [hl]                                    ; $58cb: $4e
    ld a, [hl-]                                   ; $58cc: $3a
    dec l                                         ; $58cd: $2d
    ld l, e                                       ; $58ce: $6b
    ld c, b                                       ; $58cf: $48
    ld [hl], e                                    ; $58d0: $73
    dec hl                                        ; $58d1: $2b
    or d                                          ; $58d2: $b2
    add c                                         ; $58d3: $81
    call nz, Call_070_47fe                        ; $58d4: $c4 $fe $47
    sbc [hl]                                      ; $58d7: $9e
    dec [hl]                                      ; $58d8: $35
    ld [hl-], a                                   ; $58d9: $32
    ld b, a                                       ; $58da: $47
    sub [hl]                                      ; $58db: $96
    ld a, [hl+]                                   ; $58dc: $2a
    ld de, $eac2                                  ; $58dd: $11 $c2 $ea
    and a                                         ; $58e0: $a7
    call z, Call_070_7272                         ; $58e1: $cc $72 $72
    or h                                          ; $58e4: $b4
    reti                                          ; $58e5: $d9


    ld a, d                                       ; $58e6: $7a
    inc hl                                        ; $58e7: $23
    and c                                         ; $58e8: $a1
    rst $20                                       ; $58e9: $e7
    sbc c                                         ; $58ea: $99
    halt                                          ; $58eb: $76
    ld e, d                                       ; $58ec: $5a
    jr z, @-$53                                   ; $58ed: $28 $ab

    ld c, h                                       ; $58ef: $4c
    jp c, $93eb                                   ; $58f0: $da $eb $93

    db $e3                                        ; $58f3: $e3
    ld l, b                                       ; $58f4: $68
    xor a                                         ; $58f5: $af
    dec b                                         ; $58f6: $05
    sbc a                                         ; $58f7: $9f
    sub [hl]                                      ; $58f8: $96
    inc e                                         ; $58f9: $1c
    xor l                                         ; $58fa: $ad
    cp $4e                                        ; $58fb: $fe $4e
    ld de, $951a                                  ; $58fd: $11 $1a $95
    add hl, sp                                    ; $5900: $39
    jp nz, $368f                                  ; $5901: $c2 $8f $36

    ld c, a                                       ; $5904: $4f
    db $dd                                        ; $5905: $dd
    ld l, b                                       ; $5906: $68
    inc [hl]                                      ; $5907: $34
    ld hl, sp-$4f                                 ; $5908: $f8 $b1
    sbc $59                                       ; $590a: $de $59
    cp a                                          ; $590c: $bf
    adc h                                         ; $590d: $8c
    dec hl                                        ; $590e: $2b
    ld h, d                                       ; $590f: $62
    dec sp                                        ; $5910: $3b
    nop                                           ; $5911: $00
    ld l, a                                       ; $5912: $6f
    pop de                                        ; $5913: $d1
    dec a                                         ; $5914: $3d
    pop af                                        ; $5915: $f1
    ld e, a                                       ; $5916: $5f
    reti                                          ; $5917: $d9


    ld c, a                                       ; $5918: $4f
    rst $28                                       ; $5919: $ef
    inc l                                         ; $591a: $2c
    jp nc, Jump_070_7a8e                          ; $591b: $d2 $8e $7a

    or $1d                                        ; $591e: $f6 $1d
    xor [hl]                                      ; $5920: $ae
    cp b                                          ; $5921: $b8
    ld l, $8e                                     ; $5922: $2e $8e
    ld l, [hl]                                    ; $5924: $6e
    cp l                                          ; $5925: $bd
    ld [hl-], a                                   ; $5926: $32
    pop hl                                        ; $5927: $e1
    ld h, d                                       ; $5928: $62
    dec e                                         ; $5929: $1d
    sub e                                         ; $592a: $93
    sub $cd                                       ; $592b: $d6 $cd
    ld a, a                                       ; $592d: $7f
    add hl, sp                                    ; $592e: $39
    and $38                                       ; $592f: $e6 $38
    jp c, $8610                                   ; $5931: $da $10 $86

    xor $fc                                       ; $5934: $ee $fc
    xor a                                         ; $5936: $af
    ld [$726b], sp                                ; $5937: $08 $6b $72
    xor b                                         ; $593a: $a8
    ld e, [hl]                                    ; $593b: $5e
    or b                                          ; $593c: $b0
    push bc                                       ; $593d: $c5
    ld a, d                                       ; $593e: $7a
    halt                                          ; $593f: $76
    add h                                         ; $5940: $84
    rst $18                                       ; $5941: $df
    inc sp                                        ; $5942: $33
    adc [hl]                                      ; $5943: $8e
    ld l, [hl]                                    ; $5944: $6e
    cp l                                          ; $5945: $bd
    pop bc                                        ; $5946: $c1
    cp $47                                        ; $5947: $fe $47
    sbc [hl]                                      ; $5949: $9e
    ld d, l                                       ; $594a: $55
    ld c, [hl]                                    ; $594b: $4e
    ld d, [hl]                                    ; $594c: $56
    sbc [hl]                                      ; $594d: $9e
    jp nc, Jump_000_06b2                          ; $594e: $d2 $b2 $06

    ld [de], a                                    ; $5951: $12
    dec sp                                        ; $5952: $3b
    dec e                                         ; $5953: $1d
    pop hl                                        ; $5954: $e1
    rst $30                                       ; $5955: $f7
    adc h                                         ; $5956: $8c
    ld d, e                                       ; $5957: $53
    call nz, $bf95                                ; $5958: $c4 $95 $bf
    ld b, a                                       ; $595b: $47
    ld d, c                                       ; $595c: $51
    db $ec                                        ; $595d: $ec
    ld sp, $2a19                                  ; $595e: $31 $19 $2a
    ld l, c                                       ; $5961: $69
    ld de, $8682                                  ; $5962: $11 $82 $86
    db $e3                                        ; $5965: $e3
    ld l, c                                       ; $5966: $69
    pop bc                                        ; $5967: $c1
    dec c                                         ; $5968: $0d
    and c                                         ; $5969: $a1
    ld a, [bc]                                    ; $596a: $0a
    ld l, e                                       ; $596b: $6b
    ld [$9343], sp                                ; $596c: $08 $43 $93
    db $eb                                        ; $596f: $eb
    ld [$67bf], sp                                ; $5970: $08 $bf $67
    sbc h                                         ; $5973: $9c
    ld a, [hl-]                                   ; $5974: $3a
    inc l                                         ; $5975: $2c
    ld l, l                                       ; $5976: $6d
    ld c, b                                       ; $5977: $48
    add l                                         ; $5978: $85
    sbc a                                         ; $5979: $9f
    xor l                                         ; $597a: $ad
    scf                                           ; $597b: $37
    ret c                                         ; $597c: $d8

    rst $38                                       ; $597d: $ff
    ret z                                         ; $597e: $c8

    or e                                          ; $597f: $b3
    jp z, $8c71                                   ; $5980: $ca $71 $8c

    or h                                          ; $5983: $b4
    cp d                                          ; $5984: $ba
    or h                                          ; $5985: $b4
    ld [c], a                                     ; $5986: $e2
    ld l, b                                       ; $5987: $68
    ld l, c                                       ; $5988: $69
    ld [hl], $2a                                  ; $5989: $36 $2a
    ld l, b                                       ; $598b: $68

jr_070_598c:
    and h                                         ; $598c: $a4
    dec b                                         ; $598d: $05
    scf                                           ; $598e: $37
    sub b                                         ; $598f: $90
    ld e, b                                       ; $5990: $58
    add hl, sp                                    ; $5991: $39
    adc [hl]                                      ; $5992: $8e
    rla                                           ; $5993: $17
    ld h, c                                       ; $5994: $61
    call $87f3                                    ; $5995: $cd $f3 $87
    ld h, e                                       ; $5998: $63
    adc [hl]                                      ; $5999: $8e
    call c, $e70e                                 ; $599a: $dc $0e $e7
    ld a, [hl+]                                   ; $599d: $2a
    ld h, a                                       ; $599e: $67
    rla                                           ; $599f: $17
    and e                                         ; $59a0: $a3
    xor b                                         ; $59a1: $a8
    inc e                                         ; $59a2: $1c
    daa                                           ; $59a3: $27
    ld e, h                                       ; $59a4: $5c
    add hl, de                                    ; $59a5: $19
    rla                                           ; $59a6: $17
    ld a, a                                       ; $59a7: $7f
    and a                                         ; $59a8: $a7
    sub d                                         ; $59a9: $92
    ld d, $51                                     ; $59aa: $16 $51
    rst $08                                       ; $59ac: $cf
    ld c, d                                       ; $59ad: $4a
    db $ec                                        ; $59ae: $ec
    sbc [hl]                                      ; $59af: $9e
    bit 7, [hl]                                   ; $59b0: $cb $7e
    and a                                         ; $59b2: $a7
    db $ec                                        ; $59b3: $ec
    jp z, $a327                                   ; $59b4: $ca $27 $a3

    ld e, a                                       ; $59b7: $5f
    call z, $da91                                 ; $59b8: $cc $91 $da
    db $10                                        ; $59bb: $10
    add [hl]                                      ; $59bc: $86
    ld a, [de]                                    ; $59bd: $1a
    ld [hl], l                                    ; $59be: $75
    or $3f                                        ; $59bf: $f6 $3f
    xor l                                         ; $59c1: $ad
    db $d3                                        ; $59c2: $d3
    or a                                          ; $59c3: $b7
    xor c                                         ; $59c4: $a9
    db $10                                        ; $59c5: $10
    xor l                                         ; $59c6: $ad
    xor c                                         ; $59c7: $a9
    ld b, a                                       ; $59c8: $47
    xor a                                         ; $59c9: $af
    rst $08                                       ; $59ca: $cf
    push bc                                       ; $59cb: $c5
    rst $18                                       ; $59cc: $df
    reti                                          ; $59cd: $d9


    ld a, d                                       ; $59ce: $7a
    db $dd                                        ; $59cf: $dd
    xor b                                         ; $59d0: $a8
    cp d                                          ; $59d1: $ba
    ld h, $b3                                     ; $59d2: $26 $b3
    ld hl, $bd0c                                  ; $59d4: $21 $0c $bd
    or d                                          ; $59d7: $b2
    inc e                                         ; $59d8: $1c
    ld a, [hl-]                                   ; $59d9: $3a
    xor c                                         ; $59da: $a9
    ld hl, $7d0c                                  ; $59db: $21 $0c $7d
    dec bc                                        ; $59de: $0b
    db $eb                                        ; $59df: $eb
    sub $34                                       ; $59e0: $d6 $34
    add h                                         ; $59e2: $84
    and c                                         ; $59e3: $a1
    ld [hl+], a                                   ; $59e4: $22
    call c, Call_070_55a6                         ; $59e5: $dc $a6 $55
    inc de                                        ; $59e8: $13
    ld c, d                                       ; $59e9: $4a
    sub l                                         ; $59ea: $95
    or e                                          ; $59eb: $b3
    adc e                                         ; $59ec: $8b
    or c                                          ; $59ed: $b1

Jump_070_59ee:
    push af                                       ; $59ee: $f5
    cp d                                          ; $59ef: $ba
    ld d, c                                       ; $59f0: $51

jr_070_59f1:
    ld [hl], l                                    ; $59f1: $75
    ld c, l                                       ; $59f2: $4d
    ld h, [hl]                                    ; $59f3: $66
    ld b, e                                       ; $59f4: $43
    jr jr_070_59f1                                ; $59f5: $18 $fa

    or $32                                        ; $59f7: $f6 $32
    xor [hl]                                      ; $59f9: $ae
    adc b                                         ; $59fa: $88
    add [hl]                                      ; $59fb: $86
    jr nc, jr_070_5a72                            ; $59fc: $30 $74

    ld e, c                                       ; $59fe: $59
    ld b, e                                       ; $59ff: $43
    jr jr_070_598c                                ; $5a00: $18 $8a

    add [hl]                                      ; $5a02: $86
    halt                                          ; $5a03: $76
    rst $08                                       ; $5a04: $cf
    xor l                                         ; $5a05: $ad
    push hl                                       ; $5a06: $e5
    ld d, b                                       ; $5a07: $50
    xor d                                         ; $5a08: $aa
    sbc h                                         ; $5a09: $9c
    ld e, l                                       ; $5a0a: $5d
    inc c                                         ; $5a0b: $0c
    ld b, c                                       ; $5a0c: $41
    daa                                           ; $5a0d: $27
    dec [hl]                                      ; $5a0e: $35
    inc [hl]                                      ; $5a0f: $34
    xor d                                         ; $5a10: $aa
    xor [hl]                                      ; $5a11: $ae
    ret                                           ; $5a12: $c9


    ld l, h                                       ; $5a13: $6c
    ld [$cf43], sp                                ; $5a14: $08 $43 $cf
    dec [hl]                                      ; $5a17: $35
    sub b                                         ; $5a18: $90
    ld l, b                                       ; $5a19: $68
    ld e, $0d                                     ; $5a1a: $1e $0d
    ld h, c                                       ; $5a1c: $61
    add sp, $7f                                   ; $5a1d: $e8 $7f
    or $08                                        ; $5a1f: $f6 $08
    xor e                                         ; $5a21: $ab
    or d                                          ; $5a22: $b2
    rst $38                                       ; $5a23: $ff
    sub c                                         ; $5a24: $91
    ld h, a                                       ; $5a25: $67
    ld [hl], l                                    ; $5a26: $75
    ret                                           ; $5a27: $c9


    jp $d9ea                                      ; $5a28: $c3 $ea $d9


    push hl                                       ; $5a2b: $e5
    cpl                                           ; $5a2c: $2f
    inc l                                         ; $5a2d: $2c
    ld l, h                                       ; $5a2e: $6c
    db $fd                                        ; $5a2f: $fd
    inc h                                         ; $5a30: $24
    ld hl, $e9fb                                  ; $5a31: $21 $fb $e9
    ld a, a                                       ; $5a34: $7f
    db $e4                                        ; $5a35: $e4
    ld e, c                                       ; $5a36: $59
    xor c                                         ; $5a37: $a9
    ld [hl], c                                    ; $5a38: $71
    db $fd                                        ; $5a39: $fd
    ld l, c                                       ; $5a3a: $69
    dec d                                         ; $5a3b: $15
    ld [hl], c                                    ; $5a3c: $71
    ld e, a                                       ; $5a3d: $5f
    or a                                          ; $5a3e: $b7
    dec hl                                        ; $5a3f: $2b
    rst $00                                       ; $5a40: $c7
    ld d, l                                       ; $5a41: $55
    inc de                                        ; $5a42: $13
    or h                                          ; $5a43: $b4
    ld d, h                                       ; $5a44: $54
    add hl, sp                                    ; $5a45: $39
    cp e                                          ; $5a46: $bb
    jr jr_070_5a73                                ; $5a47: $18 $2a

    ld l, b                                       ; $5a49: $68
    ld l, b                                       ; $5a4a: $68
    ld d, h                                       ; $5a4b: $54
    ld e, l                                       ; $5a4c: $5d
    sub e                                         ; $5a4d: $93
    reti                                          ; $5a4e: $d9


    rst $08                                       ; $5a4f: $cf
    jr z, @+$79                                   ; $5a50: $28 $77

    db $f4                                        ; $5a52: $f4
    ld [hl], d                                    ; $5a53: $72
    ld b, e                                       ; $5a54: $43
    jr @+$2c                                      ; $5a55: $18 $2a

    daa                                           ; $5a57: $27
    adc e                                         ; $5a58: $8b
    sub [hl]                                      ; $5a59: $96
    cp c                                          ; $5a5a: $b9
    ldh [$27], a                                  ; $5a5b: $e0 $27
    halt                                          ; $5a5d: $76
    add sp, -$2a                                  ; $5a5e: $e8 $d6
    ld l, e                                       ; $5a60: $6b
    jr nc, jr_070_5a6c                            ; $5a61: $30 $09

    ld l, l                                       ; $5a63: $6d
    ld l, b                                       ; $5a64: $68
    adc h                                         ; $5a65: $8c
    ret nc                                        ; $5a66: $d0

    add [hl]                                      ; $5a67: $86
    halt                                          ; $5a68: $76
    rst $08                                       ; $5a69: $cf
    xor l                                         ; $5a6a: $ad
    push hl                                       ; $5a6b: $e5

jr_070_5a6c:
    and b                                         ; $5a6c: $a0
    cp l                                          ; $5a6d: $bd
    ld d, e                                       ; $5a6e: $53
    xor e                                         ; $5a6f: $ab
    add hl, bc                                    ; $5a70: $09
    ld e, d                                       ; $5a71: $5a

jr_070_5a72:
    xor d                                         ; $5a72: $aa

jr_070_5a73:
    sbc h                                         ; $5a73: $9c
    ld e, l                                       ; $5a74: $5d
    inc c                                         ; $5a75: $0c
    db $ed                                        ; $5a76: $ed
    jp z, Jump_070_497e                           ; $5a77: $ca $7e $49

    cp b                                          ; $5a7a: $b8
    ld a, [de]                                    ; $5a7b: $1a
    dec [hl]                                      ; $5a7c: $35
    inc e                                         ; $5a7d: $1c
    adc l                                         ; $5a7e: $8d
    ret nc                                        ; $5a7f: $d0

    jp z, $6331                                   ; $5a80: $ca $31 $63

    add h                                         ; $5a83: $84
    or $89                                        ; $5a84: $f6 $89
    ld b, $12                                     ; $5a86: $06 $12
    ld [hl], d                                    ; $5a88: $72
    sbc h                                         ; $5a89: $9c
    ld a, [hl-]                                   ; $5a8a: $3a
    inc l                                         ; $5a8b: $2c
    dec d                                         ; $5a8c: $15
    call nc, $1771                                ; $5a8d: $d4 $71 $17
    adc a                                         ; $5a90: $8f
    ld e, l                                       ; $5a91: $5d
    ld [$f60d], a                                 ; $5a92: $ea $0d $f6
    ccf                                           ; $5a95: $3f
    ld a, [c]                                     ; $5a96: $f2
    xor h                                         ; $5a97: $ac
    ld [hl], d                                    ; $5a98: $72
    or d                                          ; $5a99: $b2
    ld a, [c]                                     ; $5a9a: $f2
    sub h                                         ; $5a9b: $94
    sub [hl]                                      ; $5a9c: $96
    ld [hl], l                                    ; $5a9d: $75
    ld a, [hl+]                                   ; $5a9e: $2a
    or c                                          ; $5a9f: $b1
    ld a, e                                       ; $5aa0: $7b
    ld l, $fb                                     ; $5aa1: $2e $fb
    sbc l                                         ; $5aa3: $9d
    or d                                          ; $5aa4: $b2
    and e                                         ; $5aa5: $a3
    ld e, l                                       ; $5aa6: $5d
    ld sp, hl                                     ; $5aa7: $f9
    ld h, h                                       ; $5aa8: $64
    db $f4                                        ; $5aa9: $f4
    adc e                                         ; $5aaa: $8b
    add hl, sp                                    ; $5aab: $39
    ld d, d                                       ; $5aac: $52
    dec hl                                        ; $5aad: $2b
    ld l, c                                       ; $5aae: $69
    ld [hl], c                                    ; $5aaf: $71
    ld d, h                                       ; $5ab0: $54
    ret nc                                        ; $5ab1: $d0

    rst $38                                       ; $5ab2: $ff
    ret z                                         ; $5ab3: $c8

    or e                                          ; $5ab4: $b3
    cp $99                                        ; $5ab5: $fe $99
    dec h                                         ; $5ab7: $25
    dec sp                                        ; $5ab8: $3b
    push af                                       ; $5ab9: $f5
    ld d, h                                       ; $5aba: $54
    adc b                                         ; $5abb: $88
    sub $5c                                       ; $5abc: $d6 $5c
    ld [$91cd], a                                 ; $5abe: $ea $cd $91
    ld h, a                                       ; $5ac1: $67
    adc l                                         ; $5ac2: $8d
    ld [hl], h                                    ; $5ac3: $74
    ld a, l                                       ; $5ac4: $7d
    ld a, [$4a99]                                 ; $5ac5: $fa $99 $4a
    ld sp, $a4b2                                  ; $5ac8: $31 $b2 $a4
    ld [hl], $84                                  ; $5acb: $36 $84
    and c                                         ; $5acd: $a1
    call z, Call_070_7272                         ; $5ace: $cc $72 $72
    inc [hl]                                      ; $5ad1: $34
    ld e, b                                       ; $5ad2: $58
    ld d, c                                       ; $5ad3: $51
    add hl, sp                                    ; $5ad4: $39
    ld c, [hl]                                    ; $5ad5: $4e
    cp b                                          ; $5ad6: $b8
    ld [hl-], a                                   ; $5ad7: $32
    ld l, $fe                                     ; $5ad8: $2e $fe
    ld c, [hl]                                    ; $5ada: $4e
    dec h                                         ; $5adb: $25
    dec l                                         ; $5adc: $2d
    ld h, d                                       ; $5add: $62
    dec sp                                        ; $5ade: $3b
    nop                                           ; $5adf: $00
    sbc a                                         ; $5ae0: $9f
    ld sp, $9647                                  ; $5ae1: $31 $47 $96
    ld e, c                                       ; $5ae4: $59
    ld c, [hl]                                    ; $5ae5: $4e
    adc [hl]                                      ; $5ae6: $8e
    ld b, $eb                                     ; $5ae7: $06 $eb
    ld l, b                                       ; $5ae9: $68
    ld b, e                                       ; $5aea: $43
    jr @-$49                                      ; $5aeb: $18 $b5

    sbc [hl]                                      ; $5aed: $9e
    sub l                                         ; $5aee: $95
    or b                                          ; $5aef: $b0
    ld [$7add], sp                                ; $5af0: $08 $dd $7a

jr_070_5af3:
    db $dd                                        ; $5af3: $dd
    sub [hl]                                      ; $5af4: $96
    db $e3                                        ; $5af5: $e3
    or d                                          ; $5af6: $b2
    xor c                                         ; $5af7: $a9
    sbc e                                         ; $5af8: $9b
    ccf                                           ; $5af9: $3f
    ld a, [hl-]                                   ; $5afa: $3a
    sub l                                         ; $5afb: $95
    ret                                           ; $5afc: $c9


    ld [hl], h                                    ; $5afd: $74
    xor h                                         ; $5afe: $ac
    ld l, h                                       ; $5aff: $6c
    ld l, b                                       ; $5b00: $68
    ld d, h                                       ; $5b01: $54
    ld e, l                                       ; $5b02: $5d
    sub e                                         ; $5b03: $93
    reti                                          ; $5b04: $d9


    rst $08                                       ; $5b05: $cf
    jr z, jr_070_5b7f                             ; $5b06: $28 $77

    db $f4                                        ; $5b08: $f4
    ld [hl], d                                    ; $5b09: $72
    ld b, e                                       ; $5b0a: $43
    jr @-$04                                      ; $5b0b: $18 $fa

    ld e, a                                       ; $5b0d: $5f
    ld b, $6b                                     ; $5b0e: $06 $6b
    ld [hl], d                                    ; $5b10: $72
    xor b                                         ; $5b11: $a8
    add h                                         ; $5b12: $84
    ld b, l                                       ; $5b13: $45
    ld l, h                                       ; $5b14: $6c
    db $fd                                        ; $5b15: $fd

jr_070_5b16:
    sub h                                         ; $5b16: $94
    pop hl                                        ; $5b17: $e1
    adc d                                         ; $5b18: $8a
    add sp, $34                                   ; $5b19: $e8 $34
    or h                                          ; $5b1b: $b4
    sub c                                         ; $5b1c: $91
    ld d, h                                       ; $5b1d: $54
    sbc l                                         ; $5b1e: $9d
    add [hl]                                      ; $5b1f: $86
    jr nc, jr_070_5b16                            ; $5b20: $30 $f4

    cp a                                          ; $5b22: $bf
    inc c                                         ; $5b23: $0c
    sub $49                                       ; $5b24: $d6 $49
    pop de                                        ; $5b26: $d1
    ld d, b                                       ; $5b27: $50
    add hl, bc                                    ; $5b28: $09
    adc e                                         ; $5b29: $8b
    ret c                                         ; $5b2a: $d8

    ld a, d                                       ; $5b2b: $7a
    add e                                         ; $5b2c: $83
    add l                                         ; $5b2d: $85
    sub $27                                       ; $5b2e: $d6 $27
    ld l, b                                       ; $5b30: $68
    dec h                                         ; $5b31: $25
    inc l                                         ; $5b32: $2c
    ld b, d                                       ; $5b33: $42
    dec hl                                        ; $5b34: $2b
    ld a, [de]                                    ; $5b35: $1a
    ld [hl], e                                    ; $5b36: $73
    jr nc, jr_070_5af3                            ; $5b37: $30 $ba

    ld h, $d7                                     ; $5b39: $26 $d7
    db $10                                        ; $5b3b: $10
    ld h, $28                                     ; $5b3c: $26 $28
    ld [hl], a                                    ; $5b3e: $77
    ld l, b                                       ; $5b3f: $68
    push af                                       ; $5b40: $f5
    ld [hl], a                                    ; $5b41: $77
    ld l, d                                       ; $5b42: $6a
    ld [hl], h                                    ; $5b43: $74
    di                                            ; $5b44: $f3
    ld e, a                                       ; $5b45: $5f
    ld e, $ba                                     ; $5b46: $1e $ba
    push af                                       ; $5b48: $f5
    inc a                                         ; $5b49: $3c
    set 1, c                                      ; $5b4a: $cb $c9
    pop de                                        ; $5b4c: $d1
    ret c                                         ; $5b4d: $d8

    jr c, jr_070_5bce                             ; $5b4e: $38 $7e

    or h                                          ; $5b50: $b4
    and e                                         ; $5b51: $a3
    dec c                                         ; $5b52: $0d
    ld h, c                                       ; $5b53: $61
    call nc, $3086                                ; $5b54: $d4 $86 $30
    db $f4                                        ; $5b57: $f4
    rst $08                                       ; $5b58: $cf
    inc l                                         ; $5b59: $2c
    ld l, c                                       ; $5b5a: $69
    db $db                                        ; $5b5b: $db
    ld bc, $d837                                  ; $5b5c: $01 $37 $d8
    rst $38                                       ; $5b5f: $ff
    ret z                                         ; $5b60: $c8

    or e                                          ; $5b61: $b3
    ld a, [hl+]                                   ; $5b62: $2a
    dec de                                        ; $5b63: $1b
    jp nc, Jump_070_4d3c                          ; $5b64: $d2 $3c $4d

    ret nc                                        ; $5b67: $d0

    ret nc                                        ; $5b68: $d0

    xor b                                         ; $5b69: $a8
    cp d                                          ; $5b6a: $ba
    ld h, $b3                                     ; $5b6b: $26 $b3
    sbc a                                         ; $5b6d: $9f
    ld d, c                                       ; $5b6e: $51
    xor $a8                                       ; $5b6f: $ee $a8
    ld [hl], d                                    ; $5b71: $72
    and a                                         ; $5b72: $a7
    adc h                                         ; $5b73: $8c
    dec c                                         ; $5b74: $0d
    ld h, c                                       ; $5b75: $61
    add sp, -$36                                  ; $5b76: $e8 $ca
    rst $38                                       ; $5b78: $ff
    sub c                                         ; $5b79: $91
    or b                                          ; $5b7a: $b0
    ld h, $87                                     ; $5b7b: $26 $87
    ld a, [hl-]                                   ; $5b7d: $3a
    ld h, [hl]                                    ; $5b7e: $66

jr_070_5b7f:
    push bc                                       ; $5b7f: $c5
    adc c                                         ; $5b80: $89
    xor [hl]                                      ; $5b81: $ae
    ld a, [hl-]                                   ; $5b82: $3a
    ld b, d                                       ; $5b83: $42
    ld h, e                                       ; $5b84: $63
    dec [hl]                                      ; $5b85: $35
    and c                                         ; $5b86: $a1
    ei                                            ; $5b87: $fb
    ld c, b                                       ; $5b88: $48
    db $ec                                        ; $5b89: $ec
    db $eb                                        ; $5b8a: $eb
    ld [hl], $2e                                  ; $5b8b: $36 $2e
    cp $4e                                        ; $5b8d: $fe $4e
    ld de, $f613                                  ; $5b8f: $11 $13 $f6
    db $ed                                        ; $5b92: $ed
    nop                                           ; $5b93: $00
    rst $10                                       ; $5b94: $d7
    adc l                                         ; $5b95: $8d
    xor d                                         ; $5b96: $aa
    ld l, e                                       ; $5b97: $6b
    ld [hl-], a                                   ; $5b98: $32
    ei                                            ; $5b99: $fb
    add hl, de                                    ; $5b9a: $19
    push hl                                       ; $5b9b: $e5
    adc [hl]                                      ; $5b9c: $8e
    ld e, [hl]                                    ; $5b9d: $5e
    ld l, [hl]                                    ; $5b9e: $6e
    ld [$4343], sp                                ; $5b9f: $08 $43 $43
    dec de                                        ; $5ba2: $1b
    sbc c                                         ; $5ba3: $99
    inc c                                         ; $5ba4: $0c
    sub $70                                       ; $5ba5: $d6 $70
    xor h                                         ; $5ba7: $ac
    dec hl                                        ; $5ba8: $2b
    ld [hl-], a                                   ; $5ba9: $32
    ld l, e                                       ; $5baa: $6b
    xor c                                         ; $5bab: $a9
    ld [hl], d                                    ; $5bac: $72
    or d                                          ; $5bad: $b2
    ld e, a                                       ; $5bae: $5f
    ld a, [hl]                                    ; $5baf: $7e
    or h                                          ; $5bb0: $b4
    ld a, c                                       ; $5bb1: $79
    or h                                          ; $5bb2: $b4
    ei                                            ; $5bb3: $fb
    ld c, b                                       ; $5bb4: $48
    inc l                                         ; $5bb5: $2c
    db $ed                                        ; $5bb6: $ed
    sbc l                                         ; $5bb7: $9d
    push de                                       ; $5bb8: $d5
    add h                                         ; $5bb9: $84
    adc d                                         ; $5bba: $8a
    adc h                                         ; $5bbb: $8c
    add hl, sp                                    ; $5bbc: $39
    ld [hl], d                                    ; $5bbd: $72
    db $eb                                        ; $5bbe: $eb
    dec c                                         ; $5bbf: $0d
    ld d, $fb                                     ; $5bc0: $16 $fb
    xor d                                         ; $5bc2: $aa
    ld a, b                                       ; $5bc3: $78
    jp nc, $d69f                                  ; $5bc4: $d2 $9f $d6

    db $e4                                        ; $5bc7: $e4
    cp d                                          ; $5bc8: $ba
    ld [hl+], a                                   ; $5bc9: $22
    sbc l                                         ; $5bca: $9d
    and b                                         ; $5bcb: $a0
    ret                                           ; $5bcc: $c9


    and c                                         ; $5bcd: $a1

jr_070_5bce:
    adc [hl]                                      ; $5bce: $8e
    ld e, c                                       ; $5bcf: $59
    ld [hl], c                                    ; $5bd0: $71
    and d                                         ; $5bd1: $a2
    dec hl                                        ; $5bd2: $2b
    ld b, d                                       ; $5bd3: $42
    jr jr_070_5bfb                                ; $5bd4: $18 $25

    dec l                                         ; $5bd6: $2d
    cp b                                          ; $5bd7: $b8
    ld a, [hl]                                    ; $5bd8: $7e
    db $dd                                        ; $5bd9: $dd
    ld h, [hl]                                    ; $5bda: $66
    or $d3                                        ; $5bdb: $f6 $d3
    ld l, c                                       ; $5bdd: $69
    jr nz, @-$4d                                  ; $5bde: $20 $b1

    rst $38                                       ; $5be0: $ff
    sub c                                         ; $5be1: $91
    ld h, a                                       ; $5be2: $67
    ld h, l                                       ; $5be3: $65
    sub [hl]                                      ; $5be4: $96
    sub e                                         ; $5be5: $93
    and e                                         ; $5be6: $a3
    ld c, l                                       ; $5be7: $4d
    jp c, $d70e                                   ; $5be8: $da $0e $d7

    rst $00                                       ; $5beb: $c7
    ld a, [hl+]                                   ; $5bec: $2a
    jp nz, Jump_070_4c7f                          ; $5bed: $c2 $7f $4c

    ret nc                                        ; $5bf0: $d0

    ret nc                                        ; $5bf1: $d0

    ld b, [hl]                                    ; $5bf2: $46
    ld h, $63                                     ; $5bf3: $26 $63
    and a                                         ; $5bf5: $a7
    and c                                         ; $5bf6: $a1
    adc l                                         ; $5bf7: $8d
    adc b                                         ; $5bf8: $88
    xor d                                         ; $5bf9: $aa
    ld h, e                                       ; $5bfa: $63

jr_070_5bfb:
    cp l                                          ; $5bfb: $bd
    sub c                                         ; $5bfc: $91
    ld de, $21b2                                  ; $5bfd: $11 $b2 $21
    inc c                                         ; $5c00: $0c
    dec c                                         ; $5c01: $0d
    ld a, c                                       ; $5c02: $79
    add d                                         ; $5c03: $82
    ld d, l                                       ; $5c04: $55
    inc de                                        ; $5c05: $13
    or h                                          ; $5c06: $b4
    ld b, [hl]                                    ; $5c07: $46
    ret                                           ; $5c08: $c9


    dec d                                         ; $5c09: $15
    and c                                         ; $5c0a: $a1
    push af                                       ; $5c0b: $f5
    ld l, h                                       ; $5c0c: $6c
    jr c, @+$19                                   ; $5c0d: $38 $17

    rst $28                                       ; $5c0f: $ef
    and l                                         ; $5c10: $a5
    ld a, [bc]                                    ; $5c11: $0a
    ld a, d                                       ; $5c12: $7a
    dec d                                         ; $5c13: $15
    ld h, [hl]                                    ; $5c14: $66
    ccf                                           ; $5c15: $3f
    ld l, l                                       ; $5c16: $6d
    rlca                                          ; $5c17: $07

Call_070_5c18:
    rst $28                                       ; $5c18: $ef
    xor h                                         ; $5c19: $ac
    ld b, b                                       ; $5c1a: $40
    ld h, d                                       ; $5c1b: $62
    pop de                                        ; $5c1c: $d1
    rst $38                                       ; $5c1d: $ff
    db $e4                                        ; $5c1e: $e4
    ld [$86cf], sp                                ; $5c1f: $08 $cf $86
    jr nc, jr_070_5c98                            ; $5c22: $30 $74

    halt                                          ; $5c24: $76
    ld sp, $d0ac                                  ; $5c25: $31 $ac $d0
    add [hl]                                      ; $5c28: $86
    add [hl]                                      ; $5c29: $86
    ret z                                         ; $5c2a: $c8

    sbc l                                         ; $5c2b: $9d
    res 4, b                                      ; $5c2c: $cb $a0
    ld e, e                                       ; $5c2e: $5b
    ccf                                           ; $5c2f: $3f
    ld c, d                                       ; $5c30: $4a
    ld e, c                                       ; $5c31: $59
    and d                                         ; $5c32: $a2
    jp z, $842a                                   ; $5c33: $ca $2a $84

    ld l, h                                       ; $5c36: $6c
    jr nz, @-$4d                                  ; $5c37: $20 $b1

    ld [hl], d                                    ; $5c39: $72
    sub [hl]                                      ; $5c3a: $96
    ld b, d                                       ; $5c3b: $42
    cp e                                          ; $5c3c: $bb
    ld [hl], d                                    ; $5c3d: $72
    and h                                         ; $5c3e: $a4
    ld d, c                                       ; $5c3f: $51
    dec d                                         ; $5c40: $15
    add hl, sp                                    ; $5c41: $39
    ld d, d                                       ; $5c42: $52
    ei                                            ; $5c43: $fb
    rra                                           ; $5c44: $1f
    ld a, c                                       ; $5c45: $79
    sub $70                                       ; $5c46: $d6 $70
    inc a                                         ; $5c48: $3c
    db $eb                                        ; $5c49: $eb
    xor c                                         ; $5c4a: $a9
    ld [hl], d                                    ; $5c4b: $72
    add h                                         ; $5c4c: $84
    or [hl]                                       ; $5c4d: $b6
    ld l, h                                       ; $5c4e: $6c
    dec sp                                        ; $5c4f: $3b
    nop                                           ; $5c50: $00
    rra                                           ; $5c51: $1f
    xor l                                         ; $5c52: $ad
    ld a, h                                       ; $5c53: $7c
    ld c, d                                       ; $5c54: $4a
    rla                                           ; $5c55: $17
    ld e, h                                       ; $5c56: $5c
    jp $2cf1                                      ; $5c57: $c3 $f1 $2c


    ld [hl], e                                    ; $5c5a: $73
    inc [hl]                                      ; $5c5b: $34
    ld e, b                                       ; $5c5c: $58
    inc sp                                        ; $5c5d: $33
    ld a, [$11a0]                                 ; $5c5e: $fa $a0 $11
    db $fd                                        ; $5c61: $fd
    sub h                                         ; $5c62: $94
    ld a, [de]                                    ; $5c63: $1a
    ld l, l                                       ; $5c64: $6d
    ld b, l                                       ; $5c65: $45
    ld d, h                                       ; $5c66: $54
    jp hl                                         ; $5c67: $e9


    ld a, [de]                                    ; $5c68: $1a
    jp nc, Jump_070_52dc                          ; $5c69: $d2 $dc $52

    db $fd                                        ; $5c6c: $fd
    sbc l                                         ; $5c6d: $9d
    db $ed                                        ; $5c6e: $ed
    nop                                           ; $5c6f: $00
    scf                                           ; $5c70: $37
    ld b, a                                       ; $5c71: $47
    sbc [hl]                                      ; $5c72: $9e
    push de                                       ; $5c73: $d5
    di                                            ; $5c74: $f3
    ld c, a                                       ; $5c75: $4f
    ld e, e                                       ; $5c76: $5b
    add sp, -$4e                                  ; $5c77: $e8 $b2
    ld a, [$9b75]                                 ; $5c79: $fa $75 $9b
    ld d, [hl]                                    ; $5c7c: $56
    ld c, h                                       ; $5c7d: $4c
    ld b, e                                       ; $5c7e: $43
    dec de                                        ; $5c7f: $1b
    ld de, $c755                                  ; $5c80: $11 $55 $c7
    ld a, [$5a49]                                 ; $5c83: $fa $49 $5a
    ld h, [hl]                                    ; $5c86: $66
    call c, Call_070_481b                         ; $5c87: $dc $1b $48
    inc l                                         ; $5c8a: $2c
    or e                                          ; $5c8b: $b3
    sbc h                                         ; $5c8c: $9c
    inc e                                         ; $5c8d: $1c
    ld l, l                                       ; $5c8e: $6d
    ld d, d                                       ; $5c8f: $52
    ld d, c                                       ; $5c90: $51
    sbc c                                         ; $5c91: $99
    inc c                                         ; $5c92: $0c
    dec c                                         ; $5c93: $0d
    ld h, c                                       ; $5c94: $61
    xor b                                         ; $5c95: $a8
    ld h, $d4                                     ; $5c96: $26 $d4

jr_070_5c98:
    rrca                                          ; $5c98: $0f
    di                                            ; $5c99: $f3
    ld b, l                                       ; $5c9a: $45
    ld l, h                                       ; $5c9b: $6c
    rlca                                          ; $5c9c: $07
    rst $28                                       ; $5c9d: $ef
    adc [hl]                                      ; $5c9e: $8e
    ld b, [hl]                                    ; $5c9f: $46
    ret c                                         ; $5ca0: $d8

    ld b, d                                       ; $5ca1: $42
    inc bc                                        ; $5ca2: $03
    adc c                                         ; $5ca3: $89
    dec d                                         ; $5ca4: $15
    ld c, a                                       ; $5ca5: $4f
    ld a, [$9553]                                 ; $5ca6: $fa $53 $95
    xor [hl]                                      ; $5ca9: $ae
    adc [hl]                                      ; $5caa: $8e
    ld a, c                                       ; $5cab: $79
    or h                                          ; $5cac: $b4
    daa                                           ; $5cad: $27
    db $ec                                        ; $5cae: $ec
    dec hl                                        ; $5caf: $2b
    adc e                                         ; $5cb0: $8b
    and c                                         ; $5cb1: $a1
    call Call_070_48d3                            ; $5cb2: $cd $d3 $48
    inc sp                                        ; $5cb5: $33
    and $a9                                       ; $5cb6: $e6 $a9
    ld b, a                                       ; $5cb8: $47
    xor c                                         ; $5cb9: $a9
    ld [hl], d                                    ; $5cba: $72
    halt                                          ; $5cbb: $76
    ld l, h                                       ; $5cbc: $6c
    rlca                                          ; $5cbd: $07
    sbc a                                         ; $5cbe: $9f
    adc l                                         ; $5cbf: $8d
    add a                                         ; $5cc0: $87
    ld d, $da                                     ; $5cc1: $16 $da
    inc de                                        ; $5cc3: $13
    or $95                                        ; $5cc4: $f6 $95
    push bc                                       ; $5cc6: $c5
    ret nc                                        ; $5cc7: $d0

    ld a, [$0ee9]                                 ; $5cc8: $fa $e9 $0e
    ccf                                           ; $5ccb: $3f
    push af                                       ; $5ccc: $f5
    xor h                                         ; $5ccd: $ac

jr_070_5cce:
    ld l, b                                       ; $5cce: $68
    inc c                                         ; $5ccf: $0c
    adc l                                         ; $5cd0: $8d
    ld h, e                                       ; $5cd1: $63
    add hl, de                                    ; $5cd2: $19
    xor [hl]                                      ; $5cd3: $ae
    add c                                         ; $5cd4: $81
    add h                                         ; $5cd5: $84

jr_070_5cd6:
    dec a                                         ; $5cd6: $3d
    sub b                                         ; $5cd7: $90
    ld l, b                                       ; $5cd8: $68
    sub l                                         ; $5cd9: $95
    ld [hl], b                                    ; $5cda: $70
    dec hl                                        ; $5cdb: $2b
    adc e                                         ; $5cdc: $8b
    pop hl                                        ; $5cdd: $e1
    pop de                                        ; $5cde: $d1
    db $e4                                        ; $5cdf: $e4
    ld d, b                                       ; $5ce0: $50
    sbc $0a                                       ; $5ce1: $de $0a
    ld l, c                                       ; $5ce3: $69
    db $eb                                        ; $5ce4: $eb
    inc l                                         ; $5ce5: $2c
    res 0, l                                      ; $5ce6: $cb $85
    ld a, [$ba25]                                 ; $5ce8: $fa $25 $ba
    ld e, e                                       ; $5ceb: $5b
    xor [hl]                                      ; $5cec: $ae
    ld a, l                                       ; $5ced: $7d
    dec sp                                        ; $5cee: $3b
    nop                                           ; $5cef: $00
    sub a                                         ; $5cf0: $97
    call $cad2                                    ; $5cf1: $cd $d2 $ca
    ld e, h                                       ; $5cf4: $5c
    ld [hl], l                                    ; $5cf5: $75
    ld c, h                                       ; $5cf6: $4c
    ld e, d                                       ; $5cf7: $5a
    ld b, l                                       ; $5cf8: $45
    adc b                                         ; $5cf9: $88
    jr c, jr_070_5cd6                             ; $5cfa: $38 $da

    inc a                                         ; $5cfc: $3c
    rst $38                                       ; $5cfd: $ff
    pop de                                        ; $5cfe: $d1
    ld a, d                                       ; $5cff: $7a
    ld d, [hl]                                    ; $5d00: $56
    jp nz, $bb25                                  ; $5d01: $c2 $25 $bb

    adc b                                         ; $5d04: $88
    add [hl]                                      ; $5d05: $86
    ld c, e                                       ; $5d06: $4b
    sub c                                         ; $5d07: $91
    db $fd                                        ; $5d08: $fd
    sub h                                         ; $5d09: $94
    xor [hl]                                      ; $5d0a: $ae
    di                                            ; $5d0b: $f3
    rra                                           ; $5d0c: $1f
    db $ed                                        ; $5d0d: $ed
    ld e, $5c                                     ; $5d0e: $1e $5c
    pop de                                        ; $5d10: $d1
    jr @-$48                                      ; $5d11: $18 $b6

    inc bc                                        ; $5d13: $03
    rra                                           ; $5d14: $1f
    db $fd                                        ; $5d15: $fd
    ld c, [hl]                                    ; $5d16: $4e
    sub l                                         ; $5d17: $95
    xor e                                         ; $5d18: $ab
    pop hl                                        ; $5d19: $e1
    ld e, b                                       ; $5d1a: $58
    jr nz, jr_070_5cce                            ; $5d1b: $20 $b1

    call c, $cda9                                 ; $5d1d: $dc $a9 $cd
    cp a                                          ; $5d20: $bf
    ld d, e                                       ; $5d21: $53
    and l                                         ; $5d22: $a5
    db $fd                                        ; $5d23: $fd
    jp hl                                         ; $5d24: $e9


    ld a, [hl+]                                   ; $5d25: $2a
    ld [hl-], a                                   ; $5d26: $32
    db $e4                                        ; $5d27: $e4
    db $d3                                        ; $5d28: $d3
    inc [hl]                                      ; $5d29: $34
    ld c, a                                       ; $5d2a: $4f
    cp a                                          ; $5d2b: $bf
    ld b, a                                       ; $5d2c: $47
    adc [hl]                                      ; $5d2d: $8e
    or b                                          ; $5d2e: $b0
    jp z, Jump_070_7571                           ; $5d2f: $ca $71 $75

    ld e, b                                       ; $5d32: $58
    ld e, d                                       ; $5d33: $5a
    sub c                                         ; $5d34: $91
    ld sp, $ce90                                  ; $5d35: $31 $90 $ce
    or d                                          ; $5d38: $b2
    ld e, h                                       ; $5d39: $5c
    ret c                                         ; $5d3a: $d8

    ld c, $9f                                     ; $5d3b: $0e $9f
    dec sp                                        ; $5d3d: $3b
    inc [hl]                                      ; $5d3e: $34
    adc [hl]                                      ; $5d3f: $8e
    ld b, l                                       ; $5d40: $45
    call nc, $22b3                                ; $5d41: $d4 $b3 $22
    ld b, e                                       ; $5d44: $43
    ld a, $4d                                     ; $5d45: $3e $4d
    dec h                                         ; $5d47: $25
    sub [hl]                                      ; $5d48: $96
    dec l                                         ; $5d49: $2d
    ld d, h                                       ; $5d4a: $54
    ld c, b                                       ; $5d4b: $48
    ld d, a                                       ; $5d4c: $57
    sbc h                                         ; $5d4d: $9c
    add $b0                                       ; $5d4e: $c6 $b0
    dec e                                         ; $5d50: $1d
    rst $28                                       ; $5d51: $ef
    rlca                                          ; $5d52: $07
    ld [hl], a                                    ; $5d53: $77
    halt                                          ; $5d54: $76
    pop af                                        ; $5d55: $f1
    and h                                         ; $5d56: $a4
    add [hl]                                      ; $5d57: $86
    jr nc, jr_070_5d8e                            ; $5d58: $30 $34

    add hl, sp                                    ; $5d5a: $39
    db $f4                                        ; $5d5b: $f4
    add h                                         ; $5d5c: $84
    ld a, l                                       ; $5d5d: $7d
    ld h, l                                       ; $5d5e: $65
    ld sp, $a42a                                  ; $5d5f: $31 $2a $a4
    ld l, e                                       ; $5d62: $6b
    ld e, $ed                                     ; $5d63: $1e $ed
    db $ec                                        ; $5d65: $ec
    ld [c], a                                     ; $5d66: $e2
    pop de                                        ; $5d67: $d1
    scf                                           ; $5d68: $37
    ld a, [$a17a]                                 ; $5d69: $fa $7a $a1
    sbc d                                         ; $5d6c: $9a
    inc [hl]                                      ; $5d6d: $34
    jp nz, $6d8f                                  ; $5d6e: $c2 $8f $6d

    rlca                                          ; $5d71: $07
    rst $10                                       ; $5d72: $d7
    rst $00                                       ; $5d73: $c7
    ld a, [de]                                    ; $5d74: $1a
    ld c, b                                       ; $5d75: $48
    inc l                                         ; $5d76: $2c
    dec [hl]                                      ; $5d77: $35
    cp $4e                                        ; $5d78: $fe $4e
    db $e3                                        ; $5d7a: $e3
    ld hl, sp-$2f                                 ; $5d7b: $f8 $d1
    adc d                                         ; $5d7d: $8a
    or b                                          ; $5d7e: $b0
    inc hl                                        ; $5d7f: $23
    ei                                            ; $5d80: $fb
    xor c                                         ; $5d81: $a9
    adc [hl]                                      ; $5d82: $8e
    ret nc                                        ; $5d83: $d0

    ret c                                         ; $5d84: $d8

    inc de                                        ; $5d85: $13
    or $95                                        ; $5d86: $f6 $95
    push bc                                       ; $5d88: $c5
    ret nc                                        ; $5d89: $d0

    scf                                           ; $5d8a: $37
    ld c, $37                                     ; $5d8b: $0e $37
    ld d, [hl]                                    ; $5d8d: $56

jr_070_5d8e:
    adc [hl]                                      ; $5d8e: $8e
    ld d, e                                       ; $5d8f: $53
    ld de, $88f6                                  ; $5d90: $11 $f6 $88
    ld a, d                                       ; $5d93: $7a
    ld d, h                                       ; $5d94: $54
    or c                                          ; $5d95: $b1
    jp $9ea3                                      ; $5d96: $c3 $a3 $9e


    dec d                                         ; $5d99: $15
    add hl, de                                    ; $5d9a: $19
    ld a, [c]                                     ; $5d9b: $f2
    ld l, c                                       ; $5d9c: $69
    ld [$0751], a                                 ; $5d9d: $ea $51 $07
    rst $30                                       ; $5da0: $f7
    set 5, l                                      ; $5da1: $cb $ed
    nop                                           ; $5da3: $00

Jump_070_5da4:
    ld l, a                                       ; $5da4: $6f
    rlca                                          ; $5da5: $07
    scf                                           ; $5da6: $37
    or h                                          ; $5da7: $b4
    ld a, e                                       ; $5da8: $7b
    ld l, [hl]                                    ; $5da9: $6e
    dec l                                         ; $5daa: $2d
    add a                                         ; $5dab: $87
    cp $79                                        ; $5dac: $fe $79
    cp e                                          ; $5dae: $bb
    add c                                         ; $5daf: $81
    call nz, Call_070_5532                        ; $5db0: $c4 $32 $55
    adc [hl]                                      ; $5db3: $8e
    ld b, l                                       ; $5db4: $45
    ld e, b                                       ; $5db5: $58
    and a                                         ; $5db6: $a7
    ld [de], a                                    ; $5db7: $12
    ld b, d                                       ; $5db8: $42
    xor $23                                       ; $5db9: $ee $23
    jr z, @-$5a                                   ; $5dbb: $28 $a4

    ld a, b                                       ; $5dbd: $78
    ld a, [de]                                    ; $5dbe: $1a
    ld c, b                                       ; $5dbf: $48
    xor h                                         ; $5dc0: $ac
    ld [$d5c6], sp                                ; $5dc1: $08 $c6 $d5
    db $e4                                        ; $5dc4: $e4
    ld d, b                                       ; $5dc5: $50
    sub c                                         ; $5dc6: $91
    ld hl, $8f7f                                  ; $5dc7: $21 $7f $8f
    db $ed                                        ; $5dca: $ed
    nop                                           ; $5dcb: $00
    sub a                                         ; $5dcc: $97
    inc bc                                        ; $5dcd: $03
    adc c                                         ; $5dce: $89
    dec sp                                        ; $5dcf: $3b
    or l                                          ; $5dd0: $b5
    ld [hl], d                                    ; $5dd1: $72
    ld a, [c]                                     ; $5dd2: $f2
    sbc a                                         ; $5dd3: $9f
    ld e, c                                       ; $5dd4: $59
    ld l, $3f                                     ; $5dd5: $2e $3f
    ld e, d                                       ; $5dd7: $5a
    adc a                                         ; $5dd8: $8f
    sbc $98                                       ; $5dd9: $de $98
    xor h                                         ; $5ddb: $ac
    or h                                          ; $5ddc: $b4
    sub l                                         ; $5ddd: $95
    ld [hl], c                                    ; $5dde: $71
    xor c                                         ; $5ddf: $a9
    rst $20                                       ; $5de0: $e7
    dec sp                                        ; $5de1: $3b
    or l                                          ; $5de2: $b5
    and d                                         ; $5de3: $a2
    dec h                                         ; $5de4: $25
    pop hl                                        ; $5de5: $e1
    ld a, [de]                                    ; $5de6: $1a
    adc [hl]                                      ; $5de7: $8e
    dec d                                         ; $5de8: $15
    ld [hl], a                                    ; $5de9: $77
    ld d, a                                       ; $5dea: $57
    ld [hl+], a                                   ; $5deb: $22
    ld b, a                                       ; $5dec: $47
    ld h, h                                       ; $5ded: $64
    ccf                                           ; $5dee: $3f
    push af                                       ; $5def: $f5
    db $ec                                        ; $5df0: $ec
    add hl, bc                                    ; $5df1: $09
    ei                                            ; $5df2: $fb
    ld l, h                                       ; $5df3: $6c
    rlca                                          ; $5df4: $07
    rst $10                                       ; $5df5: $d7
    or b                                          ; $5df6: $b0
    adc e                                         ; $5df7: $8b
    and $a7                                       ; $5df8: $e6 $a7
    ld a, [hl-]                                   ; $5dfa: $3a
    sub $53                                       ; $5dfb: $d6 $53
    ld hl, $935a                                  ; $5dfd: $21 $5a $93
    ld a, [de]                                    ; $5e00: $1a
    jp nz, $a150                                  ; $5e01: $c2 $50 $a1

    xor l                                         ; $5e04: $ad
    inc l                                         ; $5e05: $2c
    ld h, c                                       ; $5e06: $61
    push af                                       ; $5e07: $f5
    db $ec                                        ; $5e08: $ec
    add hl, bc                                    ; $5e09: $09
    ei                                            ; $5e0a: $fb
    jp z, Jump_070_5462                           ; $5e0b: $ca $62 $54

    adc [hl]                                      ; $5e0e: $8e
    ld l, e                                       ; $5e0f: $6b
    ld e, $55                                     ; $5e10: $1e $55
    ld l, b                                       ; $5e12: $68
    rst $38                                       ; $5e13: $ff
    ld d, b                                       ; $5e14: $50
    sbc l                                         ; $5e15: $9d
    ld h, h                                       ; $5e16: $64
    ret nc                                        ; $5e17: $d0

    xor l                                         ; $5e18: $ad
    scf                                           ; $5e19: $37
    add sp, $4a                                   ; $5e1a: $e8 $4a
    ld d, l                                       ; $5e1c: $55
    ld [$b4aa], sp                                ; $5e1d: $08 $aa $b4
    add l                                         ; $5e20: $85
    add [hl]                                      ; $5e21: $86
    or h                                          ; $5e22: $b4
    ld [hl], l                                    ; $5e23: $75
    ld a, [de]                                    ; $5e24: $1a
    sbc l                                         ; $5e25: $9d
    ld a, d                                       ; $5e26: $7a
    ld a, [hl-]                                   ; $5e27: $3a
    inc l                                         ; $5e28: $2c
    cp l                                          ; $5e29: $bd
    ld [hl], h                                    ; $5e2a: $74
    nop                                           ; $5e2b: $00
    rst $10                                       ; $5e2c: $d7
    ld d, [hl]                                    ; $5e2d: $56
    ld d, $a3                                     ; $5e2e: $16 $a3
    ld hl, sp-$21                                 ; $5e30: $f8 $df
    ld d, e                                       ; $5e32: $53

jr_070_5e33:
    ld de, $376e                                  ; $5e33: $11 $6e $37
    add hl, sp                                    ; $5e36: $39
    ld d, h                                       ; $5e37: $54
    ld [hl+], a                                   ; $5e38: $22
    ld a, a                                       ; $5e39: $7f
    adc a                                         ; $5e3a: $8f
    ld a, d                                       ; $5e3b: $7a
    or $84                                        ; $5e3c: $f6 $84
    ld a, l                                       ; $5e3e: $7d
    ld h, l                                       ; $5e3f: $65
    ld sp, $b9ea                                  ; $5e40: $31 $ea $b9
    cpl                                           ; $5e43: $2f
    cp c                                          ; $5e44: $b9
    ld b, [hl]                                    ; $5e45: $46
    or c                                          ; $5e46: $b1
    dec e                                         ; $5e47: $1d
    scf                                           ; $5e48: $37
    ld b, a                                       ; $5e49: $47
    sbc [hl]                                      ; $5e4a: $9e
    dec [hl]                                      ; $5e4b: $35
    rst $38                                       ; $5e4c: $ff
    ld c, [hl]                                    ; $5e4d: $4e
    rst $38                                       ; $5e4e: $ff
    ld h, a                                       ; $5e4f: $67
    dec a                                         ; $5e50: $3d
    ld h, c                                       ; $5e51: $61
    ld e, a                                       ; $5e52: $5f
    ld e, c                                       ; $5e53: $59
    inc c                                         ; $5e54: $0c
    xor l                                         ; $5e55: $ad
    inc e                                         ; $5e56: $1c
    ld d, a                                       ; $5e57: $57
    sub c                                         ; $5e58: $91
    ld sp, $c0f0                                  ; $5e59: $31 $f0 $c0
    ld e, c                                       ; $5e5c: $59
    sub [hl]                                      ; $5e5d: $96
    dec bc                                        ; $5e5e: $0b
    add l                                         ; $5e5f: $85
    ld e, h                                       ; $5e60: $5c
    ld c, $f5                                     ; $5e61: $0e $f5
    db $d3                                        ; $5e63: $d3
    ld a, b                                       ; $5e64: $78
    pop bc                                        ; $5e65: $c1
    adc h                                         ; $5e66: $8c
    or e                                          ; $5e67: $b3
    push af                                       ; $5e68: $f5
    or d                                          ; $5e69: $b2
    inc d                                         ; $5e6a: $14
    ld c, a                                       ; $5e6b: $4f
    inc bc                                        ; $5e6c: $03
    adc c                                         ; $5e6d: $89
    and l                                         ; $5e6e: $a5
    ld c, d                                       ; $5e6f: $4a
    ld a, b                                       ; $5e70: $78
    ld l, b                                       ; $5e71: $68
    and c                                         ; $5e72: $a1
    add l                                         ; $5e73: $85
    ld l, d                                       ; $5e74: $6a
    jp nc, $b708                                  ; $5e75: $d2 $08 $b7

    dec e                                         ; $5e78: $1d
    rst $10                                       ; $5e79: $d7
    sbc b                                         ; $5e7a: $98
    ld a, [de]                                    ; $5e7b: $1a
    ld h, d                                       ; $5e7c: $62
    dec [hl]                                      ; $5e7d: $35
    ld a, [de]                                    ; $5e7e: $1a
    add h                                         ; $5e7f: $84
    ret c                                         ; $5e80: $d8

    push bc                                       ; $5e81: $c5
    xor b                                         ; $5e82: $a8
    ld [hl-], a                                   ; $5e83: $32
    or d                                          ; $5e84: $b2
    ld [c], a                                     ; $5e85: $e2
    ld sp, $c368                                  ; $5e86: $31 $68 $c3
    or c                                          ; $5e89: $b1
    ld a, [$4105]                                 ; $5e8a: $fa $05 $41
    ld b, l                                       ; $5e8d: $45
    cp b                                          ; $5e8e: $b8
    call $a7ec                                    ; $5e8f: $cd $ec $a7
    sbc [hl]                                      ; $5e92: $9e
    adc l                                         ; $5e93: $8d
    ret                                           ; $5e94: $c9


    ld c, a                                       ; $5e95: $4f
    ld b, e                                       ; $5e96: $43
    jr jr_070_5e33                                ; $5e97: $18 $9a

    ld a, a                                       ; $5e99: $7f
    and a                                         ; $5e9a: $a7
    add c                                         ; $5e9b: $81
    ld b, h                                       ; $5e9c: $44
    and c                                         ; $5e9d: $a1
    pop bc                                        ; $5e9e: $c1
    adc d                                         ; $5e9f: $8a
    db $fd                                        ; $5ea0: $fd
    sub h                                         ; $5ea1: $94
    or d                                          ; $5ea2: $b2
    halt                                          ; $5ea3: $76
    cp $a3                                        ; $5ea4: $fe $a3
    db $db                                        ; $5ea6: $db
    ld bc, $5637                                  ; $5ea7: $01 $37 $56
    adc [hl]                                      ; $5eaa: $8e
    ld d, e                                       ; $5eab: $53
    ld de, $88f6                                  ; $5eac: $11 $f6 $88
    ld a, d                                       ; $5eaf: $7a
    halt                                          ; $5eb0: $76
    ld e, c                                       ; $5eb1: $59
    ld sp, $7095                                  ; $5eb2: $31 $95 $70
    pop hl                                        ; $5eb5: $e1
    call nc, $a7b3                                ; $5eb6: $d4 $b3 $a7
    reti                                          ; $5eb9: $d9


    ld b, l                                       ; $5eba: $45
    xor h                                         ; $5ebb: $ac
    inc e                                         ; $5ebc: $1c
    rst $10                                       ; $5ebd: $d7
    db $10                                        ; $5ebe: $10
    ld hl, $d6d6                                  ; $5ebf: $21 $d6 $d6
    di                                            ; $5ec2: $f3
    sbc l                                         ; $5ec3: $9d
    cp l                                          ; $5ec4: $bd
    ret nc                                        ; $5ec5: $d0

    db $e4                                        ; $5ec6: $e4
    ld a, d                                       ; $5ec7: $7a
    sbc d                                         ; $5ec8: $9a
    ld e, l                                       ; $5ec9: $5d
    or h                                          ; $5eca: $b4
    inc [hl]                                      ; $5ecb: $34
    and d                                         ; $5ecc: $a2
    and c                                         ; $5ecd: $a1
    adc l                                         ; $5ece: $8d
    ld l, b                                       ; $5ecf: $68
    xor c                                         ; $5ed0: $a9
    xor [hl]                                      ; $5ed1: $ae
    ret                                           ; $5ed2: $c9


    ret c                                         ; $5ed3: $d8

    dec b                                         ; $5ed4: $05
    ld d, l                                       ; $5ed5: $55
    ld [$c6f9], sp                                ; $5ed6: $08 $f9 $c6
    ld bc, $6837                                  ; $5ed9: $01 $37 $68
    pop bc                                        ; $5edc: $c1
    dec c                                         ; $5edd: $0d
    inc h                                         ; $5ede: $24
    ld d, $bd                                     ; $5edf: $16 $bd
    ld b, $0f                                     ; $5ee1: $06 $0f
    rst $00                                       ; $5ee3: $c7
    ld a, [hl]                                    ; $5ee4: $7e
    inc [hl]                                      ; $5ee5: $34
    add [hl]                                      ; $5ee6: $86
    cp $99                                        ; $5ee7: $fe $99
    dec h                                         ; $5ee9: $25
    ld l, l                                       ; $5eea: $6d
    and c                                         ; $5eeb: $a1
    ret                                           ; $5eec: $c9


    and c                                         ; $5eed: $a1
    ld a, e                                       ; $5eee: $7b
    adc d                                         ; $5eef: $8a
    add sp, -$09                                  ; $5ef0: $e8 $f7
    ld c, c                                       ; $5ef2: $49
    inc hl                                        ; $5ef3: $23
    ld a, [hl+]                                   ; $5ef4: $2a
    daa                                           ; $5ef5: $27
    ld b, a                                       ; $5ef6: $47
    ld b, e                                       ; $5ef7: $43
    sub e                                         ; $5ef8: $93
    ld b, e                                       ; $5ef9: $43
    ld c, a                                       ; $5efa: $4f
    ret c                                         ; $5efb: $d8

    ld d, a                                       ; $5efc: $57
    ld d, $e3                                     ; $5efd: $16 $e3
    adc l                                         ; $5eff: $8d
    inc bc                                        ; $5f00: $03
    scf                                           ; $5f01: $37
    ld [de], a                                    ; $5f02: $12
    ld a, [bc]                                    ; $5f03: $0a
    or a                                          ; $5f04: $b7
    ld c, [hl]                                    ; $5f05: $4e
    add sp, $55                                   ; $5f06: $e8 $55
    sbc d                                         ; $5f08: $9a
    ld e, e                                       ; $5f09: $5b
    sub e                                         ; $5f0a: $93
    reti                                          ; $5f0b: $d9


    dec bc                                        ; $5f0c: $0b
    ld c, l                                       ; $5f0d: $4d
    ld c, $95                                     ; $5f0e: $0e $95
    db $10                                        ; $5f10: $10
    ld a, [c]                                     ; $5f11: $f2
    ld [hl+], a                                   ; $5f12: $22
    ld [$f9d9], a                                 ; $5f13: $ea $d9 $f9
    rst $08                                       ; $5f16: $cf
    halt                                          ; $5f17: $76
    nop                                           ; $5f18: $00
    rst $20                                       ; $5f19: $e7
    xor c                                         ; $5f1a: $a9
    ld b, [hl]                                    ; $5f1b: $46
    db $ec                                        ; $5f1c: $ec
    adc [hl]                                      ; $5f1d: $8e
    add hl, sp                                    ; $5f1e: $39
    or d                                          ; $5f1f: $b2
    cp d                                          ; $5f20: $ba
    ld [hl], d                                    ; $5f21: $72
    sbc h                                         ; $5f22: $9c
    jp z, Jump_070_5371                           ; $5f23: $ca $71 $53

    ld h, l                                       ; $5f26: $65
    db $e3                                        ; $5f27: $e3
    ld a, [$9553]                                 ; $5f28: $fa $53 $95
    ld d, l                                       ; $5f2b: $55
    call c, $a7ed                                 ; $5f2c: $dc $ed $a7
    ld a, [hl]                                    ; $5f2f: $7e
    ld a, [hl-]                                   ; $5f30: $3a
    rst $38                                       ; $5f31: $ff
    xor c                                         ; $5f32: $a9
    and a                                         ; $5f33: $a7
    ld a, d                                       ; $5f34: $7a
    ld [hl], $90                                  ; $5f35: $36 $90
    ret c                                         ; $5f37: $d8

    rst $38                                       ; $5f38: $ff
    ld [hl], d                                    ; $5f39: $72
    dec c                                         ; $5f3a: $0d
    ld h, c                                       ; $5f3b: $61
    add sp, -$2b                                  ; $5f3c: $e8 $d5
    add hl, sp                                    ; $5f3e: $39
    db $fd                                        ; $5f3f: $fd
    ld [$ba8b], sp                                ; $5f40: $08 $8b $ba
    dec e                                         ; $5f43: $1d
    rst $20                                       ; $5f44: $e7
    ld c, e                                       ; $5f45: $4b
    ret nc                                        ; $5f46: $d0

    ld b, b                                       ; $5f47: $40
    and d                                         ; $5f48: $a2
    xor e                                         ; $5f49: $ab
    ld c, l                                       ; $5f4a: $4d
    ld [de], a                                    ; $5f4b: $12
    ld c, [hl]                                    ; $5f4c: $4e
    xor d                                         ; $5f4d: $aa
    ld h, e                                       ; $5f4e: $63
    jp nc, Jump_070_7fce                          ; $5f4f: $d2 $ce $7f

    or h                                          ; $5f52: $b4
    ld [hl], d                                    ; $5f53: $72
    ld l, [hl]                                    ; $5f54: $6e
    cpl                                           ; $5f55: $2f
    ccf                                           ; $5f56: $3f
    ld a, [$01c6]                                 ; $5f57: $fa $c6 $01
    scf                                           ; $5f5a: $37
    add sp, $42                                   ; $5f5b: $e8 $42
    ld h, e                                       ; $5f5d: $63
    dec e                                         ; $5f5e: $1d
    xor e                                         ; $5f5f: $ab
    dec hl                                        ; $5f60: $2b
    rst $00                                       ; $5f61: $c7
    xor c                                         ; $5f62: $a9
    inc e                                         ; $5f63: $1c
    scf                                           ; $5f64: $37
    ld d, l                                       ; $5f65: $55
    sub [hl]                                      ; $5f66: $96
    ld a, [de]                                    ; $5f67: $1a
    rst $10                                       ; $5f68: $d7
    sbc a                                         ; $5f69: $9f
    xor d                                         ; $5f6a: $aa
    ld l, h                                       ; $5f6b: $6c
    cp b                                          ; $5f6c: $b8
    inc d                                         ; $5f6d: $14
    reti                                          ; $5f6e: $d9


    ld c, a                                       ; $5f6f: $4f
    jp hl                                         ; $5f70: $e9


    ld a, [hl-]                                   ; $5f71: $3a
    rst $38                                       ; $5f72: $ff
    pop de                                        ; $5f73: $d1
    ld h, [hl]                                    ; $5f74: $66
    inc d                                         ; $5f75: $14
    ld l, c                                       ; $5f76: $69
    ld b, a                                       ; $5f77: $47
    db $fd                                        ; $5f78: $fd
    db $f4                                        ; $5f79: $f4
    ld b, [hl]                                    ; $5f7a: $46
    ld b, [hl]                                    ; $5f7b: $46
    ret z                                         ; $5f7c: $c8

    db $ed                                        ; $5f7d: $ed
    nop                                           ; $5f7e: $00
    rst $20                                       ; $5f7f: $e7
    ld a, [de]                                    ; $5f80: $1a
    daa                                           ; $5f81: $27
    dec [hl]                                      ; $5f82: $35
    cp $4e                                        ; $5f83: $fe $4e
    dec h                                         ; $5f85: $25
    or d                                          ; $5f86: $b2
    jp nz, $034f                                  ; $5f87: $c2 $4f $03

    adc c                                         ; $5f8a: $89
    dec c                                         ; $5f8b: $0d
    inc h                                         ; $5f8c: $24
    jp c, Jump_000_2114                           ; $5f8d: $da $14 $21

    inc sp                                        ; $5f90: $33
    or h                                          ; $5f91: $b4
    adc [hl]                                      ; $5f92: $8e
    add l                                         ; $5f93: $85
    jr z, @+$67                                   ; $5f94: $28 $65

    rrca                                          ; $5f96: $0f
    ld l, e                                       ; $5f97: $6b
    ld c, [hl]                                    ; $5f98: $4e
    xor [hl]                                      ; $5f99: $ae
    ld [hl], d                                    ; $5f9a: $72
    halt                                          ; $5f9b: $76
    add hl, hl                                    ; $5f9c: $29
    cp $9d                                        ; $5f9d: $fe $9d
    ld a, d                                       ; $5f9f: $7a
    ld [hl], $64                                  ; $5fa0: $36 $64
    add [hl]                                      ; $5fa2: $86
    ld d, [hl]                                    ; $5fa3: $56
    ld c, b                                       ; $5fa4: $48
    ld d, a                                       ; $5fa5: $57
    rlca                                          ; $5fa6: $07
    cp c                                          ; $5fa7: $b9
    ld h, [hl]                                    ; $5fa8: $66
    dec sp                                        ; $5fa9: $3b
    nop                                           ; $5faa: $00
    rst $20                                       ; $5fab: $e7
    ld a, [de]                                    ; $5fac: $1a
    ld d, c                                       ; $5fad: $51
    pop af                                        ; $5fae: $f1
    jp nc, $8f78                                  ; $5faf: $d2 $78 $8f

    dec l                                         ; $5fb2: $2d
    call nc, Call_070_7b43                        ; $5fb3: $d4 $43 $7b
    jp nz, $b2be                                  ; $5fb6: $c2 $be $b2

    jr @-$24                                      ; $5fb9: $18 $da

    rst $28                                       ; $5fbb: $ef
    add e                                         ; $5fbc: $83
    dec de                                        ; $5fbd: $1b
    ld b, d                                       ; $5fbe: $42
    ld [hl], l                                    ; $5fbf: $75
    ld d, d                                       ; $5fc0: $52
    db $fd                                        ; $5fc1: $fd
    ld l, b                                       ; $5fc2: $68
    rst $30                                       ; $5fc3: $f7
    push hl                                       ; $5fc4: $e5
    ld d, [hl]                                    ; $5fc5: $56
    and h                                         ; $5fc6: $a4
    ld l, [hl]                                    ; $5fc7: $6e
    rlca                                          ; $5fc8: $07
    ld l, a                                       ; $5fc9: $6f
    ld d, e                                       ; $5fca: $53
    ld h, l                                       ; $5fcb: $65
    jp c, $3e43                                   ; $5fcc: $da $43 $3e

    pop hl                                        ; $5fcf: $e1
    jr z, jr_070_603a                             ; $5fd0: $28 $68

    cp $9d                                        ; $5fd2: $fe $9d
    ld b, $12                                     ; $5fd4: $06 $12
    ld l, l                                       ; $5fd6: $6d
    ld a, [hl+]                                   ; $5fd7: $2a
    daa                                           ; $5fd8: $27
    rst $38                                       ; $5fd9: $ff
    ld l, c                                       ; $5fda: $69
    ld a, [bc]                                    ; $5fdb: $0a
    db $db                                        ; $5fdc: $db
    ld a, d                                       ; $5fdd: $7a
    adc l                                         ; $5fde: $8d
    push de                                       ; $5fdf: $d5
    sub l                                         ; $5fe0: $95
    db $e3                                        ; $5fe1: $e3
    inc [hl]                                      ; $5fe2: $34
    cp c                                          ; $5fe3: $b9
    add [hl]                                      ; $5fe4: $86
    sub e                                         ; $5fe5: $93
    db $e4                                        ; $5fe6: $e4
    inc [hl]                                      ; $5fe7: $34
    inc e                                         ; $5fe8: $1c
    xor e                                         ; $5fe9: $ab
    db $10                                        ; $5fea: $10
    db $eb                                        ; $5feb: $eb
    sub $54                                       ; $5fec: $d6 $54
    inc a                                         ; $5fee: $3c
    rst $18                                       ; $5fef: $df
    ld [hl], e                                    ; $5ff0: $73
    dec sp                                        ; $5ff1: $3b
    nop                                           ; $5ff2: $00
    rra                                           ; $5ff3: $1f
    and c                                         ; $5ff4: $a1
    ld l, [hl]                                    ; $5ff5: $6e
    ld h, l                                       ; $5ff6: $65
    ld sp, $e13a                                  ; $5ff7: $31 $3a $e1
    jp z, Jump_070_77eb                           ; $5ffa: $ca $eb $77

    inc b                                         ; $5ffd: $04
    cp l                                          ; $5ffe: $bd
    sub c                                         ; $5fff: $91
    ld de, $8eb2                                  ; $6000: $11 $b2 $8e
    ld b, [hl]                                    ; $6003: $46
    ret                                           ; $6004: $c9


    ld a, [hl+]                                   ; $6005: $2a
    xor l                                         ; $6006: $ad
    ld [hl], d                                    ; $6007: $72
    add h                                         ; $6008: $84
    or h                                          ; $6009: $b4
    jr c, @-$69                                   ; $600a: $38 $95

    db $e3                                        ; $600c: $e3
    ld a, [de]                                    ; $600d: $1a
    ld l, $29                                     ; $600e: $2e $29
    ld h, [hl]                                    ; $6010: $66
    reti                                          ; $6011: $d9


    sub b                                         ; $6012: $90
    add hl, de                                    ; $6013: $19
    cp d                                          ; $6014: $ba
    dec e                                         ; $6015: $1d
    scf                                           ; $6016: $37
    daa                                           ; $6017: $27
    dec [hl]                                      ; $6018: $35
    add h                                         ; $6019: $84
    and c                                         ; $601a: $a1
    xor b                                         ; $601b: $a8
    ld h, d                                       ; $601c: $62
    ld b, a                                       ; $601d: $47
    dec a                                         ; $601e: $3d
    ld a, e                                       ; $601f: $7b
    ld e, d                                       ; $6020: $5a
    add hl, sp                                    ; $6021: $39
    ld e, b                                       ; $6022: $58
    db $e3                                        ; $6023: $e3
    sub d                                         ; $6024: $92
    jr z, jr_070_6029                             ; $6025: $28 $02

    adc c                                         ; $6027: $89
    sub d                                         ; $6028: $92

jr_070_6029:
    ld d, [hl]                                    ; $6029: $56
    or a                                          ; $602a: $b7
    or d                                          ; $602b: $b2
    jr jr_070_6088                                ; $602c: $18 $5a

    dec e                                         ; $602e: $1d
    and c                                         ; $602f: $a1
    pop af                                        ; $6030: $f1
    add hl, bc                                    ; $6031: $09
    add hl, sp                                    ; $6032: $39
    or a                                          ; $6033: $b7
    and b                                         ; $6034: $a0
    db $db                                        ; $6035: $db
    ld bc, $fd1f                                  ; $6036: $01 $1f $fd
    ld c, [hl]                                    ; $6039: $4e

jr_070_603a:
    xor c                                         ; $603a: $a9
    ld sp, $ae79                                  ; $603b: $31 $79 $ae
    ld c, [hl]                                    ; $603e: $4e
    add l                                         ; $603f: $85
    ret nc                                        ; $6040: $d0

    adc b                                         ; $6041: $88
    inc e                                         ; $6042: $1c
    reti                                          ; $6043: $d9


    db $10                                        ; $6044: $10
    add [hl]                                      ; $6045: $86
    cp d                                          ; $6046: $ba
    sub l                                         ; $6047: $95
    push bc                                       ; $6048: $c5
    ld l, b                                       ; $6049: $68
    ld l, b                                       ; $604a: $68
    di                                            ; $604b: $f3
    rst $00                                       ; $604c: $c7
    sub $b7                                       ; $604d: $d6 $b7
    xor c                                         ; $604f: $a9
    ld c, d                                       ; $6050: $4a
    db $ed                                        ; $6051: $ed
    db $fc                                        ; $6052: $fc
    ld b, a                                       ; $6053: $47
    sbc e                                         ; $6054: $9b
    ld a, a                                       ; $6055: $7f
    and a                                         ; $6056: $a7
    ld a, a                                       ; $6057: $7f
    xor h                                         ; $6058: $ac
    ld a, [hl+]                                   ; $6059: $2a
    sub [hl]                                      ; $605a: $96
    dec [hl]                                      ; $605b: $35
    jp $3b63                                      ; $605c: $c3 $63 $3b


    nop                                           ; $605f: $00
    rra                                           ; $6060: $1f
    and a                                         ; $6061: $a7
    rst $38                                       ; $6062: $ff
    xor d                                         ; $6063: $aa
    ld e, a                                       ; $6064: $5f
    or a                                          ; $6065: $b7
    ld l, c                                       ; $6066: $69
    dec c                                         ; $6067: $0d
    inc h                                         ; $6068: $24
    or $93                                        ; $6069: $f6 $93
    or h                                          ; $606b: $b4
    call z, Call_070_57b8                         ; $606c: $cc $b8 $57
    ld l, c                                       ; $606f: $69
    pop bc                                        ; $6070: $c1
    push af                                       ; $6071: $f5
    inc c                                         ; $6072: $0c
    sbc c                                         ; $6073: $99
    pop hl                                        ; $6074: $e1
    and a                                         ; $6075: $a7
    sbc [hl]                                      ; $6076: $9e
    ld d, l                                       ; $6077: $55
    and [hl]                                      ; $6078: $a6
    jp nc, $c685                                  ; $6079: $d2 $85 $c6

    db $d3                                        ; $607c: $d3
    ld d, h                                       ; $607d: $54
    ld e, c                                       ; $607e: $59
    ld c, l                                       ; $607f: $4d
    ret nc                                        ; $6080: $d0

    ld [hl+], a                                   ; $6081: $22
    db $ed                                        ; $6082: $ed
    ret nc                                        ; $6083: $d0

    and $df                                       ; $6084: $e6 $df
    xor c                                         ; $6086: $a9
    db $e3                                        ; $6087: $e3

jr_070_6088:
    ld l, $1e                                     ; $6088: $2e $1e
    add e                                         ; $608a: $83
    pop de                                        ; $608b: $d1
    ld l, l                                       ; $608c: $6d
    rlca                                          ; $608d: $07
    sub a                                         ; $608e: $97
    dec de                                        ; $608f: $1b
    jp c, $a888                                   ; $6090: $da $88 $a8

    ld a, [hl-]                                   ; $6093: $3a
    add [hl]                                      ; $6094: $86
    ld e, [hl]                                    ; $6095: $5e
    sub e                                         ; $6096: $93
    rst $28                                       ; $6097: $ef
    ld c, [hl]                                    ; $6098: $4e
    add $09                                       ; $6099: $c6 $09
    ei                                            ; $609b: $fb
    sbc $0b                                       ; $609c: $de $0b
    sub l                                         ; $609e: $95
    db $e3                                        ; $609f: $e3
    and [hl]                                      ; $60a0: $a6
    ret                                           ; $60a1: $c9


    and c                                         ; $60a2: $a1
    daa                                           ; $60a3: $27
    db $ec                                        ; $60a4: $ec
    dec hl                                        ; $60a5: $2b
    adc e                                         ; $60a6: $8b
    pop de                                        ; $60a7: $d1
    ret nc                                        ; $60a8: $d0

    ld h, $f2                                     ; $60a9: $26 $f2
    call nz, $a7ec                                ; $60ab: $c4 $ec $a7
    jp z, $9da4                                   ; $60ae: $ca $a4 $9d

    rst $38                                       ; $60b1: $ff
    ld l, b                                       ; $60b2: $68
    push hl                                       ; $60b3: $e5
    cp b                                          ; $60b4: $b8
    ld c, [hl]                                    ; $60b5: $4e
    ld b, e                                       ; $60b6: $43
    xor d                                         ; $60b7: $aa
    ld c, $f6                                     ; $60b8: $0e $f6
    ld a, d                                       ; $60ba: $7a
    db $f4                                        ; $60bb: $f4
    ld e, l                                       ; $60bc: $5d
    ld e, e                                       ; $60bd: $5b
    and d                                         ; $60be: $a2
    sub l                                         ; $60bf: $95
    rst $28                                       ; $60c0: $ef
    or c                                          ; $60c1: $b1
    add l                                         ; $60c2: $85
    db $ed                                        ; $60c3: $ed
    nop                                           ; $60c4: $00
    sub a                                         ; $60c5: $97
    dec hl                                        ; $60c6: $2b
    sub c                                         ; $60c7: $91
    cp a                                          ; $60c8: $bf
    ld b, a                                       ; $60c9: $47
    dec a                                         ; $60ca: $3d
    ld a, e                                       ; $60cb: $7b
    jp nz, $b2be                                  ; $60cc: $c2 $be $b2

    jr jr_070_60de                                ; $60cf: $18 $0d

    inc h                                         ; $60d1: $24
    ld [hl], $ae                                  ; $60d2: $36 $ae
    ccf                                           ; $60d4: $3f
    db $dd                                        ; $60d5: $dd
    ld l, b                                       ; $60d6: $68
    di                                            ; $60d7: $f3
    inc d                                         ; $60d8: $14
    cp e                                          ; $60d9: $bb
    sbc e                                         ; $60da: $9b
    adc e                                         ; $60db: $8b
    ld d, e                                       ; $60dc: $53
    pop af                                        ; $60dd: $f1

jr_070_60de:
    ld a, h                                       ; $60de: $7c
    rst $08                                       ; $60df: $cf
    ld d, d                                       ; $60e0: $52
    inc hl                                        ; $60e1: $23
    cp $28                                        ; $60e2: $fe $28
    ld l, a                                       ; $60e4: $6f
    ld c, c                                       ; $60e5: $49
    xor $cc                                       ; $60e6: $ee $cc
    sub c                                         ; $60e8: $91
    sub a                                         ; $60e9: $97
    ld c, $e7                                     ; $60ea: $0e $e7
    ld a, [de]                                    ; $60ec: $1a
    daa                                           ; $60ed: $27
    ld d, l                                       ; $60ee: $55
    adc [hl]                                      ; $60ef: $8e
    db $e3                                        ; $60f0: $e3
    ld b, l                                       ; $60f1: $45
    ld h, h                                       ; $60f2: $64
    ccf                                           ; $60f3: $3f
    ld b, l                                       ; $60f4: $45
    ld c, a                                       ; $60f5: $4f
    and e                                         ; $60f6: $a3
    ld de, $cf56                                  ; $60f7: $11 $56 $cf
    ld d, d                                       ; $60fa: $52
    and l                                         ; $60fb: $a5
    pop af                                        ; $60fc: $f1
    ld c, a                                       ; $60fd: $4f
    xor e                                         ; $60fe: $ab
    inc e                                         ; $60ff: $1c
    rst $10                                       ; $6100: $d7
    db $e4                                        ; $6101: $e4
    ret nc                                        ; $6102: $d0

    sub b                                         ; $6103: $90
    add hl, de                                    ; $6104: $19
    db $db                                        ; $6105: $db
    ld bc, $8d6f                                  ; $6106: $01 $6f $8d
    ld l, e                                       ; $6109: $6b
    inc [hl]                                      ; $610a: $34
    ld [$8bb1], sp                                ; $610b: $08 $b1 $8b

jr_070_610e:
    ld b, a                                       ; $610e: $47
    ret nc                                        ; $610f: $d0

    xor e                                         ; $6110: $ab
    jr nc, jr_070_610e                            ; $6111: $30 $fb

    jp hl                                         ; $6113: $e9


    jp nc, $d701                                  ; $6114: $d2 $01 $d7

    or b                                          ; $6117: $b0
    scf                                           ; $6118: $37
    inc e                                         ; $6119: $1c
    push de                                       ; $611a: $d5
    add hl, hl                                    ; $611b: $29
    dec [hl]                                      ; $611c: $35
    and h                                         ; $611d: $a4
    pop bc                                        ; $611e: $c1
    ld a, [de]                                    ; $611f: $1a
    ld [hl], d                                    ; $6120: $72
    sbc a                                         ; $6121: $9f
    xor [hl]                                      ; $6122: $ae
    ld a, h                                       ; $6123: $7c

jr_070_6124:
    or a                                          ; $6124: $b7
    ld e, h                                       ; $6125: $5c
    ld d, e                                       ; $6126: $53
    rrca                                          ; $6127: $0f
    dec l                                         ; $6128: $2d
    jp nc, $bd0e                                  ; $6129: $d2 $0e $bd

    call nc, $c6cf                                ; $612c: $d4 $cf $c6
    adc a                                         ; $612f: $8f
    halt                                          ; $6130: $76
    or h                                          ; $6131: $b4
    ld e, a                                       ; $6132: $5f
    db $10                                        ; $6133: $10
    cp d                                          ; $6134: $ba
    di                                            ; $6135: $f3
    daa                                           ; $6136: $27
    db $ed                                        ; $6137: $ed
    rst $38                                       ; $6138: $ff
    ld [hl], a                                    ; $6139: $77
    ld a, [de]                                    ; $613a: $1a
    jp nz, $abd0                                  ; $613b: $c2 $d0 $ab

    ld [hl], e                                    ; $613e: $73
    ld a, [$1611]                                 ; $613f: $fa $11 $16
    ld [hl], l                                    ; $6142: $75
    dec sp                                        ; $6143: $3b
    nop                                           ; $6144: $00
    rst $10                                       ; $6145: $d7
    jp nc, Jump_070_538a                          ; $6146: $d2 $8a $53

    ld hl, $a5dd                                  ; $6149: $21 $dd $a5
    sbc [hl]                                      ; $614c: $9e
    ld l, e                                       ; $614d: $6b
    ld c, b                                       ; $614e: $48
    sbc e                                         ; $614f: $9b
    ld l, $6b                                     ; $6150: $2e $6b
    ld [$d143], sp                                ; $6152: $08 $43 $d1
    ld [hl], a                                    ; $6155: $77
    ld l, l                                       ; $6156: $6d
    adc c                                         ; $6157: $89
    ld d, [hl]                                    ; $6158: $56
    cp [hl]                                       ; $6159: $be
    rst $00                                       ; $615a: $c7
    ld d, $04                                     ; $615b: $16 $04
    adc l                                         ; $615d: $8d
    ld [hl], b                                    ; $615e: $70
    jp nz, $ee0b                                  ; $615f: $c2 $0b $ee

    jp nc, $9701                                  ; $6162: $d2 $01 $97

    rst $30                                       ; $6165: $f7
    ld d, e                                       ; $6166: $53
    jp z, $93da                                   ; $6167: $ca $da $93

    dec l                                         ; $616a: $2d
    pop de                                        ; $616b: $d1
    ld l, b                                       ; $616c: $68
    db $e3                                        ; $616d: $e3
    sbc c                                         ; $616e: $99
    ld l, e                                       ; $616f: $6b
    ld l, b                                       ; $6170: $68
    ld d, h                                       ; $6171: $54
    xor b                                         ; $6172: $a8
    and b                                         ; $6173: $a0
    ret c                                         ; $6174: $d8

    cpl                                           ; $6175: $2f
    cp b                                          ; $6176: $b8
    ld a, d                                       ; $6177: $7a
    ld d, [hl]                                    ; $6178: $56
    cp b                                          ; $6179: $b8
    db $e4                                        ; $617a: $e4
    add sp, $76                                   ; $617b: $e8 $76
    nop                                           ; $617d: $00
    rst $28                                       ; $617e: $ef
    ld h, d                                       ; $617f: $62
    ld e, a                                       ; $6180: $5f
    ld e, c                                       ; $6181: $59
    inc c                                         ; $6182: $0c
    ld l, l                                       ; $6183: $6d
    jr c, jr_070_6124                             ; $6184: $38 $9e

    xor [hl]                                      ; $6186: $ae
    ld sp, hl                                     ; $6187: $f9
    ld [hl], a                                    ; $6188: $77
    ld a, [de]                                    ; $6189: $1a
    ld l, c                                       ; $618a: $69
    db $dd                                        ; $618b: $dd
    add e                                         ; $618c: $83
    add l                                         ; $618d: $85
    ld l, e                                       ; $618e: $6b
    ld d, h                                       ; $618f: $54
    ld d, b                                       ; $6190: $50
    rlca                                          ; $6191: $07
    dec l                                         ; $6192: $2d
    or $53                                        ; $6193: $f6 $53
    jp z, $93da                                   ; $6195: $ca $da $93

    dec l                                         ; $6198: $2d
    pop de                                        ; $6199: $d1
    ld l, b                                       ; $619a: $68
    inc hl                                        ; $619b: $23
    ld e, l                                       ; $619c: $5d
    dec a                                         ; $619d: $3d
    ld [hl], e                                    ; $619e: $73
    and h                                         ; $619f: $a4
    ld l, [hl]                                    ; $61a0: $6e
    rlca                                          ; $61a1: $07
    rst $20                                       ; $61a2: $e7
    ld a, [de]                                    ; $61a3: $1a
    daa                                           ; $61a4: $27
    dec [hl]                                      ; $61a5: $35
    cp $4e                                        ; $61a6: $fe $4e
    ld b, l                                       ; $61a8: $45
    call c, $edd7                                 ; $61a9: $dc $d7 $ed
    ld a, d                                       ; $61ac: $7a
    sub [hl]                                      ; $61ad: $96
    ld a, [de]                                    ; $61ae: $1a
    ld h, c                                       ; $61af: $61
    ld b, l                                       ; $61b0: $45
    jr nz, @-$51                                  ; $61b1: $20 $ad

    ld c, e                                       ; $61b3: $4b
    cp l                                          ; $61b4: $bd
    add hl, sp                                    ; $61b5: $39
    xor c                                         ; $61b6: $a9
    ld [$d98d], sp                                ; $61b7: $08 $8d $d9
    db $d3                                        ; $61ba: $d3
    ld a, [de]                                    ; $61bb: $1a
    sub c                                         ; $61bc: $91
    db $e3                                        ; $61bd: $e3
    sub h                                         ; $61be: $94
    adc l                                         ; $61bf: $8d
    bit 4, b                                      ; $61c0: $cb $60
    call $a113                                    ; $61c2: $cd $13 $a1
    adc l                                         ; $61c5: $8d
    cp a                                          ; $61c6: $bf
    ld d, e                                       ; $61c7: $53
    pop hl                                        ; $61c8: $e1
    ld b, b                                       ; $61c9: $40
    cpl                                           ; $61ca: $2f
    dec e                                         ; $61cb: $1d
    rst $10                                       ; $61cc: $d7
    rst $00                                       ; $61cd: $c7
    ld a, [de]                                    ; $61ce: $1a
    ld c, b                                       ; $61cf: $48
    db $ec                                        ; $61d0: $ec
    call nc, $342f                                ; $61d1: $d4 $2f $34
    jp nc, $9035                                  ; $61d4: $d2 $35 $90

    ld e, b                                       ; $61d7: $58
    jr c, @+$66                                   ; $61d8: $38 $64

    ld sp, $ad25                                  ; $61da: $31 $25 $ad
    pop af                                        ; $61dd: $f1
    ld [hl], a                                    ; $61de: $77
    ld a, [hl+]                                   ; $61df: $2a
    jp hl                                         ; $61e0: $e9


    rst $20                                       ; $61e1: $e7
    adc l                                         ; $61e2: $8d
    inc bc                                        ; $61e3: $03
    rst $20                                       ; $61e4: $e7
    ld a, [de]                                    ; $61e5: $1a
    ld h, c                                       ; $61e6: $61
    ld e, h                                       ; $61e7: $5c
    push hl                                       ; $61e8: $e5
    dec l                                         ; $61e9: $2d
    cp c                                          ; $61ea: $b9
    ld [hl+], a                                   ; $61eb: $22
    db $fc                                        ; $61ec: $fc
    ld d, h                                       ; $61ed: $54
    adc [hl]                                      ; $61ee: $8e
    xor e                                         ; $61ef: $ab
    ld h, e                                       ; $61f0: $63
    ld l, d                                       ; $61f1: $6a
    ld l, b                                       ; $61f2: $68
    bit 6, c                                      ; $61f3: $cb $71
    reti                                          ; $61f5: $d9


    call nc, $d42f                                ; $61f6: $d4 $2f $d4
    or e                                          ; $61f9: $b3
    ld c, b                                       ; $61fa: $48
    dec sp                                        ; $61fb: $3b
    cp d                                          ; $61fc: $ba
    ld l, l                                       ; $61fd: $6d
    ld e, e                                       ; $61fe: $5b
    and c                                         ; $61ff: $a1
    cp d                                          ; $6200: $ba
    ld e, h                                       ; $6201: $5c
    inc bc                                        ; $6202: $03
    adc c                                         ; $6203: $89
    add l                                         ; $6204: $85
    inc e                                         ; $6205: $1c
    di                                            ; $6206: $f3
    or b                                          ; $6207: $b0
    db $ed                                        ; $6208: $ed
    nop                                           ; $6209: $00
    scf                                           ; $620a: $37
    ld b, a                                       ; $620b: $47

jr_070_620c:
    sbc [hl]                                      ; $620c: $9e
    dec [hl]                                      ; $620d: $35
    rst $38                                       ; $620e: $ff
    ld c, [hl]                                    ; $620f: $4e
    push hl                                       ; $6210: $e5
    ld h, h                                       ; $6211: $64
    ld sp, $9b25                                  ; $6212: $31 $25 $9b
    sbc c                                         ; $6215: $99
    push bc                                       ; $6216: $c5
    ret                                           ; $6217: $c9


    and c                                         ; $6218: $a1
    ld d, a                                       ; $6219: $57
    add $09                                       ; $621a: $c6 $09
    ld d, a                                       ; $621c: $57
    add $c5                                       ; $621d: $c6 $c5
    rst $18                                       ; $621f: $df
    xor c                                         ; $6220: $a9
    ld h, a                                       ; $6221: $67
    xor a                                         ; $6222: $af
    ret nz                                        ; $6223: $c0

    ld [hl+], a                                   ; $6224: $22
    db $f4                                        ; $6225: $f4
    jp nc, Jump_070_6f01                          ; $6226: $d2 $01 $6f

    pop de                                        ; $6229: $d1
    dec a                                         ; $622a: $3d
    pop af                                        ; $622b: $f1
    ld e, a                                       ; $622c: $5f
    reti                                          ; $622d: $d9


    ld c, a                                       ; $622e: $4f
    dec a                                         ; $622f: $3d
    ei                                            ; $6230: $fb
    sbc a                                         ; $6231: $9f
    dec a                                         ; $6232: $3d

jr_070_6233:
    ld b, d                                       ; $6233: $42
    ret nc                                        ; $6234: $d0

    xor e                                         ; $6235: $ab
    jr nc, jr_070_6233                            ; $6236: $30 $fb

    ld l, c                                       ; $6238: $69
    ld l, e                                       ; $6239: $6b
    xor a                                         ; $623a: $af
    adc a                                         ; $623b: $8f
    dec [hl]                                      ; $623c: $35
    jp nc, $acaa                                  ; $623d: $d2 $aa $ac

Jump_070_6240:
    ld [c], a                                     ; $6240: $e2
    ld l, [hl]                                    ; $6241: $6e
    ccf                                           ; $6242: $3f
    adc l                                         ; $6243: $8d
    cp a                                          ; $6244: $bf
    ld d, e                                       ; $6245: $53
    ld hl, $e55d                                  ; $6246: $21 $5d $e5
    cp b                                          ; $6249: $b8
    ld l, d                                       ; $624a: $6a
    ld b, d                                       ; $624b: $42
    rst $38                                       ; $624c: $ff
    ld d, b                                       ; $624d: $50
    sbc l                                         ; $624e: $9d
    ld h, h                                       ; $624f: $64
    jr z, jr_070_62c4                             ; $6250: $28 $72

    and h                                         ; $6252: $a4
    ld a, [bc]                                    ; $6253: $0a
    cp d                                          ; $6254: $ba
    adc e                                         ; $6255: $8b
    reti                                          ; $6256: $d9


    sub e                                         ; $6257: $93
    ld hl, $d12e                                  ; $6258: $21 $2e $d1
    sub d                                         ; $625b: $92
    jr nc, jr_070_620c                            ; $625c: $30 $ae

    ld a, d                                       ; $625e: $7a
    xor [hl]                                      ; $625f: $ae
    ld e, e                                       ; $6260: $5b
    ret z                                         ; $6261: $c8

    ld a, [hl]                                    ; $6262: $7e
    ld a, [$791f]                                 ; $6263: $fa $1f $79
    sub $d0                                       ; $6266: $d6 $d0
    db $10                                        ; $6268: $10
    sub a                                         ; $6269: $97
    add h                                         ; $626a: $84
    dec [hl]                                      ; $626b: $35
    and h                                         ; $626c: $a4
    add hl, hl                                    ; $626d: $29
    ld c, a                                       ; $626e: $4f
    ld l, c                                       ; $626f: $69
    ld h, l                                       ; $6270: $65
    ccf                                           ; $6271: $3f
    ld c, l                                       ; $6272: $4d
    ld c, $95                                     ; $6273: $0e $95
    ld h, e                                       ; $6275: $63
    jp hl                                         ; $6276: $e9


    ld a, e                                       ; $6277: $7b
    ld l, h                                       ; $6278: $6c
    rlca                                          ; $6279: $07
    ld l, a                                       ; $627a: $6f

jr_070_627b:
    adc l                                         ; $627b: $8d
    ld l, e                                       ; $627c: $6b
    inc [hl]                                      ; $627d: $34
    ld [$8bb1], sp                                ; $627e: $08 $b1 $8b

jr_070_6281:
    ld b, a                                       ; $6281: $47
    ret nc                                        ; $6282: $d0

    xor e                                         ; $6283: $ab
    jr nc, jr_070_6281                            ; $6284: $30 $fb

    ld l, c                                       ; $6286: $69
    ld l, e                                       ; $6287: $6b
    ld l, a                                       ; $6288: $6f
    adc $1e                                       ; $6289: $ce $1e
    reti                                          ; $628b: $d9


    db $10                                        ; $628c: $10
    add [hl]                                      ; $628d: $86
    cp $07                                        ; $628e: $fe $07
    sub $3c                                       ; $6290: $d6 $3c
    ld a, a                                       ; $6292: $7f
    jr c, jr_070_627b                             ; $6293: $38 $e6

    ret z                                         ; $6295: $c8

    and d                                         ; $6296: $a2
    add c                                         ; $6297: $81
    add h                                         ; $6298: $84
    dec a                                         ; $6299: $3d
    sub b                                         ; $629a: $90
    ld l, b                                       ; $629b: $68
    dec d                                         ; $629c: $15
    adc a                                         ; $629d: $8f
    ld h, c                                       ; $629e: $61
    dec sp                                        ; $629f: $3b
    nop                                           ; $62a0: $00
    sub a                                         ; $62a1: $97
    rst $30                                       ; $62a2: $f7
    ld d, e                                       ; $62a3: $53
    cp d                                          ; $62a4: $ba
    ldh [$ea], a                                  ; $62a5: $e0 $ea
    ld e, b                                       ; $62a7: $58
    cp a                                          ; $62a8: $bf
    ld d, h                                       ; $62a9: $54
    reti                                          ; $62aa: $d9


    db $10                                        ; $62ab: $10
    add [hl]                                      ; $62ac: $86
    ld [hl-], a                                   ; $62ad: $32
    set 1, c                                      ; $62ae: $cb $c9
    pop de                                        ; $62b0: $d1

Jump_070_62b1:
    ld h, b                                       ; $62b1: $60
    sbc l                                         ; $62b2: $9d
    adc d                                         ; $62b3: $8a
    sub b                                         ; $62b4: $90
    inc hl                                        ; $62b5: $23
    call nc, $1ea1                                ; $62b6: $d4 $a1 $1e
    ld a, l                                       ; $62b9: $7d
    rst $10                                       ; $62ba: $d7
    sub [hl]                                      ; $62bb: $96
    ld l, b                                       ; $62bc: $68

jr_070_62bd:
    push hl                                       ; $62bd: $e5
    ld a, e                                       ; $62be: $7b
    ld l, h                                       ; $62bf: $6c
    ld h, c                                       ; $62c0: $61
    db $eb                                        ; $62c1: $eb
    dec [hl]                                      ; $62c2: $35
    ld l, b                                       ; $62c3: $68

jr_070_62c4:
    sbc c                                         ; $62c4: $99
    sbc d                                         ; $62c5: $9a
    ld a, a                                       ; $62c6: $7f
    and a                                         ; $62c7: $a7
    db $d3                                        ; $62c8: $d3
    ccf                                           ; $62c9: $3f
    cp a                                          ; $62ca: $bf
    sbc a                                         ; $62cb: $9f
    ld [hl+], a                                   ; $62cc: $22

jr_070_62cd:
    sub b                                         ; $62cd: $90
    ld d, [hl]                                    ; $62ce: $56
    jp hl                                         ; $62cf: $e9


    ld a, [hl+]                                   ; $62d0: $2a
    sub a                                         ; $62d1: $97
    jp Jump_000_0076                              ; $62d2: $c3 $76 $00


    rra                                           ; $62d5: $1f
    ld l, e                                       ; $62d6: $6b
    ld b, l                                       ; $62d7: $45
    ret z                                         ; $62d8: $c8

    ld de, $a0ea                                  ; $62d9: $11 $ea $a0
    ld d, l                                       ; $62dc: $55
    ld [$0ae9], sp                                ; $62dd: $08 $e9 $0a
    xor l                                         ; $62e0: $ad
    ld [hl-], a                                   ; $62e1: $32
    adc e                                         ; $62e2: $8b
    and c                                         ; $62e3: $a1
    push af                                       ; $62e4: $f5
    xor h                                         ; $62e5: $ac
    ld h, $68                                     ; $62e6: $26 $68
    dec h                                         ; $62e8: $25
    inc d                                         ; $62e9: $14
    ld a, [hl+]                                   ; $62ea: $2a
    xor b                                         ; $62eb: $a8
    add e                                         ; $62ec: $83
    sub [hl]                                      ; $62ed: $96
    xor c                                         ; $62ee: $a9
    sub c                                         ; $62ef: $91
    ld e, c                                       ; $62f0: $59
    inc a                                         ; $62f1: $3c
    ld [hl], l                                    ; $62f2: $75
    db $f4                                        ; $62f3: $f4
    ld d, e                                       ; $62f4: $53
    rst $08                                       ; $62f5: $cf
    add [hl]                                      ; $62f6: $86
    or h                                          ; $62f7: $b4
    ld d, e                                       ; $62f8: $53
    jp z, $b611                                   ; $62f9: $ca $11 $b6

    dec e                                         ; $62fc: $1d
    rra                                           ; $62fd: $1f
    ld l, e                                       ; $62fe: $6b
    ld b, l                                       ; $62ff: $45
    ret z                                         ; $6300: $c8

    ld de, $a0ea                                  ; $6301: $11 $ea $a0
    push af                                       ; $6304: $f5
    ret nc                                        ; $6305: $d0

    ld c, d                                       ; $6306: $4a
    jr z, jr_070_62bd                             ; $6307: $28 $b4

    ld [hl], d                                    ; $6309: $72
    or d                                          ; $630a: $b2
    sbc b                                         ; $630b: $98
    sub d                                         ; $630c: $92
    xor [hl]                                      ; $630d: $ae
    ret nc                                        ; $630e: $d0

    ld a, [hl+]                                   ; $630f: $2a
    or e                                          ; $6310: $b3
    jr jr_070_62cd                                ; $6311: $18 $ba

    push af                                       ; $6313: $f5
    inc a                                         ; $6314: $3c
    set 1, c                                      ; $6315: $cb $c9
    pop de                                        ; $6317: $d1
    ld e, b                                       ; $6318: $58
    db $ec                                        ; $6319: $ec
    and a                                         ; $631a: $a7
    ld [hl], h                                    ; $631b: $74
    pop bc                                        ; $631c: $c1
    push de                                       ; $631d: $d5
    adc l                                         ; $631e: $8d
    push bc                                       ; $631f: $c5
    add hl, hl                                    ; $6320: $29
    dec de                                        ; $6321: $1b

Call_070_6322:
    jp nc, Jump_000_294e                          ; $6322: $d2 $4e $29

    ld b, a                                       ; $6325: $47
    ld l, [hl]                                    ; $6326: $6e
    rlca                                          ; $6327: $07
    rst $28                                       ; $6328: $ef
    jr nz, jr_070_6372                            ; $6329: $20 $47

    xor b                                         ; $632b: $a8
    add e                                         ; $632c: $83
    ld d, $d9                                     ; $632d: $16 $d9
    jp $cef5                                      ; $632f: $c3 $f5 $ce


    and $59                                       ; $6332: $e6 $59
    sub c                                         ; $6334: $91
    ld h, l                                       ; $6335: $65
    push hl                                       ; $6336: $e5
    ld h, h                                       ; $6337: $64
    ld sp, $5d25                                  ; $6338: $31 $25 $5d
    ld e, l                                       ; $633b: $5d
    ld e, d                                       ; $633c: $5a
    ld [hl], c                                    ; $633d: $71
    or h                                          ; $633e: $b4
    ld l, [hl]                                    ; $633f: $6e
    ld l, c                                       ; $6340: $69
    cp h                                          ; $6341: $bc
    ld h, b                                       ; $6342: $60
    ld l, e                                       ; $6343: $6b
    ld [hl], h                                    ; $6344: $74
    db $eb                                        ; $6345: $eb
    ld h, a                                       ; $6346: $67
    ret c                                         ; $6347: $d8

    rst $38                                       ; $6348: $ff
    cp h                                          ; $6349: $bc
    ld e, l                                       ; $634a: $5d
    add hl, sp                                    ; $634b: $39
    ld e, c                                       ; $634c: $59
    call z, Call_070_708b                         ; $634d: $cc $8b $70
    ld d, l                                       ; $6350: $55
    ld h, [hl]                                    ; $6351: $66

Jump_070_6352:
    ld sp, $d054                                  ; $6352: $31 $54 $d0
    ld [$bc27], sp                                ; $6355: $08 $27 $bc
    ldh [$b6], a                                  ; $6358: $e0 $b6
    inc bc                                        ; $635a: $03
    scf                                           ; $635b: $37
    add e                                         ; $635c: $83
    dec de                                        ; $635d: $1b
    jp nz, $a9d0                                  ; $635e: $c2 $d0 $a9

    ld a, [c]                                     ; $6361: $f2
    ld d, [hl]                                    ; $6362: $56
    sbc h                                         ; $6363: $9c
    ld [hl+], a                                   ; $6364: $22
    ld a, e                                       ; $6365: $7b
    ld e, b                                       ; $6366: $58
    reti                                          ; $6367: $d9


    sub b                                         ; $6368: $90
    halt                                          ; $6369: $76
    ld c, d                                       ; $636a: $4a
    add hl, sp                                    ; $636b: $39
    or d                                          ; $636c: $b2
    sbc b                                         ; $636d: $98
    add [hl]                                      ; $636e: $86
    or [hl]                                       ; $636f: $b6
    inc e                                         ; $6370: $1c
    sub a                                         ; $6371: $97

jr_070_6372:
    ld c, l                                       ; $6372: $4d
    ld b, l                                       ; $6373: $45
    ret z                                         ; $6374: $c8

    ld de, $d0ea                                  ; $6375: $11 $ea $d0
    ld b, b                                       ; $6378: $40
    ld h, d                                       ; $6379: $62
    sbc c                                         ; $637a: $99
    push hl                                       ; $637b: $e5
    db $e4                                        ; $637c: $e4
    ld l, b                                       ; $637d: $68
    or b                                          ; $637e: $b0
    db $ed                                        ; $637f: $ed
    nop                                           ; $6380: $00
    rra                                           ; $6381: $1f
    dec l                                         ; $6382: $2d
    ld sp, hl                                     ; $6383: $f9
    ld b, e                                       ; $6384: $43
    ccf                                           ; $6385: $3f
    ld c, c                                       ; $6386: $49
    ld d, b                                       ; $6387: $50
    ld a, $71                                     ; $6388: $3e $71
    add e                                         ; $638a: $83
    xor $89                                       ; $638b: $ee $89
    dec hl                                        ; $638d: $2b
    db $10                                        ; $638e: $10
    ld a, [c]                                     ; $638f: $f2
    ld [hl+], a                                   ; $6390: $22
    ld c, d                                       ; $6391: $4a
    adc l                                         ; $6392: $8d
    pop bc                                        ; $6393: $c1
    call $bbe8                                    ; $6394: $cd $e8 $bb
    or [hl]                                       ; $6397: $b6
    ld b, h                                       ; $6398: $44
    dec hl                                        ; $6399: $2b
    rst $18                                       ; $639a: $df
    ld h, e                                       ; $639b: $63
    dec bc                                        ; $639c: $0b
    dec d                                         ; $639d: $15
    rlca                                          ; $639e: $07
    rst $10                                       ; $639f: $d7
    ld h, c                                       ; $63a0: $61
    ld l, c                                       ; $63a1: $69
    inc hl                                        ; $63a2: $23
    ld e, l                                       ; $63a3: $5d
    jr c, jr_070_63b3                             ; $63a4: $38 $0d

    inc h                                         ; $63a6: $24
    ld [hl], $90                                  ; $63a7: $36 $90
    or b                                          ; $63a9: $b0
    rlca                                          ; $63aa: $07
    ld [de], a                                    ; $63ab: $12
    xor l                                         ; $63ac: $ad
    ret                                           ; $63ad: $c9


    ld l, l                                       ; $63ae: $6d
    dec a                                         ; $63af: $3d
    rst $18                                       ; $63b0: $df
    reti                                          ; $63b1: $d9


    ret nc                                        ; $63b2: $d0

jr_070_63b3:
    and $8f                                       ; $63b3: $e6 $8f
    ccf                                           ; $63b5: $3f
    ld [hl], a                                    ; $63b6: $77
    rst $00                                       ; $63b7: $c7
    inc e                                         ; $63b8: $1c
    ld e, c                                       ; $63b9: $59
    add l                                         ; $63ba: $85
    sub b                                         ; $63bb: $90
    db $db                                        ; $63bc: $db
    ld bc, $6dd7                                  ; $63bd: $01 $d7 $6d
    ld h, h                                       ; $63c0: $64
    ld [hl-], a                                   ; $63c1: $32
    halt                                          ; $63c2: $76
    ld a, [hl+]                                   ; $63c3: $2a
    ld b, d                                       ; $63c4: $42

Call_070_63c5:
    adc [hl]                                      ; $63c5: $8e
    ld d, b                                       ; $63c6: $50
    add a                                         ; $63c7: $87
    ld a, d                                       ; $63c8: $7a
    db $f4                                        ; $63c9: $f4
    ld e, l                                       ; $63ca: $5d
    ld e, e                                       ; $63cb: $5b
    and d                                         ; $63cc: $a2
    sub l                                         ; $63cd: $95
    rst $28                                       ; $63ce: $ef
    or c                                          ; $63cf: $b1
    dec b                                         ; $63d0: $05
    ld b, c                                       ; $63d1: $41
    and e                                         ; $63d2: $a3
    sbc l                                         ; $63d3: $9d
    ld l, c                                       ; $63d4: $69
    sub c                                         ; $63d5: $91
    dec a                                         ; $63d6: $3d
    adc h                                         ; $63d7: $8c
    ld e, d                                       ; $63d8: $5a
    ret z                                         ; $63d9: $c8

    push hl                                       ; $63da: $e5
    or b                                          ; $63db: $b0
    dec e                                         ; $63dc: $1d
    sbc a                                         ; $63dd: $9f
    ld sp, $3647                                  ; $63de: $31 $47 $36
    and h                                         ; $63e1: $a4
    sbc l                                         ; $63e2: $9d
    ld d, d                                       ; $63e3: $52
    adc [hl]                                      ; $63e4: $8e
    or b                                          ; $63e5: $b0
    ld a, [hl-]                                   ; $63e6: $3a
    inc l                                         ; $63e7: $2c
    ld l, l                                       ; $63e8: $6d
    ld c, b                                       ; $63e9: $48
    adc e                                         ; $63ea: $8b
    ld d, e                                       ; $63eb: $53
    adc a                                         ; $63ec: $8f
    cp [hl]                                       ; $63ed: $be
    ld l, e                                       ; $63ee: $6b
    ld c, e                                       ; $63ef: $4b
    or h                                          ; $63f0: $b4
    ld a, [c]                                     ; $63f1: $f2
    dec a                                         ; $63f2: $3d
    or [hl]                                       ; $63f3: $b6
    jr nz, jr_070_645e                            ; $63f4: $20 $68

    call nz, $e7fe                                ; $63f6: $c4 $fe $e7
    db $ed                                        ; $63f9: $ed
    and $a9                                       ; $63fa: $e6 $a9
    ld a, [c]                                     ; $63fc: $f2
    ld d, [hl]                                    ; $63fd: $56
    sbc h                                         ; $63fe: $9c
    ld [hl+], a                                   ; $63ff: $22
    ld a, e                                       ; $6400: $7b
    ret c                                         ; $6401: $d8

    halt                                          ; $6402: $76
    nop                                           ; $6403: $00
    scf                                           ; $6404: $37
    ld b, a                                       ; $6405: $47
    sbc [hl]                                      ; $6406: $9e
    dec [hl]                                      ; $6407: $35
    inc [hl]                                      ; $6408: $34
    jp z, Jump_070_68a5                           ; $6409: $ca $a5 $68

    ld c, b                                       ; $640c: $48
    dec sp                                        ; $640d: $3b
    and l                                         ; $640e: $a5
    inc e                                         ; $640f: $1c
    ld h, c                                       ; $6410: $61
    push bc                                       ; $6411: $c5
    db $f4                                        ; $6412: $f4
    and e                                         ; $6413: $a3
    dec h                                         ; $6414: $25
    ld a, a                                       ; $6415: $7f
    add sp, $27                                   ; $6416: $e8 $27
    add hl, bc                                    ; $6418: $09
    jp z, Jump_070_6e27                           ; $6419: $ca $27 $6e

    ret nc                                        ; $641c: $d0

    dec a                                         ; $641d: $3d
    ld [hl], c                                    ; $641e: $71
    dec b                                         ; $641f: $05
    ld b, d                                       ; $6420: $42
    ld e, [hl]                                    ; $6421: $5e
    add h                                         ; $6422: $84
    and b                                         ; $6423: $a0
    ld a, e                                       ; $6424: $7b
    ld [hl], b                                    ; $6425: $70
    jp hl                                         ; $6426: $e9


    ld a, [hl+]                                   ; $6427: $2a
    sub a                                         ; $6428: $97
    jp Jump_000_0076                              ; $6429: $c3 $76 $00


    rst $10                                       ; $642c: $d7
    ld l, c                                       ; $642d: $69
    and a                                         ; $642e: $a7
    sub h                                         ; $642f: $94
    inc hl                                        ; $6430: $23
    adc e                                         ; $6431: $8b
    jp hl                                         ; $6432: $e9


    or [hl]                                       ; $6433: $b6
    ld l, l                                       ; $6434: $6d
    db $fd                                        ; $6435: $fd
    adc a                                         ; $6436: $8f
    inc a                                         ; $6437: $3c
    xor e                                         ; $6438: $ab
    ld b, d                                       ; $6439: $42
    ld c, b                                       ; $643a: $48
    ld b, c                                       ; $643b: $41
    ld de, $dc48                                  ; $643c: $11 $48 $dc
    ld e, c                                       ; $643f: $59
    ld de, $8472                                  ; $6440: $11 $72 $84
    ld a, [hl-]                                   ; $6443: $3a
    ld [hl], h                                    ; $6444: $74

jr_070_6445:
    db $db                                        ; $6445: $db
    or [hl]                                       ; $6446: $b6
    ld a, [hl]                                    ; $6447: $7e
    ld b, h                                       ; $6448: $44
    rst $38                                       ; $6449: $ff
    call nz, $0927                                ; $644a: $c4 $27 $09
    jp z, Jump_070_6e27                           ; $644d: $ca $27 $6e

    ret nc                                        ; $6450: $d0

    dec a                                         ; $6451: $3d
    ld [hl], c                                    ; $6452: $71
    sbc l                                         ; $6453: $9d
    ld a, [hl+]                                   ; $6454: $2a
    rst $20                                       ; $6455: $e7
    ld [c], a                                     ; $6456: $e2
    cp h                                          ; $6457: $bc
    pop de                                        ; $6458: $d1
    adc a                                         ; $6459: $8f
    ld d, e                                       ; $645a: $53
    or c                                          ; $645b: $b1
    sbc a                                         ; $645c: $9f
    and [hl]                                      ; $645d: $a6

jr_070_645e:
    ld d, b                                       ; $645e: $50
    ld e, l                                       ; $645f: $5d
    ld l, [hl]                                    ; $6460: $6e
    dec sp                                        ; $6461: $3b
    nop                                           ; $6462: $00
    rst $10                                       ; $6463: $d7
    rst $00                                       ; $6464: $c7
    ld a, [de]                                    ; $6465: $1a
    ld c, b                                       ; $6466: $48
    ld l, h                                       ; $6467: $6c
    ld l, b                                       ; $6468: $68
    inc hl                                        ; $6469: $23
    sub e                                         ; $646a: $93
    pop bc                                        ; $646b: $c1
    adc d                                         ; $646c: $8a
    ld b, b                                       ; $646d: $40
    ld e, d                                       ; $646e: $5a
    ld l, a                                       ; $646f: $6f
    db $f4                                        ; $6470: $f4
    ld a, [hl-]                                   ; $6471: $3a
    db $ed                                        ; $6472: $ed
    sub h                                         ; $6473: $94
    ld [hl], d                                    ; $6474: $72
    ld h, h                                       ; $6475: $64
    ld sp, $68fd                                  ; $6476: $31 $fd $68
    ret                                           ; $6479: $c9


    rra                                           ; $647a: $1f
    sbc d                                         ; $647b: $9a
    and a                                         ; $647c: $a7
    jp z, Jump_070_715b                           ; $647d: $ca $5b $71

    adc d                                         ; $6480: $8a
    db $ec                                        ; $6481: $ec
    ld h, c                                       ; $6482: $61
    db $db                                        ; $6483: $db
    ld bc, $6b1f                                  ; $6484: $01 $1f $6b
    ld b, l                                       ; $6487: $45
    ret z                                         ; $6488: $c8

    ld de, $a0ea                                  ; $6489: $11 $ea $a0
    push af                                       ; $648c: $f5
    ret nc                                        ; $648d: $d0

    ld c, d                                       ; $648e: $4a
    jr z, jr_070_6445                             ; $648f: $28 $b4

    ld a, [bc]                                    ; $6491: $0a
    ld hl, $a15d                                  ; $6492: $21 $5d $a1
    ld d, l                                       ; $6495: $55
    ld h, [hl]                                    ; $6496: $66
    ld sp, $eb74                                  ; $6497: $31 $74 $eb
    dec sp                                        ; $649a: $3b
    call c, $6dd7                                 ; $649b: $dc $d7 $6d
    rst $00                                       ; $649e: $c7
    inc e                                         ; $649f: $1c
    reti                                          ; $64a0: $d9


    db $10                                        ; $64a1: $10
    add [hl]                                      ; $64a2: $86
    cp $47                                        ; $64a3: $fe $47
    sbc [hl]                                      ; $64a5: $9e
    add hl, bc                                    ; $64a6: $09
    ld a, [hl-]                                   ; $64a7: $3a
    push af                                       ; $64a8: $f5
    xor b                                         ; $64a9: $a8
    ld h, $54                                     ; $64aa: $26 $54
    ld b, d                                       ; $64ac: $42
    ld d, c                                       ; $64ad: $51
    ld de, $6c76                                  ; $64ae: $11 $76 $6c
    cp l                                          ; $64b1: $bd
    ld l, [hl]                                    ; $64b2: $6e
    inc hl                                        ; $64b3: $23
    sub e                                         ; $64b4: $93
    or c                                          ; $64b5: $b1
    pop hl                                        ; $64b6: $e1
    ld e, b                                       ; $64b7: $58
    cp c                                          ; $64b8: $b9
    or e                                          ; $64b9: $b3
    ld a, c                                       ; $64ba: $79
    xor d                                         ; $64bb: $aa
    cp h                                          ; $64bc: $bc
    dec d                                         ; $64bd: $15
    and a                                         ; $64be: $a7
    ret z                                         ; $64bf: $c8

    ld e, $b6                                     ; $64c0: $1e $b6
    dec e                                         ; $64c2: $1d
    scf                                           ; $64c3: $37
    sub [hl]                                      ; $64c4: $96
    push af                                       ; $64c5: $f5
    and e                                         ; $64c6: $a3
    dec h                                         ; $64c7: $25
    push bc                                       ; $64c8: $c5
    or e                                          ; $64c9: $b3
    ld b, e                                       ; $64ca: $43
    db $eb                                        ; $64cb: $eb
    reti                                          ; $64cc: $d9


    ld l, e                                       ; $64cd: $6b
    set 5, c                                      ; $64ce: $cb $e9
    ld c, a                                       ; $64d0: $4f
    ld c, a                                       ; $64d1: $4f
    ld e, h                                       ; $64d2: $5c
    rra                                           ; $64d3: $1f
    dec bc                                        ; $64d4: $0b
    ld d, a                                       ; $64d5: $57
    ld a, $c5                                     ; $64d6: $3e $c5
    ret                                           ; $64d8: $c9


    cp l                                          ; $64d9: $bd
    ret nc                                        ; $64da: $d0

    xor c                                         ; $64db: $a9
    ld a, b                                       ; $64dc: $78
    inc e                                         ; $64dd: $1c
    ld e, l                                       ; $64de: $5d
    inc bc                                        ; $64df: $03
    adc c                                         ; $64e0: $89
    db $fd                                        ; $64e1: $fd
    adc a                                         ; $64e2: $8f
    inc a                                         ; $64e3: $3c
    xor e                                         ; $64e4: $ab
    rst $20                                       ; $64e5: $e7

jr_070_64e6:
    sbc a                                         ; $64e6: $9f
    db $fd                                        ; $64e7: $fd
    db $d3                                        ; $64e8: $d3
    or [hl]                                       ; $64e9: $b6
    ld e, [hl]                                    ; $64ea: $5e
    or a                                          ; $64eb: $b7
    sub c                                         ; $64ec: $91
    ret                                           ; $64ed: $c9


    ret c                                         ; $64ee: $d8

    inc a                                         ; $64ef: $3c
    ld d, l                                       ; $64f0: $55
    sbc $8a                                       ; $64f1: $de $8a
    ld d, e                                       ; $64f3: $53
    ld h, h                                       ; $64f4: $64
    rrca                                          ; $64f5: $0f
    db $db                                        ; $64f6: $db
    ld c, $d7                                     ; $64f7: $0e $d7
    ld l, l                                       ; $64f9: $6d
    ld h, h                                       ; $64fa: $64
    ld [hl-], a                                   ; $64fb: $32
    ld [hl], $e4                                  ; $64fc: $36 $e4
    ld a, $15                                     ; $64fe: $3e $15
    ld hl, $a847                                  ; $6500: $21 $47 $a8
    ld b, e                                       ; $6503: $43
    push hl                                       ; $6504: $e5
    cp b                                          ; $6505: $b8
    and d                                         ; $6506: $a2
    ld [de], a                                    ; $6507: $12
    ld b, d                                       ; $6508: $42
    ld e, [hl]                                    ; $6509: $5e
    ld b, h                                       ; $650a: $44
    db $fd                                        ; $650b: $fd
    ld [$f82d], sp                                ; $650c: $08 $2d $f8
    rst $08                                       ; $650f: $cf
    cp l                                          ; $6510: $bd
    ld a, c                                       ; $6511: $79
    xor d                                         ; $6512: $aa
    cp h                                          ; $6513: $bc
    dec d                                         ; $6514: $15
    and a                                         ; $6515: $a7
    ret z                                         ; $6516: $c8

    ld e, $b6                                     ; $6517: $1e $b6
    push af                                       ; $6519: $f5
    ld a, h                                       ; $651a: $7c
    ld h, a                                       ; $651b: $67
    cpl                                           ; $651c: $2f
    ld [hl], h                                    ; $651d: $74
    ld a, [hl+]                                   ; $651e: $2a
    ld e, $47                                     ; $651f: $1e $47
    ld d, a                                       ; $6521: $57
    inc [hl]                                      ; $6522: $34
    sub b                                         ; $6523: $90
    add sp, $1a                                   ; $6524: $e8 $1a
    jp nc, Jump_000_294e                          ; $6526: $d2 $4e $29

    ld b, a                                       ; $6529: $47
    ret c                                         ; $652a: $d8

    halt                                          ; $652b: $76
    nop                                           ; $652c: $00
    rra                                           ; $652d: $1f
    dec bc                                        ; $652e: $0b
    ld l, l                                       ; $652f: $6d
    sbc l                                         ; $6530: $9d
    ldh [$a7], a                                  ; $6531: $e0 $a7
    ld hl, $d477                                  ; $6533: $21 $77 $d4
    db $d3                                        ; $6536: $d3
    ld c, l                                       ; $6537: $4d
    sub $68                                       ; $6538: $d6 $68
    cp b                                          ; $653a: $b8
    ld hl, sp+$3b                                 ; $653b: $f8 $3b
    add d                                         ; $653d: $82
    ld e, [hl]                                    ; $653e: $5e
    add l                                         ; $653f: $85
    reti                                          ; $6540: $d9


    ld c, a                                       ; $6541: $4f
    ld e, e                                       ; $6542: $5b
    cpl                                           ; $6543: $2f
    rlca                                          ; $6544: $07
    jp nc, Jump_000_352a                          ; $6545: $d2 $2a $35

    ld b, $37                                     ; $6548: $06 $37
    cp c                                          ; $654a: $b9
    adc d                                         ; $654b: $8a
    cp b                                          ; $654c: $b8
    ld [c], a                                     ; $654d: $e2
    cp d                                          ; $654e: $ba
    jr c, jr_070_64e6                             ; $654f: $38 $95

    db $e3                                        ; $6551: $e3
    and [hl]                                      ; $6552: $a6
    ld b, [hl]                                    ; $6553: $46
    add hl, sp                                    ; $6554: $39
    ld l, $64                                     ; $6555: $2e $64
    ld d, [hl]                                    ; $6557: $56
    ld l, h                                       ; $6558: $6c
    rlca                                          ; $6559: $07
    rst $28                                       ; $655a: $ef
    ld a, [hl]                                    ; $655b: $7e
    ld a, [$f5de]                                 ; $655c: $fa $de $f5
    rst $08                                       ; $655f: $cf
    ld a, $fe                                     ; $6560: $3e $fe
    add sp, -$43                                  ; $6562: $e8 $bd
    rst $08                                       ; $6564: $cf
    adc $fb                                       ; $6565: $ce $fb
    xor $e5                                       ; $6567: $ee $e5
    ld l, e                                       ; $6569: $6b
    rst $20                                       ; $656a: $e7
    scf                                           ; $656b: $37
    ld c, $3d                                     ; $656c: $0e $3d
    nop                                           ; $656e: $00
    rst $10                                       ; $656f: $d7
    ld l, l                                       ; $6570: $6d
    ld a, h                                       ; $6571: $7c
    adc d                                         ; $6572: $8a
    ld h, e                                       ; $6573: $63
    dec a                                         ; $6574: $3d
    cp a                                          ; $6575: $bf
    ld b, l                                       ; $6576: $45
    sbc c                                         ; $6577: $99
    ld [c], a                                     ; $6578: $e2
    ld a, [$01cf]                                 ; $6579: $fa $cf $01
    scf                                           ; $657c: $37
    ld [hl+], a                                   ; $657d: $22
    rst $38                                       ; $657e: $ff
    db $ec                                        ; $657f: $ec
    ld a, c                                       ; $6580: $79
    adc h                                         ; $6581: $8c
    dec hl                                        ; $6582: $2b
    sbc a                                         ; $6583: $9f
    ld l, b                                       ; $6584: $68
    rlca                                          ; $6585: $07
    dec a                                         ; $6586: $3d
    nop                                           ; $6587: $00
    ld d, a                                       ; $6588: $57
    call nz, $b114                                ; $6589: $c4 $14 $b1
    sbc [hl]                                      ; $658c: $9e
    ld a, l                                       ; $658d: $7d
    sbc e                                         ; $658e: $9b
    jp z, $9ffc                                   ; $658f: $ca $fc $9f

    db $fd                                        ; $6592: $fd
    cp a                                          ; $6593: $bf
    inc e                                         ; $6594: $1c
    ld [hl], e                                    ; $6595: $73
    sbc h                                         ; $6596: $9c
    inc bc                                        ; $6597: $03
    rst $10                                       ; $6598: $d7
    sub [hl]                                      ; $6599: $96
    inc d                                         ; $659a: $14
    add e                                         ; $659b: $83
    ld a, e                                       ; $659c: $7b
    rst $18                                       ; $659d: $df
    ld e, $3b                                     ; $659e: $1e $3b
    ld hl, $3d1f                                  ; $65a0: $21 $1f $3d
    nop                                           ; $65a3: $00
    sub a                                         ; $65a4: $97
    dec l                                         ; $65a5: $2d
    ld l, $8d                                     ; $65a6: $2e $8d
    add sp, $15                                   ; $65a8: $e8 $15
    ld sp, $3c45                                  ; $65aa: $31 $45 $3c
    nop                                           ; $65ad: $00
    rst $10                                       ; $65ae: $d7
    sub $0f                                       ; $65af: $d6 $0f
    db $ec                                        ; $65b1: $ec
    push af                                       ; $65b2: $f5
    dec e                                         ; $65b3: $1d
    ld sp, $d232                                  ; $65b4: $31 $32 $d2
    ld c, $3d                                     ; $65b7: $0e $3d
    nop                                           ; $65b9: $00
    rst $20                                       ; $65ba: $e7
    add c                                         ; $65bb: $81
    or h                                          ; $65bc: $b4
    ld b, d                                       ; $65bd: $42
    sub $b3                                       ; $65be: $d6 $b3
    ld l, a                                       ; $65c0: $6f
    ld d, e                                       ; $65c1: $53
    sbc c                                         ; $65c2: $99
    rst $38                                       ; $65c3: $ff
    or e                                          ; $65c4: $b3
    rst $38                                       ; $65c5: $ff
    sub a                                         ; $65c6: $97
    ld h, e                                       ; $65c7: $63
    adc [hl]                                      ; $65c8: $8e
    ld [hl], e                                    ; $65c9: $73
    nop                                           ; $65ca: $00
    rst $28                                       ; $65cb: $ef
    adc a                                         ; $65cc: $8f
    adc d                                         ; $65cd: $8a
    inc de                                        ; $65ce: $13
    ld a, d                                       ; $65cf: $7a
    adc l                                         ; $65d0: $8d
    db $f4                                        ; $65d1: $f4
    ld a, d                                       ; $65d2: $7a
    nop                                           ; $65d3: $00
    scf                                           ; $65d4: $37
    ld [hl+], a                                   ; $65d5: $22
    rst $38                                       ; $65d6: $ff
    db $ec                                        ; $65d7: $ec
    ld c, l                                       ; $65d8: $4d
    db $ec                                        ; $65d9: $ec
    ei                                            ; $65da: $fb
    dec b                                         ; $65db: $05
    ld e, $6f                                     ; $65dc: $1e $6f
    ld c, a                                       ; $65de: $4f
    ld a, [hl-]                                   ; $65df: $3a
    push af                                       ; $65e0: $f5
    add [hl]                                      ; $65e1: $86
    inc d                                         ; $65e2: $14
    xor a                                         ; $65e3: $af
    ld a, l                                       ; $65e4: $7d
    ld e, a                                       ; $65e5: $5f
    ld sp, hl                                     ; $65e6: $f9
    ld [hl], h                                    ; $65e7: $74
    nop                                           ; $65e8: $00
    scf                                           ; $65e9: $37
    ld [hl+], a                                   ; $65ea: $22
    rst $38                                       ; $65eb: $ff
    db $ec                                        ; $65ec: $ec
    ld a, c                                       ; $65ed: $79
    adc h                                         ; $65ee: $8c
    dec hl                                        ; $65ef: $2b
    sbc a                                         ; $65f0: $9f
    ld l, b                                       ; $65f1: $68
    rlca                                          ; $65f2: $07
    dec a                                         ; $65f3: $3d
    nop                                           ; $65f4: $00
    sub a                                         ; $65f5: $97
    dec l                                         ; $65f6: $2d
    or d                                          ; $65f7: $b2
    db $ec                                        ; $65f8: $ec
    push hl                                       ; $65f9: $e5
    cp h                                          ; $65fa: $bc
    inc e                                         ; $65fb: $1c
    ld l, $fe                                     ; $65fc: $2e $fe
    adc $01                                       ; $65fe: $ce $01
    rst $20                                       ; $6600: $e7
    or [hl]                                       ; $6601: $b6
    ld h, h                                       ; $6602: $64
    xor a                                         ; $6603: $af
    ld [hl], d                                    ; $6604: $72
    ld b, l                                       ; $6605: $45
    add a                                         ; $6606: $87
    ld a, h                                       ; $6607: $7c
    nop                                           ; $6608: $00
    sbc a                                         ; $6609: $9f
    adc [hl]                                      ; $660a: $8e
    ld d, b                                       ; $660b: $50
    ret c                                         ; $660c: $d8

    sbc e                                         ; $660d: $9b
    call nc, Call_000_0078                        ; $660e: $d4 $78 $00
    rst $28                                       ; $6611: $ef
    db $d3                                        ; $6612: $d3
    db $ec                                        ; $6613: $ec
    and a                                         ; $6614: $a7
    sbc $1c                                       ; $6615: $de $1c
    inc de                                        ; $6617: $13
    cpl                                           ; $6618: $2f
    ld [$3d01], a                                 ; $6619: $ea $01 $3d
    nop                                           ; $661c: $00
    rst $20                                       ; $661d: $e7
    ld a, [hl+]                                   ; $661e: $2a
    ld l, l                                       ; $661f: $6d
    push bc                                       ; $6620: $c5
    or c                                          ; $6621: $b1
    ld a, $d9                                     ; $6622: $3e $d9
    db $eb                                        ; $6624: $eb
    ld [hl], $df                                  ; $6625: $36 $df
    inc sp                                        ; $6627: $33
    ld l, $8d                                     ; $6628: $2e $8d
    add sp, $15                                   ; $662a: $e8 $15
    ld sp, $3c45                                  ; $662c: $31 $45 $3c
    nop                                           ; $662f: $00
    rst $10                                       ; $6630: $d7
    sub [hl]                                      ; $6631: $96
    inc d                                         ; $6632: $14
    add e                                         ; $6633: $83
    ld a, e                                       ; $6634: $7b
    xor a                                         ; $6635: $af
    ld h, $47                                     ; $6636: $26 $47
    dec a                                         ; $6638: $3d
    nop                                           ; $6639: $00
    dec a                                         ; $663a: $3d
    nop                                           ; $663b: $00
    rst $10                                       ; $663c: $d7
    ld l, l                                       ; $663d: $6d
    ld a, h                                       ; $663e: $7c
    adc d                                         ; $663f: $8a
    ld h, e                                       ; $6640: $63
    add sp, $65                                   ; $6641: $e8 $65
    push de                                       ; $6643: $d5
    sub c                                         ; $6644: $91
    dec bc                                        ; $6645: $0b
    ld e, $07                                     ; $6646: $1e $07
    ld d, a                                       ; $6648: $57
    ld h, b                                       ; $6649: $60
    add sp, -$25                                  ; $664a: $e8 $db
    adc e                                         ; $664c: $8b
    ld h, d                                       ; $664d: $62
    ld [hl], a                                    ; $664e: $77
    nop                                           ; $664f: $00
    dec a                                         ; $6650: $3d
    nop                                           ; $6651: $00
    rst $10                                       ; $6652: $d7
    xor $d7                                       ; $6653: $ee $d7
    dec h                                         ; $6655: $25
    ld d, c                                       ; $6656: $51
    or $5c                                        ; $6657: $f6 $5c
    call nz, Call_070_4715                        ; $6659: $c4 $15 $47
    ld a, e                                       ; $665c: $7b
    ld h, e                                       ; $665d: $63
    ld a, [c]                                     ; $665e: $f2
    ret c                                         ; $665f: $d8

    add sp, $01                                   ; $6660: $e8 $01
    rst $10                                       ; $6662: $d7
    ld h, b                                       ; $6663: $60
    ccf                                           ; $6664: $3f
    db $f4                                        ; $6665: $f4
    dec hl                                        ; $6666: $2b
    ld [hl-], a                                   ; $6667: $32
    ei                                            ; $6668: $fb
    inc bc                                        ; $6669: $03
    ld l, a                                       ; $666a: $6f
    dec de                                        ; $666b: $1b
    ld a, a                                       ; $666c: $7f
    db $ec                                        ; $666d: $ec
    dec d                                         ; $666e: $15
    ld hl, sp-$61                                 ; $666f: $f8 $9f
    ld c, $ef                                     ; $6671: $0e $ef
    ld hl, $d3f7                                  ; $6673: $21 $f7 $d3
    pop af                                        ; $6676: $f1
    dec bc                                        ; $6677: $0b
    rlca                                          ; $6678: $07
    dec a                                         ; $6679: $3d
    nop                                           ; $667a: $00
    rst $20                                       ; $667b: $e7
    add c                                         ; $667c: $81
    or h                                          ; $667d: $b4
    ld b, d                                       ; $667e: $42
    sub $b3                                       ; $667f: $d6 $b3
    sbc a                                         ; $6681: $9f
    ld d, c                                       ; $6682: $51
    inc hl                                        ; $6683: $23
    push af                                       ; $6684: $f5
    nop                                           ; $6685: $00
    rra                                           ; $6686: $1f
    xor [hl]                                      ; $6687: $ae
    db $db                                        ; $6688: $db
    or a                                          ; $6689: $b7
    ld a, e                                       ; $668a: $7b
    dec h                                         ; $668b: $25
    add hl, sp                                    ; $668c: $39
    or a                                          ; $668d: $b7
    or d                                          ; $668e: $b2
    ld e, $6f                                     ; $668f: $1e $6f
    reti                                          ; $6691: $d9


    ld b, d                                       ; $6692: $42
    xor $07                                       ; $6693: $ee $07
    bit 7, [hl]                                   ; $6695: $cb $7e
    ret z                                         ; $6697: $c8

    ld d, h                                       ; $6698: $54
    dec a                                         ; $6699: $3d
    nop                                           ; $669a: $00
    ld d, a                                       ; $669b: $57
    call nz, $9fb4                                ; $669c: $c4 $b4 $9f
    or $5e                                        ; $669f: $f6 $5e
    ld h, a                                       ; $66a1: $67
    ld e, [hl]                                    ; $66a2: $5e
    ld a, [c]                                     ; $66a3: $f2
    add a                                         ; $66a4: $87
    inc bc                                        ; $66a5: $03
    sub a                                         ; $66a6: $97
    di                                            ; $66a7: $f3
    jp c, $fefb                                   ; $66a8: $da $fb $fe

    xor b                                         ; $66ab: $a8
    ld a, b                                       ; $66ac: $78
    dec e                                         ; $66ad: $1d
    dec a                                         ; $66ae: $3d
    nop                                           ; $66af: $00
    dec a                                         ; $66b0: $3d
    nop                                           ; $66b1: $00
    sub a                                         ; $66b2: $97
    xor a                                         ; $66b3: $af
    ld e, l                                       ; $66b4: $5d
    cp $fa                                        ; $66b5: $fe $fa
    cp h                                          ; $66b7: $bc
    rst $20                                       ; $66b8: $e7
    rra                                           ; $66b9: $1f
    ld a, l                                       ; $66ba: $7d
    halt                                          ; $66bb: $76
    cp $e9                                        ; $66bc: $fe $e9
    ld h, a                                       ; $66be: $67
    sub a                                         ; $66bf: $97
    rst $18                                       ; $66c0: $df
    ei                                            ; $66c1: $fb
    add sp, -$26                                  ; $66c2: $e8 $da
    ld sp, hl                                     ; $66c4: $f9
    ld b, a                                       ; $66c5: $47
    sbc a                                         ; $66c6: $9f
    dec e                                         ; $66c7: $1d
    dec a                                         ; $66c8: $3d
    nop                                           ; $66c9: $00
    rst $10                                       ; $66ca: $d7
    ld l, l                                       ; $66cb: $6d
    ld a, h                                       ; $66cc: $7c
    adc d                                         ; $66cd: $8a
    ld h, e                                       ; $66ce: $63
    call nc, $df9e                                ; $66cf: $d4 $9e $df
    and d                                         ; $66d2: $a2
    ld c, h                                       ; $66d3: $4c
    ld [hl], c                                    ; $66d4: $71
    db $fd                                        ; $66d5: $fd
    ld b, a                                       ; $66d6: $47
    rrca                                          ; $66d7: $0f
    ld l, a                                       ; $66d8: $6f
    inc hl                                        ; $66d9: $23
    rst $30                                       ; $66da: $f7
    ld a, h                                       ; $66db: $7c
    ld h, a                                       ; $66dc: $67
    ld d, $02                                     ; $66dd: $16 $02
    ld a, d                                       ; $66df: $7a
    nop                                           ; $66e0: $00
    ld l, a                                       ; $66e1: $6f
    db $e3                                        ; $66e2: $e3
    cp a                                          ; $66e3: $bf
    ld a, h                                       ; $66e4: $7c
    xor a                                         ; $66e5: $af
    ld hl, $03e7                                  ; $66e6: $21 $e7 $03
    dec a                                         ; $66e9: $3d
    nop                                           ; $66ea: $00
    ld l, a                                       ; $66eb: $6f
    cpl                                           ; $66ec: $2f
    ld h, e                                       ; $66ed: $63
    inc e                                         ; $66ee: $1c
    xor e                                         ; $66ef: $ab
    ld h, a                                       ; $66f0: $67
    ccf                                           ; $66f1: $3f
    and e                                         ; $66f2: $a3
    ld b, [hl]                                    ; $66f3: $46
    ld [$ef01], a                                 ; $66f4: $ea $01 $ef
    ld b, e                                       ; $66f7: $43
    cp $d0                                        ; $66f8: $fe $d0
    or a                                          ; $66fa: $b7
    inc l                                         ; $66fb: $2c
    add hl, sp                                    ; $66fc: $39
    rst $00                                       ; $66fd: $c7
    ld a, b                                       ; $66fe: $78
    nop                                           ; $66ff: $00
    dec a                                         ; $6700: $3d
    nop                                           ; $6701: $00
    ld l, a                                       ; $6702: $6f
    cpl                                           ; $6703: $2f
    ld h, e                                       ; $6704: $63
    inc e                                         ; $6705: $1c
    xor e                                         ; $6706: $ab
    ld h, a                                       ; $6707: $67
    xor a                                         ; $6708: $af
    ret c                                         ; $6709: $d8

    jp nz, $dfc5                                  ; $670a: $c2 $c5 $df

    add hl, sp                                    ; $670d: $39
    nop                                           ; $670e: $00
    rst $10                                       ; $670f: $d7
    push bc                                       ; $6710: $c5
    ld l, e                                       ; $6711: $6b
    rst $28                                       ; $6712: $ef
    ld h, a                                       ; $6713: $67
    sub [hl]                                      ; $6714: $96
    sbc h                                         ; $6715: $9c
    ld [hl], b                                    ; $6716: $70
    ld c, $3d                                     ; $6717: $0e $3d
    nop                                           ; $6719: $00
    sub a                                         ; $671a: $97
    rst $18                                       ; $671b: $df
    db $fd                                        ; $671c: $fd
    db $f4                                        ; $671d: $f4
    ld a, [c]                                     ; $671e: $f2
    db $db                                        ; $671f: $db
    rst $20                                       ; $6720: $e7
    ld d, a                                       ; $6721: $57
    sbc $bb                                       ; $6722: $de $bb
    halt                                          ; $6724: $76
    cp $d1                                        ; $6725: $fe $d1
    ld h, a                                       ; $6727: $67
    rra                                           ; $6728: $1f
    rst $18                                       ; $6729: $df
    add sp, -$07                                  ; $672a: $e8 $f9
    adc l                                         ; $672c: $8d
    db $eb                                        ; $672d: $eb
    rst $20                                       ; $672e: $e7
    ld d, a                                       ; $672f: $57
    sbc $bb                                       ; $6730: $de $bb
    db $fc                                        ; $6732: $fc
    sbc $8d                                       ; $6733: $de $8d
    inc bc                                        ; $6735: $03
    scf                                           ; $6736: $37
    ld [hl+], a                                   ; $6737: $22
    ld b, e                                       ; $6738: $43
    ld sp, $62f2                                  ; $6739: $31 $f2 $62
    xor a                                         ; $673c: $af
    jp nc, $4e22                                  ; $673d: $d2 $22 $4e

    or h                                          ; $6740: $b4
    inc bc                                        ; $6741: $03
    scf                                           ; $6742: $37
    sub d                                         ; $6743: $92
    ld [hl+], a                                   ; $6744: $22
    rst $30                                       ; $6745: $f7
    ld l, l                                       ; $6746: $6d
    ld e, [hl]                                    ; $6747: $5e
    and e                                         ; $6748: $a3
    xor l                                         ; $6749: $ad
    ld a, b                                       ; $674a: $78
    nop                                           ; $674b: $00
    rst $10                                       ; $674c: $d7
    sub $0f                                       ; $674d: $d6 $0f
    db $ec                                        ; $674f: $ec
    db $db                                        ; $6750: $db
    ld b, h                                       ; $6751: $44
    ld a, $00                                     ; $6752: $3e $00
    sub a                                         ; $6754: $97
    ld h, c                                       ; $6755: $61
    sub e                                         ; $6756: $93
    ei                                            ; $6757: $fb
    jp hl                                         ; $6758: $e9


    sub d                                         ; $6759: $92
    inc a                                         ; $675a: $3c
    nop                                           ; $675b: $00
    rra                                           ; $675c: $1f
    ldh a, [$bf]                                  ; $675d: $f0 $bf
    ld [hl], d                                    ; $675f: $72
    rst $18                                       ; $6760: $df
    ld c, d                                       ; $6761: $4a
    and $97                                       ; $6762: $e6 $97
    db $fc                                        ; $6764: $fc
    pop hl                                        ; $6765: $e1
    nop                                           ; $6766: $00
    rra                                           ; $6767: $1f
    ret c                                         ; $6768: $d8

    jp nc, $48de                                  ; $6769: $d2 $de $48

    adc $d1                                       ; $676c: $ce $d1
    db $f4                                        ; $676e: $f4
    nop                                           ; $676f: $00
    dec a                                         ; $6770: $3d
    nop                                           ; $6771: $00
    dec a                                         ; $6772: $3d
    nop                                           ; $6773: $00
    dec a                                         ; $6774: $3d
    nop                                           ; $6775: $00
    rst $20                                       ; $6776: $e7
    rra                                           ; $6777: $1f
    sbc [hl]                                      ; $6778: $9e
    ld e, a                                       ; $6779: $5f
    ld sp, hl                                     ; $677a: $f9
    db $ec                                        ; $677b: $ec
    db $d3                                        ; $677c: $d3
    adc a                                         ; $677d: $8f
    ccf                                           ; $677e: $3f
    ld a, d                                       ; $677f: $7a
    rst $28                                       ; $6780: $ef
    ld c, d                                       ; $6781: $4a
    cpl                                           ; $6782: $2f
    ld a, a                                       ; $6783: $7f
    ld a, [$8dd9]                                 ; $6784: $fa $d9 $8d
    inc bc                                        ; $6787: $03
    dec a                                         ; $6788: $3d
    nop                                           ; $6789: $00
    rst $20                                       ; $678a: $e7
    add c                                         ; $678b: $81
    or h                                          ; $678c: $b4
    ld b, d                                       ; $678d: $42
    sub $b3                                       ; $678e: $d6 $b3
    rst $10                                       ; $6790: $d7
    ld l, l                                       ; $6791: $6d
    ld a, h                                       ; $6792: $7c
    cp d                                          ; $6793: $ba
    ld hl, sp+$3b                                 ; $6794: $f8 $3b
    rlca                                          ; $6796: $07
    ld d, a                                       ; $6797: $57
    call nz, $b4b6                                ; $6798: $c4 $b6 $b4
    rst $28                                       ; $679b: $ef
    ld a, [de]                                    ; $679c: $1a
    ld a, [hl]                                    ; $679d: $7e
    ld a, [hl-]                                   ; $679e: $3a
    nop                                           ; $679f: $00
    ld d, a                                       ; $67a0: $57
    ld h, [hl]                                    ; $67a1: $66
    ld e, a                                       ; $67a2: $5f
    cp c                                          ; $67a3: $b9
    sbc a                                         ; $67a4: $9f
    adc [hl]                                      ; $67a5: $8e
    ld [hl], b                                    ; $67a6: $70
    ld h, l                                       ; $67a7: $65
    sbc l                                         ; $67a8: $9d

Call_070_67a9:
    ld a, h                                       ; $67a9: $7c
    nop                                           ; $67aa: $00
    rst $28                                       ; $67ab: $ef
    ld d, e                                       ; $67ac: $53
    inc h                                         ; $67ad: $24
    ld [$70bb], a                                 ; $67ae: $ea $bb $70
    sub e                                         ; $67b1: $93
    rrca                                          ; $67b2: $0f
    rra                                           ; $67b3: $1f
    rst $38                                       ; $67b4: $ff
    ret z                                         ; $67b5: $c8

    call c, $1f8f                                 ; $67b6: $dc $8f $1f
    ld a, c                                       ; $67b9: $79
    rl [hl]                                       ; $67ba: $cb $16
    di                                            ; $67bc: $f3
    ld bc, $8e9f                                  ; $67bd: $01 $9f $8e
    or b                                          ; $67c0: $b0
    rra                                           ; $67c1: $1f
    ccf                                           ; $67c2: $3f
    ld a, [c]                                     ; $67c3: $f2
    ld c, $cc                                     ; $67c4: $0e $cc
    cp b                                          ; $67c6: $b8
    rst $28                                       ; $67c7: $ef
    rlca                                          ; $67c8: $07
    scf                                           ; $67c9: $37
    sub [hl]                                      ; $67ca: $96
    sbc e                                         ; $67cb: $9b
    call c, Call_000_30ab                         ; $67cc: $dc $ab $30
    ld e, e                                       ; $67cf: $5b
    ld a, d                                       ; $67d0: $7a
    nop                                           ; $67d1: $00
    ld e, a                                       ; $67d2: $5f
    ldh [$a7], a                                  ; $67d3: $e0 $a7
    call z, $63be                                 ; $67d5: $cc $be $63
    and e                                         ; $67d8: $a3
    pop af                                        ; $67d9: $f1
    nop                                           ; $67da: $00
    dec a                                         ; $67db: $3d
    nop                                           ; $67dc: $00
    rst $10                                       ; $67dd: $d7
    ld l, l                                       ; $67de: $6d
    ld c, [hl]                                    ; $67df: $4e
    ld b, $87                                     ; $67e0: $06 $87
    adc e                                         ; $67e2: $8b
    cp a                                          ; $67e3: $bf
    db $d3                                        ; $67e4: $d3
    bit 7, [hl]                                   ; $67e5: $cb $7e
    ret                                           ; $67e7: $c9


    dec [hl]                                      ; $67e8: $35
    add hl, de                                    ; $67e9: $19
    ei                                            ; $67ea: $fb
    ld bc, $316f                                  ; $67eb: $01 $6f $31
    rst $30                                       ; $67ee: $f7
    ld l, l                                       ; $67ef: $6d
    ld [hl+], a                                   ; $67f0: $22
    di                                            ; $67f1: $f3
    nop                                           ; $67f2: $00
    dec a                                         ; $67f3: $3d
    nop                                           ; $67f4: $00
    sub a                                         ; $67f5: $97
    cp a                                          ; $67f6: $bf
    ld c, a                                       ; $67f7: $4f
    ld a, [de]                                    ; $67f8: $1a
    xor c                                         ; $67f9: $a9
    push af                                       ; $67fa: $f5
    db $ec                                        ; $67fb: $ec

Jump_070_67fc:
    ei                                            ; $67fc: $fb
    ld [hl], e                                    ; $67fd: $73
    sbc d                                         ; $67fe: $9a
    inc bc                                        ; $67ff: $03
    ld l, a                                       ; $6800: $6f
    inc hl                                        ; $6801: $23
    rst $30                                       ; $6802: $f7
    db $d3                                        ; $6803: $d3
    or l                                          ; $6804: $b5
    di                                            ; $6805: $f3
    and a                                         ; $6806: $a7
    inc bc                                        ; $6807: $03
    dec a                                         ; $6808: $3d
    nop                                           ; $6809: $00
    rst $20                                       ; $680a: $e7
    add c                                         ; $680b: $81
    or h                                          ; $680c: $b4
    ld b, d                                       ; $680d: $42
    sub $b3                                       ; $680e: $d6 $b3
    scf                                           ; $6810: $37
    add $1d                                       ; $6811: $c6 $1d
    sub a                                         ; $6813: $97
    dec a                                         ; $6814: $3d
    ld [hl], a                                    ; $6815: $77
    or $03                                        ; $6816: $f6 $03
    xor $3b                                       ; $6818: $ee $3b
    ld h, e                                       ; $681a: $63
    inc a                                         ; $681b: $3c
    nop                                           ; $681c: $00
    ld l, a                                       ; $681d: $6f
    xor l                                         ; $681e: $ad
    ld a, l                                       ; $681f: $7d
    rst $28                                       ; $6820: $ef
    add a                                         ; $6821: $87
    ld c, c                                       ; $6822: $49
    db $e3                                        ; $6823: $e3
    ld c, a                                       ; $6824: $4f
    rlca                                          ; $6825: $07
    rst $28                                       ; $6826: $ef

jr_070_6827:
    db $d3                                        ; $6827: $d3
    add sp, $7e                                   ; $6828: $e8 $7e
    ld [$498d], a                                 ; $682a: $ea $8d $49
    dec sp                                        ; $682d: $3b
    rrca                                          ; $682e: $0f
    rra                                           ; $682f: $1f
    dec l                                         ; $6830: $2d
    ld sp, hl                                     ; $6831: $f9
    ld b, e                                       ; $6832: $43
    ccf                                           ; $6833: $3f
    call nz, $d17f                                ; $6834: $c4 $7f $d1
    db $f4                                        ; $6837: $f4

jr_070_6838:
    nop                                           ; $6838: $00
    dec a                                         ; $6839: $3d
    nop                                           ; $683a: $00
    ld l, a                                       ; $683b: $6f
    inc sp                                        ; $683c: $33
    add h                                         ; $683d: $84
    ld b, l                                       ; $683e: $45
    jr c, jr_070_6827                             ; $683f: $38 $e6

    jr c, jr_070_6838                             ; $6841: $38 $f5

    db $ec                                        ; $6843: $ec
    sub l                                         ; $6844: $95
    ld c, a                                       ; $6845: $4f
    ld c, $97                                     ; $6846: $0e $97
    or e                                          ; $6848: $b3
    rst $38                                       ; $6849: $ff
    xor c                                         ; $684a: $a9
    rst $10                                       ; $684b: $d7
    sub $be                                       ; $684c: $d6 $be
    db $d3                                        ; $684e: $d3
    ld c, $6f                                     ; $684f: $0e $6f
    jp $b98c                                      ; $6851: $c3 $8c $b9


    sbc a                                         ; $6854: $9f
    dec h                                         ; $6855: $25
    ld sp, hl                                     ; $6856: $f9
    inc bc                                        ; $6857: $03
    ld a, a                                       ; $6858: $7f
    ld a, [hl-]                                   ; $6859: $3a
    nop                                           ; $685a: $00
    rst $28                                       ; $685b: $ef
    rrca                                          ; $685c: $0f
    ei                                            ; $685d: $fb
    ld d, c                                       ; $685e: $51
    jp z, Jump_000_00f9                           ; $685f: $ca $f9 $00

    rra                                           ; $6862: $1f
    sub d                                         ; $6863: $92
    cp l                                          ; $6864: $bd
    add [hl]                                      ; $6865: $86
    db $ec                                        ; $6866: $ec
    ld sp, hl                                     ; $6867: $f9
    ld e, a                                       ; $6868: $5f
    ei                                            ; $6869: $fb
    adc $03                                       ; $686a: $ce $03
    rst $10                                       ; $686c: $d7
    db $10                                        ; $686d: $10
    ld h, e                                       ; $686e: $63
    rst $18                                       ; $686f: $df
    ld h, d                                       ; $6870: $62
    adc $8c                                       ; $6871: $ce $8c
    pop af                                        ; $6873: $f1
    nop                                           ; $6874: $00
    rst $10                                       ; $6875: $d7
    add hl, de                                    ; $6876: $19
    reti                                          ; $6877: $d9


    dec de                                        ; $6878: $1b
    ld [hl], b                                    ; $6879: $70
    adc c                                         ; $687a: $89
    cp e                                          ; $687b: $bb
    ld e, $d7                                     ; $687c: $1e $d7
    rla                                           ; $687e: $17
    ld c, l                                       ; $687f: $4d
    ei                                            ; $6880: $fb
    ld hl, $c9f2                                  ; $6881: $21 $f2 $c9
    sub [hl]                                      ; $6884: $96
    ccf                                           ; $6885: $3f
    pop af                                        ; $6886: $f1
    nop                                           ; $6887: $00
    sbc a                                         ; $6888: $9f
    ld l, $29                                     ; $6889: $2e $29
    add [hl]                                      ; $688b: $86
    ld sp, hl                                     ; $688c: $f9
    ld a, [hl]                                    ; $688d: $7e
    or c                                          ; $688e: $b1
    halt                                          ; $688f: $76
    ld c, a                                       ; $6890: $4f
    db $d3                                        ; $6891: $d3
    ld [hl], b                                    ; $6892: $70
    push hl                                       ; $6893: $e5
    inc bc                                        ; $6894: $03
    sbc a                                         ; $6895: $9f
    adc [hl]                                      ; $6896: $8e
    ld l, d                                       ; $6897: $6a
    rst $18                                       ; $6898: $df
    sbc [hl]                                      ; $6899: $9e
    ld [hl], h                                    ; $689a: $74
    jp c, $07a1                                   ; $689b: $da $a1 $07

    scf                                           ; $689e: $37
    ld h, d                                       ; $689f: $62
    ld [$6b17], a                                 ; $68a0: $ea $17 $6b
    rst $18                                       ; $68a3: $df
    rla                                           ; $68a4: $17

Jump_070_68a5:
    sbc h                                         ; $68a5: $9c
    ld e, $3d                                     ; $68a6: $1e $3d
    nop                                           ; $68a8: $00
    ld d, a                                       ; $68a9: $57
    ld a, $e9                                     ; $68aa: $3e $e9
    ld h, a                                       ; $68ac: $67
    rla                                           ; $68ad: $17
    ld h, h                                       ; $68ae: $64
    ld e, [hl]                                    ; $68af: $5e
    ld [hl], d                                    ; $68b0: $72
    ld c, $ef                                     ; $68b1: $0e $ef
    rrca                                          ; $68b3: $0f
    ei                                            ; $68b4: $fb
    xor [hl]                                      ; $68b5: $ae
    ld hl, $03c7                                  ; $68b6: $21 $c7 $03
    rst $10                                       ; $68b9: $d7
    ld h, b                                       ; $68ba: $60
    ld [hl-], a                                   ; $68bb: $32
    ld l, c                                       ; $68bc: $69
    xor a                                         ; $68bd: $af
    daa                                           ; $68be: $27
    ei                                            ; $68bf: $fb
    cpl                                           ; $68c0: $2f
    dec a                                         ; $68c1: $3d
    nop                                           ; $68c2: $00
    ld e, a                                       ; $68c3: $5f
    ldh [$a7], a                                  ; $68c4: $e0 $a7
    call z, Call_000_35be                         ; $68c6: $cc $be $35
    ccf                                           ; $68c9: $3f
    ld c, c                                       ; $68ca: $49
    ld e, $6f                                     ; $68cb: $1e $6f
    ld c, a                                       ; $68cd: $4f
    adc $e8                                       ; $68ce: $ce $e8
    push de                                       ; $68d0: $d5
    dec h                                         ; $68d1: $25
    ld a, a                                       ; $68d2: $7f
    ret nc                                        ; $68d3: $d0

    inc bc                                        ; $68d4: $03
    dec a                                         ; $68d5: $3d
    nop                                           ; $68d6: $00
    rst $20                                       ; $68d7: $e7
    sub a                                         ; $68d8: $97
    ei                                            ; $68d9: $fb
    ld b, h                                       ; $68da: $44
    cpl                                           ; $68db: $2f
    sbc a                                         ; $68dc: $9f
    inc c                                         ; $68dd: $0c
    sbc [hl]                                      ; $68de: $9e
    ld [hl], d                                    ; $68df: $72
    add hl, sp                                    ; $68e0: $39
    and $38                                       ; $68e1: $e6 $38
    jp c, Jump_000_0d73                           ; $68e3: $da $73 $0d

    add hl, hl                                    ; $68e6: $29
    rla                                           ; $68e7: $17
    sub [hl]                                      ; $68e8: $96
    ld e, $6f                                     ; $68e9: $1e $6f
    ld e, c                                       ; $68eb: $59
    sub d                                         ; $68ec: $92
    db $ec                                        ; $68ed: $ec
    dec [hl]                                      ; $68ee: $35
    ld a, c                                       ; $68ef: $79
    ld l, l                                       ; $68f0: $6d
    db $ed                                        ; $68f1: $ed
    dec sp                                        ; $68f2: $3b
    ld a, [c]                                     ; $68f3: $f2
    ld bc, $c457                                  ; $68f4: $01 $57 $c4
    ld c, c                                       ; $68f7: $49
    cp $d0                                        ; $68f8: $fe $d0
    dec hl                                        ; $68fa: $2b
    dec sp                                        ; $68fb: $3b
    ld [hl], d                                    ; $68fc: $72
    sbc h                                         ; $68fd: $9c
    ld a, h                                       ; $68fe: $7c
    nop                                           ; $68ff: $00
    ld l, a                                       ; $6900: $6f
    inc hl                                        ; $6901: $23
    rst $20                                       ; $6902: $e7
    sbc a                                         ; $6903: $9f
    ld a, [$dad6]                                 ; $6904: $fa $d6 $da
    ld [hl], l                                    ; $6907: $75
    ld a, [c]                                     ; $6908: $f2
    ld bc, $e36f                                  ; $6909: $01 $6f $e3
    cp a                                          ; $690c: $bf
    ld a, h                                       ; $690d: $7c
    rst $18                                       ; $690e: $df
    ld a, [$32c9]                                 ; $690f: $fa $c9 $32
    rrca                                          ; $6912: $0f
    rst $28                                       ; $6913: $ef
    and [hl]                                      ; $6914: $a6
    sbc a                                         ; $6915: $9f
    ld a, d                                       ; $6916: $7a
    ld l, l                                       ; $6917: $6d
    db $ed                                        ; $6918: $ed
    dec sp                                        ; $6919: $3b
    db $ed                                        ; $691a: $ed
    nop                                           ; $691b: $00
    rst $28                                       ; $691c: $ef
    ld hl, $86f7                                  ; $691d: $21 $f7 $86
    jr jr_070_6961                                ; $6920: $18 $3f

    ld e, $ef                                     ; $6922: $1e $ef
    adc a                                         ; $6924: $8f
    jr c, @-$07                                   ; $6925: $38 $f7

    ld b, e                                       ; $6927: $43
    db $fc                                        ; $6928: $fc
    ld l, b                                       ; $6929: $68
    call z, Call_000_0792                         ; $692a: $cc $92 $07
    rra                                           ; $692d: $1f
    ld l, $45                                     ; $692e: $2e $45
    ld l, a                                       ; $6930: $6f
    call nz, $81f9                                ; $6931: $c4 $f9 $81
    ld a, d                                       ; $6934: $7a
    nop                                           ; $6935: $00
    rra                                           ; $6936: $1f
    ld l, $45                                     ; $6937: $2e $45
    cp a                                          ; $6939: $bf
    ld b, b                                       ; $693a: $40
    adc h                                         ; $693b: $8c
    rlca                                          ; $693c: $07
    rst $10                                       ; $693d: $d7
    sub c                                         ; $693e: $91
    or $be                                        ; $693f: $f6 $be
    call $9c6b                                    ; $6941: $cd $6b $9c
    inc bc                                        ; $6944: $03
    rst $10                                       ; $6945: $d7
    sub c                                         ; $6946: $91
    or $5e                                        ; $6947: $f6 $5e
    add e                                         ; $6949: $83
    xor c                                         ; $694a: $a9
    ld h, a                                       ; $694b: $67
    ld a, $00                                     ; $694c: $3e $00
    scf                                           ; $694e: $37
    sub [hl]                                      ; $694f: $96
    sbc e                                         ; $6950: $9b
    call c, $e2eb                                 ; $6951: $dc $eb $e2
    dec d                                         ; $6954: $15
    add [hl]                                      ; $6955: $86
    ld a, d                                       ; $6956: $7a
    nop                                           ; $6957: $00
    dec a                                         ; $6958: $3d
    nop                                           ; $6959: $00
    dec a                                         ; $695a: $3d
    nop                                           ; $695b: $00
    dec a                                         ; $695c: $3d
    nop                                           ; $695d: $00
    dec a                                         ; $695e: $3d
    nop                                           ; $695f: $00
    dec a                                         ; $6960: $3d

Call_070_6961:
jr_070_6961:
    nop                                           ; $6961: $00
    dec a                                         ; $6962: $3d
    nop                                           ; $6963: $00
    dec a                                         ; $6964: $3d
    nop                                           ; $6965: $00
    dec a                                         ; $6966: $3d
    nop                                           ; $6967: $00
    dec a                                         ; $6968: $3d
    nop                                           ; $6969: $00
    dec a                                         ; $696a: $3d
    nop                                           ; $696b: $00
    dec a                                         ; $696c: $3d
    nop                                           ; $696d: $00
    dec a                                         ; $696e: $3d
    nop                                           ; $696f: $00
    dec a                                         ; $6970: $3d
    nop                                           ; $6971: $00
    dec a                                         ; $6972: $3d
    nop                                           ; $6973: $00
    dec a                                         ; $6974: $3d
    nop                                           ; $6975: $00
    dec a                                         ; $6976: $3d
    nop                                           ; $6977: $00
    dec a                                         ; $6978: $3d
    nop                                           ; $6979: $00
    dec a                                         ; $697a: $3d
    nop                                           ; $697b: $00
    dec a                                         ; $697c: $3d
    nop                                           ; $697d: $00
    dec a                                         ; $697e: $3d
    nop                                           ; $697f: $00
    dec a                                         ; $6980: $3d
    nop                                           ; $6981: $00
    dec a                                         ; $6982: $3d
    nop                                           ; $6983: $00
    dec a                                         ; $6984: $3d
    nop                                           ; $6985: $00
    dec a                                         ; $6986: $3d
    nop                                           ; $6987: $00
    dec a                                         ; $6988: $3d
    nop                                           ; $6989: $00
    dec a                                         ; $698a: $3d
    nop                                           ; $698b: $00
    dec a                                         ; $698c: $3d
    nop                                           ; $698d: $00
    dec a                                         ; $698e: $3d
    nop                                           ; $698f: $00
    dec a                                         ; $6990: $3d
    nop                                           ; $6991: $00
    dec a                                         ; $6992: $3d
    nop                                           ; $6993: $00
    dec a                                         ; $6994: $3d
    nop                                           ; $6995: $00
    dec a                                         ; $6996: $3d
    nop                                           ; $6997: $00
    dec a                                         ; $6998: $3d
    nop                                           ; $6999: $00
    dec a                                         ; $699a: $3d
    nop                                           ; $699b: $00
    rst $20                                       ; $699c: $e7
    ld c, e                                       ; $699d: $4b
    ret nc                                        ; $699e: $d0

    rst $38                                       ; $699f: $ff
    ret z                                         ; $69a0: $c8

    or e                                          ; $69a1: $b3
    and $df                                       ; $69a2: $e6 $df
    jp hl                                         ; $69a4: $e9


    add l                                         ; $69a5: $85
    ld l, [hl]                                    ; $69a6: $6e

jr_070_69a7:
    db $db                                        ; $69a7: $db
    sub $ab                                       ; $69a8: $d6 $ab
    jr nc, jr_070_69a7                            ; $69aa: $30 $fb

    xor c                                         ; $69ac: $a9
    rst $10                                       ; $69ad: $d7
    daa                                           ; $69ae: $27
    ld b, [hl]                                    ; $69af: $46
    jp c, Jump_000_071b                           ; $69b0: $da $1b $07

    ld l, a                                       ; $69b3: $6f
    pop de                                        ; $69b4: $d1
    ld [hl], l                                    ; $69b5: $75
    db $db                                        ; $69b6: $db
    or [hl]                                       ; $69b7: $b6
    inc bc                                        ; $69b8: $03
    xor a                                         ; $69b9: $af
    rst $30                                       ; $69ba: $f7
    ccf                                           ; $69bb: $3f
    ld a, [c]                                     ; $69bc: $f2
    ld c, h                                       ; $69bd: $4c
    ret nc                                        ; $69be: $d0

    db $fc                                        ; $69bf: $fc
    dec sp                                        ; $69c0: $3b
    cp l                                          ; $69c1: $bd
    ldh a, [rDMA]                                 ; $69c2: $f0 $46
    rst $08                                       ; $69c4: $cf
    xor e                                         ; $69c5: $ab
    db $ec                                        ; $69c6: $ec
    ld a, a                                       ; $69c7: $7f
    db $e4                                        ; $69c8: $e4
    ld e, c                                       ; $69c9: $59
    xor c                                         ; $69ca: $a9
    ld sp, $08b8                                  ; $69cb: $31 $b8 $08
    and h                                         ; $69ce: $a4
    dec h                                         ; $69cf: $25
    xor b                                         ; $69d0: $a8
    xor [hl]                                      ; $69d1: $ae
    ld d, e                                       ; $69d2: $53
    ld e, [hl]                                    ; $69d3: $5e
    and d                                         ; $69d4: $a2
    dec h                                         ; $69d5: $25
    pop de                                        ; $69d6: $d1
    ld b, b                                       ; $69d7: $40
    ld h, d                                       ; $69d8: $62
    rst $38                                       ; $69d9: $ff
    inc hl                                        ; $69da: $23
    rst $08                                       ; $69db: $cf
    ld a, [hl+]                                   ; $69dc: $2a
    ld e, d                                       ; $69dd: $5a
    add hl, de                                    ; $69de: $19
    cp e                                          ; $69df: $bb
    ld h, e                                       ; $69e0: $63
    adc [hl]                                      ; $69e1: $8e
    inc l                                         ; $69e2: $2c
    dec [hl]                                      ; $69e3: $35
    ld b, $77                                     ; $69e4: $06 $77
    ld h, l                                       ; $69e6: $65
    ccf                                           ; $69e7: $3f
    dec c                                         ; $69e8: $0d
    ld h, c                                       ; $69e9: $61
    add sp, -$2b                                  ; $69ea: $e8 $d5
    add hl, sp                                    ; $69ec: $39
    db $fd                                        ; $69ed: $fd
    ld [$7a8b], sp                                ; $69ee: $08 $8b $7a
    jp hl                                         ; $69f1: $e9


    nop                                           ; $69f2: $00
    sbc a                                         ; $69f3: $9f
    adc l                                         ; $69f4: $8d
    sbc a                                         ; $69f5: $9f
    cp d                                          ; $69f6: $ba
    sub h                                         ; $69f7: $94
    db $fd                                        ; $69f8: $fd
    ld d, h                                       ; $69f9: $54
    ld hl, $6364                                  ; $69fa: $21 $64 $63
    ld a, [c]                                     ; $69fd: $f2
    ld d, e                                       ; $69fe: $53
    dec e                                         ; $69ff: $1d
    and c                                         ; $6a00: $a1
    or c                                          ; $6a01: $b1
    ld l, [hl]                                    ; $6a02: $6e
    cp c                                          ; $6a03: $b9
    scf                                           ; $6a04: $37
    ld c, $ef                                     ; $6a05: $0e $ef
    xor c                                         ; $6a07: $a9
    ld c, [hl]                                    ; $6a08: $4e
    rst $38                                       ; $6a09: $ff
    ld e, b                                       ; $6a0a: $58
    ld d, l                                       ; $6a0b: $55
    ld e, d                                       ; $6a0c: $5a
    rst $28                                       ; $6a0d: $ef
    adc c                                         ; $6a0e: $89
    set 1, l                                      ; $6a0f: $cb $cd
    and l                                         ; $6a11: $a5
    ld e, [hl]                                    ; $6a12: $5e
    add l                                         ; $6a13: $85
    reti                                          ; $6a14: $d9


    ld c, a                                       ; $6a15: $4f
    cp l                                          ; $6a16: $bd
    ld a, $31                                     ; $6a17: $3e $31
    jp nc, $a504                                  ; $6a19: $d2 $04 $a5

    db $eb                                        ; $6a1c: $eb
    push de                                       ; $6a1d: $d5
    add hl, sp                                    ; $6a1e: $39
    db $fd                                        ; $6a1f: $fd
    ld [$7a8b], sp                                ; $6a20: $08 $8b $7a
    xor c                                         ; $6a23: $a9
    ld d, a                                       ; $6a24: $57
    add e                                         ; $6a25: $83
    adc e                                         ; $6a26: $8b
    db $fd                                        ; $6a27: $fd
    inc [hl]                                      ; $6a28: $34
    dec c                                         ; $6a29: $0d
    inc h                                         ; $6a2a: $24
    sub [hl]                                      ; $6a2b: $96
    xor c                                         ; $6a2c: $a9
    pop hl                                        ; $6a2d: $e1
    xor b                                         ; $6a2e: $a8
    and d                                         ; $6a2f: $a2
    ld [hl+], a                                   ; $6a30: $22
    call c, Call_000_35a6                         ; $6a31: $dc $a6 $35
    inc e                                         ; $6a34: $1c
    db $eb                                        ; $6a35: $eb
    ld a, a                                       ; $6a36: $7f
    db $e4                                        ; $6a37: $e4
    reti                                          ; $6a38: $d9


    dec de                                        ; $6a39: $1b
    cp l                                          ; $6a3a: $bd
    ld l, [hl]                                    ; $6a3b: $6e
    sub h                                         ; $6a3c: $94
    ld c, e                                       ; $6a3d: $4b
    ld d, c                                       ; $6a3e: $51
    rst $08                                       ; $6a3f: $cf
    ld h, d                                       ; $6a40: $62
    ccf                                           ; $6a41: $3f
    dec h                                         ; $6a42: $25
    add a                                         ; $6a43: $87
    ld c, d                                       ; $6a44: $4a
    ld e, b                                       ; $6a45: $58
    ld b, h                                       ; $6a46: $44
    dec a                                         ; $6a47: $3d
    dec hl                                        ; $6a48: $2b
    or h                                          ; $6a49: $b4
    ld [hl], h                                    ; $6a4a: $74
    dec bc                                        ; $6a4b: $0b
    ld e, d                                       ; $6a4c: $5a
    ld d, [hl]                                    ; $6a4d: $56
    ld l, b                                       ; $6a4e: $68
    jp hl                                         ; $6a4f: $e9


    sub $68                                       ; $6a50: $d6 $68
    ld b, l                                       ; $6a52: $45
    ld [hl], b                                    ; $6a53: $70
    and e                                         ; $6a54: $a3
    and e                                         ; $6a55: $a3
    ld l, a                                       ; $6a56: $6f
    inc e                                         ; $6a57: $1c
    rra                                           ; $6a58: $1f
    db $fd                                        ; $6a59: $fd
    ld c, [hl]                                    ; $6a5a: $4e
    sub l                                         ; $6a5b: $95
    xor e                                         ; $6a5c: $ab
    db $db                                        ; $6a5d: $db
    or [hl]                                       ; $6a5e: $b6
    ld [hl], l                                    ; $6a5f: $75
    ld a, [de]                                    ; $6a60: $1a
    ld c, b                                       ; $6a61: $48
    inc l                                         ; $6a62: $2c
    ld [hl], a                                    ; $6a63: $77
    ld l, b                                       ; $6a64: $68
    push af                                       ; $6a65: $f5
    ld [hl], a                                    ; $6a66: $77
    sbc $38                                       ; $6a67: $de $38
    nop                                           ; $6a69: $00
    rst $20                                       ; $6a6a: $e7
    dec sp                                        ; $6a6b: $3b
    or h                                          ; $6a6c: $b4
    ld a, [$f53b]                                 ; $6a6d: $fa $3b $f5
    ld [hl], h                                    ; $6a70: $74
    ld e, b                                       ; $6a71: $58
    ld a, d                                       ; $6a72: $7a
    xor c                                         ; $6a73: $a9
    scf                                           ; $6a74: $37
    ld a, [hl]                                    ; $6a75: $7e
    and a                                         ; $6a76: $a7
    ld [de], a                                    ; $6a77: $12
    ld d, $a1                                     ; $6a78: $16 $a1
    dec c                                         ; $6a7a: $0d
    inc h                                         ; $6a7b: $24
    or $3f                                        ; $6a7c: $f6 $3f
    ld a, [c]                                     ; $6a7e: $f2
    xor h                                         ; $6a7f: $ac
    ld [hl], d                                    ; $6a80: $72
    halt                                          ; $6a81: $76
    jp z, Jump_000_1935                           ; $6a82: $ca $35 $19

    ld h, l                                       ; $6a85: $65
    and e                                         ; $6a86: $a3
    adc l                                         ; $6a87: $8d
    call nz, $f3d6                                ; $6a88: $c4 $d6 $f3
    cp $47                                        ; $6a8b: $fe $47
    sbc [hl]                                      ; $6a8d: $9e
    dec [hl]                                      ; $6a8e: $35
    inc e                                         ; $6a8f: $1c
    rst $08                                       ; $6a90: $cf
    adc d                                         ; $6a91: $8a
    ld [hl], b                                    ; $6a92: $70
    sbc e                                         ; $6a93: $9b
    ld d, [hl]                                    ; $6a94: $56
    add hl, sp                                    ; $6a95: $39
    ld c, [hl]                                    ; $6a96: $4e
    cp b                                          ; $6a97: $b8
    ld [hl-], a                                   ; $6a98: $32
    ld l, $de                                     ; $6a99: $2e $de
    ld c, e                                       ; $6a9b: $4b
    xor l                                         ; $6a9c: $ad
    ld h, a                                       ; $6a9d: $67
    dec h                                         ; $6a9e: $25
    inc l                                         ; $6a9f: $2c
    ld b, d                                       ; $6aa0: $42
    dec de                                        ; $6aa1: $1b
    ld c, b                                       ; $6aa2: $48
    xor h                                         ; $6aa3: $ac
    or h                                          ; $6aa4: $b4
    dec b                                         ; $6aa5: $05
    ld d, a                                       ; $6aa6: $57
    adc d                                         ; $6aa7: $8a
    cp b                                          ; $6aa8: $b8
    ld [c], a                                     ; $6aa9: $e2
    ld l, b                                       ; $6aaa: $68
    ld e, l                                       ; $6aab: $5d
    ldh a, [rBCPD]                                ; $6aac: $f0 $69
    ret                                           ; $6aae: $c9


    pop de                                        ; $6aaf: $d1
    ld c, e                                       ; $6ab0: $4b
    rlca                                          ; $6ab1: $07
    rst $10                                       ; $6ab2: $d7
    ld h, c                                       ; $6ab3: $61
    sub h                                         ; $6ab4: $94
    xor h                                         ; $6ab5: $ac
    db $e3                                        ; $6ab6: $e3
    ld l, $1e                                     ; $6ab7: $2e $1e
    xor e                                         ; $6ab9: $ab
    sbc a                                         ; $6aba: $9f
    ld b, $12                                     ; $6abb: $06 $12
    ei                                            ; $6abd: $fb
    db $fd                                        ; $6abe: $fd
    sbc h                                         ; $6abf: $9c
    ld h, b                                       ; $6ac0: $60
    dec c                                         ; $6ac1: $0d
    ld hl, $59d7                                  ; $6ac2: $21 $d7 $59
    sub [hl]                                      ; $6ac5: $96
    dec bc                                        ; $6ac6: $0b
    ld e, e                                       ; $6ac7: $5b
    rst $08                                       ; $6ac8: $cf
    ld d, e                                       ; $6ac9: $53
    cp a                                          ; $6aca: $bf
    sbc a                                         ; $6acb: $9f
    inc de                                        ; $6acc: $13
    cp $a8                                        ; $6acd: $fe $a8
    ld c, e                                       ; $6acf: $4b
    dec hl                                        ; $6ad0: $2b
    adc $76                                       ; $6ad1: $ce $76
    nop                                           ; $6ad3: $00
    sbc a                                         ; $6ad4: $9f
    ld sp, $a78b                                  ; $6ad5: $31 $8b $a7
    ret                                           ; $6ad8: $c9


    push de                                       ; $6ad9: $d5
    ld c, l                                       ; $6ada: $4d
    adc [hl]                                      ; $6adb: $8e
    xor h                                         ; $6adc: $ac
    ld h, a                                       ; $6add: $67
    dec h                                         ; $6ade: $25
    inc l                                         ; $6adf: $2c
    ld b, d                                       ; $6ae0: $42
    xor e                                         ; $6ae1: $ab
    inc hl                                        ; $6ae2: $23
    inc [hl]                                      ; $6ae3: $34
    ld h, h                                       ; $6ae4: $64
    ccf                                           ; $6ae5: $3f
    ld e, e                                       ; $6ae6: $5b
    rst $18                                       ; $6ae7: $df
    ld e, c                                       ; $6ae8: $59
    ld [de], a                                    ; $6ae9: $12
    or [hl]                                       ; $6aea: $b6
    ld d, b                                       ; $6aeb: $50
    pop af                                        ; $6aec: $f1
    ld h, h                                       ; $6aed: $64
    add e                                         ; $6aee: $83
    sbc a                                         ; $6aef: $9f
    jp nc, $c3d5                                  ; $6af0: $d2 $d5 $c3

    adc d                                         ; $6af3: $8a
    db $fd                                        ; $6af4: $fd
    sub h                                         ; $6af5: $94
    inc e                                         ; $6af6: $1c
    or h                                          ; $6af7: $b4
    ld hl, $fd0c                                  ; $6af8: $21 $0c $fd
    adc a                                         ; $6afb: $8f
    inc a                                         ; $6afc: $3c
    db $db                                        ; $6afd: $db
    ld a, d                                       ; $6afe: $7a
    dec [hl]                                      ; $6aff: $35
    cp b                                          ; $6b00: $b8
    add c                                         ; $6b01: $81
    add h                                         ; $6b02: $84
    ld l, b                                       ; $6b03: $68
    ld d, e                                       ; $6b04: $53
    ld c, a                                       ; $6b05: $4f
    ld sp, hl                                     ; $6b06: $f9
    add e                                         ; $6b07: $83
    sub $2f                                       ; $6b08: $d6 $2f
    ld de, $398d                                  ; $6b0a: $11 $8d $39
    ld d, d                                       ; $6b0d: $52
    dec de                                        ; $6b0e: $1b
    ld c, b                                       ; $6b0f: $48
    db $ec                                        ; $6b10: $ec
    ld a, a                                       ; $6b11: $7f
    db $e4                                        ; $6b12: $e4
    ld e, c                                       ; $6b13: $59
    jp $acf1                                      ; $6b14: $c3 $f1 $ac


    sbc h                                         ; $6b17: $9c
    sbc l                                         ; $6b18: $9d
    ld [hl], d                                    ; $6b19: $72
    ld c, l                                       ; $6b1a: $4d
    add [hl]                                      ; $6b1b: $86
    ld l, l                                       ; $6b1c: $6d
    cp l                                          ; $6b1d: $bd
    inc e                                         ; $6b1e: $1c
    ld c, b                                       ; $6b1f: $48
    ld c, e                                       ; $6b20: $4b
    ld d, b                                       ; $6b21: $50
    xor d                                         ; $6b22: $aa
    sbc h                                         ; $6b23: $9c
    ld e, l                                       ; $6b24: $5d
    adc h                                         ; $6b25: $8c
    jp z, $0d71                                   ; $6b26: $ca $71 $0d

    inc h                                         ; $6b29: $24
    db $ec                                        ; $6b2a: $ec
    push af                                       ; $6b2b: $f5
    sub h                                         ; $6b2c: $94
    ccf                                           ; $6b2d: $3f
    db $f4                                        ; $6b2e: $f4
    ccf                                           ; $6b2f: $3f
    ld a, [c]                                     ; $6b30: $f2
    xor h                                         ; $6b31: $ac
    add c                                         ; $6b32: $81
    ld b, h                                       ; $6b33: $44
    xor e                                         ; $6b34: $ab
    inc e                                         ; $6b35: $1c
    rst $00                                       ; $6b36: $c7
    adc e                                         ; $6b37: $8b
    or b                                          ; $6b38: $b0
    db $ed                                        ; $6b39: $ed
    nop                                           ; $6b3a: $00
    rst $20                                       ; $6b3b: $e7
    ld a, [de]                                    ; $6b3c: $1a
    ld e, c                                       ; $6b3d: $59
    ld c, a                                       ; $6b3e: $4f
    ld sp, hl                                     ; $6b3f: $f9
    ld b, e                                       ; $6b40: $43
    ld b, e                                       ; $6b41: $43
    jr jr_070_6b69                                ; $6b42: $18 $25

    cp e                                          ; $6b44: $bb
    ld [hl], d                                    ; $6b45: $72
    and h                                         ; $6b46: $a4
    ld d, c                                       ; $6b47: $51

Jump_070_6b48:
    dec d                                         ; $6b48: $15
    add hl, sp                                    ; $6b49: $39
    ld [hl], d                                    ; $6b4a: $72
    dec sp                                        ; $6b4b: $3b
    nop                                           ; $6b4c: $00
    ld d, a                                       ; $6b4d: $57
    add e                                         ; $6b4e: $83
    db $eb                                        ; $6b4f: $eb
    or b                                          ; $6b50: $b0
    or h                                          ; $6b51: $b4
    ld a, $41                                     ; $6b52: $3e $41
    dec hl                                        ; $6b54: $2b
    ld h, a                                       ; $6b55: $67
    add hl, hl                                    ; $6b56: $29
    or h                                          ; $6b57: $b4
    sbc [hl]                                      ; $6b58: $9e
    dec c                                         ; $6b59: $0d
    inc h                                         ; $6b5a: $24
    or $3f                                        ; $6b5b: $f6 $3f
    ld a, [c]                                     ; $6b5d: $f2
    xor h                                         ; $6b5e: $ac
    ld a, a                                       ; $6b5f: $7f
    xor h                                         ; $6b60: $ac
    add [hl]                                      ; $6b61: $86
    ld b, [hl]                                    ; $6b62: $46
    cp c                                          ; $6b63: $b9
    inc d                                         ; $6b64: $14
    or [hl]                                       ; $6b65: $b6
    push af                                       ; $6b66: $f5
    ld [hl], e                                    ; $6b67: $73
    add a                                         ; $6b68: $87

jr_070_6b69:
    ld e, [hl]                                    ; $6b69: $5e
    add sp, -$0c                                  ; $6b6a: $e8 $f4
    sbc l                                         ; $6b6c: $9d
    reti                                          ; $6b6d: $d9


    rst $10                                       ; $6b6e: $d7
    db $f4                                        ; $6b6f: $f4
    ld a, [de]                                    ; $6b70: $1a
    ld c, [hl]                                    ; $6b71: $4e
    ld c, e                                       ; $6b72: $4b
    ret nc                                        ; $6b73: $d0

    ret                                           ; $6b74: $c9


    sbc [hl]                                      ; $6b75: $9e
    db $fd                                        ; $6b76: $fd
    adc a                                         ; $6b77: $8f
    inc a                                         ; $6b78: $3c
    db $eb                                        ; $6b79: $eb
    add hl, hl                                    ; $6b7a: $29
    pop bc                                        ; $6b7b: $c1
    inc a                                         ; $6b7c: $3c
    xor d                                         ; $6b7d: $aa
    add hl, bc                                    ; $6b7e: $09
    sub l                                         ; $6b7f: $95
    or e                                          ; $6b80: $b3
    di                                            ; $6b81: $f3
    ld [c], a                                     ; $6b82: $e2
    rst $28                                       ; $6b83: $ef
    call nc, $12b3                                ; $6b84: $d4 $b3 $12
    ld d, $a1                                     ; $6b87: $16 $a1
    db $db                                        ; $6b89: $db
    ld bc, $a71f                                  ; $6b8a: $01 $1f $a7
    ld l, b                                       ; $6b8d: $68
    xor b                                         ; $6b8e: $a8
    sbc h                                         ; $6b8f: $9c
    and l                                         ; $6b90: $a5
    xor b                                         ; $6b91: $a8
    ld h, a                                       ; $6b92: $67
    inc bc                                        ; $6b93: $03
    adc c                                         ; $6b94: $89
    db $fd                                        ; $6b95: $fd
    adc a                                         ; $6b96: $8f
    inc a                                         ; $6b97: $3c
    db $eb                                        ; $6b98: $eb
    rra                                           ; $6b99: $1f
    xor e                                         ; $6b9a: $ab
    and c                                         ; $6b9b: $a1
    ld d, c                                       ; $6b9c: $51
    ld l, $85                                     ; $6b9d: $2e $85
    push af                                       ; $6b9f: $f5
    ld b, d                                       ; $6ba0: $42
    sub e                                         ; $6ba1: $93
    db $eb                                        ; $6ba2: $eb
    dec sp                                        ; $6ba3: $3b
    or e                                          ; $6ba4: $b3

jr_070_6ba5:
    xor a                                         ; $6ba5: $af
    jp hl                                         ; $6ba6: $e9


    ld h, a                                       ; $6ba7: $67
    or [hl]                                       ; $6ba8: $b6
    jp nz, $c97d                                  ; $6ba9: $c2 $7d $c9

    and h                                         ; $6bac: $a4
    ld e, e                                       ; $6bad: $5b
    ccf                                           ; $6bae: $3f
    adc $9e                                       ; $6baf: $ce $9e
    db $fd                                        ; $6bb1: $fd
    adc a                                         ; $6bb2: $8f
    inc a                                         ; $6bb3: $3c
    db $eb                                        ; $6bb4: $eb
    add hl, hl                                    ; $6bb5: $29
    pop bc                                        ; $6bb6: $c1
    inc a                                         ; $6bb7: $3c
    xor d                                         ; $6bb8: $aa
    add hl, bc                                    ; $6bb9: $09

jr_070_6bba:
    ld e, d                                       ; $6bba: $5a
    add hl, sp                                    ; $6bbb: $39
    ld c, [hl]                                    ; $6bbc: $4e
    cp b                                          ; $6bbd: $b8
    ld [hl-], a                                   ; $6bbe: $32
    ld l, $de                                     ; $6bbf: $2e $de
    ld c, e                                       ; $6bc1: $4b
    xor l                                         ; $6bc2: $ad
    ld h, a                                       ; $6bc3: $67
    dec h                                         ; $6bc4: $25
    inc l                                         ; $6bc5: $2c
    ld b, d                                       ; $6bc6: $42
    or a                                          ; $6bc7: $b7
    sbc $9c                                       ; $6bc8: $de $9c
    ld d, h                                       ; $6bca: $54
    call nz, $dd0b                                ; $6bcb: $c4 $0b $dd
    push bc                                       ; $6bce: $c5
    xor h                                         ; $6bcf: $ac
    add a                                         ; $6bd0: $87
    dec d                                         ; $6bd1: $15
    ei                                            ; $6bd2: $fb
    add hl, hl                                    ; $6bd3: $29
    add hl, sp                                    ; $6bd4: $39
    ld l, b                                       ; $6bd5: $68
    push hl                                       ; $6bd6: $e5
    jr c, jr_070_6bba                             ; $6bd7: $38 $e1

    jp z, Jump_070_78b8                           ; $6bd9: $ca $b8 $78

    cpl                                           ; $6bdc: $2f
    or l                                          ; $6bdd: $b5
    sbc [hl]                                      ; $6bde: $9e
    dec a                                         ; $6bdf: $3d
    add hl, de                                    ; $6be0: $19
    ld l, $e2                                     ; $6be1: $2e $e2
    jp nc, Jump_000_1f01                          ; $6be3: $d2 $01 $1f

    dec bc                                        ; $6be6: $0b
    ld l, l                                       ; $6be7: $6d
    sbc l                                         ; $6be8: $9d
    ldh [rBGP], a                                 ; $6be9: $e0 $47
    ret nc                                        ; $6beb: $d0

    rst $38                                       ; $6bec: $ff
    ret z                                         ; $6bed: $c8

    or e                                          ; $6bee: $b3
    ld e, [hl]                                    ; $6bef: $5e
    xor b                                         ; $6bf0: $a8
    ld c, e                                       ; $6bf1: $4b
    dec hl                                        ; $6bf2: $2b
    ld c, [hl]                                    ; $6bf3: $4e
    ld c, a                                       ; $6bf4: $4f
    call z, $d1b4                                 ; $6bf5: $cc $b4 $d1
    reti                                          ; $6bf8: $d9


    ld c, $ef                                     ; $6bf9: $0e $ef
    inc l                                         ; $6bfb: $2c
    add hl, sp                                    ; $6bfc: $39
    dec d                                         ; $6bfd: $15
    ld [hl], c                                    ; $6bfe: $71
    ld e, a                                       ; $6bff: $5f
    or a                                          ; $6c00: $b7
    ld c, e                                       ; $6c01: $4b
    ld d, a                                       ; $6c02: $57
    ld de, $d36e                                  ; $6c03: $11 $6e $d3
    cp d                                          ; $6c06: $ba
    ld d, h                                       ; $6c07: $54
    ld h, a                                       ; $6c08: $67
    db $eb                                        ; $6c09: $eb
    dec d                                         ; $6c0a: $15
    jr @+$06                                      ; $6c0b: $18 $04

    and l                                         ; $6c0d: $a5
    add [hl]                                      ; $6c0e: $86
    inc [hl]                                      ; $6c0f: $34
    ld d, $f1                                     ; $6c10: $16 $f1
    ld b, d                                       ; $6c12: $42
    sbc c                                         ; $6c13: $99
    ld a, [hl+]                                   ; $6c14: $2a
    daa                                           ; $6c15: $27
    ld b, a                                       ; $6c16: $47
    ld e, b                                       ; $6c17: $58
    ld b, e                                       ; $6c18: $43
    jr jr_070_6ba5                                ; $6c19: $18 $8a

    add $64                                       ; $6c1b: $c6 $64
    ld c, $0d                                     ; $6c1d: $0e $0d
    inc h                                         ; $6c1f: $24
    sub [hl]                                      ; $6c20: $96
    xor c                                         ; $6c21: $a9
    ld hl, sp+$3e                                 ; $6c22: $f8 $3e
    ld a, c                                       ; $6c24: $79
    xor [hl]                                      ; $6c25: $ae
    ld e, [hl]                                    ; $6c26: $5e
    add l                                         ; $6c27: $85
    reti                                          ; $6c28: $d9


    ld c, a                                       ; $6c29: $4f
    cp l                                          ; $6c2a: $bd
    ld a, $31                                     ; $6c2b: $3e $31
    jp nc, Jump_000_1d2e                          ; $6c2d: $d2 $2e $1d

    rst $20                                       ; $6c30: $e7
    ld a, [de]                                    ; $6c31: $1a
    jp nc, $81a6                                  ; $6c32: $d2 $a6 $81

    call nz, Call_070_469e                        ; $6c35: $c4 $9e $46
    inc hl                                        ; $6c38: $23
    db $eb                                        ; $6c39: $eb
    and c                                         ; $6c3a: $a1
    sub l                                         ; $6c3b: $95
    or b                                          ; $6c3c: $b0
    ld [$d4bd], sp                                ; $6c3d: $08 $bd $d4
    sbc e                                         ; $6c40: $9b
    db $fc                                        ; $6c41: $fc
    ld a, [hl]                                    ; $6c42: $7e
    ld a, [$791f]                                 ; $6c43: $fa $1f $79
    ld d, [hl]                                    ; $6c46: $56
    cp d                                          ; $6c47: $ba
    ld e, [hl]                                    ; $6c48: $5e
    sbc l                                         ; $6c49: $9d
    db $d3                                        ; $6c4a: $d3
    adc a                                         ; $6c4b: $8f
    or b                                          ; $6c4c: $b0
    xor b                                         ; $6c4d: $a8
    sub a                                         ; $6c4e: $97
    ld c, $d7                                     ; $6c4f: $0e $d7
    cp b                                          ; $6c51: $b8
    adc e                                         ; $6c52: $8b
    rst $00                                       ; $6c53: $c7
    sbc d                                         ; $6c54: $9a
    ld a, a                                       ; $6c55: $7f
    and a                                         ; $6c56: $a7
    sbc d                                         ; $6c57: $9a
    add h                                         ; $6c58: $84
    res 7, d                                      ; $6c59: $cb $ba
    rlca                                          ; $6c5b: $07
    ld l, a                                       ; $6c5c: $6f
    cp l                                          ; $6c5d: $bd
    ld c, d                                       ; $6c5e: $4a
    ld [hl], e                                    ; $6c5f: $73
    ld l, e                                       ; $6c60: $6b
    ld [hl-], a                                   ; $6c61: $32
    ei                                            ; $6c62: $fb
    rst $00                                       ; $6c63: $c7
    ld [$56c9], a                                 ; $6c64: $ea $c9 $56
    add h                                         ; $6c67: $84
    ld d, l                                       ; $6c68: $55
    adc [hl]                                      ; $6c69: $8e
    ld e, e                                       ; $6c6a: $5b
    and a                                         ; $6c6b: $a7
    reti                                          ; $6c6c: $d9


    ld c, $e7                                     ; $6c6d: $0e $e7
    ld a, [de]                                    ; $6c6f: $1a
    pop hl                                        ; $6c70: $e1
    ld b, [hl]                                    ; $6c71: $46
    ei                                            ; $6c72: $fb
    ld h, a                                       ; $6c73: $67
    or $cc                                        ; $6c74: $f6 $cc
    ld a, [hl]                                    ; $6c76: $7e
    cp d                                          ; $6c77: $ba
    ld [hl+], a                                   ; $6c78: $22
    or e                                          ; $6c79: $b3
    or $ce                                        ; $6c7a: $f6 $ce
    add [hl]                                      ; $6c7c: $86
    add $8b                                       ; $6c7d: $c6 $8b
    and e                                         ; $6c7f: $a3
    dec [hl]                                      ; $6c80: $35
    call c, $e09e                                 ; $6c81: $dc $9e $e0
    ccf                                           ; $6c84: $3f
    sub a                                         ; $6c85: $97
    ld [hl], $4f                                  ; $6c86: $36 $4f
    xor a                                         ; $6c88: $af
    db $ec                                        ; $6c89: $ec
    ld c, c                                       ; $6c8a: $49
    ret z                                         ; $6c8b: $c8

    ld a, d                                       ; $6c8c: $7a
    or $0a                                        ; $6c8d: $f6 $0a
    inc l                                         ; $6c8f: $2c
    ld b, d                                       ; $6c90: $42
    or a                                          ; $6c91: $b7
    ld e, [hl]                                    ; $6c92: $5e
    ld c, $6d                                     ; $6c93: $0e $6d
    cp $5c                                        ; $6c95: $fe $5c
    sub c                                         ; $6c97: $91
    call $8aa3                                    ; $6c98: $cd $a3 $8a
    adc [hl]                                      ; $6c9b: $8e
    adc b                                         ; $6c9c: $88
    ld d, $d1                                     ; $6c9d: $16 $d1
    ld l, c                                       ; $6c9f: $69
    jr nz, jr_070_6cc3                            ; $6ca0: $20 $21

    rst $00                                       ; $6ca2: $c7
    add hl, hl                                    ; $6ca3: $29
    ld [hl], d                                    ; $6ca4: $72
    and h                                         ; $6ca5: $a4
    ld l, [hl]                                    ; $6ca6: $6e
    cp l                                          ; $6ca7: $bd
    xor h                                         ; $6ca8: $ac
    cp d                                          ; $6ca9: $ba
    ld [hl-], a                                   ; $6caa: $32
    db $fc                                        ; $6cab: $fc
    ld [$8efa], sp                                ; $6cac: $08 $fa $8e
    pop de                                        ; $6caf: $d1
    sub a                                         ; $6cb0: $97
    ld a, l                                       ; $6cb1: $7d
    ld a, a                                       ; $6cb2: $7f
    db $ec                                        ; $6cb3: $ec
    call nz, Call_000_00ed                        ; $6cb4: $c4 $ed $00
    rst $20                                       ; $6cb7: $e7
    ld a, [hl+]                                   ; $6cb8: $2a
    ld h, a                                       ; $6cb9: $67
    rla                                           ; $6cba: $17
    and e                                         ; $6cbb: $a3
    jp z, Jump_070_4f54                           ; $6cbc: $ca $54 $4f

    ld sp, hl                                     ; $6cbf: $f9
    jp Jump_000_0076                              ; $6cc0: $c3 $76 $00


jr_070_6cc3:
    ld l, a                                       ; $6cc3: $6f
    ld d, e                                       ; $6cc4: $53
    cp $d0                                        ; $6cc5: $fe $d0
    ld b, a                                       ; $6cc7: $47
    sbc $4f                                       ; $6cc8: $de $4f
    ld a, [de]                                    ; $6cca: $1a
    sub e                                         ; $6ccb: $93
    or $fa                                        ; $6ccc: $f6 $fa
    jp c, $f5f7                                   ; $6cce: $da $f7 $f5

    db $e3                                        ; $6cd1: $e3
    sub d                                         ; $6cd2: $92
    ccf                                           ; $6cd3: $3f
    db $ec                                        ; $6cd4: $ec
    ld a, h                                       ; $6cd5: $7c
    and h                                         ; $6cd6: $a4
    rlca                                          ; $6cd7: $07
    ld l, a                                       ; $6cd8: $6f
    ld d, e                                       ; $6cd9: $53
    cp $d0                                        ; $6cda: $fe $d0
    ld b, a                                       ; $6cdc: $47
    sbc $4d                                       ; $6cdd: $de $4d
    ei                                            ; $6cdf: $fb
    cp [hl]                                       ; $6ce0: $be
    cp $b4                                        ; $6ce1: $fe $b4
    ld e, [hl]                                    ; $6ce3: $5e

jr_070_6ce4:
    sbc a                                         ; $6ce4: $9f
    rra                                           ; $6ce5: $1f
    jr z, jr_070_6ce4                             ; $6ce6: $28 $fc

    jp hl                                         ; $6ce8: $e9


    sub c                                         ; $6ce9: $91
    ld e, $6f                                     ; $6cea: $1e $6f
    ld d, e                                       ; $6cec: $53
    cp $d0                                        ; $6ced: $fe $d0
    ld b, a                                       ; $6cef: $47
    sbc $35                                       ; $6cf0: $de $35
    sbc [hl]                                      ; $6cf2: $9e
    add $7e                                       ; $6cf3: $c6 $7e
    ld [de], a                                    ; $6cf5: $12
    db $f4                                        ; $6cf6: $f4
    db $e3                                        ; $6cf7: $e3
    sbc [hl]                                      ; $6cf8: $9e
    rst $20                                       ; $6cf9: $e7
    inc de                                        ; $6cfa: $13
    ld [hl-], a                                   ; $6cfb: $32
    db $fc                                        ; $6cfc: $fc
    ret c                                         ; $6cfd: $d8

    inc hl                                        ; $6cfe: $23
    rlca                                          ; $6cff: $07
    ld l, a                                       ; $6d00: $6f
    ld d, e                                       ; $6d01: $53
    cp $d0                                        ; $6d02: $fe $d0
    ld b, a                                       ; $6d04: $47
    xor [hl]                                      ; $6d05: $ae
    pop de                                        ; $6d06: $d1
    ld a, [hl]                                    ; $6d07: $7e
    db $fc                                        ; $6d08: $fc
    add hl, hl                                    ; $6d09: $29
    dec bc                                        ; $6d0a: $0b
    ld a, [$af71]                                 ; $6d0b: $fa $71 $af

Call_070_6d0e:
    ld h, c                                       ; $6d0e: $61
    ld e, a                                       ; $6d0f: $5f
    and a                                         ; $6d10: $a7
    inc a                                         ; $6d11: $3c
    adc a                                         ; $6d12: $8f
    inc e                                         ; $6d13: $1c
    rst $20                                       ; $6d14: $e7
    dec c                                         ; $6d15: $0d
    inc h                                         ; $6d16: $24
    db $e4                                        ; $6d17: $e4
    jr c, jr_070_6d5f                             ; $6d18: $38 $45

    ld b, e                                       ; $6d1a: $43
    and e                                         ; $6d1b: $a3
    ld b, d                                       ; $6d1c: $42
    db $eb                                        ; $6d1d: $eb
    ld e, c                                       ; $6d1e: $59
    and l                                         ; $6d1f: $a5
    add l                                         ; $6d20: $85
    call z, Call_070_6f91                         ; $6d21: $cc $91 $6f
    db $f4                                        ; $6d24: $f4
    ld b, $84                                     ; $6d25: $06 $84
    inc l                                         ; $6d27: $2c
    or $d3                                        ; $6d28: $f6 $d3
    ld d, h                                       ; $6d2a: $54
    ld b, a                                       ; $6d2b: $47
    ld l, b                                       ; $6d2c: $68
    inc l                                         ; $6d2d: $2c
    ld [hl], a                                    ; $6d2e: $77
    add sp, $1b                                   ; $6d2f: $e8 $1b
    rlca                                          ; $6d31: $07
    ld l, a                                       ; $6d32: $6f
    adc l                                         ; $6d33: $8d
    inc de                                        ; $6d34: $13
    inc d                                         ; $6d35: $14
    dec c                                         ; $6d36: $0d
    ld l, l                                       ; $6d37: $6d
    ld b, h                                       ; $6d38: $44
    ld d, h                                       ; $6d39: $54
    dec e                                         ; $6d3a: $1d
    ld b, e                                       ; $6d3b: $43
    ld l, a                                       ; $6d3c: $6f
    add h                                         ; $6d3d: $84
    ld [hl], $29                                  ; $6d3e: $36 $29
    sub [hl]                                      ; $6d40: $96
    ld a, [de]                                    ; $6d41: $1a
    pop af                                        ; $6d42: $f1
    ld b, a                                       ; $6d43: $47
    inc hl                                        ; $6d44: $23
    or e                                          ; $6d45: $b3
    sbc a                                         ; $6d46: $9f
    add [hl]                                      ; $6d47: $86
    ld [hl], $c2                                  ; $6d48: $36 $c2
    sbc l                                         ; $6d4a: $9d
    ld c, $5a                                     ; $6d4b: $0e $5a
    add hl, sp                                    ; $6d4d: $39
    xor [hl]                                      ; $6d4e: $ae
    ret c                                         ; $6d4f: $d8

    ld c, a                                       ; $6d50: $4f
    ret                                           ; $6d51: $c9


    ld b, c                                       ; $6d52: $41
    xor e                                         ; $6d53: $ab
    or h                                          ; $6d54: $b4
    sub b                                         ; $6d55: $90
    add hl, sp                                    ; $6d56: $39
    ld d, d                                       ; $6d57: $52

jr_070_6d58:
    sbc e                                         ; $6d58: $9b
    and c                                         ; $6d59: $a1
    and l                                         ; $6d5a: $a5
    add $24                                       ; $6d5b: $c6 $24
    add d                                         ; $6d5d: $82
    ld l, [hl]                                    ; $6d5e: $6e

jr_070_6d5f:
    db $fd                                        ; $6d5f: $fd
    inc c                                         ; $6d60: $0c

jr_070_6d61:
    ei                                            ; $6d61: $fb
    sbc a                                         ; $6d62: $9f
    or a                                          ; $6d63: $b7
    adc e                                         ; $6d64: $8b
    db $fd                                        ; $6d65: $fd
    sub h                                         ; $6d66: $94
    inc e                                         ; $6d67: $1c
    or h                                          ; $6d68: $b4
    sbc [hl]                                      ; $6d69: $9e
    push de                                       ; $6d6a: $d5
    inc b                                         ; $6d6b: $04
    ld l, l                                       ; $6d6c: $6d
    ld l, b                                       ; $6d6d: $68
    ld d, h                                       ; $6d6e: $54
    ld l, b                                       ; $6d6f: $68
    inc hl                                        ; $6d70: $23
    or e                                          ; $6d71: $b3
    jr @-$50                                      ; $6d72: $18 $ae

    and d                                         ; $6d74: $a2
    dec h                                         ; $6d75: $25
    pop hl                                        ; $6d76: $e1
    and a                                         ; $6d77: $a7
    pop hl                                        ; $6d78: $e1
    ld e, b                                       ; $6d79: $58
    rst $30                                       ; $6d7a: $f7
    ldh [$ed], a                                  ; $6d7b: $e0 $ed
    nop                                           ; $6d7d: $00
    rra                                           ; $6d7e: $1f
    dec bc                                        ; $6d7f: $0b
    ld l, l                                       ; $6d80: $6d
    sbc l                                         ; $6d81: $9d
    ldh [rBGP], a                                 ; $6d82: $e0 $47
    ret nc                                        ; $6d84: $d0

    xor e                                         ; $6d85: $ab
    jr c, jr_070_6d61                             ; $6d86: $38 $d9

    ld a, [c]                                     ; $6d88: $f2
    db $db                                        ; $6d89: $db
    ld bc, $b36f                                  ; $6d8a: $01 $6f $b3
    add hl, de                                    ; $6d8d: $19
    ld e, $5b                                     ; $6d8e: $1e $5b
    rst $08                                       ; $6d90: $cf
    ld d, e                                       ; $6d91: $53
    ld [hl], a                                    ; $6d92: $77
    ld sp, $ef8b                                  ; $6d93: $31 $8b $ef
    sub e                                         ; $6d96: $93
    add a                                         ; $6d97: $87
    dec l                                         ; $6d98: $2d
    inc d                                         ; $6d99: $14
    dec c                                         ; $6d9a: $0d
    ld l, l                                       ; $6d9b: $6d
    ld h, h                                       ; $6d9c: $64
    ld [hl-], a                                   ; $6d9d: $32
    sbc b                                         ; $6d9e: $98
    and b                                         ; $6d9f: $a0
    ld c, $5a                                     ; $6da0: $0e $5a
    and [hl]                                      ; $6da2: $a6
    ld d, d                                       ; $6da3: $52
    inc hl                                        ; $6da4: $23
    cp $a8                                        ; $6da5: $fe $a8
    ld b, e                                       ; $6da7: $43
    ld b, h                                       ; $6da8: $44
    or $53                                        ; $6da9: $f6 $53
    ld hl, $9275                                  ; $6dab: $21 $75 $92
    adc l                                         ; $6dae: $8d
    ld d, [hl]                                    ; $6daf: $56
    adc [hl]                                      ; $6db0: $8e
    db $eb                                        ; $6db1: $eb
    jp z, $b8ca                                   ; $6db2: $ca $ca $b8

    db $e4                                        ; $6db5: $e4
    ld a, [c]                                     ; $6db6: $f2
    add sp, $1e                                   ; $6db7: $e8 $1e
    ld e, h                                       ; $6db9: $5c
    ld b, h                                       ; $6dba: $44
    dec bc                                        ; $6dbb: $0b
    sub $b2                                       ; $6dbc: $d6 $b2
    and c                                         ; $6dbe: $a1
    ld d, c                                       ; $6dbf: $51
    ld l, $9d                                     ; $6dc0: $2e $9d
    ld a, d                                       ; $6dc2: $7a
    ld [hl], $39                                  ; $6dc3: $36 $39
    ld d, h                                       ; $6dc5: $54
    daa                                           ; $6dc6: $27
    ld d, e                                       ; $6dc7: $53
    and d                                         ; $6dc8: $a2
    jr c, jr_070_6d58                             ; $6dc9: $38 $8d

    and c                                         ; $6dcb: $a1
    adc [hl]                                      ; $6dcc: $8e
    ld [$3b66], a                                 ; $6dcd: $ea $66 $3b
    nop                                           ; $6dd0: $00
    rra                                           ; $6dd1: $1f
    rst $28                                       ; $6dd2: $ef
    pop bc                                        ; $6dd3: $c1
    add d                                         ; $6dd4: $82
    add [hl]                                      ; $6dd5: $86
    ld [hl], $22                                  ; $6dd6: $36 $22
    xor d                                         ; $6dd8: $aa
    adc [hl]                                      ; $6dd9: $8e
    and c                                         ; $6dda: $a1
    scf                                           ; $6ddb: $37
    ld b, d                                       ; $6ddc: $42
    sbc e                                         ; $6ddd: $9b
    inc d                                         ; $6dde: $14
    or a                                          ; $6ddf: $b7
    inc bc                                        ; $6de0: $03
    rra                                           ; $6de1: $1f
    rst $28                                       ; $6de2: $ef
    pop bc                                        ; $6de3: $c1
    add d                                         ; $6de4: $82
    ld e, [hl]                                    ; $6de5: $5e
    add l                                         ; $6de6: $85
    reti                                          ; $6de7: $d9


    ld c, a                                       ; $6de8: $4f
    add d                                         ; $6de9: $82
    ld c, [hl]                                    ; $6dea: $4e
    inc bc                                        ; $6deb: $03
    adc c                                         ; $6dec: $89
    sbc l                                         ; $6ded: $9d
    ld b, [hl]                                    ; $6dee: $46
    jp $22ed                                      ; $6def: $c3 $ed $22


    sub b                                         ; $6df2: $90
    sub $1b                                       ; $6df3: $d6 $1b
    rlca                                          ; $6df5: $07
    rra                                           ; $6df6: $1f
    scf                                           ; $6df7: $37
    or h                                          ; $6df8: $b4
    ld de, $7551                                  ; $6df9: $11 $51 $75
    xor h                                         ; $6dfc: $ac
    scf                                           ; $6dfd: $37
    ld [hl-], a                                   ; $6dfe: $32
    ld b, d                                       ; $6dff: $42
    sub $b1                                       ; $6e00: $d6 $b1
    ld c, $d9                                     ; $6e02: $0e $d9
    ld c, a                                       ; $6e04: $4f
    ld l, d                                       ; $6e05: $6a
    ld l, b                                       ; $6e06: $68
    inc hl                                        ; $6e07: $23
    sub e                                         ; $6e08: $93
    pop bc                                        ; $6e09: $c1
    ld a, [de]                                    ; $6e0a: $1a

Jump_070_6e0b:
    ld a, [de]                                    ; $6e0b: $1a
    dec d                                         ; $6e0c: $15
    ld e, d                                       ; $6e0d: $5a
    rst $08                                       ; $6e0e: $cf
    ld a, [hl+]                                   ; $6e0f: $2a
    dec l                                         ; $6e10: $2d

jr_070_6e11:
    ld h, h                                       ; $6e11: $64
    adc [hl]                                      ; $6e12: $8e
    inc d                                         ; $6e13: $14
    sub h                                         ; $6e14: $94
    cp l                                          ; $6e15: $bd
    adc d                                         ; $6e16: $8a
    sub e                                         ; $6e17: $93
    dec l                                         ; $6e18: $2d
    ld e, a                                       ; $6e19: $5f
    rst $00                                       ; $6e1a: $c7
    ld a, [$caa5]                                 ; $6e1b: $fa $a5 $ca
    ld b, $12                                     ; $6e1e: $06 $12
    dec de                                        ; $6e20: $1b
    adc [hl]                                      ; $6e21: $8e
    ld h, a                                       ; $6e22: $67
    push bc                                       ; $6e23: $c5
    ld hl, sp-$2d                                 ; $6e24: $f8 $d3
    adc d                                         ; $6e26: $8a

Jump_070_6e27:
    db $fd                                        ; $6e27: $fd
    sub h                                         ; $6e28: $94
    inc e                                         ; $6e29: $1c
    or h                                          ; $6e2a: $b4
    pop hl                                        ; $6e2b: $e1
    ld e, b                                       ; $6e2c: $58
    ld de, $6b48                                  ; $6e2d: $11 $48 $6b
    dec sp                                        ; $6e30: $3b
    nop                                           ; $6e31: $00
    scf                                           ; $6e32: $37
    sub [hl]                                      ; $6e33: $96
    inc de                                        ; $6e34: $13
    db $f4                                        ; $6e35: $f4
    ccf                                           ; $6e36: $3f
    ld a, [c]                                     ; $6e37: $f2
    xor h                                         ; $6e38: $ac
    pop hl                                        ; $6e39: $e1
    ld a, b                                       ; $6e3a: $78
    sub [hl]                                      ; $6e3b: $96
    ld e, c                                       ; $6e3c: $59
    ld c, [hl]                                    ; $6e3d: $4e
    adc [hl]                                      ; $6e3e: $8e
    ld d, $fc                                     ; $6e3f: $16 $fc
    call nz, Call_070_6d0e                        ; $6e41: $c4 $0e $6d
    jr c, jr_070_6e9c                             ; $6e44: $38 $56

    inc b                                         ; $6e46: $04
    jp nc, $b6ea                                  ; $6e47: $d2 $ea $b6

    ld l, l                                       ; $6e4a: $6d
    ld h, l                                       ; $6e4b: $65
    and c                                         ; $6e4c: $a1
    ld d, l                                       ; $6e4d: $55
    ld e, d                                       ; $6e4e: $5a
    ret z                                         ; $6e4f: $c8

    inc e                                         ; $6e50: $1c
    xor c                                         ; $6e51: $a9
    dec c                                         ; $6e52: $0d
    inc h                                         ; $6e53: $24
    ld d, $da                                     ; $6e54: $16 $da
    and h                                         ; $6e56: $a4
    ld [hl], b                                    ; $6e57: $70
    adc l                                         ; $6e58: $8d
    ld [hl], b                                    ; $6e59: $70
    jp nz, Jump_070_6e0b                          ; $6e5a: $c2 $0b $6e

    dec sp                                        ; $6e5d: $3b
    nop                                           ; $6e5e: $00
    scf                                           ; $6e5f: $37
    ret c                                         ; $6e60: $d8

    push hl                                       ; $6e61: $e5
    jp nz, $88b1                                  ; $6e62: $c2 $b1 $88

    ld a, [hl+]                                   ; $6e65: $2a
    set 2, h                                      ; $6e66: $cb $d4
    ret nc                                        ; $6e68: $d0

    ld b, [hl]                                    ; $6e69: $46
    ld h, $83                                     ; $6e6a: $26 $83
    dec [hl]                                      ; $6e6c: $35
    inc e                                         ; $6e6d: $1c
    dec hl                                        ; $6e6e: $2b
    ld [bc], a                                    ; $6e6f: $02
    ld l, c                                       ; $6e70: $69
    cp l                                          ; $6e71: $bd
    ld [hl], c                                    ; $6e72: $71
    nop                                           ; $6e73: $00
    rst $28                                       ; $6e74: $ef
    xor h                                         ; $6e75: $ac
    ld b, b                                       ; $6e76: $40
    ld h, d                                       ; $6e77: $62
    rst $28                                       ; $6e78: $ef
    db $ec                                        ; $6e79: $ec
    ld a, a                                       ; $6e7a: $7f
    ld [hl], d                                    ; $6e7b: $72
    add h                                         ; $6e7c: $84
    and a                                         ; $6e7d: $a7
    and b                                         ; $6e7e: $a0
    ld c, $da                                     ; $6e7f: $0e $da
    jr c, jr_070_6e11                             ; $6e81: $38 $8e

    sub l                                         ; $6e83: $95
    ld l, c                                       ; $6e84: $69
    ld a, c                                       ; $6e85: $79
    ld hl, sp-$27                                 ; $6e86: $f8 $d9
    ld c, $e7                                     ; $6e88: $0e $e7
    or a                                          ; $6e8a: $b7
    inc h                                         ; $6e8b: $24
    ld [hl], a                                    ; $6e8c: $77
    and $c8                                       ; $6e8d: $e6 $c8
    ld b, [hl]                                    ; $6e8f: $46
    add e                                         ; $6e90: $83
    db $10                                        ; $6e91: $10
    cp e                                          ; $6e92: $bb
    ld a, b                                       ; $6e93: $78
    inc b                                         ; $6e94: $04
    cp l                                          ; $6e95: $bd
    ld a, [bc]                                    ; $6e96: $0a
    or e                                          ; $6e97: $b3
    sbc a                                         ; $6e98: $9f
    or [hl]                                       ; $6e99: $b6
    ld a, $dd                                     ; $6e9a: $3e $dd

jr_070_6e9c:
    ld [hl], b                                    ; $6e9c: $70
    ld [hl], d                                    ; $6e9d: $72
    sbc h                                         ; $6e9e: $9c
    add [hl]                                      ; $6e9f: $86
    jr nc, @+$56                                  ; $6ea0: $30 $54

    inc de                                        ; $6ea2: $13
    ld a, [hl+]                                   ; $6ea3: $2a
    and c                                         ; $6ea4: $a1
    ld l, b                                       ; $6ea5: $68
    jr c, jr_070_6efe                             ; $6ea6: $38 $56

    add hl, sp                                    ; $6ea8: $39
    add hl, sp                                    ; $6ea9: $39
    jp c, $acec                                   ; $6eaa: $da $ec $ac

    ld h, a                                       ; $6ead: $67
    ld b, e                                       ; $6eae: $43
    ld l, d                                       ; $6eaf: $6a
    and h                                         ; $6eb0: $a4
    ld l, [hl]                                    ; $6eb1: $6e
    rlca                                          ; $6eb2: $07

Call_070_6eb3:
    rra                                           ; $6eb3: $1f
    ld a, [c]                                     ; $6eb4: $f2
    add h                                         ; $6eb5: $84
    ld e, l                                       ; $6eb6: $5d
    ld d, b                                       ; $6eb7: $50
    inc b                                         ; $6eb8: $04
    jp nc, Jump_000_352a                          ; $6eb9: $d2 $2a $35

    cp $4e                                        ; $6ebc: $fe $4e
    and c                                         ; $6ebe: $a1
    dec c                                         ; $6ebf: $0d
    adc l                                         ; $6ec0: $8d
    ld a, [bc]                                    ; $6ec1: $0a
    xor l                                         ; $6ec2: $ad
    ld h, a                                       ; $6ec3: $67
    sub l                                         ; $6ec4: $95
    ld d, $32                                     ; $6ec5: $16 $32
    ld b, a                                       ; $6ec7: $47
    sub $b3                                       ; $6ec8: $d6 $b3
    add c                                         ; $6eca: $81
    call nz, $4686                                ; $6ecb: $c4 $86 $46
    cp c                                          ; $6ece: $b9
    ld [hl], h                                    ; $6ecf: $74
    or [hl]                                       ; $6ed0: $b6
    inc bc                                        ; $6ed1: $03
    rst $20                                       ; $6ed2: $e7
    add hl, sp                                    ; $6ed3: $39
    cp $8e                                        ; $6ed4: $fe $8e
    and b                                         ; $6ed6: $a0
    ld c, e                                       ; $6ed7: $4b
    db $e3                                        ; $6ed8: $e3
    db $f4                                        ; $6ed9: $f4
    ld b, d                                       ; $6eda: $42
    db $fd                                        ; $6edb: $fd
    adc d                                         ; $6edc: $8a
    ld [hl], b                                    ; $6edd: $70
    ld a, c                                       ; $6ede: $79
    or [hl]                                       ; $6edf: $b6
    inc bc                                        ; $6ee0: $03
    ld l, a                                       ; $6ee1: $6f
    adc l                                         ; $6ee2: $8d
    inc de                                        ; $6ee3: $13
    call nc, Call_070_6961                        ; $6ee4: $d4 $61 $69
    db $fd                                        ; $6ee7: $fd
    adc d                                         ; $6ee8: $8a
    ld [hl], b                                    ; $6ee9: $70
    ld a, c                                       ; $6eea: $79
    or [hl]                                       ; $6eeb: $b6
    inc bc                                        ; $6eec: $03
    rra                                           ; $6eed: $1f
    and l                                         ; $6eee: $a5
    inc l                                         ; $6eef: $2c
    pop de                                        ; $6ef0: $d1
    dec bc                                        ; $6ef1: $0b
    push af                                       ; $6ef2: $f5
    ld [hl], h                                    ; $6ef3: $74
    ld e, b                                       ; $6ef4: $58
    jp c, $ab48                                   ; $6ef5: $da $48 $ab

    ld e, a                                       ; $6ef8: $5f
    ld de, $4f2e                                  ; $6ef9: $11 $2e $4f
    dec a                                         ; $6efc: $3d
    xor e                                         ; $6efd: $ab

jr_070_6efe:
    inc hl                                        ; $6efe: $23
    inc [hl]                                      ; $6eff: $34
    ld l, h                                       ; $6f00: $6c

Jump_070_6f01:
    rlca                                          ; $6f01: $07
    sub a                                         ; $6f02: $97
    ld c, a                                       ; $6f03: $4f
    ld h, e                                       ; $6f04: $63
    ld l, b                                       ; $6f05: $68
    ld h, h                                       ; $6f06: $64
    ld d, $4f                                     ; $6f07: $16 $4f
    sub e                                         ; $6f09: $93
    xor e                                         ; $6f0a: $ab
    sbc e                                         ; $6f0b: $9b
    inc e                                         ; $6f0c: $1c
    ld e, c                                       ; $6f0d: $59
    rst $08                                       ; $6f0e: $cf
    ld a, [$e115]                                 ; $6f0f: $fa $15 $e1
    ld a, [c]                                     ; $6f12: $f2
    ld l, h                                       ; $6f13: $6c
    rlca                                          ; $6f14: $07
    xor a                                         ; $6f15: $af
    rla                                           ; $6f16: $17
    ld a, [c]                                     ; $6f17: $f2
    cp [hl]                                       ; $6f18: $be
    cp h                                          ; $6f19: $bc
    ld [c], a                                     ; $6f1a: $e2
    ld l, h                                       ; $6f1b: $6c
    rlca                                          ; $6f1c: $07
    ld l, a                                       ; $6f1d: $6f
    adc l                                         ; $6f1e: $8d
    inc de                                        ; $6f1f: $13
    call nc, Call_070_6961                        ; $6f20: $d4 $61 $69
    ld hl, $cbef                                  ; $6f23: $21 $ef $cb
    dec hl                                        ; $6f26: $2b
    adc $76                                       ; $6f27: $ce $76
    nop                                           ; $6f29: $00
    rra                                           ; $6f2a: $1f
    and l                                         ; $6f2b: $a5
    inc l                                         ; $6f2c: $2c
    pop de                                        ; $6f2d: $d1
    dec bc                                        ; $6f2e: $0b
    push af                                       ; $6f2f: $f5
    ld [hl], h                                    ; $6f30: $74
    ld e, b                                       ; $6f31: $58
    jp c, $2b48                                   ; $6f32: $da $48 $2b

    db $e4                                        ; $6f35: $e4
    ld a, l                                       ; $6f36: $7d
    ld a, c                                       ; $6f37: $79
    push bc                                       ; $6f38: $c5
    xor c                                         ; $6f39: $a9
    ld h, a                                       ; $6f3a: $67
    ld [hl], l                                    ; $6f3b: $75

Jump_070_6f3c:
    add h                                         ; $6f3c: $84
    add [hl]                                      ; $6f3d: $86
    db $ed                                        ; $6f3e: $ed
    nop                                           ; $6f3f: $00
    sbc a                                         ; $6f40: $9f
    ld sp, $a78b                                  ; $6f41: $31 $8b $a7
    ret                                           ; $6f44: $c9


    push de                                       ; $6f45: $d5
    ld c, l                                       ; $6f46: $4d
    adc [hl]                                      ; $6f47: $8e
    xor h                                         ; $6f48: $ac
    ld h, a                                       ; $6f49: $67
    ld hl, $cbef                                  ; $6f4a: $21 $ef $cb
    dec hl                                        ; $6f4d: $2b
    adc $76                                       ; $6f4e: $ce $76
    nop                                           ; $6f50: $00
    rra                                           ; $6f51: $1f
    and l                                         ; $6f52: $a5
    inc l                                         ; $6f53: $2c
    pop de                                        ; $6f54: $d1
    dec bc                                        ; $6f55: $0b
    push af                                       ; $6f56: $f5
    ld [hl], h                                    ; $6f57: $74
    ld e, b                                       ; $6f58: $58
    ld e, d                                       ; $6f59: $5a
    ret z                                         ; $6f5a: $c8

    ei                                            ; $6f5b: $fb
    ld a, [c]                                     ; $6f5c: $f2
    adc d                                         ; $6f5d: $8a
    db $d3                                        ; $6f5e: $d3
    dec e                                         ; $6f5f: $1d
    ld hl, $a9f7                                  ; $6f60: $21 $f7 $a9
    ld h, a                                       ; $6f63: $67
    ld [hl], l                                    ; $6f64: $75
    add h                                         ; $6f65: $84
    add [hl]                                      ; $6f66: $86
    db $ed                                        ; $6f67: $ed
    nop                                           ; $6f68: $00
    ld l, a                                       ; $6f69: $6f
    adc l                                         ; $6f6a: $8d
    inc de                                        ; $6f6b: $13
    call nc, Call_070_6961                        ; $6f6c: $d4 $61 $69
    ld hl, $cbef                                  ; $6f6f: $21 $ef $cb
    dec hl                                        ; $6f72: $2b
    ld c, [hl]                                    ; $6f73: $4e
    ld [hl], a                                    ; $6f74: $77
    add h                                         ; $6f75: $84
    call c, $3b67                                 ; $6f76: $dc $67 $3b
    nop                                           ; $6f79: $00
    sub a                                         ; $6f7a: $97
    ld c, a                                       ; $6f7b: $4f
    ld h, e                                       ; $6f7c: $63
    ld l, b                                       ; $6f7d: $68
    ld h, h                                       ; $6f7e: $64
    ld d, $4f                                     ; $6f7f: $16 $4f
    sub e                                         ; $6f81: $93
    xor e                                         ; $6f82: $ab
    sbc e                                         ; $6f83: $9b
    inc e                                         ; $6f84: $1c
    ld e, c                                       ; $6f85: $59
    rst $08                                       ; $6f86: $cf
    ld b, d                                       ; $6f87: $42

jr_070_6f88:
    sbc $97                                       ; $6f88: $de $97
    ld d, a                                       ; $6f8a: $57
    sbc h                                         ; $6f8b: $9c
    xor $08                                       ; $6f8c: $ee $08
    cp c                                          ; $6f8e: $b9
    rst $08                                       ; $6f8f: $cf
    halt                                          ; $6f90: $76

Call_070_6f91:
    nop                                           ; $6f91: $00
    sbc a                                         ; $6f92: $9f
    ld e, e                                       ; $6f93: $5b
    ld e, h                                       ; $6f94: $5c
    daa                                           ; $6f95: $27
    ld l, h                                       ; $6f96: $6c
    db $fd                                        ; $6f97: $fd
    cp b                                          ; $6f98: $b8
    rst $18                                       ; $6f99: $df
    jp Jump_070_72fc                              ; $6f9a: $c3 $fc $72


    push af                                       ; $6f9d: $f5
    and e                                         ; $6f9e: $a3
    ld a, l                                       ; $6f9f: $7d
    dec sp                                        ; $6fa0: $3b
    sbc c                                         ; $6fa1: $99
    xor $fc                                       ; $6fa2: $ee $fc
    ld c, c                                       ; $6fa4: $49
    ld c, e                                       ; $6fa5: $4b
    ld b, e                                       ; $6fa6: $43
    and l                                         ; $6fa7: $a5
    sbc b                                         ; $6fa8: $98
    ld l, e                                       ; $6fa9: $6b
    ld [$ea97], a                                 ; $6faa: $ea $97 $ea
    ld l, h                                       ; $6fad: $6c
    rlca                                          ; $6fae: $07
    ld l, a                                       ; $6faf: $6f
    adc l                                         ; $6fb0: $8d
    inc de                                        ; $6fb1: $13
    call nc, Call_070_6961                        ; $6fb2: $d4 $61 $69
    sub e                                         ; $6fb5: $93
    push bc                                       ; $6fb6: $c5
    ld [hl], l                                    ; $6fb7: $75
    jp nz, Jump_000_0076                          ; $6fb8: $c2 $76 $00

    rra                                           ; $6fbb: $1f
    ld [hl], a                                    ; $6fbc: $77
    ld e, a                                       ; $6fbd: $5f
    ld a, a                                       ; $6fbe: $7f
    sbc e                                         ; $6fbf: $9b
    ld a, [$bb75]                                 ; $6fc0: $fa $75 $bb
    add c                                         ; $6fc3: $81
    call nz, $a85e                                ; $6fc4: $c4 $5e $a8
    ld h, c                                       ; $6fc7: $61
    db $dd                                        ; $6fc8: $dd
    xor [hl]                                      ; $6fc9: $ae
    ld h, a                                       ; $6fca: $67
    dec e                                         ; $6fcb: $1d
    or d                                          ; $6fcc: $b2
    or a                                          ; $6fcd: $b7
    ldh [$d3], a                                  ; $6fce: $e0 $d3
    jr jr_070_6f88                                ; $6fd0: $18 $b6

    inc bc                                        ; $6fd2: $03

jr_070_6fd3:
    ld l, a                                       ; $6fd3: $6f
    adc l                                         ; $6fd4: $8d
    inc de                                        ; $6fd5: $13
    call nc, Call_070_6961                        ; $6fd6: $d4 $61 $69
    dec c                                         ; $6fd9: $0d
    ld [hl], a                                    ; $6fda: $77
    rst $18                                       ; $6fdb: $df
    and [hl]                                      ; $6fdc: $a6
    sub $b3                                       ; $6fdd: $d6 $b3
    ld c, $d9                                     ; $6fdf: $0e $d9
    ld e, e                                       ; $6fe1: $5b
    ldh a, [rBCPD]                                ; $6fe2: $f0 $69
    inc c                                         ; $6fe4: $0c
    db $db                                        ; $6fe5: $db
    ld bc, $a51f                                  ; $6fe6: $01 $1f $a5
    inc l                                         ; $6fe9: $2c
    pop de                                        ; $6fea: $d1
    dec bc                                        ; $6feb: $0b
    push af                                       ; $6fec: $f5
    ld [hl], h                                    ; $6fed: $74
    ld e, b                                       ; $6fee: $58
    jp c, $ab48                                   ; $6fef: $da $48 $ab

    ld h, c                                       ; $6ff2: $61
    db $dd                                        ; $6ff3: $dd
    xor [hl]                                      ; $6ff4: $ae
    ld h, a                                       ; $6ff5: $67
    dec e                                         ; $6ff6: $1d
    or d                                          ; $6ff7: $b2
    or a                                          ; $6ff8: $b7
    ldh [$d3], a                                  ; $6ff9: $e0 $d3
    jr @-$14                                      ; $6ffb: $18 $ea

    ld e, c                                       ; $6ffd: $59
    dec e                                         ; $6ffe: $1d
    and c                                         ; $6fff: $a1
    ld h, c                                       ; $7000: $61
    dec sp                                        ; $7001: $3b
    nop                                           ; $7002: $00
    sub a                                         ; $7003: $97
    ld c, a                                       ; $7004: $4f
    ld h, e                                       ; $7005: $63
    ld l, b                                       ; $7006: $68
    ld h, h                                       ; $7007: $64
    ld d, $4f                                     ; $7008: $16 $4f
    sub e                                         ; $700a: $93
    xor e                                         ; $700b: $ab
    sbc e                                         ; $700c: $9b
    inc e                                         ; $700d: $1c
    ld e, c                                       ; $700e: $59
    rst $08                                       ; $700f: $cf
    ld a, [de]                                    ; $7010: $1a
    xor $be                                       ; $7011: $ee $be
    ld c, l                                       ; $7013: $4d
    xor l                                         ; $7014: $ad
    ld h, a                                       ; $7015: $67
    dec e                                         ; $7016: $1d
    or d                                          ; $7017: $b2
    or a                                          ; $7018: $b7
    ldh [$d3], a                                  ; $7019: $e0 $d3
    jr jr_070_6fd3                                ; $701b: $18 $b6

    inc bc                                        ; $701d: $03
    sub a                                         ; $701e: $97
    push hl                                       ; $701f: $e5
    ld a, l                                       ; $7020: $7d
    ld a, c                                       ; $7021: $79
    push bc                                       ; $7022: $c5
    jp hl                                         ; $7023: $e9


    cp [hl]                                       ; $7024: $be
    db $e4                                        ; $7025: $e4
    ret z                                         ; $7026: $c8

    jr c, @+$7b                                   ; $7027: $38 $79

jr_070_7029:
    or [hl]                                       ; $7029: $b6
    ld a, [hl]                                    ; $702a: $7e
    xor $ba                                       ; $702b: $ee $ba
    ld a, [c]                                     ; $702d: $f2
    ret                                           ; $702e: $c9


    add sp, $17                                   ; $702f: $e8 $17
    ld [hl], e                                    ; $7031: $73
    ld h, h                                       ; $7032: $64
    ld d, c                                       ; $7033: $51
    rst $00                                       ; $7034: $c7
    inc a                                         ; $7035: $3c
    jp c, $8610                                   ; $7036: $da $10 $86

    add [hl]                                      ; $7039: $86
    ld [hl], $32                                  ; $703a: $36 $32
    add hl, de                                    ; $703c: $19
    ld l, h                                       ; $703d: $6c
    dec sp                                        ; $703e: $3b
    nop                                           ; $703f: $00
    rra                                           ; $7040: $1f
    adc [hl]                                      ; $7041: $8e
    ld h, [hl]                                    ; $7042: $66
    ld l, h                                       ; $7043: $6c
    db $fd                                        ; $7044: $fd
    inc h                                         ; $7045: $24
    or c                                          ; $7046: $b1
    ld a, c                                       ; $7047: $79
    inc e                                         ; $7048: $1c
    ld c, e                                       ; $7049: $4b
    adc l                                         ; $704a: $8d
    add [hl]                                      ; $704b: $86
    inc l                                         ; $704c: $2c
    sbc [hl]                                      ; $704d: $9e
    db $ed                                        ; $704e: $ed
    nop                                           ; $704f: $00
    ld l, a                                       ; $7050: $6f
    adc l                                         ; $7051: $8d
    inc de                                        ; $7052: $13
    call nc, Call_070_6961                        ; $7053: $d4 $61 $69
    rst $30                                       ; $7056: $f7
    pop de                                        ; $7057: $d1
    adc h                                         ; $7058: $8c
    db $ed                                        ; $7059: $ed
    nop                                           ; $705a: $00
    rra                                           ; $705b: $1f
    and l                                         ; $705c: $a5
    inc l                                         ; $705d: $2c
    pop de                                        ; $705e: $d1
    dec bc                                        ; $705f: $0b
    push af                                       ; $7060: $f5
    ld [hl], h                                    ; $7061: $74
    ld e, b                                       ; $7062: $58
    jp c, $eb48                                   ; $7063: $da $48 $eb

    ld a, $9a                                     ; $7066: $3e $9a
    ld d, c                                       ; $7068: $51
    rst $08                                       ; $7069: $cf
    ld [$0d08], a                                 ; $706a: $ea $08 $0d
    ld e, e                                       ; $706d: $5b
    cpl                                           ; $706e: $2f
    rst $10                                       ; $706f: $d7
    ld sp, $368f                                  ; $7070: $31 $8f $36
    sub b                                         ; $7073: $90
    ld e, b                                       ; $7074: $58
    ld l, d                                       ; $7075: $6a
    db $e4                                        ; $7076: $e4
    rst $30                                       ; $7077: $f7
    xor b                                         ; $7078: $a8
    ld h, a                                       ; $7079: $67
    adc [hl]                                      ; $707a: $8e
    ld [hl], $f5                                  ; $707b: $36 $f5
    db $ec                                        ; $707d: $ec
    sbc a                                         ; $707e: $9f
    and $a8                                       ; $707f: $e6 $a8
    db $db                                        ; $7081: $db
    ld bc, $4f97                                  ; $7082: $01 $97 $4f
    ld h, e                                       ; $7085: $63
    ld l, b                                       ; $7086: $68
    ld h, h                                       ; $7087: $64
    ld d, $4f                                     ; $7088: $16 $4f
    sub e                                         ; $708a: $93

Call_070_708b:
    xor e                                         ; $708b: $ab
    sbc e                                         ; $708c: $9b
    inc e                                         ; $708d: $1c
    ld e, c                                       ; $708e: $59
    rst $08                                       ; $708f: $cf
    xor $a3                                       ; $7090: $ee $a3
    add hl, de                                    ; $7092: $19
    db $db                                        ; $7093: $db
    ld bc, $39e7                                  ; $7094: $01 $e7 $39
    cp $8e                                        ; $7097: $fe $8e
    and b                                         ; $7099: $a0
    jr c, jr_070_7029                             ; $709a: $38 $8d

    and c                                         ; $709c: $a1
    sub c                                         ; $709d: $91
    ld e, c                                       ; $709e: $59
    inc a                                         ; $709f: $3c
    ld c, l                                       ; $70a0: $4d
    ld c, $35                                     ; $70a1: $0e $35
    xor h                                         ; $70a3: $ac
    db $db                                        ; $70a4: $db
    push af                                       ; $70a5: $f5
    inc l                                         ; $70a6: $2c
    ld d, h                                       ; $70a7: $54
    ld [hl], h                                    ; $70a8: $74
    adc a                                         ; $70a9: $8f
    rst $20                                       ; $70aa: $e7
    ld a, $db                                     ; $70ab: $3e $db
    ld bc, $a51f                                  ; $70ad: $01 $1f $a5
    inc l                                         ; $70b0: $2c
    pop de                                        ; $70b1: $d1
    dec bc                                        ; $70b2: $0b
    push af                                       ; $70b3: $f5
    ld [hl], h                                    ; $70b4: $74
    ld e, b                                       ; $70b5: $58
    jp c, $ab48                                   ; $70b6: $da $48 $ab

    pop hl                                        ; $70b9: $e1
    xor $db                                       ; $70ba: $ee $db
    call nc, $167a                                ; $70bc: $d4 $7a $16
    ld a, [hl+]                                   ; $70bf: $2a
    cp d                                          ; $70c0: $ba
    rst $00                                       ; $70c1: $c7

jr_070_70c2:
    ld [hl], e                                    ; $70c2: $73
    sbc a                                         ; $70c3: $9f
    ld a, d                                       ; $70c4: $7a
    ld d, [hl]                                    ; $70c5: $56
    ld b, a                                       ; $70c6: $47
    ld l, b                                       ; $70c7: $68
    ret c                                         ; $70c8: $d8

    ld c, $97                                     ; $70c9: $0e $97
    ld c, a                                       ; $70cb: $4f

Call_070_70cc:
    ld h, e                                       ; $70cc: $63
    ld l, b                                       ; $70cd: $68
    ld h, h                                       ; $70ce: $64
    ld d, $4f                                     ; $70cf: $16 $4f
    rst $38                                       ; $70d1: $ff
    pop bc                                        ; $70d2: $c1
    or [hl]                                       ; $70d3: $b6
    and b                                         ; $70d4: $a0
    dec [hl]                                      ; $70d5: $35
    call c, $9b7d                                 ; $70d6: $dc $7d $9b
    ld e, d                                       ; $70d9: $5a
    rst $08                                       ; $70da: $cf
    ld b, d                                       ; $70db: $42
    ld b, l                                       ; $70dc: $45
    rst $30                                       ; $70dd: $f7
    ld a, b                                       ; $70de: $78
    xor $b3                                       ; $70df: $ee $b3
    dec e                                         ; $70e1: $1d
    rst $20                                       ; $70e2: $e7
    ld a, [de]                                    ; $70e3: $1a
    daa                                           ; $70e4: $27
    ld d, l                                       ; $70e5: $55
    call nz, $dd7d                                ; $70e6: $c4 $7d $dd
    ld l, [hl]                                    ; $70e9: $6e
    jr c, jr_070_70c2                             ; $70ea: $38 $d6

    ld c, b                                       ; $70ec: $48
    xor e                                         ; $70ed: $ab
    sbc h                                         ; $70ee: $9c
    xor h                                         ; $70ef: $ac
    inc a                                         ; $70f0: $3c
    and l                                         ; $70f1: $a5
    push hl                                       ; $70f2: $e5
    and a                                         ; $70f3: $a7
    ret nc                                        ; $70f4: $d0

    add [hl]                                      ; $70f5: $86
    ld b, [hl]                                    ; $70f6: $46
    add l                                         ; $70f7: $85
    sub $b3                                       ; $70f8: $d6 $b3
    ld c, d                                       ; $70fa: $4a
    dec bc                                        ; $70fb: $0b
    sbc c                                         ; $70fc: $99
    inc hl                                        ; $70fd: $23
    dec b                                         ; $70fe: $05
    ld [hl], l                                    ; $70ff: $75
    ret nc                                        ; $7100: $d0

    ld [$71ca], a                                 ; $7101: $ea $ca $71
    ld a, [de]                                    ; $7104: $1a
    ld [hl], d                                    ; $7105: $72
    ld b, a                                       ; $7106: $47
    sub l                                         ; $7107: $95
    ld d, $32                                     ; $7108: $16 $32
    ld b, a                                       ; $710a: $47
    ld l, [hl]                                    ; $710b: $6e
    rlca                                          ; $710c: $07
    ld l, a                                       ; $710d: $6f
    adc l                                         ; $710e: $8d
    inc de                                        ; $710f: $13
    call nc, Call_070_6961                        ; $7110: $d4 $61 $69
    ld b, e                                       ; $7113: $43
    and e                                         ; $7114: $a3
    ld b, d                                       ; $7115: $42
    db $eb                                        ; $7116: $eb
    ld e, c                                       ; $7117: $59

Call_070_7118:
    and l                                         ; $7118: $a5
    add l                                         ; $7119: $85
    call z, $db91                                 ; $711a: $cc $91 $db
    ld bc, $8dd7                                  ; $711d: $01 $d7 $8d
    ld a, [bc]                                    ; $7120: $0a
    xor l                                         ; $7121: $ad
    ld h, a                                       ; $7122: $67
    sub l                                         ; $7123: $95
    ld d, $32                                     ; $7124: $16 $32
    ld b, a                                       ; $7126: $47
    ld d, [hl]                                    ; $7127: $56
    ld a, a                                       ; $7128: $7f
    and a                                         ; $7129: $a7
    ld c, d                                       ; $712a: $4a
    rla                                           ; $712b: $17
    ld a, [de]                                    ; $712c: $1a
    dec hl                                        ; $712d: $2b
    and h                                         ; $712e: $a4
    db $eb                                        ; $712f: $eb
    ld a, a                                       ; $7130: $7f
    ld h, l                                       ; $7131: $65
    rrca                                          ; $7132: $0f
    db $ed                                        ; $7133: $ed
    or [hl]                                       ; $7134: $b6
    ld l, l                                       ; $7135: $6d
    ld b, l                                       ; $7136: $45
    dec e                                         ; $7137: $1d
    di                                            ; $7138: $f3
    ld l, b                                       ; $7139: $68
    inc bc                                        ; $713a: $03
    adc c                                         ; $713b: $89
    push hl                                       ; $713c: $e5
    ld c, $2d                                     ; $713d: $0e $2d
    ld d, [hl]                                    ; $713f: $56
    or $28                                        ; $7140: $f6 $28
    dec [hl]                                      ; $7142: $35
    ld a, [c]                                     ; $7143: $f2
    ld a, e                                       ; $7144: $7b
    cp b                                          ; $7145: $b8
    ld h, [hl]                                    ; $7146: $66
    ld d, h                                       ; $7147: $54
    jr c, jr_070_715c                             ; $7148: $38 $12

    push af                                       ; $714a: $f5
    xor b                                         ; $714b: $a8
    jp nc, $e642                                  ; $714c: $d2 $42 $e6

    ret z                                         ; $714f: $c8

    db $ed                                        ; $7150: $ed
    nop                                           ; $7151: $00
    sub a                                         ; $7152: $97
    ld c, a                                       ; $7153: $4f
    ld h, e                                       ; $7154: $63
    ld l, b                                       ; $7155: $68
    ld h, h                                       ; $7156: $64
    ld d, $4f                                     ; $7157: $16 $4f
    rst $38                                       ; $7159: $ff
    pop bc                                        ; $715a: $c1

Jump_070_715b:
    or [hl]                                       ; $715b: $b6

jr_070_715c:
    and b                                         ; $715c: $a0
    dec c                                         ; $715d: $0d
    adc l                                         ; $715e: $8d
    ld a, [bc]                                    ; $715f: $0a
    xor l                                         ; $7160: $ad
    ld h, a                                       ; $7161: $67
    sub l                                         ; $7162: $95
    ld d, $32                                     ; $7163: $16 $32
    ld b, a                                       ; $7165: $47
    ld l, [hl]                                    ; $7166: $6e
    rlca                                          ; $7167: $07
    sub a                                         ; $7168: $97
    inc bc                                        ; $7169: $03
    ld l, c                                       ; $716a: $69
    dec [hl]                                      ; $716b: $35
    jp nc, $b935                                  ; $716c: $d2 $35 $b9

    add [hl]                                      ; $716f: $86
    sub e                                         ; $7170: $93
    db $e4                                        ; $7171: $e4
    call nc, $21b3                                ; $7172: $d4 $b3 $21
    ld [hl], a                                    ; $7175: $77
    sub $b3                                       ; $7176: $d6 $b3
    jr nc, jr_070_7192                            ; $7178: $30 $18

    sbc h                                         ; $717a: $9c
    ldh a, [$9e]                                  ; $717b: $f0 $9e
    add l                                         ; $717d: $85
    db $ed                                        ; $717e: $ed
    nop                                           ; $717f: $00
    rst $20                                       ; $7180: $e7
    ld a, [de]                                    ; $7181: $1a
    xor [hl]                                      ; $7182: $ae
    inc l                                         ; $7183: $2c
    ld e, $ad                                     ; $7184: $1e $ad
    ld h, a                                       ; $7186: $67
    jp $3931                                      ; $7187: $c3 $31 $39


    ld c, a                                       ; $718a: $4f
    ld d, b                                       ; $718b: $50
    jp $c595                                      ; $718c: $c3 $95 $c5


    di                                            ; $718f: $f3
    ld l, d                                       ; $7190: $6a
    cpl                                           ; $7191: $2f

jr_070_7192:
    call nc, $1771                                ; $7192: $d4 $71 $17
    adc a                                         ; $7195: $8f
    dec [hl]                                      ; $7196: $35
    jp nc, $d32a                                  ; $7197: $d2 $2a $d3

    ld a, [c]                                     ; $719a: $f2
    ldh a, [rHDMA3]                               ; $719b: $f0 $53
    add hl, sp                                    ; $719d: $39
    xor [hl]                                      ; $719e: $ae
    call c, $dba9                                 ; $719f: $dc $a9 $db
    ld bc, $c657                                  ; $71a2: $01 $57 $c6
    ld c, l                                       ; $71a5: $4d
    sub l                                         ; $71a6: $95
    ld d, $dc                                     ; $71a7: $16 $dc
    ld b, b                                       ; $71a9: $40
    ld h, d                                       ; $71aa: $62
    xor c                                         ; $71ab: $a9
    sub c                                         ; $71ac: $91
    dec c                                         ; $71ad: $0d
    rst $28                                       ; $71ae: $ef
    xor c                                         ; $71af: $a9
    ld h, a                                       ; $71b0: $67
    jp $ffd9                                      ; $71b1: $c3 $d9 $ff


    db $d3                                        ; $71b4: $d3
    ccf                                           ; $71b5: $3f
    rst $10                                       ; $71b6: $d7
    inc [hl]                                      ; $71b7: $34
    add h                                         ; $71b8: $84
    pop bc                                        ; $71b9: $c1
    adc d                                         ; $71ba: $8a
    ld b, b                                       ; $71bb: $40
    ld e, d                                       ; $71bc: $5a
    ld l, a                                       ; $71bd: $6f
    inc e                                         ; $71be: $1c
    rra                                           ; $71bf: $1f
    rst $28                                       ; $71c0: $ef
    ld [c], a                                     ; $71c1: $e2
    pop de                                        ; $71c2: $d1
    ld a, d                                       ; $71c3: $7a
    ld d, [hl]                                    ; $71c4: $56
    ld c, b                                       ; $71c5: $48
    sbc l                                         ; $71c6: $9d
    ld h, h                                       ; $71c7: $64
    db $d3                                        ; $71c8: $d3

Jump_070_71c9:
    ld l, l                                       ; $71c9: $6d
    db $db                                        ; $71ca: $db
    ld a, [$707d]                                 ; $71cb: $fa $7d $70
    rst $38                                       ; $71ce: $ff
    xor e                                         ; $71cf: $ab
    ld c, e                                       ; $71d0: $4b
    db $e3                                        ; $71d1: $e3
    inc d                                         ; $71d2: $14
    add hl, sp                                    ; $71d3: $39
    ld d, d                                       ; $71d4: $52
    or a                                          ; $71d5: $b7
    inc bc                                        ; $71d6: $03
    ld l, a                                       ; $71d7: $6f
    adc l                                         ; $71d8: $8d
    inc de                                        ; $71d9: $13
    call nc, Call_070_6961                        ; $71da: $d4 $61 $69
    ld h, a                                       ; $71dd: $67
    rla                                           ; $71de: $17
    adc a                                         ; $71df: $8f
    sub $b3                                       ; $71e0: $d6 $b3
    ld b, d                                       ; $71e2: $42
    ld [$9b24], a                                 ; $71e3: $ea $24 $9b
    db $ed                                        ; $71e6: $ed
    nop                                           ; $71e7: $00
    rra                                           ; $71e8: $1f
    and l                                         ; $71e9: $a5
    inc l                                         ; $71ea: $2c
    pop de                                        ; $71eb: $d1
    dec bc                                        ; $71ec: $0b
    push af                                       ; $71ed: $f5
    ld [hl], h                                    ; $71ee: $74
    ld e, b                                       ; $71ef: $58
    jp c, $eb48                                   ; $71f0: $da $48 $eb

    db $ec                                        ; $71f3: $ec
    ld [c], a                                     ; $71f4: $e2
    pop de                                        ; $71f5: $d1
    ld a, d                                       ; $71f6: $7a
    ld d, [hl]                                    ; $71f7: $56
    ld c, b                                       ; $71f8: $48
    sbc l                                         ; $71f9: $9d
    ld h, h                                       ; $71fa: $64
    ld d, e                                       ; $71fb: $53
    rst $08                                       ; $71fc: $cf
    ld [$0d08], a                                 ; $71fd: $ea $08 $0d
    db $db                                        ; $7200: $db
    ld bc, $4f97                                  ; $7201: $01 $97 $4f
    ld h, e                                       ; $7204: $63
    ld l, b                                       ; $7205: $68
    ld h, h                                       ; $7206: $64
    ld d, $4f                                     ; $7207: $16 $4f
    rst $38                                       ; $7209: $ff
    pop bc                                        ; $720a: $c1
    or [hl]                                       ; $720b: $b6
    ld b, [hl]                                    ; $720c: $46
    dec sp                                        ; $720d: $3b
    cp e                                          ; $720e: $bb
    ld a, b                                       ; $720f: $78
    or h                                          ; $7210: $b4
    sbc [hl]                                      ; $7211: $9e
    dec d                                         ; $7212: $15
    ld d, d                                       ; $7213: $52
    daa                                           ; $7214: $27
    reti                                          ; $7215: $d9


    ld l, h                                       ; $7216: $6c
    rlca                                          ; $7217: $07
    sub a                                         ; $7218: $97
    ld c, a                                       ; $7219: $4f
    ld h, e                                       ; $721a: $63
    jr z, jr_070_7270                             ; $721b: $28 $53

    inc hl                                        ; $721d: $23
    or e                                          ; $721e: $b3
    ld a, b                                       ; $721f: $78
    sbc d                                         ; $7220: $9a
    ld e, h                                       ; $7221: $5c
    and l                                         ; $7222: $a5
    ld a, b                                       ; $7223: $78
    adc c                                         ; $7224: $89
    adc h                                         ; $7225: $8c
    push af                                       ; $7226: $f5
    xor h                                         ; $7227: $ac
    ld [hl], b                                    ; $7228: $70
    ret                                           ; $7229: $c9


    ld a, e                                       ; $722a: $7b
    inc l                                         ; $722b: $2c
    xor a                                         ; $722c: $af
    reti                                          ; $722d: $d9


    ld c, $6f                                     ; $722e: $0e $6f
    adc l                                         ; $7230: $8d
    inc de                                        ; $7231: $13
    call nc, Call_070_6961                        ; $7232: $d4 $61 $69
    sub e                                         ; $7235: $93
    xor e                                         ; $7236: $ab
    inc d                                         ; $7237: $14
    cpl                                           ; $7238: $2f
    sub c                                         ; $7239: $91
    or c                                          ; $723a: $b1
    sbc [hl]                                      ; $723b: $9e
    dec d                                         ; $723c: $15
    ld l, $79                                     ; $723d: $2e $79
    adc a                                         ; $723f: $8f

jr_070_7240:
    push hl                                       ; $7240: $e5
    dec [hl]                                      ; $7241: $35
    db $db                                        ; $7242: $db
    ld bc, $a51f                                  ; $7243: $01 $1f $a5
    inc l                                         ; $7246: $2c
    pop de                                        ; $7247: $d1
    dec bc                                        ; $7248: $0b
    push af                                       ; $7249: $f5
    ld [hl], h                                    ; $724a: $74
    ld e, b                                       ; $724b: $58
    jp c, $ab48                                   ; $724c: $da $48 $ab

    inc d                                         ; $724f: $14
    cpl                                           ; $7250: $2f
    sub c                                         ; $7251: $91
    ld d, c                                       ; $7252: $51
    db $eb                                        ; $7253: $eb
    ld e, c                                       ; $7254: $59
    pop hl                                        ; $7255: $e1
    sub d                                         ; $7256: $92
    rst $30                                       ; $7257: $f7
    ld e, b                                       ; $7258: $58
    ld e, [hl]                                    ; $7259: $5e
    ld d, e                                       ; $725a: $53
    rst $08                                       ; $725b: $cf
    ld [$0d08], a                                 ; $725c: $ea $08 $0d
    db $db                                        ; $725f: $db
    ld bc, $4f97                                  ; $7260: $01 $97 $4f
    ld h, e                                       ; $7263: $63
    ld l, b                                       ; $7264: $68
    ld h, h                                       ; $7265: $64
    ld d, $4f                                     ; $7266: $16 $4f
    sub e                                         ; $7268: $93
    xor e                                         ; $7269: $ab
    sbc e                                         ; $726a: $9b
    inc e                                         ; $726b: $1c
    ld e, c                                       ; $726c: $59
    rst $08                                       ; $726d: $cf
    ld c, d                                       ; $726e: $4a
    pop af                                        ; $726f: $f1

jr_070_7270:
    ld [de], a                                    ; $7270: $12
    add hl, de                                    ; $7271: $19

Call_070_7272:
    or l                                          ; $7272: $b5
    sbc [hl]                                      ; $7273: $9e
    dec d                                         ; $7274: $15
    ld l, $79                                     ; $7275: $2e $79
    adc a                                         ; $7277: $8f
    push hl                                       ; $7278: $e5
    dec [hl]                                      ; $7279: $35
    db $db                                        ; $727a: $db
    ld bc, $e9d7                                  ; $727b: $01 $d7 $e9
    dec c                                         ; $727e: $0d
    dec d                                         ; $727f: $15
    ld a, [c]                                     ; $7280: $f2
    or $c0                                        ; $7281: $f6 $c0
    cp d                                          ; $7283: $ba
    ld l, l                                       ; $7284: $6d
    ld e, e                                       ; $7285: $5b
    ld l, a                                       ; $7286: $6f
    ld h, h                                       ; $7287: $64
    add h                                         ; $7288: $84
    xor h                                         ; $7289: $ac
    ld e, a                                       ; $728a: $5f
    xor d                                         ; $728b: $aa
    ld l, h                                       ; $728c: $6c
    jr nz, jr_070_7240                            ; $728d: $20 $b1

    call c, $0bd1                                 ; $728f: $dc $d1 $0b
    ld c, l                                       ; $7292: $4d
    ld a, [bc]                                    ; $7293: $0a
    adc a                                         ; $7294: $8f
    jp nc, Jump_000_3915                          ; $7295: $d2 $15 $39

    sbc $ed                                       ; $7298: $de $ed
    daa                                           ; $729a: $27
    adc [hl]                                      ; $729b: $8e
    ld l, [hl]                                    ; $729c: $6e
    rlca                                          ; $729d: $07
    ld l, a                                       ; $729e: $6f
    adc l                                         ; $729f: $8d
    inc de                                        ; $72a0: $13
    call nc, Call_070_6961                        ; $72a1: $d4 $61 $69
    sub e                                         ; $72a4: $93
    ld b, e                                       ; $72a5: $43
    ld b, e                                       ; $72a6: $43
    ld a, d                                       ; $72a7: $7a
    ld b, e                                       ; $72a8: $43
    add l                                         ; $72a9: $85
    cp h                                          ; $72aa: $bc
    dec a                                         ; $72ab: $3d
    or b                                          ; $72ac: $b0
    db $ed                                        ; $72ad: $ed
    nop                                           ; $72ae: $00
    rra                                           ; $72af: $1f
    and l                                         ; $72b0: $a5
    inc l                                         ; $72b1: $2c
    pop de                                        ; $72b2: $d1
    dec bc                                        ; $72b3: $0b
    push af                                       ; $72b4: $f5
    ld [hl], h                                    ; $72b5: $74
    ld e, b                                       ; $72b6: $58
    jp c, Jump_070_6b48                           ; $72b7: $da $48 $6b

    ld c, b                                       ; $72ba: $48
    ld l, a                                       ; $72bb: $6f
    ret nc                                        ; $72bc: $d0

    ld a, [bc]                                    ; $72bd: $0a
    ld a, c                                       ; $72be: $79
    ld a, e                                       ; $72bf: $7b
    ld h, b                                       ; $72c0: $60
    push af                                       ; $72c1: $f5
    xor h                                         ; $72c2: $ac
    adc [hl]                                      ; $72c3: $8e
    ret nc                                        ; $72c4: $d0

    or b                                          ; $72c5: $b0
    dec e                                         ; $72c6: $1d
    rst $20                                       ; $72c7: $e7
    xor c                                         ; $72c8: $a9
    sub c                                         ; $72c9: $91
    ld e, c                                       ; $72ca: $59
    inc a                                         ; $72cb: $3c
    db $fd                                        ; $72cc: $fd
    rlca                                          ; $72cd: $07
    db $db                                        ; $72ce: $db
    add d                                         ; $72cf: $82
    ld [hl], $a4                                  ; $72d0: $36 $a4
    scf                                           ; $72d2: $37
    ld l, b                                       ; $72d3: $68
    add l                                         ; $72d4: $85
    cp h                                          ; $72d5: $bc
    dec a                                         ; $72d6: $3d
    or b                                          ; $72d7: $b0
    ld [c], a                                     ; $72d8: $e2
    inc [hl]                                      ; $72d9: $34
    add [hl]                                      ; $72da: $86
    db $ed                                        ; $72db: $ed
    nop                                           ; $72dc: $00
    sbc a                                         ; $72dd: $9f
    cp e                                          ; $72de: $bb
    ld c, d                                       ; $72df: $4a
    pop af                                        ; $72e0: $f1
    ld [de], a                                    ; $72e1: $12
    add hl, de                                    ; $72e2: $19
    dec de                                        ; $72e3: $1b
    ld a, [de]                                    ; $72e4: $1a
    ld [hl+], a                                   ; $72e5: $22
    pop hl                                        ; $72e6: $e1
    and a                                         ; $72e7: $a7
    sbc [hl]                                      ; $72e8: $9e
    ld c, l                                       ; $72e9: $4d
    ld a, c                                       ; $72ea: $79
    ret                                           ; $72eb: $c9


    ld a, e                                       ; $72ec: $7b
    inc l                                         ; $72ed: $2c
    xor a                                         ; $72ee: $af
    cp c                                          ; $72ef: $b9
    call nc, $e1cb                                ; $72f0: $d4 $cb $e1
    ld l, b                                       ; $72f3: $68
    sbc h                                         ; $72f4: $9c
    ld b, $12                                     ; $72f5: $06 $12
    ld a, e                                       ; $72f7: $7b
    and c                                         ; $72f8: $a1
    ld a, a                                       ; $72f9: $7f
    db $ec                                        ; $72fa: $ec
    ld l, e                                       ; $72fb: $6b

Jump_070_72fc:
    ld [hl], h                                    ; $72fc: $74
    ld l, $1d                                     ; $72fd: $2e $1d
    ld l, a                                       ; $72ff: $6f
    adc l                                         ; $7300: $8d
    inc de                                        ; $7301: $13
    call nc, Call_070_6961                        ; $7302: $d4 $61 $69
    sub e                                         ; $7305: $93
    xor e                                         ; $7306: $ab
    inc d                                         ; $7307: $14
    cpl                                           ; $7308: $2f
    sub c                                         ; $7309: $91
    or c                                          ; $730a: $b1
    and c                                         ; $730b: $a1
    ld hl, $7e12                                  ; $730c: $21 $12 $7e
    ld [$94d9], a                                 ; $730f: $ea $d9 $94
    sub a                                         ; $7312: $97
    cp h                                          ; $7313: $bc
    rst $00                                       ; $7314: $c7
    ld a, [c]                                     ; $7315: $f2
    sbc d                                         ; $7316: $9a
    db $ed                                        ; $7317: $ed
    nop                                           ; $7318: $00
    rra                                           ; $7319: $1f
    and l                                         ; $731a: $a5
    inc l                                         ; $731b: $2c
    pop de                                        ; $731c: $d1
    dec bc                                        ; $731d: $0b
    push af                                       ; $731e: $f5
    ld [hl], h                                    ; $731f: $74
    ld e, b                                       ; $7320: $58
    jp c, $ab48                                   ; $7321: $da $48 $ab

    inc d                                         ; $7324: $14
    cpl                                           ; $7325: $2f
    sub c                                         ; $7326: $91
    ld d, c                                       ; $7327: $51
    dec de                                        ; $7328: $1b
    ld a, [de]                                    ; $7329: $1a
    ld [hl+], a                                   ; $732a: $22
    pop hl                                        ; $732b: $e1
    ld b, a                                       ; $732c: $47
    db $eb                                        ; $732d: $eb
    reti                                          ; $732e: $d9


    sub h                                         ; $732f: $94
    sub a                                         ; $7330: $97
    cp h                                          ; $7331: $bc
    rst $00                                       ; $7332: $c7
    ld a, [c]                                     ; $7333: $f2
    sbc d                                         ; $7334: $9a
    ld [$0d08], a                                 ; $7335: $ea $08 $0d
    reti                                          ; $7338: $d9


    rst $08                                       ; $7339: $cf
    halt                                          ; $733a: $76
    nop                                           ; $733b: $00
    sbc a                                         ; $733c: $9f
    ld sp, $a78b                                  ; $733d: $31 $8b $a7
    ret                                           ; $7340: $c9


    push de                                       ; $7341: $d5
    ld c, l                                       ; $7342: $4d
    adc [hl]                                      ; $7343: $8e
    xor h                                         ; $7344: $ac
    ld h, a                                       ; $7345: $67
    and l                                         ; $7346: $a5
    ld a, b                                       ; $7347: $78
    adc c                                         ; $7348: $89
    adc h                                         ; $7349: $8c
    jp c, Jump_000_10d0                           ; $734a: $da $d0 $10

    add hl, bc                                    ; $734d: $09
    ccf                                           ; $734e: $3f
    ld e, d                                       ; $734f: $5a
    rst $08                                       ; $7350: $cf
    and [hl]                                      ; $7351: $a6
    cp h                                          ; $7352: $bc
    db $e4                                        ; $7353: $e4
    dec a                                         ; $7354: $3d
    sub [hl]                                      ; $7355: $96
    rst $10                                       ; $7356: $d7
    inc d                                         ; $7357: $14
    and a                                         ; $7358: $a7
    ld sp, $076c                                  ; $7359: $31 $6c $07
    ld d, a                                       ; $735c: $57
    add $0c                                       ; $735d: $c6 $0c
    ld h, l                                       ; $735f: $65
    sbc c                                         ; $7360: $99
    push hl                                       ; $7361: $e5
    db $e4                                        ; $7362: $e4
    ld l, b                                       ; $7363: $68
    xor h                                         ; $7364: $ac
    ld h, $d4                                     ; $7365: $26 $d4
    ld d, c                                       ; $7367: $51
    ld hl, $55e8                                  ; $7368: $21 $e8 $55
    sbc b                                         ; $736b: $98
    db $fd                                        ; $736c: $fd
    or h                                          ; $736d: $b4
    dec e                                         ; $736e: $1d
    scf                                           ; $736f: $37
    ld b, a                                       ; $7370: $47
    sbc [hl]                                      ; $7371: $9e
    push af                                       ; $7372: $f5
    ld b, d                                       ; $7373: $42
    dec e                                         ; $7374: $1d
    ld [hl], a                                    ; $7375: $77
    pop af                                        ; $7376: $f1
    ld e, b                                       ; $7377: $58
    db $fd                                        ; $7378: $fd
    inc [hl]                                      ; $7379: $34
    sub b                                         ; $737a: $90
    ret c                                         ; $737b: $d8

    db $10                                        ; $737c: $10
    ld b, [hl]                                    ; $737d: $46
    ld c, c                                       ; $737e: $49
    ld b, c                                       ; $737f: $41
    xor a                                         ; $7380: $af
    ld c, a                                       ; $7381: $4f
    adc h                                         ; $7382: $8c
    or h                                          ; $7383: $b4
    xor l                                         ; $7384: $ad
    rst $10                                       ; $7385: $d7
    ld h, c                                       ; $7386: $61
    xor b                                         ; $7387: $a8
    dec de                                        ; $7388: $1b
    adc l                                         ; $7389: $8d
    ld b, $6b                                     ; $738a: $06 $6b
    jr nz, @-$4d                                  ; $738c: $20 $b1

    ld sp, hl                                     ; $738e: $f9
    ld [hl], a                                    ; $738f: $77
    ld a, [hl+]                                   ; $7390: $2a
    ld c, $ae                                     ; $7391: $0e $ae
    ld d, c                                       ; $7393: $51
    sub l                                         ; $7394: $95
    add hl, sp                                    ; $7395: $39
    ld l, $c7                                     ; $7396: $2e $c7
    inc e                                         ; $7398: $1c
    ld b, a                                       ; $7399: $47
    dec b                                         ; $739a: $05
    ld b, l                                       ; $739b: $45
    jr nz, @-$51                                  ; $739c: $20 $ad

    ld b, [hl]                                    ; $739e: $46
    cp d                                          ; $739f: $ba
    ld h, $87                                     ; $73a0: $26 $87
    jp z, $c271                                   ; $73a2: $ca $71 $c2

    sub l                                         ; $73a5: $95
    ld [hl], c                                    ; $73a6: $71
    pop af                                        ; $73a7: $f1
    ld [hl], a                                    ; $73a8: $77
    ld [$0959], a                                 ; $73a9: $ea $59 $09
    adc e                                         ; $73ac: $8b
    ret nc                                        ; $73ad: $d0

    add [hl]                                      ; $73ae: $86
    jr nc, @+$56                                  ; $73af: $30 $54

    sbc c                                         ; $73b1: $99
    ld a, [$ecce]                                 ; $73b2: $fa $ce $ec
    ld l, e                                       ; $73b5: $6b
    ld a, [$ad99]                                 ; $73b6: $fa $99 $ad
    ld [hl], b                                    ; $73b9: $70
    ld e, a                                       ; $73ba: $5f
    ld [hl-], a                                   ; $73bb: $32
    jp hl                                         ; $73bc: $e9


    sub $cf                                       ; $73bd: $d6 $cf
    sub l                                         ; $73bf: $95
    ld c, a                                       ; $73c0: $4f
    and b                                         ; $73c1: $a0
    jp z, Jump_070_47fe                           ; $73c2: $ca $fe $47

    sbc [hl]                                      ; $73c5: $9e
    sub l                                         ; $73c6: $95
    ld e, c                                       ; $73c7: $59
    ld h, h                                       ; $73c8: $64
    call z, $d611                                 ; $73c9: $cc $11 $d6
    db $e4                                        ; $73cc: $e4
    ld a, d                                       ; $73cd: $7a
    ld [hl-], a                                   ; $73ce: $32
    ld h, h                                       ; $73cf: $64
    rst $08                                       ; $73d0: $cf
    add [hl]                                      ; $73d1: $86
    or h                                          ; $73d2: $b4
    ld [hl], l                                    ; $73d3: $75
    sbc d                                         ; $73d4: $9a
    db $ed                                        ; $73d5: $ed
    nop                                           ; $73d6: $00
    rst $10                                       ; $73d7: $d7
    sbc c                                         ; $73d8: $99
    sub l                                         ; $73d9: $95
    xor e                                         ; $73da: $ab
    add c                                         ; $73db: $81
    call nz, Call_070_47fe                        ; $73dc: $c4 $fe $47
    sbc [hl]                                      ; $73df: $9e
    ld d, l                                       ; $73e0: $55
    inc [hl]                                      ; $73e1: $34
    xor d                                         ; $73e2: $aa
    xor h                                         ; $73e3: $ac
    db $e3                                        ; $73e4: $e3
    ld l, $1e                                     ; $73e5: $2e $1e
    dec hl                                        ; $73e7: $2b
    ld e, l                                       ; $73e8: $5d
    ld b, l                                       ; $73e9: $45
    ld e, h                                       ; $73ea: $5c
    ld [hl], c                                    ; $73eb: $71

jr_070_73ec:
    ld e, l                                       ; $73ec: $5d
    inc e                                         ; $73ed: $1c
    dec d                                         ; $73ee: $15
    db $f4                                        ; $73ef: $f4
    ld a, [$48c4]                                 ; $73f0: $fa $c4 $48
    db $db                                        ; $73f3: $db
    ld a, d                                       ; $73f4: $7a
    inc hl                                        ; $73f5: $23
    and c                                         ; $73f6: $a1
    ld [hl+], a                                   ; $73f7: $22
    ld b, e                                       ; $73f8: $43
    jr nz, jr_070_73ec                            ; $73f9: $20 $f1

    ld [hl], $ea                                  ; $73fb: $36 $ea
    ret c                                         ; $73fd: $d8

    jr c, jr_070_7412                             ; $73fe: $38 $12

    ld e, e                                       ; $7400: $5b
    cpl                                           ; $7401: $2f
    rlca                                          ; $7402: $07
    jp nc, Jump_000_352a                          ; $7403: $d2 $2a $35

    ld b, $37                                     ; $7406: $06 $37
    add hl, sp                                    ; $7408: $39
    ld d, h                                       ; $7409: $54
    adc [hl]                                      ; $740a: $8e
    inc de                                        ; $740b: $13
    xor [hl]                                      ; $740c: $ae
    adc h                                         ; $740d: $8c
    adc e                                         ; $740e: $8b
    cp a                                          ; $740f: $bf
    ld d, e                                       ; $7410: $53
    rst $08                                       ; $7411: $cf

jr_070_7412:
    ld c, d                                       ; $7412: $4a
    ld e, b                                       ; $7413: $58
    add h                                         ; $7414: $84
    ld [hl], $84                                  ; $7415: $36 $84
    and c                                         ; $7417: $a1
    jp z, Jump_070_77d4                           ; $7418: $ca $d4 $77

    ld h, [hl]                                    ; $741b: $66
    ld e, a                                       ; $741c: $5f
    db $d3                                        ; $741d: $d3
    rst $08                                       ; $741e: $cf
    ld l, h                                       ; $741f: $6c
    add l                                         ; $7420: $85
    ei                                            ; $7421: $fb
    sub d                                         ; $7422: $92
    ld c, c                                       ; $7423: $49
    or a                                          ; $7424: $b7
    ld a, [hl]                                    ; $7425: $7e
    xor [hl]                                      ; $7426: $ae
    ld a, h                                       ; $7427: $7c
    ld [bc], a                                    ; $7428: $02
    ld d, l                                       ; $7429: $55
    or $3f                                        ; $742a: $f6 $3f
    ld a, [c]                                     ; $742c: $f2
    xor h                                         ; $742d: $ac
    call z, Call_070_6322                         ; $742e: $cc $22 $63
    adc [hl]                                      ; $7431: $8e
    or b                                          ; $7432: $b0
    ld h, $d7                                     ; $7433: $26 $d7
    sub e                                         ; $7435: $93
    ld hl, $367b                                  ; $7436: $21 $7b $36
    and h                                         ; $7439: $a4
    xor l                                         ; $743a: $ad
    db $d3                                        ; $743b: $d3
    ld l, h                                       ; $743c: $6c
    rlca                                          ; $743d: $07
    sub a                                         ; $743e: $97
    inc bc                                        ; $743f: $03
    ld l, c                                       ; $7440: $69
    sub l                                         ; $7441: $95
    ld a, [de]                                    ; $7442: $1a
    add e                                         ; $7443: $83
    db $eb                                        ; $7444: $eb
    or b                                          ; $7445: $b0
    or h                                          ; $7446: $b4
    ret                                           ; $7447: $c9


    and c                                         ; $7448: $a1
    ld [hl], d                                    ; $7449: $72
    sbc h                                         ; $744a: $9c
    ld [hl], b                                    ; $744b: $70
    ld h, l                                       ; $744c: $65
    ld e, h                                       ; $744d: $5c
    db $fc                                        ; $744e: $fc
    sbc l                                         ; $744f: $9d
    ld a, d                                       ; $7450: $7a
    ld d, [hl]                                    ; $7451: $56
    jp nz, $5422                                  ; $7452: $c2 $22 $54

    ret nc                                        ; $7455: $d0

    xor e                                         ; $7456: $ab
    jr nc, @-$03                                  ; $7457: $30 $fb

    ld l, c                                       ; $7459: $69
    dec sp                                        ; $745a: $3b
    nop                                           ; $745b: $00
    sub a                                         ; $745c: $97
    inc bc                                        ; $745d: $03
    ld l, c                                       ; $745e: $69
    sub l                                         ; $745f: $95
    ld a, [de]                                    ; $7460: $1a
    add e                                         ; $7461: $83
    sbc e                                         ; $7462: $9b
    inc e                                         ; $7463: $1c
    sbc d                                         ; $7464: $9a
    rst $20                                       ; $7465: $e7
    adc a                                         ; $7466: $8f
    jp z, $c271                                   ; $7467: $ca $71 $c2

    sub l                                         ; $746a: $95
    ld [hl], c                                    ; $746b: $71
    pop af                                        ; $746c: $f1
    ld [hl], a                                    ; $746d: $77
    ld [$0959], a                                 ; $746e: $ea $59 $09
    adc e                                         ; $7471: $8b
    ret nc                                        ; $7472: $d0

    adc d                                         ; $7473: $8a
    adc h                                         ; $7474: $8c
    ld a, [de]                                    ; $7475: $1a
    ld c, b                                       ; $7476: $48
    dec hl                                        ; $7477: $2b
    adc e                                         ; $7478: $8b
    ld hl, $9fe8                                  ; $7479: $21 $e8 $9f
    ld l, e                                       ; $747c: $6b
    ld a, [hl+]                                   ; $747d: $2a
    rst $00                                       ; $747e: $c7
    dec d                                         ; $747f: $15
    cp l                                          ; $7480: $bd
    ld a, a                                       ; $7481: $7f
    adc a                                         ; $7482: $8f
    res 4, c                                      ; $7483: $cb $a1
    ld [hl], d                                    ; $7485: $72
    inc l                                         ; $7486: $2c
    ld a, l                                       ; $7487: $7d
    adc a                                         ; $7488: $8f
    db $ed                                        ; $7489: $ed
    nop                                           ; $748a: $00
    sbc a                                         ; $748b: $9f
    dec sp                                        ; $748c: $3b
    ld d, h                                       ; $748d: $54
    adc [hl]                                      ; $748e: $8e
    inc de                                        ; $748f: $13
    xor [hl]                                      ; $7490: $ae
    adc h                                         ; $7491: $8c
    adc e                                         ; $7492: $8b
    cp a                                          ; $7493: $bf
    ld d, e                                       ; $7494: $53
    rst $08                                       ; $7495: $cf
    ld c, d                                       ; $7496: $4a
    ld e, b                                       ; $7497: $58
    add h                                         ; $7498: $84
    ld [hl], $cf                                  ; $7499: $36 $cf
    ld a, a                                       ; $749b: $7f
    ld h, l                                       ; $749c: $65
    ld sp, $574a                                  ; $749d: $31 $4a $57
    pop de                                        ; $74a0: $d1
    db $ec                                        ; $74a1: $ec
    ld h, d                                       ; $74a2: $62
    ld [$157a], sp                                ; $74a3: $08 $7a $15
    ld h, [hl]                                    ; $74a6: $66
    ccf                                           ; $74a7: $3f
    ld l, l                                       ; $74a8: $6d
    dec a                                         ; $74a9: $3d
    rst $10                                       ; $74aa: $d7
    sub b                                         ; $74ab: $90
    ld [hl], $0d                                  ; $74ac: $36 $0d
    inc h                                         ; $74ae: $24
    ld d, [hl]                                    ; $74af: $56
    ld sp, hl                                     ; $74b0: $f9
    dec a                                         ; $74b1: $3d
    ld a, [hl+]                                   ; $74b2: $2a
    inc e                                         ; $74b3: $1c
    ld l, h                                       ; $74b4: $6c
    rlca                                          ; $74b5: $07
    ld l, a                                       ; $74b6: $6f
    pop de                                        ; $74b7: $d1
    dec d                                         ; $74b8: $15
    adc l                                         ; $74b9: $8d
    ld [hl], h                                    ; $74ba: $74
    pop hl                                        ; $74bb: $e1
    inc [hl]                                      ; $74bc: $34
    add h                                         ; $74bd: $84
    and c                                         ; $74be: $a1
    ret                                           ; $74bf: $c9


    and c                                         ; $74c0: $a1
    ld a, c                                       ; $74c1: $79
    cp $a8                                        ; $74c2: $fe $a8
    inc e                                         ; $74c4: $1c
    daa                                           ; $74c5: $27
    ld e, h                                       ; $74c6: $5c
    add hl, de                                    ; $74c7: $19
    rla                                           ; $74c8: $17
    ld a, a                                       ; $74c9: $7f
    and a                                         ; $74ca: $a7
    sbc [hl]                                      ; $74cb: $9e
    sub l                                         ; $74cc: $95
    or b                                          ; $74cd: $b0
    ld [$f415], sp                                ; $74ce: $08 $15 $f4
    ld a, [hl+]                                   ; $74d1: $2a
    call z, $da7e                                 ; $74d2: $cc $7e $da
    ld a, d                                       ; $74d5: $7a
    xor [hl]                                      ; $74d6: $ae
    ld hl, $1a6d                                  ; $74d7: $21 $6d $1a
    ld c, b                                       ; $74da: $48

jr_070_74db:
    xor h                                         ; $74db: $ac
    ld a, [c]                                     ; $74dc: $f2
    ld a, e                                       ; $74dd: $7b
    inc [hl]                                      ; $74de: $34
    add hl, sp                                    ; $74df: $39
    inc [hl]                                      ; $74e0: $34
    sub b                                         ; $74e1: $90
    ret c                                         ; $74e2: $d8

    rst $38                                       ; $74e3: $ff
    ret z                                         ; $74e4: $c8

    or e                                          ; $74e5: $b3
    add [hl]                                      ; $74e6: $86
    and e                                         ; $74e7: $a3
    adc d                                         ; $74e8: $8a
    ld h, $85                                     ; $74e9: $26 $85
    ld l, l                                       ; $74eb: $6d
    rlca                                          ; $74ec: $07
    sub a                                         ; $74ed: $97
    inc bc                                        ; $74ee: $03
    ld l, c                                       ; $74ef: $69
    dec [hl]                                      ; $74f0: $35
    jp nc, $61d5                                  ; $74f1: $d2 $d5 $61

    ld l, c                                       ; $74f4: $69
    sub e                                         ; $74f5: $93
    ld b, e                                       ; $74f6: $43
    push hl                                       ; $74f7: $e5
    jr c, jr_070_74db                             ; $74f8: $38 $e1

Jump_070_74fa:
    jp z, $f8b8                                   ; $74fa: $ca $b8 $f8

    dec sp                                        ; $74fd: $3b
    push af                                       ; $74fe: $f5
    xor h                                         ; $74ff: $ac
    add h                                         ; $7500: $84
    ld b, l                                       ; $7501: $45

jr_070_7502:
    xor b                                         ; $7502: $a8
    and b                                         ; $7503: $a0
    ld d, a                                       ; $7504: $57
    ld h, c                                       ; $7505: $61
    or $d3                                        ; $7506: $f6 $d3
    sub $73                                       ; $7508: $d6 $73
    dec c                                         ; $750a: $0d
    ld l, c                                       ; $750b: $69
    db $d3                                        ; $750c: $d3
    ld b, b                                       ; $750d: $40
    ld h, d                                       ; $750e: $62
    rst $38                                       ; $750f: $ff
    inc hl                                        ; $7510: $23
    rst $08                                       ; $7511: $cf
    sbc d                                         ; $7512: $9a
    ld a, a                                       ; $7513: $7f
    and a                                         ; $7514: $a7
    call nc, $efc8                                ; $7515: $d4 $c8 $ef
    ld d, c                                       ; $7518: $51
    and e                                         ; $7519: $a3
    and h                                         ; $751a: $a4
    sub b                                         ; $751b: $90
    reti                                          ; $751c: $d9


    ld c, a                                       ; $751d: $4f
    push hl                                       ; $751e: $e5
    jr c, jr_070_7502                             ; $751f: $38 $e1

    jp z, Jump_070_78b8                           ; $7521: $ca $b8 $78

    cpl                                           ; $7524: $2f
    or l                                          ; $7525: $b5
    sub [hl]                                      ; $7526: $96
    ld d, [hl]                                    ; $7527: $56
    sub $ed                                       ; $7528: $d6 $ed
    nop                                           ; $752a: $00
    rst $20                                       ; $752b: $e7
    xor c                                         ; $752c: $a9
    ld a, [bc]                                    ; $752d: $0a
    pop hl                                        ; $752e: $e1
    ld b, d                                       ; $752f: $42
    inc bc                                        ; $7530: $03
    adc c                                         ; $7531: $89
    db $fd                                        ; $7532: $fd
    adc a                                         ; $7533: $8f
    inc a                                         ; $7534: $3c
    db $eb                                        ; $7535: $eb
    or d                                          ; $7536: $b2
    add l                                         ; $7537: $85
    ld [hl+], a                                   ; $7538: $22
    add h                                         ; $7539: $84
    ld d, c                                       ; $753a: $51
    jp nc, $c21a                                  ; $753b: $d2 $1a $c2

    ret nc                                        ; $753e: $d0

    ld h, $87                                     ; $753f: $26 $87
    and $f9                                       ; $7541: $e6 $f9
    and e                                         ; $7543: $a3
    ld [hl], d                                    ; $7544: $72
    sbc h                                         ; $7545: $9c
    ld [hl], b                                    ; $7546: $70
    ld h, l                                       ; $7547: $65
    ld e, h                                       ; $7548: $5c
    db $fc                                        ; $7549: $fc
    sbc l                                         ; $754a: $9d
    ld a, d                                       ; $754b: $7a
    ld d, [hl]                                    ; $754c: $56
    jp nz, $5422                                  ; $754d: $c2 $22 $54

    ret nc                                        ; $7550: $d0

    xor e                                         ; $7551: $ab
    jr nc, @-$03                                  ; $7552: $30 $fb

    ld l, c                                       ; $7554: $69
    dec sp                                        ; $7555: $3b
    nop                                           ; $7556: $00
    rst $10                                       ; $7557: $d7
    ld a, c                                       ; $7558: $79
    ld c, d                                       ; $7559: $4a
    xor h                                         ; $755a: $ac
    ld h, $34                                     ; $755b: $26 $34
    rst $08                                       ; $755d: $cf
    rra                                           ; $755e: $1f
    sub l                                         ; $755f: $95
    db $e3                                        ; $7560: $e3
    add h                                         ; $7561: $84
    dec hl                                        ; $7562: $2b
    db $e3                                        ; $7563: $e3
    ld [c], a                                     ; $7564: $e2
    rst $28                                       ; $7565: $ef
    call nc, $12b3                                ; $7566: $d4 $b3 $12
    ld d, $a1                                     ; $7569: $16 $a1
    sub a                                         ; $756b: $97
    ld a, d                                       ; $756c: $7a
    xor $2a                                       ; $756d: $ee $2a
    pop hl                                        ; $756f: $e1
    ld d, c                                       ; $7570: $51

Jump_070_7571:
    rst $30                                       ; $7571: $f7
    dec sp                                        ; $7572: $3b
    ld c, l                                       ; $7573: $4d
    xor [hl]                                      ; $7574: $ae
    ld a, a                                       ; $7575: $7f
    ld h, [hl]                                    ; $7576: $66
    ld c, c                                       ; $7577: $49
    ccf                                           ; $7578: $3f
    halt                                          ; $7579: $76
    jp hl                                         ; $757a: $e9


    nop                                           ; $757b: $00
    rst $10                                       ; $757c: $d7
    ld a, c                                       ; $757d: $79
    ld c, d                                       ; $757e: $4a
    xor h                                         ; $757f: $ac
    ld h, $34                                     ; $7580: $26 $34
    rst $08                                       ; $7582: $cf
    rra                                           ; $7583: $1f
    sub l                                         ; $7584: $95
    db $e3                                        ; $7585: $e3
    add h                                         ; $7586: $84
    dec hl                                        ; $7587: $2b
    db $e3                                        ; $7588: $e3
    ld [c], a                                     ; $7589: $e2
    rst $28                                       ; $758a: $ef
    call nc, $12b3                                ; $758b: $d4 $b3 $12
    ld d, $a1                                     ; $758e: $16 $a1
    sub a                                         ; $7590: $97
    ld a, [$efd1]                                 ; $7591: $fa $d1 $ef
    inc d                                         ; $7594: $14
    dec c                                         ; $7595: $0d
    ld l, c                                       ; $7596: $69
    ld [de], a                                    ; $7597: $12
    dec c                                         ; $7598: $0d
    inc h                                         ; $7599: $24
    ld h, h                                       ; $759a: $64
    ccf                                           ; $759b: $3f
    and l                                         ; $759c: $a5
    inc de                                        ; $759d: $13
    jp nz, $8bb0                                  ; $759e: $c2 $b0 $8b

    ld h, c                                       ; $75a1: $61
    sub a                                         ; $75a2: $97
    ld c, $e7                                     ; $75a3: $0e $e7
    ld a, [de]                                    ; $75a5: $1a
    jp nc, $81a6                                  ; $75a6: $d2 $a6 $81

    call nz, $2352                                ; $75a9: $c4 $52 $23
    sbc d                                         ; $75ac: $9a
    rst $20                                       ; $75ad: $e7
    adc a                                         ; $75ae: $8f
    jp z, $c271                                   ; $75af: $ca $71 $c2

    sub l                                         ; $75b2: $95
    ld [hl], c                                    ; $75b3: $71
    pop af                                        ; $75b4: $f1
    ld [hl], a                                    ; $75b5: $77
    ld [$0959], a                                 ; $75b6: $ea $59 $09
    adc e                                         ; $75b9: $8b
    ret nc                                        ; $75ba: $d0

    ld [$3fb2], a                                 ; $75bb: $ea $b2 $3f
    ld c, d                                       ; $75be: $4a
    ld d, a                                       ; $75bf: $57
    ld h, l                                       ; $75c0: $65
    xor d                                         ; $75c1: $aa
    and a                                         ; $75c2: $a7
    db $fc                                        ; $75c3: $fc

jr_070_75c4:
    ld b, c                                       ; $75c4: $41
    ret nc                                        ; $75c5: $d0

    xor e                                         ; $75c6: $ab
    jr nc, jr_070_75c4                            ; $75c7: $30 $fb

    ld l, c                                       ; $75c9: $69
    dec sp                                        ; $75ca: $3b
    nop                                           ; $75cb: $00
    sub a                                         ; $75cc: $97
    jp Jump_000_38d1                              ; $75cd: $c3 $d1 $38


    dec c                                         ; $75d0: $0d
    inc h                                         ; $75d1: $24
    sub [hl]                                      ; $75d2: $96
    ld a, [de]                                    ; $75d3: $1a
    pop de                                        ; $75d4: $d1
    dec bc                                        ; $75d5: $0b
    ld c, l                                       ; $75d6: $4d
    ld c, $15                                     ; $75d7: $0e $15
    ld c, $2a                                     ; $75d9: $0e $2a
    rst $00                                       ; $75db: $c7
    add hl, bc                                    ; $75dc: $09
    ld d, a                                       ; $75dd: $57
    add $c5                                       ; $75de: $c6 $c5
    rst $18                                       ; $75e0: $df
    xor c                                         ; $75e1: $a9
    ld h, a                                       ; $75e2: $67
    dec h                                         ; $75e3: $25
    inc l                                         ; $75e4: $2c
    ld b, d                                       ; $75e5: $42
    dec b                                         ; $75e6: $05
    cp l                                          ; $75e7: $bd
    ld a, [bc]                                    ; $75e8: $0a
    or e                                          ; $75e9: $b3
    sbc a                                         ; $75ea: $9f
    or [hl]                                       ; $75eb: $b6
    inc bc                                        ; $75ec: $03
    rst $20                                       ; $75ed: $e7
    xor c                                         ; $75ee: $a9
    sub c                                         ; $75ef: $91
    push bc                                       ; $75f0: $c5
    ld a, a                                       ; $75f1: $7f
    jp hl                                         ; $75f2: $e9


    ld d, h                                       ; $75f3: $54
    reti                                          ; $75f4: $d9


    db $e4                                        ; $75f5: $e4
    ret nc                                        ; $75f6: $d0

    inc a                                         ; $75f7: $3c
    ld a, a                                       ; $75f8: $7f
    ld d, h                                       ; $75f9: $54
    adc [hl]                                      ; $75fa: $8e
    inc de                                        ; $75fb: $13
    xor [hl]                                      ; $75fc: $ae
    adc h                                         ; $75fd: $8c
    adc e                                         ; $75fe: $8b
    cp a                                          ; $75ff: $bf
    ld d, e                                       ; $7600: $53
    add hl, hl                                    ; $7601: $29
    and $09                                       ; $7602: $e6 $09
    or [hl]                                       ; $7604: $b6
    dec e                                         ; $7605: $1d
    xor a                                         ; $7606: $af
    scf                                           ; $7607: $37
    ld h, $3f                                     ; $7608: $26 $3f
    dec c                                         ; $760a: $0d
    inc h                                         ; $760b: $24
    ld [hl], $32                                  ; $760c: $36 $32
    adc e                                         ; $760e: $8b
    and a                                         ; $760f: $a7
    ld a, c                                       ; $7610: $79
    ld [$31c6], a                                 ; $7611: $ea $c6 $31
    rst $00                                       ; $7614: $c7
    ld de, $2af4                                  ; $7615: $11 $f4 $2a
    call z, $da7e                                 ; $7618: $cc $7e $da
    ld c, $37                                     ; $761b: $0e $37
    add sp, -$16                                  ; $761d: $e8 $ea
    or b                                          ; $761f: $b0
    or h                                          ; $7620: $b4
    ld [hl], d                                    ; $7621: $72
    sbc h                                         ; $7622: $9c
    ld [hl], b                                    ; $7623: $70
    ld h, l                                       ; $7624: $65
    ld e, h                                       ; $7625: $5c
    cp h                                          ; $7626: $bc
    sub a                                         ; $7627: $97
    jp c, $ac70                                   ; $7628: $da $70 $ac

    call z, $8481                                 ; $762b: $cc $81 $84
    inc e                                         ; $762e: $1c

jr_070_762f:
    ld b, a                                       ; $762f: $47
    ret nc                                        ; $7630: $d0

    xor e                                         ; $7631: $ab
    jr nc, jr_070_762f                            ; $7632: $30 $fb

    ld l, c                                       ; $7634: $69
    dec sp                                        ; $7635: $3b
    nop                                           ; $7636: $00
    scf                                           ; $7637: $37
    ld h, a                                       ; $7638: $67
    adc a                                         ; $7639: $8f
    xor h                                         ; $763a: $ac
    jp $46d2                                      ; $763b: $c3 $d2 $46


    sbc b                                         ; $763e: $98
    and a                                         ; $763f: $a7
    and b                                         ; $7640: $a0
    ld d, a                                       ; $7641: $57
    ld h, c                                       ; $7642: $61
    or $d3                                        ; $7643: $f6 $d3
    sub $ab                                       ; $7645: $d6 $ab
    ld hl, sp-$2d                                 ; $7647: $f8 $d3
    add d                                         ; $7649: $82
    sbc e                                         ; $764a: $9b
    rst $20                                       ; $764b: $e7
    rrca                                          ; $764c: $0f
    xor l                                         ; $764d: $ad
    inc e                                         ; $764e: $1c
    daa                                           ; $764f: $27
    ld e, h                                       ; $7650: $5c
    add hl, de                                    ; $7651: $19
    rla                                           ; $7652: $17
    rst $28                                       ; $7653: $ef
    and l                                         ; $7654: $a5
    ld d, [hl]                                    ; $7655: $56
    adc d                                         ; $7656: $8a
    ld a, c                                       ; $7657: $79
    ld b, d                                       ; $7658: $42
    or $53                                        ; $7659: $f6 $53
    inc [hl]                                      ; $765b: $34
    sub b                                         ; $765c: $90
    or b                                          ; $765d: $b0
    rlca                                          ; $765e: $07
    ld [de], a                                    ; $765f: $12
    xor l                                         ; $7660: $ad
    ld l, [hl]                                    ; $7661: $6e
    inc e                                         ; $7662: $1c
    ld [hl], e                                    ; $7663: $73
    sbc h                                         ; $7664: $9c
    db $ed                                        ; $7665: $ed
    nop                                           ; $7666: $00
    ld d, a                                       ; $7667: $57
    cpl                                           ; $7668: $2f
    ld a, a                                       ; $7669: $7f
    ld a, [$57e9]                                 ; $766a: $fa $e9 $57
    cp l                                          ; $766d: $bd
    cp $f1                                        ; $766e: $fe $f1
    ld h, a                                       ; $7670: $67
    sbc a                                         ; $7671: $9f
    sbc l                                         ; $7672: $9d
    ld a, a                                       ; $7673: $7f
    ld a, [hl+]                                   ; $7674: $2a
    xor b                                         ; $7675: $a8
    inc d                                         ; $7676: $14
    jp $2320                                      ; $7677: $c3 $20 $23


    ld c, l                                       ; $767a: $4d
    dec b                                         ; $767b: $05
    call $d470                                    ; $767c: $cd $70 $d4
    ld [hl+], a                                   ; $767f: $22
    ei                                            ; $7680: $fb
    ld a, [de]                                    ; $7681: $1a
    ld [hl], a                                    ; $7682: $77
    ld b, h                                       ; $7683: $44
    ld a, [$ecae]                                 ; $7684: $fa $ae $ec
    sub a                                         ; $7687: $97
    ld e, h                                       ; $7688: $5c
    jr z, @-$72                                   ; $7689: $28 $8c

    adc l                                         ; $768b: $8d
    ld b, $4f                                     ; $768c: $06 $4f
    rlca                                          ; $768e: $07
    ei                                            ; $768f: $fb
    ld b, c                                       ; $7690: $41
    dec sp                                        ; $7691: $3b
    and d                                         ; $7692: $a2
    ld [hl+], a                                   ; $7693: $22
    ei                                            ; $7694: $fb
    ld b, $e9                                     ; $7695: $06 $e9
    rla                                           ; $7697: $17
    or b                                          ; $7698: $b0
    ld c, h                                       ; $7699: $4c
    db $eb                                        ; $769a: $eb
    ld e, e                                       ; $769b: $5b
    ld [hl], $ba                                  ; $769c: $36 $ba
    push af                                       ; $769e: $f5
    db $db                                        ; $769f: $db
    ld b, a                                       ; $76a0: $47
    push af                                       ; $76a1: $f5
    xor c                                         ; $76a2: $a9
    and a                                         ; $76a3: $a7
    rra                                           ; $76a4: $1f
    dec sp                                        ; $76a5: $3b
    nop                                           ; $76a6: $00
    scf                                           ; $76a7: $37
    ld b, a                                       ; $76a8: $47
    sbc [hl]                                      ; $76a9: $9e
    push de                                       ; $76aa: $d5
    jr z, jr_070_76d6                             ; $76ab: $28 $29

    ld h, h                                       ; $76ad: $64
    xor d                                         ; $76ae: $aa
    ld h, $f4                                     ; $76af: $26 $f4
    rrca                                          ; $76b1: $0f
    ld e, e                                       ; $76b2: $5b
    ld e, c                                       ; $76b3: $59
    inc c                                         ; $76b4: $0c
    ld b, c                                       ; $76b5: $41
    and a                                         ; $76b6: $a7
    inc c                                         ; $76b7: $0c
    and h                                         ; $76b8: $a4
    dec d                                         ; $76b9: $15
    jp nz, $c731                                  ; $76ba: $c2 $31 $c7

    xor c                                         ; $76bd: $a9
    jp $2ed2                                      ; $76be: $c3 $d2 $2e


    rla                                           ; $76c1: $17
    adc [hl]                                      ; $76c2: $8e
    ld b, l                                       ; $76c3: $45
    db $e4                                        ; $76c4: $e4
    ret z                                         ; $76c5: $c8

    add [hl]                                      ; $76c6: $86
    jr nc, @+$36                                  ; $76c7: $30 $34

    sub b                                         ; $76c9: $90
    or b                                          ; $76ca: $b0
    rlca                                          ; $76cb: $07
    ld [de], a                                    ; $76cc: $12
    xor l                                         ; $76cd: $ad
    ld b, d                                       ; $76ce: $42
    ld c, e                                       ; $76cf: $4b
    or a                                          ; $76d0: $b7
    ret nc                                        ; $76d1: $d0

    ld c, c                                       ; $76d2: $49
    dec d                                         ; $76d3: $15
    ld e, d                                       ; $76d4: $5a
    cp d                                          ; $76d5: $ba

jr_070_76d6:
    dec [hl]                                      ; $76d6: $35
    sub a                                         ; $76d7: $97
    ld a, d                                       ; $76d8: $7a
    ld sp, hl                                     ; $76d9: $f9
    inc [hl]                                      ; $76da: $34
    add [hl]                                      ; $76db: $86
    cp $47                                        ; $76dc: $fe $47
    sbc [hl]                                      ; $76de: $9e
    dec [hl]                                      ; $76df: $35
    inc e                                         ; $76e0: $1c
    rst $08                                       ; $76e1: $cf
    xor [hl]                                      ; $76e2: $ae
    db $fc                                        ; $76e3: $fc
    rra                                           ; $76e4: $1f
    add hl, bc                                    ; $76e5: $09
    db $eb                                        ; $76e6: $eb
    inc [hl]                                      ; $76e7: $34
    or h                                          ; $76e8: $b4
    push hl                                       ; $76e9: $e5
    cp b                                          ; $76ea: $b8
    ld l, h                                       ; $76eb: $6c
    ld [$9759], a                                 ; $76ec: $ea $59 $97
    ld d, [hl]                                    ; $76ef: $56
    inc e                                         ; $76f0: $1c
    xor l                                         ; $76f1: $ad
    adc b                                         ; $76f2: $88
    dec hl                                        ; $76f3: $2b
    xor [hl]                                      ; $76f4: $ae
    adc e                                         ; $76f5: $8b
    and e                                         ; $76f6: $a3
    dec c                                         ; $76f7: $0d
    inc h                                         ; $76f8: $24
    halt                                          ; $76f9: $76
    ld e, c                                       ; $76fa: $59
    ld [hl], b                                    ; $76fb: $70
    ld de, $b31a                                  ; $76fc: $11 $1a $b3
    and a                                         ; $76ff: $a7
    ld l, l                                       ; $7700: $6d
    rlca                                          ; $7701: $07
    rst $28                                       ; $7702: $ef
    xor h                                         ; $7703: $ac
    adc h                                         ; $7704: $8c
    db $dd                                        ; $7705: $dd
    ld sp, $f647                                  ; $7706: $31 $47 $f6
    ccf                                           ; $7709: $3f
    ld a, [c]                                     ; $770a: $f2
    xor h                                         ; $770b: $ac
    call nc, Call_070_5c18                        ; $770c: $d4 $18 $5c
    rst $08                                       ; $770f: $cf
    inc e                                         ; $7710: $1c
    ld l, l                                       ; $7711: $6d
    ld [$72a7], a                                 ; $7712: $ea $a7 $72
    ld b, h                                       ; $7715: $44
    add $7a                                       ; $7716: $c6 $7a
    ld d, [hl]                                    ; $7718: $56
    inc de                                        ; $7719: $13
    ld a, [hl+]                                   ; $771a: $2a
    add d                                         ; $771b: $82
    cp e                                          ; $771c: $bb
    ld a, e                                       ; $771d: $7b
    ld e, a                                       ; $771e: $5f
    cp b                                          ; $771f: $b8
    call nc, $ebd7                                ; $7720: $d4 $d7 $eb
    sub a                                         ; $7723: $97
    add sp, $6e                                   ; $7724: $e8 $6e
    cp c                                          ; $7726: $b9
    or $42                                        ; $7727: $f6 $42
    ld a, [de]                                    ; $7729: $1a
    db $fd                                        ; $772a: $fd
    adc d                                         ; $772b: $8a
    or b                                          ; $772c: $b0
    ld b, $12                                     ; $772d: $06 $12
    ei                                            ; $772f: $fb
    rra                                           ; $7730: $1f
    ld a, c                                       ; $7731: $79
    sub $9c                                       ; $7732: $d6 $9c
    or d                                          ; $7734: $b2
    ld b, h                                       ; $7735: $44
    ld [hl], l                                    ; $7736: $75
    sub d                                         ; $7737: $92
    sub b                                         ; $7738: $90
    push af                                       ; $7739: $f5
    call c, $e979                                 ; $773a: $dc $79 $e9
    nop                                           ; $773d: $00
    scf                                           ; $773e: $37
    ld b, a                                       ; $773f: $47
    sbc [hl]                                      ; $7740: $9e
    dec [hl]                                      ; $7741: $35
    jp nc, $cadc                                  ; $7742: $d2 $dc $ca

    sub e                                         ; $7745: $93
    ld [$3959], a                                 ; $7746: $ea $59 $39
    ld l, $34                                     ; $7749: $2e $34
    ld e, b                                       ; $774b: $58
    db $e3                                        ; $774c: $e3
    ld hl, sp-$2f                                 ; $774d: $f8 $d1
    adc [hl]                                      ; $774f: $8e
    halt                                          ; $7750: $76
    ld b, l                                       ; $7751: $45
    ld h, [hl]                                    ; $7752: $66
    xor l                                         ; $7753: $ad
    ld b, a                                       ; $7754: $47
    rst $30                                       ; $7755: $f7
    and l                                         ; $7756: $a5
    ld de, $acf5                                  ; $7757: $11 $f5 $ac
    ld b, e                                       ; $775a: $43
    and h                                         ; $775b: $a4
    dec l                                         ; $775c: $2d
    db $ec                                        ; $775d: $ec
    and l                                         ; $775e: $a5
    jp z, $61d9                                   ; $775f: $ca $d9 $61

    sub a                                         ; $7762: $97
    ld a, d                                       ; $7763: $7a
    ld sp, hl                                     ; $7764: $f9
    inc [hl]                                      ; $7765: $34
    add [hl]                                      ; $7766: $86
    cp $47                                        ; $7767: $fe $47
    sbc [hl]                                      ; $7769: $9e
    dec [hl]                                      ; $776a: $35
    inc e                                         ; $776b: $1c
    rst $08                                       ; $776c: $cf
    ld l, $6b                                     ; $776d: $2e $6b
    ld [$af43], sp                                ; $776f: $08 $43 $af
    adc $e9                                       ; $7772: $ce $e9
    ld b, a                                       ; $7774: $47
    ld e, b                                       ; $7775: $58
    call nc, $074b                                ; $7776: $d4 $4b $07
    scf                                           ; $7779: $37
    ld b, a                                       ; $777a: $47
    sbc [hl]                                      ; $777b: $9e
    push de                                       ; $777c: $d5
    db $d3                                        ; $777d: $d3
    ld l, h                                       ; $777e: $6c
    ld [c], a                                     ; $777f: $e2
    and h                                         ; $7780: $a4
    cp [hl]                                       ; $7781: $be
    ld l, l                                       ; $7782: $6d
    sub b                                         ; $7783: $90
    inc hl                                        ; $7784: $23
    jr z, jr_070_7789                             ; $7785: $28 $02

    adc c                                         ; $7787: $89
    dec sp                                        ; $7788: $3b

jr_070_7789:
    ld c, e                                       ; $7789: $4b
    call $a423                                    ; $778a: $cd $23 $a4
    and b                                         ; $778d: $a0
    ld [hl], d                                    ; $778e: $72
    ld e, h                                       ; $778f: $5c
    ld b, l                                       ; $7790: $45
    ld e, h                                       ; $7791: $5c
    ld [hl], c                                    ; $7792: $71
    ld e, l                                       ; $7793: $5d
    inc e                                         ; $7794: $1c
    cp l                                          ; $7795: $bd
    call nc, $e8b7                                ; $7796: $d4 $b7 $e8
    ld a, [hl+]                                   ; $7799: $2a
    ld [c], a                                     ; $779a: $e2
    adc d                                         ; $779b: $8a
    db $d3                                        ; $779c: $d3
    ld [hl], b                                    ; $779d: $70
    xor h                                         ; $779e: $ac
    call c, Call_000_1159                         ; $779f: $dc $59 $11
    halt                                          ; $77a2: $76

Jump_070_77a3:
    ld e, b                                       ; $77a3: $58
    push hl                                       ; $77a4: $e5
    cp b                                          ; $77a5: $b8
    ld a, [hl+]                                   ; $77a6: $2a
    sub e                                         ; $77a7: $93
    ld [hl], $cf                                  ; $77a8: $36 $cf
    ld a, a                                       ; $77aa: $7f
    or h                                          ; $77ab: $b4
    ld [hl], b                                    ; $77ac: $70
    db $eb                                        ; $77ad: $eb
    inc [hl]                                      ; $77ae: $34
    ld e, d                                       ; $77af: $5a
    adc a                                         ; $77b0: $8f
    ld b, b                                       ; $77b1: $40
    ld [c], a                                     ; $77b2: $e2
    adc [hl]                                      ; $77b3: $8e
    ld a, [hl-]                                   ; $77b4: $3a
    ld h, h                                       ; $77b5: $64
    ld l, $c3                                     ; $77b6: $2e $c3
    and l                                         ; $77b8: $a5
    inc bc                                        ; $77b9: $03
    scf                                           ; $77ba: $37
    ld b, a                                       ; $77bb: $47
    sbc [hl]                                      ; $77bc: $9e
    ld d, l                                       ; $77bd: $55
    ld c, [hl]                                    ; $77be: $4e
    ld d, [hl]                                    ; $77bf: $56
    sbc [hl]                                      ; $77c0: $9e
    jp nc, Jump_070_454a                          ; $77c1: $d2 $4a $45

    inc [hl]                                      ; $77c4: $34
    db $fc                                        ; $77c5: $fc
    xor c                                         ; $77c6: $a9
    ld a, [bc]                                    ; $77c7: $0a
    db $eb                                        ; $77c8: $eb

Jump_070_77c9:
    ld [hl], h                                    ; $77c9: $74
    rst $00                                       ; $77ca: $c7
    ld l, c                                       ; $77cb: $69
    jp z, $cb32                                   ; $77cc: $ca $32 $cb

    ret                                           ; $77cf: $c9


    pop de                                        ; $77d0: $d1
    ld h, $75                                     ; $77d1: $26 $75
    ld a, [hl+]                                   ; $77d3: $2a

Jump_070_77d4:
    pop hl                                        ; $77d4: $e1
    ld d, [hl]                                    ; $77d5: $56
    ld d, $4f                                     ; $77d6: $16 $4f
    ld de, $ff0d                                  ; $77d8: $11 $0d $ff
    dec bc                                        ; $77db: $0b
    ld e, d                                       ; $77dc: $5a
    adc a                                         ; $77dd: $8f
    ld a, [hl-]                                   ; $77de: $3a
    xor b                                         ; $77df: $a8
    dec de                                        ; $77e0: $1b
    inc sp                                        ; $77e1: $33
    ld l, h                                       ; $77e2: $6c
    dec a                                         ; $77e3: $3d
    cpl                                           ; $77e4: $2f
    ld c, [hl]                                    ; $77e5: $4e
    ld h, e                                       ; $77e6: $63
    add sp, $7f                                   ; $77e7: $e8 $7f
    db $e4                                        ; $77e9: $e4
    ld e, c                                       ; $77ea: $59

Jump_070_77eb:
    ld b, l                                       ; $77eb: $45
    dec hl                                        ; $77ec: $2b
    ld h, e                                       ; $77ed: $63
    ld [hl], a                                    ; $77ee: $77
    call z, $a591                                 ; $77ef: $cc $91 $a5
    add $e0                                       ; $77f2: $c6 $e0
    ld [hl+], a                                   ; $77f4: $22
    sub b                                         ; $77f5: $90
    ld d, [hl]                                    ; $77f6: $56
    or a                                          ; $77f7: $b7
    ld l, l                                       ; $77f8: $6d
    dec hl                                        ; $77f9: $2b
    ld e, l                                       ; $77fa: $5d
    xor a                                         ; $77fb: $af
    adc $e9                                       ; $77fc: $ce $e9
    ld b, a                                       ; $77fe: $47
    ld e, b                                       ; $77ff: $58
    call nc, $074b                                ; $7800: $d4 $4b $07
    scf                                           ; $7803: $37
    ld b, a                                       ; $7804: $47
    sbc [hl]                                      ; $7805: $9e
    ld d, l                                       ; $7806: $55
    sbc c                                         ; $7807: $99
    inc hl                                        ; $7808: $23
    dec de                                        ; $7809: $1b
    ld c, b                                       ; $780a: $48
    ld l, h                                       ; $780b: $6c
    db $e4                                        ; $780c: $e4
    sbc a                                         ; $780d: $9f
    ld [hl], l                                    ; $780e: $75
    ld l, c                                       ; $780f: $69
    ld b, l                                       ; $7810: $45
    ld d, h                                       ; $7811: $54
    rst $00                                       ; $7812: $c7
    ld [hl+], a                                   ; $7813: $22
    adc e                                         ; $7814: $8b
    ld l, c                                       ; $7815: $69
    and h                                         ; $7816: $a4
    ld d, l                                       ; $7817: $55
    sub a                                         ; $7818: $97
    sbc a                                         ; $7819: $9f
    ld d, d                                       ; $781a: $52
    push hl                                       ; $781b: $e5
    db $ec                                        ; $781c: $ec
    ld [c], a                                     ; $781d: $e2
    push hl                                       ; $781e: $e5
    and a                                         ; $781f: $a7
    ld hl, $450c                                  ; $7820: $21 $0c $45

jr_070_7823:
    rst $18                                       ; $7823: $df
    or l                                          ; $7824: $b5
    dec h                                         ; $7825: $25
    ld e, d                                       ; $7826: $5a
    ld sp, hl                                     ; $7827: $f9
    ld e, $5b                                     ; $7828: $1e $5b
    ret c                                         ; $782a: $d8

    ld a, d                                       ; $782b: $7a
    ld [hl], e                                    ; $782c: $73
    db $e4                                        ; $782d: $e4
    ld e, c                                       ; $782e: $59
    daa                                           ; $782f: $27
    db $fd                                        ; $7830: $fd
    reti                                          ; $7831: $d9


    db $e4                                        ; $7832: $e4
    ld a, [hl+]                                   ; $7833: $2a
    inc e                                         ; $7834: $1c
    call nz, Call_070_67a9                        ; $7835: $c4 $a9 $67
    inc bc                                        ; $7838: $03
    adc c                                         ; $7839: $89
    ld c, l                                       ; $783a: $4d
    ld c, $cd                                     ; $783b: $0e $cd
    di                                            ; $783d: $f3
    ld b, a                                       ; $783e: $47
    push hl                                       ; $783f: $e5
    jr c, jr_070_7823                             ; $7840: $38 $e1

    jp z, $f8b8                                   ; $7842: $ca $b8 $f8

    dec sp                                        ; $7845: $3b
    push af                                       ; $7846: $f5
    xor h                                         ; $7847: $ac
    add h                                         ; $7848: $84
    ld b, l                                       ; $7849: $45
    ld l, b                                       ; $784a: $68

jr_070_784b:
    xor c                                         ; $784b: $a9
    ld sp, $7eb8                                  ; $784c: $31 $b8 $7e
    ld l, c                                       ; $784f: $69
    jr c, jr_070_784b                             ; $7850: $38 $f9

    xor $3f                                       ; $7852: $ee $3f
    rst $30                                       ; $7854: $f7
    and $e9                                       ; $7855: $e6 $e9
    sub l                                         ; $7857: $95
    dec a                                         ; $7858: $3d
    add hl, bc                                    ; $7859: $09
    ld e, c                                       ; $785a: $59
    rst $08                                       ; $785b: $cf
    ld e, [hl]                                    ; $785c: $5e
    sbc c                                         ; $785d: $99
    sbc l                                         ; $785e: $9d
    ld [hl], d                                    ; $785f: $72
    ld c, l                                       ; $7860: $4d
    add [hl]                                      ; $7861: $86
    rra                                           ; $7862: $1f
    and e                                         ; $7863: $a3
    sub $b3                                       ; $7864: $d6 $b3
    ld d, a                                       ; $7866: $57
    ld h, b                                       ; $7867: $60
    ld de, $cf5a                                  ; $7868: $11 $5a $cf
    cp [hl]                                       ; $786b: $be
    ld h, l                                       ; $786c: $65
    jp hl                                         ; $786d: $e9


    sub $e8                                       ; $786e: $d6 $e8
    halt                                          ; $7870: $76
    nop                                           ; $7871: $00
    scf                                           ; $7872: $37
    ld b, a                                       ; $7873: $47
    sbc [hl]                                      ; $7874: $9e
    ld d, l                                       ; $7875: $55
    adc $ce                                       ; $7876: $ce $ce
    jr c, jr_070_7823                             ; $7878: $38 $a9

    and e                                         ; $787a: $a3
    ld e, l                                       ; $787b: $5d
    ld sp, hl                                     ; $787c: $f9
    ld h, h                                       ; $787d: $64
    db $f4                                        ; $787e: $f4
    adc e                                         ; $787f: $8b
    add hl, sp                                    ; $7880: $39
    ld d, d                                       ; $7881: $52
    bit 3, e                                      ; $7882: $cb $5b
    db $eb                                        ; $7884: $eb
    or h                                          ; $7885: $b4
    db $fc                                        ; $7886: $fc
    ld l, b                                       ; $7887: $68
    jp $deb1                                      ; $7888: $c3 $b1 $de


    ret z                                         ; $788b: $c8

    ld [$a979], sp                                ; $788c: $08 $79 $a9
    sub a                                         ; $788f: $97
    rst $30                                       ; $7890: $f7
    ld d, e                                       ; $7891: $53
    cp d                                          ; $7892: $ba
    ldh [$ba], a                                  ; $7893: $e0 $ba
    adc e                                         ; $7895: $8b
    ld e, c                                       ; $7896: $59
    cp a                                          ; $7897: $bf
    ld l, [hl]                                    ; $7898: $6e
    scf                                           ; $7899: $37
    sub b                                         ; $789a: $90
    ld e, b                                       ; $789b: $58
    ld [hl], c                                    ; $789c: $71
    ld [hl], b                                    ; $789d: $70
    sub e                                         ; $789e: $93
    ld b, e                                       ; $789f: $43
    di                                            ; $78a0: $f3
    db $fc                                        ; $78a1: $fc
    ld d, c                                       ; $78a2: $51
    add hl, sp                                    ; $78a3: $39
    ld c, [hl]                                    ; $78a4: $4e
    cp b                                          ; $78a5: $b8
    ld [hl-], a                                   ; $78a6: $32
    ld l, $fe                                     ; $78a7: $2e $fe
    ld c, [hl]                                    ; $78a9: $4e
    dec a                                         ; $78aa: $3d
    dec hl                                        ; $78ab: $2b
    ld h, c                                       ; $78ac: $61
    ld de, $bf5a                                  ; $78ad: $11 $5a $bf
    inc [hl]                                      ; $78b0: $34
    sbc h                                         ; $78b1: $9c
    ld a, h                                       ; $78b2: $7c
    rst $30                                       ; $78b3: $f7
    sbc a                                         ; $78b4: $9f
    ld a, e                                       ; $78b5: $7b
    di                                            ; $78b6: $f3
    db $f4                                        ; $78b7: $f4

Jump_070_78b8:
    jp z, $849e                                   ; $78b8: $ca $9e $84

    xor h                                         ; $78bb: $ac
    ld h, a                                       ; $78bc: $67
    xor a                                         ; $78bd: $af
    call z, $b94e                                 ; $78be: $cc $4e $b9
    ld h, $c3                                     ; $78c1: $26 $c3
    adc a                                         ; $78c3: $8f
    ld d, c                                       ; $78c4: $51
    db $eb                                        ; $78c5: $eb
    reti                                          ; $78c6: $d9


    dec hl                                        ; $78c7: $2b
    or b                                          ; $78c8: $b0
    ld [$67ad], sp                                ; $78c9: $08 $ad $67
    rst $18                                       ; $78cc: $df
    or d                                          ; $78cd: $b2
    ld [hl], h                                    ; $78ce: $74
    ld l, e                                       ; $78cf: $6b
    ld [hl], h                                    ; $78d0: $74
    dec sp                                        ; $78d1: $3b
    nop                                           ; $78d2: $00
    scf                                           ; $78d3: $37
    ld b, a                                       ; $78d4: $47
    sbc [hl]                                      ; $78d5: $9e
    ld d, l                                       ; $78d6: $55
    or c                                          ; $78d7: $b1
    rst $38                                       ; $78d8: $ff
    daa                                           ; $78d9: $27
    push af                                       ; $78da: $f5
    ld [$7e9c], a                                 ; $78db: $ea $9c $7e
    add h                                         ; $78de: $84
    ld b, l                                       ; $78df: $45
    xor l                                         ; $78e0: $ad
    ld b, a                                       ; $78e1: $47
    pop hl                                        ; $78e2: $e1
    adc b                                         ; $78e3: $88
    adc e                                         ; $78e4: $8b
    xor b                                         ; $78e5: $a8
    ld h, a                                       ; $78e6: $67
    sub e                                         ; $78e7: $93

jr_070_78e8:
    xor e                                         ; $78e8: $ab
    inc e                                         ; $78e9: $1c
    xor $e2                                       ; $78ea: $ee $e2
    xor c                                         ; $78ec: $a9
    call $a9ad                                    ; $78ed: $cd $ad $a9
    ld l, b                                       ; $78f0: $68
    add a                                         ; $78f1: $87
    db $e3                                        ; $78f2: $e3
    rst $30                                       ; $78f3: $f7
    ret z                                         ; $78f4: $c8

    sub c                                         ; $78f5: $91
    sub a                                         ; $78f6: $97
    ld a, [$2d71]                                 ; $78f7: $fa $71 $2d
    cp c                                          ; $78fa: $b9
    or c                                          ; $78fb: $b1
    ld a, d                                       ; $78fc: $7a
    ld [hl], $39                                  ; $78fd: $36 $39
    inc [hl]                                      ; $78ff: $34
    rst $08                                       ; $7900: $cf
    rra                                           ; $7901: $1f
    sub l                                         ; $7902: $95
    db $e3                                        ; $7903: $e3
    add h                                         ; $7904: $84
    dec hl                                        ; $7905: $2b
    db $e3                                        ; $7906: $e3
    ld [c], a                                     ; $7907: $e2
    rst $28                                       ; $7908: $ef
    call nc, $12b3                                ; $7909: $d4 $b3 $12
    ld d, $a1                                     ; $790c: $16 $a1
    call $2bd3                                    ; $790e: $cd $d3 $2b
    ld a, e                                       ; $7911: $7b
    ld [de], a                                    ; $7912: $12
    or d                                          ; $7913: $b2
    sbc [hl]                                      ; $7914: $9e
    cp l                                          ; $7915: $bd
    ld [hl-], a                                   ; $7916: $32
    dec sp                                        ; $7917: $3b
    push hl                                       ; $7918: $e5
    sbc d                                         ; $7919: $9a
    inc c                                         ; $791a: $0c
    ccf                                           ; $791b: $3f
    ld b, [hl]                                    ; $791c: $46
    xor l                                         ; $791d: $ad
    ld h, a                                       ; $791e: $67
    xor a                                         ; $791f: $af
    ret nz                                        ; $7920: $c0

    ld [hl+], a                                   ; $7921: $22
    or h                                          ; $7922: $b4
    sbc [hl]                                      ; $7923: $9e
    ld a, l                                       ; $7924: $7d
    set 2, d                                      ; $7925: $cb $d2
    xor l                                         ; $7927: $ad
    pop de                                        ; $7928: $d1
    ld a, [hl+]                                   ; $7929: $2a
    ld c, e                                       ; $792a: $4b
    dec c                                         ; $792b: $0d
    or c                                          ; $792c: $b1
    adc e                                         ; $792d: $8b
    pop de                                        ; $792e: $d1
    sub b                                         ; $792f: $90
    dec sp                                        ; $7930: $3b
    ld c, d                                       ; $7931: $4a
    sub l                                         ; $7932: $95
    or e                                          ; $7933: $b3
    and e                                         ; $7934: $a3
    ld [hl], d                                    ; $7935: $72
    call c, Call_000_3454                         ; $7936: $dc $54 $34
    and a                                         ; $7939: $a7
    xor c                                         ; $793a: $a9
    ld [hl], d                                    ; $793b: $72
    rst $38                                       ; $793c: $ff
    db $e3                                        ; $793d: $e3
    ld b, h                                       ; $793e: $44
    or a                                          ; $793f: $b7
    dec e                                         ; $7940: $1d
    scf                                           ; $7941: $37
    ld b, a                                       ; $7942: $47
    sbc [hl]                                      ; $7943: $9e
    push de                                       ; $7944: $d5
    jr z, @+$2b                                   ; $7945: $28 $29

    ld h, h                                       ; $7947: $64
    ld b, a                                       ; $7948: $47
    cp e                                          ; $7949: $bb
    ld c, a                                       ; $794a: $4f
    or d                                          ; $794b: $b2
    pop de                                        ; $794c: $d1
    ld a, d                                       ; $794d: $7a
    db $f4                                        ; $794e: $f4
    cp a                                          ; $794f: $bf
    ld [c], a                                     ; $7950: $e2
    dec a                                         ; $7951: $3d
    or [hl]                                       ; $7952: $b6
    ret nc                                        ; $7953: $d0

    ld [hl], b                                    ; $7954: $70
    xor h                                         ; $7955: $ac
    ld [hl-], a                                   ; $7956: $32
    cp c                                          ; $7957: $b9
    ret nc                                        ; $7958: $d0

    sub [hl]                                      ; $7959: $96
    dec d                                         ; $795a: $15
    adc l                                         ; $795b: $8d
    jr nc, jr_070_78e8                            ; $795c: $30 $8a

    ld d, b                                       ; $795e: $50
    rst $08                                       ; $795f: $cf
    ld e, [hl]                                    ; $7960: $5e
    and l                                         ; $7961: $a5
    add hl, bc                                    ; $7962: $09
    ld h, a                                       ; $7963: $67
    sbc a                                         ; $7964: $9f
    db $d3                                        ; $7965: $d3
    ld b, d                                       ; $7966: $42
    reti                                          ; $7967: $d9


    sub b                                         ; $7968: $90
    daa                                           ; $7969: $27
    ld e, b                                       ; $796a: $58
    and c                                         ; $796b: $a1
    dec [hl]                                      ; $796c: $35
    ld c, d                                       ; $796d: $4a
    xor [hl]                                      ; $796e: $ae
    ld [$87ad], sp                                ; $796f: $08 $ad $87
    ld [hl], $9c                                  ; $7972: $36 $9c
    adc e                                         ; $7974: $8b
    rst $30                                       ; $7975: $f7

Jump_070_7976:
    ld d, d                                       ; $7976: $52
    cpl                                           ; $7977: $2f
    push af                                       ; $7978: $f5
    cp h                                          ; $7979: $bc
    ld [c], a                                     ; $797a: $e2
    ldh [rNR52], a                                ; $797b: $e0 $26
    add a                                         ; $797d: $87
    and $f9                                       ; $797e: $e6 $f9
    and e                                         ; $7980: $a3
    ld [hl], d                                    ; $7981: $72
    sbc h                                         ; $7982: $9c
    ld [hl], b                                    ; $7983: $70
    ld h, l                                       ; $7984: $65
    ld e, h                                       ; $7985: $5c
    db $fc                                        ; $7986: $fc
    sbc l                                         ; $7987: $9d
    ld a, d                                       ; $7988: $7a
    ld d, [hl]                                    ; $7989: $56

jr_070_798a:
    jp nz, $b422                                  ; $798a: $c2 $22 $b4

    ld a, [hl]                                    ; $798d: $7e
    ld l, c                                       ; $798e: $69
    jr c, jr_070_798a                             ; $798f: $38 $f9

    xor $3f                                       ; $7991: $ee $3f
    rst $30                                       ; $7993: $f7
    and $e9                                       ; $7994: $e6 $e9
    sub l                                         ; $7996: $95
    dec a                                         ; $7997: $3d
    add hl, bc                                    ; $7998: $09
    ld e, c                                       ; $7999: $59
    rst $08                                       ; $799a: $cf
    ld e, [hl]                                    ; $799b: $5e
    sbc c                                         ; $799c: $99
    sbc l                                         ; $799d: $9d
    ld [hl], d                                    ; $799e: $72
    ld c, l                                       ; $799f: $4d
    add [hl]                                      ; $79a0: $86
    rra                                           ; $79a1: $1f
    and e                                         ; $79a2: $a3
    sub $b3                                       ; $79a3: $d6 $b3
    ld d, a                                       ; $79a5: $57
    ld h, b                                       ; $79a6: $60
    ld de, $cf5a                                  ; $79a7: $11 $5a $cf
    cp [hl]                                       ; $79aa: $be
    ld h, l                                       ; $79ab: $65
    jp hl                                         ; $79ac: $e9


    sub $e8                                       ; $79ad: $d6 $e8
    halt                                          ; $79af: $76
    nop                                           ; $79b0: $00
    scf                                           ; $79b1: $37
    ld b, a                                       ; $79b2: $47
    sbc [hl]                                      ; $79b3: $9e
    push de                                       ; $79b4: $d5
    db $d3                                        ; $79b5: $d3
    ld l, h                                       ; $79b6: $6c
    ld [c], a                                     ; $79b7: $e2
    and h                                         ; $79b8: $a4
    ld e, [hl]                                    ; $79b9: $5e
    ld e, a                                       ; $79ba: $5f
    ld h, [hl]                                    ; $79bb: $66
    cp b                                          ; $79bc: $b8
    adc b                                         ; $79bd: $88
    or d                                          ; $79be: $b2
    sbc [hl]                                      ; $79bf: $9e
    rst $38                                       ; $79c0: $ff
    reti                                          ; $79c1: $d9


    rst $38                                       ; $79c2: $ff
    ld c, h                                       ; $79c3: $4c
    sbc l                                         ; $79c4: $9d
    xor $eb                                       ; $79c5: $ee $eb
    ld l, a                                       ; $79c7: $6f
    ld d, e                                       ; $79c8: $53
    sbc e                                         ; $79c9: $9b
    inc h                                         ; $79ca: $24
    add h                                         ; $79cb: $84
    sbc a                                         ; $79cc: $9f
    add [hl]                                      ; $79cd: $86
    jr nc, jr_070_79e4                            ; $79ce: $30 $14

    dec d                                         ; $79d0: $15
    ld l, $e1                                     ; $79d1: $2e $e1
    cp [hl]                                       ; $79d3: $be
    ld h, $52                                     ; $79d4: $26 $52
    ld [c], a                                     ; $79d6: $e2
    ld d, d                                       ; $79d7: $52
    ld l, a                                       ; $79d8: $6f
    adc [hl]                                      ; $79d9: $8e
    inc a                                         ; $79da: $3c
    xor e                                         ; $79db: $ab
    ld d, c                                       ; $79dc: $51
    ld d, d                                       ; $79dd: $52
    ret z                                         ; $79de: $c8

    and d                                         ; $79df: $a2
    ld a, c                                       ; $79e0: $79
    ld [c], a                                     ; $79e1: $e2
    db $dd                                        ; $79e2: $dd
    ld [hl], d                                    ; $79e3: $72

jr_070_79e4:
    and c                                         ; $79e4: $a1
    sbc [hl]                                      ; $79e5: $9e
    ld c, l                                       ; $79e6: $4d
    ld c, $cd                                     ; $79e7: $0e $cd
    di                                            ; $79e9: $f3
    ld b, a                                       ; $79ea: $47
    push hl                                       ; $79eb: $e5
    jr c, @-$1d                                   ; $79ec: $38 $e1

    jp z, $f8b8                                   ; $79ee: $ca $b8 $f8

    dec sp                                        ; $79f1: $3b
    push af                                       ; $79f2: $f5
    xor h                                         ; $79f3: $ac
    add h                                         ; $79f4: $84
    ld b, l                                       ; $79f5: $45
    ld l, b                                       ; $79f6: $68
    di                                            ; $79f7: $f3
    db $f4                                        ; $79f8: $f4
    jp z, $849e                                   ; $79f9: $ca $9e $84

    xor h                                         ; $79fc: $ac
    ld h, a                                       ; $79fd: $67
    xor a                                         ; $79fe: $af
    call z, $b94e                                 ; $79ff: $cc $4e $b9
    ld h, $c3                                     ; $7a02: $26 $c3
    adc a                                         ; $7a04: $8f
    ld d, c                                       ; $7a05: $51
    db $eb                                        ; $7a06: $eb
    reti                                          ; $7a07: $d9


    dec hl                                        ; $7a08: $2b
    or b                                          ; $7a09: $b0
    ld [$67ad], sp                                ; $7a0a: $08 $ad $67
    rst $18                                       ; $7a0d: $df
    or d                                          ; $7a0e: $b2
    ld [hl], h                                    ; $7a0f: $74
    ld l, e                                       ; $7a10: $6b
    ld [hl], h                                    ; $7a11: $74
    dec sp                                        ; $7a12: $3b
    nop                                           ; $7a13: $00
    scf                                           ; $7a14: $37
    ld b, a                                       ; $7a15: $47
    sbc [hl]                                      ; $7a16: $9e
    push af                                       ; $7a17: $f5
    ld b, d                                       ; $7a18: $42
    dec a                                         ; $7a19: $3d
    dec [hl]                                      ; $7a1a: $35
    and h                                         ; $7a1b: $a4
    ld b, l                                       ; $7a1c: $45
    ld hl, sp+$69                                 ; $7a1d: $f8 $69

Jump_070_7a1f:
    ld [$f343], sp                                ; $7a1f: $08 $43 $f3
    db $fc                                        ; $7a22: $fc
    and c                                         ; $7a23: $a1
    dec c                                         ; $7a24: $0d
    ld b, a                                       ; $7a25: $47
    ld [hl], l                                    ; $7a26: $75
    add hl, bc                                    ; $7a27: $09
    rst $10                                       ; $7a28: $d7
    cp [hl]                                       ; $7a29: $be
    inc a                                         ; $7a2a: $3c
    inc a                                         ; $7a2b: $3c
    or l                                          ; $7a2c: $b5
    sbc [hl]                                      ; $7a2d: $9e
    pop hl                                        ; $7a2e: $e1
    inc l                                         ; $7a2f: $2c
    xor l                                         ; $7a30: $ad
    ld h, a                                       ; $7a31: $67
    push hl                                       ; $7a32: $e5
    cp b                                          ; $7a33: $b8
    ld [hl], b                                    ; $7a34: $70
    ld h, a                                       ; $7a35: $67
    add h                                         ; $7a36: $84
    dec d                                         ; $7a37: $15
    ld [hl], l                                    ; $7a38: $75
    ld c, e                                       ; $7a39: $4b
    push af                                       ; $7a3a: $f5

jr_070_7a3b:
    ld [hl], a                                    ; $7a3b: $77
    ld a, [de]                                    ; $7a3c: $1a
    ld c, b                                       ; $7a3d: $48
    db $ec                                        ; $7a3e: $ec
    db $f4                                        ; $7a3f: $f4
    cp d                                          ; $7a40: $ba
    adc l                                         ; $7a41: $8d
    adc b                                         ; $7a42: $88
    xor d                                         ; $7a43: $aa
    ld h, e                                       ; $7a44: $63
    ld a, l                                       ; $7a45: $7d
    ld l, e                                       ; $7a46: $6b
    push hl                                       ; $7a47: $e5
    xor h                                         ; $7a48: $ac
    db $dd                                        ; $7a49: $dd
    push bc                                       ; $7a4a: $c5
    xor h                                         ; $7a4b: $ac
    ld h, a                                       ; $7a4c: $67
    cp d                                          ; $7a4d: $ba
    call nc, Call_000_30eb                        ; $7a4e: $d4 $eb $30
    ld d, h                                       ; $7a51: $54
    adc [hl]                                      ; $7a52: $8e
    dec c                                         ; $7a53: $0d
    xor h                                         ; $7a54: $ac
    jp z, $4d54                                   ; $7a55: $ca $54 $4d

    sub d                                         ; $7a58: $92
    xor d                                         ; $7a59: $aa
    inc hl                                        ; $7a5a: $23
    ld l, b                                       ; $7a5b: $68
    ld [hl], d                                    ; $7a5c: $72
    ld l, b                                       ; $7a5d: $68
    sbc [hl]                                      ; $7a5e: $9e
    ccf                                           ; $7a5f: $3f
    ld a, [hl+]                                   ; $7a60: $2a
    rst $00                                       ; $7a61: $c7
    add hl, bc                                    ; $7a62: $09
    ld d, a                                       ; $7a63: $57
    add $c5                                       ; $7a64: $c6 $c5
    rst $18                                       ; $7a66: $df
    xor c                                         ; $7a67: $a9
    ld h, a                                       ; $7a68: $67
    dec h                                         ; $7a69: $25
    inc l                                         ; $7a6a: $2c
    ld b, d                                       ; $7a6b: $42
    ld c, e                                       ; $7a6c: $4b
    adc l                                         ; $7a6d: $8d
    pop bc                                        ; $7a6e: $c1
    push af                                       ; $7a6f: $f5
    ld c, e                                       ; $7a70: $4b
    jp Jump_070_77c9                              ; $7a71: $c3 $c9 $77


    rst $38                                       ; $7a74: $ff
    cp c                                          ; $7a75: $b9
    scf                                           ; $7a76: $37
    ld c, a                                       ; $7a77: $4f
    xor a                                         ; $7a78: $af
    db $ec                                        ; $7a79: $ec
    ld c, c                                       ; $7a7a: $49
    ret z                                         ; $7a7b: $c8

    ld a, d                                       ; $7a7c: $7a

Call_070_7a7d:
    or $ca                                        ; $7a7d: $f6 $ca
    db $ec                                        ; $7a7f: $ec
    sub h                                         ; $7a80: $94
    ld l, e                                       ; $7a81: $6b
    ld [hl-], a                                   ; $7a82: $32
    db $fc                                        ; $7a83: $fc
    jr jr_070_7a3b                                ; $7a84: $18 $b5

    sbc [hl]                                      ; $7a86: $9e
    cp l                                          ; $7a87: $bd
    ld [bc], a                                    ; $7a88: $02
    adc e                                         ; $7a89: $8b
    ret nc                                        ; $7a8a: $d0

    ld a, d                                       ; $7a8b: $7a
    or $2d                                        ; $7a8c: $f6 $2d

Jump_070_7a8e:
    ld c, e                                       ; $7a8e: $4b
    or a                                          ; $7a8f: $b7
    ld b, [hl]                                    ; $7a90: $46
    or a                                          ; $7a91: $b7
    inc bc                                        ; $7a92: $03
    scf                                           ; $7a93: $37
    ld b, a                                       ; $7a94: $47
    sbc [hl]                                      ; $7a95: $9e
    push de                                       ; $7a96: $d5
    jr z, jr_070_7aec                             ; $7a97: $28 $53

    ld c, b                                       ; $7a99: $48
    sbc e                                         ; $7a9a: $9b
    call nc, $87e9                                ; $7a9b: $d4 $e9 $87
    ld [hl], h                                    ; $7a9e: $74
    ld b, d                                       ; $7a9f: $42
    sbc e                                         ; $7aa0: $9b
    cp l                                          ; $7aa1: $bd
    sbc [hl]                                      ; $7aa2: $9e
    db $fd                                        ; $7aa3: $fd
    adc b                                         ; $7aa4: $88
    rst $38                                       ; $7aa5: $ff
    or l                                          ; $7aa6: $b5
    rst $28                                       ; $7aa7: $ef
    cp h                                          ; $7aa8: $bc
    call nc, $cdcb                                ; $7aa9: $d4 $cb $cd
    inc de                                        ; $7aac: $13
    rst $28                                       ; $7aad: $ef
    sub [hl]                                      ; $7aae: $96
    dec bc                                        ; $7aaf: $0b
    push af                                       ; $7ab0: $f5
    ld l, h                                       ; $7ab1: $6c
    ld [hl], d                                    ; $7ab2: $72
    ld l, b                                       ; $7ab3: $68
    sbc [hl]                                      ; $7ab4: $9e
    ccf                                           ; $7ab5: $3f
    ld a, [hl+]                                   ; $7ab6: $2a
    rst $00                                       ; $7ab7: $c7
    add hl, bc                                    ; $7ab8: $09
    ld d, a                                       ; $7ab9: $57
    add $c5                                       ; $7aba: $c6 $c5
    rst $18                                       ; $7abc: $df
    xor c                                         ; $7abd: $a9
    ld h, a                                       ; $7abe: $67
    dec h                                         ; $7abf: $25
    inc l                                         ; $7ac0: $2c
    ld b, d                                       ; $7ac1: $42
    sbc e                                         ; $7ac2: $9b
    and a                                         ; $7ac3: $a7
    ld d, a                                       ; $7ac4: $57
    or $24                                        ; $7ac5: $f6 $24
    ld h, h                                       ; $7ac7: $64
    dec a                                         ; $7ac8: $3d
    ld a, e                                       ; $7ac9: $7b
    ld h, l                                       ; $7aca: $65
    halt                                          ; $7acb: $76
    jp z, Jump_000_1935                           ; $7acc: $ca $35 $19

    ld a, [hl]                                    ; $7acf: $7e
    adc h                                         ; $7ad0: $8c
    ld e, d                                       ; $7ad1: $5a
    rst $08                                       ; $7ad2: $cf
    ld e, [hl]                                    ; $7ad3: $5e
    add c                                         ; $7ad4: $81
    ld b, l                                       ; $7ad5: $45
    ld l, b                                       ; $7ad6: $68
    dec a                                         ; $7ad7: $3d
    ei                                            ; $7ad8: $fb
    sub [hl]                                      ; $7ad9: $96
    and l                                         ; $7ada: $a5
    ld e, e                                       ; $7adb: $5b
    and e                                         ; $7adc: $a3
    and l                                         ; $7add: $a5
    add $e0                                       ; $7ade: $c6 $e0
    cp $07                                        ; $7ae0: $fe $07
    reti                                          ; $7ae2: $d9


    ld c, a                                       ; $7ae3: $4f
    dec a                                         ; $7ae4: $3d
    ld c, e                                       ; $7ae5: $4b
    adc l                                         ; $7ae6: $8d
    ret                                           ; $7ae7: $c9


    inc hl                                        ; $7ae8: $23
    ld b, a                                       ; $7ae9: $47
    ld [hl], $84                                  ; $7aea: $36 $84

jr_070_7aec:
    and c                                         ; $7aec: $a1
    call nc, Call_000_3c98                        ; $7aed: $d4 $98 $3c
    ld [hl], d                                    ; $7af0: $72
    db $e4                                        ; $7af1: $e4
    halt                                          ; $7af2: $76
    nop                                           ; $7af3: $00
    sub a                                         ; $7af4: $97
    dec de                                        ; $7af5: $1b
    ld h, c                                       ; $7af6: $61
    inc d                                         ; $7af7: $14
    and c                                         ; $7af8: $a1
    ld e, $45                                     ; $7af9: $1e $45
    jp c, $cf51                                   ; $7afb: $da $51 $cf

    cp [hl]                                       ; $7afe: $be
    jp $d715                                      ; $7aff: $c3 $15 $d7


    push bc                                       ; $7b02: $c5
    pop de                                        ; $7b03: $d1
    cp $b1                                        ; $7b04: $fe $b1
    ld a, [de]                                    ; $7b06: $1a
    jp nz, Jump_070_4d50                          ; $7b07: $c2 $50 $4d

    add sp, -$42                                  ; $7b0a: $e8 $be
    inc [hl]                                      ; $7b0c: $34
    and d                                         ; $7b0d: $a2
    sbc [hl]                                      ; $7b0e: $9e
    sub l                                         ; $7b0f: $95
    sub e                                         ; $7b10: $93
    inc bc                                        ; $7b11: $03
    ld l, c                                       ; $7b12: $69
    ld l, c                                       ; $7b13: $69
    add h                                         ; $7b14: $84
    ld d, $12                                     ; $7b15: $16 $12
    cp $cc                                        ; $7b17: $fe $cc
    dec l                                         ; $7b19: $2d
    add hl, bc                                    ; $7b1a: $09
    db $dd                                        ; $7b1b: $dd
    ld a, d                                       ; $7b1c: $7a
    cp c                                          ; $7b1d: $b9
    ld d, h                                       ; $7b1e: $54
    add hl, sp                                    ; $7b1f: $39
    dec sp                                        ; $7b20: $3b
    ld a, [hl+]                                   ; $7b21: $2a
    and d                                         ; $7b22: $a2
    db $fd                                        ; $7b23: $fd
    ld e, c                                       ; $7b24: $59
    add hl, sp                                    ; $7b25: $39
    xor [hl]                                      ; $7b26: $ae
    ld l, b                                       ; $7b27: $68
    di                                            ; $7b28: $f3
    call nz, $e5bb                                ; $7b29: $c4 $bb $e5
    ld b, d                                       ; $7b2c: $42
    dec a                                         ; $7b2d: $3d
    sbc e                                         ; $7b2e: $9b
    inc e                                         ; $7b2f: $1c
    sbc d                                         ; $7b30: $9a
    rst $20                                       ; $7b31: $e7
    adc a                                         ; $7b32: $8f
    jp z, $c271                                   ; $7b33: $ca $71 $c2

    sub l                                         ; $7b36: $95
    ld [hl], c                                    ; $7b37: $71
    pop af                                        ; $7b38: $f1
    ld [hl], a                                    ; $7b39: $77
    ld [$0959], a                                 ; $7b3a: $ea $59 $09
    adc e                                         ; $7b3d: $8b
    ret nc                                        ; $7b3e: $d0

    ld a, [$e1a5]                                 ; $7b3f: $fa $a5 $e1
    db $e4                                        ; $7b42: $e4

Call_070_7b43:
    cp e                                          ; $7b43: $bb
    rst $38                                       ; $7b44: $ff
    call c, $a79b                                 ; $7b45: $dc $9b $a7
    ld d, a                                       ; $7b48: $57
    or $24                                        ; $7b49: $f6 $24
    ld h, h                                       ; $7b4b: $64
    dec a                                         ; $7b4c: $3d
    ld a, e                                       ; $7b4d: $7b
    ld h, l                                       ; $7b4e: $65
    halt                                          ; $7b4f: $76
    jp z, Jump_000_1935                           ; $7b50: $ca $35 $19

    ld a, [hl]                                    ; $7b53: $7e
    adc h                                         ; $7b54: $8c
    ld e, d                                       ; $7b55: $5a
    rst $08                                       ; $7b56: $cf
    ld e, [hl]                                    ; $7b57: $5e
    add c                                         ; $7b58: $81
    ld b, l                                       ; $7b59: $45
    ld l, b                                       ; $7b5a: $68
    dec a                                         ; $7b5b: $3d
    ei                                            ; $7b5c: $fb
    sub [hl]                                      ; $7b5d: $96
    and l                                         ; $7b5e: $a5
    ld e, e                                       ; $7b5f: $5b
    and e                                         ; $7b60: $a3
    db $db                                        ; $7b61: $db
    ld bc, $61d7                                  ; $7b62: $01 $d7 $61
    db $10                                        ; $7b65: $10
    ld e, [hl]                                    ; $7b66: $5e

Call_070_7b67:
    ret z                                         ; $7b67: $c8

    ld a, [hl+]                                   ; $7b68: $2a
    add sp, $7f                                   ; $7b69: $e8 $7f
    db $e4                                        ; $7b6b: $e4
    ld e, c                                       ; $7b6c: $59
    rst $38                                       ; $7b6d: $ff
    call z, $a992                                 ; $7b6e: $cc $92 $a9
    add sp, -$6b                                  ; $7b71: $e8 $95
    ld sp, $1e5b                                  ; $7b73: $31 $5b $1e
    push af                                       ; $7b76: $f5
    add sp, -$6b                                  ; $7b77: $e8 $95
    or c                                          ; $7b79: $b1
    db $f4                                        ; $7b7a: $f4
    dec a                                         ; $7b7b: $3d
    ld l, $f5                                     ; $7b7c: $2e $f5
    ld [hl], d                                    ; $7b7e: $72
    di                                            ; $7b7f: $f3
    call nz, $e5bb                                ; $7b80: $c4 $bb $e5
    ld b, d                                       ; $7b83: $42
    dec a                                         ; $7b84: $3d
    sbc e                                         ; $7b85: $9b
    inc e                                         ; $7b86: $1c
    sbc d                                         ; $7b87: $9a
    rst $20                                       ; $7b88: $e7
    adc a                                         ; $7b89: $8f
    jp z, $c271                                   ; $7b8a: $ca $71 $c2

    sub l                                         ; $7b8d: $95
    ld [hl], c                                    ; $7b8e: $71
    pop af                                        ; $7b8f: $f1
    ld [hl], a                                    ; $7b90: $77
    ld [$0959], a                                 ; $7b91: $ea $59 $09
    adc e                                         ; $7b94: $8b
    ret nc                                        ; $7b95: $d0

    ld a, [$e1a5]                                 ; $7b96: $fa $a5 $e1
    db $e4                                        ; $7b99: $e4
    cp e                                          ; $7b9a: $bb
    rst $38                                       ; $7b9b: $ff
    call c, $a79b                                 ; $7b9c: $dc $9b $a7
    ld d, a                                       ; $7b9f: $57
    or $24                                        ; $7ba0: $f6 $24
    ld h, h                                       ; $7ba2: $64
    dec a                                         ; $7ba3: $3d
    ld a, e                                       ; $7ba4: $7b
    ld h, l                                       ; $7ba5: $65

jr_070_7ba6:
    halt                                          ; $7ba6: $76

Call_070_7ba7:
    jp z, Jump_000_1935                           ; $7ba7: $ca $35 $19

    ld a, [hl]                                    ; $7baa: $7e
    adc h                                         ; $7bab: $8c
    ld e, d                                       ; $7bac: $5a
    rst $08                                       ; $7bad: $cf
    ld e, [hl]                                    ; $7bae: $5e
    add c                                         ; $7baf: $81
    ld b, l                                       ; $7bb0: $45
    ld l, b                                       ; $7bb1: $68
    dec a                                         ; $7bb2: $3d
    ei                                            ; $7bb3: $fb
    sub [hl]                                      ; $7bb4: $96
    and l                                         ; $7bb5: $a5
    ld e, e                                       ; $7bb6: $5b
    and e                                         ; $7bb7: $a3
    dec d                                         ; $7bb8: $15
    pop hl                                        ; $7bb9: $e1
    halt                                          ; $7bba: $76
    dec [hl]                                      ; $7bbb: $35
    and c                                         ; $7bbc: $a1
    ld [de], a                                    ; $7bbd: $12
    ld b, d                                       ; $7bbe: $42
    ld e, [hl]                                    ; $7bbf: $5e
    ld b, h                                       ; $7bc0: $44
    ld c, a                                       ; $7bc1: $4f
    bit 4, b                                      ; $7bc2: $cb $60
    db $db                                        ; $7bc4: $db
    ld bc, $4737                                  ; $7bc5: $01 $37 $47
    sbc [hl]                                      ; $7bc8: $9e
    push de                                       ; $7bc9: $d5
    jr z, jr_070_7ba6                             ; $7bca: $28 $da

    add hl, de                                    ; $7bcc: $19
    ld e, c                                       ; $7bcd: $59
    dec e                                         ; $7bce: $1d
    and c                                         ; $7bcf: $a1
    or c                                          ; $7bd0: $b1
    and e                                         ; $7bd1: $a3
    add l                                         ; $7bd2: $85
    sbc h                                         ; $7bd3: $9c
    inc e                                         ; $7bd4: $1c
    add hl, hl                                    ; $7bd5: $29
    sub a                                         ; $7bd6: $97
    ld h, e                                       ; $7bd7: $63
    adc [hl]                                      ; $7bd8: $8e
    and e                                         ; $7bd9: $a3
    dec [hl]                                      ; $7bda: $35
    ld c, d                                       ; $7bdb: $4a
    and $48                                       ; $7bdc: $e6 $48
    xor l                                         ; $7bde: $ad
    ld h, a                                       ; $7bdf: $67
    jr c, jr_070_7c2d                             ; $7be0: $38 $4b

    db $eb                                        ; $7be2: $eb
    reti                                          ; $7be3: $d9


    rst $38                                       ; $7be4: $ff
    db $ec                                        ; $7be5: $ec
    ld de, $3f56                                  ; $7be6: $11 $56 $3f
    ld h, l                                       ; $7be9: $65
    sub [hl]                                      ; $7bea: $96
    sub e                                         ; $7beb: $93
    and e                                         ; $7bec: $a3
    ld c, l                                       ; $7bed: $4d
    push hl                                       ; $7bee: $e5
    cp b                                          ; $7bef: $b8
    ld c, [hl]                                    ; $7bf0: $4e
    rst $08                                       ; $7bf1: $cf
    dec [hl]                                      ; $7bf2: $35
    db $e4                                        ; $7bf3: $e4
    ld l, $9e                                     ; $7bf4: $2e $9e
    ld a, d                                       ; $7bf6: $7a
    or $e3                                        ; $7bf7: $f6 $e3
    rst $28                                       ; $7bf9: $ef
    xor c                                         ; $7bfa: $a9
    db $f4                                        ; $7bfb: $f4
    ld e, e                                       ; $7bfc: $5b
    ccf                                           ; $7bfd: $3f
    and e                                         ; $7bfe: $a3
    xor e                                         ; $7bff: $ab
    and e                                         ; $7c00: $a3
    cp d                                          ; $7c01: $ba
    ld l, c                                       ; $7c02: $69
    ld [hl], d                                    ; $7c03: $72
    ld l, b                                       ; $7c04: $68
    sbc [hl]                                      ; $7c05: $9e
    ccf                                           ; $7c06: $3f
    ld a, [hl+]                                   ; $7c07: $2a
    rst $00                                       ; $7c08: $c7
    add hl, bc                                    ; $7c09: $09
    ld d, a                                       ; $7c0a: $57
    add $c5                                       ; $7c0b: $c6 $c5
    rst $18                                       ; $7c0d: $df
    xor c                                         ; $7c0e: $a9
    ld h, a                                       ; $7c0f: $67
    dec h                                         ; $7c10: $25
    inc l                                         ; $7c11: $2c
    ld b, d                                       ; $7c12: $42
    sbc e                                         ; $7c13: $9b
    and a                                         ; $7c14: $a7
    ld d, a                                       ; $7c15: $57
    or $24                                        ; $7c16: $f6 $24
    ld h, h                                       ; $7c18: $64
    dec a                                         ; $7c19: $3d
    ld a, e                                       ; $7c1a: $7b
    ld h, l                                       ; $7c1b: $65
    halt                                          ; $7c1c: $76
    jp z, Jump_000_1935                           ; $7c1d: $ca $35 $19

    ld a, [hl]                                    ; $7c20: $7e
    adc h                                         ; $7c21: $8c
    ld e, d                                       ; $7c22: $5a
    rst $08                                       ; $7c23: $cf
    ld e, [hl]                                    ; $7c24: $5e
    add c                                         ; $7c25: $81
    ld b, l                                       ; $7c26: $45
    ld l, b                                       ; $7c27: $68
    dec a                                         ; $7c28: $3d
    ei                                            ; $7c29: $fb
    sub [hl]                                      ; $7c2a: $96
    and l                                         ; $7c2b: $a5
    ld e, e                                       ; $7c2c: $5b

jr_070_7c2d:
    and e                                         ; $7c2d: $a3
    add d                                         ; $7c2e: $82
    ld c, [hl]                                    ; $7c2f: $4e
    ld [$2285], a                                 ; $7c30: $ea $85 $22
    ld h, h                                       ; $7c33: $64
    add [hl]                                      ; $7c34: $86
    ld [hl], $b9                                  ; $7c35: $36 $b9
    ld [$f164], a                                 ; $7c37: $ea $64 $f1
    cp h                                          ; $7c3a: $bc
    ld [hl], c                                    ; $7c3b: $71
    nop                                           ; $7c3c: $00
    scf                                           ; $7c3d: $37
    ld b, a                                       ; $7c3e: $47
    sbc [hl]                                      ; $7c3f: $9e
    push af                                       ; $7c40: $f5
    ccf                                           ; $7c41: $3f
    ld a, e                                       ; $7c42: $7b
    sbc h                                         ; $7c43: $9c
    ld d, h                                       ; $7c44: $54
    db $f4                                        ; $7c45: $f4
    ld e, l                                       ; $7c46: $5d
    ld e, e                                       ; $7c47: $5b
    and d                                         ; $7c48: $a2
    sub l                                         ; $7c49: $95
    rst $28                                       ; $7c4a: $ef
    or c                                          ; $7c4b: $b1
    add l                                         ; $7c4c: $85
    ld a, d                                       ; $7c4d: $7a
    add [hl]                                      ; $7c4e: $86
    or e                                          ; $7c4f: $b3
    or h                                          ; $7c50: $b4
    ld e, $c5                                     ; $7c51: $1e $c5
    sbc a                                         ; $7c53: $9f
    add hl, sp                                    ; $7c54: $39
    ld h, $43                                     ; $7c55: $26 $43
    db $fd                                        ; $7c57: $fd
    db $f4                                        ; $7c58: $f4
    db $ed                                        ; $7c59: $ed
    call nz, Call_070_7a7d                        ; $7c5a: $c4 $7d $7a
    ld h, a                                       ; $7c5d: $67
    xor a                                         ; $7c5e: $af
    ld [hl], c                                    ; $7c5f: $71
    pop hl                                        ; $7c60: $e1
    adc c                                         ; $7c61: $89
    adc a                                         ; $7c62: $8f
    ld h, [hl]                                    ; $7c63: $66
    ld b, l                                       ; $7c64: $45
    ld l, [hl]                                    ; $7c65: $6e
    db $fd                                        ; $7c66: $fd
    ld e, b                                       ; $7c67: $58
    dec hl                                        ; $7c68: $2b
    rst $00                                       ; $7c69: $c7
    adc h                                         ; $7c6a: $8c
    ld a, [hl]                                    ; $7c6b: $7e
    adc h                                         ; $7c6c: $8c
    ld e, d                                       ; $7c6d: $5a
    rst $08                                       ; $7c6e: $cf
    ld e, [hl]                                    ; $7c6f: $5e
    sbc l                                         ; $7c70: $9d
    db $d3                                        ; $7c71: $d3
    adc a                                         ; $7c72: $8f
    or b                                          ; $7c73: $b0
    xor b                                         ; $7c74: $a8
    cp l                                          ; $7c75: $bd
    or e                                          ; $7c76: $b3
    ld a, c                                       ; $7c77: $79
    ld d, [hl]                                    ; $7c78: $56
    ld h, h                                       ; $7c79: $64
    di                                            ; $7c7a: $f3
    rst $28                                       ; $7c7b: $ef
    inc [hl]                                      ; $7c7c: $34
    add h                                         ; $7c7d: $84
    ld d, c                                       ; $7c7e: $51
    jp nc, $fe35                                  ; $7c7f: $d2 $35 $fe

    ld c, [hl]                                    ; $7c82: $4e
    pop hl                                        ; $7c83: $e1
    adc b                                         ; $7c84: $88
    adc e                                         ; $7c85: $8b
    ldh a, [$63]                                  ; $7c86: $f0 $63
    call nc, Call_000_34e2                        ; $7c88: $d4 $e2 $34
    add [hl]                                      ; $7c8b: $86
    db $ed                                        ; $7c8c: $ed
    nop                                           ; $7c8d: $00
    scf                                           ; $7c8e: $37
    ld b, a                                       ; $7c8f: $47
    sbc [hl]                                      ; $7c90: $9e
    push de                                       ; $7c91: $d5
    db $d3                                        ; $7c92: $d3
    ld l, h                                       ; $7c93: $6c
    ld [c], a                                     ; $7c94: $e2
    and h                                         ; $7c95: $a4

jr_070_7c96:
    ld c, [hl]                                    ; $7c96: $4e
    and e                                         ; $7c97: $a3
    ld b, c                                       ; $7c98: $41
    ld c, a                                       ; $7c99: $4f
    ld d, e                                       ; $7c9a: $53
    ld d, [hl]                                    ; $7c9b: $56
    or c                                          ; $7c9c: $b1
    rst $38                                       ; $7c9d: $ff
    daa                                           ; $7c9e: $27
    push af                                       ; $7c9f: $f5
    ld a, [hl+]                                   ; $7ca0: $2a
    call $c9ad                                    ; $7ca1: $cd $ad $c9
    cp h                                          ; $7ca4: $bc
    call nc, Call_000_239b                        ; $7ca5: $d4 $9b $23
    rst $08                                       ; $7ca8: $cf
    xor d                                         ; $7ca9: $aa
    call z, Call_000_0d91                         ; $7caa: $cc $91 $0d
    inc h                                         ; $7cad: $24
    ld d, $cd                                     ; $7cae: $16 $cd
    di                                            ; $7cb0: $f3
    ld b, a                                       ; $7cb1: $47
    push hl                                       ; $7cb2: $e5
    jr c, jr_070_7c96                             ; $7cb3: $38 $e1

    jp z, $f8b8                                   ; $7cb5: $ca $b8 $f8

    dec sp                                        ; $7cb8: $3b
    push af                                       ; $7cb9: $f5
    xor h                                         ; $7cba: $ac
    add h                                         ; $7cbb: $84
    ld b, l                                       ; $7cbc: $45
    ld l, b                                       ; $7cbd: $68
    db $fd                                        ; $7cbe: $fd
    jp nc, $f270                                  ; $7cbf: $d2 $70 $f2

    db $dd                                        ; $7cc2: $dd
    ld a, a                                       ; $7cc3: $7f
    xor $cd                                       ; $7cc4: $ee $cd
    db $d3                                        ; $7cc6: $d3
    dec hl                                        ; $7cc7: $2b
    ld a, e                                       ; $7cc8: $7b
    ld [de], a                                    ; $7cc9: $12
    or d                                          ; $7cca: $b2
    sbc [hl]                                      ; $7ccb: $9e
    cp l                                          ; $7ccc: $bd
    ld [hl-], a                                   ; $7ccd: $32
    dec sp                                        ; $7cce: $3b
    push hl                                       ; $7ccf: $e5
    sbc d                                         ; $7cd0: $9a
    inc c                                         ; $7cd1: $0c
    ccf                                           ; $7cd2: $3f
    ld b, [hl]                                    ; $7cd3: $46
    xor l                                         ; $7cd4: $ad
    ld h, a                                       ; $7cd5: $67
    xor a                                         ; $7cd6: $af
    ret nz                                        ; $7cd7: $c0

    ld [hl+], a                                   ; $7cd8: $22
    or h                                          ; $7cd9: $b4
    sbc [hl]                                      ; $7cda: $9e
    ld a, l                                       ; $7cdb: $7d
    set 2, d                                      ; $7cdc: $cb $d2
    xor l                                         ; $7cde: $ad
    pop de                                        ; $7cdf: $d1
    ld e, [hl]                                    ; $7ce0: $5e
    ld l, b                                       ; $7ce1: $68
    ld [hl], d                                    ; $7ce2: $72
    xor b                                         ; $7ce3: $a8
    ld d, c                                       ; $7ce4: $51
    adc [hl]                                      ; $7ce5: $8e
    dec bc                                        ; $7ce6: $0b
    sbc c                                         ; $7ce7: $99
    dec d                                         ; $7ce8: $15
    db $fd                                        ; $7ce9: $fd
    ld a, $69                                     ; $7cea: $3e $69
    ld b, h                                       ; $7cec: $44
    jp $2ab1                                      ; $7ced: $c3 $b1 $2a


    ld d, e                                       ; $7cf0: $53
    push bc                                       ; $7cf1: $c5
    or h                                          ; $7cf2: $b4
    cp c                                          ; $7cf3: $b9
    ld e, e                                       ; $7cf4: $5b
    db $dd                                        ; $7cf5: $dd
    ld l, h                                       ; $7cf6: $6c
    rlca                                          ; $7cf7: $07
    scf                                           ; $7cf8: $37
    ld b, a                                       ; $7cf9: $47
    sbc [hl]                                      ; $7cfa: $9e
    push de                                       ; $7cfb: $d5
    jr z, jr_070_7d51                             ; $7cfc: $28 $53

    ld c, b                                       ; $7cfe: $48
    sbc e                                         ; $7cff: $9b
    ld d, h                                       ; $7d00: $54
    ld h, l                                       ; $7d01: $65
    jp nc, $4686                                  ; $7d02: $d2 $86 $46

    ld h, l                                       ; $7d05: $65
    adc [hl]                                      ; $7d06: $8e
    call nc, $f67a                                ; $7d07: $d4 $7a $f6
    inc hl                                        ; $7d0a: $23
    ld b, h                                       ; $7d0b: $44
    db $ec                                        ; $7d0c: $ec
    sub a                                         ; $7d0d: $97
    ld a, d                                       ; $7d0e: $7a
    dec c                                         ; $7d0f: $0d
    add hl, sp                                    ; $7d10: $39
    ld [hl-], a                                   ; $7d11: $32
    ei                                            ; $7d12: $fb
    jp hl                                         ; $7d13: $e9


    sub h                                         ; $7d14: $94
    ld a, [de]                                    ; $7d15: $1a
    sbc $6d                                       ; $7d16: $de $6d
    dec hl                                        ; $7d18: $2b
    ld c, [hl]                                    ; $7d19: $4e
    dec a                                         ; $7d1a: $3d
    ld a, e                                       ; $7d1b: $7b
    ld h, d                                       ; $7d1c: $62
    and [hl]                                      ; $7d1d: $a6
    adc l                                         ; $7d1e: $8d
    ld l, $0f                                     ; $7d1f: $2e $0f
    ld c, a                                       ; $7d21: $4f
    ld b, c                                       ; $7d22: $41
    and a                                         ; $7d23: $a7
    ld d, a                                       ; $7d24: $57
    or $24                                        ; $7d25: $f6 $24
    ld h, h                                       ; $7d27: $64

jr_070_7d28:
    dec a                                         ; $7d28: $3d
    ld a, e                                       ; $7d29: $7b
    ld h, l                                       ; $7d2a: $65
    halt                                          ; $7d2b: $76
    jp z, Jump_000_1935                           ; $7d2c: $ca $35 $19

    ld a, [hl]                                    ; $7d2f: $7e
    adc h                                         ; $7d30: $8c
    ld e, d                                       ; $7d31: $5a
    rst $08                                       ; $7d32: $cf
    ld e, [hl]                                    ; $7d33: $5e
    add c                                         ; $7d34: $81
    ld b, l                                       ; $7d35: $45
    ld l, b                                       ; $7d36: $68
    dec a                                         ; $7d37: $3d
    ei                                            ; $7d38: $fb
    sub [hl]                                      ; $7d39: $96
    and l                                         ; $7d3a: $a5
    ld e, e                                       ; $7d3b: $5b
    and e                                         ; $7d3c: $a3
    adc l                                         ; $7d3d: $8d
    ld [hl], h                                    ; $7d3e: $74
    ld c, l                                       ; $7d3f: $4d
    ld c, $cd                                     ; $7d40: $0e $cd
    di                                            ; $7d42: $f3
    ld b, a                                       ; $7d43: $47
    push hl                                       ; $7d44: $e5
    jr c, jr_070_7d28                             ; $7d45: $38 $e1

    jp z, $f8b8                                   ; $7d47: $ca $b8 $f8

    dec sp                                        ; $7d4a: $3b
    push af                                       ; $7d4b: $f5
    xor h                                         ; $7d4c: $ac
    add h                                         ; $7d4d: $84
    ld b, l                                       ; $7d4e: $45
    ld l, b                                       ; $7d4f: $68
    db $fd                                        ; $7d50: $fd

jr_070_7d51:
    jp nc, $f270                                  ; $7d51: $d2 $70 $f2

    db $dd                                        ; $7d54: $dd
    ld a, a                                       ; $7d55: $7f
    xor $db                                       ; $7d56: $ee $db
    ld bc, $4737                                  ; $7d58: $01 $37 $47
    sbc [hl]                                      ; $7d5b: $9e
    dec [hl]                                      ; $7d5c: $35
    db $e4                                        ; $7d5d: $e4
    ld l, c                                       ; $7d5e: $69
    ld d, d                                       ; $7d5f: $52
    or c                                          ; $7d60: $b1
    sbc a                                         ; $7d61: $9f
    sub d                                         ; $7d62: $92
    add e                                         ; $7d63: $83
    or $84                                        ; $7d64: $f6 $84
    ld a, l                                       ; $7d66: $7d
    ld h, l                                       ; $7d67: $65
    ld sp, $21b4                                  ; $7d68: $31 $b4 $21
    inc c                                         ; $7d6b: $0c
    sbc l                                         ; $7d6c: $9d
    and $f9                                       ; $7d6d: $e6 $f9
    ld c, a                                       ; $7d6f: $4f
    pop hl                                        ; $7d70: $e1
    sub $69                                       ; $7d71: $d6 $69
    ld c, d                                       ; $7d73: $4a
    sub l                                         ; $7d74: $95
    ld [hl], b                                    ; $7d75: $70
    and e                                         ; $7d76: $a3
    ld d, e                                       ; $7d77: $53

jr_070_7d78:
    rst $08                                       ; $7d78: $cf
    ld e, [hl]                                    ; $7d79: $5e
    push bc                                       ; $7d7a: $c5
    ret                                           ; $7d7b: $c9


    sub [hl]                                      ; $7d7c: $96
    rla                                           ; $7d7d: $17
    db $f4                                        ; $7d7e: $f4
    and e                                         ; $7d7f: $a3
    ld sp, $2d21                                  ; $7d80: $31 $21 $2d
    adc $a5                                       ; $7d83: $ce $a5
    ld e, [hl]                                    ; $7d85: $5e
    ld c, a                                       ; $7d86: $4f
    ld b, $c7                                     ; $7d87: $06 $c7
    inc e                                         ; $7d89: $1c
    reti                                          ; $7d8a: $d9


    ld [hl], b                                    ; $7d8b: $70
    xor h                                         ; $7d8c: $ac
    ld [hl], d                                    ; $7d8d: $72
    ld d, [hl]                                    ; $7d8e: $56
    sub [hl]                                      ; $7d8f: $96
    res 3, a                                      ; $7d90: $cb $9f
    ld h, l                                       ; $7d92: $65
    cp c                                          ; $7d93: $b9
    jr nz, jr_070_7dfe                            ; $7d94: $20 $68

    ld [hl], d                                    ; $7d96: $72
    ld l, b                                       ; $7d97: $68
    sbc [hl]                                      ; $7d98: $9e
    ccf                                           ; $7d99: $3f
    ld a, [hl+]                                   ; $7d9a: $2a
    rst $00                                       ; $7d9b: $c7
    add hl, bc                                    ; $7d9c: $09
    ld d, a                                       ; $7d9d: $57
    add $c5                                       ; $7d9e: $c6 $c5
    rst $18                                       ; $7da0: $df
    xor c                                         ; $7da1: $a9
    ld h, a                                       ; $7da2: $67
    dec h                                         ; $7da3: $25
    inc l                                         ; $7da4: $2c
    ld b, d                                       ; $7da5: $42
    ld c, e                                       ; $7da6: $4b
    adc l                                         ; $7da7: $8d
    pop bc                                        ; $7da8: $c1
    push bc                                       ; $7da9: $c5
    ld l, c                                       ; $7daa: $69
    inc c                                         ; $7dab: $0c
    push af                                       ; $7dac: $f5
    ld c, e                                       ; $7dad: $4b
    jp Jump_070_77c9                              ; $7dae: $c3 $c9 $77


    rst $38                                       ; $7db1: $ff
    cp c                                          ; $7db2: $b9
    scf                                           ; $7db3: $37
    ld c, a                                       ; $7db4: $4f
    xor a                                         ; $7db5: $af
    db $ec                                        ; $7db6: $ec
    ld c, c                                       ; $7db7: $49
    ret z                                         ; $7db8: $c8

    ld a, d                                       ; $7db9: $7a
    or $ca                                        ; $7dba: $f6 $ca
    db $ec                                        ; $7dbc: $ec
    sub h                                         ; $7dbd: $94
    ld l, e                                       ; $7dbe: $6b
    ld [hl-], a                                   ; $7dbf: $32
    db $fc                                        ; $7dc0: $fc
    jr jr_070_7d78                                ; $7dc1: $18 $b5

    sbc [hl]                                      ; $7dc3: $9e
    cp l                                          ; $7dc4: $bd
    ld [bc], a                                    ; $7dc5: $02
    adc e                                         ; $7dc6: $8b
    ret nc                                        ; $7dc7: $d0

    ld a, d                                       ; $7dc8: $7a
    or $2d                                        ; $7dc9: $f6 $2d
    ld c, e                                       ; $7dcb: $4b
    or a                                          ; $7dcc: $b7
    ld b, [hl]                                    ; $7dcd: $46
    or a                                          ; $7dce: $b7
    inc bc                                        ; $7dcf: $03
    scf                                           ; $7dd0: $37
    ld b, a                                       ; $7dd1: $47
    sbc [hl]                                      ; $7dd2: $9e
    push de                                       ; $7dd3: $d5
    jr z, jr_070_7de7                             ; $7dd4: $28 $11

    add $64                                       ; $7dd6: $c6 $64
    sub e                                         ; $7dd8: $93
    ld a, [$98d1]                                 ; $7dd9: $fa $d1 $98
    sub b                                         ; $7ddc: $90
    ld d, $a7                                     ; $7ddd: $16 $a7
    xor h                                         ; $7ddf: $ac
    ld b, e                                       ; $7de0: $43
    adc [hl]                                      ; $7de1: $8e
    db $fc                                        ; $7de2: $fc
    or e                                          ; $7de3: $b3
    ld d, a                                       ; $7de4: $57
    ld [hl], c                                    ; $7de5: $71
    or d                                          ; $7de6: $b2

jr_070_7de7:
    push hl                                       ; $7de7: $e5
    cp e                                          ; $7de8: $bb
    ld c, a                                       ; $7de9: $4f
    ld a, $b1                                     ; $7dea: $3e $b1
    sbc [hl]                                      ; $7dec: $9e
    dec c                                         ; $7ded: $0d
    ld l, l                                       ; $7dee: $6d
    add h                                         ; $7def: $84
    dec sp                                        ; $7df0: $3b
    dec e                                         ; $7df1: $1d
    ld [hl], h                                    ; $7df2: $74
    db $eb                                        ; $7df3: $eb
    rst $00                                       ; $7df4: $c7
    jp nz, $82ff                                  ; $7df5: $c2 $ff $82

    ld h, e                                       ; $7df8: $63
    adc [hl]                                      ; $7df9: $8e
    inc d                                         ; $7dfa: $14
    inc [hl]                                      ; $7dfb: $34
    rst $38                                       ; $7dfc: $ff
    ld c, [hl]                                    ; $7dfd: $4e

jr_070_7dfe:
    push bc                                       ; $7dfe: $c5
    pop bc                                        ; $7dff: $c1
    sub l                                         ; $7e00: $95
    sub e                                         ; $7e01: $93
    ld a, c                                       ; $7e02: $79
    db $eb                                        ; $7e03: $eb
    ld [hl], a                                    ; $7e04: $77
    jp z, $8d1c                                   ; $7e05: $ca $1c $8d

    and l                                         ; $7e08: $a5
    ld b, [hl]                                    ; $7e09: $46
    sub [hl]                                      ; $7e0a: $96
    ld a, a                                       ; $7e0b: $7f
    and $38                                       ; $7e0c: $e6 $38
    ld h, l                                       ; $7e0e: $65
    pop de                                        ; $7e0f: $d1
    inc a                                         ; $7e10: $3c
    ld a, a                                       ; $7e11: $7f
    ld d, h                                       ; $7e12: $54
    adc [hl]                                      ; $7e13: $8e
    inc de                                        ; $7e14: $13
    xor [hl]                                      ; $7e15: $ae
    adc h                                         ; $7e16: $8c
    adc e                                         ; $7e17: $8b
    cp a                                          ; $7e18: $bf
    ld d, e                                       ; $7e19: $53
    rst $08                                       ; $7e1a: $cf
    ld c, d                                       ; $7e1b: $4a
    ld e, b                                       ; $7e1c: $58
    add h                                         ; $7e1d: $84
    sub $2f                                       ; $7e1e: $d6 $2f
    dec c                                         ; $7e20: $0d
    daa                                           ; $7e21: $27
    rst $18                                       ; $7e22: $df
    db $fd                                        ; $7e23: $fd
    rst $20                                       ; $7e24: $e7
    sbc $3c                                       ; $7e25: $de $3c
    cp l                                          ; $7e27: $bd
    or d                                          ; $7e28: $b2
    daa                                           ; $7e29: $27
    ld hl, $d9eb                                  ; $7e2a: $21 $eb $d9
    dec hl                                        ; $7e2d: $2b
    or e                                          ; $7e2e: $b3
    ld d, e                                       ; $7e2f: $53
    xor [hl]                                      ; $7e30: $ae
    ret                                           ; $7e31: $c9


    ldh a, [$63]                                  ; $7e32: $f0 $63
    call nc, $f67a                                ; $7e34: $d4 $7a $f6
    ld a, [bc]                                    ; $7e37: $0a
    inc l                                         ; $7e38: $2c
    ld b, d                                       ; $7e39: $42
    db $eb                                        ; $7e3a: $eb
    reti                                          ; $7e3b: $d9


    or a                                          ; $7e3c: $b7
    inc l                                         ; $7e3d: $2c
    db $dd                                        ; $7e3e: $dd
    ld a, [de]                                    ; $7e3f: $1a
    db $dd                                        ; $7e40: $dd
    ld c, $37                                     ; $7e41: $0e $37
    ld b, a                                       ; $7e43: $47
    sbc [hl]                                      ; $7e44: $9e
    ld d, l                                       ; $7e45: $55
    adc d                                         ; $7e46: $8a
    ld a, c                                       ; $7e47: $79
    sbc d                                         ; $7e48: $9a
    call nc, $1b3b                                ; $7e49: $d4 $3b $1b
    rst $00                                       ; $7e4c: $c7
    adc h                                         ; $7e4d: $8c
    sub l                                         ; $7e4e: $95
    db $e3                                        ; $7e4f: $e3
    ld a, [$98d1]                                 ; $7e50: $fa $d1 $98
    sub b                                         ; $7e53: $90
    ld d, $a7                                     ; $7e54: $16 $a7
    xor h                                         ; $7e56: $ac
    and a                                         ; $7e57: $a7
    ld a, [c]                                     ; $7e58: $f2
    ld a, e                                       ; $7e59: $7b
    inc [hl]                                      ; $7e5a: $34
    sub b                                         ; $7e5b: $90
    ld e, b                                       ; $7e5c: $58
    xor $ac                                       ; $7e5d: $ee $ac
    ld [$d117], sp                                ; $7e5f: $08 $17 $d1
    db $e4                                        ; $7e62: $e4
    ret nc                                        ; $7e63: $d0

    rst $38                                       ; $7e64: $ff
    jp nz, $ae89                                  ; $7e65: $c2 $89 $ae

    jp z, Jump_000_3253                           ; $7e68: $ca $53 $32

    ld e, h                                       ; $7e6b: $5c
    ld [$7de5], a                                 ; $7e6c: $ea $e5 $7d
    db $fd                                        ; $7e6f: $fd
    rla                                           ; $7e70: $17
    db $fc                                        ; $7e71: $fc
    ld [$1ffa], sp                                ; $7e72: $08 $fa $1f
    ld a, c                                       ; $7e75: $79
    ld d, [hl]                                    ; $7e76: $56
    ld h, l                                       ; $7e77: $65
    ld [hl], a                                    ; $7e78: $77
    ld a, [hl-]                                   ; $7e79: $3a
    and c                                         ; $7e7a: $a1
    and c                                         ; $7e7b: $a1
    sbc [hl]                                      ; $7e7c: $9e
    dec c                                         ; $7e7d: $0d
    inc h                                         ; $7e7e: $24
    ld [hl], $39                                  ; $7e7f: $36 $39
    inc [hl]                                      ; $7e81: $34
    rst $08                                       ; $7e82: $cf
    rra                                           ; $7e83: $1f
    sub l                                         ; $7e84: $95
    db $e3                                        ; $7e85: $e3
    add h                                         ; $7e86: $84
    dec hl                                        ; $7e87: $2b
    db $e3                                        ; $7e88: $e3
    ld [c], a                                     ; $7e89: $e2
    rst $28                                       ; $7e8a: $ef
    call nc, $12b3                                ; $7e8b: $d4 $b3 $12
    ld d, $a1                                     ; $7e8e: $16 $a1
    and l                                         ; $7e90: $a5
    ld b, [hl]                                    ; $7e91: $46
    ld e, b                                       ; $7e92: $58
    ld [hl], b                                    ; $7e93: $70
    db $fd                                        ; $7e94: $fd
    jp nc, $f270                                  ; $7e95: $d2 $70 $f2

    db $dd                                        ; $7e98: $dd
    ld a, a                                       ; $7e99: $7f
    xor $cd                                       ; $7e9a: $ee $cd
    db $d3                                        ; $7e9c: $d3
    dec hl                                        ; $7e9d: $2b
    ld a, e                                       ; $7e9e: $7b
    ld [de], a                                    ; $7e9f: $12
    or d                                          ; $7ea0: $b2
    sbc [hl]                                      ; $7ea1: $9e
    cp l                                          ; $7ea2: $bd
    ld [hl-], a                                   ; $7ea3: $32
    dec sp                                        ; $7ea4: $3b

Jump_070_7ea5:
    push hl                                       ; $7ea5: $e5
    sbc d                                         ; $7ea6: $9a
    inc c                                         ; $7ea7: $0c
    ccf                                           ; $7ea8: $3f
    ld b, [hl]                                    ; $7ea9: $46
    xor l                                         ; $7eaa: $ad
    ld h, a                                       ; $7eab: $67
    xor a                                         ; $7eac: $af
    ret nz                                        ; $7ead: $c0

    ld [hl+], a                                   ; $7eae: $22
    or h                                          ; $7eaf: $b4
    sbc [hl]                                      ; $7eb0: $9e
    ld a, l                                       ; $7eb1: $7d
    set 2, d                                      ; $7eb2: $cb $d2
    xor l                                         ; $7eb4: $ad
    pop de                                        ; $7eb5: $d1
    add [hl]                                      ; $7eb6: $86
    call c, $8751                                 ; $7eb7: $dc $51 $87
    inc l                                         ; $7eba: $2c
    cp $dd                                        ; $7ebb: $fe $dd
    ld c, $37                                     ; $7ebd: $0e $37
    ld b, a                                       ; $7ebf: $47
    sbc [hl]                                      ; $7ec0: $9e
    ld d, l                                       ; $7ec1: $55
    ld b, a                                       ; $7ec2: $47
    ld l, b                                       ; $7ec3: $68
    db $fc                                        ; $7ec4: $fc
    xor a                                         ; $7ec5: $af
    ccf                                           ; $7ec6: $3f
    ld d, e                                       ; $7ec7: $53
    rst $28                                       ; $7ec8: $ef
    db $ec                                        ; $7ec9: $ec

Jump_070_7eca:
    dec sp                                        ; $7eca: $3b
    ei                                            ; $7ecb: $fb
    jr jr_070_7f03                                ; $7ecc: $18 $35

    and d                                         ; $7ece: $a2
    rst $10                                       ; $7ecf: $d7
    ld l, l                                       ; $7ed0: $6d
    sub [hl]                                      ; $7ed1: $96
    ld [hl], b                                    ; $7ed2: $70
    ld a, c                                       ; $7ed3: $79
    sub h                                         ; $7ed4: $94
    ld h, l                                       ; $7ed5: $65
    sub [hl]                                      ; $7ed6: $96
    sub e                                         ; $7ed7: $93
    and e                                         ; $7ed8: $a3
    ld c, l                                       ; $7ed9: $4d
    ld [$e534], a                                 ; $7eda: $ea $34 $e5
    dec h                                         ; $7edd: $25
    rst $28                                       ; $7ede: $ef
    or c                                          ; $7edf: $b1
    cp h                                          ; $7ee0: $bc
    and [hl]                                      ; $7ee1: $a6
    ld [hl+], a                                   ; $7ee2: $22
    jp c, $73f2                                   ; $7ee3: $da $f2 $73

    xor c                                         ; $7ee6: $a9
    rra                                           ; $7ee7: $1f
    rst $30                                       ; $7ee8: $f7
    jp z, $849e                                   ; $7ee9: $ca $9e $84

    xor h                                         ; $7eec: $ac
    ld h, a                                       ; $7eed: $67
    xor a                                         ; $7eee: $af
    call z, $b94e                                 ; $7eef: $cc $4e $b9
    ld h, $c3                                     ; $7ef2: $26 $c3
    adc a                                         ; $7ef4: $8f
    ld d, c                                       ; $7ef5: $51
    db $eb                                        ; $7ef6: $eb
    reti                                          ; $7ef7: $d9


    dec hl                                        ; $7ef8: $2b
    or b                                          ; $7ef9: $b0
    ld [$67ad], sp                                ; $7efa: $08 $ad $67
    rst $18                                       ; $7efd: $df
    or d                                          ; $7efe: $b2
    ld [hl], h                                    ; $7eff: $74
    ld l, e                                       ; $7f00: $6b
    or h                                          ; $7f01: $b4
    ret z                                         ; $7f02: $c8

jr_070_7f03:
    add hl, hl                                    ; $7f03: $29
    res 0, l                                      ; $7f04: $cb $85
    ld b, $12                                     ; $7f06: $06 $12
    sbc e                                         ; $7f08: $9b
    inc e                                         ; $7f09: $1c
    sbc d                                         ; $7f0a: $9a
    rst $20                                       ; $7f0b: $e7
    adc a                                         ; $7f0c: $8f
    jp z, $c271                                   ; $7f0d: $ca $71 $c2

    sub l                                         ; $7f10: $95
    ld [hl], c                                    ; $7f11: $71
    pop af                                        ; $7f12: $f1
    ld [hl], a                                    ; $7f13: $77
    ld [$0959], a                                 ; $7f14: $ea $59 $09
    adc e                                         ; $7f17: $8b
    ret nc                                        ; $7f18: $d0

    ld d, d                                       ; $7f19: $52
    ld h, e                                       ; $7f1a: $63
    ld [hl], b                                    ; $7f1b: $70
    db $fd                                        ; $7f1c: $fd
    jp nc, $f270                                  ; $7f1d: $d2 $70 $f2

    db $dd                                        ; $7f20: $dd
    ld a, a                                       ; $7f21: $7f
    xor $db                                       ; $7f22: $ee $db
    ld bc, $fb97                                  ; $7f24: $01 $97 $fb
    xor [hl]                                      ; $7f27: $ae
    dec l                                         ; $7f28: $2d
    pop de                                        ; $7f29: $d1
    jp z, $d8f7                                   ; $7f2a: $ca $f7 $d8

    ld b, d                                       ; $7f2d: $42
    rst $38                                       ; $7f2e: $ff
    call z, $a992                                 ; $7f2f: $cc $92 $a9
    add sp, $67                                   ; $7f32: $e8 $67
    cp b                                          ; $7f34: $b8
    adc b                                         ; $7f35: $88
    ld a, d                                       ; $7f36: $7a
    ld l, b                                       ; $7f37: $68
    xor a                                         ; $7f38: $af
    ld b, b                                       ; $7f39: $40
    and c                                         ; $7f3a: $a1
    sub a                                         ; $7f3b: $97
    ld a, d                                       ; $7f3c: $7a
    cp c                                          ; $7f3d: $b9
    jp z, $3a40                                   ; $7f3e: $ca $40 $3a

    bit 6, d                                      ; $7f41: $cb $72
    and c                                         ; $7f43: $a1
    sbc [hl]                                      ; $7f44: $9e
    db $fd                                        ; $7f45: $fd
    xor a                                         ; $7f46: $af
    ld a, b                                       ; $7f47: $78
    adc a                                         ; $7f48: $8f
    dec l                                         ; $7f49: $2d
    ld l, b                                       ; $7f4a: $68
    dec a                                         ; $7f4b: $3d
    ld a, d                                       ; $7f4c: $7a
    ld h, e                                       ; $7f4d: $63
    or d                                          ; $7f4e: $b2
    jp nc, Jump_070_4656                          ; $7f4f: $d2 $56 $46

    xor c                                         ; $7f52: $a9
    ld sp, $81b8                                  ; $7f53: $31 $b8 $81
    ld b, h                                       ; $7f56: $44
    and c                                         ; $7f57: $a1
    pop bc                                        ; $7f58: $c1
    db $e3                                        ; $7f59: $e3
    ld d, d                                       ; $7f5a: $52
    rst $18                                       ; $7f5b: $df
    ld c, [hl]                                    ; $7f5c: $4e
    ld c, [hl]                                    ; $7f5d: $4e
    cp b                                          ; $7f5e: $b8
    db $d3                                        ; $7f5f: $d3
    adc a                                         ; $7f60: $8f
    or c                                          ; $7f61: $b1
    cp e                                          ; $7f62: $bb
    sbc b                                         ; $7f63: $98
    push af                                       ; $7f64: $f5
    pop bc                                        ; $7f65: $c1
    ld b, l                                       ; $7f66: $45
    dec e                                         ; $7f67: $1d
    ld [hl], a                                    ; $7f68: $77
    pop af                                        ; $7f69: $f1
    ld e, b                                       ; $7f6a: $58
    xor a                                         ; $7f6b: $af
    ret nz                                        ; $7f6c: $c0

    ld [hl+], a                                   ; $7f6d: $22
    ld [$b7d9], a                                 ; $7f6e: $ea $d9 $b7
    inc l                                         ; $7f71: $2c
    db $dd                                        ; $7f72: $dd
    add d                                         ; $7f73: $82
    sub [hl]                                      ; $7f74: $96
    ld a, l                                       ; $7f75: $7d
    set 2, d                                      ; $7f76: $cb $d2
    xor l                                         ; $7f78: $ad
    pop de                                        ; $7f79: $d1
    cp [hl]                                       ; $7f7a: $be
    inc bc                                        ; $7f7b: $03
    scf                                           ; $7f7c: $37
    ld a, [hl-]                                   ; $7f7d: $3a
    ld e, d                                       ; $7f7e: $5a
    rst $08                                       ; $7f7f: $cf
    add $f1                                       ; $7f80: $c6 $f1
    ret nc                                        ; $7f82: $d0

    ld l, [hl]                                    ; $7f83: $6e
    db $db                                        ; $7f84: $db
    ld d, [hl]                                    ; $7f85: $56
    ld d, h                                       ; $7f86: $54
    jp nz, $ea22                                  ; $7f87: $c2 $22 $ea

    reti                                          ; $7f8a: $d9


    xor e                                         ; $7f8b: $ab
    jr nc, @-$03                                  ; $7f8c: $30 $fb

    xor c                                         ; $7f8e: $a9
    rst $10                                       ; $7f8f: $d7
    daa                                           ; $7f90: $27
    ld b, [hl]                                    ; $7f91: $46
    jp c, $03a5                                   ; $7f92: $da $a5 $03

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
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff

Jump_070_7fc9:
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff

Jump_070_7fce:
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
