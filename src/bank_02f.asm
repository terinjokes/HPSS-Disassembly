; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    cpl                                           ; $4000: $2f
    ld b, a                                       ; $4001: $47
    adc d                                         ; $4002: $8a
    db $fd                                        ; $4003: $fd
    inc a                                         ; $4004: $3c
    sub d                                         ; $4005: $92
    dec hl                                        ; $4006: $2b
    or [hl]                                       ; $4007: $b6
    rrca                                          ; $4008: $0f
    ld c, b                                       ; $4009: $48
    ret                                           ; $400a: $c9


    dec e                                         ; $400b: $1d
    push de                                       ; $400c: $d5
    ld l, c                                       ; $400d: $69
    ld b, a                                       ; $400e: $47
    sbc l                                         ; $400f: $9d
    cp b                                          ; $4010: $b8
    adc [hl]                                      ; $4011: $8e
    daa                                           ; $4012: $27
    sbc h                                         ; $4013: $9c
    halt                                          ; $4014: $76
    ld [$fdb8], a                                 ; $4015: $ea $b8 $fd
    ld e, b                                       ; $4018: $58
    or c                                          ; $4019: $b1
    sbc l                                         ; $401a: $9d
    ld [hl], d                                    ; $401b: $72
    dec bc                                        ; $401c: $0b
    add hl, sp                                    ; $401d: $39
    and e                                         ; $401e: $a3
    db $e4                                        ; $401f: $e4
    ld [bc], a                                    ; $4020: $02
    sub a                                         ; $4021: $97
    xor l                                         ; $4022: $ad
    ld a, l                                       ; $4023: $7d
    xor l                                         ; $4024: $ad
    cp d                                          ; $4025: $ba
    ld e, e                                       ; $4026: $5b
    ld a, [bc]                                    ; $4027: $0a
    ld b, d                                       ; $4028: $42
    ld sp, hl                                     ; $4029: $f9
    ld a, [$73ea]                                 ; $402a: $fa $ea $73
    call $4fc3                                    ; $402d: $cd $c3 $4f
    ld sp, $55ae                                  ; $4030: $31 $ae $55
    rrca                                          ; $4033: $0f
    ld a, a                                       ; $4034: $7f
    xor h                                         ; $4035: $ac
    ld a, c                                       ; $4036: $79
    ldh [$2b], a                                  ; $4037: $e0 $2b
    or [hl]                                       ; $4039: $b6
    jp z, $de30                                   ; $403a: $ca $30 $de

    rst $08                                       ; $403d: $cf
    ld [hl], a                                    ; $403e: $77
    inc d                                         ; $403f: $14
    xor l                                         ; $4040: $ad
    ld [hl-], a                                   ; $4041: $32
    db $fc                                        ; $4042: $fc
    and h                                         ; $4043: $a4
    ld l, a                                       ; $4044: $6f
    sbc a                                         ; $4045: $9f
    sub d                                         ; $4046: $92
    inc sp                                        ; $4047: $33
    jr @+$81                                      ; $4048: $18 $7f

    ld c, [hl]                                    ; $404a: $4e
    rrca                                          ; $404b: $0f
    dec a                                         ; $404c: $3d
    ld l, a                                       ; $404d: $6f
    ld bc, $b5f5                                  ; $404e: $01 $f5 $b5
    db $30, $8c                                   ; $4051: $30 $8c
    ld h, l                                       ; $4053: $65
    ldh [$8e], a                                  ; $4054: $e0 $8e
    ld h, l                                       ; $4056: $65
    dec [hl]                                      ; $4057: $35
    or e                                          ; $4058: $b3
    ld h, l                                       ; $4059: $65
    ld b, b                                       ; $405a: $40
    dec h                                         ; $405b: $25
    inc bc                                        ; $405c: $03
    ld [hl], a                                    ; $405d: $77
    ld hl, sp+$6b                                 ; $405e: $f8 $6b
    call z, Call_000_1787                         ; $4060: $cc $87 $17
    and $79                                       ; $4063: $e6 $79
    cp [hl]                                       ; $4065: $be
    ld l, h                                       ; $4066: $6c
    xor l                                         ; $4067: $ad
    call c, $a70d                                 ; $4068: $dc $0d $a7
    ld c, a                                       ; $406b: $4f
    ld a, [$f21c]                                 ; $406c: $fa $1c $f2
    ld d, $87                                     ; $406f: $16 $87
    sub a                                         ; $4071: $97
    and d                                         ; $4072: $a2
    di                                            ; $4073: $f3
    sub e                                         ; $4074: $93
    or e                                          ; $4075: $b3
    ld d, d                                       ; $4076: $52
    ld [hl], h                                    ; $4077: $74
    ld a, [hl]                                    ; $4078: $7e
    ld [hl], d                                    ; $4079: $72
    pop af                                        ; $407a: $f1
    sbc h                                         ; $407b: $9c
    ld [hl], h                                    ; $407c: $74
    cp $f8                                        ; $407d: $fe $f8
    ei                                            ; $407f: $fb
    ld d, a                                       ; $4080: $57
    sbc $02                                       ; $4081: $de $02
    daa                                           ; $4083: $27
    ld l, b                                       ; $4084: $68
    call z, Call_02f_52c3                         ; $4085: $cc $c3 $52
    and a                                         ; $4088: $a7
    ld [hl], $b1                                  ; $4089: $36 $b1
    dec b                                         ; $408b: $05
    daa                                           ; $408c: $27

Call_02f_408d:
    db $fd                                        ; $408d: $fd
    and l                                         ; $408e: $a5
    dec c                                         ; $408f: $0d
    ld l, c                                       ; $4090: $69
    ldh a, [$b5]                                  ; $4091: $f0 $b5
    ld b, [hl]                                    ; $4093: $46
    add h                                         ; $4094: $84
    and h                                         ; $4095: $a4
    and l                                         ; $4096: $a5
    xor h                                         ; $4097: $ac
    jr jr_02f_40f1                                ; $4098: $18 $57

    ld [hl], d                                    ; $409a: $72
    dec e                                         ; $409b: $1d
    rra                                           ; $409c: $1f
    sub c                                         ; $409d: $91
    cp h                                          ; $409e: $bc
    or $d0                                        ; $409f: $f6 $d0
    ld h, l                                       ; $40a1: $65
    xor c                                         ; $40a2: $a9
    ret c                                         ; $40a3: $d8

    sbc b                                         ; $40a4: $98
    rlca                                          ; $40a5: $07
    or c                                          ; $40a6: $b1
    db $eb                                        ; $40a7: $eb
    push af                                       ; $40a8: $f5
    ld b, b                                       ; $40a9: $40
    ld [hl], d                                    ; $40aa: $72
    ld e, e                                       ; $40ab: $5b
    ld a, a                                       ; $40ac: $7f
    ld l, e                                       ; $40ad: $6b
    ld e, $7e                                     ; $40ae: $1e $7e
    adc d                                         ; $40b0: $8a
    ld a, h                                       ; $40b1: $7c
    ld b, a                                       ; $40b2: $47
    pop de                                        ; $40b3: $d1
    ld a, [hl+]                                   ; $40b4: $2a
    jp $fa4f                                      ; $40b5: $c3 $4f $fa


    or $29                                        ; $40b8: $f6 $29
    add hl, sp                                    ; $40ba: $39
    rla                                           ; $40bb: $17
    dec a                                         ; $40bc: $3d
    ldh a, [$af]                                  ; $40bd: $f0 $af
    di                                            ; $40bf: $f3
    rst $00                                       ; $40c0: $c7
    inc a                                         ; $40c1: $3c
    adc b                                         ; $40c2: $88
    ld e, l                                       ; $40c3: $5d
    rrca                                          ; $40c4: $0f
    ld l, $b6                                     ; $40c5: $2e $b6
    cp h                                          ; $40c7: $bc
    ld [hl], $b1                                  ; $40c8: $36 $b1
    dec b                                         ; $40ca: $05
    rst $00                                       ; $40cb: $c7
    sub l                                         ; $40cc: $95
    ld e, b                                       ; $40cd: $58
    cp h                                          ; $40ce: $bc
    ld c, a                                       ; $40cf: $4f
    and e                                         ; $40d0: $a3
    rlca                                          ; $40d1: $07
    reti                                          ; $40d2: $d9


    rrca                                          ; $40d3: $0f
    inc a                                         ; $40d4: $3c
    add [hl]                                      ; $40d5: $86
    rla                                           ; $40d6: $17
    sub $1e                                       ; $40d7: $d6 $1e
    cp d                                          ; $40d9: $ba
    ld a, [$d7da]                                 ; $40da: $fa $da $d7
    adc d                                         ; $40dd: $8a
    ld h, d                                       ; $40de: $62
    call z, Call_02f_58c3                         ; $40df: $cc $c3 $58
    ld h, e                                       ; $40e2: $63
    sub c                                         ; $40e3: $91
    or a                                          ; $40e4: $b7
    and a                                         ; $40e5: $a7
    ccf                                           ; $40e6: $3f
    adc b                                         ; $40e7: $88
    ld a, l                                       ; $40e8: $7d
    xor l                                         ; $40e9: $ad
    cp d                                          ; $40ea: $ba
    rst $18                                       ; $40eb: $df
    ld l, $b6                                     ; $40ec: $2e $b6
    dec [hl]                                      ; $40ee: $35
    adc l                                         ; $40ef: $8d
    ld e, h                                       ; $40f0: $5c

jr_02f_40f1:
    rst $20                                       ; $40f1: $e7
    xor a                                         ; $40f2: $af
    or c                                          ; $40f3: $b1
    ret z                                         ; $40f4: $c8

    ld e, e                                       ; $40f5: $5b
    push af                                       ; $40f6: $f5
    dec [hl]                                      ; $40f7: $35
    and $41                                       ; $40f8: $e6 $41
    adc h                                         ; $40fa: $8c
    db $fc                                        ; $40fb: $fc
    ld bc, $3723                                  ; $40fc: $01 $23 $37
    xor h                                         ; $40ff: $ac
    ld c, l                                       ; $4100: $4d
    ld l, h                                       ; $4101: $6c
    ld bc, $5a59                                  ; $4102: $01 $59 $5a
    ret z                                         ; $4105: $c8

    ld l, l                                       ; $4106: $6d
    ld c, l                                       ; $4107: $4d
    add c                                         ; $4108: $81
    ld e, b                                       ; $4109: $58
    jp c, $2c2e                                   ; $410a: $da $2e $2c

    ld e, d                                       ; $410d: $5a
    ldh [$98], a                                  ; $410e: $e0 $98
    rlca                                          ; $4110: $07
    ld sp, $41e6                                  ; $4111: $31 $e6 $41
    xor h                                         ; $4114: $ac
    ld a, d                                       ; $4115: $7a
    sbc a                                         ; $4116: $9f
    ld e, h                                       ; $4117: $5c
    rst $20                                       ; $4118: $e7
    adc a                                         ; $4119: $8f
    ld e, $d0                                     ; $411a: $1e $d0
    cp b                                          ; $411c: $b8
    ld d, $80                                     ; $411d: $16 $80
    and h                                         ; $411f: $a4
    db $e4                                        ; $4120: $e4
    ld [hl-], a                                   ; $4121: $32
    add b                                         ; $4122: $80
    res 0, b                                      ; $4123: $cb $80
    add $3c                                       ; $4125: $c6 $3c
    adc b                                         ; $4127: $88
    push bc                                       ; $4128: $c5
    xor e                                         ; $4129: $ab
    pop de                                        ; $412a: $d1
    ld sp, hl                                     ; $412b: $f9
    ld a, c                                       ; $412c: $79
    dec bc                                        ; $412d: $0b
    push af                                       ; $412e: $f5
    or l                                          ; $412f: $b5
    ld a, a                                       ; $4130: $7f
    scf                                           ; $4131: $37
    inc e                                         ; $4132: $1c
    inc bc                                        ; $4133: $03
    ld l, e                                       ; $4134: $6b
    db $e4                                        ; $4135: $e4
    pop af                                        ; $4136: $f1
    cp $57                                        ; $4137: $fe $57
    ld [hl], d                                    ; $4139: $72
    adc l                                         ; $413a: $8d
    cp a                                          ; $413b: $bf
    or h                                          ; $413c: $b4
    ld [hl+], a                                   ; $413d: $22
    inc b                                         ; $413e: $04
    sbc [hl]                                      ; $413f: $9e
    or a                                          ; $4140: $b7
    dec e                                         ; $4141: $1d
    ld e, $ee                                     ; $4142: $1e $ee
    cp a                                          ; $4144: $bf
    cp a                                          ; $4145: $bf
    and [hl]                                      ; $4146: $a6
    ld b, b                                       ; $4147: $40
    inc h                                         ; $4148: $24
    ld d, a                                       ; $4149: $57
    add hl, de                                    ; $414a: $19
    add $32                                       ; $414b: $c6 $32
    and b                                         ; $414d: $a0
    sub d                                         ; $414e: $92
    add c                                         ; $414f: $81
    dec sp                                        ; $4150: $3b
    db $fc                                        ; $4151: $fc
    ld a, c                                       ; $4152: $79
    ld [hl], a                                    ; $4153: $77
    ld e, h                                       ; $4154: $5c

jr_02f_4155:
    ld l, e                                       ; $4155: $6b
    call z, Call_000_1787                         ; $4156: $cc $87 $17
    ld c, [hl]                                    ; $4159: $4e
    or h                                          ; $415a: $b4
    ld l, h                                       ; $415b: $6c
    adc l                                         ; $415c: $8d

Jump_02f_415d:
    ld de, $5e74                                  ; $415d: $11 $74 $5e
    jr jr_02f_4155                                ; $4160: $18 $f3

    ret nc                                        ; $4162: $d0

    sub a                                         ; $4163: $97
    ld bc, $75dc                                  ; $4164: $01 $dc $75
    ld d, a                                       ; $4167: $57
    ld d, b                                       ; $4168: $50
    sbc $02                                       ; $4169: $de $02
    rst $00                                       ; $416b: $c7
    sub l                                         ; $416c: $95
    ld e, b                                       ; $416d: $58
    xor d                                         ; $416e: $aa
    cp h                                          ; $416f: $bc
    inc c                                         ; $4170: $0c
    add sp, -$2d                                  ; $4171: $e8 $d3
    adc d                                         ; $4173: $8a
    halt                                          ; $4174: $76
    dec a                                         ; $4175: $3d
    ld [hl], a                                    ; $4176: $77
    db $e4                                        ; $4177: $e4
    rst $08                                       ; $4178: $cf
    di                                            ; $4179: $f3
    inc a                                         ; $417a: $3c
    ld e, a                                       ; $417b: $5f
    or $dd                                        ; $417c: $f6 $dd
    ld [hl], b                                    ; $417e: $70
    push hl                                       ; $417f: $e5
    adc [hl]                                      ; $4180: $8e
    ld d, l                                       ; $4181: $55
    db $e3                                        ; $4182: $e3
    adc d                                         ; $4183: $8a
    ret nz                                        ; $4184: $c0

    rst $30                                       ; $4185: $f7
    sub a                                         ; $4186: $97
    ld bc, $5b2d                                  ; $4187: $01 $2d $5b
    ei                                            ; $418a: $fb
    ld [hl], a                                    ; $418b: $77
    ld [hl], e                                    ; $418c: $73
    ld b, a                                       ; $418d: $47
    ld b, [hl]                                    ; $418e: $46
    ld l, [hl]                                    ; $418f: $6e

Jump_02f_4190:
    cp b                                          ; $4190: $b8
    add $62                                       ; $4191: $c6 $62
    ld [hl], l                                    ; $4193: $75
    sub $58                                       ; $4194: $d6 $58
    add h                                         ; $4196: $84
    inc a                                         ; $4197: $3c
    ld l, a                                       ; $4198: $6f
    ld bc, $0ac7                                  ; $4199: $01 $c7 $0a
    ld a, a                                       ; $419c: $7f
    db $ed                                        ; $419d: $ed
    and c                                         ; $419e: $a1
    dec sp                                        ; $419f: $3b
    add hl, de                                    ; $41a0: $19
    ld d, h                                       ; $41a1: $54
    ld [hl-], a                                   ; $41a2: $32
    and b                                         ; $41a3: $a0
    ld e, l                                       ; $41a4: $5d
    db $ec                                        ; $41a5: $ec
    rla                                           ; $41a6: $17
    ld e, d                                       ; $41a7: $5a
    ld [hl], l                                    ; $41a8: $75
    or a                                          ; $41a9: $b7
    ld e, l                                       ; $41aa: $5d
    adc a                                         ; $41ab: $8f
    push af                                       ; $41ac: $f5
    ld l, a                                       ; $41ad: $6f
    ld a, c                                       ; $41ae: $79
    dec bc                                        ; $41af: $0b
    sbc l                                         ; $41b0: $9d
    ld d, b                                       ; $41b1: $50
    ccf                                           ; $41b2: $3f
    sub d                                         ; $41b3: $92
    dec sp                                        ; $41b4: $3b
    sub $dc                                       ; $41b5: $d6 $dc
    ld l, e                                       ; $41b7: $6b
    sub $f1                                       ; $41b8: $d6 $f1
    ld de, $f3c9                                  ; $41ba: $11 $c9 $f3
    ld [hl], l                                    ; $41bd: $75
    add d                                         ; $41be: $82
    ld e, c                                       ; $41bf: $59
    xor h                                         ; $41c0: $ac
    ret c                                         ; $41c1: $d8

    ld l, $6b                                     ; $41c2: $2e $6b
    inc [hl]                                      ; $41c4: $34
    xor [hl]                                      ; $41c5: $ae
    pop de                                        ; $41c6: $d1
    ei                                            ; $41c7: $fb
    ld l, e                                       ; $41c8: $6b
    ld [$92ba], a                                 ; $41c9: $ea $ba $92
    inc de                                        ; $41cc: $13
    adc l                                         ; $41cd: $8d
    ld h, b                                       ; $41ce: $60
    ld [hl], h                                    ; $41cf: $74
    rst $10                                       ; $41d0: $d7
    ld e, a                                       ; $41d1: $5f
    ret z                                         ; $41d2: $c8

    ld h, e                                       ; $41d3: $63
    ld [$176c], a                                 ; $41d4: $ea $6c $17
    xor c                                         ; $41d7: $a9
    jp nc, $5da7                                  ; $41d8: $d2 $a7 $5d

    xor a                                         ; $41db: $af
    xor d                                         ; $41dc: $aa
    or h                                          ; $41dd: $b4
    ld [bc], a                                    ; $41de: $02
    sbc b                                         ; $41df: $98
    xor a                                         ; $41e0: $af
    cp a                                          ; $41e1: $bf
    dec [hl]                                      ; $41e2: $35
    rrca                                          ; $41e3: $0f
    ccf                                           ; $41e4: $3f
    push bc                                       ; $41e5: $c5
    cp b                                          ; $41e6: $b8
    sub $dc                                       ; $41e7: $d6 $dc
    cp [hl]                                       ; $41e9: $be
    dec d                                         ; $41ea: $15
    and h                                         ; $41eb: $a4
    db $db                                        ; $41ec: $db
    sbc d                                         ; $41ed: $9a
    rlca                                          ; $41ee: $07
    cp [hl]                                       ; $41ef: $be
    xor [hl]                                      ; $41f0: $ae
    ret                                           ; $41f1: $c9


    or l                                          ; $41f2: $b5
    ld a, b                                       ; $41f3: $78
    ld c, [hl]                                    ; $41f4: $4e
    cp b                                          ; $41f5: $b8
    ld h, d                                       ; $41f6: $62
    ei                                            ; $41f7: $fb
    add b                                         ; $41f8: $80
    sub h                                         ; $41f9: $94
    or a                                          ; $41fa: $b7
    and a                                         ; $41fb: $a7
    db $fd                                        ; $41fc: $fd
    ld sp, $e828                                  ; $41fd: $31 $28 $e8
    cp h                                          ; $4200: $bc
    ld a, [bc]                                    ; $4201: $0a
    db $fd                                        ; $4202: $fd
    and c                                         ; $4203: $a1
    rst $20                                       ; $4204: $e7
    dec sp                                        ; $4205: $3b
    add hl, de                                    ; $4206: $19
    xor $0a                                       ; $4207: $ee $0a
    xor d                                         ; $4209: $aa
    ld [hl], a                                    ; $420a: $77
    ld l, c                                       ; $420b: $69
    add hl, de                                    ; $420c: $19
    cp b                                          ; $420d: $b8
    ld h, e                                       ; $420e: $63
    ld e, c                                       ; $420f: $59
    jp c, $c690                                   ; $4210: $da $90 $c6

    db $ed                                        ; $4213: $ed
    rst $00                                       ; $4214: $c7
    ld l, $11                                     ; $4215: $2e $11
    ld l, c                                       ; $4217: $69
    ld h, c                                       ; $4218: $61
    and l                                         ; $4219: $a5
    ld l, b                                       ; $421a: $68
    inc c                                         ; $421b: $0c
    ld [hl], d                                    ; $421c: $72
    push de                                       ; $421d: $d5
    ld e, $da                                     ; $421e: $1e $da
    ld [bc], a                                    ; $4220: $02
    and a                                         ; $4221: $a7
    ld a, [hl+]                                   ; $4222: $2a
    ld d, [hl]                                    ; $4223: $56
    inc hl                                        ; $4224: $23
    add sp, -$44                                  ; $4225: $e8 $bc
    ld a, b                                       ; $4227: $78
    sbc a                                         ; $4228: $9f
    halt                                          ; $4229: $76
    cp l                                          ; $422a: $bd
    xor d                                         ; $422b: $aa
    jp nc, $628a                                  ; $422c: $d2 $8a $62

    dec d                                         ; $422f: $15
    ld [$9e47], a                                 ; $4230: $ea $47 $9e
    rst $20                                       ; $4233: $e7
    inc de                                        ; $4234: $13
    xor l                                         ; $4235: $ad
    nop                                           ; $4236: $00
    adc $56                                       ; $4237: $ce $56
    inc d                                         ; $4239: $14
    xor e                                         ; $423a: $ab
    cp d                                          ; $423b: $ba
    xor [hl]                                      ; $423c: $ae
    inc d                                         ; $423d: $14
    cp e                                          ; $423e: $bb
    ret c                                         ; $423f: $d8

    ld h, d                                       ; $4240: $62
    inc b                                         ; $4241: $04
    sbc l                                         ; $4242: $9d
    sub a                                         ; $4243: $97
    ld bc, $7aad                                  ; $4244: $01 $ad $7a
    sbc b                                         ; $4247: $98
    xor a                                         ; $4248: $af
    add e                                         ; $4249: $83
    ld d, l                                       ; $424a: $55
    or $6b                                        ; $424b: $f6 $6b
    rrca                                          ; $424d: $0f
    ld e, l                                       ; $424e: $5d
    ld b, a                                       ; $424f: $47

jr_02f_4250:
    ld l, e                                       ; $4250: $6b
    xor h                                         ; $4251: $ac
    or $d0                                        ; $4252: $f6 $d0
    ld d, $87                                     ; $4254: $16 $87
    sub a                                         ; $4256: $97
    rst $20                                       ; $4257: $e7
    sub c                                         ; $4258: $91
    inc e                                         ; $4259: $1c
    pop bc                                        ; $425a: $c1
    inc l                                         ; $425b: $2c
    add $6f                                       ; $425c: $c6 $6f
    rst $10                                       ; $425e: $d7
    inc bc                                        ; $425f: $03
    ld b, [hl]                                    ; $4260: $46
    ld c, [hl]                                    ; $4261: $4e
    dec hl                                        ; $4262: $2b
    adc d                                         ; $4263: $8a
    dec [hl]                                      ; $4264: $35
    rrca                                          ; $4265: $0f
    sbc b                                         ; $4266: $98
    add a                                         ; $4267: $87
    ld e, $e3                                     ; $4268: $1e $e3
    or b                                          ; $426a: $b0
    ld c, $e8                                     ; $426b: $0e $e8
    rrca                                          ; $426d: $0f
    ld a, l                                       ; $426e: $7d
    inc e                                         ; $426f: $1c
    halt                                          ; $4270: $76
    ld a, [bc]                                    ; $4271: $0a
    add $8d                                       ; $4272: $c6 $8d
    rst $10                                       ; $4274: $d7
    ld e, $da                                     ; $4275: $1e $da
    ld [bc], a                                    ; $4277: $02
    dec e                                         ; $4278: $1d
    db $fd                                        ; $4279: $fd
    and l                                         ; $427a: $a5
    dec d                                         ; $427b: $15
    ld hl, $1df0                                  ; $427c: $21 $f0 $1d
    add hl, bc                                    ; $427f: $09
    ld d, l                                       ; $4280: $55
    xor d                                         ; $4281: $aa
    adc b                                         ; $4282: $88

jr_02f_4283:
    ccf                                           ; $4283: $3f
    ld d, a                                       ; $4284: $57
    ld l, l                                       ; $4285: $6d
    ld [c], a                                     ; $4286: $e2
    ld a, [hl-]                                   ; $4287: $3a
    jr jr_02f_4250                                ; $4288: $18 $c6

    ld hl, sp-$03                                 ; $428a: $f8 $fd
    ld [hl], l                                    ; $428c: $75
    ccf                                           ; $428d: $3f
    ld b, [hl]                                    ; $428e: $46
    ld e, a                                       ; $428f: $5f
    rst $20                                       ; $4290: $e7
    rst $10                                       ; $4291: $d7
    ld h, e                                       ; $4292: $63
    ld e, $44                                     ; $4293: $1e $44
    db $ed                                        ; $4295: $ed
    and c                                         ; $4296: $a1
    dec l                                         ; $4297: $2d
    push af                                       ; $4298: $f5
    or l                                          ; $4299: $b5
    ld a, a                                       ; $429a: $7f
    scf                                           ; $429b: $37
    ld e, h                                       ; $429c: $5c
    ld h, e                                       ; $429d: $63
    or c                                          ; $429e: $b1
    sub h                                         ; $429f: $94
    ld [c], a                                     ; $42a0: $e2
    pop hl                                        ; $42a1: $e1
    rra                                           ; $42a2: $1f

Jump_02f_42a3:
    rst $10                                       ; $42a3: $d7
    ld l, $6b                                     ; $42a4: $2e $6b
    or h                                          ; $42a6: $b4
    and $81                                       ; $42a7: $e6 $81
    adc a                                         ; $42a9: $8f
    adc e                                         ; $42aa: $8b
    pop de                                        ; $42ab: $d1
    ld b, a                                       ; $42ac: $47
    rra                                           ; $42ad: $1f
    ld a, [hl]                                    ; $42ae: $7e
    ld b, $03                                     ; $42af: $06 $03
    ld d, e                                       ; $42b1: $53
    ld b, l                                       ; $42b2: $45
    ld sp, hl                                     ; $42b3: $f9
    ld c, $8f                                     ; $42b4: $0e $8f
    ld a, d                                       ; $42b6: $7a
    inc b                                         ; $42b7: $04
    cp e                                          ; $42b8: $bb
    ld e, [hl]                                    ; $42b9: $5e
    push de                                       ; $42ba: $d5
    jr c, jr_02f_4283                             ; $42bb: $38 $c6

    ld l, $2d                                     ; $42bd: $2e $2d
    inc bc                                        ; $42bf: $03
    ld e, d                                       ; $42c0: $5a
    pop de                                        ; $42c1: $d1
    ld a, [hl-]                                   ; $42c2: $3a
    and b                                         ; $42c3: $a0
    ccf                                           ; $42c4: $3f
    db $f4                                        ; $42c5: $f4
    ld [hl], c                                    ; $42c6: $71
    ret c                                         ; $42c7: $d8

    add hl, hl                                    ; $42c8: $29
    jr jr_02f_4302                                ; $42c9: $18 $37

    ld a, $ba                                     ; $42cb: $3e $ba
    db $db                                        ; $42cd: $db
    xor d                                         ; $42ce: $aa
    rst $30                                       ; $42cf: $f7
    ret                                           ; $42d0: $c9


    ld l, a                                       ; $42d1: $6f
    or l                                          ; $42d2: $b5
    add a                                         ; $42d3: $87
    or [hl]                                       ; $42d4: $b6
    dec e                                         ; $42d5: $1d
    inc d                                         ; $42d6: $14
    ld l, e                                       ; $42d7: $6b
    call z, $29f5                                 ; $42d8: $cc $f5 $29
    ld l, d                                       ; $42db: $6a
    rrca                                          ; $42dc: $0f
    ld l, l                                       ; $42dd: $6d
    ld bc, $95c7                                  ; $42de: $01 $c7 $95
    ld d, l                                       ; $42e1: $55
    rst $28                                       ; $42e2: $ef
    sub e                                         ; $42e3: $93
    ld l, e                                       ; $42e4: $6b
    db $f4                                        ; $42e5: $f4
    cp $f8                                        ; $42e6: $fe $f8
    dec l                                         ; $42e8: $2d
    ret nc                                        ; $42e9: $d0

    ld d, a                                       ; $42ea: $57
    or h                                          ; $42eb: $b4
    and [hl]                                      ; $42ec: $a6
    ld b, b                                       ; $42ed: $40
    xor h                                         ; $42ee: $ac
    pop af                                        ; $42ef: $f1
    sub a                                         ; $42f0: $97
    ld a, [hl]                                    ; $42f1: $7e
    sbc a                                         ; $42f2: $9f
    daa                                           ; $42f3: $27
    ld d, a                                       ; $42f4: $57
    add hl, de                                    ; $42f5: $19
    add $b0                                       ; $42f6: $c6 $b0
    db $ec                                        ; $42f8: $ec
    ld l, e                                       ; $42f9: $6b
    push de                                       ; $42fa: $d5
    ei                                            ; $42fb: $fb
    db $e4                                        ; $42fc: $e4
    ld e, d                                       ; $42fd: $5a
    ld h, e                                       ; $42fe: $63
    or c                                          ; $42ff: $b1
    ld h, d                                       ; $4300: $62
    ld h, e                                       ; $4301: $63

jr_02f_4302:
    ld l, [hl]                                    ; $4302: $6e
    adc [hl]                                      ; $4303: $8e
    ld [hl], h                                    ; $4304: $74
    bit 6, a                                      ; $4305: $cb $77
    and h                                         ; $4307: $a4
    ld a, [hl+]                                   ; $4308: $2a
    jp Jump_02f_5c9f                              ; $4309: $c3 $9f $5c


    pop de                                        ; $430c: $d1
    ld a, [hl+]                                   ; $430d: $2a
    db $f4                                        ; $430e: $f4
    add a                                         ; $430f: $87
    cp [hl]                                       ; $4310: $be
    sub b                                         ; $4311: $90
    db $db                                        ; $4312: $db
    ld hl, sp-$53                                 ; $4313: $f8 $ad
    cp d                                          ; $4315: $ba
    ld a, l                                       ; $4316: $7d
    ld h, e                                       ; $4317: $63
    db $dd                                        ; $4318: $dd
    ld h, [hl]                                    ; $4319: $66
    ld e, b                                       ; $431a: $58
    adc d                                         ; $431b: $8a
    ret nz                                        ; $431c: $c0

    inc hl                                        ; $431d: $23
    cp c                                          ; $431e: $b9
    ld l, h                                       ; $431f: $6c
    db $ed                                        ; $4320: $ed
    ld l, e                                       ; $4321: $6b
    adc l                                         ; $4322: $8d
    and b                                         ; $4323: $a0
    di                                            ; $4324: $f3
    ld a, [de]                                    ; $4325: $1a
    adc e                                         ; $4326: $8b
    sub c                                         ; $4327: $91
    add $d1                                       ; $4328: $c6 $d1
    or l                                          ; $432a: $b5
    and $81                                       ; $432b: $e6 $81
    ld h, a                                       ; $432d: $67
    ldh [$61], a                                  ; $432e: $e0 $61
    cp [hl]                                       ; $4330: $be
    ld c, $86                                     ; $4331: $0e $86
    sbc a                                         ; $4333: $9f
    db $f4                                        ; $4334: $f4
    db $ed                                        ; $4335: $ed
    ld d, e                                       ; $4336: $53
    ld [hl], d                                    ; $4337: $72
    ld l, $7a                                     ; $4338: $2e $7a
    ldh [$5f], a                                  ; $433a: $e0 $5f
    inc hl                                        ; $433c: $23
    db $ed                                        ; $433d: $ed
    ld a, d                                       ; $433e: $7a
    ld [hl], b                                    ; $433f: $70
    or c                                          ; $4340: $b1
    push hl                                       ; $4341: $e5
    ld sp, hl                                     ; $4342: $f9
    adc [hl]                                      ; $4343: $8e
    and d                                         ; $4344: $a2
    cp c                                          ; $4345: $b9
    ld a, [hl+]                                   ; $4346: $2a
    ld d, c                                       ; $4347: $51
    adc h                                         ; $4348: $8c
    ld l, h                                       ; $4349: $6c
    sub a                                         ; $434a: $97
    dec [hl]                                      ; $434b: $35
    ld c, d                                       ; $434c: $4a
    adc [hl]                                      ; $434d: $8e
    ld h, b                                       ; $434e: $60
    adc [hl]                                      ; $434f: $8e
    sub c                                         ; $4350: $91
    ld bc, $b8c5                                  ; $4351: $01 $c5 $b8
    ld h, d                                       ; $4354: $62
    ld a, [$301f]                                 ; $4355: $fa $1f $30
    ld d, $b8                                     ; $4358: $16 $b8
    rst $30                                       ; $435a: $f7
    ld b, a                                       ; $435b: $47
    ld a, [de]                                    ; $435c: $1a
    ld sp, hl                                     ; $435d: $f9
    inc bc                                        ; $435e: $03
    ld b, [hl]                                    ; $435f: $46
    db $e3                                        ; $4360: $e3
    ld h, d                                       ; $4361: $62
    ccf                                           ; $4362: $3f
    adc a                                         ; $4363: $8f
    db $e4                                        ; $4364: $e4
    adc d                                         ; $4365: $8a
    db $ed                                        ; $4366: $ed
    inc bc                                        ; $4367: $03
    ld d, d                                       ; $4368: $52
    sbc $02                                       ; $4369: $de $02
    dec e                                         ; $436b: $1d
    inc c                                         ; $436c: $0c
    ld h, e                                       ; $436d: $63
    and a                                         ; $436e: $a7
    inc a                                         ; $436f: $3c
    ld d, $28                                     ; $4370: $16 $28
    rst $08                                       ; $4372: $cf
    di                                            ; $4373: $f3
    ld d, $27                                     ; $4374: $16 $27
    nop                                           ; $4376: $00
    adc $20                                       ; $4377: $ce $20
    ld [bc], a                                    ; $4379: $02
    sub e                                         ; $437a: $93
    set 2, [hl]                                   ; $437b: $cb $d6
    jp z, Jump_02f_70dd                           ; $437d: $ca $dd $70

    ld a, [$abcc]                                 ; $4380: $fa $cc $ab
    cp c                                          ; $4383: $b9
    dec l                                         ; $4384: $2d
    or h                                          ; $4385: $b4
    db $eb                                        ; $4386: $eb
    pop bc                                        ; $4387: $c1
    push bc                                       ; $4388: $c5
    sub [hl]                                      ; $4389: $96
    rst $20                                       ; $438a: $e7
    dec l                                         ; $438b: $2d
    push af                                       ; $438c: $f5
    or l                                          ; $438d: $b5
    ld c, d                                       ; $438e: $4a
    db $e3                                        ; $438f: $e3
    xor d                                         ; $4390: $aa
    db $ec                                        ; $4391: $ec
    ld [hl], e                                    ; $4392: $73
    db $ed                                        ; $4393: $ed
    jp nc, $7032                                  ; $4394: $d2 $32 $70

    rst $00                                       ; $4397: $c7
    or d                                          ; $4398: $b2
    sbc d                                         ; $4399: $9a

jr_02f_439a:
    reti                                          ; $439a: $d9


jr_02f_439b:
    cp b                                          ; $439b: $b8
    db $fd                                        ; $439c: $fd
    ret c                                         ; $439d: $d8

    and l                                         ; $439e: $a5
    dec d                                         ; $439f: $15
    ld h, h                                       ; $43a0: $64
    ld e, h                                       ; $43a1: $5c
    ld a, c                                       ; $43a2: $79
    dec bc                                        ; $43a3: $0b
    ld b, a                                       ; $43a4: $47
    cp h                                          ; $43a5: $bc
    ccf                                           ; $43a6: $3f
    ld [hl], d                                    ; $43a7: $72
    ld h, e                                       ; $43a8: $63
    inc c                                         ; $43a9: $0c
    ld c, e                                       ; $43aa: $4b
    ld [hl], d                                    ; $43ab: $72
    dec e                                         ; $43ac: $1d
    jr nc, jr_02f_4411                            ; $43ad: $30 $62

    sbc l                                         ; $43af: $9d
    add h                                         ; $43b0: $84
    xor h                                         ; $43b1: $ac
    xor a                                         ; $43b2: $af
    cp h                                          ; $43b3: $bc
    dec b                                         ; $43b4: $05
    daa                                           ; $43b5: $27
    jr z, @-$38                                   ; $43b6: $28 $c6

    ret c                                         ; $43b8: $d8

    ld h, l                                       ; $43b9: $65
    rst $38                                       ; $43ba: $ff
    ld d, d                                       ; $43bb: $52
    adc h                                         ; $43bc: $8c
    ld l, e                                       ; $43bd: $6b
    dec e                                         ; $43be: $1d
    cp e                                          ; $43bf: $bb
    call z, Call_02f_6280                         ; $43c0: $cc $80 $62
    ld e, a                                       ; $43c3: $5f
    adc e                                         ; $43c4: $8b
    rst $30                                       ; $43c5: $f7
    ld l, c                                       ; $43c6: $69
    adc l                                         ; $43c7: $8d
    push bc                                       ; $43c8: $c5
    inc c                                         ; $43c9: $0c
    ld [hl+], a                                   ; $43ca: $22
    ld [hl], b                                    ; $43cb: $70
    add hl, hl                                    ; $43cc: $29
    call nc, $065f                                ; $43cd: $d4 $5f $06
    or h                                          ; $43d0: $b4
    ld c, e                                       ; $43d1: $4b
    and l                                         ; $43d2: $a5
    jr z, jr_02f_439b                             ; $43d3: $28 $c6

    or l                                          ; $43d5: $b5
    inc de                                        ; $43d6: $13
    ld e, a                                       ; $43d7: $5f
    ld d, a                                       ; $43d8: $57
    dec h                                         ; $43d9: $25

Jump_02f_43da:
    ld e, a                                       ; $43da: $5f
    and a                                         ; $43db: $a7
    rlca                                          ; $43dc: $07
    or h                                          ; $43dd: $b4
    ld c, e                                       ; $43de: $4b
    set 0, b                                      ; $43df: $cb $c0
    db $fd                                        ; $43e1: $fd
    db $fd                                        ; $43e2: $fd
    and l                                         ; $43e3: $a5
    dec c                                         ; $43e4: $0d
    add hl, hl                                    ; $43e5: $29
    cp c                                          ; $43e6: $b9
    db $eb                                        ; $43e7: $eb
    xor [hl]                                      ; $43e8: $ae
    and b                                         ; $43e9: $a0
    db $dd                                        ; $43ea: $dd
    ld [$ca38], sp                                ; $43eb: $08 $38 $ca
    ld l, e                                       ; $43ee: $6b
    inc de                                        ; $43ef: $13
    ld e, e                                       ; $43f0: $5b
    daa                                           ; $43f1: $27
    jr z, jr_02f_439a                             ; $43f2: $28 $a6

    adc $56                                       ; $43f4: $ce $56
    jp hl                                         ; $43f6: $e9


    rst $00                                       ; $43f7: $c7
    call z, Call_000_191d                         ; $43f8: $cc $1d $19
    ld a, l                                       ; $43fb: $7d
    ld c, d                                       ; $43fc: $4a
    ld c, $cb                                     ; $43fd: $0e $cb
    jp nc, $b406                                  ; $43ff: $d2 $06 $b4

    inc c                                         ; $4402: $0c
    call c, $dfdf                                 ; $4403: $dc $df $df
    adc l                                         ; $4406: $8d
    add b                                         ; $4407: $80
    and e                                         ; $4408: $a3
    ld l, d                                       ; $4409: $6a
    inc de                                        ; $440a: $13
    ld [hl], a                                    ; $440b: $77
    ld e, h                                       ; $440c: $5c
    ld e, c                                       ; $440d: $59
    jp c, Jump_02f_6680                           ; $440e: $da $80 $66

jr_02f_4411:
    xor c                                         ; $4411: $a9
    ld a, b                                       ; $4412: $78
    dec b                                         ; $4413: $05
    ld a, [hl+]                                   ; $4414: $2a
    ld a, l                                       ; $4415: $7d
    ld e, d                                       ; $4416: $5a
    ld d, c                                       ; $4417: $51
    call z, $106f                                 ; $4418: $cc $6f $10
    add c                                         ; $441b: $81
    cp [hl]                                       ; $441c: $be
    and $81                                       ; $441d: $e6 $81
    xor a                                         ; $441f: $af
    or c                                          ; $4420: $b1
    ld [$f4f9], sp                                ; $4421: $08 $f9 $f4
    rst $00                                       ; $4424: $c7
    dec b                                         ; $4425: $05
    sbc l                                         ; $4426: $9d
    or c                                          ; $4427: $b1
    ld l, [hl]                                    ; $4428: $6e
    and l                                         ; $4429: $a5
    reti                                          ; $442a: $d9


    rst $38                                       ; $442b: $ff
    scf                                           ; $442c: $37
    push hl                                       ; $442d: $e5
    dec l                                         ; $442e: $2d
    rst $00                                       ; $442f: $c7
    ld a, [de]                                    ; $4430: $1a
    res 2, c                                      ; $4431: $cb $91
    rst $10                                       ; $4433: $d7
    ld h, $ee                                     ; $4434: $26 $ee
    ld h, h                                       ; $4436: $64
    cp b                                          ; $4437: $b8
    dec hl                                        ; $4438: $2b
    xor b                                         ; $4439: $a8
    sbc $a5                                       ; $443a: $de $a5
    ld h, l                                       ; $443c: $65
    ld b, b                                       ; $443d: $40
    ld h, e                                       ; $443e: $63
    ld e, $c4                                     ; $443f: $1e $c4
    jp nc, $a486                                  ; $4441: $d2 $86 $a4

    jr jr_02f_44a4                                ; $4444: $18 $5e

    ld e, b                                       ; $4446: $58
    ld a, e                                       ; $4447: $7b
    ld l, b                                       ; $4448: $68
    dec bc                                        ; $4449: $0b
    ld b, a                                       ; $444a: $47
    ld bc, $cf3b                                  ; $444b: $01 $3b $cf
    di                                            ; $444e: $f3
    ld h, l                                       ; $444f: $65

jr_02f_4450:
    ld l, e                                       ; $4450: $6b
    ld bc, $6318                                  ; $4451: $01 $18 $63
    db $f4                                        ; $4454: $f4
    ld h, c                                       ; $4455: $61
    reti                                          ; $4456: $d9


    ld [hl+], a                                   ; $4457: $22
    ld sp, hl                                     ; $4458: $f9
    ldh [$ef], a                                  ; $4459: $e0 $ef
    ld a, d                                       ; $445b: $7a
    ret nc                                        ; $445c: $d0

    adc h                                         ; $445d: $8c
    rst $18                                       ; $445e: $df
    sbc a                                         ; $445f: $9f
    or b                                          ; $4460: $b0
    db $e4                                        ; $4461: $e4
    dec sp                                        ; $4462: $3b
    adc d                                         ; $4463: $8a
    add $3c                                       ; $4464: $c6 $3c
    adc b                                         ; $4466: $88
    db $e4                                        ; $4467: $e4
    or d                                          ; $4468: $b2
    rst $28                                       ; $4469: $ef
    adc d                                         ; $446a: $8a
    and [hl]                                      ; $446b: $a6
    xor [hl]                                      ; $446c: $ae
    ld l, e                                       ; $446d: $6b
    add hl, de                                    ; $446e: $19
    ret nc                                        ; $446f: $d0

    sbc b                                         ; $4470: $98
    rlca                                          ; $4471: $07
    ld sp, $7463                                  ; $4472: $31 $63 $74
    cp $cc                                        ; $4475: $fe $cc
    cp l                                          ; $4477: $bd
    ld l, e                                       ; $4478: $6b
    cp d                                          ; $4479: $ba
    adc l                                         ; $447a: $8d
    ld a, c                                       ; $447b: $79
    ld sp, $c5d7                                  ; $447c: $31 $d7 $c5
    sub [hl]                                      ; $447f: $96
    ld e, a                                       ; $4480: $5f
    ld l, h                                       ; $4481: $6c
    push bc                                       ; $4482: $c5
    ld [bc], a                                    ; $4483: $02
    ld a, h                                       ; $4484: $7c
    daa                                           ; $4485: $27
    ld [c], a                                     ; $4486: $e2
    push af                                       ; $4487: $f5
    adc d                                         ; $4488: $8a
    push bc                                       ; $4489: $c5
    adc [hl]                                      ; $448a: $8e
    ld l, $56                                     ; $448b: $2e $56
    xor c                                         ; $448d: $a9
    call nc, $da1e                                ; $448e: $d4 $1e $da
    ld [bc], a                                    ; $4491: $02
    daa                                           ; $4492: $27
    db $fd                                        ; $4493: $fd
    reti                                          ; $4494: $d9


    ret z                                         ; $4495: $c8

    rra                                           ; $4496: $1f
    jr nc, jr_02f_4450                            ; $4497: $30 $b7

    ld h, l                                       ; $4499: $65
    nop                                           ; $449a: $00
    ld [hl], a                                    ; $449b: $77
    db $dd                                        ; $449c: $dd
    ld l, a                                       ; $449d: $6f
    ld h, h                                       ; $449e: $64
    ld c, b                                       ; $449f: $48
    ret                                           ; $44a0: $c9


    adc c                                         ; $44a1: $89
    or $fe                                        ; $44a2: $f6 $fe

jr_02f_44a4:
    jp nz, $9690                                  ; $44a4: $c2 $90 $96

    ld bc, $d3ad                                  ; $44a7: $01 $ad $d3
    add e                                         ; $44aa: $83
    ld [hl], h                                    ; $44ab: $74
    ld a, [de]                                    ; $44ac: $1a
    add $32                                       ; $44ad: $c6 $32
    rst $20                                       ; $44af: $e7
    ld e, d                                       ; $44b0: $5a
    or c                                          ; $44b1: $b1
    ld [hl], l                                    ; $44b2: $75
    ld b, h                                       ; $44b3: $44
    cp c                                          ; $44b4: $b9
    ld l, e                                       ; $44b5: $6b
    dec c                                         ; $44b6: $0d
    dec de                                        ; $44b7: $1b
    set 1, e                                      ; $44b8: $cb $cb
    di                                            ; $44ba: $f3
    cp h                                          ; $44bb: $bc
    dec b                                         ; $44bc: $05
    ld e, c                                       ; $44bd: $59
    ld l, h                                       ; $44be: $6c
    and b                                         ; $44bf: $a0
    db $e4                                        ; $44c0: $e4
    cp [hl]                                       ; $44c1: $be
    sub $98                                       ; $44c2: $d6 $98
    rla                                           ; $44c4: $17
    xor l                                         ; $44c5: $ad
    or c                                          ; $44c6: $b1
    ld e, b                                       ; $44c7: $58
    ldh [$d2], a                                  ; $44c8: $e0 $d2
    rst $08                                       ; $44ca: $cf
    xor c                                         ; $44cb: $a9
    ld [hl], $b1                                  ; $44cc: $36 $b1
    dec b                                         ; $44ce: $05
    add a                                         ; $44cf: $87
    xor a                                         ; $44d0: $af
    ld sp, $75a7                                  ; $44d1: $31 $a7 $75
    ld a, d                                       ; $44d4: $7a
    sub b                                         ; $44d5: $90
    ld c, [hl]                                    ; $44d6: $4e
    ld b, e                                       ; $44d7: $43
    ld [hl], d                                    ; $44d8: $72
    add hl, de                                    ; $44d9: $19
    ret nz                                        ; $44da: $c0

    dec [hl]                                      ; $44db: $35
    ld [bc], a                                    ; $44dc: $02
    ld e, d                                       ; $44dd: $5a
    ld a, [bc]                                    ; $44de: $0a
    push af                                       ; $44df: $f5
    rst $00                                       ; $44e0: $c7
    ld [hl-], a                                   ; $44e1: $32
    rst $20                                       ; $44e2: $e7
    ld a, [c]                                     ; $44e3: $f2
    dec d                                         ; $44e4: $15
    ld e, e                                       ; $44e5: $5b
    ld b, a                                       ; $44e6: $47
    sub h                                         ; $44e7: $94
    cp e                                          ; $44e8: $bb
    ld l, d                                       ; $44e9: $6a
    rrca                                          ; $44ea: $0f
    ld l, l                                       ; $44eb: $6d
    ld bc, $6c59                                  ; $44ec: $01 $59 $6c
    and b                                         ; $44ef: $a0
    jp c, $9dc4                                   ; $44f0: $da $c4 $9d

    and b                                         ; $44f3: $a0
    ld e, b                                       ; $44f4: $58
    dec b                                         ; $44f5: $05
    ld e, $7b                                     ; $44f6: $1e $7b
    sbc a                                         ; $44f8: $9f
    add $15                                       ; $44f9: $c6 $15
    ld a, e                                       ; $44fb: $7b
    ld l, $2c                                     ; $44fc: $2e $2c
    ld b, l                                       ; $44fe: $45
    sub c                                         ; $44ff: $91
    rst $28                                       ; $4500: $ef
    ld [hl], h                                    ; $4501: $74
    ld a, l                                       ; $4502: $7d
    sbc l                                         ; $4503: $9d
    cp a                                          ; $4504: $bf
    ld c, d                                       ; $4505: $4a
    ld h, e                                       ; $4506: $63
    ld e, $fa                                     ; $4507: $1e $fa
    ldh [$af], a                                  ; $4509: $e0 $af
    ld de, $29ac                                  ; $450b: $11 $ac $29
    db $10                                        ; $450e: $10
    inc hl                                        ; $450f: $23
    ld [hl], e                                    ; $4510: $73
    sbc [hl]                                      ; $4511: $9e
    or a                                          ; $4512: $b7
    add a                                         ; $4513: $87
    adc a                                         ; $4514: $8f
    ld a, c                                       ; $4515: $79
    db $e4                                        ; $4516: $e4
    sbc d                                         ; $4517: $9a
    ld sp, $c918                                  ; $4518: $31 $18 $c9
    dec [hl]                                      ; $451b: $35
    rrca                                          ; $451c: $0f
    inc a                                         ; $451d: $3c
    inc bc                                        ; $451e: $03
    rrca                                          ; $451f: $0f
    ld [hl], a                                    ; $4520: $77
    xor h                                         ; $4521: $ac
    or c                                          ; $4522: $b1
    inc e                                         ; $4523: $1c
    ld sp, hl                                     ; $4524: $f9
    inc d                                         ; $4525: $14
    ld d, h                                       ; $4526: $54
    rrca                                          ; $4527: $0f

jr_02f_4528:
    res 5, h                                      ; $4528: $cb $ac
    sub h                                         ; $452a: $94
    db $db                                        ; $452b: $db
    cp b                                          ; $452c: $b8
    db $fd                                        ; $452d: $fd
    ld e, b                                       ; $452e: $58
    or c                                          ; $452f: $b1
    add l                                         ; $4530: $85
    ld l, $c2                                     ; $4531: $2e $c2
    rst $30                                       ; $4533: $f7
    rst $00                                       ; $4534: $c7
    dec d                                         ; $4535: $15
    db $e3                                        ; $4536: $e3
    ld l, [hl]                                    ; $4537: $6e
    xor h                                         ; $4538: $ac
    rst $30                                       ; $4539: $f7
    ld h, e                                       ; $453a: $63
    ld e, h                                       ; $453b: $5c
    dec hl                                        ; $453c: $2b
    or [hl]                                       ; $453d: $b6
    inc d                                         ; $453e: $14
    and [hl]                                      ; $453f: $a6
    ld a, [bc]                                    ; $4540: $0a
    ld a, $62                                     ; $4541: $3e $62
    rst $10                                       ; $4543: $d7
    call Call_02f_6a80                            ; $4544: $cd $80 $6a
    rrca                                          ; $4547: $0f
    ld l, l                                       ; $4548: $6d
    ld bc, $fda7                                  ; $4549: $01 $a7 $fd
    ld h, l                                       ; $454c: $65
    ccf                                           ; $454d: $3f
    ldh a, [$e4]                                  ; $454e: $f0 $e4
    or b                                          ; $4550: $b0
    xor h                                         ; $4551: $ac

Jump_02f_4552:
    cp d                                          ; $4552: $ba
    db $db                                        ; $4553: $db
    jr c, jr_02f_4528                             ; $4554: $38 $d2

    ld [hl-], a                                   ; $4556: $32
    ld [hl], b                                    ; $4557: $70
    rst $00                                       ; $4558: $c7
    ld [hl-], a                                   ; $4559: $32
    dec de                                        ; $455a: $1b
    dec a                                         ; $455b: $3d
    ret z                                         ; $455c: $c8

    ld a, [hl]                                    ; $455d: $7e
    ldh [$31], a                                  ; $455e: $e0 $31
    rst $28                                       ; $4560: $ef
    sbc d                                         ; $4561: $9a
    cp c                                          ; $4562: $b9
    adc l                                         ; $4563: $8d
    rst $18                                       ; $4564: $df
    adc l                                         ; $4565: $8d
    ld a, c                                       ; $4566: $79
    add sp, -$7d                                  ; $4567: $e8 $83
    ccf                                           ; $4569: $3f
    xor $c6                                       ; $456a: $ee $c6
    ld a, d                                       ; $456c: $7a

Jump_02f_456d:
    ccf                                           ; $456d: $3f
    ld l, a                                       ; $456e: $6f

Call_02f_456f:
    ld bc, $6c59                                  ; $456f: $01 $59 $6c
    and b                                         ; $4572: $a0
    jp c, Jump_000_1dc4                           ; $4573: $da $c4 $1d

    jp hl                                         ; $4576: $e9


    add $7a                                       ; $4577: $c6 $7a
    ei                                            ; $4579: $fb
    rrca                                          ; $457a: $0f
    ld h, d                                       ; $457b: $62
    or a                                          ; $457c: $b7
    db $eb                                        ; $457d: $eb
    ld bc, $36a9                                  ; $457e: $01 $a9 $36
    ld [hl], c                                    ; $4581: $71
    add a                                         ; $4582: $87
    sub a                                         ; $4583: $97
    ld a, [c]                                     ; $4584: $f2
    ld a, [hl]                                    ; $4585: $7e
    db $ec                                        ; $4586: $ec
    ld h, d                                       ; $4587: $62
    db $eb                                        ; $4588: $eb
    db $fc                                        ; $4589: $fc
    dec e                                         ; $458a: $1d
    ld l, e                                       ; $458b: $6b
    inc l                                         ; $458c: $2c
    ld b, a                                       ; $458d: $47
    sbc [hl]                                      ; $458e: $9e
    or a                                          ; $458f: $b7
    rst $00                                       ; $4590: $c7
    ld d, [hl]                                    ; $4591: $56
    ld d, l                                       ; $4592: $55
    sbc [hl]                                      ; $4593: $9e
    rst $20                                       ; $4594: $e7
    dec l                                         ; $4595: $2d
    ld b, a                                       ; $4596: $47
    cp h                                          ; $4597: $bc
    sbc a                                         ; $4598: $9f
    ld e, h                                       ; $4599: $5c
    di                                            ; $459a: $f3
    ret nz                                        ; $459b: $c0

    rst $20                                       ; $459c: $e7
    or a                                          ; $459d: $b7
    and $7d                                       ; $459e: $e6 $7d
    xor $5a                                       ; $45a0: $ee $5a
    sbc l                                         ; $45a2: $9d
    ld sp, $5c8f                                  ; $45a3: $31 $8f $5c
    res 0, b                                      ; $45a6: $cb $80
    add d                                         ; $45a8: $82
    ldh a, [$fd]                                  ; $45a9: $f0 $fd
    db $e4                                        ; $45ab: $e4
    ld l, $39                                     ; $45ac: $2e $39
    add hl, de                                    ; $45ae: $19
    cp $58                                        ; $45af: $fe $58
    db $e3                                        ; $45b1: $e3
    cpl                                           ; $45b2: $2f
    xor l                                         ; $45b3: $ad
    ld [$c781], sp                                ; $45b4: $08 $81 $c7
    ld b, d                                       ; $45b7: $42
    adc e                                         ; $45b8: $8b
    rst $30                                       ; $45b9: $f7
    ld l, c                                       ; $45ba: $69
    rla                                           ; $45bb: $17
    db $db                                        ; $45bc: $db
    sbc h                                         ; $45bd: $9c
    ld [hl], l                                    ; $45be: $75
    adc e                                         ; $45bf: $8b
    ld [hl], c                                    ; $45c0: $71
    push bc                                       ; $45c1: $c5
    ld [c], a                                     ; $45c2: $e2
    add hl, sp                                    ; $45c3: $39
    ld h, c                                       ; $45c4: $61
    xor c                                         ; $45c5: $a9
    bit 2, d                                      ; $45c6: $cb $52
    xor h                                         ; $45c8: $ac
    ld a, c                                       ; $45c9: $79
    ldh [rOCPD], a                                ; $45ca: $e0 $6b
    db $fc                                        ; $45cc: $fc
    pop de                                        ; $45cd: $d1
    adc l                                         ; $45ce: $8d
    dec h                                         ; $45cf: $25
    ld e, a                                       ; $45d0: $5f
    or c                                          ; $45d1: $b1
    ld [hl], l                                    ; $45d2: $75
    ld b, h                                       ; $45d3: $44
    cp c                                          ; $45d4: $b9
    ld l, e                                       ; $45d5: $6b
    push af                                       ; $45d6: $f5
    sub $e1                                       ; $45d7: $d6 $e1
    ld a, [hl-]                                   ; $45d9: $3a
    and $7d                                       ; $45da: $e6 $7d
    ld h, e                                       ; $45dc: $63
    ld e, c                                       ; $45dd: $59
    add hl, hl                                    ; $45de: $29
    ret                                           ; $45df: $c9


    dec e                                         ; $45e0: $1d
    ld e, l                                       ; $45e1: $5d
    sub b                                         ; $45e2: $90
    adc $c3                                       ; $45e3: $ce $c3
    db $eb                                        ; $45e5: $eb
    call c, $b2e4                                 ; $45e6: $dc $e4 $b2
    ret c                                         ; $45e9: $d8

    rrca                                          ; $45ea: $0f
    call c, Call_000_2518                         ; $45eb: $dc $18 $25
    ld [hl], a                                    ; $45ee: $77
    ld [hl-], a                                   ; $45ef: $32
    and b                                         ; $45f0: $a0
    cp e                                          ; $45f1: $bb
    ld c, d                                       ; $45f2: $4a
    sbc c                                         ; $45f3: $99
    ld l, b                                       ; $45f4: $68
    and a                                         ; $45f5: $a7
    inc a                                         ; $45f6: $3c
    ld d, $28                                     ; $45f7: $16 $28
    ld l, a                                       ; $45f9: $6f
    ld bc, $3ca7                                  ; $45fa: $01 $a7 $3c
    ld d, $a8                                     ; $45fd: $16 $a8
    ld [hl], $b1                                  ; $45ff: $36 $b1
    dec b                                         ; $4601: $05
    daa                                           ; $4602: $27
    ld bc, $7726                                  ; $4603: $01 $26 $77
    jp z, $8163                                   ; $4606: $ca $63 $81

    ld h, [hl]                                    ; $4609: $66
    inc sp                                        ; $460a: $33
    db $e4                                        ; $460b: $e4
    or a                                          ; $460c: $b7
    push de                                       ; $460d: $d5
    ld e, c                                       ; $460e: $59
    db $e3                                        ; $460f: $e3
    adc a                                         ; $4610: $8f
    ld l, [hl]                                    ; $4611: $6e
    inc l                                         ; $4612: $2c
    ld sp, hl                                     ; $4613: $f9
    adc d                                         ; $4614: $8a
    xor l                                         ; $4615: $ad
    inc hl                                        ; $4616: $23

jr_02f_4617:
    jp z, $c95d                                   ; $4617: $ca $5d $c9

    ld d, l                                       ; $461a: $55
    ld e, l                                       ; $461b: $5d
    ld d, a                                       ; $461c: $57
    ld e, d                                       ; $461d: $5a
    ldh [$98], a                                  ; $461e: $e0 $98
    rlca                                          ; $4620: $07
    or c                                          ; $4621: $b1
    ld b, [hl]                                    ; $4622: $46
    ccf                                           ; $4623: $3f
    ld [hl], h                                    ; $4624: $74
    cp $32                                        ; $4625: $fe $32
    ld [hl], b                                    ; $4627: $70
    rst $00                                       ; $4628: $c7
    ld [hl-], a                                   ; $4629: $32
    ld b, [hl]                                    ; $462a: $46
    ld b, b                                       ; $462b: $40
    dec hl                                        ; $462c: $2b
    ld [hl], $e6                                  ; $462d: $36 $e6
    dec d                                         ; $462f: $15
    ld a, c                                       ; $4630: $79
    sbc $02                                       ; $4631: $de $02
    and a                                         ; $4633: $a7
    inc a                                         ; $4634: $3c
    ld d, $68                                     ; $4635: $16 $68
    rst $38                                       ; $4637: $ff
    xor [hl]                                      ; $4638: $ae
    ld [$b943], sp                                ; $4639: $08 $43 $b9
    xor l                                         ; $463c: $ad
    or c                                          ; $463d: $b1
    jr jr_02f_4617                                ; $463e: $18 $d7

    adc d                                         ; $4640: $8a
    adc l                                         ; $4641: $8d
    ld a, c                                       ; $4642: $79
    ld b, l                                       ; $4643: $45
    ld a, $63                                     ; $4644: $3e $63
    db $ec                                        ; $4646: $ec
    db $d3                                        ; $4647: $d3
    cp b                                          ; $4648: $b8
    ld d, $c6                                     ; $4649: $16 $c6
    inc a                                         ; $464b: $3c
    db $f4                                        ; $464c: $f4
    ld e, l                                       ; $464d: $5d
    xor a                                         ; $464e: $af
    xor d                                         ; $464f: $aa
    db $f4                                        ; $4650: $f4
    ld l, c                                       ; $4651: $69
    adc l                                         ; $4652: $8d
    ld b, l                                       ; $4653: $45
    ret z                                         ; $4654: $c8

    rst $00                                       ; $4655: $c7
    push bc                                       ; $4656: $c5
    ret c                                         ; $4657: $d8

    and a                                         ; $4658: $a7
    ld [hl], l                                    ; $4659: $75
    ld a, d                                       ; $465a: $7a
    sub b                                         ; $465b: $90
    ld c, [hl]                                    ; $465c: $4e
    ld b, e                                       ; $465d: $43
    sbc $02                                       ; $465e: $de $02
    dec e                                         ; $4660: $1d
    rra                                           ; $4661: $1f
    ld a, b                                       ; $4662: $78
    ld b, $1e                                     ; $4663: $06 $1e
    ld l, $6d                                     ; $4665: $2e $6d
    ld c, b                                       ; $4667: $48
    push af                                       ; $4668: $f5
    or b                                          ; $4669: $b0
    inc l                                         ; $466a: $2c
    ld [hl], b                                    ; $466b: $70
    rla                                           ; $466c: $17
    db $db                                        ; $466d: $db
    add b                                         ; $466e: $80
    rrca                                          ; $466f: $0f
    cpl                                           ; $4670: $2f
    xor h                                         ; $4671: $ac
    dec a                                         ; $4672: $3d
    or h                                          ; $4673: $b4
    dec b                                         ; $4674: $05
    rst $00                                       ; $4675: $c7
    ld a, [de]                                    ; $4676: $1a
    res 2, c                                      ; $4677: $cb $91
    rst $20                                       ; $4679: $e7
    ld a, c                                       ; $467a: $79
    cp [hl]                                       ; $467b: $be
    sub e                                         ; $467c: $93
    pop hl                                        ; $467d: $e1
    xor [hl]                                      ; $467e: $ae
    and b                                         ; $467f: $a0
    ld a, d                                       ; $4680: $7a
    sub a                                         ; $4681: $97
    sub [hl]                                      ; $4682: $96
    ld bc, $baed                                  ; $4683: $01 $ed $ba
    dec hl                                        ; $4686: $2b
    ld l, b                                       ; $4687: $68
    add hl, de                                    ; $4688: $19
    ret nc                                        ; $4689: $d0

    ld a, d                                       ; $468a: $7a
    or h                                          ; $468b: $b4
    jp c, Jump_02f_5b43                           ; $468c: $da $43 $5b

    ld e, l                                       ; $468f: $5d
    ld e, b                                       ; $4690: $58
    db $ed                                        ; $4691: $ed
    and c                                         ; $4692: $a1
    dec sp                                        ; $4693: $3b
    ld a, [bc]                                    ; $4694: $0a
    ret c                                         ; $4695: $d8

    ret                                           ; $4696: $c9


    add hl, bc                                    ; $4697: $09
    ret c                                         ; $4698: $d8

    ld a, c                                       ; $4699: $79
    sbc [hl]                                      ; $469a: $9e
    or a                                          ; $469b: $b7
    dec e                                         ; $469c: $1d
    inc c                                         ; $469d: $0c
    ld h, e                                       ; $469e: $63
    rst $10                                       ; $469f: $d7
    ld e, l                                       ; $46a0: $5d
    ld b, c                                       ; $46a1: $41
    add e                                         ; $46a2: $83

jr_02f_46a3:
    cp a                                          ; $46a3: $bf
    daa                                           ; $46a4: $27
    ld c, b                                       ; $46a5: $48
    adc a                                         ; $46a6: $8f
    ld l, e                                       ; $46a7: $6b
    call c, $f58d                                 ; $46a8: $dc $8d $f5
    ld a, [hl]                                    ; $46ab: $7e
    ld l, l                                       ; $46ac: $6d
    ld [c], a                                     ; $46ad: $e2
    ld c, [hl]                                    ; $46ae: $4e
    ld [$0a7e], a                                 ; $46af: $ea $7e $0a
    xor d                                         ; $46b2: $aa
    ld [hl], a                                    ; $46b3: $77
    ld l, c                                       ; $46b4: $69
    add hl, de                                    ; $46b5: $19
    ret nc                                        ; $46b6: $d0

    sbc b                                         ; $46b7: $98
    rlca                                          ; $46b8: $07
    or c                                          ; $46b9: $b1
    ld [hl], d                                    ; $46ba: $72
    scf                                           ; $46bb: $37
    ld b, [hl]                                    ; $46bc: $46
    rst $20                                       ; $46bd: $e7
    adc a                                         ; $46be: $8f
    db $fc                                        ; $46bf: $fc
    ld bc, $ab73                                  ; $46c0: $01 $73 $ab
    dec a                                         ; $46c3: $3d
    or h                                          ; $46c4: $b4
    dec b                                         ; $46c5: $05
    push af                                       ; $46c6: $f5
    or l                                          ; $46c7: $b5
    ld [hl], d                                    ; $46c8: $72
    scf                                           ; $46c9: $37
    inc e                                         ; $46ca: $1c
    bit 3, b                                      ; $46cb: $cb $58
    rst $38                                       ; $46cd: $ff
    sub [hl]                                      ; $46ce: $96
    ld e, h                                       ; $46cf: $5c
    sbc l                                         ; $46d0: $9d
    pop bc                                        ; $46d1: $c1
    rst $18                                       ; $46d2: $df
    adc l                                         ; $46d3: $8d
    call c, Call_02f_4b3e                         ; $46d4: $dc $3e $4b
    cp [hl]                                       ; $46d7: $be
    inc c                                         ; $46d8: $0c
    ldh [rSCY], a                                 ; $46d9: $e0 $42
    ld d, l                                       ; $46db: $55
    xor d                                         ; $46dc: $aa
    jr @-$2c                                      ; $46dd: $18 $d2

    xor [hl]                                      ; $46df: $ae
    rst $30                                       ; $46e0: $f7
    ld c, c                                       ; $46e1: $49
    sbc a                                         ; $46e2: $9f
    add $b5                                       ; $46e3: $c6 $b5
    cp b                                          ; $46e5: $b8
    db $eb                                        ; $46e6: $eb
    adc a                                         ; $46e7: $8f
    rst $18                                       ; $46e8: $df
    ld d, d                                       ; $46e9: $52
    and $6e                                       ; $46ea: $e6 $6e
    ld de, $7cf2                                  ; $46ec: $11 $f2 $7c
    push af                                       ; $46ef: $f5
    rst $28                                       ; $46f0: $ef
    add [hl]                                      ; $46f1: $86
    dec hl                                        ; $46f2: $2b
    jr nc, jr_02f_46a3                            ; $46f3: $30 $ae

    ret c                                         ; $46f5: $d8

    push bc                                       ; $46f6: $c5
    ld a, [hl]                                    ; $46f7: $7e
    and c                                         ; $46f8: $a1
    ld e, b                                       ; $46f9: $58
    add b                                         ; $46fa: $80
    xor a                                         ; $46fb: $af
    call c, Call_02f_456f                         ; $46fc: $dc $6f $45
    adc h                                         ; $46ff: $8c
    or c                                          ; $4700: $b1
    inc [hl]                                      ; $4701: $34

Call_02f_4702:
    xor [hl]                                      ; $4702: $ae
    jr jr_02f_477c                                ; $4703: $18 $77

    ld h, e                                       ; $4705: $63
    cp l                                          ; $4706: $bd
    rra                                           ; $4707: $1f
    ld sp, hl                                     ; $4708: $f9

Jump_02f_4709:
    or d                                          ; $4709: $b2
    xor $0a                                       ; $470a: $ee $0a
    ld a, [de]                                    ; $470c: $1a
    db $fc                                        ; $470d: $fc
    sbc l                                         ; $470e: $9d
    ld hl, sp-$64                                 ; $470f: $f8 $9c
    cp c                                          ; $4711: $b9
    or c                                          ; $4712: $b1
    ld d, b                                       ; $4713: $50
    ld a, a                                       ; $4714: $7f
    ld [hl], l                                    ; $4715: $75
    halt                                          ; $4716: $76
    ld a, c                                       ; $4717: $79

jr_02f_4718:
    rst $10                                       ; $4718: $d7
    and h                                         ; $4719: $a4
    db $e4                                        ; $471a: $e4
    ldh [rOCPD], a                                ; $471b: $e0 $6b
    adc d                                         ; $471d: $8a
    and [hl]                                      ; $471e: $a6

Jump_02f_471f:
    xor $a5                                       ; $471f: $ee $a5
    cp c                                          ; $4721: $b9
    cp c                                          ; $4722: $b9
    ld a, [c]                                     ; $4723: $f2
    ld d, $27                                     ; $4724: $16 $27
    call c, $209f                                 ; $4726: $dc $9f $20
    dec a                                         ; $4729: $3d
    dec b                                         ; $472a: $05
    ld c, l                                       ; $472b: $4d
    ld a, a                                       ; $472c: $7f
    db $e4                                        ; $472d: $e4
    add [hl]                                      ; $472e: $86
    ld a, a                                       ; $472f: $7f
    db $fc                                        ; $4730: $fc
    ld a, [hl]                                    ; $4731: $7e
    cp e                                          ; $4732: $bb
    jp z, $d573                                   ; $4733: $ca $73 $d5

    ld h, $b6                                     ; $4736: $26 $b6
    push af                                       ; $4738: $f5
    dec [hl]                                      ; $4739: $35
    add $30                                       ; $473a: $c6 $30
    ld d, [hl]                                    ; $473c: $56
    xor $d6                                       ; $473d: $ee $d6
    inc [hl]                                      ; $473f: $34
    ld a, [hl+]                                   ; $4740: $2a
    ld a, [c]                                     ; $4741: $f2
    sbc l                                         ; $4742: $9d
    ld hl, sp+$3c                                 ; $4743: $f8 $3c
    dec h                                         ; $4745: $25
    and a                                         ; $4746: $a7
    cp h                                          ; $4747: $bc
    dec b                                         ; $4748: $05
    daa                                           ; $4749: $27
    ld a, $4f                                     ; $474a: $3e $4f
    ret                                           ; $474c: $c9


    xor c                                         ; $474d: $a9
    or $d0                                        ; $474e: $f6 $d0
    ld d, $c7                                     ; $4750: $16 $c7
    sub l                                         ; $4752: $95
    and l                                         ; $4753: $a5
    dec c                                         ; $4754: $0d
    ld l, b                                       ; $4755: $68
    ld e, l                                       ; $4756: $5d
    sub e                                         ; $4757: $93
    ld l, e                                       ; $4758: $6b
    db $e4                                        ; $4759: $e4
    ld [hl], l                                    ; $475a: $75
    ld h, e                                       ; $475b: $63
    adc l                                         ; $475c: $8d
    inc bc                                        ; $475d: $03
    rst $10                                       ; $475e: $d7
    and a                                         ; $475f: $a7
    db $e4                                        ; $4760: $e4
    adc [hl]                                      ; $4761: $8e
    dec [hl]                                      ; $4762: $35
    sub [hl]                                      ; $4763: $96
    inc hl                                        ; $4764: $23
    rst $08                                       ; $4765: $cf
    ld d, a                                       ; $4766: $57
    ld e, a                                       ; $4767: $5f
    cp e                                          ; $4768: $bb
    db $fc                                        ; $4769: $fc
    ld h, c                                       ; $476a: $61
    inc l                                         ; $476b: $2c
    inc bc                                        ; $476c: $03
    jp c, $6e91                                   ; $476d: $da $91 $6e

    xor h                                         ; $4770: $ac
    or a                                          ; $4771: $b7
    jr nc, jr_02f_4718                            ; $4772: $30 $a4

    ld e, l                                       ; $4774: $5d
    ld e, d                                       ; $4775: $5a
    ld b, $34                                     ; $4776: $06 $34
    and $41                                       ; $4778: $e6 $41
    inc l                                         ; $477a: $2c
    ld l, l                                       ; $477b: $6d

jr_02f_477c:
    ld c, b                                       ; $477c: $48
    adc d                                         ; $477d: $8a
    cp h                                          ; $477e: $bc
    dec b                                         ; $477f: $05
    rst $00                                       ; $4780: $c7
    sub l                                         ; $4781: $95
    reti                                          ; $4782: $d9


    ld hl, sp+$2d                                 ; $4783: $f8 $2d
    cp e                                          ; $4785: $bb
    adc $aa                                       ; $4786: $ce $aa
    rst $20                                       ; $4788: $e7
    inc e                                         ; $4789: $1c
    ld d, [hl]                                    ; $478a: $56
    reti                                          ; $478b: $d9


    ld d, d                                       ; $478c: $52
    adc a                                         ; $478d: $8f
    ld c, b                                       ; $478e: $48
    ld sp, hl                                     ; $478f: $f9
    or d                                          ; $4790: $b2

Jump_02f_4791:
    or h                                          ; $4791: $b4
    add $80                                       ; $4792: $c6 $80
    ld [hl], c                                    ; $4794: $71
    xor l                                         ; $4795: $ad
    ld de, $8d21                                  ; $4796: $11 $21 $8d
    ld h, l                                       ; $4799: $65
    ld e, $e3                                     ; $479a: $1e $e3
    rrca                                          ; $479c: $0f
    ld l, c                                       ; $479d: $69
    ld e, l                                       ; $479e: $5d
    sub e                                         ; $479f: $93
    ld l, e                                       ; $47a0: $6b
    sub [hl]                                      ; $47a1: $96
    ld c, [hl]                                    ; $47a2: $4e
    ld e, e                                       ; $47a3: $5b
    ld [hl], l                                    ; $47a4: $75
    bit 3, e                                      ; $47a5: $cb $5b
    ld b, a                                       ; $47a7: $47
    pop de                                        ; $47a8: $d1
    ld [hl-], a                                   ; $47a9: $32
    ld [hl], b                                    ; $47aa: $70
    ld d, a                                       ; $47ab: $57
    ld d, b                                       ; $47ac: $50
    cp l                                          ; $47ad: $bd
    ld c, e                                       ; $47ae: $4b
    set 0, b                                      ; $47af: $cb $c0
    dec e                                         ; $47b1: $1d
    rrc h                                         ; $47b2: $cb $0c
    dec hl                                        ; $47b4: $2b
    xor l                                         ; $47b5: $ad
    or d                                          ; $47b6: $b2
    rst $08                                       ; $47b7: $cf
    sub d                                         ; $47b8: $92
    rst $10                                       ; $47b9: $d7
    ld e, $ba                                     ; $47ba: $1e $ba
    inc hl                                        ; $47bc: $23
    dec d                                         ; $47bd: $15
    dec sp                                        ; $47be: $3b
    ld d, l                                       ; $47bf: $55
    sbc $e8                                       ; $47c0: $de $e8
    sub e                                         ; $47c2: $93
    add hl, sp                                    ; $47c3: $39
    ld c, a                                       ; $47c4: $4f
    ld l, $fb                                     ; $47c5: $2e $fb
    xor [hl]                                      ; $47c7: $ae

jr_02f_47c8:
    ld l, b                                       ; $47c8: $68
    ld [$f2ba], a                                 ; $47c9: $ea $ba $f2
    ld d, $27                                     ; $47cc: $16 $27
    cp [hl]                                       ; $47ce: $be
    sbc a                                         ; $47cf: $9f
    ld e, h                                       ; $47d0: $5c
    adc a                                         ; $47d1: $8f
    or [hl]                                       ; $47d2: $b6
    and d                                         ; $47d3: $a2
    cp c                                          ; $47d4: $b9
    ld a, $5f                                     ; $47d5: $3e $5f
    ld h, l                                       ; $47d7: $65
    push bc                                       ; $47d8: $c5
    cp b                                          ; $47d9: $b8
    ld a, [c]                                     ; $47da: $f2
    dec e                                         ; $47db: $1d
    ld l, c                                       ; $47dc: $69
    ccf                                           ; $47dd: $3f
    ld d, [hl]                                    ; $47de: $56
    or h                                          ; $47df: $b4
    add d                                         ; $47e0: $82
    adc h                                         ; $47e1: $8c
    dec hl                                        ; $47e2: $2b
    add hl, sp                                    ; $47e3: $39
    inc l                                         ; $47e4: $2c
    ld sp, $a18e                                  ; $47e5: $31 $8e $a1
    ld c, a                                       ; $47e8: $4f
    set 0, b                                      ; $47e9: $cb $c0
    dec e                                         ; $47eb: $1d
    rrc h                                         ; $47ec: $cb $0c
    dec hl                                        ; $47ee: $2b
    xor l                                         ; $47ef: $ad
    jr z, jr_02f_47c8                             ; $47f0: $28 $d6

    inc a                                         ; $47f2: $3c
    jr z, @-$5c                                   ; $47f3: $28 $a2

    ret z                                         ; $47f5: $c8

    ld [hl], a                                    ; $47f6: $77
    ld a, [$1883]                                 ; $47f7: $fa $83 $18
    di                                            ; $47fa: $f3
    and b                                         ; $47fb: $a0
    add sp, -$04                                  ; $47fc: $e8 $fc
    push bc                                       ; $47fe: $c5
    ld [hl], e                                    ; $47ff: $73
    ld b, d                                       ; $4800: $42
    sbc a                                         ; $4801: $9f
    ld l, b                                       ; $4802: $68
    push de                                       ; $4803: $d5
    ld e, l                                       ; $4804: $5d
    ld a, a                                       ; $4805: $7f
    ld b, [hl]                                    ; $4806: $46
    db $e4                                        ; $4807: $e4
    sub $c8                                       ; $4808: $d6 $c8
    rst $10                                       ; $480a: $d7
    ld e, a                                       ; $480b: $5f
    db $ed                                        ; $480c: $ed
    and c                                         ; $480d: $a1
    dec sp                                        ; $480e: $3b
    xor [hl]                                      ; $480f: $ae
    xor h                                         ; $4810: $ac
    ld h, [hl]                                    ; $4811: $66
    ld a, [$35b3]                                 ; $4812: $fa $b3 $35
    and $e9                                       ; $4815: $e6 $e9
    add a                                         ; $4817: $87
    ld sp, $58ae                                  ; $4818: $31 $ae $58
    jr jr_02f_484d                                ; $481b: $18 $30

    add $52                                       ; $481d: $c6 $52
    adc h                                         ; $481f: $8c
    adc e                                         ; $4820: $8b
    db $fd                                        ; $4821: $fd
    inc a                                         ; $4822: $3c
    ld a, [c]                                     ; $4823: $f2
    ld d, $47                                     ; $4824: $16 $47
    sbc $ed                                       ; $4826: $de $ed
    cp d                                          ; $4828: $ba
    sbc [hl]                                      ; $4829: $9e
    di                                            ; $482a: $f3
    ld a, h                                       ; $482b: $7c
    push af                                       ; $482c: $f5
    or l                                          ; $482d: $b5
    ld c, d                                       ; $482e: $4a
    db $e3                                        ; $482f: $e3
    xor d                                         ; $4830: $aa
    db $ec                                        ; $4831: $ec
    ld [hl], e                                    ; $4832: $73
    dec l                                         ; $4833: $2d
    ld [hl], b                                    ; $4834: $70
    rst $10                                       ; $4835: $d7
    ld e, l                                       ; $4836: $5d
    ld b, c                                       ; $4837: $41
    db $e3                                        ; $4838: $e3
    sbc b                                         ; $4839: $98
    ld c, [hl]                                    ; $483a: $4e
    db $e3                                        ; $483b: $e3
    add l                                         ; $483c: $85

jr_02f_483d:
    ld b, l                                       ; $483d: $45
    db $e3                                        ; $483e: $e3
    ld [hl], a                                    ; $483f: $77
    inc hl                                        ; $4840: $23
    ld [hl], d                                    ; $4841: $72
    ld l, e                                       ; $4842: $6b
    db $e4                                        ; $4843: $e4
    db $e3                                        ; $4844: $e3
    adc d                                         ; $4845: $8a
    dec [hl]                                      ; $4846: $35
    rrca                                          ; $4847: $0f
    adc d                                         ; $4848: $8a
    jr z, jr_02f_483d                             ; $4849: $28 $f2

    ld d, $a7                                     ; $484b: $16 $a7

jr_02f_484d:
    ccf                                           ; $484d: $3f
    inc l                                         ; $484e: $2c
    ld [hl], l                                    ; $484f: $75
    ld d, [hl]                                    ; $4850: $56
    inc d                                         ; $4851: $14
    ld l, e                                       ; $4852: $6b
    ld e, $14                                     ; $4853: $1e $14
    ld d, c                                       ; $4855: $51
    inc h                                         ; $4856: $24
    ld [hl], a                                    ; $4857: $77
    xor h                                         ; $4858: $ac
    or c                                          ; $4859: $b1
    inc e                                         ; $485a: $1c
    ld a, c                                       ; $485b: $79
    sbc $02                                       ; $485c: $de $02
    dec e                                         ; $485e: $1d
    db $e4                                        ; $485f: $e4
    rla                                           ; $4860: $17
    ld h, $77                                     ; $4861: $26 $77
    xor h                                         ; $4863: $ac
    cp c                                          ; $4864: $b9
    rst $10                                       ; $4865: $d7
    db $e4                                        ; $4866: $e4
    dec sp                                        ; $4867: $3b
    ld b, c                                       ; $4868: $41
    ld l, e                                       ; $4869: $6b
    ld b, h                                       ; $486a: $44
    ld c, b                                       ; $486b: $48
    dec sp                                        ; $486c: $3b
    pop af                                        ; $486d: $f1
    ld a, c                                       ; $486e: $79
    ld c, d                                       ; $486f: $4a
    ld c, [hl]                                    ; $4870: $4e
    cp e                                          ; $4871: $bb
    sub c                                         ; $4872: $91
    ld hl, $7f4d                                  ; $4873: $21 $4d $7f
    db $e4                                        ; $4876: $e4
    add [hl]                                      ; $4877: $86
    ld a, a                                       ; $4878: $7f

jr_02f_4879:
    ld e, h                                       ; $4879: $5c
    xor e                                         ; $487a: $ab
    ld e, $38                                     ; $487b: $1e $38
    ld a, [$96b8]                                 ; $487d: $fa $b8 $96
    ld [hl], $ac                                  ; $4880: $36 $ac
    ld a, [c]                                     ; $4882: $f2
    ld d, $1d                                     ; $4883: $16 $1d
    inc c                                         ; $4885: $0c
    ld h, e                                       ; $4886: $63
    rst $00                                       ; $4887: $c7
    ld a, [de]                                    ; $4888: $1a
    res 2, c                                      ; $4889: $cb $91
    daa                                           ; $488b: $27
    add a                                         ; $488c: $87
    ld h, l                                       ; $488d: $65
    ld [hl], $96                                  ; $488e: $36 $96
    db $db                                        ; $4890: $db
    rst $20                                       ; $4891: $e7
    cp b                                          ; $4892: $b8
    ld b, [hl]                                    ; $4893: $46
    sbc a                                         ; $4894: $9f
    db $db                                        ; $4895: $db
    and a                                         ; $4896: $a7
    dec d                                         ; $4897: $15
    adc l                                         ; $4898: $8d
    ld e, $d0                                     ; $4899: $1e $d0
    ld a, [de]                                    ; $489b: $1a
    ld de, $aad2                                  ; $489c: $11 $d2 $aa
    ld d, a                                       ; $489f: $57
    jp hl                                         ; $48a0: $e9


    db $d3                                        ; $48a1: $d3
    ld e, [hl]                                    ; $48a2: $5e
    rst $30                                       ; $48a3: $f7
    res 7, [hl]                                   ; $48a4: $cb $be
    rst $18                                       ; $48a6: $df
    ret z                                         ; $48a7: $c8

    jr nc, jr_02f_48c0                            ; $48a8: $30 $16

    rst $08                                       ; $48aa: $cf
    add hl, bc                                    ; $48ab: $09
    ld l, e                                       ; $48ac: $6b
    inc de                                        ; $48ad: $13
    ld [hl], a                                    ; $48ae: $77
    add d                                         ; $48af: $82
    dec l                                         ; $48b0: $2d
    ld d, h                                       ; $48b1: $54
    add hl, de                                    ; $48b2: $19
    ld a, [hl]                                    ; $48b3: $7e
    xor l                                         ; $48b4: $ad
    pop af                                        ; $48b5: $f1
    ld [hl], a                                    ; $48b6: $77
    or c                                          ; $48b7: $b1
    dec c                                         ; $48b8: $0d
    cp a                                          ; $48b9: $bf
    sub d                                         ; $48ba: $92
    jp $90b2                                      ; $48bb: $c3 $b2 $90


    db $db                                        ; $48be: $db
    inc c                                         ; $48bf: $0c

jr_02f_48c0:
    ld [hl+], a                                   ; $48c0: $22
    ld [hl], b                                    ; $48c1: $70
    inc l                                         ; $48c2: $2c
    ld a, a                                       ; $48c3: $7f
    or c                                          ; $48c4: $b1
    inc c                                         ; $48c5: $0c
    ld l, b                                       ; $48c6: $68
    call z, $d723                                 ; $48c7: $cc $23 $d7
    ld l, $4b                                     ; $48ca: $2e $4b
    reti                                          ; $48cc: $d9


    ld d, a                                       ; $48cd: $57
    cp [hl]                                       ; $48ce: $be
    ld c, $56                                     ; $48cf: $0e $56
    sub h                                         ; $48d1: $94
    ld a, [hl]                                    ; $48d2: $7e
    dec [hl]                                      ; $48d3: $35
    ld l, e                                       ; $48d4: $6b
    inc b                                         ; $48d5: $04
    inc [hl]                                      ; $48d6: $34
    and $41                                       ; $48d7: $e6 $41
    adc h                                         ; $48d9: $8c
    rst $18                                       ; $48da: $df
    cp $fb                                        ; $48db: $fe $fb
    sub a                                         ; $48dd: $97
    ld a, h                                       ; $48de: $7c
    ld [hl], l                                    ; $48df: $75
    ld b, [hl]                                    ; $48e0: $46
    rrca                                          ; $48e1: $0f
    ld l, b                                       ; $48e2: $68
    push de                                       ; $48e3: $d5
    xor e                                         ; $48e4: $ab
    db $f4                                        ; $48e5: $f4
    add hl, hl                                    ; $48e6: $29
    ld l, a                                       ; $48e7: $6f
    ld bc, $b5f5                                  ; $48e8: $01 $f5 $b5
    jr nc, jr_02f_4879                            ; $48eb: $30 $8c

    and l                                         ; $48ed: $a5
    ld d, b                                       ; $48ee: $50
    ld a, a                                       ; $48ef: $7f
    add hl, de                                    ; $48f0: $19
    ret nc                                        ; $48f1: $d0

    or d                                          ; $48f2: $b2
    or l                                          ; $48f3: $b5
    xor a                                         ; $48f4: $af
    dec [hl]                                      ; $48f5: $35
    rrca                                          ; $48f6: $0f
    call c, Call_02f_570d                         ; $48f7: $dc $0d $57
    inc [hl]                                      ; $48fa: $34
    sub [hl]                                      ; $48fb: $96
    add hl, sp                                    ; $48fc: $39
    sub a                                         ; $48fd: $97
    xor a                                         ; $48fe: $af
    ld a, c                                       ; $48ff: $79
    ldh [$a3], a                                  ; $4900: $e0 $a3
    rlca                                          ; $4902: $07
    reti                                          ; $4903: $d9


    rrca                                          ; $4904: $0f
    inc a                                         ; $4905: $3c
    sub d                                         ; $4906: $92
    xor e                                         ; $4907: $ab
    inc c                                         ; $4908: $0c
    ld h, e                                       ; $4909: $63
    reti                                          ; $490a: $d9


    jp c, $1ad7                                   ; $490b: $da $d7 $1a

    ld b, c                                       ; $490e: $41
    rst $20                                       ; $490f: $e7
    dec [hl]                                      ; $4910: $35
    ld d, $2b                                     ; $4911: $16 $2b
    ld [hl], a                                    ; $4913: $77
    ld c, e                                       ; $4914: $4b
    reti                                          ; $4915: $d9


    rst $20                                       ; $4916: $e7
    rst $28                                       ; $4917: $ef
    ld a, a                                       ; $4918: $7f
    ld a, c                                       ; $4919: $79
    sbc $02                                       ; $491a: $de $02
    dec e                                         ; $491c: $1d
    sbc $5f                                       ; $491d: $de $5f
    jp c, $baeb                                   ; $491f: $da $eb $ba

    sub [hl]                                      ; $4922: $96
    push bc                                       ; $4923: $c5
    ld [hl], $2f                                  ; $4924: $36 $2f
    xor b                                         ; $4926: $a8
    db $dd                                        ; $4927: $dd
    ld [$6a38], sp                                ; $4928: $08 $38 $6a
    ld b, l                                       ; $492b: $45
    ld sp, $c6ee                                  ; $492c: $31 $ee $c6
    ld a, d                                       ; $492f: $7a
    ccf                                           ; $4930: $3f
    and [hl]                                      ; $4931: $a6
    cp a                                          ; $4932: $bf
    ld d, e                                       ; $4933: $53
    ld e, $54                                     ; $4934: $1e $54
    or $51                                        ; $4936: $f6 $51
    ld sp, hl                                     ; $4938: $f9
    adc [hl]                                      ; $4939: $8e
    dec hl                                        ; $493a: $2b
    ld l, e                                       ; $493b: $6b
    ld e, $b8                                     ; $493c: $1e $b8
    dec de                                        ; $493e: $1b
    jp nc, $011a                                  ; $493f: $d2 $1a $01

    push de                                       ; $4942: $d5
    db $eb                                        ; $4943: $eb
    sbc d                                         ; $4944: $9a
    ld e, h                                       ; $4945: $5c
    adc e                                         ; $4946: $8b
    cp e                                          ; $4947: $bb
    cp $de                                        ; $4948: $fe $de
    ld [hl], l                                    ; $494a: $75
    ld b, c                                       ; $494b: $41
    inc hl                                        ; $494c: $23
    rst $08                                       ; $494d: $cf
    ld e, e                                       ; $494e: $5b
    daa                                           ; $494f: $27
    db $fd                                        ; $4950: $fd
    ld sp, $02b6                                  ; $4951: $31 $b6 $02
    jr c, @+$7f                                   ; $4954: $38 $7d

    and $d5                                       ; $4956: $e6 $d5
    ret z                                         ; $4958: $c8

    ld [hl], a                                    ; $4959: $77
    xor h                                         ; $495a: $ac
    ld hl, sp+$79                                 ; $495b: $f8 $79
    ret z                                         ; $495d: $c8

    jp nc, $d18c                                  ; $495e: $d2 $8c $d1

    dec [hl]                                      ; $4961: $35
    ld hl, sp-$55                                 ; $4962: $f8 $ab
    ld e, $e5                                     ; $4964: $1e $e5
    dec sp                                        ; $4966: $3b
    add hl, de                                    ; $4967: $19
    xor $fa                                       ; $4968: $ee $fa
    ld l, e                                       ; $496a: $6b
    db $f4                                        ; $496b: $f4
    ld b, e                                       ; $496c: $43
    rst $20                                       ; $496d: $e7
    rst $10                                       ; $496e: $d7
    ld h, e                                       ; $496f: $63
    ld e, $44                                     ; $4970: $1e $44
    ld [hl], d                                    ; $4972: $72
    rst $00                                       ; $4973: $c7
    ld a, [de]                                    ; $4974: $1a
    res 2, c                                      ; $4975: $cb $91
    rst $10                                       ; $4977: $d7
    ld e, $da                                     ; $4978: $1e $da
    ld [bc], a                                    ; $497a: $02
    ld b, a                                       ; $497b: $47
    or c                                          ; $497c: $b1
    sub a                                         ; $497d: $97
    ld b, d                                       ; $497e: $42
    db $fd                                        ; $497f: $fd
    db $e4                                        ; $4980: $e4
    or d                                          ; $4981: $b2
    or l                                          ; $4982: $b5
    add b                                         ; $4983: $80
    and [hl]                                      ; $4984: $a6
    ld a, c                                       ; $4985: $79
    and c                                         ; $4986: $a1
    ld h, l                                       ; $4987: $65
    ldh [$fe], a                                  ; $4988: $e0 $fe
    cp $fe                                        ; $498a: $fe $fe
    db $dd                                        ; $498c: $dd
    sub $58                                       ; $498d: $d6 $58
    xor h                                         ; $498f: $ac
    ld l, b                                       ; $4990: $68
    rla                                           ; $4991: $17
    ei                                            ; $4992: $fb
    ld h, c                                       ; $4993: $61
    rst $20                                       ; $4994: $e7
    cp h                                          ; $4995: $bc
    dec b                                         ; $4996: $05
    ld b, a                                       ; $4997: $47
    dec b                                         ; $4998: $05
    push de                                       ; $4999: $d5
    cp e                                          ; $499a: $bb
    or h                                          ; $499b: $b4
    inc c                                         ; $499c: $0c
    ld l, b                                       ; $499d: $68
    inc b                                         ; $499e: $04
    or e                                          ; $499f: $b3
    sbc b                                         ; $49a0: $98
    ld de, $35b9                                  ; $49a1: $11 $b9 $35
    or a                                          ; $49a4: $b7
    push af                                       ; $49a5: $f5
    or a                                          ; $49a6: $b7
    and $41                                       ; $49a7: $e6 $41
    ld de, $8ec5                                  ; $49a9: $11 $c5 $8e
    dec [hl]                                      ; $49ac: $35
    rst $30                                       ; $49ad: $f7
    sbc d                                         ; $49ae: $9a
    jp c, Jump_02f_5b43                           ; $49af: $da $43 $5b

    dec e                                         ; $49b2: $1d
    dec l                                         ; $49b3: $2d
    and [hl]                                      ; $49b4: $a6
    ld a, a                                       ; $49b5: $7f
    dec a                                         ; $49b6: $3d
    ld d, a                                       ; $49b7: $57
    sbc $02                                       ; $49b8: $de $02
    ld b, a                                       ; $49ba: $47
    add sp, -$71                                  ; $49bb: $e8 $8f
    rst $18                                       ; $49bd: $df
    sbc d                                         ; $49be: $9a
    xor [hl]                                      ; $49bf: $ae
    cpl                                           ; $49c0: $2f
    or [hl]                                       ; $49c1: $b6
    ld [$c3d1], a                                 ; $49c2: $ea $d1 $c3
    jp c, $edc4                                   ; $49c5: $da $c4 $ed

    cp b                                          ; $49c8: $b8
    ld [hl-], a                                   ; $49c9: $32
    add $96                                       ; $49ca: $c6 $96
    add $8f                                       ; $49cc: $c6 $8f
    cp [hl]                                       ; $49ce: $be
    add $7c                                       ; $49cf: $c6 $7c
    db $fc                                        ; $49d1: $fc
    add $3c                                       ; $49d2: $c6 $3c
    sub a                                         ; $49d4: $97
    rst $28                                       ; $49d5: $ef
    sub h                                         ; $49d6: $94
    rst $30                                       ; $49d7: $f7
    rla                                           ; $49d8: $17
    cp b                                          ; $49d9: $b8
    rst $30                                       ; $49da: $f7
    rst $30                                       ; $49db: $f7
    or l                                          ; $49dc: $b5
    ld [bc], a                                    ; $49dd: $02

jr_02f_49de:
    jr c, jr_02f_49de                             ; $49de: $38 $fe

    cp $d7                                        ; $49e0: $fe $d7
    inc e                                         ; $49e2: $1c
    push af                                       ; $49e3: $f5
    ld d, a                                       ; $49e4: $57
    ld h, a                                       ; $49e5: $67
    sub l                                         ; $49e6: $95
    ld a, l                                       ; $49e7: $7d
    sub [hl]                                      ; $49e8: $96
    cp h                                          ; $49e9: $bc
    ld [hl], $b1                                  ; $49ea: $36 $b1
    dec b                                         ; $49ec: $05
    sbc l                                         ; $49ed: $9d
    inc [hl]                                      ; $49ee: $34
    and $61                                       ; $49ef: $e6 $61
    xor c                                         ; $49f1: $a9
    sub e                                         ; $49f2: $93
    call c, $e6b1                                 ; $49f3: $dc $b1 $e6
    ld e, [hl]                                    ; $49f6: $5e
    sub e                                         ; $49f7: $93
    ld l, a                                       ; $49f8: $6f
    daa                                           ; $49f9: $27
    db $fd                                        ; $49fa: $fd
    pop de                                        ; $49fb: $d1
    db $dd                                        ; $49fc: $dd
    adc b                                         ; $49fd: $88
    db $f4                                        ; $49fe: $f4
    cp c                                          ; $49ff: $b9
    ld hl, $2de5                                  ; $4a00: $21 $e5 $2d
    push af                                       ; $4a03: $f5
    or l                                          ; $4a04: $b5
    add $1c                                       ; $4a05: $c6 $1c
    or l                                          ; $4a07: $b5
    inc c                                         ; $4a08: $0c
    ld l, b                                       ; $4a09: $68
    rst $00                                       ; $4a0a: $c7
    ld a, [de]                                    ; $4a0b: $1a
    res 2, c                                      ; $4a0c: $cb $91
    rst $08                                       ; $4a0e: $cf
    add $15                                       ; $4a0f: $c6 $15
    cp e                                          ; $4a11: $bb
    ret c                                         ; $4a12: $d8

    cpl                                           ; $4a13: $2f
    inc d                                         ; $4a14: $14
    jp $374f                                      ; $4a15: $c3 $4f $37


    ld d, a                                       ; $4a18: $57
    add h                                         ; $4a19: $84
    ld a, l                                       ; $4a1a: $7d
    ld d, d                                       ; $4a1b: $52
    xor h                                         ; $4a1c: $ac
    adc $fe                                       ; $4a1d: $ce $fe
    add e                                         ; $4a1f: $83
    jr @+$49                                      ; $4a20: $18 $47

    rst $10                                       ; $4a22: $d7
    ld [$f1ac], a                                 ; $4a23: $ea $ac $f1
    rst $10                                       ; $4a26: $d7
    cp h                                          ; $4a27: $bc
    jr @-$27                                      ; $4a28: $18 $d7

    adc d                                         ; $4a2a: $8a
    xor l                                         ; $4a2b: $ad
    inc hl                                        ; $4a2c: $23
    jp z, Jump_02f_795d                           ; $4a2d: $ca $5d $79

    dec bc                                        ; $4a30: $0b
    daa                                           ; $4a31: $27
    jp Jump_02f_415d                              ; $4a32: $c3 $5d $41


    push af                                       ; $4a35: $f5
    ld l, $2d                                     ; $4a36: $2e $2d
    inc bc                                        ; $4a38: $03
    ld a, [de]                                    ; $4a39: $1a
    pop bc                                        ; $4a3a: $c1
    jp nc, Jump_000_3186                          ; $4a3b: $d2 $86 $31

    cp h                                          ; $4a3e: $bc
    ld [hl], b                                    ; $4a3f: $70
    dec e                                         ; $4a40: $1d

jr_02f_4a41:
    xor h                                         ; $4a41: $ac
    jr z, jr_02f_4a41                             ; $4a42: $28 $fd

    ld l, d                                       ; $4a44: $6a
    ld l, d                                       ; $4a45: $6a
    rrca                                          ; $4a46: $0f
    ld l, l                                       ; $4a47: $6d
    ld bc, $b5f5                                  ; $4a48: $01 $f5 $b5
    dec bc                                        ; $4a4b: $0b
    add h                                         ; $4a4c: $84
    and l                                         ; $4a4d: $a5
    ld l, b                                       ; $4a4e: $68
    ldh a, [$97]                                  ; $4a4f: $f0 $97
    ld a, d                                       ; $4a51: $7a
    sub b                                         ; $4a52: $90
    ld bc, $f8d1                                  ; $4a53: $01 $d1 $f8
    db $dd                                        ; $4a56: $dd
    jr c, jr_02f_4a63                             ; $4a57: $38 $0a

    sub $3c                                       ; $4a59: $d6 $3c
    ldh a, [$c1]                                  ; $4a5b: $f0 $c1
    rst $18                                       ; $4a5d: $df
    xor l                                         ; $4a5e: $ad
    call nc, $3465                                ; $4a5f: $d4 $65 $34
    pop de                                        ; $4a62: $d1

jr_02f_4a63:
    ld b, d                                       ; $4a63: $42
    ld sp, $30ab                                  ; $4a64: $31 $ab $30
    sub [hl]                                      ; $4a67: $96
    ld bc, $d7dc                                  ; $4a68: $01 $dc $d7
    sbc b                                         ; $4a6b: $98
    rst $30                                       ; $4a6c: $f7
    ld l, c                                       ; $4a6d: $69
    adc l                                         ; $4a6e: $8d
    push bc                                       ; $4a6f: $c5
    ret z                                         ; $4a70: $c8

    sbc h                                         ; $4a71: $9c
    bit 2, a                                      ; $4a72: $cb $57
    ld h, a                                       ; $4a74: $67
    ld e, l                                       ; $4a75: $5d
    sub e                                         ; $4a76: $93
    ld l, e                                       ; $4a77: $6b
    cpl                                           ; $4a78: $2f
    ld d, l                                       ; $4a79: $55
    sub b                                         ; $4a7a: $90
    ld [hl], l                                    ; $4a7b: $75
    adc e                                         ; $4a7c: $8b
    ld [hl], c                                    ; $4a7d: $71
    xor l                                         ; $4a7e: $ad
    ld sp, $f427                                  ; $4a7f: $31 $27 $f4
    cp h                                          ; $4a82: $bc
    dec b                                         ; $4a83: $05
    and a                                         ; $4a84: $a7
    adc b                                         ; $4a85: $88
    ld h, l                                       ; $4a86: $65
    adc $75                                       ; $4a87: $ce $75
    ld a, [hl]                                    ; $4a89: $7e
    ld [hl], d                                    ; $4a8a: $72
    rst $00                                       ; $4a8b: $c7
    adc d                                         ; $4a8c: $8a
    sbc a                                         ; $4a8d: $9f
    add a                                         ; $4a8e: $87
    inc l                                         ; $4a8f: $2c
    ld c, l                                       ; $4a90: $4d
    ld b, c                                       ; $4a91: $41
    ld [hl], e                                    ; $4a92: $73
    ld sp, $a0fa                                  ; $4a93: $31 $fa $a0
    jp c, $16c4                                   ; $4a96: $da $c4 $16

    ld b, a                                       ; $4a99: $47
    sub l                                         ; $4a9a: $95
    and d                                         ; $4a9b: $a2
    reti                                          ; $4a9c: $d9


    adc d                                         ; $4a9d: $8a
    call $cd6f                                    ; $4a9e: $cd $6f $cd
    ei                                            ; $4aa1: $fb
    and c                                         ; $4aa2: $a1
    ld [hl], c                                    ; $4aa3: $71
    dec l                                         ; $4aa4: $2d
    adc e                                         ; $4aa5: $8b
    ld l, l                                       ; $4aa6: $6d
    ld e, [hl]                                    ; $4aa7: $5e
    ld d, b                                       ; $4aa8: $50
    ld sp, hl                                     ; $4aa9: $f9
    ld c, [hl]                                    ; $4aaa: $4e
    ret nz                                        ; $4aab: $c0

    xor b                                         ; $4aac: $a8
    ld d, a                                       ; $4aad: $57
    inc l                                         ; $4aae: $2c
    cp c                                          ; $4aaf: $b9
    ld d, e                                       ; $4ab0: $53
    sbc $cf                                       ; $4ab1: $de $cf
    ld e, e                                       ; $4ab3: $5b
    ld e, c                                       ; $4ab4: $59
    ld l, h                                       ; $4ab5: $6c
    ld sp, hl                                     ; $4ab6: $f9
    ld c, [hl]                                    ; $4ab7: $4e
    ld a, c                                       ; $4ab8: $79
    ccf                                           ; $4ab9: $3f
    reti                                          ; $4aba: $d9


    ld [bc], a                                    ; $4abb: $02

jr_02f_4abc:
    push af                                       ; $4abc: $f5
    or l                                          ; $4abd: $b5
    sub b                                         ; $4abe: $90
    dec de                                        ; $4abf: $1b
    add $dc                                       ; $4ac0: $c6 $dc
    jr @+$1e                                      ; $4ac2: $18 $1c

    rst $10                                       ; $4ac4: $d7
    xor d                                         ; $4ac5: $aa
    ei                                            ; $4ac6: $fb
    cp e                                          ; $4ac7: $bb
    ld l, $68                                     ; $4ac8: $2e $68
    db $e4                                        ; $4aca: $e4
    db $e3                                        ; $4acb: $e3
    jr nc, jr_02f_4abc                            ; $4acc: $30 $ee

    add $7a                                       ; $4ace: $c6 $7a
    ccf                                           ; $4ad0: $3f
    cp c                                          ; $4ad1: $b9
    jp z, Jump_02f_7630                           ; $4ad2: $ca $30 $76

    ld l, c                                       ; $4ad5: $69
    ld e, a                                       ; $4ad6: $5f
    dec bc                                        ; $4ad7: $0b
    cp c                                          ; $4ad8: $b9
    xor l                                         ; $4ad9: $ad
    or c                                          ; $4ada: $b1
    ld e, b                                       ; $4adb: $58
    jp c, $2c2e                                   ; $4adc: $da $2e $2c

    jp z, $8277                                   ; $4adf: $ca $77 $82

    ld d, [hl]                                    ; $4ae2: $56
    and c                                         ; $4ae3: $a1
    and b                                         ; $4ae4: $a0
    ld [hl], e                                    ; $4ae5: $73
    ld [hl], d                                    ; $4ae6: $72
    rst $10                                       ; $4ae7: $d7
    ld e, l                                       ; $4ae8: $5d
    ld b, c                                       ; $4ae9: $41
    db $e3                                        ; $4aea: $e3
    ld e, d                                       ; $4aeb: $5a
    pop de                                        ; $4aec: $d1
    xor [hl]                                      ; $4aed: $ae
    rst $30                                       ; $4aee: $f7
    db $d3                                        ; $4aef: $d3
    jr z, jr_02f_4b51                             ; $4af0: $28 $5f

    sbc l                                         ; $4af2: $9d
    ld [hl], c                                    ; $4af3: $71
    push bc                                       ; $4af4: $c5
    xor h                                         ; $4af5: $ac
    jp nz, $9d58                                  ; $4af6: $c2 $58 $9d

    ld d, l                                       ; $4af9: $55
    rrca                                          ; $4afa: $0f
    sub a                                         ; $4afb: $97
    ld bc, $7f1c                                  ; $4afc: $01 $1c $7f
    ret z                                         ; $4aff: $c8

    add sp, -$2d                                  ; $4b00: $e8 $d3
    jr jr_02f_4b81                                ; $4b02: $18 $7d

    db $f4                                        ; $4b04: $f4
    ld d, l                                       ; $4b05: $55
    ld a, [de]                                    ; $4b06: $1a
    di                                            ; $4b07: $f3
    ret nc                                        ; $4b08: $d0

    ld d, a                                       ; $4b09: $57
    ld l, h                                       ; $4b0a: $6c
    and c                                         ; $4b0b: $a1
    jp z, $6bf0                                   ; $4b0c: $ca $f0 $6b

    adc l                                         ; $4b0f: $8d
    cp a                                          ; $4b10: $bf
    adc e                                         ; $4b11: $8b
    ld l, l                                       ; $4b12: $6d
    ld hl, sp-$6b                                 ; $4b13: $f8 $95
    xor a                                         ; $4b15: $af
    db $e3                                        ; $4b16: $e3
    inc bc                                        ; $4b17: $03
    ld [hl], a                                    ; $4b18: $77
    call nc, $f5f9                                ; $4b19: $d4 $f9 $f5
    sbc b                                         ; $4b1c: $98
    rlca                                          ; $4b1d: $07
    ld sp, $f4ab                                  ; $4b1e: $31 $ab $f4
    push hl                                       ; $4b21: $e5
    dec hl                                        ; $4b22: $2b
    jp c, $cf89                                   ; $4b23: $da $89 $cf

    sbc c                                         ; $4b26: $99
    dec de                                        ; $4b27: $1b
    dec bc                                        ; $4b28: $0b
    push af                                       ; $4b29: $f5
    ld d, a                                       ; $4b2a: $57
    ld h, a                                       ; $4b2b: $67
    sub a                                         ; $4b2c: $97
    ld [hl], a                                    ; $4b2d: $77
    ld c, l                                       ; $4b2e: $4d
    sbc d                                         ; $4b2f: $9a
    pop bc                                        ; $4b30: $c1
    ld [c], a                                     ; $4b31: $e2
    ld d, l                                       ; $4b32: $55
    sub l                                         ; $4b33: $95
    ld l, b                                       ; $4b34: $68
    ld e, h                                       ; $4b35: $5c
    dec hl                                        ; $4b36: $2b
    or [hl]                                       ; $4b37: $b6
    and [hl]                                      ; $4b38: $a6
    ld b, b                                       ; $4b39: $40
    adc h                                         ; $4b3a: $8c
    ld l, l                                       ; $4b3b: $6d
    ld b, b                                       ; $4b3c: $40
    ld a, [de]                                    ; $4b3d: $1a

Call_02f_4b3e:
    dec a                                         ; $4b3e: $3d
    ldh a, [$85]                                  ; $4b3f: $f0 $85
    ld d, l                                       ; $4b41: $55
    ld [c], a                                     ; $4b42: $e2
    cp b                                          ; $4b43: $b8
    ld a, [hl-]                                   ; $4b44: $3a
    xor e                                         ; $4b45: $ab
    ldh a, [$03]                                  ; $4b46: $f0 $03
    ld d, d                                       ; $4b48: $52

jr_02f_4b49:
    db $ed                                        ; $4b49: $ed
    and c                                         ; $4b4a: $a1
    dec sp                                        ; $4b4b: $3b
    xor [hl]                                      ; $4b4c: $ae
    call nz, $0798                                ; $4b4d: $c4 $98 $07
    or c                                          ; $4b50: $b1

jr_02f_4b51:
    sbc d                                         ; $4b51: $9a
    cp c                                          ; $4b52: $b9
    ret z                                         ; $4b53: $c8

    rra                                           ; $4b54: $1f
    jr nc, jr_02f_4b49                            ; $4b55: $30 $f2

    rst $30                                       ; $4b57: $f7
    ld l, c                                       ; $4b58: $69
    and d                                         ; $4b59: $a2
    dec [hl]                                      ; $4b5a: $35
    cp $d2                                        ; $4b5b: $fe $d2
    ld c, b                                       ; $4b5d: $48
    ld a, [c]                                     ; $4b5e: $f2
    rst $30                                       ; $4b5f: $f7
    ld l, c                                       ; $4b60: $69
    ld e, h                                       ; $4b61: $5c
    dec hl                                        ; $4b62: $2b
    rst $30                                       ; $4b63: $f7
    sub a                                         ; $4b64: $97
    adc d                                         ; $4b65: $8a
    dec bc                                        ; $4b66: $0b
    inc e                                         ; $4b67: $1c
    jp hl                                         ; $4b68: $e9


    or [hl]                                       ; $4b69: $b6
    and $81                                       ; $4b6a: $e6 $81
    xor a                                         ; $4b6c: $af
    call c, Call_000_3555                         ; $4b6d: $dc $55 $35
    rst $08                                       ; $4b70: $cf
    ld c, c                                       ; $4b71: $49
    sbc [hl]                                      ; $4b72: $9e
    rst $28                                       ; $4b73: $ef
    xor b                                         ; $4b74: $a8
    rst $08                                       ; $4b75: $cf
    inc a                                         ; $4b76: $3c
    ld d, h                                       ; $4b77: $54
    cp l                                          ; $4b78: $bd
    ld [$c8e1], a                                 ; $4b79: $ea $e1 $c8
    and $b7                                       ; $4b7c: $e6 $b7
    and $fd                                       ; $4b7e: $e6 $fd
    ret nc                                        ; $4b80: $d0

jr_02f_4b81:
    adc d                                         ; $4b81: $8a
    sub $14                                       ; $4b82: $d6 $14
    adc b                                         ; $4b84: $88
    ld sp, $5a48                                  ; $4b85: $31 $48 $5a
    di                                            ; $4b88: $f3
    ld [hl+], a                                   ; $4b89: $22
    jr nc, jr_02f_4be1                            ; $4b8a: $30 $55

    sub h                                         ; $4b8c: $94
    or a                                          ; $4b8d: $b7
    ld b, a                                       ; $4b8e: $47
    ld h, b                                       ; $4b8f: $60

jr_02f_4b90:
    jr z, @-$6c                                   ; $4b90: $28 $92

    bit 4, d                                      ; $4b92: $cb $62
    sbc e                                         ; $4b94: $9b
    rla                                           ; $4b95: $17
    ld d, h                                       ; $4b96: $54
    sbc $02                                       ; $4b97: $de $02
    daa                                           ; $4b99: $27
    db $fd                                        ; $4b9a: $fd
    dec [hl]                                      ; $4b9b: $35
    rrca                                          ; $4b9c: $0f
    call c, Call_02f_690d                         ; $4b9d: $dc $0d $69
    and c                                         ; $4ba0: $a1
    add l                                         ; $4ba1: $85
    sbc h                                         ; $4ba2: $9c
    ld b, c                                       ; $4ba3: $41
    rra                                           ; $4ba4: $1f
    rst $10                                       ; $4ba5: $d7
    adc d                                         ; $4ba6: $8a
    db $ed                                        ; $4ba7: $ed
    or d                                          ; $4ba8: $b2
    ld b, [hl]                                    ; $4ba9: $46
    db $e3                                        ; $4baa: $e3
    ld [hl], a                                    ; $4bab: $77
    db $fc                                        ; $4bac: $fc
    inc c                                         ; $4bad: $0c
    ld b, $a6                                     ; $4bae: $06 $a6
    or b                                          ; $4bb0: $b0
    jr nz, jr_02f_4b90                            ; $4bb1: $20 $dd

    sub $3c                                       ; $4bb3: $d6 $3c
    ldh a, [$15]                                  ; $4bb5: $f0 $15
    xor l                                         ; $4bb7: $ad
    ld a, d                                       ; $4bb8: $7a
    sbc a                                         ; $4bb9: $9f
    db $e4                                        ; $4bba: $e4
    xor e                                         ; $4bbb: $ab
    or e                                          ; $4bbc: $b3
    ld h, d                                       ; $4bbd: $62
    and e                                         ; $4bbe: $a3
    rlca                                          ; $4bbf: $07
    sbc [hl]                                      ; $4bc0: $9e
    xor a                                         ; $4bc1: $af
    cp [hl]                                       ; $4bc2: $be
    halt                                          ; $4bc3: $76
    ld sp, hl                                     ; $4bc4: $f9
    jp $0658                                      ; $4bc5: $c3 $58 $06


    xor $2a                                       ; $4bc8: $ee $2a
    ld b, l                                       ; $4bca: $45
    ld d, e                                       ; $4bcb: $53
    ret nc                                        ; $4bcc: $d0

    inc l                                         ; $4bcd: $2c
    ld b, d                                       ; $4bce: $42
    rst $20                                       ; $4bcf: $e7
    adc a                                         ; $4bd0: $8f
    push hl                                       ; $4bd1: $e5
    or $b9                                        ; $4bd2: $f6 $b9
    sub $3c                                       ; $4bd4: $d6 $3c
    ldh a, [$5d]                                  ; $4bd6: $f0 $5d
    rrca                                          ; $4bd8: $0f
    jr jr_02f_4c22                                ; $4bd9: $18 $47

    rra                                           ; $4bdb: $1f
    rla                                           ; $4bdc: $17
    ld [hl], h                                    ; $4bdd: $74
    ld e, $bf                                     ; $4bde: $1e $bf
    db $eb                                        ; $4be0: $eb

jr_02f_4be1:
    sub e                                         ; $4be1: $93
    ld l, e                                       ; $4be2: $6b
    rst $38                                       ; $4be3: $ff
    ld b, c                                       ; $4be4: $41
    ld c, h                                       ; $4be5: $4c
    or h                                          ; $4be6: $b4
    inc de                                        ; $4be7: $13
    sbc a                                         ; $4be8: $9f
    and a                                         ; $4be9: $a7
    db $e4                                        ; $4bea: $e4
    sub h                                         ; $4beb: $94
    xor a                                         ; $4bec: $af
    cp [hl]                                       ; $4bed: $be
    add $18                                       ; $4bee: $c6 $18
    add $5c                                       ; $4bf0: $c6 $5c
    sbc a                                         ; $4bf2: $9f
    ld a, c                                       ; $4bf3: $79
    dec [hl]                                      ; $4bf4: $35
    ld a, [c]                                     ; $4bf5: $f2
    dec e                                         ; $4bf6: $1d
    dec hl                                        ; $4bf7: $2b
    ld a, [hl]                                    ; $4bf8: $7e
    ld e, $b2                                     ; $4bf9: $1e $b2

Call_02f_4bfb:
    inc [hl]                                      ; $4bfb: $34
    ld h, e                                       ; $4bfc: $63
    ld [hl], h                                    ; $4bfd: $74
    xor l                                         ; $4bfe: $ad
    ret c                                         ; $4bff: $d8

    db $fc                                        ; $4c00: $fc
    sub $bc                                       ; $4c01: $d6 $bc
    rra                                           ; $4c03: $1f
    sbc d                                         ; $4c04: $9a
    ld l, b                                       ; $4c05: $68
    rst $28                                       ; $4c06: $ef
    rrca                                          ; $4c07: $0f
    db $dd                                        ; $4c08: $dd
    ld d, [hl]                                    ; $4c09: $56
    inc [hl]                                      ; $4c0a: $34
    adc [hl]                                      ; $4c0b: $8e
    xor [hl]                                      ; $4c0c: $ae
    push de                                       ; $4c0d: $d5
    reti                                          ; $4c0e: $d9


    or c                                          ; $4c0f: $b1
    add $72                                       ; $4c10: $c6 $72
    db $e4                                        ; $4c12: $e4
    ld a, c                                       ; $4c13: $79
    dec bc                                        ; $4c14: $0b
    daa                                           ; $4c15: $27
    ld a, $4f                                     ; $4c16: $3e $4f
    ret                                           ; $4c18: $c9


    xor c                                         ; $4c19: $a9
    ld [hl], $71                                  ; $4c1a: $36 $71
    rst $00                                       ; $4c1c: $c7
    sub l                                         ; $4c1d: $95
    push bc                                       ; $4c1e: $c5
    ld e, l                                       ; $4c1f: $5d
    ld b, c                                       ; $4c20: $41
    dec bc                                        ; $4c21: $0b

jr_02f_4c22:
    inc bc                                        ; $4c22: $03
    and $56                                       ; $4c23: $e6 $56
    sbc e                                         ; $4c25: $9b
    cp b                                          ; $4c26: $b8
    db $d3                                        ; $4c27: $d3
    sub c                                         ; $4c28: $91
    sub h                                         ; $4c29: $94
    call c, $e6b1                                 ; $4c2a: $dc $b1 $e6
    ld e, [hl]                                    ; $4c2d: $5e
    sub e                                         ; $4c2e: $93
    sbc h                                         ; $4c2f: $9c
    ld de, $35b9                                  ; $4c30: $11 $b9 $35
    xor d                                         ; $4c33: $aa
    ld d, a                                       ; $4c34: $57
    ld d, h                                       ; $4c35: $54
    sbc e                                         ; $4c36: $9b
    ret c                                         ; $4c37: $d8

    ld [bc], a                                    ; $4c38: $02
    daa                                           ; $4c39: $27
    ld l, b                                       ; $4c3a: $68
    call z, Call_02f_52c3                         ; $4c3b: $cc $c3 $52
    daa                                           ; $4c3e: $27
    rst $18                                       ; $4c3f: $df
    jp hl                                         ; $4c40: $e9


    rrca                                          ; $4c41: $0f
    ld h, d                                       ; $4c42: $62
    ld h, c                                       ; $4c43: $61
    adc h                                         ; $4c44: $8c
    adc $5f                                       ; $4c45: $ce $5f
    ld b, $ee                                     ; $4c47: $06 $ee
    ld e, b                                       ; $4c49: $58
    or $ef                                        ; $4c4a: $f6 $ef
    and $de                                       ; $4c4c: $e6 $de
    dec [hl]                                      ; $4c4e: $35
    ret                                           ; $4c4f: $c9


    ld l, l                                       ; $4c50: $6d
    adc l                                         ; $4c51: $8d
    push bc                                       ; $4c52: $c5
    cp b                                          ; $4c53: $b8
    ld d, $f7                                     ; $4c54: $16 $f7
    db $db                                        ; $4c56: $db
    push bc                                       ; $4c57: $c5
    or [hl]                                       ; $4c58: $b6
    and [hl]                                      ; $4c59: $a6
    sub c                                         ; $4c5a: $91
    daa                                           ; $4c5b: $27
    rst $30                                       ; $4c5c: $f7
    rst $28                                       ; $4c5d: $ef
    ld a, [bc]                                    ; $4c5e: $0a
    xor d                                         ; $4c5f: $aa
    ld [hl], a                                    ; $4c60: $77
    ld l, c                                       ; $4c61: $69
    adc l                                         ; $4c62: $8d
    ld b, l                                       ; $4c63: $45
    db $ed                                        ; $4c64: $ed
    and c                                         ; $4c65: $a1
    dec l                                         ; $4c66: $2d
    daa                                           ; $4c67: $27
    ld bc, $abe6                                  ; $4c68: $01 $e6 $ab
    xor a                                         ; $4c6b: $af
    pop af                                        ; $4c6c: $f1
    add a                                         ; $4c6d: $87
    sub c                                         ; $4c6e: $91
    ld e, h                                       ; $4c6f: $5c
    ld a, h                                       ; $4c70: $7c
    ld c, h                                       ; $4c71: $4c
    daa                                           ; $4c72: $27
    ld d, a                                       ; $4c73: $57
    ld l, c                                       ; $4c74: $69
    ld [hl], c                                    ; $4c75: $71
    ld l, e                                       ; $4c76: $6b
    call z, $e3e5                                 ; $4c77: $cc $e5 $e3
    or b                                          ; $4c7a: $b0
    ld b, [hl]                                    ; $4c7b: $46
    add h                                         ; $4c7c: $84
    or h                                          ; $4c7d: $b4
    inc de                                        ; $4c7e: $13
    sbc a                                         ; $4c7f: $9f
    and a                                         ; $4c80: $a7
    db $e4                                        ; $4c81: $e4
    sub h                                         ; $4c82: $94
    or a                                          ; $4c83: $b7
    daa                                           ; $4c84: $27
    ld a, $88                                     ; $4c85: $3e $88
    add hl, de                                    ; $4c87: $19
    di                                            ; $4c88: $f3
    ld a, [hl]                                    ; $4c89: $7e
    call z, $23d5                                 ; $4c8a: $cc $d5 $23
    xor h                                         ; $4c8d: $ac
    ret c                                         ; $4c8e: $d8

    db $fc                                        ; $4c8f: $fc
    sub $bc                                       ; $4c90: $d6 $bc
    rra                                           ; $4c92: $1f
    ld a, [de]                                    ; $4c93: $1a
    rst $10                                       ; $4c94: $d7
    or d                                          ; $4c95: $b2
    ret c                                         ; $4c96: $d8

    and $05                                       ; $4c97: $e6 $05
    or l                                          ; $4c99: $b5
    inc sp                                        ; $4c9a: $33
    ld h, h                                       ; $4c9b: $64
    ld d, c                                       ; $4c9c: $51
    ld d, h                                       ; $4c9d: $54
    sub e                                         ; $4c9e: $93
    rst $28                                       ; $4c9f: $ef
    cp b                                          ; $4ca0: $b8
    ld [hl-], a                                   ; $4ca1: $32
    dec de                                        ; $4ca2: $1b
    ld d, a                                       ; $4ca3: $57
    call z, $8c2a                                 ; $4ca4: $cc $2a $8c
    ld h, l                                       ; $4ca7: $65
    nop                                           ; $4ca8: $00
    rst $10                                       ; $4ca9: $d7
    ld [$7d18], sp                                ; $4caa: $08 $18 $7d
    ld e, d                                       ; $4cad: $5a
    db $e3                                        ; $4cae: $e3
    ld a, [$b5dc]                                 ; $4caf: $fa $dc $b5
    inc de                                        ; $4cb2: $13
    sbc a                                         ; $4cb3: $9f
    and a                                         ; $4cb4: $a7
    db $e4                                        ; $4cb5: $e4
    or h                                          ; $4cb6: $b4
    or b                                          ; $4cb7: $b0
    ld c, d                                       ; $4cb8: $4a
    inc e                                         ; $4cb9: $1c
    rst $10                                       ; $4cba: $d7
    ld hl, sp-$45                                 ; $4cbb: $f8 $bb
    ret c                                         ; $4cbd: $d8

    add [hl]                                      ; $4cbe: $86
    ld a, a                                       ; $4cbf: $7f
    ld [hl], l                                    ; $4cc0: $75
    ld d, [hl]                                    ; $4cc1: $56
    pop hl                                        ; $4cc2: $e1
    rlca                                          ; $4cc3: $07
    and h                                         ; $4cc4: $a4
    cp h                                          ; $4cc5: $bc
    dec b                                         ; $4cc6: $05
    sbc l                                         ; $4cc7: $9d
    cp h                                          ; $4cc8: $bc
    ld l, [hl]                                    ; $4cc9: $6e
    inc l                                         ; $4cca: $2c
    add l                                         ; $4ccb: $85
    ld a, [$4ef9]                                 ; $4ccc: $fa $f9 $4e
    ld a, [$8d0b]                                 ; $4ccf: $fa $0b $8d
    sub c                                         ; $4cd2: $91
    cp e                                          ; $4cd3: $bb
    xor l                                         ; $4cd4: $ad
    adc $2e                                       ; $4cd5: $ce $2e
    xor l                                         ; $4cd7: $ad
    ld a, d                                       ; $4cd8: $7a
    sub l                                         ; $4cd9: $95
    ld a, $d5                                     ; $4cda: $3e $d5
    dec hl                                        ; $4cdc: $2b
    ld [hl], l                                    ; $4cdd: $75
    ld a, [c]                                     ; $4cde: $f2
    ld d, $9d                                     ; $4cdf: $16 $9d
    ld h, b                                       ; $4ce1: $60
    push hl                                       ; $4ce2: $e5
    ld l, [hl]                                    ; $4ce3: $6e
    ld sp, $7223                                  ; $4ce4: $31 $23 $72
    ld l, e                                       ; $4ce7: $6b
    ld l, [hl]                                    ; $4ce8: $6e
    or l                                          ; $4ce9: $b5
    add a                                         ; $4cea: $87
    or [hl]                                       ; $4ceb: $b6
    dec e                                         ; $4cec: $1d
    dec l                                         ; $4ced: $2d
    and [hl]                                      ; $4cee: $a6
    ld a, a                                       ; $4cef: $7f
    dec a                                         ; $4cf0: $3d
    ld d, a                                       ; $4cf1: $57
    sbc $02                                       ; $4cf2: $de $02
    ld b, a                                       ; $4cf4: $47
    ld b, l                                       ; $4cf5: $45
    jr jr_02f_4d62                                ; $4cf6: $18 $6a

    ld a, [$73d7]                                 ; $4cf8: $fa $d7 $73
    dec h                                         ; $4cfb: $25
    ld [hl], a                                    ; $4cfc: $77
    xor h                                         ; $4cfd: $ac
    cp c                                          ; $4cfe: $b9
    rst $10                                       ; $4cff: $d7
    call nc, Call_02f_6e26                        ; $4d00: $d4 $26 $6e
    rst $00                                       ; $4d03: $c7
    sub l                                         ; $4d04: $95
    and l                                         ; $4d05: $a5
    dec c                                         ; $4d06: $0d
    ld l, b                                       ; $4d07: $68
    add hl, de                                    ; $4d08: $19
    cp b                                          ; $4d09: $b8
    cp a                                          ; $4d0a: $bf
    cp a                                          ; $4d0b: $bf
    and d                                         ; $4d0c: $a2
    ld sp, hl                                     ; $4d0d: $f9
    db $ed                                        ; $4d0e: $ed
    add d                                         ; $4d0f: $82
    and [hl]                                      ; $4d10: $a6
    xor [hl]                                      ; $4d11: $ae
    xor e                                         ; $4d12: $ab
    ld [hl], $b1                                  ; $4d13: $36 $b1
    dec b                                         ; $4d15: $05
    daa                                           ; $4d16: $27
    db $fd                                        ; $4d17: $fd
    and l                                         ; $4d18: $a5
    push hl                                       ; $4d19: $e5
    add [hl]                                      ; $4d1a: $86
    or h                                          ; $4d1b: $b4
    ld a, [bc]                                    ; $4d1c: $0a
    dec b                                         ; $4d1d: $05
    sbc l                                         ; $4d1e: $9d
    rst $00                                       ; $4d1f: $c7
    rst $28                                       ; $4d20: $ef
    dec [hl]                                      ; $4d21: $35
    or e                                          ; $4d22: $b3
    ld d, d                                       ; $4d23: $52
    db $e4                                        ; $4d24: $e4
    ld a, c                                       ; $4d25: $79
    dec bc                                        ; $4d26: $0b
    push af                                       ; $4d27: $f5
    or l                                          ; $4d28: $b5
    rr a                                          ; $4d29: $cb $1f
    add $32                                       ; $4d2b: $c6 $32
    ld [hl], b                                    ; $4d2d: $70
    rst $00                                       ; $4d2e: $c7
    ld [hl-], a                                   ; $4d2f: $32
    add $80                                       ; $4d30: $c6 $80
    ld d, [hl]                                    ; $4d32: $56
    and c                                         ; $4d33: $a1
    and b                                         ; $4d34: $a0
    di                                            ; $4d35: $f3
    ld [hl-], a                                   ; $4d36: $32
    and b                                         ; $4d37: $a0
    ld h, l                                       ; $4d38: $65
    rst $18                                       ; $4d39: $df
    ld l, e                                       ; $4d3a: $6b
    ld h, [hl]                                    ; $4d3b: $66

jr_02f_4d3c:
    ld e, b                                       ; $4d3c: $58
    adc d                                         ; $4d3d: $8a
    ld d, [hl]                                    ; $4d3e: $56
    ld h, a                                       ; $4d3f: $67
    ld h, h                                       ; $4d40: $64
    ld l, e                                       ; $4d41: $6b
    adc d                                         ; $4d42: $8a
    ld e, l                                       ; $4d43: $5d
    ld c, d                                       ; $4d44: $4a
    xor $58                                       ; $4d45: $ee $58
    ld a, c                                       ; $4d47: $79
    add l                                         ; $4d48: $85
    rst $28                                       ; $4d49: $ef
    dec hl                                        ; $4d4a: $2b
    ld l, a                                       ; $4d4b: $6f
    ld bc, $5d47                                  ; $4d4c: $01 $47 $5d
    rrca                                          ; $4d4f: $0f
    ld c, b                                       ; $4d50: $48
    ret                                           ; $4d51: $c9


    ld de, $62cc                                  ; $4d52: $11 $cc $62
    scf                                           ; $4d55: $37
    cp d                                          ; $4d56: $ba
    xor l                                         ; $4d57: $ad
    or d                                          ; $4d58: $b2
    ld h, d                                       ; $4d59: $62
    ld e, h                                       ; $4d5a: $5c
    ld sp, hl                                     ; $4d5b: $f9
    adc [hl]                                      ; $4d5c: $8e
    and d                                         ; $4d5d: $a2
    ld h, l                                       ; $4d5e: $65
    ld l, e                                       ; $4d5f: $6b
    adc l                                         ; $4d60: $8d
    and b                                         ; $4d61: $a0

jr_02f_4d62:
    di                                            ; $4d62: $f3
    adc d                                         ; $4d63: $8a
    sub [hl]                                      ; $4d64: $96
    ld [hl], $74                                  ; $4d65: $36 $74
    call $0220                                    ; $4d67: $cd $20 $02
    sub a                                         ; $4d6a: $97
    ld b, d                                       ; $4d6b: $42
    db $fd                                        ; $4d6c: $fd
    ld h, l                                       ; $4d6d: $65
    ld b, b                                       ; $4d6e: $40
    and e                                         ; $4d6f: $a3
    add a                                         ; $4d70: $87
    ld a, c                                       ; $4d71: $79
    dec bc                                        ; $4d72: $0b
    ld e, c                                       ; $4d73: $59
    ld [hl], a                                    ; $4d74: $77

Call_02f_4d75:
    dec b                                         ; $4d75: $05
    call $ac6f                                    ; $4d76: $cd $6f $ac
    ld [hl], d                                    ; $4d79: $72
    xor e                                         ; $4d7a: $ab
    ld c, l                                       ; $4d7b: $4d
    call c, $a8e9                                 ; $4d7c: $dc $e9 $a8
    rra                                           ; $4d7f: $1f
    ret                                           ; $4d80: $c9


    dec e                                         ; $4d81: $1d
    dec hl                                        ; $4d82: $2b
    xor a                                         ; $4d83: $af
    ldh a, [$7d]                                  ; $4d84: $f0 $7d
    push hl                                       ; $4d86: $e5
    dec l                                         ; $4d87: $2d
    ld e, c                                       ; $4d88: $59
    ld [hl], a                                    ; $4d89: $77
    dec b                                         ; $4d8a: $05
    xor l                                         ; $4d8b: $ad
    ld l, b                                       ; $4d8c: $68
    push de                                       ; $4d8d: $d5
    xor e                                         ; $4d8e: $ab
    db $f4                                        ; $4d8f: $f4
    add hl, hl                                    ; $4d90: $29
    cp c                                          ; $4d91: $b9
    ld h, e                                       ; $4d92: $63
    adc l                                         ; $4d93: $8d
    push hl                                       ; $4d94: $e5
    ret z                                         ; $4d95: $c8

    di                                            ; $4d96: $f3
    ld d, $c7                                     ; $4d97: $16 $c7
    sub l                                         ; $4d99: $95
    reti                                          ; $4d9a: $d9


    ld d, d                                       ; $4d9b: $52
    ld [hl-], a                                   ; $4d9c: $32
    cp b                                          ; $4d9d: $b8
    ld e, $34                                     ; $4d9e: $1e $34
    db $e3                                        ; $4da0: $e3
    jp c, $e07f                                   ; $4da1: $da $7f $e0

    adc [hl]                                      ; $4da4: $8e
    inc b                                         ; $4da5: $04
    xor [hl]                                      ; $4da6: $ae
    dec [hl]                                      ; $4da7: $35

Jump_02f_4da8:
    rrca                                          ; $4da8: $0f
    ld a, h                                       ; $4da9: $7c
    ld b, l                                       ; $4daa: $45
    ld h, e                                       ; $4dab: $63
    ld e, [hl]                                    ; $4dac: $5e
    adc l                                         ; $4dad: $8d
    or c                                          ; $4dae: $b1
    sub h                                         ; $4daf: $94
    rst $28                                       ; $4db0: $ef
    jr z, jr_02f_4e0d                             ; $4db1: $28 $5a

    or [hl]                                       ; $4db3: $b6
    ld d, [hl]                                    ; $4db4: $56
    nop                                           ; $4db5: $00
    ld h, a                                       ; $4db6: $67
    jr c, jr_02f_4d3c                             ; $4db7: $38 $83

    ld [$855c], sp                                ; $4db9: $08 $5c $85
    or c                                          ; $4dbc: $b1
    ld a, b                                       ; $4dbd: $78
    ld a, a                                       ; $4dbe: $7f
    rrca                                          ; $4dbf: $0f
    inc a                                         ; $4dc0: $3c
    and [hl]                                      ; $4dc1: $a6
    cp a                                          ; $4dc2: $bf
    ld b, [hl]                                    ; $4dc3: $46
    dec b                                         ; $4dc4: $05
    ld l, $b6                                     ; $4dc5: $2e $b6
    sub $3c                                       ; $4dc7: $d6 $3c
    ldh a, [$65]                                  ; $4dc9: $f0 $65
    ldh [$8e], a                                  ; $4dcb: $e0 $8e
    ld h, l                                       ; $4dcd: $65
    ld e, a                                       ; $4dce: $5f
    dec bc                                        ; $4dcf: $0b
    dec l                                         ; $4dd0: $2d
    db $f4                                        ; $4dd1: $f4
    ld c, c                                       ; $4dd2: $49
    ld l, e                                       ; $4dd3: $6b
    inc l                                         ; $4dd4: $2c
    ld d, $82                                     ; $4dd5: $16 $82
    sub d                                         ; $4dd7: $92
    or a                                          ; $4dd8: $b7
    rst $00                                       ; $4dd9: $c7
    sub l                                         ; $4dda: $95
    ld sp, $c6b6                                  ; $4ddb: $31 $b6 $c6
    ld e, a                                       ; $4dde: $5f
    jp z, Jump_02f_4552                           ; $4ddf: $ca $52 $45

    sub l                                         ; $4de2: $95
    ld a, $ad                                     ; $4de3: $3e $ad
    ld l, b                                       ; $4de5: $68
    sub l                                         ; $4de6: $95
    ld a, l                                       ; $4de7: $7d
    sub [hl]                                      ; $4de8: $96
    ld a, h                                       ; $4de9: $7c
    ld a, [$5c6b]                                 ; $4dea: $fa $6b $5c
    dec d                                         ; $4ded: $15
    jp z, Jump_000_16f3                           ; $4dee: $ca $f3 $16

    rst $00                                       ; $4df1: $c7
    sub l                                         ; $4df2: $95
    ld sp, $b406                                  ; $4df3: $31 $06 $b4
    ld a, [bc]                                    ; $4df6: $0a
    dec b                                         ; $4df7: $05
    sbc l                                         ; $4df8: $9d
    sub a                                         ; $4df9: $97
    add c                                         ; $4dfa: $81
    ei                                            ; $4dfb: $fb
    ei                                            ; $4dfc: $fb
    xor e                                         ; $4dfd: $ab
    sbc c                                         ; $4dfe: $99
    ld h, c                                       ; $4dff: $61
    add hl, hl                                    ; $4e00: $29
    ld e, d                                       ; $4e01: $5a
    ldh [$de], a                                  ; $4e02: $e0 $de
    rra                                           ; $4e04: $1f
    inc hl                                        ; $4e05: $23
    and b                                         ; $4e06: $a0
    sbc c                                         ; $4e07: $99
    dec sp                                        ; $4e08: $3b
    ld [hl-], a                                   ; $4e09: $32
    ld a, [c]                                     ; $4e0a: $f2
    push de                                       ; $4e0b: $d5
    add hl, de                                    ; $4e0c: $19

jr_02f_4e0d:
    xor c                                         ; $4e0d: $a9
    ld l, d                                       ; $4e0e: $6a
    ld h, d                                       ; $4e0f: $62
    ld b, $8b                                     ; $4e10: $06 $8b
    ld d, a                                       ; $4e12: $57
    ld d, l                                       ; $4e13: $55
    and d                                         ; $4e14: $a2
    ld [hl], c                                    ; $4e15: $71
    xor l                                         ; $4e16: $ad
    ret c                                         ; $4e17: $d8

    add sp, -$7f                                  ; $4e18: $e8 $81
    rst $20                                       ; $4e1a: $e7
    dec l                                         ; $4e1b: $2d
    add a                                         ; $4e1c: $87
    jp $cc5c                                      ; $4e1d: $c3 $5c $cc


    ld b, e                                       ; $4e20: $43
    ld c, a                                       ; $4e21: $4f
    xor $c4                                       ; $4e22: $ee $c4
    rst $20                                       ; $4e24: $e7
    add hl, hl                                    ; $4e25: $29
    add hl, sp                                    ; $4e26: $39
    push de                                       ; $4e27: $d5
    ld h, $ae                                     ; $4e28: $26 $ae
    cp [hl]                                       ; $4e2a: $be
    or $35                                        ; $4e2b: $f6 $35
    cp d                                          ; $4e2d: $ba
    ccf                                           ; $4e2e: $3f
    ld c, b                                       ; $4e2f: $48
    dec d                                         ; $4e30: $15
    sub h                                         ; $4e31: $94
    dec de                                        ; $4e32: $1b
    ld l, $db                                     ; $4e33: $2e $db
    ld a, [hl+]                                   ; $4e35: $2a
    jp Jump_02f_4da8                              ; $4e36: $c3 $a8 $4d


    ld l, h                                       ; $4e39: $6c
    ld bc, $7da7                                  ; $4e3a: $01 $a7 $7d
    call $fa45                                    ; $4e3d: $cd $45 $fa
    and b                                         ; $4e40: $a0
    adc c                                         ; $4e41: $89
    sub $77                                       ; $4e42: $d6 $77
    sbc a                                         ; $4e44: $9f
    ld l, e                                       ; $4e45: $6b
    ld e, $7e                                     ; $4e46: $1e $7e
    adc d                                         ; $4e48: $8a
    ld [hl], c                                    ; $4e49: $71
    xor l                                         ; $4e4a: $ad
    ld a, d                                       ; $4e4b: $7a
    ld hl, sp+$63                                 ; $4e4c: $f8 $63
    call $df03                                    ; $4e4e: $cd $03 $df
    xor c                                         ; $4e51: $a9
    ld a, [c]                                     ; $4e52: $f2
    ld b, [hl]                                    ; $4e53: $46
    sbc a                                         ; $4e54: $9f
    call z, $9af9                                 ; $4e55: $cc $f9 $9a
    rlca                                          ; $4e58: $07
    cp [hl]                                       ; $4e59: $be
    ld h, d                                       ; $4e5a: $62
    ld l, e                                       ; $4e5b: $6b
    db $fc                                        ; $4e5c: $fc
    ld d, l                                       ; $4e5d: $55
    ld a, [$b5c6]                                 ; $4e5e: $fa $c6 $b5
    rst $38                                       ; $4e61: $ff
    ld l, $02                                     ; $4e62: $2e $02
    rst $38                                       ; $4e64: $ff
    xor d                                         ; $4e65: $aa
    ld c, l                                       ; $4e66: $4d
    ld l, h                                       ; $4e67: $6c
    ld bc, $3fa7                                  ; $4e68: $01 $a7 $3f
    adc b                                         ; $4e6b: $88
    ld a, l                                       ; $4e6c: $7d
    db $ed                                        ; $4e6d: $ed
    ld a, d                                       ; $4e6e: $7a
    ld d, l                                       ; $4e6f: $55
    db $e3                                        ; $4e70: $e3
    ld a, [$7f3a]                                 ; $4e71: $fa $3a $7f
    adc l                                         ; $4e74: $8d
    ld b, l                                       ; $4e75: $45
    ld [hl], d                                    ; $4e76: $72
    adc l                                         ; $4e77: $8d
    cp a                                          ; $4e78: $bf
    or h                                          ; $4e79: $b4
    ld [hl+], a                                   ; $4e7a: $22
    inc b                                         ; $4e7b: $04
    sbc [hl]                                      ; $4e7c: $9e
    rst $28                                       ; $4e7d: $ef
    ld e, b                                       ; $4e7e: $58
    ld [hl], e                                    ; $4e7f: $73
    xor a                                         ; $4e80: $af
    ld e, c                                       ; $4e81: $59
    rst $00                                       ; $4e82: $c7
    ld b, a                                       ; $4e83: $47
    inc h                                         ; $4e84: $24
    rra                                           ; $4e85: $1f
    ld h, e                                       ; $4e86: $63
    ld h, e                                       ; $4e87: $63
    db $f4                                        ; $4e88: $f4
    pop de                                        ; $4e89: $d1
    ld h, a                                       ; $4e8a: $67
    adc h                                         ; $4e8b: $8c
    xor [hl]                                      ; $4e8c: $ae
    pop bc                                        ; $4e8d: $c1
    rra                                           ; $4e8e: $1f
    ld [hl], a                                    ; $4e8f: $77
    ld h, e                                       ; $4e90: $63
    cp l                                          ; $4e91: $bd
    ld e, a                                       ; $4e92: $5f
    sbc e                                         ; $4e93: $9b
    ret c                                         ; $4e94: $d8

    ld [bc], a                                    ; $4e95: $02
    ld e, c                                       ; $4e96: $59
    ld [hl], a                                    ; $4e97: $77
    dec b                                         ; $4e98: $05
    db $ed                                        ; $4e99: $ed
    ld a, d                                       ; $4e9a: $7a
    ld d, l                                       ; $4e9b: $55
    ld d, e                                       ; $4e9c: $53
    ld [$2a92], a                                 ; $4e9d: $ea $92 $2a
    ld a, l                                       ; $4ea0: $7d
    sbc d                                         ; $4ea1: $9a
    inc hl                                        ; $4ea2: $23
    rst $00                                       ; $4ea3: $c7
    dec bc                                        ; $4ea4: $0b
    adc d                                         ; $4ea5: $8a
    ld l, d                                       ; $4ea6: $6a
    inc de                                        ; $4ea7: $13
    ld d, a                                       ; $4ea8: $57
    ld e, a                                       ; $4ea9: $5f
    ei                                            ; $4eaa: $fb
    ld e, d                                       ; $4eab: $5a
    ld h, l                                       ; $4eac: $65
    ccf                                           ; $4ead: $3f
    inc bc                                        ; $4eae: $03
    ld [hl], d                                    ; $4eaf: $72
    jp $1635                                      ; $4eb0: $c3 $35 $16


    db $e3                                        ; $4eb3: $e3
    ld [hl], a                                    ; $4eb4: $77
    db $fd                                        ; $4eb5: $fd
    dec [hl]                                      ; $4eb6: $35
    and $45                                       ; $4eb7: $e6 $45
    ld a, $83                                     ; $4eb9: $3e $83
    dec [hl]                                      ; $4ebb: $35
    cp $d2                                        ; $4ebc: $fe $d2
    adc d                                         ; $4ebe: $8a
    db $10                                        ; $4ebf: $10
    ld hl, sp+$4e                                 ; $4ec0: $f8 $4e
    ld a, c                                       ; $4ec2: $79
    inc l                                         ; $4ec3: $2c
    ld d, b                                       ; $4ec4: $50
    ld l, l                                       ; $4ec5: $6d
    ld h, d                                       ; $4ec6: $62
    dec bc                                        ; $4ec7: $0b
    and a                                         ; $4ec8: $a7
    adc b                                         ; $4ec9: $88
    ld h, l                                       ; $4eca: $65
    adc $75                                       ; $4ecb: $ce $75
    ld a, [hl]                                    ; $4ecd: $7e
    ld [hl], d                                    ; $4ece: $72

jr_02f_4ecf:
    ld b, l                                       ; $4ecf: $45
    ld sp, $61e6                                  ; $4ed0: $31 $e6 $61
    xor c                                         ; $4ed3: $a9
    ld d, e                                       ; $4ed4: $53
    sbc e                                         ; $4ed5: $9b
    ret c                                         ; $4ed6: $d8

    ld [bc], a                                    ; $4ed7: $02
    daa                                           ; $4ed8: $27
    db $fd                                        ; $4ed9: $fd
    add hl, hl                                    ; $4eda: $29
    ld l, b                                       ; $4edb: $68
    ld a, b                                       ; $4edc: $78
    ld h, c                                       ; $4edd: $61
    ld l, l                                       ; $4ede: $6d
    ld h, d                                       ; $4edf: $62
    dec bc                                        ; $4ee0: $0b
    daa                                           ; $4ee1: $27
    ld b, c                                       ; $4ee2: $41

Call_02f_4ee3:
    ld a, [hl-]                                   ; $4ee3: $3a
    cp c                                          ; $4ee4: $b9
    inc c                                         ; $4ee5: $0c
    xor b                                         ; $4ee6: $a8
    inc l                                         ; $4ee7: $2c
    ld e, $14                                     ; $4ee8: $1e $14
    ld h, e                                       ; $4eea: $63
    xor c                                         ; $4eeb: $a9
    jp nc, $f1a7                                  ; $4eec: $d2 $a7 $f1

    cp e                                          ; $4eef: $bb
    cp $8c                                        ; $4ef0: $fe $8c
    ld a, c                                       ; $4ef2: $79
    add sp, $4b                                   ; $4ef3: $e8 $4b
    db $e3                                        ; $4ef5: $e3
    rst $00                                       ; $4ef6: $c7
    cp h                                          ; $4ef7: $bc
    dec b                                         ; $4ef8: $05
    ld e, c                                       ; $4ef9: $59
    jp c, Jump_000_2bbf                           ; $4efa: $da $bf $2b

    ld l, b                                       ; $4efd: $68
    adc l                                         ; $4efe: $8d
    push bc                                       ; $4eff: $c5
    db $f4                                        ; $4f00: $f4
    xor a                                         ; $4f01: $af
    rst $20                                       ; $4f02: $e7
    ld e, d                                       ; $4f03: $5a
    ld a, [de]                                    ; $4f04: $1a
    ccf                                           ; $4f05: $3f
    and $3b                                       ; $4f06: $e6 $3b
    xor [hl]                                      ; $4f08: $ae
    inc l                                         ; $4f09: $2c
    ld l, l                                       ; $4f0a: $6d
    ld b, b                                       ; $4f0b: $40
    set 0, b                                      ; $4f0c: $cb $c0
    db $fd                                        ; $4f0e: $fd
    db $fd                                        ; $4f0f: $fd
    cp c                                          ; $4f10: $b9
    ld a, $b9                                     ; $4f11: $3e $b9
    ld d, [hl]                                    ; $4f13: $56
    ld h, a                                       ; $4f14: $67
    rst $00                                       ; $4f15: $c7
    ld a, b                                       ; $4f16: $78
    ld c, l                                       ; $4f17: $4d
    ld a, [hl-]                                   ; $4f18: $3a
    db $fd                                        ; $4f19: $fd
    ld a, $7f                                     ; $4f1a: $3e $7f
    sbc [hl]                                      ; $4f1c: $9e
    or a                                          ; $4f1d: $b7
    rst $00                                       ; $4f1e: $c7
    jp z, Jump_02f_7c2b                           ; $4f1f: $ca $2b $7c

    ld e, a                                       ; $4f22: $5f
    ld a, c                                       ; $4f23: $79
    sbc [hl]                                      ; $4f24: $9e
    cpl                                           ; $4f25: $2f
    ei                                            ; $4f26: $fb
    ld l, [hl]                                    ; $4f27: $6e
    cp b                                          ; $4f28: $b8
    rlca                                          ; $4f29: $07
    xor c                                         ; $4f2a: $a9
    add d                                         ; $4f2b: $82
    or a                                          ; $4f2c: $b7

jr_02f_4f2d:
    ld d, l                                       ; $4f2d: $55
    or [hl]                                       ; $4f2e: $b6
    rr d                                          ; $4f2f: $cb $1a
    adc l                                         ; $4f31: $8d
    rst $18                                       ; $4f32: $df
    pop af                                        ; $4f33: $f1
    inc sp                                        ; $4f34: $33
    jr jr_02f_4ecf                                ; $4f35: $18 $98

    jp nz, Jump_02f_7482                          ; $4f37: $c2 $82 $74

    dec de                                        ; $4f3a: $1b
    or a                                          ; $4f3b: $b7
    rra                                           ; $4f3c: $1f
    dec hl                                        ; $4f3d: $2b
    ld [hl], $7a                                  ; $4f3e: $36 $7a
    ldh [$b5], a                                  ; $4f40: $e0 $b5
    adc c                                         ; $4f42: $89
    dec l                                         ; $4f43: $2d
    dec e                                         ; $4f44: $1d
    pop af                                        ; $4f45: $f1
    ld e, a                                       ; $4f46: $5f
    or a                                          ; $4f47: $b7
    ld c, b                                       ; $4f48: $48
    xor [hl]                                      ; $4f49: $ae
    ld d, d                                       ; $4f4a: $52
    inc l                                         ; $4f4b: $2c
    ld e, e                                       ; $4f4c: $5b
    ldh a, [$15]                                  ; $4f4d: $f0 $15
    or e                                          ; $4f4f: $b3
    ld a, [bc]                                    ; $4f50: $0a
    and e                                         ; $4f51: $a3
    ld [hl], $b1                                  ; $4f52: $36 $b1
    dec b                                         ; $4f54: $05
    ld b, a                                       ; $4f55: $47
    db $fd                                        ; $4f56: $fd
    inc [hl]                                      ; $4f57: $34
    cp $e4                                        ; $4f58: $fe $e4
    xor [hl]                                      ; $4f5a: $ae
    cp e                                          ; $4f5b: $bb
    add d                                         ; $4f5c: $82
    sub [hl]                                      ; $4f5d: $96
    add $8f                                       ; $4f5e: $c6 $8f
    dec hl                                        ; $4f60: $2b
    adc d                                         ; $4f61: $8a
    xor c                                         ; $4f62: $a9
    or e                                          ; $4f63: $b3
    ld d, l                                       ; $4f64: $55

jr_02f_4f65:
    ld a, [$9b51]                                 ; $4f65: $fa $51 $9b
    cp b                                          ; $4f68: $b8
    inc hl                                        ; $4f69: $23
    ld d, b                                       ; $4f6a: $50
    sbc a                                         ; $4f6b: $9f
    cp d                                          ; $4f6c: $ba
    and e                                         ; $4f6d: $a3
    dec d                                         ; $4f6e: $15
    push bc                                       ; $4f6f: $c5
    jr jr_02f_4f2d                                ; $4f70: $18 $bb

    db $ec                                        ; $4f72: $ec
    ld e, a                                       ; $4f73: $5f
    adc d                                         ; $4f74: $8a
    pop af                                        ; $4f75: $f1
    ei                                            ; $4f76: $fb
    adc l                                         ; $4f77: $8d
    ld l, [hl]                                    ; $4f78: $6e
    or l                                          ; $4f79: $b5
    adc c                                         ; $4f7a: $89
    dec l                                         ; $4f7b: $2d
    daa                                           ; $4f7c: $27
    ld bc, $2726                                  ; $4f7d: $01 $26 $27
    ld a, [de]                                    ; $4f80: $1a
    sub [hl]                                      ; $4f81: $96
    db $fd                                        ; $4f82: $fd
    ld a, e                                       ; $4f83: $7b
    call $dc0c                                    ; $4f84: $cd $0c $dc
    sub $b8                                       ; $4f87: $d6 $b8
    ld [hl+], a                                   ; $4f89: $22
    inc bc                                        ; $4f8a: $03
    ld e, d                                       ; $4f8b: $5a
    ld d, e                                       ; $4f8c: $53
    jr nz, jr_02f_4f65                            ; $4f8d: $20 $d6

    ret z                                         ; $4f8f: $c8

    db $e3                                        ; $4f90: $e3
    db $fd                                        ; $4f91: $fd
    xor a                                         ; $4f92: $af
    ld a, h                                       ; $4f93: $7c
    ld e, c                                       ; $4f94: $59
    ld [hl], a                                    ; $4f95: $77
    dec b                                         ; $4f96: $05
    ld c, l                                       ; $4f97: $4d
    sbc l                                         ; $4f98: $9d
    db $ed                                        ; $4f99: $ed
    ld [hl+], a                                   ; $4f9a: $22
    ld d, l                                       ; $4f9b: $55
    ld a, [$4bb4]                                 ; $4f9c: $fa $b4 $4b
    set 0, b                                      ; $4f9f: $cb $c0
    db $dd                                        ; $4fa1: $dd
    adc b                                         ; $4fa2: $88
    db $f4                                        ; $4fa3: $f4
    ld sp, hl                                     ; $4fa4: $f9
    ld c, [hl]                                    ; $4fa5: $4e
    ld a, c                                       ; $4fa6: $79
    inc l                                         ; $4fa7: $2c
    ld d, b                                       ; $4fa8: $50
    sbc $02                                       ; $4fa9: $de $02
    rst $00                                       ; $4fab: $c7
    sbc d                                         ; $4fac: $9a
    ld a, e                                       ; $4fad: $7b
    ld c, l                                       ; $4fae: $4d
    ld [hl], d                                    ; $4faf: $72
    rst $38                                       ; $4fb0: $ff
    ld b, c                                       ; $4fb1: $41
    db $ec                                        ; $4fb2: $ec
    ld l, e                                       ; $4fb3: $6b
    ld h, c                                       ; $4fb4: $61
    call z, $b1fb                                 ; $4fb5: $cc $fb $b1
    xor d                                         ; $4fb8: $aa
    db $eb                                        ; $4fb9: $eb
    ld c, d                                       ; $4fba: $4a
    ld l, e                                       ; $4fbb: $6b
    inc l                                         ; $4fbc: $2c
    ld d, $77                                     ; $4fbd: $16 $77
    inc l                                         ; $4fbf: $2c
    dec bc                                        ; $4fc0: $0b
    ld b, e                                       ; $4fc1: $43
    jp c, $aaf5                                   ; $4fc2: $da $f5 $aa

    ld c, d                                       ; $4fc5: $4a
    sbc a                                         ; $4fc6: $9f
    sub $58                                       ; $4fc7: $d6 $58
    add h                                         ; $4fc9: $84
    ld a, h                                       ; $4fca: $7c
    ld [hl], l                                    ; $4fcb: $75
    halt                                          ; $4fcc: $76
    ld [hl], l                                    ; $4fcd: $75
    ld b, a                                       ; $4fce: $47
    or a                                          ; $4fcf: $b7
    ld [hl], c                                    ; $4fd0: $71
    xor l                                         ; $4fd1: $ad
    db $d3                                        ; $4fd2: $d3
    add e                                         ; $4fd3: $83
    ld [hl], h                                    ; $4fd4: $74
    ld a, [de]                                    ; $4fd5: $1a
    ld a, [c]                                     ; $4fd6: $f2
    ld d, $1d                                     ; $4fd7: $16 $1d
    ld l, h                                       ; $4fd9: $6c
    rla                                           ; $4fda: $17
    ld e, [hl]                                    ; $4fdb: $5e
    ld b, [hl]                                    ; $4fdc: $46
    adc [hl]                                      ; $4fdd: $8e
    sub a                                         ; $4fde: $97
    or $b5                                        ; $4fdf: $f6 $b5
    ld [$cb6e], a                                 ; $4fe1: $ea $6e $cb
    or [hl]                                       ; $4fe4: $b6
    jp z, $9630                                   ; $4fe5: $ca $30 $96

jr_02f_4fe8:
    ld [hl], $a4                                  ; $4fe8: $36 $a4
    dec b                                         ; $4fea: $05
    xor [hl]                                      ; $4feb: $ae
    or d                                          ; $4fec: $b2
    sub d                                         ; $4fed: $92
    xor a                                         ; $4fee: $af
    cp [hl]                                       ; $4fef: $be
    halt                                          ; $4ff0: $76
    ld sp, hl                                     ; $4ff1: $f9
    jp $0658                                      ; $4ff2: $c3 $58 $06


    or h                                          ; $4ff5: $b4
    db $eb                                        ; $4ff6: $eb
    xor [hl]                                      ; $4ff7: $ae
    and b                                         ; $4ff8: $a0
    pop bc                                        ; $4ff9: $c1
    ld e, a                                       ; $4ffa: $5f
    jr nz, jr_02f_4fe8                            ; $4ffb: $20 $eb

    ld l, e                                       ; $4ffd: $6b
    ld e, h                                       ; $4ffe: $5c
    db $e3                                        ; $4fff: $e3
    or $59                                        ; $5000: $f6 $59
    ld a, [c]                                     ; $5002: $f2
    cp h                                          ; $5003: $bc
    dec b                                         ; $5004: $05
    ld b, a                                       ; $5005: $47
    cp h                                          ; $5006: $bc
    sbc a                                         ; $5007: $9f
    db $fd                                        ; $5008: $fd
    ret nz                                        ; $5009: $c0

    ld l, e                                       ; $500a: $6b
    inc de                                        ; $500b: $13
    ld [hl], a                                    ; $500c: $77
    ld a, b                                       ; $500d: $78
    ld a, c                                       ; $500e: $79
    ld e, $7b                                     ; $500f: $1e $7b
    ld a, a                                       ; $5011: $7f
    adc l                                         ; $5012: $8d
    cp a                                          ; $5013: $bf
    inc [hl]                                      ; $5014: $34
    sub d                                         ; $5015: $92
    add $61                                       ; $5016: $c6 $61
    pop af                                        ; $5018: $f1
    adc d                                         ; $5019: $8a
    or b                                          ; $501a: $b0
    call z, $fb18                                 ; $501b: $cc $18 $fb
    inc [hl]                                      ; $501e: $34
    xor [hl]                                      ; $501f: $ae
    cp c                                          ; $5020: $b9
    ld a, $b9                                     ; $5021: $3e $b9
    ld a, h                                       ; $5023: $7c
    ld [hl], l                                    ; $5024: $75
    ld d, [hl]                                    ; $5025: $56
    ld l, h                                       ; $5026: $6c
    sub l                                         ; $5027: $95
    ld h, c                                       ; $5028: $61
    cp h                                          ; $5029: $bc
    ld e, a                                       ; $502a: $5f
    ld a, e                                       ; $502b: $7b
    ld l, b                                       ; $502c: $68
    dec bc                                        ; $502d: $0b
    rst $00                                       ; $502e: $c7
    ld a, [de]                                    ; $502f: $1a
    res 2, c                                      ; $5030: $cb $91
    daa                                           ; $5032: $27
    rla                                           ; $5033: $17
    cp b                                          ; $5034: $b8
    inc c                                         ; $5035: $0c
    xor b                                         ; $5036: $a8
    ld h, h                                       ; $5037: $64
    ldh [$0e], a                                  ; $5038: $e0 $0e
    ld a, a                                       ; $503a: $7f
    adc h                                         ; $503b: $8c
    add b                                         ; $503c: $80
    sub $58                                       ; $503d: $d6 $58
    add h                                         ; $503f: $84
    ld a, h                                       ; $5040: $7c
    ld [hl], l                                    ; $5041: $75
    halt                                          ; $5042: $76
    ld [hl], l                                    ; $5043: $75
    ld b, a                                       ; $5044: $47
    or a                                          ; $5045: $b7
    ld [hl], c                                    ; $5046: $71
    xor l                                         ; $5047: $ad
    db $d3                                        ; $5048: $d3
    add e                                         ; $5049: $83
    ld [hl], h                                    ; $504a: $74
    ld a, [de]                                    ; $504b: $1a
    sub d                                         ; $504c: $92
    cp e                                          ; $504d: $bb
    ld e, [hl]                                    ; $504e: $5e
    ld d, l                                       ; $504f: $55
    jp hl                                         ; $5050: $e9


    db $d3                                        ; $5051: $d3
    jp nc, $5406                                  ; $5052: $d2 $06 $54

    rrca                                          ; $5055: $0f
    set 2, d                                      ; $5056: $cb $d2
    add [hl]                                      ; $5058: $86
    xor [hl]                                      ; $5059: $ae
    jp c, Jump_02f_5b43                           ; $505a: $da $43 $5b

    ld e, c                                       ; $505d: $59
    xor a                                         ; $505e: $af
    xor d                                         ; $505f: $aa
    or h                                          ; $5060: $b4
    ld l, h                                       ; $5061: $6c
    xor l                                         ; $5062: $ad
    ld l, b                                       ; $5063: $68
    inc e                                         ; $5064: $1c
    jp Jump_02f_5630                              ; $5065: $c3 $30 $56


    ld h, a                                       ; $5068: $67
    sub a                                         ; $5069: $97
    ld l, b                                       ; $506a: $68
    scf                                           ; $506b: $37
    ld [hl], d                                    ; $506c: $72
    ei                                            ; $506d: $fb
    inc l                                         ; $506e: $2c
    ld a, c                                       ; $506f: $79
    ld [hl], d                                    ; $5070: $72
    ld e, b                                       ; $5071: $58
    ld d, $90                                     ; $5072: $16 $90
    ld c, [hl]                                    ; $5074: $4e
    inc hl                                        ; $5075: $23
    adc l                                         ; $5076: $8d
    ld l, e                                       ; $5077: $6b
    dec b                                         ; $5078: $05
    ld [hl], b                                    ; $5079: $70
    reti                                          ; $507a: $d9


    rrca                                          ; $507b: $0f
    db $e4                                        ; $507c: $e4
    add e                                         ; $507d: $83
    ccf                                           ; $507e: $3f
    ld b, e                                       ; $507f: $43
    rra                                           ; $5080: $1f
    rst $10                                       ; $5081: $d7
    ld a, [hl+]                                   ; $5082: $2a
    ld [$80cc], sp                                ; $5083: $08 $cc $80
    ld h, $1a                                     ; $5086: $26 $1a
    sub [hl]                                      ; $5088: $96
    push bc                                       ; $5089: $c5
    ld e, l                                       ; $508a: $5d
    sbc a                                         ; $508b: $9f
    ccf                                           ; $508c: $3f
    and a                                         ; $508d: $a7
    ld a, h                                       ; $508e: $7c
    ld e, c                                       ; $508f: $59
    ld [hl], a                                    ; $5090: $77
    dec b                                         ; $5091: $05
    adc l                                         ; $5092: $8d
    rst $18                                       ; $5093: $df
    dec c                                         ; $5094: $0d
    ld c, e                                       ; $5095: $4b
    ld de, $8c78                                  ; $5096: $11 $78 $8c
    ld a, e                                       ; $5099: $7b
    ld [hl], a                                    ; $509a: $77
    ld b, l                                       ; $509b: $45
    set 0, b                                      ; $509c: $cb $c0
    dec e                                         ; $509e: $1d
    set 4, d                                      ; $509f: $cb $e2
    ld hl, $9acd                                  ; $50a1: $21 $cd $9a
    add $1c                                       ; $50a4: $c6 $1c
    ld h, [hl]                                    ; $50a6: $66
    adc h                                         ; $50a7: $8c
    xor [hl]                                      ; $50a8: $ae
    ld e, l                                       ; $50a9: $5d
    and d                                         ; $50aa: $a2
    dec a                                         ; $50ab: $3d
    ld b, c                                       ; $50ac: $41
    ld a, d                                       ; $50ad: $7a
    add hl, de                                    ; $50ae: $19
    or b                                          ; $50af: $b0
    rst $08                                       ; $50b0: $cf
    sub a                                         ; $50b1: $97
    ld a, l                                       ; $50b2: $7d
    rst $10                                       ; $50b3: $d7
    sbc a                                         ; $50b4: $9f
    ld sp, $3186                                  ; $50b5: $31 $86 $31
    ld d, d                                       ; $50b8: $52
    add hl, hl                                    ; $50b9: $29
    xor d                                         ; $50ba: $aa
    db $f4                                        ; $50bb: $f4
    ld l, c                                       ; $50bc: $69
    ld a, [$2a0c]                                 ; $50bd: $fa $0c $2a
    ld l, a                                       ; $50c0: $6f
    ld bc, $95c7                                  ; $50c1: $01 $c7 $95
    and l                                         ; $50c4: $a5
    dec c                                         ; $50c5: $0d
    ld l, b                                       ; $50c6: $68
    add hl, de                                    ; $50c7: $19
    cp b                                          ; $50c8: $b8
    cp a                                          ; $50c9: $bf
    cp a                                          ; $50ca: $bf
    and d                                         ; $50cb: $a2
    ld [hl], c                                    ; $50cc: $71
    inc c                                         ; $50cd: $0c
    xor l                                         ; $50ce: $ad
    adc $8e                                       ; $50cf: $ce $8e
    add h                                         ; $50d1: $84
    ld a, [hl+]                                   ; $50d2: $2a
    ld d, l                                       ; $50d3: $55
    call nz, $2b9f                                ; $50d4: $c4 $9f $2b
    ld e, a                                       ; $50d7: $5f
    sub $5d                                       ; $50d8: $d6 $5d
    ld b, c                                       ; $50da: $41
    dec sp                                        ; $50db: $3b
    push hl                                       ; $50dc: $e5
    or c                                          ; $50dd: $b1
    ld b, b                                       ; $50de: $40
    rlc b                                         ; $50df: $cb $00
    adc $c6                                       ; $50e1: $ce $c6
    rst $18                                       ; $50e3: $df
    rst $38                                       ; $50e4: $ff
    or a                                          ; $50e5: $b7
    sbc l                                         ; $50e6: $9d
    ld hl, sp+$3c                                 ; $50e7: $f8 $3c
    dec h                                         ; $50e9: $25
    and a                                         ; $50ea: $a7
    push de                                       ; $50eb: $d5
    reti                                          ; $50ec: $d9


    or c                                          ; $50ed: $b1
    add $72                                       ; $50ee: $c6 $72
    db $e4                                        ; $50f0: $e4
    ld a, c                                       ; $50f1: $79
    dec bc                                        ; $50f2: $0b
    dec e                                         ; $50f3: $1d
    inc c                                         ; $50f4: $0c
    ld h, e                                       ; $50f5: $63
    rst $28                                       ; $50f6: $ef
    rst $28                                       ; $50f7: $ef
    ld l, e                                       ; $50f8: $6b
    ld h, c                                       ; $50f9: $61
    ld c, b                                       ; $50fa: $48
    ld l, e                                       ; $50fb: $6b
    inc l                                         ; $50fc: $2c
    or $ba                                        ; $50fd: $f6 $ba
    sbc a                                         ; $50ff: $9f
    add d                                         ; $5100: $82
    ld d, [hl]                                    ; $5101: $56
    or h                                          ; $5102: $b4
    inc d                                         ; $5103: $14
    cp b                                          ; $5104: $b8
    inc c                                         ; $5105: $0c
    add $b5                                       ; $5106: $c6 $b5
    inc hl                                        ; $5108: $23
    and c                                         ; $5109: $a1
    ld c, d                                       ; $510a: $4a
    dec d                                         ; $510b: $15
    pop af                                        ; $510c: $f1
    rst $20                                       ; $510d: $e7
    jp z, $875b                                   ; $510e: $ca $5b $87

    sub a                                         ; $5111: $97
    rst $20                                       ; $5112: $e7
    ld sp, $4b2c                                  ; $5113: $31 $2c $4b
    dec de                                        ; $5116: $1b
    ret nc                                        ; $5117: $d0

    ld [hl-], a                                   ; $5118: $32
    ld [hl], b                                    ; $5119: $70
    ld a, a                                       ; $511a: $7f
    ld a, a                                       ; $511b: $7f
    ld b, l                                       ; $511c: $45
    cp e                                          ; $511d: $bb
    ret c                                         ; $511e: $d8

    ld a, [c]                                     ; $511f: $f2
    adc e                                         ; $5120: $8b
    xor l                                         ; $5121: $ad
    ld a, h                                       ; $5122: $7c
    dec sp                                        ; $5123: $3b
    jp hl                                         ; $5124: $e9


    adc a                                         ; $5125: $8f
    or c                                          ; $5126: $b1
    add l                                         ; $5127: $85
    ld d, $b7                                     ; $5128: $16 $b7
    add $5c                                       ; $512a: $c6 $5c
    ld a, $d1                                     ; $512c: $3e $d1
    sbc $5f                                       ; $512e: $de $5f
    ld l, b                                       ; $5130: $68
    ld l, $f2                                     ; $5131: $2e $f2
    rlca                                          ; $5133: $07
    adc h                                         ; $5134: $8c
    ld d, [hl]                                    ; $5135: $56
    ld h, a                                       ; $5136: $67
    rst $00                                       ; $5137: $c7
    ld a, b                                       ; $5138: $78
    ld c, l                                       ; $5139: $4d
    ld a, [hl-]                                   ; $513a: $3a
    db $fd                                        ; $513b: $fd
    ld a, $7f                                     ; $513c: $3e $7f
    sbc [hl]                                      ; $513e: $9e
    or a                                          ; $513f: $b7
    and a                                         ; $5140: $a7

jr_02f_5141:
    ld a, [de]                                    ; $5141: $1a
    and e                                         ; $5142: $a3
    di                                            ; $5143: $f3
    db $eb                                        ; $5144: $eb
    ld sp, $620f                                  ; $5145: $31 $0f $62
    xor a                                         ; $5148: $af
    ei                                            ; $5149: $fb
    add hl, hl                                    ; $514a: $29
    ld l, b                                       ; $514b: $68
    ld b, a                                       ; $514c: $47
    ld b, d                                       ; $514d: $42
    sub l                                         ; $514e: $95
    ld a, [hl+]                                   ; $514f: $2a
    ld [c], a                                     ; $5150: $e2
    rst $08                                       ; $5151: $cf
    ld d, l                                       ; $5152: $55
    ld a, e                                       ; $5153: $7b
    ld l, b                                       ; $5154: $68
    dec bc                                        ; $5155: $0b
    daa                                           ; $5156: $27
    cp [hl]                                       ; $5157: $be
    sbc a                                         ; $5158: $9f
    ld e, h                                       ; $5159: $5c
    or [hl]                                       ; $515a: $b6
    or $b5                                        ; $515b: $f6 $b5
    ld [hl], d                                    ; $515d: $72
    scf                                           ; $515e: $37
    ld e, h                                       ; $515f: $5c
    ld h, e                                       ; $5160: $63
    ld sp, $c606                                  ; $5161: $31 $06 $c6
    or l                                          ; $5164: $b5
    ld h, d                                       ; $5165: $62
    bit 7, [hl]                                   ; $5166: $cb $7e
    ldh [rIE], a                                  ; $5168: $e0 $ff
    and [hl]                                      ; $516a: $a6
    cp h                                          ; $516b: $bc
    dec b                                         ; $516c: $05
    push af                                       ; $516d: $f5
    rst $28                                       ; $516e: $ef
    add [hl]                                      ; $516f: $86
    db $d3                                        ; $5170: $d3
    daa                                           ; $5171: $27
    ld a, l                                       ; $5172: $7d
    ld c, $e3                                     ; $5173: $0e $e3
    add sp, $5a                                   ; $5175: $e8 $5a
    ld b, $ee                                     ; $5177: $06 $ee
    ld e, b                                       ; $5179: $58
    halt                                          ; $517a: $76
    inc hl                                        ; $517b: $23
    ld b, e                                       ; $517c: $43
    ld e, d                                       ; $517d: $5a
    ld h, e                                       ; $517e: $63
    ld c, [hl]                                    ; $517f: $4e
    jr c, jr_02f_5141                             ; $5180: $38 $bf

    or c                                          ; $5182: $b1
    adc d                                         ; $5183: $8a
    ld a, h                                       ; $5184: $7c
    ldh a, [$35]                                  ; $5185: $f0 $35
    ld c, e                                       ; $5187: $4b
    and a                                         ; $5188: $a7
    dec c                                         ; $5189: $0d
    ld e, l                                       ; $518a: $5d
    inc bc                                        ; $518b: $03
    ld h, a                                       ; $518c: $67
    jp hl                                         ; $518d: $e9


    sub e                                         ; $518e: $93
    ld a, [c]                                     ; $518f: $f2
    ld d, $a7                                     ; $5190: $16 $a7
    sbc $b1                                       ; $5192: $de $b1
    adc h                                         ; $5194: $8c
    ld a, c                                       ; $5195: $79
    db $10                                        ; $5196: $10
    ld l, e                                       ; $5197: $6b
    adc d                                         ; $5198: $8a
    ld [hl], l                                    ; $5199: $75

jr_02f_519a:
    ld c, e                                       ; $519a: $4b
    ret                                           ; $519b: $c9


    add l                                         ; $519c: $85
    ld sp, $bf3a                                  ; $519d: $31 $3a $bf
    ld e, $f3                                     ; $51a0: $1e $f3
    jr nz, jr_02f_519a                            ; $51a2: $20 $f6

    cp d                                          ; $51a4: $ba
    ld e, a                                       ; $51a5: $5f
    or [hl]                                       ; $51a6: $b6
    sub $08                                       ; $51a7: $d6 $08
    ld a, [hl-]                                   ; $51a9: $3a
    adc a                                         ; $51aa: $8f
    db $fc                                        ; $51ab: $fc
    ld bc, $df23                                  ; $51ac: $01 $23 $df
    sub c                                         ; $51af: $91
    ld d, b                                       ; $51b0: $50
    and l                                         ; $51b1: $a5
    adc d                                         ; $51b2: $8a
    ld hl, sp+$73                                 ; $51b3: $f8 $73
    push de                                       ; $51b5: $d5
    ld e, $da                                     ; $51b6: $1e $da
    ld [bc], a                                    ; $51b8: $02
    dec e                                         ; $51b9: $1d
    cp d                                          ; $51ba: $ba
    xor [hl]                                      ; $51bb: $ae
    or h                                          ; $51bc: $b4
    ret nz                                        ; $51bd: $c0

    ld h, l                                       ; $51be: $65
    ld l, e                                       ; $51bf: $6b
    ld b, l                                       ; $51c0: $45
    dec bc                                        ; $51c1: $0b
    ld h, e                                       ; $51c2: $63
    inc c                                         ; $51c3: $0c
    inc hl                                        ; $51c4: $23
    cp c                                          ; $51c5: $b9
    ld l, h                                       ; $51c6: $6c
    db $ed                                        ; $51c7: $ed
    ld l, e                                       ; $51c8: $6b
    ld b, l                                       ; $51c9: $45
    db $e3                                        ; $51ca: $e3
    add sp, -$7a                                  ; $51cb: $e8 $86
    or c                                          ; $51cd: $b1
    add $22                                       ; $51ce: $c6 $22
    ld e, a                                       ; $51d0: $5f
    sub $5d                                       ; $51d1: $d6 $5d
    ld b, c                                       ; $51d3: $41
    add e                                         ; $51d4: $83
    ccf                                           ; $51d5: $3f
    or $ab                                        ; $51d6: $f6 $ab
    ld a, [hl+]                                   ; $51d8: $2a
    adc l                                         ; $51d9: $8d
    cp h                                          ; $51da: $bc
    ld l, [hl]                                    ; $51db: $6e
    db $ec                                        ; $51dc: $ec
    ld e, l                                       ; $51dd: $5d
    rla                                           ; $51de: $17
    inc [hl]                                      ; $51df: $34
    or a                                          ; $51e0: $b7
    cp h                                          ; $51e1: $bc
    dec b                                         ; $51e2: $05
    dec e                                         ; $51e3: $1d
    db $fd                                        ; $51e4: $fd
    and l                                         ; $51e5: $a5
    dec d                                         ; $51e6: $15
    ld hl, $e4f0                                  ; $51e7: $21 $f0 $e4
    jp nz, $9d18                                  ; $51ea: $c2 $18 $9d

    ld e, a                                       ; $51ed: $5f
    adc a                                         ; $51ee: $8f
    ld a, c                                       ; $51ef: $79
    db $10                                        ; $51f0: $10
    ld a, e                                       ; $51f1: $7b
    db $dd                                        ; $51f2: $dd
    cpl                                           ; $51f3: $2f
    ld e, e                                       ; $51f4: $5b
    ld l, e                                       ; $51f5: $6b
    inc b                                         ; $51f6: $04
    sbc l                                         ; $51f7: $9d
    ld b, a                                       ; $51f8: $47
    cp $80                                        ; $51f9: $fe $80
    sub c                                         ; $51fb: $91
    rst $28                                       ; $51fc: $ef
    ld c, b                                       ; $51fd: $48
    xor b                                         ; $51fe: $a8
    ld d, d                                       ; $51ff: $52
    ld b, l                                       ; $5200: $45
    db $fc                                        ; $5201: $fc
    cp c                                          ; $5202: $b9
    ld l, d                                       ; $5203: $6a
    rrca                                          ; $5204: $0f
    ld l, l                                       ; $5205: $6d
    ld bc, $95c7                                  ; $5206: $01 $c7 $95
    dec [hl]                                      ; $5209: $35
    and $d6                                       ; $520a: $e6 $d6
    dec l                                         ; $520c: $2d
    dec l                                         ; $520d: $2d
    inc bc                                        ; $520e: $03
    ld [hl], a                                    ; $520f: $77
    inc l                                         ; $5210: $2c
    or e                                          ; $5211: $b3
    pop af                                        ; $5212: $f1
    ld e, $16                                     ; $5213: $1e $16
    ld [hl], a                                    ; $5215: $77
    ld c, e                                       ; $5216: $4b
    add l                                         ; $5217: $85
    ld a, $c9                                     ; $5218: $3e $c9
    di                                            ; $521a: $f3
    push de                                       ; $521b: $d5
    rst $10                                       ; $521c: $d7
    cp [hl]                                       ; $521d: $be
    ld d, $86                                     ; $521e: $16 $86
    or c                                          ; $5220: $b1
    add $62                                       ; $5221: $c6 $62

Call_02f_5223:
    xor a                                         ; $5223: $af
    ei                                            ; $5224: $fb
    ld h, c                                       ; $5225: $61
    sbc c                                         ; $5226: $99
    add d                                         ; $5227: $82
    ld a, [c]                                     ; $5228: $f2
    ld d, $f5                                     ; $5229: $16 $f5
    dec [hl]                                      ; $522b: $35
    cp $30                                        ; $522c: $fe $30
    ld h, [hl]                                    ; $522e: $66
    xor c                                         ; $522f: $a9
    ld a, b                                       ; $5230: $78
    dec b                                         ; $5231: $05
    ld a, [hl+]                                   ; $5232: $2a
    ld a, l                                       ; $5233: $7d
    ld e, d                                       ; $5234: $5a
    ld h, e                                       ; $5235: $63
    ld e, [hl]                                    ; $5236: $5e
    db $e4                                        ; $5237: $e4
    xor e                                         ; $5238: $ab
    or e                                          ; $5239: $b3
    inc hl                                        ; $523a: $23
    and c                                         ; $523b: $a1
    ld c, d                                       ; $523c: $4a
    dec d                                         ; $523d: $15
    pop af                                        ; $523e: $f1
    rst $20                                       ; $523f: $e7
    jp z, Jump_02f_7597                           ; $5240: $ca $97 $75

    ld d, a                                       ; $5243: $57
    ret nc                                        ; $5244: $d0

    jr jr_02f_527e                                ; $5245: $18 $37

    xor h                                         ; $5247: $ac
    db $f4                                        ; $5248: $f4
    ld l, c                                       ; $5249: $69
    ld e, b                                       ; $524a: $58
    dec [hl]                                      ; $524b: $35
    rst $08                                       ; $524c: $cf
    ret                                           ; $524d: $c9


    ld a, $d5                                     ; $524e: $3e $d5
    ld h, $b6                                     ; $5250: $26 $b6
    daa                                           ; $5252: $27
    ld l, b                                       ; $5253: $68
    adc l                                         ; $5254: $8d
    cp a                                          ; $5255: $bf
    or h                                          ; $5256: $b4
    ld [hl+], a                                   ; $5257: $22
    inc b                                         ; $5258: $04
    cp [hl]                                       ; $5259: $be
    inc hl                                        ; $525a: $23
    and c                                         ; $525b: $a1
    ld c, d                                       ; $525c: $4a
    dec d                                         ; $525d: $15
    pop af                                        ; $525e: $f1
    rst $20                                       ; $525f: $e7
    sbc d                                         ; $5260: $9a
    add d                                         ; $5261: $82
    ld d, [hl]                                    ; $5262: $56
    ld h, a                                       ; $5263: $67
    daa                                           ; $5264: $27
    cp h                                          ; $5265: $bc
    rst $08                                       ; $5266: $cf
    ld e, l                                       ; $5267: $5d
    sub c                                         ; $5268: $91
    rst $28                                       ; $5269: $ef
    cp b                                          ; $526a: $b8
    ld [hl-], a                                   ; $526b: $32
    sbc e                                         ; $526c: $9b

jr_02f_526d:
    xor e                                         ; $526d: $ab
    ld b, a                                       ; $526e: $47
    jr jr_02f_526d                                ; $526f: $18 $fc

    or c                                          ; $5271: $b1
    ld sp, $60f5                                  ; $5272: $31 $f5 $60
    ldh [$2c], a                                  ; $5275: $e0 $2c
    ld a, l                                       ; $5277: $7d
    ld a, [de]                                    ; $5278: $1a
    add a                                         ; $5279: $87
    ld d, l                                       ; $527a: $55
    ld hl, sp+$31                                 ; $527b: $f8 $31
    xor b                                         ; $527d: $a8

jr_02f_527e:
    xor [hl]                                      ; $527e: $ae
    ld l, e                                       ; $527f: $6b
    ld e, h                                       ; $5280: $5c
    dec hl                                        ; $5281: $2b
    or [hl]                                       ; $5282: $b6
    ld c, $c6                                     ; $5283: $0e $c6
    ld b, d                                       ; $5285: $42
    push hl                                       ; $5286: $e5
    db $eb                                        ; $5287: $eb
    ld hl, sp-$40                                 ; $5288: $f8 $c0
    inc sp                                        ; $528a: $33
    ldh a, [rSVBK]                                ; $528b: $f0 $70
    call z, $a283                                 ; $528d: $cc $83 $a2
    di                                            ; $5290: $f3
    db $eb                                        ; $5291: $eb
    ld sp, $620f                                  ; $5292: $31 $0f $62
    ld b, l                                       ; $5295: $45
    ld h, e                                       ; $5296: $63
    ld e, $7a                                     ; $5297: $1e $7a
    db $ed                                        ; $5299: $ed
    and c                                         ; $529a: $a1
    dec l                                         ; $529b: $2d
    ld e, c                                       ; $529c: $59
    ld [hl], a                                    ; $529d: $77
    dec b                                         ; $529e: $05
    push hl                                       ; $529f: $e5
    ld a, c                                       ; $52a0: $79
    ld a, $83                                     ; $52a1: $3e $83
    dec b                                         ; $52a3: $05
    ld h, h                                       ; $52a4: $64

Jump_02f_52a5:
    adc e                                         ; $52a5: $8b
    add $b5                                       ; $52a6: $c6 $b5
    ld h, d                                       ; $52a8: $62
    db $eb                                        ; $52a9: $eb
    adc b                                         ; $52aa: $88
    ld [hl], d                                    ; $52ab: $72
    rst $10                                       ; $52ac: $d7
    ld a, [de]                                    ; $52ad: $1a
    ld [hl], $96                                  ; $52ae: $36 $96
    rla                                           ; $52b0: $17
    xor a                                         ; $52b1: $af
    ld h, c                                       ; $52b2: $61
    ld e, e                                       ; $52b3: $5b
    ld d, c                                       ; $52b4: $51
    sbc $02                                       ; $52b5: $de $02
    ld e, c                                       ; $52b7: $59
    xor a                                         ; $52b8: $af
    xor d                                         ; $52b9: $aa
    db $f4                                        ; $52ba: $f4
    ld l, c                                       ; $52bb: $69
    ld h, c                                       ; $52bc: $61
    adc h                                         ; $52bd: $8c
    adc $af                                       ; $52be: $ce $af
    rst $00                                       ; $52c0: $c7
    inc a                                         ; $52c1: $3c
    adc b                                         ; $52c2: $88

Call_02f_52c3:
    push af                                       ; $52c3: $f5
    ld l, b                                       ; $52c4: $68
    or l                                          ; $52c5: $b5
    add a                                         ; $52c6: $87
    ld h, $b6                                     ; $52c7: $26 $b6
    ld e, c                                       ; $52c9: $59
    ld [hl], a                                    ; $52ca: $77
    dec b                                         ; $52cb: $05
    dec l                                         ; $52cc: $2d
    db $ec                                        ; $52cd: $ec
    rst $00                                       ; $52ce: $c7
    or b                                          ; $52cf: $b0
    ld l, d                                       ; $52d0: $6a
    sbc [hl]                                      ; $52d1: $9e
    sub e                                         ; $52d2: $93
    db $fd                                        ; $52d3: $fd
    ld c, e                                       ; $52d4: $4b
    ld sp, hl                                     ; $52d5: $f9
    ld c, [hl]                                    ; $52d6: $4e
    ld a, c                                       ; $52d7: $79
    ld a, c                                       ; $52d8: $79
    sbc [hl]                                      ; $52d9: $9e
    ld c, a                                       ; $52da: $4f
    ret nz                                        ; $52db: $c0

    ld e, [hl]                                    ; $52dc: $5e
    ld b, $54                                     ; $52dd: $06 $54
    ld [hl-], a                                   ; $52df: $32
    ld [hl], b                                    ; $52e0: $70
    add a                                         ; $52e1: $87
    ccf                                           ; $52e2: $3f
    ld b, l                                       ; $52e3: $45
    jr jr_02f_5350                                ; $52e4: $18 $6a

    ld e, h                                       ; $52e6: $5c
    dec hl                                        ; $52e7: $2b
    ld [hl], $e6                                  ; $52e8: $36 $e6
    dec d                                         ; $52ea: $15
    ld a, c                                       ; $52eb: $79
    sbc $02                                       ; $52ec: $de $02
    dec e                                         ; $52ee: $1d
    push hl                                       ; $52ef: $e5
    pop af                                        ; $52f0: $f1
    cp $d7                                        ; $52f1: $fe $d7
    cp [hl]                                       ; $52f3: $be
    sub $08                                       ; $52f4: $d6 $08
    ld l, b                                       ; $52f6: $68
    call z, $f22b                                 ; $52f7: $cc $2b $f2
    dec d                                         ; $52fa: $15
    ld e, e                                       ; $52fb: $5b
    ld b, a                                       ; $52fc: $47
    sub h                                         ; $52fd: $94
    cp e                                          ; $52fe: $bb
    ld a, [c]                                     ; $52ff: $f2
    dec e                                         ; $5300: $1d
    add hl, bc                                    ; $5301: $09
    ld d, l                                       ; $5302: $55
    xor d                                         ; $5303: $aa
    adc b                                         ; $5304: $88
    ccf                                           ; $5305: $3f
    rst $10                                       ; $5306: $d7
    ld b, d                                       ; $5307: $42
    ld l, [hl]                                    ; $5308: $6e
    db $e3                                        ; $5309: $e3
    sbc d                                         ; $530a: $9a
    adc e                                         ; $530b: $8b
    ld e, $f8                                     ; $530c: $1e $f8
    cp b                                          ; $530e: $b8
    ld a, [hl+]                                   ; $530f: $2a
    jp $ef9f                                      ; $5310: $c3 $9f $ef


    cp b                                          ; $5313: $b8
    ld [hl-], a                                   ; $5314: $32
    and $01                                       ; $5315: $e6 $01
    ld [hl], a                                    ; $5317: $77
    ld e, e                                       ; $5318: $5b
    db $f4                                        ; $5319: $f4
    ldh [$aa], a                                  ; $531a: $e0 $aa
    db $f4                                        ; $531c: $f4
    ld l, c                                       ; $531d: $69
    call z, $9883                                 ; $531e: $cc $83 $98
    cp $1a                                        ; $5321: $fe $1a
    di                                            ; $5323: $f3
    ld [hl+], a                                   ; $5324: $22
    rst $08                                       ; $5325: $cf
    ld e, e                                       ; $5326: $5b
    and a                                         ; $5327: $a7
    ld [c], a                                     ; $5328: $e2
    ld d, h                                       ; $5329: $54
    adc d                                         ; $532a: $8a
    ld d, $86                                     ; $532b: $16 $86
    or h                                          ; $532d: $b4
    inc c                                         ; $532e: $0c
    ld l, b                                       ; $532f: $68
    ld b, a                                       ; $5330: $47
    ld b, d                                       ; $5331: $42
    sub l                                         ; $5332: $95
    ld a, [hl+]                                   ; $5333: $2a
    ld [c], a                                     ; $5334: $e2
    rst $08                                       ; $5335: $cf
    dec [hl]                                      ; $5336: $35
    dec b                                         ; $5337: $05
    xor l                                         ; $5338: $ad
    ld sp, $4c27                                  ; $5339: $31 $27 $4c
    xor $94                                       ; $533c: $ee $94
    rst $00                                       ; $533e: $c7
    ld [bc], a                                    ; $533f: $02
    xor l                                         ; $5340: $ad
    ld l, b                                       ; $5341: $68
    ld h, c                                       ; $5342: $61
    ld c, b                                       ; $5343: $48
    inc sp                                        ; $5344: $33
    adc b                                         ; $5345: $88
    ret nz                                        ; $5346: $c0

    ld a, h                                       ; $5347: $7c
    rst $00                                       ; $5348: $c7
    sub l                                         ; $5349: $95
    and c                                         ; $534a: $a1
    db $db                                        ; $534b: $db
    ld a, [de]                                    ; $534c: $1a
    rst $10                                       ; $534d: $d7
    rst $20                                       ; $534e: $e7
    xor [hl]                                      ; $534f: $ae

jr_02f_5350:
    dec d                                         ; $5350: $15
    ld e, e                                       ; $5351: $5b
    ld b, a                                       ; $5352: $47
    sub h                                         ; $5353: $94
    cp e                                          ; $5354: $bb
    halt                                          ; $5355: $76
    adc c                                         ; $5356: $89
    ld c, b                                       ; $5357: $48
    ei                                            ; $5358: $fb
    add b                                         ; $5359: $80
    ld d, h                                       ; $535a: $54
    sbc e                                         ; $535b: $9b
    ret c                                         ; $535c: $d8

    ld [bc], a                                    ; $535d: $02
    ld b, a                                       ; $535e: $47
    cp [hl]                                       ; $535f: $be
    ld a, a                                       ; $5360: $7f
    dec h                                         ; $5361: $25
    add a                                         ; $5362: $87
    ld h, l                                       ; $5363: $65
    ld l, c                                       ; $5364: $69
    inc bc                                        ; $5365: $03
    xor $b6                                       ; $5366: $ee $b6
    inc c                                         ; $5368: $0c
    ld l, b                                       ; $5369: $68
    reti                                          ; $536a: $d9


    ld e, d                                       ; $536b: $5a
    or c                                          ; $536c: $b1
    dec [hl]                                      ; $536d: $35
    xor [hl]                                      ; $536e: $ae
    rst $38                                       ; $536f: $ff
    dec [hl]                                      ; $5370: $35
    ld h, e                                       ; $5371: $63
    db $ec                                        ; $5372: $ec
    ld d, e                                       ; $5373: $53
    sbc $02                                       ; $5374: $de $02
    push af                                       ; $5376: $f5
    dec [hl]                                      ; $5377: $35
    ld b, $f5                                     ; $5378: $06 $f5
    ld h, e                                       ; $537a: $63
    add $e8                                       ; $537b: $c6 $e8
    ld a, [de]                                    ; $537d: $1a
    dec a                                         ; $537e: $3d
    call z, Call_000_1d5b                         ; $537f: $cc $5b $1d
    ld e, $ce                                     ; $5382: $1e $ce
    jr nz, jr_02f_5388                            ; $5384: $20 $02

    ld l, e                                       ; $5386: $6b
    inc de                                        ; $5387: $13

jr_02f_5388:
    ld e, e                                       ; $5388: $5b
    ld e, c                                       ; $5389: $59
    ld [hl], a                                    ; $538a: $77
    dec b                                         ; $538b: $05
    xor l                                         ; $538c: $ad
    call c, $02d9                                 ; $538d: $dc $d9 $02
    ld d, a                                       ; $5390: $57
    cp [hl]                                       ; $5391: $be
    db $e3                                        ; $5392: $e3
    jp z, $0318                                   ; $5393: $ca $18 $03

    ld e, d                                       ; $5396: $5a
    add l                                         ; $5397: $85
    add d                                         ; $5398: $82
    adc $ab                                       ; $5399: $ce $ab
    ld b, h                                       ; $539b: $44
    db $e4                                        ; $539c: $e4
    ld e, d                                       ; $539d: $5a
    or c                                          ; $539e: $b1
    ld e, l                                       ; $539f: $5d
    sub $68                                       ; $53a0: $d6 $68
    and d                                         ; $53a2: $a2
    inc a                                         ; $53a3: $3c
    rst $08                                       ; $53a4: $cf
    ld e, e                                       ; $53a5: $5b
    sbc l                                         ; $53a6: $9d
    ld e, h                                       ; $53a7: $5c
    call z, $daf3                                 ; $53a8: $cc $f3 $da
    ld b, e                                       ; $53ab: $43
    rst $10                                       ; $53ac: $d7
    add hl, bc                                    ; $53ad: $09
    and [hl]                                      ; $53ae: $a6
    ld e, b                                       ; $53af: $58
    xor c                                         ; $53b0: $a9
    ld d, e                                       ; $53b1: $53
    ld a, e                                       ; $53b2: $7b
    add sp, -$72                                  ; $53b3: $e8 $8e
    cp l                                          ; $53b5: $bd
    dec l                                         ; $53b6: $2d
    inc bc                                        ; $53b7: $03
    ld [hl], a                                    ; $53b8: $77
    dec b                                         ; $53b9: $05
    push de                                       ; $53ba: $d5
    cp e                                          ; $53bb: $bb
    or h                                          ; $53bc: $b4
    inc c                                         ; $53bd: $0c
    ld l, b                                       ; $53be: $68
    inc b                                         ; $53bf: $04
    ld c, e                                       ; $53c0: $4b
    dec de                                        ; $53c1: $1b
    ld b, [hl]                                    ; $53c2: $46
    db $ed                                        ; $53c3: $ed
    and c                                         ; $53c4: $a1
    dec l                                         ; $53c5: $2d
    and a                                         ; $53c6: $a7
    and b                                         ; $53c7: $a0
    cp $38                                        ; $53c8: $fe $38
    adc h                                         ; $53ca: $8c
    ld e, $50                                     ; $53cb: $1e $50
    ld [hl], d                                    ; $53cd: $72
    daa                                           ; $53ce: $27
    adc d                                         ; $53cf: $8a
    pop bc                                        ; $53d0: $c1
    ld d, d                                       ; $53d1: $52
    sub h                                         ; $53d2: $94
    or a                                          ; $53d3: $b7
    and a                                         ; $53d4: $a7
    ccf                                           ; $53d5: $3f
    adc b                                         ; $53d6: $88
    ld e, c                                       ; $53d7: $59
    add hl, hl                                    ; $53d8: $29
    ld a, [hl-]                                   ; $53d9: $3a
    ld a, a                                       ; $53da: $7f
    ld a, [$73d7]                                 ; $53db: $fa $d7 $73
    dec l                                         ; $53de: $2d
    sbc [hl]                                      ; $53df: $9e
    inc de                                        ; $53e0: $13
    ld a, d                                       ; $53e1: $7a
    ld [hl], d                                    ; $53e2: $72
    ld l, h                                       ; $53e3: $6c
    pop hl                                        ; $53e4: $e1
    xor a                                         ; $53e5: $af
    dec a                                         ; $53e6: $3d
    or h                                          ; $53e7: $b4
    dec b                                         ; $53e8: $05
    dec e                                         ; $53e9: $1d
    inc c                                         ; $53ea: $0c
    ld h, e                                       ; $53eb: $63
    rst $38                                       ; $53ec: $ff
    db $fd                                        ; $53ed: $fd
    ld a, h                                       ; $53ee: $7c
    dec sp                                        ; $53ef: $3b
    db $dd                                        ; $53f0: $dd
    ld b, [hl]                                    ; $53f1: $46
    jp c, $e0f5                                   ; $53f2: $da $f5 $e0

    ld h, d                                       ; $53f5: $62
    res 2, e                                      ; $53f6: $cb $93
    dec sp                                        ; $53f8: $3b
    ld d, c                                       ; $53f9: $51
    inc c                                         ; $53fa: $0c
    sub [hl]                                      ; $53fb: $96
    and d                                         ; $53fc: $a2
    jp c, $16c4                                   ; $53fd: $da $c4 $16

jr_02f_5400:
    and a                                         ; $5400: $a7
    ccf                                           ; $5401: $3f
    adc b                                         ; $5402: $88
    db $fd                                        ; $5403: $fd
    cp e                                          ; $5404: $bb
    ld sp, $7f3a                                  ; $5405: $31 $3a $7f
    adc l                                         ; $5408: $8d
    push bc                                       ; $5409: $c5
    adc d                                         ; $540a: $8a
    add $fd                                       ; $540b: $c6 $fd
    ld hl, $6b8d                                  ; $540d: $21 $8d $6b
    pop af                                        ; $5410: $f1
    sbc h                                         ; $5411: $9c
    ret nc                                        ; $5412: $d0

    di                                            ; $5413: $f3
    sbc l                                         ; $5414: $9d
    cp $20                                        ; $5415: $fe $20
    ld d, $72                                     ; $5417: $16 $72
    sbc l                                         ; $5419: $9d
    ccf                                           ; $541a: $3f
    xor [hl]                                      ; $541b: $ae
    db $fd                                        ; $541c: $fd
    rlca                                          ; $541d: $07
    adc h                                         ; $541e: $8c
    inc c                                         ; $541f: $0c
    ld h, [hl]                                    ; $5420: $66
    ld b, h                                       ; $5421: $44
    ld l, [hl]                                    ; $5422: $6e
    call $262d                                    ; $5423: $cd $2d $26
    ld a, [de]                                    ; $5426: $1a
    di                                            ; $5427: $f3
    jr nz, jr_02f_5400                            ; $5428: $20 $d6

    ret z                                         ; $542a: $c8

    cp c                                          ; $542b: $b9
    db $eb                                        ; $542c: $eb
    db $fc                                        ; $542d: $fc
    jp hl                                         ; $542e: $e9


    ld e, a                                       ; $542f: $5f
    rst $08                                       ; $5430: $cf
    dec [hl]                                      ; $5431: $35
    xor [hl]                                      ; $5432: $ae
    ld e, b                                       ; $5433: $58
    di                                            ; $5434: $f3
    ldh a, [rHDMA3]                               ; $5435: $f0 $53
    db $e4                                        ; $5437: $e4
    dec l                                         ; $5438: $2d
    sbc l                                         ; $5439: $9d
    ld h, b                                       ; $543a: $60
    ld e, a                                       ; $543b: $5f
    ld l, e                                       ; $543c: $6b
    inc b                                         ; $543d: $04
    sbc l                                         ; $543e: $9d
    rst $10                                       ; $543f: $d7
    ld e, b                                       ; $5440: $58
    db $ec                                        ; $5441: $ec
    ld a, d                                       ; $5442: $7a
    ld d, l                                       ; $5443: $55
    db $e3                                        ; $5444: $e3
    ld a, [$95dc]                                 ; $5445: $fa $dc $95
    call c, Call_02f_5775                         ; $5448: $dc $75 $57
    ret nc                                        ; $544b: $d0

    ret z                                         ; $544c: $c8

    db $eb                                        ; $544d: $eb
    add $b0                                       ; $544e: $c6 $b0
    ld l, d                                       ; $5450: $6a
    sbc [hl]                                      ; $5451: $9e
    sub e                                         ; $5452: $93
    ld a, l                                       ; $5453: $7d
    jp z, $f55b                                   ; $5454: $ca $5b $f5

    dec [hl]                                      ; $5457: $35
    add $30                                       ; $5458: $c6 $30
    add $3c                                       ; $545a: $c6 $3c
    adc b                                         ; $545c: $88
    jp hl                                         ; $545d: $e9


    ld c, a                                       ; $545e: $4f
    ld d, l                                       ; $545f: $55
    db $d3                                        ; $5460: $d3
    push af                                       ; $5461: $f5
    push bc                                       ; $5462: $c5
    sub [hl]                                      ; $5463: $96
    rst $20                                       ; $5464: $e7
    dec sp                                        ; $5465: $3b
    db $fd                                        ; $5466: $fd
    ld b, c                                       ; $5467: $41
    call z, $9d18                                 ; $5468: $cc $18 $9d
    cp a                                          ; $546b: $bf
    or h                                          ; $546c: $b4
    ld hl, $22cd                                  ; $546d: $21 $cd $22
    ld [hl], h                                    ; $5470: $74
    cp $b8                                        ; $5471: $fe $b8
    halt                                          ; $5473: $76
    or c                                          ; $5474: $b1
    ld e, a                                       ; $5475: $5f
    jr z, @-$78                                   ; $5476: $28 $86

    sbc a                                         ; $5478: $9f
    db $e4                                        ; $5479: $e4
    inc e                                         ; $547a: $1c
    ld c, c                                       ; $547b: $49
    sub c                                         ; $547c: $91
    xor a                                         ; $547d: $af
    cp [hl]                                       ; $547e: $be
    ld a, [c]                                     ; $547f: $f2
    inc a                                         ; $5480: $3c
    ld e, a                                       ; $5481: $5f
    or [hl]                                       ; $5482: $b6
    add $18                                       ; $5483: $c6 $18
    add $2a                                       ; $5485: $c6 $2a
    dec l                                         ; $5487: $2d
    ld h, l                                       ; $5488: $65
    ld b, h                                       ; $5489: $44
    xor [hl]                                      ; $548a: $ae
    jp c, $16c4                                   ; $548b: $da $c4 $16

    push af                                       ; $548e: $f5
    or l                                          ; $548f: $b5
    nop                                           ; $5490: $00
    adc h                                         ; $5491: $8c
    pop af                                        ; $5492: $f1
    ld e, e                                       ; $5493: $5b
    cp h                                          ; $5494: $bc
    ld [hl], d                                    ; $5495: $72
    ld d, e                                       ; $5496: $53
    ld [hl], d                                    ; $5497: $72
    sub l                                         ; $5498: $95
    ld h, c                                       ; $5499: $61
    inc l                                         ; $549a: $2c
    ld e, e                                       ; $549b: $5b
    dec bc                                        ; $549c: $0b
    ret nz                                        ; $549d: $c0

    ret c                                         ; $549e: $d8

    ld c, e                                       ; $549f: $4b
    dec d                                         ; $54a0: $15
    ld h, h                                       ; $54a1: $64
    db $dd                                        ; $54a2: $dd
    inc [hl]                                      ; $54a3: $34
    xor [hl]                                      ; $54a4: $ae
    dec d                                         ; $54a5: $15
    dec l                                         ; $54a6: $2d
    ld l, l                                       ; $54a7: $6d
    add sp, $4a                                   ; $54a8: $e8 $4a
    xor $44                                       ; $54aa: $ee $44
    ld sp, $8a58                                  ; $54ac: $31 $58 $8a
    ld a, [c]                                     ; $54af: $f2
    ld [hl], l                                    ; $54b0: $75
    inc d                                         ; $54b1: $14
    add hl, sp                                    ; $54b2: $39
    and [hl]                                      ; $54b3: $a6
    pop af                                        ; $54b4: $f1
    add d                                         ; $54b5: $82
    ld e, b                                       ; $54b6: $58
    and a                                         ; $54b7: $a7
    ld b, a                                       ; $54b8: $47
    ld d, [hl]                                    ; $54b9: $56
    jr nz, @+$6c                                  ; $54ba: $20 $6a

    inc de                                        ; $54bc: $13
    ld e, e                                       ; $54bd: $5b
    sbc l                                         ; $54be: $9d

Jump_02f_54bf:
    ld h, b                                       ; $54bf: $60
    rst $10                                       ; $54c0: $d7
    xor e                                         ; $54c1: $ab
    ld a, [de]                                    ; $54c2: $1a
    rst $10                                       ; $54c3: $d7
    rst $20                                       ; $54c4: $e7
    ld l, [hl]                                    ; $54c5: $6e
    or c                                          ; $54c6: $b1
    and [hl]                                      ; $54c7: $a6
    ld b, b                                       ; $54c8: $40
    adc h                                         ; $54c9: $8c
    call z, Call_02f_7279                         ; $54ca: $cc $79 $72
    daa                                           ; $54cd: $27
    adc d                                         ; $54ce: $8a
    pop bc                                        ; $54cf: $c1
    ld d, d                                       ; $54d0: $52
    sub h                                         ; $54d1: $94
    or a                                          ; $54d2: $b7
    ld e, c                                       ; $54d3: $59
    ld [hl], a                                    ; $54d4: $77
    dec b                                         ; $54d5: $05
    ld c, l                                       ; $54d6: $4d
    sbc a                                         ; $54d7: $9f
    db $fc                                        ; $54d8: $fc
    ld bc, $a723                                  ; $54d9: $01 $23 $a7
    jp c, $9dc4                                   ; $54dc: $da $c4 $9d

    ld a, [c]                                     ; $54df: $f2
    ld e, b                                       ; $54e0: $58
    and b                                         ; $54e1: $a0
    pop af                                        ; $54e2: $f1
    add a                                         ; $54e3: $87
    inc [hl]                                      ; $54e4: $34
    ld a, [hl]                                    ; $54e5: $7e
    res 5, [hl]                                   ; $54e6: $cb $ae
    or e                                          ; $54e8: $b3
    sbc d                                         ; $54e9: $9a
    ld [hl], l                                    ; $54ea: $75
    ld c, l                                       ; $54eb: $4d
    xor [hl]                                      ; $54ec: $ae
    cp h                                          ; $54ed: $bc
    dec b                                         ; $54ee: $05
    add a                                         ; $54ef: $87
    xor a                                         ; $54f0: $af
    ld a, d                                       ; $54f1: $7a
    ld a, a                                       ; $54f2: $7f
    add $60                                       ; $54f3: $c6 $60
    inc h                                         ; $54f5: $24
    add a                                         ; $54f6: $87
    ld h, l                                       ; $54f7: $65
    ld e, a                                       ; $54f8: $5f
    ld l, e                                       ; $54f9: $6b
    inc b                                         ; $54fa: $04
    or h                                          ; $54fb: $b4
    add $62                                       ; $54fc: $c6 $62
    rst $38                                       ; $54fe: $ff
    ld b, c                                       ; $54ff: $41
    adc h                                         ; $5500: $8c
    ld a, c                                       ; $5501: $79
    add sp, $79                                   ; $5502: $e8 $79
    dec bc                                        ; $5504: $0b
    and a                                         ; $5505: $a7
    inc hl                                        ; $5506: $23
    add hl, hl                                    ; $5507: $29
    cp c                                          ; $5508: $b9
    ld h, e                                       ; $5509: $63
    call Call_000_26bd                            ; $550a: $cd $bd $26
    cp c                                          ; $550d: $b9
    db $ec                                        ; $550e: $ec
    rlca                                          ; $550f: $07
    ld a, [de]                                    ; $5510: $1a
    rst $10                                       ; $5511: $d7
    adc d                                         ; $5512: $8a
    dec l                                         ; $5513: $2d
    ld e, l                                       ; $5514: $5d
    ld a, d                                       ; $5515: $7a
    jr nz, @-$19                                  ; $5516: $20 $e5

    dec l                                         ; $5518: $2d
    push af                                       ; $5519: $f5
    or l                                          ; $551a: $b5
    xor a                                         ; $551b: $af
    sub l                                         ; $551c: $95
    cp e                                          ; $551d: $bb
    pop hl                                        ; $551e: $e1
    ld a, [de]                                    ; $551f: $1a
    adc e                                         ; $5520: $8b
    dec [hl]                                      ; $5521: $35
    adc [hl]                                      ; $5522: $8e
    and c                                         ; $5523: $a1
    jp c, Jump_000_1dc4                           ; $5524: $da $c4 $1d

    ld d, a                                       ; $5527: $57
    sub [hl]                                      ; $5528: $96
    ld [hl], $a0                                  ; $5529: $36 $a0
    ld h, l                                       ; $552b: $65
    ldh [$fe], a                                  ; $552c: $e0 $fe
    cp $6a                                        ; $552e: $fe $6a
    and $a2                                       ; $5530: $e6 $a2
    rlca                                          ; $5532: $07
    cp $55                                        ; $5533: $fe $55
    sbc e                                         ; $5535: $9b
    ret c                                         ; $5536: $d8

    ld [bc], a                                    ; $5537: $02
    rst $00                                       ; $5538: $c7
    sub l                                         ; $5539: $95
    pop af                                        ; $553a: $f1
    rst $20                                       ; $553b: $e7
    sub h                                         ; $553c: $94
    rst $28                                       ; $553d: $ef
    and h                                         ; $553e: $a4
    cp a                                          ; $553f: $bf
    sbc d                                         ; $5540: $9a
    ld sp, $9b56                                  ; $5541: $31 $56 $9b
    ret c                                         ; $5544: $d8

    ld [bc], a                                    ; $5545: $02
    daa                                           ; $5546: $27
    ld l, b                                       ; $5547: $68
    adc l                                         ; $5548: $8d
    cp a                                          ; $5549: $bf
    or h                                          ; $554a: $b4
    ld [hl+], a                                   ; $554b: $22
    inc b                                         ; $554c: $04
    cp [hl]                                       ; $554d: $be
    ld c, $d7                                     ; $554e: $0e $d7
    ld sp, $1bef                                  ; $5550: $31 $ef $1b
    bit 1, d                                      ; $5553: $cb $4a
    add hl, de                                    ; $5555: $19
    ld b, a                                       ; $5556: $47
    ld e, d                                       ; $5557: $5a
    ld b, $b4                                     ; $5558: $06 $b4
    inc hl                                        ; $555a: $23
    and c                                         ; $555b: $a1
    ld c, d                                       ; $555c: $4a
    dec d                                         ; $555d: $15
    pop af                                        ; $555e: $f1
    rst $20                                       ; $555f: $e7
    sbc d                                         ; $5560: $9a
    add d                                         ; $5561: $82
    ld d, [hl]                                    ; $5562: $56
    ld h, a                                       ; $5563: $67
    daa                                           ; $5564: $27
    cp h                                          ; $5565: $bc
    rst $08                                       ; $5566: $cf
    ld e, l                                       ; $5567: $5d
    sub c                                         ; $5568: $91
    or a                                          ; $5569: $b7
    and a                                         ; $556a: $a7
    ld a, [de]                                    ; $556b: $1a
    and e                                         ; $556c: $a3
    di                                            ; $556d: $f3
    db $eb                                        ; $556e: $eb
    ld sp, $620f                                  ; $556f: $31 $0f $62
    xor a                                         ; $5572: $af
    ei                                            ; $5573: $fb
    add hl, hl                                    ; $5574: $29
    ld l, b                                       ; $5575: $68
    ld b, a                                       ; $5576: $47
    ld b, d                                       ; $5577: $42
    sub l                                         ; $5578: $95
    ld a, [hl+]                                   ; $5579: $2a
    ld [c], a                                     ; $557a: $e2
    rst $08                                       ; $557b: $cf
    ld d, l                                       ; $557c: $55

jr_02f_557d:
    ld a, e                                       ; $557d: $7b
    ld l, b                                       ; $557e: $68
    dec bc                                        ; $557f: $0b
    rst $00                                       ; $5580: $c7
    sub l                                         ; $5581: $95
    dec [hl]                                      ; $5582: $35
    and $d6                                       ; $5583: $e6 $d6
    dec l                                         ; $5585: $2d
    dec l                                         ; $5586: $2d
    inc bc                                        ; $5587: $03
    ld [hl], a                                    ; $5588: $77
    inc l                                         ; $5589: $2c
    ld d, e                                       ; $558a: $53
    ret nc                                        ; $558b: $d0

    ld a, [de]                                    ; $558c: $1a
    ld [hl], e                                    ; $558d: $73
    jp nz, $8fe9                                  ; $558e: $c2 $e9 $8f

    ld a, c                                       ; $5591: $79
    dec [hl]                                      ; $5592: $35
    add $52                                       ; $5593: $c6 $52
    sbc $02                                       ; $5595: $de $02
    rst $00                                       ; $5597: $c7
    sub l                                         ; $5598: $95
    dec [hl]                                      ; $5599: $35

jr_02f_559a:
    rrca                                          ; $559a: $0f
    call c, Call_02f_690d                         ; $559b: $dc $0d $69
    ld e, l                                       ; $559e: $5d
    sub e                                         ; $559f: $93
    ld l, e                                       ; $55a0: $6b
    rst $38                                       ; $55a1: $ff
    adc [hl]                                      ; $55a2: $8e
    ld d, l                                       ; $55a3: $55
    di                                            ; $55a4: $f3
    sbc h                                         ; $55a5: $9c
    or h                                          ; $55a6: $b4
    rst $10                                       ; $55a7: $d7
    ld a, l                                       ; $55a8: $7d
    sbc $02                                       ; $55a9: $de $02
    daa                                           ; $55ab: $27
    cp [hl]                                       ; $55ac: $be
    sbc a                                         ; $55ad: $9f
    ld e, h                                       ; $55ae: $5c
    ld h, l                                       ; $55af: $65
    jr jr_02f_557d                                ; $55b0: $18 $cb

    sub $ca                                       ; $55b2: $d6 $ca
    db $dd                                        ; $55b4: $dd
    ld [hl], b                                    ; $55b5: $70
    pop af                                        ; $55b6: $f1
    add b                                         ; $55b7: $80
    pop de                                        ; $55b8: $d1
    and a                                         ; $55b9: $a7
    ld sp, $8330                                  ; $55ba: $31 $30 $83
    ld e, l                                       ; $55bd: $5d
    ld hl, sp+$33                                 ; $55be: $f8 $33
    add b                                         ; $55c0: $80
    ld [hl], l                                    ; $55c1: $75
    dec hl                                        ; $55c2: $2b
    db $ed                                        ; $55c3: $ed
    ld b, [hl]                                    ; $55c4: $46
    add $52                                       ; $55c5: $c6 $52
    sbc $02                                       ; $55c7: $de $02
    push af                                       ; $55c9: $f5
    or l                                          ; $55ca: $b5
    xor a                                         ; $55cb: $af
    sub l                                         ; $55cc: $95
    cp e                                          ; $55cd: $bb
    pop hl                                        ; $55ce: $e1
    ld a, [de]                                    ; $55cf: $1a
    adc e                                         ; $55d0: $8b
    ld sp, $ae30                                  ; $55d1: $31 $30 $ae
    dec d                                         ; $55d4: $15
    ld e, e                                       ; $55d5: $5b
    or $03                                        ; $55d6: $f6 $03
    rst $38                                       ; $55d8: $ff
    scf                                           ; $55d9: $37
    push hl                                       ; $55da: $e5
    dec l                                         ; $55db: $2d
    push af                                       ; $55dc: $f5
    rst $28                                       ; $55dd: $ef
    add [hl]                                      ; $55de: $86
    ld h, e                                       ; $55df: $63
    ld h, b                                       ; $55e0: $60
    add hl, de                                    ; $55e1: $19
    ld d, b                                       ; $55e2: $50
    ret                                           ; $55e3: $c9


    ret nz                                        ; $55e4: $c0

    dec e                                         ; $55e5: $1d
    cp $e2                                        ; $55e6: $fe $e2
    xor [hl]                                      ; $55e8: $ae
    rst $08                                       ; $55e9: $cf
    cp h                                          ; $55ea: $bc
    ld [hl+], a                                   ; $55eb: $22
    ld c, a                                       ; $55ec: $4f
    xor $ba                                       ; $55ed: $ee $ba
    rst $18                                       ; $55ef: $df
    ret z                                         ; $55f0: $c8

    sub b                                         ; $55f1: $90
    sub $08                                       ; $55f2: $d6 $08
    xor b                                         ; $55f4: $a8
    ld e, [hl]                                    ; $55f5: $5e
    rst $10                                       ; $55f6: $d7
    db $e4                                        ; $55f7: $e4
    ld e, d                                       ; $55f8: $5a
    ld bc, $5bcc                                  ; $55f9: $01 $cc $5b
    ld b, a                                       ; $55fc: $47
    xor d                                         ; $55fd: $aa
    or d                                          ; $55fe: $b2
    rst $08                                       ; $55ff: $cf
    or l                                          ; $5600: $b5
    ld a, [hl-]                                   ; $5601: $3a
    db $eb                                        ; $5602: $eb
    ld [hl], b                                    ; $5603: $70
    dec e                                         ; $5604: $1d
    di                                            ; $5605: $f3
    cp [hl]                                       ; $5606: $be
    or c                                          ; $5607: $b1
    xor h                                         ; $5608: $ac
    sub h                                         ; $5609: $94
    db $e4                                        ; $560a: $e4
    or d                                          ; $560b: $b2
    or l                                          ; $560c: $b5
    and d                                         ; $560d: $a2
    sbc b                                         ; $560e: $98
    pop hl                                        ; $560f: $e1
    jr jr_02f_559a                                ; $5610: $18 $88

    dec [hl]                                      ; $5612: $35
    and $45                                       ; $5613: $e6 $45
    ld a, $fd                                     ; $5615: $3e $fd
    ld d, b                                       ; $5617: $50
    sub l                                         ; $5618: $95
    ld a, [hl+]                                   ; $5619: $2a
    jp z, Jump_02f_595b                           ; $561a: $ca $5b $59

    ld [hl], a                                    ; $561d: $77
    dec b                                         ; $561e: $05
    xor l                                         ; $561f: $ad
    or c                                          ; $5620: $b1
    ld e, b                                       ; $5621: $58
    push af                                       ; $5622: $f5
    ld [hl], b                                    ; $5623: $70
    add hl, de                                    ; $5624: $19
    ret nz                                        ; $5625: $c0

    dec b                                         ; $5626: $05
    ld h, b                                       ; $5627: $60
    adc h                                         ; $5628: $8c
    ld l, e                                       ; $5629: $6b
    inc l                                         ; $562a: $2c
    ld [hl], e                                    ; $562b: $73
    xor [hl]                                      ; $562c: $ae
    cp h                                          ; $562d: $bc
    dec b                                         ; $562e: $05
    rst $00                                       ; $562f: $c7

Jump_02f_5630:
    sub l                                         ; $5630: $95
    add hl, hl                                    ; $5631: $29
    ld l, b                                       ; $5632: $68
    adc l                                         ; $5633: $8d
    add b                                         ; $5634: $80
    ld [$4d75], a                                 ; $5635: $ea $75 $4d
    xor [hl]                                      ; $5638: $ae
    ld e, c                                       ; $5639: $59
    add hl, hl                                    ; $563a: $29
    or a                                          ; $563b: $b7
    ld sp, $7d0f                                  ; $563c: $31 $0f $7d
    rst $00                                       ; $563f: $c7
    ld a, [de]                                    ; $5640: $1a
    res 2, c                                      ; $5641: $cb $91
    daa                                           ; $5643: $27
    add a                                         ; $5644: $87
    dec h                                         ; $5645: $25
    sub $98                                       ; $5646: $d6 $98
    rla                                           ; $5648: $17
    ld a, l                                       ; $5649: $7d
    ld e, d                                       ; $564a: $5a
    inc a                                         ; $564b: $3c
    ld h, b                                       ; $564c: $60
    db $f4                                        ; $564d: $f4
    ld l, c                                       ; $564e: $69
    ld a, [$2aa1]                                 ; $564f: $fa $a1 $2a
    ld d, l                                       ; $5652: $55
    sub h                                         ; $5653: $94
    or a                                          ; $5654: $b7
    push af                                       ; $5655: $f5
    rst $28                                       ; $5656: $ef
    add [hl]                                      ; $5657: $86
    db $d3                                        ; $5658: $d3
    daa                                           ; $5659: $27
    ld a, l                                       ; $565a: $7d
    ld c, $e3                                     ; $565b: $0e $e3
    add sp, $5a                                   ; $565d: $e8 $5a
    ld b, $ee                                     ; $565f: $06 $ee
    ld e, b                                       ; $5661: $58
    sub $b8                                       ; $5662: $d6 $b8
    cp [hl]                                       ; $5664: $be
    ld hl, $2b8d                                  ; $5665: $21 $8d $2b
    sub $88                                       ; $5668: $d6 $88
    sub b                                         ; $566a: $90
    inc d                                         ; $566b: $14
    ld h, e                                       ; $566c: $63
    db $ec                                        ; $566d: $ec
    or d                                          ; $566e: $b2
    ld a, a                                       ; $566f: $7f
    add hl, hl                                    ; $5670: $29
    ld a, [c]                                     ; $5671: $f2
    ld d, $f5                                     ; $5672: $16 $f5
    or l                                          ; $5674: $b5
    ld [hl], d                                    ; $5675: $72
    scf                                           ; $5676: $37
    sbc h                                         ; $5677: $9c
    ld a, $e9                                     ; $5678: $3e $e9
    ld [hl], e                                    ; $567a: $73
    ld e, b                                       ; $567b: $58
    ld h, l                                       ; $567c: $65
    ld e, [hl]                                    ; $567d: $5e
    cp l                                          ; $567e: $bd
    rst $38                                       ; $567f: $ff

Jump_02f_5680:
    push hl                                       ; $5680: $e5
    inc sp                                        ; $5681: $33
    ld e, b                                       ; $5682: $58
    ld b, b                                       ; $5683: $40
    or [hl]                                       ; $5684: $b6
    ld l, b                                       ; $5685: $68
    db $fc                                        ; $5686: $fc
    ld c, $5f                                     ; $5687: $0e $5f
    di                                            ; $5689: $f3
    dec de                                        ; $568a: $1b
    ld a, h                                       ; $568b: $7c
    ld a, h                                       ; $568c: $7c
    ld a, a                                       ; $568d: $7f
    ld e, b                                       ; $568e: $58
    dec [hl]                                      ; $568f: $35
    rst $08                                       ; $5690: $cf
    ret                                           ; $5691: $c9


    ld a, $29                                     ; $5692: $3e $29
    ld l, a                                       ; $5694: $6f
    ld bc, $b5f5                                  ; $5695: $01 $f5 $b5
    xor a                                         ; $5698: $af
    sub l                                         ; $5699: $95
    cp e                                          ; $569a: $bb
    pop hl                                        ; $569b: $e1
    ld a, [de]                                    ; $569c: $1a
    adc e                                         ; $569d: $8b
    ld sp, $ae30                                  ; $569e: $31 $30 $ae
    ld b, $30                                     ; $56a1: $06 $30
    ld d, [hl]                                    ; $56a3: $56
    inc [hl]                                      ; $56a4: $34
    sbc $ed                                       ; $56a5: $de $ed
    sub a                                         ; $56a7: $97
    adc a                                         ; $56a8: $8f
    adc l                                         ; $56a9: $8d
    ld a, [c]                                     ; $56aa: $f2
    push bc                                       ; $56ab: $c5
    ld b, e                                       ; $56ac: $43
    rst $08                                       ; $56ad: $cf
    ld e, e                                       ; $56ae: $5b
    dec e                                         ; $56af: $1d
    rra                                           ; $56b0: $1f
    ld hl, sp+$0c                                 ; $56b1: $f8 $0c
    ret z                                         ; $56b3: $c8

    ld a, $2d                                     ; $56b4: $3e $2d
    inc bc                                        ; $56b6: $03
    ld e, d                                       ; $56b7: $5a
    or [hl]                                       ; $56b8: $b6
    ld d, $76                                     ; $56b9: $16 $76
    or c                                          ; $56bb: $b1
    sub l                                         ; $56bc: $95
    ld e, h                                       ; $56bd: $5c
    and a                                         ; $56be: $a7
    db $d3                                        ; $56bf: $d3
    sub $3c                                       ; $56c0: $d6 $3c
    ld [hl], b                                    ; $56c2: $70
    scf                                           ; $56c3: $37
    adc h                                         ; $56c4: $8c

Jump_02f_56c5:
    ld [hl], l                                    ; $56c5: $75
    ld c, l                                       ; $56c6: $4d
    xor [hl]                                      ; $56c7: $ae
    dec e                                         ; $56c8: $1d
    add hl, bc                                    ; $56c9: $09
    ld d, l                                       ; $56ca: $55
    xor d                                         ; $56cb: $aa
    adc b                                         ; $56cc: $88
    ccf                                           ; $56cd: $3f
    ld d, a                                       ; $56ce: $57
    sbc $02                                       ; $56cf: $de $02
    daa                                           ; $56d1: $27
    cp [hl]                                       ; $56d2: $be
    sbc a                                         ; $56d3: $9f
    ld e, h                                       ; $56d4: $5c
    or [hl]                                       ; $56d5: $b6
    or $b5                                        ; $56d6: $f6 $b5
    ld c, d                                       ; $56d8: $4a
    adc e                                         ; $56d9: $8b
    rlca                                          ; $56da: $07
    inc c                                         ; $56db: $0c
    ld [$1ac7], a                                 ; $56dc: $ea $c7 $1a
    adc e                                         ; $56df: $8b
    sub l                                         ; $56e0: $95
    cp e                                          ; $56e1: $bb
    ld sp, $7d0f                                  ; $56e2: $31 $0f $7d
    inc c                                         ; $56e5: $0c
    call z, $8d60                                 ; $56e6: $cc $60 $8d
    ld [$fc69], sp                                ; $56e9: $08 $69 $fc
    sub [hl]                                      ; $56ec: $96
    dec l                                         ; $56ed: $2d
    ld hl, sp-$0e                                 ; $56ee: $f8 $f2
    cp h                                          ; $56f0: $bc
    dec b                                         ; $56f1: $05
    push af                                       ; $56f2: $f5
    or l                                          ; $56f3: $b5
    ld [hl], d                                    ; $56f4: $72
    scf                                           ; $56f5: $37
    inc e                                         ; $56f6: $1c
    inc bc                                        ; $56f7: $03
    inc sp                                        ; $56f8: $33
    ld b, [hl]                                    ; $56f9: $46
    rst $10                                       ; $56fa: $d7
    ld [c], a                                     ; $56fb: $e2
    db $fd                                        ; $56fc: $fd
    and l                                         ; $56fd: $a5
    xor h                                         ; $56fe: $ac
    jr @-$18                                      ; $56ff: $18 $e6

jr_02f_5701:
    dec sp                                        ; $5701: $3b
    xor [hl]                                      ; $5702: $ae
    ld c, h                                       ; $5703: $4c
    ld b, c                                       ; $5704: $41
    ld l, e                                       ; $5705: $6b
    inc b                                         ; $5706: $04
    ld d, h                                       ; $5707: $54
    xor a                                         ; $5708: $af
    ld l, e                                       ; $5709: $6b
    ld [hl], d                                    ; $570a: $72
    ld c, l                                       ; $570b: $4d
    ld a, a                                       ; $570c: $7f

Call_02f_570d:
    db $e4                                        ; $570d: $e4
    add [hl]                                      ; $570e: $86
    ld a, a                                       ; $570f: $7f
    ld e, h                                       ; $5710: $5c
    ld c, e                                       ; $5711: $4b
    ld e, c                                       ; $5712: $59
    or c                                          ; $5713: $b1
    ld a, [de]                                    ; $5714: $1a
    ld a, c                                       ; $5715: $79
    sbc $02                                       ; $5716: $de $02
    push af                                       ; $5718: $f5
    or l                                          ; $5719: $b5
    xor a                                         ; $571a: $af
    add l                                         ; $571b: $85
    ld h, c                                       ; $571c: $61
    xor h                                         ; $571d: $ac
    ld [$d2ba], a                                 ; $571e: $ea $ba $d2
    ld a, [de]                                    ; $5721: $1a
    adc e                                         ; $5722: $8b
    cp l                                          ; $5723: $bd
    xor $a7                                       ; $5724: $ee $a7
    and b                                         ; $5726: $a0
    push bc                                       ; $5727: $c5
    ei                                            ; $5728: $fb
    ld c, e                                       ; $5729: $4b
    add c                                         ; $572a: $81
    sla b                                         ; $572b: $cb $20
    ld l, a                                       ; $572d: $6f
    ld bc, $be27                                  ; $572e: $01 $27 $be
    sbc a                                         ; $5731: $9f
    ld e, h                                       ; $5732: $5c
    ld h, l                                       ; $5733: $65
    jr jr_02f_5701                                ; $5734: $18 $cb

    sub $1a                                       ; $5736: $d6 $1a
    ld [hl], e                                    ; $5738: $73
    call nc, $a032                                ; $5739: $d4 $32 $a0
    sub l                                         ; $573c: $95
    dec sp                                        ; $573d: $3b
    db $fc                                        ; $573e: $fc
    ld [hl], c                                    ; $573f: $71
    push bc                                       ; $5740: $c5
    ld a, [de]                                    ; $5741: $1a
    ld a, a                                       ; $5742: $7f
    ld l, c                                       ; $5743: $69
    ld b, l                                       ; $5744: $45
    ld [$563c], sp                                ; $5745: $08 $3c $56
    or h                                          ; $5748: $b4
    jr nc, @-$5a                                  ; $5749: $30 $a4

    cp h                                          ; $574b: $bc
    dec b                                         ; $574c: $05
    push af                                       ; $574d: $f5
    or l                                          ; $574e: $b5
    ld [hl], d                                    ; $574f: $72
    scf                                           ; $5750: $37
    inc e                                         ; $5751: $1c
    inc bc                                        ; $5752: $03
    db $d3                                        ; $5753: $d3
    rst $18                                       ; $5754: $df
    push af                                       ; $5755: $f5
    ld a, $23                                     ; $5756: $3e $23
    rrca                                          ; $5758: $0f
    inc hl                                        ; $5759: $23
    ld a, h                                       ; $575a: $7c
    ld a, a                                       ; $575b: $7f
    ld [hl], c                                    ; $575c: $71
    ld [hl], e                                    ; $575d: $73
    inc d                                         ; $575e: $14
    add h                                         ; $575f: $84
    ld h, [hl]                                    ; $5760: $66
    adc h                                         ; $5761: $8c
    xor [hl]                                      ; $5762: $ae
    ld [hl], l                                    ; $5763: $75
    cp b                                          ; $5764: $b8
    adc [hl]                                      ; $5765: $8e
    ld a, c                                       ; $5766: $79
    rst $18                                       ; $5767: $df
    ld e, b                                       ; $5768: $58
    ld d, [hl]                                    ; $5769: $56
    ld c, d                                       ; $576a: $4a
    cp [hl]                                       ; $576b: $be
    and e                                         ; $576c: $a3
    ld c, d                                       ; $576d: $4a
    pop de                                        ; $576e: $d1
    inc d                                         ; $576f: $14
    or h                                          ; $5770: $b4
    ld b, [hl]                                    ; $5771: $46
    ld b, b                                       ; $5772: $40
    push af                                       ; $5773: $f5
    cp d                                          ; $5774: $ba

Call_02f_5775:
    ld h, $d7                                     ; $5775: $26 $d7
    inc c                                         ; $5777: $0c
    halt                                          ; $5778: $76
    dec a                                         ; $5779: $3d
    ld [hl], b                                    ; $577a: $70
    ei                                            ; $577b: $fb
    sub h                                         ; $577c: $94
    or a                                          ; $577d: $b7
    dec e                                         ; $577e: $1d
    call Call_000_0fd3                            ; $577f: $cd $d3 $0f
    ld h, e                                       ; $5782: $63
    reti                                          ; $5783: $d9


    jp c, $c2d7                                   ; $5784: $da $d7 $c2

    jr nc, @+$58                                  ; $5787: $30 $56

    ld [hl], l                                    ; $5789: $75
    ld e, l                                       ; $578a: $5d
    ld l, c                                       ; $578b: $69
    adc l                                         ; $578c: $8d
    push bc                                       ; $578d: $c5
    ld e, [hl]                                    ; $578e: $5e
    rst $30                                       ; $578f: $f7
    set 2, [hl]                                   ; $5790: $cb $d6
    ld [bc], a                                    ; $5792: $02
    jr nc, jr_02f_57eb                            ; $5793: $30 $56

    dec a                                         ; $5795: $3d
    xor h                                         ; $5796: $ac
    ld d, a                                       ; $5797: $57
    ld [hl], l                                    ; $5798: $75
    ld e, l                                       ; $5799: $5d
    add hl, hl                                    ; $579a: $29
    ld l, a                                       ; $579b: $6f
    ld bc, $95c7                                  ; $579c: $01 $c7 $95
    add hl, hl                                    ; $579f: $29
    ld l, b                                       ; $57a0: $68
    adc l                                         ; $57a1: $8d
    add b                                         ; $57a2: $80
    ld [$4d75], a                                 ; $57a3: $ea $75 $4d
    xor [hl]                                      ; $57a6: $ae
    ld [hl], c                                    ; $57a7: $71
    ei                                            ; $57a8: $fb
    or c                                          ; $57a9: $b1

Jump_02f_57aa:
    ld h, d                                       ; $57aa: $62
    dec sp                                        ; $57ab: $3b
    add $ed                                       ; $57ac: $c6 $ed
    ld [hl], e                                    ; $57ae: $73
    db $ed                                        ; $57af: $ed
    ld d, h                                       ; $57b0: $54
    dec hl                                        ; $57b1: $2b
    ld b, l                                       ; $57b2: $45
    db $d3                                        ; $57b3: $d3
    rra                                           ; $57b4: $1f
    cp c                                          ; $57b5: $b9
    pop hl                                        ; $57b6: $e1
    rra                                           ; $57b7: $1f
    rst $10                                       ; $57b8: $d7
    db $fc                                        ; $57b9: $fc
    sub $dc                                       ; $57ba: $d6 $dc
    ld c, b                                       ; $57bc: $48
    cp [hl]                                       ; $57bd: $be
    ld a, b                                       ; $57be: $78
    ld a, a                                       ; $57bf: $7f
    inc e                                         ; $57c0: $1c
    db $e3                                        ; $57c1: $e3
    ld a, d                                       ; $57c2: $7a
    ldh [$31], a                                  ; $57c3: $e0 $31
    xor [hl]                                      ; $57c5: $ae
    and l                                         ; $57c6: $a5
    pop af                                        ; $57c7: $f1
    adc a                                         ; $57c8: $8f
    rst $18                                       ; $57c9: $df
    db $ed                                        ; $57ca: $ed
    rst $38                                       ; $57cb: $ff
    sbc e                                         ; $57cc: $9b
    ld a, [c]                                     ; $57cd: $f2
    ld d, $f5                                     ; $57ce: $16 $f5
    or l                                          ; $57d0: $b5
    and d                                         ; $57d1: $a2
    push bc                                       ; $57d2: $c5
    add e                                         ; $57d3: $83
    and [hl]                                      ; $57d4: $a6
    rst $00                                       ; $57d5: $c7
    rst $30                                       ; $57d6: $f7
    cp a                                          ; $57d7: $bf
    add $ef                                       ; $57d8: $c6 $ef
    ld e, l                                       ; $57da: $5d
    sub e                                         ; $57db: $93
    ld l, e                                       ; $57dc: $6b
    and l                                         ; $57dd: $a5
    adc $5e                                       ; $57de: $ce $5e
    rst $30                                       ; $57e0: $f7
    jp $fd32                                      ; $57e1: $c3 $32 $fd


    reti                                          ; $57e4: $d9


    db $f4                                        ; $57e5: $f4
    add hl, de                                    ; $57e6: $19
    ld d, h                                       ; $57e7: $54
    sbc $02                                       ; $57e8: $de $02
    push af                                       ; $57ea: $f5

jr_02f_57eb:
    or l                                          ; $57eb: $b5
    xor a                                         ; $57ec: $af
    sub l                                         ; $57ed: $95
    cp e                                          ; $57ee: $bb
    pop hl                                        ; $57ef: $e1
    ld a, [de]                                    ; $57f0: $1a

jr_02f_57f1:
    adc e                                         ; $57f1: $8b
    ld sp, $ae30                                  ; $57f2: $31 $30 $ae
    ld b, $30                                     ; $57f5: $06 $30
    add $15                                       ; $57f7: $c6 $15
    bit 7, [hl]                                   ; $57f9: $cb $7e
    ldh [$91], a                                  ; $57fb: $e0 $91
    or a                                          ; $57fd: $b7
    ld b, a                                       ; $57fe: $47
    xor d                                         ; $57ff: $aa
    or d                                          ; $5800: $b2
    rst $08                                       ; $5801: $cf
    or l                                          ; $5802: $b5
    ld a, [hl-]                                   ; $5803: $3a
    add e                                         ; $5804: $83
    cp a                                          ; $5805: $bf
    add $5f                                       ; $5806: $c6 $5f
    ld a, [hl-]                                   ; $5808: $3a
    rst $18                                       ; $5809: $df
    ld [hl], c                                    ; $580a: $71
    dec h                                         ; $580b: $25
    ld d, $5a                                     ; $580c: $16 $5a
    add b                                         ; $580e: $80
    inc sp                                        ; $580f: $33
    jp nz, $f452                                  ; $5810: $c2 $52 $f4

    ld l, c                                       ; $5813: $69
    dec d                                         ; $5814: $15
    db $10                                        ; $5815: $10
    xor b                                         ; $5816: $a8
    inc d                                         ; $5817: $14
    ld d, l                                       ; $5818: $55
    ld a, [$b794]                                 ; $5819: $fa $94 $b7
    rst $00                                       ; $581c: $c7
    ld e, l                                       ; $581d: $5d
    jr c, jr_02f_57f1                             ; $581e: $38 $d1

    ld c, d                                       ; $5820: $4a
    sbc l                                         ; $5821: $9d
    db $e4                                        ; $5822: $e4
    db $f4                                        ; $5823: $f4
    rst $00                                       ; $5824: $c7
    ld [hl], $a0                                  ; $5825: $36 $a0
    adc c                                         ; $5827: $89
    and [hl]                                      ; $5828: $a6
    cp a                                          ; $5829: $bf
    sub h                                         ; $582a: $94
    ld b, l                                       ; $582b: $45
    ld [hl], d                                    ; $582c: $72
    ld [hl], l                                    ; $582d: $75
    add $32                                       ; $582e: $c6 $32
    cp b                                          ; $5830: $b8
    ret c                                         ; $5831: $d8

    sbc d                                         ; $5832: $9a
    ld l, b                                       ; $5833: $68
    ld [hl], l                                    ; $5834: $75
    add $fd                                       ; $5835: $c6 $fd
    ld hl, $df29                                  ; $5837: $21 $29 $df
    pop hl                                        ; $583a: $e1
    or b                                          ; $583b: $b0
    adc e                                         ; $583c: $8b
    db $fd                                        ; $583d: $fd
    or b                                          ; $583e: $b0
    ld [hl], e                                    ; $583f: $73
    sbc $02                                       ; $5840: $de $02
    rst $00                                       ; $5842: $c7
    sub l                                         ; $5843: $95
    dec [hl]                                      ; $5844: $35
    and $d6                                       ; $5845: $e6 $d6
    dec l                                         ; $5847: $2d
    dec l                                         ; $5848: $2d
    inc bc                                        ; $5849: $03
    ld [hl], a                                    ; $584a: $77
    inc l                                         ; $584b: $2c
    ld d, e                                       ; $584c: $53
    ret nc                                        ; $584d: $d0

    ld a, [de]                                    ; $584e: $1a
    ld [hl], e                                    ; $584f: $73
    jp nz, $efe9                                  ; $5850: $c2 $e9 $ef

    jp nc, Jump_02f_57aa                          ; $5853: $d2 $aa $57

    jp hl                                         ; $5856: $e9


    ld d, e                                       ; $5857: $53
    sbc $02                                       ; $5858: $de $02
    rst $00                                       ; $585a: $c7
    sub l                                         ; $585b: $95
    dec [hl]                                      ; $585c: $35
    ld [bc], a                                    ; $585d: $02
    ld e, d                                       ; $585e: $5a
    rst $10                                       ; $585f: $d7
    db $e4                                        ; $5860: $e4
    jp c, Jump_02f_63bf                           ; $5861: $da $bf $63

    push de                                       ; $5864: $d5
    inc a                                         ; $5865: $3c
    daa                                           ; $5866: $27
    db $ed                                        ; $5867: $ed
    ld [hl], l                                    ; $5868: $75
    sbc a                                         ; $5869: $9f
    rst $28                                       ; $586a: $ef
    cp b                                          ; $586b: $b8
    or d                                          ; $586c: $b2
    ld b, [hl]                                    ; $586d: $46
    ld b, b                                       ; $586e: $40
    db $eb                                        ; $586f: $eb
    sbc d                                         ; $5870: $9a
    ld e, h                                       ; $5871: $5c
    ld l, e                                       ; $5872: $6b
    call z, $01e9                                 ; $5873: $cc $e9 $01
    push hl                                       ; $5876: $e5
    res 7, d                                      ; $5877: $cb $ba
    dec hl                                        ; $5879: $2b
    ld l, b                                       ; $587a: $68
    dec b                                         ; $587b: $05
    ld [hl], b                                    ; $587c: $70
    add hl, de                                    ; $587d: $19
    ret nz                                        ; $587e: $c0

    pop af                                        ; $587f: $f1
    db $db                                        ; $5880: $db
    add l                                         ; $5881: $85
    ld e, h                                       ; $5882: $5c
    ld a, c                                       ; $5883: $79
    dec bc                                        ; $5884: $0b
    daa                                           ; $5885: $27
    adc d                                         ; $5886: $8a
    pop bc                                        ; $5887: $c1
    ld d, d                                       ; $5888: $52
    or h                                          ; $5889: $b4
    inc de                                        ; $588a: $13
    sbc $e7                                       ; $588b: $de $e7
    sub b                                         ; $588d: $90
    ld [hl-], a                                   ; $588e: $32
    ld e, d                                       ; $588f: $5a
    ld bc, $ad9c                                  ; $5890: $01 $9c $ad
    ld de, $bd50                                  ; $5893: $11 $50 $bd
    xor [hl]                                      ; $5896: $ae
    ret                                           ; $5897: $c9


    dec [hl]                                      ; $5898: $35
    xor [hl]                                      ; $5899: $ae
    jp z, $bf3e                                   ; $589a: $ca $3e $bf

    adc l                                         ; $589d: $8d
    ld l, e                                       ; $589e: $6b
    rla                                           ; $589f: $17
    ld e, e                                       ; $58a0: $5b
    ld a, [hl]                                    ; $58a1: $7e
    or c                                          ; $58a2: $b1
    push hl                                       ; $58a3: $e5
    adc e                                         ; $58a4: $8b
    rst $30                                       ; $58a5: $f7
    ld [hl], a                                    ; $58a6: $77
    cp c                                          ; $58a7: $b9
    dec [hl]                                      ; $58a8: $35
    ld b, $3c                                     ; $58a9: $06 $3c
    ld l, a                                       ; $58ab: $6f
    ld bc, $b5f5                                  ; $58ac: $01 $f5 $b5
    ld [hl], d                                    ; $58af: $72
    scf                                           ; $58b0: $37
    inc e                                         ; $58b1: $1c
    inc bc                                        ; $58b2: $03
    cp e                                          ; $58b3: $bb
    ret c                                         ; $58b4: $d8

    ld [hl], b                                    ; $58b5: $70
    or c                                          ; $58b6: $b1
    rra                                           ; $58b7: $1f
    ret                                           ; $58b8: $c9


    ld h, a                                       ; $58b9: $67
    adc h                                         ; $58ba: $8c
    xor [hl]                                      ; $58bb: $ae
    ld [hl], l                                    ; $58bc: $75
    cp b                                          ; $58bd: $b8
    adc [hl]                                      ; $58be: $8e
    ld a, c                                       ; $58bf: $79
    rst $18                                       ; $58c0: $df
    ld e, b                                       ; $58c1: $58
    ld d, [hl]                                    ; $58c2: $56

Call_02f_58c3:
    ld c, d                                       ; $58c3: $4a
    cp [hl]                                       ; $58c4: $be
    inc hl                                        ; $58c5: $23
    ld d, l                                       ; $58c6: $55
    reti                                          ; $58c7: $d9


    rst $20                                       ; $58c8: $e7
    xor d                                         ; $58c9: $aa
    ld d, a                                       ; $58ca: $57
    nop                                           ; $58cb: $00
    di                                            ; $58cc: $f3
    ld d, $f5                                     ; $58cd: $16 $f5
    rst $28                                       ; $58cf: $ef
    add [hl]                                      ; $58d0: $86
    db $d3                                        ; $58d1: $d3
    daa                                           ; $58d2: $27
    ld a, l                                       ; $58d3: $7d
    ld c, $e3                                     ; $58d4: $0e $e3
    add sp, $5a                                   ; $58d6: $e8 $5a
    ld b, $ee                                     ; $58d8: $06 $ee
    ld e, b                                       ; $58da: $58
    ld h, [hl]                                    ; $58db: $66
    db $fc                                        ; $58dc: $fc
    cp c                                          ; $58dd: $b9
    ld hl, $6d2d                                  ; $58de: $21 $2d $6d
    add sp, $1a                                   ; $58e1: $e8 $1a
    add a                                         ; $58e3: $87
    dec b                                         ; $58e4: $05
    ld a, b                                       ; $58e5: $78
    ld a, d                                       ; $58e6: $7a
    ld bc, $a2be                                  ; $58e7: $01 $be $a2
    dec d                                         ; $58ea: $15
    cp e                                          ; $58eb: $bb
    ld a, [c]                                     ; $58ec: $f2
    sbc l                                         ; $58ed: $9d
    inc b                                         ; $58ee: $04
    or e                                          ; $58ef: $b3
    ld a, [c]                                     ; $58f0: $f2
    inc a                                         ; $58f1: $3c
    halt                                          ; $58f2: $76
    db $dd                                        ; $58f3: $dd
    dec d                                         ; $58f4: $15
    or h                                          ; $58f5: $b4
    and [hl]                                      ; $58f6: $a6
    nop                                           ; $58f7: $00
    ld [hl], l                                    ; $58f8: $75
    ld b, a                                       ; $58f9: $47
    dec sp                                        ; $58fa: $3b
    dec b                                         ; $58fb: $05
    jp nz, $d79c                                  ; $58fc: $c2 $9c $d7

    ld e, $da                                     ; $58ff: $1e $da
    ld [bc], a                                    ; $5901: $02
    and a                                         ; $5902: $a7
    or $e0                                        ; $5903: $f6 $e0
    xor d                                         ; $5905: $aa
    db $f4                                        ; $5906: $f4
    ld l, c                                       ; $5907: $69
    adc l                                         ; $5908: $8d
    push bc                                       ; $5909: $c5
    ldh a, [$c2]                                  ; $590a: $f0 $c2
    cp h                                          ; $590c: $bc
    dec b                                         ; $590d: $05
    dec e                                         ; $590e: $1d
    xor [hl]                                      ; $590f: $ae
    ld h, e                                       ; $5910: $63
    sbc $37                                       ; $5911: $de $37
    sub [hl]                                      ; $5913: $96
    sub l                                         ; $5914: $95
    ld [hl-], a                                   ; $5915: $32
    dec b                                         ; $5916: $05
    adc l                                         ; $5917: $8d
    and e                                         ; $5918: $a3
    db $eb                                        ; $5919: $eb
    ld [hl+], a                                   ; $591a: $22
    rst $00                                       ; $591b: $c7
    ld c, e                                       ; $591c: $4b
    inc sp                                        ; $591d: $33
    sbc [hl]                                      ; $591e: $9e
    db $fd                                        ; $591f: $fd
    ldh a, [$93]                                  ; $5920: $f0 $93
    ld a, [c]                                     ; $5922: $f2
    dec e                                         ; $5923: $1d
    ld d, l                                       ; $5924: $55
    adc d                                         ; $5925: $8a
    ld d, [hl]                                    ; $5926: $56
    or h                                          ; $5927: $b4
    jr nc, @-$5a                                  ; $5928: $30 $a4

    ld b, l                                       ; $592a: $45
    rrca                                          ; $592b: $0f
    xor [hl]                                      ; $592c: $ae
    ld c, d                                       ; $592d: $4a
    sbc a                                         ; $592e: $9f
    ld a, [c]                                     ; $592f: $f2
    ld d, $87                                     ; $5930: $16 $87
    ld b, e                                       ; $5932: $43
    or $03                                        ; $5933: $f6 $03
    rst $20                                       ; $5935: $e7
    ld [hl], a                                    ; $5936: $77
    ld [hl], $e0                                  ; $5937: $36 $e0
    or d                                          ; $5939: $b2
    or l                                          ; $593a: $b5
    xor a                                         ; $593b: $af
    sub l                                         ; $593c: $95
    cp e                                          ; $593d: $bb
    pop hl                                        ; $593e: $e1
    ld a, [de]                                    ; $593f: $1a
    adc e                                         ; $5940: $8b
    ld sp, $b790                                  ; $5941: $31 $90 $b7
    push af                                       ; $5944: $f5
    or l                                          ; $5945: $b5
    xor a                                         ; $5946: $af
    dec d                                         ; $5947: $15
    adc l                                         ; $5948: $8d
    ld a, c                                       ; $5949: $79
    jr jr_02f_59af                                ; $594a: $18 $63

    call c, $d2b0                                 ; $594c: $dc $b0 $d2
    and a                                         ; $594f: $a7
    dec [hl]                                      ; $5950: $35
    ld d, $8b                                     ; $5951: $16 $8b
    rlca                                          ; $5953: $07
    adc h                                         ; $5954: $8c
    ld a, $e5                                     ; $5955: $3e $e5
    dec l                                         ; $5957: $2d
    daa                                           ; $5958: $27
    ld b, c                                       ; $5959: $41

Call_02f_595a:
    cp d                                          ; $595a: $ba

Jump_02f_595b:
    ld [hl], $b1                                  ; $595b: $36 $b1
    dec b                                         ; $595d: $05
    dec e                                         ; $595e: $1d
    dec l                                         ; $595f: $2d
    ld b, [hl]                                    ; $5960: $46

jr_02f_5961:
    ld l, [hl]                                    ; $5961: $6e
    sub a                                         ; $5962: $97
    add $b5                                       ; $5963: $c6 $b5
    ld d, e                                       ; $5965: $53
    ld e, $0b                                     ; $5966: $1e $0b
    sub h                                         ; $5968: $94
    or a                                          ; $5969: $b7
    push af                                       ; $596a: $f5
    or l                                          ; $596b: $b5
    xor a                                         ; $596c: $af
    dec [hl]                                      ; $596d: $35
    add d                                         ; $596e: $82
    adc $6b                                       ; $596f: $ce $6b
    ld a, [bc]                                    ; $5971: $0a
    call nz, Call_000_0f52                        ; $5972: $c4 $52 $0f
    ld e, b                                       ; $5975: $58
    ld a, [c]                                     ; $5976: $f2
    jp c, $16c4                                   ; $5977: $da $c4 $16

    dec e                                         ; $597a: $1d
    ld e, $ee                                     ; $597b: $1e $ee
    cp a                                          ; $597d: $bf
    cp a                                          ; $597e: $bf
    and [hl]                                      ; $597f: $a6
    ld b, b                                       ; $5980: $40
    call nc, $2e26                                ; $5981: $d4 $26 $2e
    ld c, e                                       ; $5984: $4b
    or c                                          ; $5985: $b1
    and [hl]                                      ; $5986: $a6
    ret c                                         ; $5987: $d8

    daa                                           ; $5988: $27
    push bc                                       ; $5989: $c5
    ld b, d                                       ; $598a: $42
    adc e                                         ; $598b: $8b
    rst $30                                       ; $598c: $f7
    ld l, c                                       ; $598d: $69
    ld a, [$a0fe]                                 ; $598e: $fa $fe $a0
    call c, $3314                                 ; $5991: $dc $14 $33
    and b                                         ; $5994: $a0
    rlca                                          ; $5995: $07
    ld a, $ae                                     ; $5996: $3e $ae
    db $fd                                        ; $5998: $fd
    rlca                                          ; $5999: $07
    sub c                                         ; $599a: $91
    cpl                                           ; $599b: $2f
    db $eb                                        ; $599c: $eb
    xor [hl]                                      ; $599d: $ae
    and b                                         ; $599e: $a0
    ld b, l                                       ; $599f: $45
    rrca                                          ; $59a0: $0f
    xor [hl]                                      ; $59a1: $ae
    ld c, d                                       ; $59a2: $4a
    sbc a                                         ; $59a3: $9f
    ld a, [c]                                     ; $59a4: $f2
    inc a                                         ; $59a5: $3c
    ld e, a                                       ; $59a6: $5f

Jump_02f_59a7:
    pop de                                        ; $59a7: $d1
    adc [hl]                                      ; $59a8: $8e
    add $22                                       ; $59a9: $c6 $22
    ld a, [de]                                    ; $59ab: $1a
    add a                                         ; $59ac: $87
    dec e                                         ; $59ad: $1d
    adc c                                         ; $59ae: $89

jr_02f_59af:
    sub [hl]                                      ; $59af: $96
    ld a, [hl+]                                   ; $59b0: $2a
    xor d                                         ; $59b1: $aa
    ld c, l                                       ; $59b2: $4d
    ld e, h                                       ; $59b3: $5c
    db $fd                                        ; $59b4: $fd
    cp e                                          ; $59b5: $bb
    pop hl                                        ; $59b6: $e1
    ld a, [bc]                                    ; $59b7: $0a
    adc h                                         ; $59b8: $8c
    dec hl                                        ; $59b9: $2b
    ld b, [hl]                                    ; $59ba: $46
    ld c, $57                                     ; $59bb: $0e $57
    xor h                                         ; $59bd: $ac
    call nc, $c7a9                                ; $59be: $d4 $a9 $c7
    dec d                                         ; $59c1: $15
    ld bc, $9b51                                  ; $59c2: $01 $51 $9b
    cp b                                          ; $59c5: $b8
    db $e3                                        ; $59c6: $e3
    jp z, Jump_000_06d2                           ; $59c7: $ca $d2 $06

    or h                                          ; $59ca: $b4
    ret nc                                        ; $59cb: $d0

    ld b, d                                       ; $59cc: $42
    adc $a0                                       ; $59cd: $ce $a0
    adc a                                         ; $59cf: $8f
    ld l, e                                       ; $59d0: $6b
    push bc                                       ; $59d1: $c5
    ld d, [hl]                                    ; $59d2: $56
    and b                                         ; $59d3: $a0
    jp nz, $aeba                                  ; $59d4: $c2 $ba $ae

    dec a                                         ; $59d7: $3d
    jr jr_02f_5961                                ; $59d8: $18 $87

    and l                                         ; $59da: $a5
    dec b                                         ; $59db: $05
    ret                                           ; $59dc: $c9


    dec e                                         ; $59dd: $1d
    ld l, e                                       ; $59de: $6b
    xor $35                                       ; $59df: $ee $35

jr_02f_59e1:
    or l                                          ; $59e1: $b5
    adc c                                         ; $59e2: $89
    dec l                                         ; $59e3: $2d
    dec e                                         ; $59e4: $1d
    db $e4                                        ; $59e5: $e4
    rla                                           ; $59e6: $17
    xor $58                                       ; $59e7: $ee $58
    ld [hl], e                                    ; $59e9: $73
    xor a                                         ; $59ea: $af
    ld c, c                                       ; $59eb: $49
    ld l, $5b                                     ; $59ec: $2e $5b
    cp e                                          ; $59ee: $bb
    ld e, [hl]                                    ; $59ef: $5e
    ld d, l                                       ; $59f0: $55
    jp hl                                         ; $59f1: $e9


    rst $30                                       ; $59f2: $f7
    ld l, b                                       ; $59f3: $68
    jr @+$65                                      ; $59f4: $18 $63

    call c, $d2b0                                 ; $59f6: $dc $b0 $d2
    and a                                         ; $59f9: $a7
    push de                                       ; $59fa: $d5
    ld e, c                                       ; $59fb: $59
    ld h, l                                       ; $59fc: $65
    ccf                                           ; $59fd: $3f
    inc bc                                        ; $59fe: $03
    ld a, [c]                                     ; $59ff: $f2
    pop af                                        ; $5a00: $f1
    cp e                                          ; $5a01: $bb
    and c                                         ; $5a02: $a1
    rst $20                                       ; $5a03: $e7
    dec l                                         ; $5a04: $2d
    ld b, a                                       ; $5a05: $47
    cp h                                          ; $5a06: $bc
    sbc a                                         ; $5a07: $9f
    call c, $bbfb                                 ; $5a08: $dc $fb $bb
    sbc $27                                       ; $5a0b: $de $27
    db $fc                                        ; $5a0d: $fc
    and b                                         ; $5a0e: $a0
    ld a, h                                       ; $5a0f: $7c
    and a                                         ; $5a10: $a7
    inc a                                         ; $5a11: $3c
    ld d, $68                                     ; $5a12: $16 $68
    ld a, [bc]                                    ; $5a14: $0a
    ld a, [de]                                    ; $5a15: $1a
    cp a                                          ; $5a16: $bf
    ld h, l                                       ; $5a17: $65
    rst $10                                       ; $5a18: $d7
    ld e, c                                       ; $5a19: $59
    ld a, c                                       ; $5a1a: $79
    ld hl, sp-$39                                 ; $5a1b: $f8 $c7
    push bc                                       ; $5a1d: $c5
    ret c                                         ; $5a1e: $d8

    and a                                         ; $5a1f: $a7
    cp h                                          ; $5a20: $bc
    dec b                                         ; $5a21: $05
    daa                                           ; $5a22: $27
    db $fd                                        ; $5a23: $fd

jr_02f_5a24:
    add hl, hl                                    ; $5a24: $29
    ld l, b                                       ; $5a25: $68
    db $f4                                        ; $5a26: $f4
    jr nz, jr_02f_5a24                            ; $5a27: $20 $fb

    add c                                         ; $5a29: $81
    rst $00                                       ; $5a2a: $c7
    xor [hl]                                      ; $5a2b: $ae
    add a                                         ; $5a2c: $87
    rst $38                                       ; $5a2d: $ff
    cp d                                          ; $5a2e: $ba
    ld b, l                                       ; $5a2f: $45
    ld [hl], d                                    ; $5a30: $72
    rst $00                                       ; $5a31: $c7
    sbc d                                         ; $5a32: $9a
    ld a, e                                       ; $5a33: $7b
    ld c, l                                       ; $5a34: $4d
    ld l, l                                       ; $5a35: $6d
    ld [c], a                                     ; $5a36: $e2
    halt                                          ; $5a37: $76
    ld d, h                                       ; $5a38: $54
    add h                                         ; $5a39: $84
    and c                                         ; $5a3a: $a1
    and [hl]                                      ; $5a3b: $a6
    ld a, a                                       ; $5a3c: $7f
    dec a                                         ; $5a3d: $3d
    ld d, a                                       ; $5a3e: $57
    ld l, l                                       ; $5a3f: $6d
    ld h, d                                       ; $5a40: $62
    dec bc                                        ; $5a41: $0b
    ld b, a                                       ; $5a42: $47
    ld a, [hl+]                                   ; $5a43: $2a
    or $30                                        ; $5a44: $f6 $30
    ld h, h                                       ; $5a46: $64
    ret nc                                        ; $5a47: $d0

    cp c                                          ; $5a48: $b9
    ld [hl], $71                                  ; $5a49: $36 $71
    ld b, a                                       ; $5a4b: $47
    ld a, [hl+]                                   ; $5a4c: $2a
    ld d, [hl]                                    ; $5a4d: $56
    ld h, c                                       ; $5a4e: $61
    add hl, hl                                    ; $5a4f: $29
    jr z, jr_02f_59e1                             ; $5a50: $28 $8f

    pop af                                        ; $5a52: $f1
    ei                                            ; $5a53: $fb
    jp Jump_02f_4190                              ; $5a54: $c3 $90 $41


    rst $20                                       ; $5a57: $e7
    jp c, Jump_000_1dc4                           ; $5a58: $da $c4 $1d

    ld d, a                                       ; $5a5b: $57
    ld h, d                                       ; $5a5c: $62
    call z, $b4fb                                 ; $5a5d: $cc $fb $b4
    add sp, -$3f                                  ; $5a60: $e8 $c1
    ld d, l                                       ; $5a62: $55
    jp hl                                         ; $5a63: $e9


    db $d3                                        ; $5a64: $d3
    cp $83                                        ; $5a65: $fe $83
    sbc b                                         ; $5a67: $98
    ld de, $0659                                  ; $5a68: $11 $59 $06
    db $e4                                        ; $5a6b: $e4
    dec bc                                        ; $5a6c: $0b
    call c, $23fb                                 ; $5a6d: $dc $fb $23
    scf                                           ; $5a70: $37
    ld b, [hl]                                    ; $5a71: $46
    ld e, $5a                                     ; $5a72: $1e $5a
    or c                                          ; $5a74: $b1
    dec [hl]                                      ; $5a75: $35
    ld e, b                                       ; $5a76: $58
    rst $30                                       ; $5a77: $f7
    ld d, d                                       ; $5a78: $52
    sbc $02                                       ; $5a79: $de $02
    ld e, c                                       ; $5a7b: $59
    jp c, $e2d7                                   ; $5a7c: $da $d7 $e2

    ld a, l                                       ; $5a7f: $7d
    ld e, d                                       ; $5a80: $5a
    ld h, e                                       ; $5a81: $63
    ld sp, $d8ae                                  ; $5a82: $31 $ae $d8
    jp Jump_02f_4190                              ; $5a85: $c3 $90 $41


    rst $20                                       ; $5a88: $e7
    db $e4                                        ; $5a89: $e4
    ld l, $2d                                     ; $5a8a: $2e $2d
    sbc $a7                                       ; $5a8c: $de $a7
    ld [hl], c                                    ; $5a8e: $71
    push bc                                       ; $5a8f: $c5
    xor [hl]                                      ; $5a90: $ae
    ld [hl], d                                    ; $5a91: $72
    adc e                                         ; $5a92: $8b
    ld sp, $d8af                                  ; $5a93: $31 $af $d8
    daa                                           ; $5a96: $27
    ld b, l                                       ; $5a97: $45
    ld l, l                                       ; $5a98: $6d
    ld h, d                                       ; $5a99: $62
    dec bc                                        ; $5a9a: $0b
    ld e, c                                       ; $5a9b: $59
    ld [hl], a                                    ; $5a9c: $77
    dec b                                         ; $5a9d: $05
    adc l                                         ; $5a9e: $8d
    sub c                                         ; $5a9f: $91
    ei                                            ; $5aa0: $fb
    inc bc                                        ; $5aa1: $03
    inc l                                         ; $5aa2: $2c
    push hl                                       ; $5aa3: $e5
    sub [hl]                                      ; $5aa4: $96
    rst $28                                       ; $5aa5: $ef

jr_02f_5aa6:
    or h                                          ; $5aa6: $b4
    xor a                                         ; $5aa7: $af
    ld [hl], c                                    ; $5aa8: $71
    db $ed                                        ; $5aa9: $ed
    ld d, d                                       ; $5aaa: $52
    db $ec                                        ; $5aab: $ec
    ld a, [hl+]                                   ; $5aac: $2a
    or a                                          ; $5aad: $b7
    jr @+$19                                      ; $5aae: $18 $17

    db $e3                                        ; $5ab0: $e3
    add [hl]                                      ; $5ab1: $86
    or h                                          ; $5ab2: $b4
    jp z, Jump_02f_62fc                           ; $5ab3: $ca $fc $62

    set 6, e                                      ; $5ab6: $cb $f3
    ld d, $27                                     ; $5ab8: $16 $27
    ld bc, $5726                                  ; $5aba: $01 $26 $57
    add hl, de                                    ; $5abd: $19
    add $8a                                       ; $5abe: $c6 $8a
    ld h, l                                       ; $5ac0: $65
    ld b, b                                       ; $5ac1: $40
    and l                                         ; $5ac2: $a5
    xor b                                         ; $5ac3: $a8
    or $d0                                        ; $5ac4: $f6 $d0
    ld d, $59                                     ; $5ac6: $16 $59
    ld [hl+], a                                   ; $5ac8: $22
    jp nc, Jump_02f_72ae                          ; $5ac9: $d2 $ae $72

    dec de                                        ; $5acc: $1b
    dec a                                         ; $5acd: $3d
    and b                                         ; $5ace: $a0
    jp hl                                         ; $5acf: $e9


    adc a                                         ; $5ad0: $8f
    ld l, l                                       ; $5ad1: $6d
    ld b, b                                       ; $5ad2: $40
    ld d, e                                       ; $5ad3: $53
    ret nc                                        ; $5ad4: $d0

    ret z                                         ; $5ad5: $c8

    db $eb                                        ; $5ad6: $eb
    add $38                                       ; $5ad7: $c6 $38
    and [hl]                                      ; $5ad9: $a6
    db $d3                                        ; $5ada: $d3
    scf                                           ; $5adb: $37
    rst $10                                       ; $5adc: $d7
    daa                                           ; $5add: $27
    adc l                                         ; $5ade: $8d
    dec hl                                        ; $5adf: $2b
    ld h, [hl]                                    ; $5ae0: $66
    ld b, b                                       ; $5ae1: $40
    xor [hl]                                      ; $5ae2: $ae
    ret z                                         ; $5ae3: $c8

    ld e, e                                       ; $5ae4: $5b
    sbc l                                         ; $5ae5: $9d
    ld h, b                                       ; $5ae6: $60
    adc h                                         ; $5ae7: $8c
    and b                                         ; $5ae8: $a0
    di                                            ; $5ae9: $f3
    jr c, jr_02f_5aa6                             ; $5aea: $38 $ba

    halt                                          ; $5aec: $76
    xor c                                         ; $5aed: $a9
    inc d                                         ; $5aee: $14
    dec l                                         ; $5aef: $2d
    inc bc                                        ; $5af0: $03
    jr c, @+$07                                   ; $5af1: $38 $05

    adc l                                         ; $5af3: $8d
    ccf                                           ; $5af4: $3f
    cp a                                          ; $5af5: $bf
    ld l, c                                       ; $5af6: $69
    ld a, [$c0f4]                                 ; $5af7: $fa $f4 $c0

Jump_02f_5afa:
    ld l, a                                       ; $5afa: $6f
    ld a, [de]                                    ; $5afb: $1a
    rst $10                                       ; $5afc: $d7
    xor [hl]                                      ; $5afd: $ae
    ld [hl], d                                    ; $5afe: $72
    adc e                                         ; $5aff: $8b
    ld sp, $d8af                                  ; $5b00: $31 $af $d8
    daa                                           ; $5b03: $27
    push bc                                       ; $5b04: $c5
    db $f4                                        ; $5b05: $f4
    ld h, a                                       ; $5b06: $67
    adc $d2                                       ; $5b07: $ce $d2
    and a                                         ; $5b09: $a7
    jp c, Jump_02f_5b43                           ; $5b0a: $da $43 $5b

    daa                                           ; $5b0d: $27

jr_02f_5b0e:
    ld bc, $7726                                  ; $5b0e: $01 $26 $77
    xor c                                         ; $5b11: $a9
    inc d                                         ; $5b12: $14
    push de                                       ; $5b13: $d5
    dec hl                                        ; $5b14: $2b
    ld [hl], l                                    ; $5b15: $75
    ld a, [c]                                     ; $5b16: $f2
    dec e                                         ; $5b17: $1d
    ld d, l                                       ; $5b18: $55
    adc d                                         ; $5b19: $8a
    or $80                                        ; $5b1a: $f6 $80
    ld [hl], c                                    ; $5b1c: $71
    xor l                                         ; $5b1d: $ad
    ld de, $bd50                                  ; $5b1e: $11 $50 $bd
    xor [hl]                                      ; $5b21: $ae
    ret                                           ; $5b22: $c9


    or l                                          ; $5b23: $b5
    ld h, d                                       ; $5b24: $62
    ld l, e                                       ; $5b25: $6b
    sbc [hl]                                      ; $5b26: $9e
    sub e                                         ; $5b27: $93
    ld a, [c]                                     ; $5b28: $f2
    ld d, $a7                                     ; $5b29: $16 $a7
    ccf                                           ; $5b2b: $3f
    adc b                                         ; $5b2c: $88
    ld [hl], c                                    ; $5b2d: $71
    ld sp, $3a8e                                  ; $5b2e: $31 $8e $3a
    ld a, a                                       ; $5b31: $7f
    push de                                       ; $5b32: $d5
    ei                                            ; $5b33: $fb
    inc h                                         ; $5b34: $24
    sbc a                                         ; $5b35: $9f
    ld l, b                                       ; $5b36: $68
    push hl                                       ; $5b37: $e5
    ld l, [hl]                                    ; $5b38: $6e
    ld b, h                                       ; $5b39: $44
    ld l, [hl]                                    ; $5b3a: $6e
    adc l                                         ; $5b3b: $8d
    inc a                                         ; $5b3c: $3c
    cp c                                          ; $5b3d: $b9
    ret nz                                        ; $5b3e: $c0

    rst $38                                       ; $5b3f: $ff
    cp $de                                        ; $5b40: $fe $de
    rst $18                                       ; $5b42: $df

Jump_02f_5b43:
    rst $10                                       ; $5b43: $d7
    ld a, [de]                                    ; $5b44: $1a
    adc e                                         ; $5b45: $8b
    sub b                                         ; $5b46: $90
    db $db                                        ; $5b47: $db
    or d                                          ; $5b48: $b2
    xor l                                         ; $5b49: $ad
    ld [hl-], a                                   ; $5b4a: $32
    adc h                                         ; $5b4b: $8c
    dec [hl]                                      ; $5b4c: $35
    and $bb                                       ; $5b4d: $e6 $bb
    ld b, h                                       ; $5b4f: $44
    and h                                         ; $5b50: $a4
    dec [hl]                                      ; $5b51: $35
    rst $08                                       ; $5b52: $cf
    ld c, c                                       ; $5b53: $49
    ld a, c                                       ; $5b54: $79
    dec bc                                        ; $5b55: $0b
    dec e                                         ; $5b56: $1d
    inc c                                         ; $5b57: $0c
    ld h, e                                       ; $5b58: $63
    reti                                          ; $5b59: $d9


    jp c, Jump_000_1bbf                           ; $5b5a: $da $bf $1b

    xor [hl]                                      ; $5b5d: $ae
    or c                                          ; $5b5e: $b1
    ld e, b                                       ; $5b5f: $58
    db $e3                                        ; $5b60: $e3
    jr jr_02f_5b0e                                ; $5b61: $18 $ab

    sbc $5f                                       ; $5b63: $de $5f
    jp z, Jump_02f_618a                           ; $5b65: $ca $8a $61

    sbc $02                                       ; $5b68: $de $02
    dec e                                         ; $5b6a: $1d
    ld e, l                                       ; $5b6b: $5d
    sbc a                                         ; $5b6c: $9f
    rst $00                                       ; $5b6d: $c7
    adc d                                         ; $5b6e: $8a
    ld d, [hl]                                    ; $5b6f: $56
    and c                                         ; $5b70: $a1
    ld a, [hl]                                    ; $5b71: $7e
    cp [hl]                                       ; $5b72: $be
    db $e3                                        ; $5b73: $e3
    jp z, $b414                                   ; $5b74: $ca $14 $b4

    and $81                                       ; $5b77: $e6 $81
    adc a                                         ; $5b79: $8f
    rst $18                                       ; $5b7a: $df
    ld d, d                                       ; $5b7b: $52
    ld b, b                                       ; $5b7c: $40
    or $29                                        ; $5b7d: $f6 $29
    sub d                                         ; $5b7f: $92
    xor e                                         ; $5b80: $ab
    inc c                                         ; $5b81: $0c
    ld h, e                                       ; $5b82: $63
    rst $28                                       ; $5b83: $ef
    rst $28                                       ; $5b84: $ef
    rst $18                                       ; $5b85: $df
    ld l, l                                       ; $5b86: $6d
    adc l                                         ; $5b87: $8d
    push bc                                       ; $5b88: $c5
    adc d                                         ; $5b89: $8a
    halt                                          ; $5b8a: $76
    or c                                          ; $5b8b: $b1
    rra                                           ; $5b8c: $1f
    halt                                          ; $5b8d: $76
    adc $5b                                       ; $5b8e: $ce $5b
    ld e, l                                       ; $5b90: $5d
    ret c                                         ; $5b91: $d8

    ld l, d                                       ; $5b92: $6a
    and [hl]                                      ; $5b93: $a6
    and b                                         ; $5b94: $a0
    db $e4                                        ; $5b95: $e4
    or d                                          ; $5b96: $b2
    rst $28                                       ; $5b97: $ef
    add [hl]                                      ; $5b98: $86
    dec hl                                        ; $5b99: $2b
    or [hl]                                       ; $5b9a: $b6
    xor e                                         ; $5b9b: $ab
    call c, $edf2                                 ; $5b9c: $dc $f2 $ed
    and h                                         ; $5b9f: $a4

jr_02f_5ba0:
    cp a                                          ; $5ba0: $bf
    sbc d                                         ; $5ba1: $9a
    ld sp, $b796                                  ; $5ba2: $31 $96 $b7
    ld b, a                                       ; $5ba5: $47
    cp h                                          ; $5ba6: $bc
    cp a                                          ; $5ba7: $bf
    or b                                          ; $5ba8: $b0
    rst $08                                       ; $5ba9: $cf
    ld c, d                                       ; $5baa: $4a
    ld l, $fb                                     ; $5bab: $2e $fb
    ld l, [hl]                                    ; $5bad: $6e
    jr c, jr_02f_5be7                             ; $5bae: $38 $37

    cp d                                          ; $5bb0: $ba
    xor l                                         ; $5bb1: $ad
    ret c                                         ; $5bb2: $d8

    xor [hl]                                      ; $5bb3: $ae
    ld [hl], d                                    ; $5bb4: $72
    xor e                                         ; $5bb5: $ab
    ld c, l                                       ; $5bb6: $4d
    call c, $6bea                                 ; $5bb7: $dc $ea $6b
    adc h                                         ; $5bba: $8c

jr_02f_5bbb:
    ld h, c                                       ; $5bbb: $61
    ld c, h                                       ; $5bbc: $4c
    rst $38                                       ; $5bbd: $ff
    ld a, d                                       ; $5bbe: $7a
    xor [hl]                                      ; $5bbf: $ae
    add hl, hl                                    ; $5bc0: $29
    jp nz, $e46a                                  ; $5bc1: $c2 $6a $e4

    or l                                          ; $5bc4: $b5
    adc c                                         ; $5bc5: $89
    dec l                                         ; $5bc6: $2d
    ld b, a                                       ; $5bc7: $47
    ld a, [hl+]                                   ; $5bc8: $2a
    sub [hl]                                      ; $5bc9: $96
    ld b, [hl]                                    ; $5bca: $46
    ld d, $38                                     ; $5bcb: $16 $38
    ld a, [hl]                                    ; $5bcd: $7e
    push bc                                       ; $5bce: $c5
    ld hl, sp-$03                                 ; $5bcf: $f8 $fd
    halt                                          ; $5bd1: $76
    or c                                          ; $5bd2: $b1
    ld [hl], l                                    ; $5bd3: $75
    ld b, l                                       ; $5bd4: $45
    ld l, l                                       ; $5bd5: $6d
    ld [c], a                                     ; $5bd6: $e2
    ld a, [hl-]                                   ; $5bd7: $3a
    jr jr_02f_5ba0                                ; $5bd8: $18 $c6

    ld [hl-], a                                   ; $5bda: $32
    ld [hl], b                                    ; $5bdb: $70
    ld d, a                                       ; $5bdc: $57
    ld d, b                                       ; $5bdd: $50
    cp l                                          ; $5bde: $bd
    ld c, e                                       ; $5bdf: $4b
    set 0, b                                      ; $5be0: $cb $c0
    ld e, l                                       ; $5be2: $5d
    and l                                         ; $5be3: $a5
    jr z, @+$18                                   ; $5be4: $28 $16

    rst $28                                       ; $5be6: $ef

jr_02f_5be7:
    db $d3                                        ; $5be7: $d3
    ld e, b                                       ; $5be8: $58
    ld l, [hl]                                    ; $5be9: $6e
    sbc a                                         ; $5bea: $9f
    dec hl                                        ; $5beb: $2b
    ld l, d                                       ; $5bec: $6a
    inc de                                        ; $5bed: $13
    ld e, e                                       ; $5bee: $5b
    ld e, c                                       ; $5bef: $59
    adc d                                         ; $5bf0: $8a
    dec [hl]                                      ; $5bf1: $35
    ld hl, sp+$7e                                 ; $5bf2: $f8 $7e
    inc l                                         ; $5bf4: $2c
    sbc $a7                                       ; $5bf5: $de $a7
    ld e, c                                       ; $5bf7: $59
    add h                                         ; $5bf8: $84
    adc $1f                                       ; $5bf9: $ce $1f
    set 5, l                                      ; $5bfb: $cb $ed
    di                                            ; $5bfd: $f3
    ld e, b                                       ; $5bfe: $58
    di                                            ; $5bff: $f3
    ret nz                                        ; $5c00: $c0

    ld b, a                                       ; $5c01: $47
    ld e, d                                       ; $5c02: $5a
    jp c, $b5d0                                   ; $5c03: $da $d0 $b5

    jp z, Jump_000_0cca                           ; $5c06: $ca $ca $0c

    ld d, [hl]                                    ; $5c09: $56
    ld d, b                                       ; $5c0a: $50
    jr nc, jr_02f_5bbb                            ; $5c0b: $30 $ae

    sub c                                         ; $5c0d: $91
    add $d1                                       ; $5c0e: $c6 $d1
    or l                                          ; $5c10: $b5
    inc c                                         ; $5c11: $0c
    inc a                                         ; $5c12: $3c
    ld e, h                                       ; $5c13: $5c
    jp c, $95d0                                   ; $5c14: $da $d0 $95

    or a                                          ; $5c17: $b7
    ld b, a                                       ; $5c18: $47
    db $fd                                        ; $5c19: $fd
    dec [hl]                                      ; $5c1a: $35
    dec b                                         ; $5c1b: $05
    ld [hl+], a                                   ; $5c1c: $22
    add hl, sp                                    ; $5c1d: $39
    sub l                                         ; $5c1e: $95
    and d                                         ; $5c1f: $a2
    ld e, b                                       ; $5c20: $58
    cp h                                          ; $5c21: $bc
    ld c, a                                       ; $5c22: $4f
    and e                                         ; $5c23: $a3
    rlca                                          ; $5c24: $07
    and h                                         ; $5c25: $a4
    sbc b                                         ; $5c26: $98
    ld a, [hl]                                    ; $5c27: $7e
    dec a                                         ; $5c28: $3d
    ld l, $f6                                     ; $5c29: $2e $f6
    di                                            ; $5c2b: $f3
    jr @-$27                                      ; $5c2c: $18 $d7

    jp z, Jump_02f_76fd                           ; $5c2e: $ca $fd $76

    or c                                          ; $5c31: $b1
    ld sp, $2803                                  ; $5c32: $31 $03 $28
    rst $08                                       ; $5c35: $cf
    ld [hl], a                                    ; $5c36: $77
    jp nc, Jump_02f_471f                          ; $5c37: $d2 $1f $47

    scf                                           ; $5c3a: $37
    and h                                         ; $5c3b: $a4
    pop bc                                        ; $5c3c: $c1
    ld e, a                                       ; $5c3d: $5f
    add e                                         ; $5c3e: $83
    ld [hl], l                                    ; $5c3f: $75
    ld e, c                                       ; $5c40: $59
    ld e, d                                       ; $5c41: $5a
    ld d, e                                       ; $5c42: $53
    add b                                         ; $5c43: $80
    cp d                                          ; $5c44: $ba
    and e                                         ; $5c45: $a3
    ld h, l                                       ; $5c46: $65
    ldh [$0e], a                                  ; $5c47: $e0 $0e
    ld a, a                                       ; $5c49: $7f
    reti                                          ; $5c4a: $d9


    add d                                         ; $5c4b: $82
    cp h                                          ; $5c4c: $bc
    dec b                                         ; $5c4d: $05
    and a                                         ; $5c4e: $a7
    cp h                                          ; $5c4f: $bc
    sbc a                                         ; $5c50: $9f
    call c, $bf7f                                 ; $5c51: $dc $7f $bf
    ld [hl], $b1                                  ; $5c54: $36 $b1
    dec b                                         ; $5c56: $05
    ld b, a                                       ; $5c57: $47
    dec de                                        ; $5c58: $1b
    add $8c                                       ; $5c59: $c6 $8c
    ld c, b                                       ; $5c5b: $48
    sbc a                                         ; $5c5c: $9f
    ldh a, [$fd]                                  ; $5c5d: $f0 $fd
    inc a                                         ; $5c5f: $3c
    rst $08                                       ; $5c60: $cf
    ld e, e                                       ; $5c61: $5b
    ld b, a                                       ; $5c62: $47
    pop de                                        ; $5c63: $d1
    ld [bc], a                                    ; $5c64: $02
    sbc h                                         ; $5c65: $9c
    ld de, $a296                                  ; $5c66: $11 $96 $a2
    dec d                                         ; $5c69: $15
    sbc e                                         ; $5c6a: $9b
    dec bc                                        ; $5c6b: $0b
    cp a                                          ; $5c6c: $bf
    sub d                                         ; $5c6d: $92
    cp e                                          ; $5c6e: $bb
    xor $0a                                       ; $5c6f: $ee $0a
    ld e, d                                       ; $5c71: $5a
    or c                                          ; $5c72: $b1
    dec [hl]                                      ; $5c73: $35
    ld e, b                                       ; $5c74: $58
    rst $30                                       ; $5c75: $f7
    jp nc, $ad8a                                  ; $5c76: $d2 $8a $ad

    add hl, hl                                    ; $5c79: $29
    db $10                                        ; $5c7a: $10
    ld l, e                                       ; $5c7b: $6b
    nop                                           ; $5c7c: $00
    inc hl                                        ; $5c7d: $23
    db $ec                                        ; $5c7e: $ec
    sub e                                         ; $5c7f: $93
    ld a, [c]                                     ; $5c80: $f2

Jump_02f_5c81:
    ld d, $87                                     ; $5c81: $16 $87
    inc de                                        ; $5c83: $13
    jp hl                                         ; $5c84: $e9


    inc de                                        ; $5c85: $13
    cp [hl]                                       ; $5c86: $be
    sbc a                                         ; $5c87: $9f
    call c, $e6b1                                 ; $5c88: $dc $b1 $e6
    ld e, [hl]                                    ; $5c8b: $5e
    ld d, e                                       ; $5c8c: $53
    sbc e                                         ; $5c8d: $9b
    ret c                                         ; $5c8e: $d8

    ld [bc], a                                    ; $5c8f: $02
    ld e, c                                       ; $5c90: $59
    xor a                                         ; $5c91: $af
    xor d                                         ; $5c92: $aa
    db $f4                                        ; $5c93: $f4
    ld l, c                                       ; $5c94: $69

Call_02f_5c95:
    adc h                                         ; $5c95: $8c
    db $ed                                        ; $5c96: $ed
    sub h                                         ; $5c97: $94
    rst $30                                       ; $5c98: $f7
    ld l, e                                       ; $5c99: $6b
    rrca                                          ; $5c9a: $0f
    ld l, l                                       ; $5c9b: $6d
    ld bc, $95f5                                  ; $5c9c: $01 $f5 $95

Jump_02f_5c9f:
    rst $20                                       ; $5c9f: $e7
    ld sp, hl                                     ; $5ca0: $f9
    or d                                          ; $5ca1: $b2
    or l                                          ; $5ca2: $b5
    rr a                                          ; $5ca3: $cb $1f
    add $32                                       ; $5ca5: $c6 $32
    ld [hl], b                                    ; $5ca7: $70
    rst $00                                       ; $5ca8: $c7
    ld [hl-], a                                   ; $5ca9: $32
    add $96                                       ; $5caa: $c6 $96
    ld b, d                                       ; $5cac: $42
    db $fd                                        ; $5cad: $fd
    db $e4                                        ; $5cae: $e4
    ld a, [hl+]                                   ; $5caf: $2a
    jp $9618                                      ; $5cb0: $c3 $18 $96


jr_02f_5cb3:
    add hl, hl                                    ; $5cb3: $29
    ld l, b                                       ; $5cb4: $68
    db $f4                                        ; $5cb5: $f4
    jr nz, jr_02f_5cb3                            ; $5cb6: $20 $fb

    add c                                         ; $5cb8: $81
    rst $00                                       ; $5cb9: $c7
    inc l                                         ; $5cba: $2c
    ld [c], a                                     ; $5cbb: $e2
    ld d, l                                       ; $5cbc: $55
    push de                                       ; $5cbd: $d5
    dec l                                         ; $5cbe: $2d
    ld l, a                                       ; $5cbf: $6f
    ld bc, $fd27                                  ; $5cc0: $01 $27 $fd
    ld a, l                                       ; $5cc3: $7d
    xor l                                         ; $5cc4: $ad
    ld de, $1ad0                                  ; $5cc5: $11 $d0 $1a
    adc e                                         ; $5cc8: $8b
    push bc                                       ; $5cc9: $c5
    db $dd                                        ; $5cca: $dd
    call c, $26bb                                 ; $5ccb: $dc $bb $26
    ld sp, hl                                     ; $5cce: $f9
    ld b, h                                       ; $5ccf: $44
    ld l, e                                       ; $5cd0: $6b
    ld a, [bc]                                    ; $5cd1: $0a
    call nz, $f51c                                ; $5cd2: $c4 $1c $f5
    rst $30                                       ; $5cd5: $f7
    or l                                          ; $5cd6: $b5
    ld b, [hl]                                    ; $5cd7: $46
    ld b, b                                       ; $5cd8: $40
    dec hl                                        ; $5cd9: $2b
    add b                                         ; $5cda: $80
    ld c, e                                       ; $5cdb: $4b
    dec de                                        ; $5cdc: $1b
    cp d                                          ; $5cdd: $ba
    add $61                                       ; $5cde: $c6 $61
    sub l                                         ; $5ce0: $95
    sub l                                         ; $5ce1: $95

jr_02f_5ce2:
    ld a, h                                       ; $5ce2: $7c
    add a                                         ; $5ce3: $87
    sub a                                         ; $5ce4: $97
    ld a, [c]                                     ; $5ce5: $f2
    ld a, [hl]                                    ; $5ce6: $7e
    adc h                                         ; $5ce7: $8c

jr_02f_5ce8:
    db $db                                        ; $5ce8: $db
    adc a                                         ; $5ce9: $8f
    dec d                                         ; $5cea: $15
    ld e, e                                       ; $5ceb: $5b
    add e                                         ; $5cec: $83
    ld [hl], l                                    ; $5ced: $75
    cpl                                           ; $5cee: $2f
    adc l                                         ; $5cef: $8d
    rst $18                                       ; $5cf0: $df
    db $eb                                        ; $5cf1: $eb
    db $ec                                        ; $5cf2: $ec
    ld [$6e8e], a                                 ; $5cf3: $ea $8e $6e
    ld a, c                                       ; $5cf6: $79
    dec bc                                        ; $5cf7: $0b
    ld e, c                                       ; $5cf8: $59
    ld [hl], a                                    ; $5cf9: $77
    dec b                                         ; $5cfa: $05
    xor l                                         ; $5cfb: $ad
    or c                                          ; $5cfc: $b1
    jr jr_02f_5ce2                                ; $5cfd: $18 $e3

    add [hl]                                      ; $5cff: $86
    or l                                          ; $5d00: $b5
    adc c                                         ; $5d01: $89
    dec sp                                        ; $5d02: $3b
    ld [$cf5f], a                                 ; $5d03: $ea $5f $cf
    dec [hl]                                      ; $5d06: $35
    ld hl, sp+$23                                 ; $5d07: $f8 $23
    ld a, a                                       ; $5d09: $7f
    and l                                         ; $5d0a: $a5
    call nc, $b626                                ; $5d0b: $d4 $26 $b6
    daa                                           ; $5d0e: $27
    sbc $0d                                       ; $5d0f: $de $0d
    or l                                          ; $5d11: $b5
    add $62                                       ; $5d12: $c6 $62
    adc l                                         ; $5d14: $8d
    ret nz                                        ; $5d15: $c0

    sub e                                         ; $5d16: $93
    set 2, [hl]                                   ; $5d17: $cb $d6
    ld l, $7f                                     ; $5d19: $2e $7f
    jr jr_02f_5ce8                                ; $5d1b: $18 $cb

    ret nz                                        ; $5d1d: $c0

    dec e                                         ; $5d1e: $1d
    rl h                                          ; $5d1f: $cb $14
    inc [hl]                                      ; $5d21: $34
    adc e                                         ; $5d22: $8b
    ld a, b                                       ; $5d23: $78
    ld d, l                                       ; $5d24: $55
    ld [hl], l                                    ; $5d25: $75
    bit 6, a                                      ; $5d26: $cb $77
    ld e, h                                       ; $5d28: $5c
    sbc c                                         ; $5d29: $99
    dec c                                         ; $5d2a: $0d
    cp [hl]                                       ; $5d2b: $be
    add $60                                       ; $5d2c: $c6 $60
    ld sp, $5afc                                  ; $5d2e: $31 $fc $5a
    ld [$6845], a                                 ; $5d31: $ea $45 $68
    ld bc, $62be                                  ; $5d34: $01 $be $62
    and e                                         ; $5d37: $a3
    xor [hl]                                      ; $5d38: $ae
    ld c, c                                       ; $5d39: $49
    ld a, c                                       ; $5d3a: $79
    dec bc                                        ; $5d3b: $0b
    rst $00                                       ; $5d3c: $c7
    sub l                                         ; $5d3d: $95
    reti                                          ; $5d3e: $d9


    sbc d                                         ; $5d3f: $9a
    ld [hl+], a                                   ; $5d40: $22
    db $fc                                        ; $5d41: $fc
    db $e3                                        ; $5d42: $e3
    ld a, [de]                                    ; $5d43: $1a
    add e                                         ; $5d44: $83
    push bc                                       ; $5d45: $c5
    ldh a, [$2b]                                  ; $5d46: $f0 $2b
    halt                                          ; $5d48: $76
    or c                                          ; $5d49: $b1
    ld e, a                                       ; $5d4a: $5f
    jr z, jr_02f_5d63                             ; $5d4b: $28 $16

    ldh [$2b], a                                  ; $5d4d: $e0 $2b
    ld [hl], $ea                                  ; $5d4f: $36 $ea
    sbc d                                         ; $5d51: $9a
    sub h                                         ; $5d52: $94
    or a                                          ; $5d53: $b7
    and a                                         ; $5d54: $a7
    ld a, l                                       ; $5d55: $7d
    xor l                                         ; $5d56: $ad
    ld a, c                                       ; $5d57: $79
    add h                                         ; $5d58: $84
    rst $28                                       ; $5d59: $ef
    rst $28                                       ; $5d5a: $ef
    inc a                                         ; $5d5b: $3c
    ld h, h                                       ; $5d5c: $64
    or c                                          ; $5d5d: $b1
    db $f4                                        ; $5d5e: $f4
    rst $08                                       ; $5d5f: $cf
    ld d, e                                       ; $5d60: $53
    pop hl                                        ; $5d61: $e1
    or l                                          ; $5d62: $b5

jr_02f_5d63:
    adc c                                         ; $5d63: $89
    dec sp                                        ; $5d64: $3b
    db $ed                                        ; $5d65: $ed
    ld l, e                                       ; $5d66: $6b
    rla                                           ; $5d67: $17
    db $db                                        ; $5d68: $db
    cp $a5                                        ; $5d69: $fe $a5
    ld h, l                                       ; $5d6b: $65
    ldh [$8e], a                                  ; $5d6c: $e0 $8e
    ld h, l                                       ; $5d6e: $65
    ld e, a                                       ; $5d6f: $5f
    adc e                                         ; $5d70: $8b
    cp e                                          ; $5d71: $bb
    cp $e2                                        ; $5d72: $fe $e2
    ld hl, $b1ad                                  ; $5d74: $21 $ad $b1
    ld e, b                                       ; $5d77: $58
    ret z                                         ; $5d78: $c8

    add hl, de                                    ; $5d79: $19
    xor h                                         ; $5d7a: $ac
    ld c, l                                       ; $5d7b: $4d
    ld l, h                                       ; $5d7c: $6c
    ld bc, $c327                                  ; $5d7d: $01 $27 $c3
    ld e, l                                       ; $5d80: $5d
    ld b, c                                       ; $5d81: $41
    push af                                       ; $5d82: $f5
    ld l, $2d                                     ; $5d83: $2e $2d
    inc bc                                        ; $5d85: $03
    rst $30                                       ; $5d86: $f7
    rst $30                                       ; $5d87: $f7
    sub a                                         ; $5d88: $97
    ld [hl], $a4                                  ; $5d89: $36 $a4
    ld d, l                                       ; $5d8b: $55
    add [hl]                                      ; $5d8c: $86
    sbc a                                         ; $5d8d: $9f
    db $f4                                        ; $5d8e: $f4
    db $ed                                        ; $5d8f: $ed
    ld d, e                                       ; $5d90: $53
    db $ed                                        ; $5d91: $ed

jr_02f_5d92:
    and c                                         ; $5d92: $a1
    dec l                                         ; $5d93: $2d
    rst $00                                       ; $5d94: $c7

jr_02f_5d95:
    ld a, [de]                                    ; $5d95: $1a
    res 2, c                                      ; $5d96: $cb $91
    rst $08                                       ; $5d98: $cf
    add $91                                       ; $5d99: $c6 $91
    sub [hl]                                      ; $5d9b: $96
    ld bc, $29ad                                  ; $5d9c: $01 $ad $29
    db $10                                        ; $5d9f: $10
    jr z, jr_02f_5d92                             ; $5da0: $28 $f0

    ld e, b                                       ; $5da2: $58
    db $e3                                        ; $5da3: $e3
    cpl                                           ; $5da4: $2f
    xor l                                         ; $5da5: $ad
    ld [$c781], sp                                ; $5da6: $08 $81 $c7
    adc h                                         ; $5da9: $8c
    ld sp, $a7d4                                  ; $5daa: $31 $d4 $a7
    dec [hl]                                      ; $5dad: $35
    cp $e8                                        ; $5dae: $fe $e8
    add $ba                                       ; $5db0: $c6 $ba
    xor l                                         ; $5db2: $ad
    ret c                                         ; $5db3: $d8

    ld a, [hl-]                                   ; $5db4: $3a
    and d                                         ; $5db5: $a2
    call c, Call_000_2f95                         ; $5db6: $dc $95 $2f
    adc e                                         ; $5db9: $8b
    db $fd                                        ; $5dba: $fd
    ret nz                                        ; $5dbb: $c0

    adc l                                         ; $5dbc: $8d
    pop de                                        ; $5dbd: $d1
    ld l, h                                       ; $5dbe: $6c
    cp h                                          ; $5dbf: $bc
    add a                                         ; $5dc0: $87
    ld d, l                                       ; $5dc1: $55
    ld [hl+], a                                   ; $5dc2: $22
    ld [hl], d                                    ; $5dc3: $72
    xor l                                         ; $5dc4: $ad
    ld l, b                                       ; $5dc5: $68
    sub l                                         ; $5dc6: $95
    sub l                                         ; $5dc7: $95
    ld e, e                                       ; $5dc8: $5b
    ld a, [de]                                    ; $5dc9: $1a
    cpl                                           ; $5dca: $2f
    adc l                                         ; $5dcb: $8d
    jp $c68e                                      ; $5dcc: $c3 $8e $c6


    ld [hl+], a                                   ; $5dcf: $22
    ld a, [de]                                    ; $5dd0: $1a
    add a                                         ; $5dd1: $87
    dec e                                         ; $5dd2: $1d
    adc c                                         ; $5dd3: $89
    sub [hl]                                      ; $5dd4: $96
    ld a, [hl+]                                   ; $5dd5: $2a
    ld c, d                                       ; $5dd6: $4a
    xor $e8                                       ; $5dd7: $ee $e8
    add d                                         ; $5dd9: $82
    ld [hl], h                                    ; $5dda: $74
    ld e, $5e                                     ; $5ddb: $1e $5e
    rst $20                                       ; $5ddd: $e7
    adc $a6                                       ; $5dde: $ce $a6
    rra                                           ; $5de0: $1f
    rst $08                                       ; $5de1: $cf
    cpl                                           ; $5de2: $2f
    sub l                                         ; $5de3: $95
    db $db                                        ; $5de4: $db
    adc d                                         ; $5de5: $8a
    ld h, d                                       ; $5de6: $62
    ld d, a                                       ; $5de7: $57
    cp c                                          ; $5de8: $b9
    push bc                                       ; $5de9: $c5
    ld b, h                                       ; $5dea: $44
    db $eb                                        ; $5deb: $eb
    ld [hl], b                                    ; $5dec: $70
    dec e                                         ; $5ded: $1d
    di                                            ; $5dee: $f3
    cp [hl]                                       ; $5def: $be
    or c                                          ; $5df0: $b1
    xor h                                         ; $5df1: $ac
    sub h                                         ; $5df2: $94
    reti                                          ; $5df3: $d9


    xor d                                         ; $5df4: $aa
    dec de                                        ; $5df5: $1b
    ld e, c                                       ; $5df6: $59
    push af                                       ; $5df7: $f5
    cp h                                          ; $5df8: $bc
    ld h, c                                       ; $5df9: $61
    cp a                                          ; $5dfa: $bf
    cp b                                          ; $5dfb: $b8
    xor l                                         ; $5dfc: $ad
    jr z, jr_02f_5d95                             ; $5dfd: $28 $96

    ld b, [hl]                                    ; $5dff: $46
    ld d, $38                                     ; $5e00: $16 $38
    ld a, [hl]                                    ; $5e02: $7e
    push bc                                       ; $5e03: $c5
    ld hl, sp-$03                                 ; $5e04: $f8 $fd
    halt                                          ; $5e06: $76
    or c                                          ; $5e07: $b1
    ld [hl], l                                    ; $5e08: $75
    push hl                                       ; $5e09: $e5
    db $eb                                        ; $5e0a: $eb
    ld h, b                                       ; $5e0b: $60
    ld hl, sp+$49                                 ; $5e0c: $f8 $49
    rst $18                                       ; $5e0e: $df
    ld a, $25                                     ; $5e0f: $3e $25
    rst $30                                       ; $5e11: $f7
    cp $f8                                        ; $5e12: $fe $f8
    ld b, e                                       ; $5e14: $43
    sbc d                                         ; $5e15: $9a
    and l                                         ; $5e16: $a5
    db $d3                                        ; $5e17: $d3
    cp $3e                                        ; $5e18: $fe $3e
    ret                                           ; $5e1a: $c9


    ld d, a                                       ; $5e1b: $57
    or h                                          ; $5e1c: $b4
    jp z, Jump_000_2dca                           ; $5e1d: $ca $ca $2d

    adc l                                         ; $5e20: $8d
    sub a                                         ; $5e21: $97
    add $b5                                       ; $5e22: $c6 $b5
    ld d, e                                       ; $5e24: $53
    ld e, $0b                                     ; $5e25: $1e $0b
    sub h                                         ; $5e27: $94
    rst $28                                       ; $5e28: $ef
    cp b                                          ; $5e29: $b8
    or d                                          ; $5e2a: $b2
    cp b                                          ; $5e2b: $b8
    dec de                                        ; $5e2c: $1b
    dec bc                                        ; $5e2d: $0b
    ld l, c                                       ; $5e2e: $69
    pop de                                        ; $5e2f: $d1
    add e                                         ; $5e30: $83
    xor e                                         ; $5e31: $ab
    jp nc, $71a7                                  ; $5e32: $d2 $a7 $71

    dec l                                         ; $5e35: $2d
    ld l, l                                       ; $5e36: $6d
    add sp, $1a                                   ; $5e37: $e8 $1a
    ld a, h                                       ; $5e39: $7c
    xor l                                         ; $5e3a: $ad
    ld a, c                                       ; $5e3b: $79
    add h                                         ; $5e3c: $84
    rst $28                                       ; $5e3d: $ef
    rst $20                                       ; $5e3e: $e7
    ld a, c                                       ; $5e3f: $79
    sbc $02                                       ; $5e40: $de $02
    ld b, a                                       ; $5e42: $47
    pop de                                        ; $5e43: $d1
    ld [hl-], a                                   ; $5e44: $32
    ld [hl], b                                    ; $5e45: $70
    ld d, a                                       ; $5e46: $57
    ld d, b                                       ; $5e47: $50
    cp l                                          ; $5e48: $bd
    ld c, e                                       ; $5e49: $4b
    res 0, b                                      ; $5e4a: $cb $80
    sub $a3                                       ; $5e4c: $d6 $a3
    adc l                                         ; $5e4e: $8d
    or c                                          ; $5e4f: $b1
    db $fd                                        ; $5e50: $fd
    rlca                                          ; $5e51: $07
    ld sp, $a6b7                                  ; $5e52: $31 $b7 $a6
    ld a, c                                       ; $5e55: $79
    ld c, [hl]                                    ; $5e56: $4e
    ld a, [c]                                     ; $5e57: $f2
    jp c, Jump_02f_5b43                           ; $5e58: $da $43 $5b

    push af                                       ; $5e5b: $f5
    rst $28                                       ; $5e5c: $ef
    ld a, [$c30b]                                 ; $5e5d: $fa $0b $c3
    sbc b                                         ; $5e60: $98
    and e                                         ; $5e61: $a3
    ld a, [hl]                                    ; $5e62: $7e
    cp [hl]                                       ; $5e63: $be
    inc de                                        ; $5e64: $13
    ld l, h                                       ; $5e65: $6c
    call Call_02f_7c23                            ; $5e66: $cd $23 $7c
    ld a, a                                       ; $5e69: $7f
    rst $38                                       ; $5e6a: $ff
    ld b, c                                       ; $5e6b: $41
    xor h                                         ; $5e6c: $ac
    pop af                                        ; $5e6d: $f1
    ld b, a                                       ; $5e6e: $47

jr_02f_5e6f:
    scf                                           ; $5e6f: $37
    sub [hl]                                      ; $5e70: $96
    call c, Call_000_08d6                         ; $5e71: $dc $d6 $08
    xor b                                         ; $5e74: $a8
    ld e, [hl]                                    ; $5e75: $5e
    rst $10                                       ; $5e76: $d7
    db $e4                                        ; $5e77: $e4
    ld a, [de]                                    ; $5e78: $1a
    add a                                         ; $5e79: $87
    and l                                         ; $5e7a: $a5
    dec b                                         ; $5e7b: $05
    ld sp, hl                                     ; $5e7c: $f9
    adc [hl]                                      ; $5e7d: $8e
    dec hl                                        ; $5e7e: $2b
    ld c, e                                       ; $5e7f: $4b
    dec de                                        ; $5e80: $1b
    ret nc                                        ; $5e81: $d0

    ld [hl-], a                                   ; $5e82: $32
    ld [hl], b                                    ; $5e83: $70
    ld a, a                                       ; $5e84: $7f
    ld a, a                                       ; $5e85: $7f
    db $e4                                        ; $5e86: $e4
    rrca                                          ; $5e87: $0f
    jr jr_02f_5e6f                                ; $5e88: $18 $e5

    dec l                                         ; $5e8a: $2d
    rst $00                                       ; $5e8b: $c7
    sub l                                         ; $5e8c: $95
    push de                                       ; $5e8d: $d5
    call z, $0d96                                 ; $5e8e: $cc $96 $0d
    ld b, c                                       ; $5e91: $41
    sbc d                                         ; $5e92: $9a
    ld b, l                                       ; $5e93: $45
    add sp, -$04                                  ; $5e94: $e8 $fc
    ld [hl], c                                    ; $5e96: $71
    xor l                                         ; $5e97: $ad
    ld a, c                                       ; $5e98: $79
    add h                                         ; $5e99: $84
    rst $28                                       ; $5e9a: $ef
    xor a                                         ; $5e9b: $af
    ld a, c                                       ; $5e9c: $79
    ldh [$a3], a                                  ; $5e9d: $e0 $a3
    add a                                         ; $5e9f: $87
    ld sp, hl                                     ; $5ea0: $f9
    ld c, [hl]                                    ; $5ea1: $4e
    or a                                          ; $5ea2: $b7
    xor b                                         ; $5ea3: $a8
    ld d, a                                       ; $5ea4: $57
    sub e                                         ; $5ea5: $93
    ld e, h                                       ; $5ea6: $5c
    push af                                       ; $5ea7: $f5
    ld [hl], b                                    ; $5ea8: $70
    reti                                          ; $5ea9: $d9


    ld e, d                                       ; $5eaa: $5a
    ld [hl], l                                    ; $5eab: $75
    ld a, a                                       ; $5eac: $7f
    rst $10                                       ; $5ead: $d7
    dec b                                         ; $5eae: $05
    adc l                                         ; $5eaf: $8d
    add $b5                                       ; $5eb0: $c6 $b5

jr_02f_5eb2:
    ld d, e                                       ; $5eb2: $53
    sbc $9f                                       ; $5eb3: $de $9f
    ld l, b                                       ; $5eb5: $68
    reti                                          ; $5eb6: $d9


    ld [hl], a                                    ; $5eb7: $77
    ld b, l                                       ; $5eb8: $45
    jr @+$6c                                      ; $5eb9: $18 $6a

    ld e, h                                       ; $5ebb: $5c
    inc hl                                        ; $5ebc: $23
    ld a, a                                       ; $5ebd: $7f
    ret nz                                        ; $5ebe: $c0

    ret z                                         ; $5ebf: $c8

    rst $00                                       ; $5ec0: $c7
    or l                                          ; $5ec1: $b5
    ld [hl], d                                    ; $5ec2: $72
    scf                                           ; $5ec3: $37
    db $e4                                        ; $5ec4: $e4
    jp z, $23b7                                   ; $5ec5: $ca $b7 $23

    sbc $ff                                       ; $5ec8: $de $ff
    jp c, $b6c5                                   ; $5eca: $da $c5 $b6

    ld a, a                                       ; $5ecd: $7f
    ld l, c                                       ; $5ece: $69
    rst $00                                       ; $5ecf: $c7
    sbc d                                         ; $5ed0: $9a
    ld a, e                                       ; $5ed1: $7b
    ld c, l                                       ; $5ed2: $4d
    ld [hl], d                                    ; $5ed3: $72
    inc b                                         ; $5ed4: $04
    ld d, e                                       ; $5ed5: $53
    inc c                                         ; $5ed6: $0c
    cp $c8                                        ; $5ed7: $fe $c8
    db $eb                                        ; $5ed9: $eb
    add $58                                       ; $5eda: $c6 $58
    ld l, [hl]                                    ; $5edc: $6e
    sbc a                                         ; $5edd: $9f

jr_02f_5ede:
    cpl                                           ; $5ede: $2f
    sbc [hl]                                      ; $5edf: $9e
    ld e, a                                       ; $5ee0: $5f
    jr z, jr_02f_5eb2                             ; $5ee1: $28 $cf

    ld e, e                                       ; $5ee3: $5b
    ld e, l                                       ; $5ee4: $5d
    ret c                                         ; $5ee5: $d8

    cp $dd                                        ; $5ee6: $fe $dd
    sub $58                                       ; $5ee8: $d6 $58
    xor h                                         ; $5eea: $ac
    ld [hl-], a                                   ; $5eeb: $32
    cp a                                          ; $5eec: $bf
    ret c                                         ; $5eed: $d8

    or a                                          ; $5eee: $b7
    ld a, h                                       ; $5eef: $7c
    dec sp                                        ; $5ef0: $3b
    adc c                                         ; $5ef1: $89
    cp l                                          ; $5ef2: $bd
    rst $38                                       ; $5ef3: $ff
    ld a, [hl]                                    ; $5ef4: $7e
    ld [hl], d                                    ; $5ef5: $72
    reti                                          ; $5ef6: $d9


    ld a, [de]                                    ; $5ef7: $1a
    ld h, e                                       ; $5ef8: $63
    jr jr_02f_5ede                                ; $5ef9: $18 $e3

    ld h, d                                       ; $5efb: $62
    ld e, $fa                                     ; $5efc: $1e $fa
    ld e, h                                       ; $5efe: $5c
    rst $10                                       ; $5eff: $d7
    xor e                                         ; $5f00: $ab
    ld a, [hl+]                                   ; $5f01: $2a
    db $fd                                        ; $5f02: $fd

Call_02f_5f03:
    ld c, e                                       ; $5f03: $4b
    ld a, $ae                                     ; $5f04: $3e $ae
    ld b, $30                                     ; $5f06: $06 $30

jr_02f_5f08:
    ld d, [hl]                                    ; $5f08: $56
    inc [hl]                                      ; $5f09: $34
    ld a, [hl]                                    ; $5f0a: $7e
    ld c, e                                       ; $5f0b: $4b
    ld bc, $26d5                                  ; $5f0c: $01 $d5 $26
    or [hl]                                       ; $5f0f: $b6
    push af                                       ; $5f10: $f5
    rst $28                                       ; $5f11: $ef
    adc d                                         ; $5f12: $8a
    and $e6                                       ; $5f13: $e6 $e6
    add [hl]                                      ; $5f15: $86
    or c                                          ; $5f16: $b1
    inc c                                         ; $5f17: $0c
    ld l, b                                       ; $5f18: $68
    call z, Call_000_1883                         ; $5f19: $cc $83 $18
    ld sp, hl                                     ; $5f1c: $f9
    inc bc                                        ; $5f1d: $03
    ld b, [hl]                                    ; $5f1e: $46
    adc [hl]                                      ; $5f1f: $8e
    ld a, [hl-]                                   ; $5f20: $3a
    ld a, a                                       ; $5f21: $7f
    sub a                                         ; $5f22: $97
    ld l, b                                       ; $5f23: $68
    ld a, [$1fdc]                                 ; $5f24: $fa $dc $1f
    ld d, d                                       ; $5f27: $52
    ld [hl], d                                    ; $5f28: $72
    dec e                                         ; $5f29: $1d
    rra                                           ; $5f2a: $1f
    sub c                                         ; $5f2b: $91
    inc a                                         ; $5f2c: $3c
    ld l, a                                       ; $5f2d: $6f
    ld bc, $b5f5                                  ; $5f2e: $01 $f5 $b5
    ld [$446e], a                                 ; $5f31: $ea $6e $44
    ld a, [$30dc]                                 ; $5f34: $fa $dc $30
    ld d, [hl]                                    ; $5f37: $56
    ld h, a                                       ; $5f38: $67
    and a                                         ; $5f39: $a7
    inc a                                         ; $5f3a: $3c
    ld d, $28                                     ; $5f3b: $16 $28
    rst $18                                       ; $5f3d: $df
    ld [hl], c                                    ; $5f3e: $71
    ld h, l                                       ; $5f3f: $65
    add $18                                       ; $5f40: $c6 $18
    jp nc, $ddca                                  ; $5f42: $d2 $ca $dd

    ret nc                                        ; $5f45: $d0

    rst $00                                       ; $5f46: $c7
    or l                                          ; $5f47: $b5
    ld c, d                                       ; $5f48: $4a
    db $e3                                        ; $5f49: $e3
    scf                                           ; $5f4a: $37
    ld d, d                                       ; $5f4b: $52
    sub b                                         ; $5f4c: $90
    inc a                                         ; $5f4d: $3c
    ld l, a                                       ; $5f4e: $6f
    ld bc, $95c7                                  ; $5f4f: $01 $c7 $95
    sub c                                         ; $5f52: $91
    add $36                                       ; $5f53: $c6 $36
    and h                                         ; $5f55: $a4
    db $e4                                        ; $5f56: $e4
    add sp, $01                                   ; $5f57: $e8 $01
    db $ed                                        ; $5f59: $ed
    ld a, d                                       ; $5f5a: $7a
    ld d, l                                       ; $5f5b: $55
    and l                                         ; $5f5c: $a5
    ld h, c                                       ; $5f5d: $61
    add hl, de                                    ; $5f5e: $19
    db $db                                        ; $5f5f: $db
    cp d                                          ; $5f60: $ba
    adc c                                         ; $5f61: $89
    jr nc, jr_02f_5f08                            ; $5f62: $30 $a4

    pop de                                        ; $5f64: $d1
    ei                                            ; $5f65: $fb
    ld l, e                                       ; $5f66: $6b
    ld [$56ba], a                                 ; $5f67: $ea $ba $56
    sbc [hl]                                      ; $5f6a: $9e
    ld b, a                                       ; $5f6b: $47
    ld b, $ee                                     ; $5f6c: $06 $ee
    ld e, b                                       ; $5f6e: $58
    ld h, d                                       ; $5f6f: $62
    scf                                           ; $5f70: $37
    ld [hl-], a                                   ; $5f71: $32
    call nc, $e9a7                                ; $5f72: $d4 $a7 $e9
    add a                                         ; $5f75: $87
    xor d                                         ; $5f76: $aa
    ld d, h                                       ; $5f77: $54
    pop de                                        ; $5f78: $d1
    ld [$e3ac], a                                 ; $5f79: $ea $ac $e3
    inc bc                                        ; $5f7c: $03
    ld e, [hl]                                    ; $5f7d: $5e
    call z, $de79                                 ; $5f7e: $cc $79 $de
    ld [bc], a                                    ; $5f81: $02
    push af                                       ; $5f82: $f5
    dec [hl]                                      ; $5f83: $35
    and $41                                       ; $5f84: $e6 $41
    call z, $0c70                                 ; $5f86: $cc $70 $0c
    call z, $5d18                                 ; $5f89: $cc $18 $5d
    dec sp                                        ; $5f8c: $3b
    push hl                                       ; $5f8d: $e5
    or c                                          ; $5f8e: $b1
    ld b, b                                       ; $5f8f: $40
    ld sp, hl                                     ; $5f90: $f9
    or d                                          ; $5f91: $b2
    ld e, [hl]                                    ; $5f92: $5e
    ld d, l                                       ; $5f93: $55
    ld l, c                                       ; $5f94: $69
    ld e, b                                       ; $5f95: $58
    or $b5                                        ; $5f96: $f6 $b5
    ld c, d                                       ; $5f98: $4a
    dec bc                                        ; $5f99: $0b
    ld b, b                                       ; $5f9a: $40
    add $90                                       ; $5f9b: $c6 $90
    sub $58                                       ; $5f9d: $d6 $58
    inc h                                         ; $5f9f: $24
    ld [hl], a                                    ; $5fa0: $77
    db $dd                                        ; $5fa1: $dd
    dec d                                         ; $5fa2: $15
    inc [hl]                                      ; $5fa3: $34
    and $41                                       ; $5fa4: $e6 $41
    inc l                                         ; $5fa6: $2c
    inc bc                                        ; $5fa7: $03
    ld [hl], a                                    ; $5fa8: $77
    inc l                                         ; $5fa9: $2c
    db $e3                                        ; $5faa: $e3
    ld h, d                                       ; $5fab: $62
    inc c                                         ; $5fac: $0c
    ld l, c                                       ; $5fad: $69
    ld bc, $b8c8                                  ; $5fae: $01 $c8 $b8
    ld l, d                                       ; $5fb1: $6a
    inc de                                        ; $5fb2: $13
    ld e, e                                       ; $5fb3: $5b
    ld b, a                                       ; $5fb4: $47
    db $fd                                        ; $5fb5: $fd
    add hl, hl                                    ; $5fb6: $29
    sbc l                                         ; $5fb7: $9d
    ld d, $e5                                     ; $5fb8: $16 $e5
    dec sp                                        ; $5fba: $3b
    ld a, [c]                                     ; $5fbb: $f2
    ld d, l                                       ; $5fbc: $55
    sub l                                         ; $5fbd: $95
    or c                                          ; $5fbe: $b1
    or h                                          ; $5fbf: $b4
    inc c                                         ; $5fc0: $0c
    ld l, b                                       ; $5fc1: $68
    sbc l                                         ; $5fc2: $9d
    ld e, $a4                                     ; $5fc3: $1e $a4
    db $d3                                        ; $5fc5: $d3
    or b                                          ; $5fc6: $b0
    ld a, a                                       ; $5fc7: $7f
    scf                                           ; $5fc8: $37
    and h                                         ; $5fc9: $a4
    dec [hl]                                      ; $5fca: $35
    ld d, $f3                                     ; $5fcb: $16 $f3
    dec de                                        ; $5fcd: $1b
    ld b, h                                       ; $5fce: $44
    ldh [$ea], a                                  ; $5fcf: $e0 $ea
    xor h                                         ; $5fd1: $ac
    nop                                           ; $5fd2: $00
    adc $dc                                       ; $5fd3: $ce $dc
    db $ed                                        ; $5fd5: $ed
    ld h, d                                       ; $5fd6: $62
    bit 2, a                                      ; $5fd7: $cb $57
    ld l, h                                       ; $5fd9: $6c
    reti                                          ; $5fda: $d9


    ld d, [hl]                                    ; $5fdb: $56
    and l                                         ; $5fdc: $a5
    or h                                          ; $5fdd: $b4

jr_02f_5fde:
    ld h, d                                       ; $5fde: $62
    ld l, e                                       ; $5fdf: $6b

jr_02f_5fe0:
    ld e, h                                       ; $5fe0: $5c
    dec d                                         ; $5fe1: $15
    sub $75                                       ; $5fe2: $d6 $75
    dec l                                         ; $5fe4: $2d
    db $fd                                        ; $5fe5: $fd
    jr nc, jr_02f_5fde                            ; $5fe6: $30 $f6

    cp d                                          ; $5fe8: $ba
    rra                                           ; $5fe9: $1f
    sub [hl]                                      ; $5fea: $96
    ld d, l                                       ; $5feb: $55
    ld [hl], a                                    ; $5fec: $77
    sbc e                                         ; $5fed: $9b
    cp c                                          ; $5fee: $b9
    ld [hl], a                                    ; $5fef: $77
    ld c, l                                       ; $5ff0: $4d
    or a                                          ; $5ff1: $b7
    cp h                                          ; $5ff2: $bc
    dec b                                         ; $5ff3: $05
    dec e                                         ; $5ff4: $1d
    inc c                                         ; $5ff5: $0c
    ld h, e                                       ; $5ff6: $63
    add c                                         ; $5ff7: $81
    cp e                                          ; $5ff8: $bb
    or h                                          ; $5ff9: $b4
    ld a, a                                       ; $5ffa: $7f

Call_02f_5ffb:
    ld d, a                                       ; $5ffb: $57
    ret nc                                        ; $5ffc: $d0

    ld a, [de]                                    ; $5ffd: $1a
    adc e                                         ; $5ffe: $8b
    dec d                                         ; $5fff: $15
    ret nz                                        ; $6000: $c0

    ld h, l                                       ; $6001: $65
    nop                                           ; $6002: $00
    rst $00                                       ; $6003: $c7
    inc a                                         ; $6004: $3c
    adc b                                         ; $6005: $88
    ld d, l                                       ; $6006: $55
    ld a, [$a3d6]                                 ; $6007: $fa $d6 $a3
    ld hl, $9725                                  ; $600a: $21 $25 $97
    ld bc, $8ddc                                  ; $600d: $01 $dc $8d
    inc c                                         ; $6010: $0c
    xor c                                         ; $6011: $a9
    sbc $a5                                       ; $6012: $de $a5
    jp c, Jump_02f_5b43                           ; $6014: $da $43 $5b

    ld e, c                                       ; $6017: $59
    rst $30                                       ; $6018: $f7
    dec de                                        ; $6019: $1b
    add hl, de                                    ; $601a: $19

jr_02f_601b:
    jp nc, $f7aa                                  ; $601b: $d2 $aa $f7

    ld d, a                                       ; $601e: $57
    ld e, c                                       ; $601f: $59
    or a                                          ; $6020: $b7
    db $e4                                        ; $6021: $e4
    jp z, $5c77                                   ; $6022: $ca $77 $5c

    sbc c                                         ; $6025: $99
    add d                                         ; $6026: $82
    sub $98                                       ; $6027: $d6 $98
    and a                                         ; $6029: $a7
    rra                                           ; $602a: $1f
    add $5e                                       ; $602b: $c6 $5e
    xor d                                         ; $602d: $aa
    jr nz, jr_02f_601b                            ; $602e: $20 $eb

    ld [hl], $ae                                  ; $6030: $36 $ae

Jump_02f_6032:
    ld d, l                                       ; $6032: $55
    ld e, d                                       ; $6033: $5a
    and l                                         ; $6034: $a5
    ld l, a                                       ; $6035: $6f
    sub a                                         ; $6036: $97
    inc a                                         ; $6037: $3c
    rst $18                                       ; $6038: $df
    ld [hl], c                                    ; $6039: $71
    ld h, l                                       ; $603a: $65
    ld a, [bc]                                    ; $603b: $0a
    ld e, d                                       ; $603c: $5a
    ldh [$d2], a                                  ; $603d: $e0 $d2
    rst $08                                       ; $603f: $cf
    add hl, hl                                    ; $6040: $29
    add hl, sp                                    ; $6041: $39
    pop de                                        ; $6042: $d1
    xor d                                         ; $6043: $aa
    add a                                         ; $6044: $87
    set 2, [hl]                                   ; $6045: $cb $d6
    ld [bc], a                                    ; $6047: $02
    jr nc, jr_02f_5fe0                            ; $6048: $30 $96

    ld [hl], $4c                                  ; $604a: $36 $4c
    dec d                                         ; $604c: $15
    push hl                                       ; $604d: $e5
    ld a, c                                       ; $604e: $79
    sbc $02                                       ; $604f: $de $02
    rst $00                                       ; $6051: $c7
    sub l                                         ; $6052: $95
    db $dd                                        ; $6053: $dd
    ret z                                         ; $6054: $c8

    sub b                                         ; $6055: $90
    add [hl]                                      ; $6056: $86
    rla                                           ; $6057: $17

jr_02f_6058:
    ld h, $57                                     ; $6058: $26 $57
    ld h, a                                       ; $605a: $67
    dec e                                         ; $605b: $1d
    rra                                           ; $605c: $1f
    ldh a, [$62]                                  ; $605d: $f0 $62
    adc $93                                       ; $605f: $ce $93
    inc sp                                        ; $6061: $33
    ld b, [hl]                                    ; $6062: $46
    rst $10                                       ; $6063: $d7
    sbc b                                         ; $6064: $98
    rlca                                          ; $6065: $07
    ld d, c                                       ; $6066: $51
    ld a, e                                       ; $6067: $7b
    ld l, b                                       ; $6068: $68
    ld h, d                                       ; $6069: $62
    dec bc                                        ; $606a: $0b
    rst $00                                       ; $606b: $c7
    sub l                                         ; $606c: $95

jr_02f_606d:
    add hl, hl                                    ; $606d: $29
    ld l, b                                       ; $606e: $68
    db $f4                                        ; $606f: $f4
    jr nz, jr_02f_606d                            ; $6070: $20 $fb

    add c                                         ; $6072: $81
    rst $00                                       ; $6073: $c7
    adc h                                         ; $6074: $8c
    pop de                                        ; $6075: $d1
    or l                                          ; $6076: $b5
    ld [$be61], a                                 ; $6077: $ea $61 $be
    ld c, [hl]                                    ; $607a: $4e
    ld a, [$3f3a]                                 ; $607b: $fa $3a $3f
    cp c                                          ; $607e: $b9
    db $eb                                        ; $607f: $eb
    xor [hl]                                      ; $6080: $ae
    and b                                         ; $6081: $a0
    dec [hl]                                      ; $6082: $35
    rrca                                          ; $6083: $0f
    ld a, h                                       ; $6084: $7c
    call z, $c883                                 ; $6085: $cc $83 $c8
    ld e, e                                       ; $6088: $5b
    and a                                         ; $6089: $a7
    ccf                                           ; $608a: $3f
    adc b                                         ; $608b: $88
    ld [hl], l                                    ; $608c: $75

jr_02f_608d:
    ld c, l                                       ; $608d: $4d
    adc d                                         ; $608e: $8a
    pop bc                                        ; $608f: $c1
    ld e, a                                       ; $6090: $5f
    inc hl                                        ; $6091: $23
    jr jr_02f_608d                                ; $6092: $18 $f9

    ld l, e                                       ; $6094: $6b
    halt                                          ; $6095: $76
    add c                                         ; $6096: $81
    and e                                         ; $6097: $a3
    and b                                         ; $6098: $a0
    ld [hl], e                                    ; $6099: $73
    ld [hl], d                                    ; $609a: $72
    dec e                                         ; $609b: $1d
    rra                                           ; $609c: $1f
    sub c                                         ; $609d: $91
    inc a                                         ; $609e: $3c
    ld e, a                                       ; $609f: $5f
    ld a, l                                       ; $60a0: $7d
    xor l                                         ; $60a1: $ad
    cp d                                          ; $60a2: $ba
    cp a                                          ; $60a3: $bf
    db $eb                                        ; $60a4: $eb
    add d                                         ; $60a5: $82
    ld b, [hl]                                    ; $60a6: $46
    ld l, [hl]                                    ; $60a7: $6e
    jr c, jr_02f_6058                             ; $60a8: $38 $ae

    ld sp, $620f                                  ; $60aa: $31 $0f $62
    sub $78                                       ; $60ad: $d6 $78
    db $dd                                        ; $60af: $dd
    sbc b                                         ; $60b0: $98

jr_02f_60b1:
    ld sp, $7d0f                                  ; $60b1: $31 $0f $7d
    ld [$156c], a                                 ; $60b4: $ea $6c $15
    cp $db                                        ; $60b7: $fe $db
    ld l, $ad                                     ; $60b9: $2e $ad
    ld b, d                                       ; $60bb: $42
    ld a, a                                       ; $60bc: $7f
    add sp, -$07                                  ; $60bd: $e8 $f9
    or d                                          ; $60bf: $b2
    or h                                          ; $60c0: $b4
    ld a, [bc]                                    ; $60c1: $0a
    db $fd                                        ; $60c2: $fd
    and c                                         ; $60c3: $a1
    ld c, a                                       ; $60c4: $4f
    ld b, c                                       ; $60c5: $41
    dec hl                                        ; $60c6: $2b
    or [hl]                                       ; $60c7: $b6
    xor e                                         ; $60c8: $ab
    call c, $0196                                 ; $60c9: $dc $96 $01
    ld e, h                                       ; $60cc: $5c
    ld d, l                                       ; $60cd: $55
    rst $30                                       ; $60ce: $f7
    ld l, e                                       ; $60cf: $6b
    ld [hl], l                                    ; $60d0: $75
    ld d, [hl]                                    ; $60d1: $56
    ld l, h                                       ; $60d2: $6c
    dec e                                         ; $60d3: $1d

jr_02f_60d4:
    ld d, c                                       ; $60d4: $51
    xor $ca                                       ; $60d5: $ee $ca
    ld e, e                                       ; $60d7: $5b
    push af                                       ; $60d8: $f5
    dec [hl]                                      ; $60d9: $35
    and $61                                       ; $60da: $e6 $61
    xor h                                         ; $60dc: $ac
    ret c                                         ; $60dd: $d8

    ld a, [hl-]                                   ; $60de: $3a
    and d                                         ; $60df: $a2
    call c, Call_02f_5c95                         ; $60e0: $dc $95 $5c
    ld h, l                                       ; $60e3: $65
    jr jr_02f_60b1                                ; $60e4: $18 $cb

    sub $be                                       ; $60e6: $d6 $be
    halt                                          ; $60e8: $76
    cp l                                          ; $60e9: $bd
    xor d                                         ; $60ea: $aa
    ld [hl], c                                    ; $60eb: $71
    ld a, l                                       ; $60ec: $7d
    ld e, $6b                                     ; $60ed: $1e $6b
    inc l                                         ; $60ef: $2c
    ld a, [c]                                     ; $60f0: $f2
    dec e                                         ; $60f1: $1d
    dec d                                         ; $60f2: $15
    ld d, h                                       ; $60f3: $54
    ld c, a                                       ; $60f4: $4f
    and l                                         ; $60f5: $a5
    ld l, b                                       ; $60f6: $68
    call c, $ac7e                                 ; $60f7: $dc $7e $ac
    ld l, b                                       ; $60fa: $68
    dec d                                         ; $60fb: $15
    ld a, [$af43]                                 ; $60fc: $fa $43 $af
    dec a                                         ; $60ff: $3d
    ld [hl], h                                    ; $6100: $74
    ld e, c                                       ; $6101: $59
    xor a                                         ; $6102: $af
    xor d                                         ; $6103: $aa
    db $f4                                        ; $6104: $f4
    ld l, c                                       ; $6105: $69
    jp hl                                         ; $6106: $e9


    rst $30                                       ; $6107: $f7
    cpl                                           ; $6108: $2f
    jp nz, $bff7                                  ; $6109: $c2 $f7 $bf

    ld [$3d51], a                                 ; $610c: $ea $51 $3d
    inc l                                         ; $610f: $2c
    or l                                          ; $6110: $b5
    add a                                         ; $6111: $87
    xor $70                                       ; $6112: $ee $70
    db $e4                                        ; $6114: $e4
    ld a, [hl-]                                   ; $6115: $3a
    cp a                                          ; $6116: $bf
    ld e, [hl]                                    ; $6117: $5e

jr_02f_6118:
    push af                                       ; $6118: $f5
    jr nc, jr_02f_60d4                            ; $6119: $30 $b9

    ld c, $d6                                     ; $611b: $0e $d6
    dec l                                         ; $611d: $2d
    cp c                                          ; $611e: $b9
    ld l, d                                       ; $611f: $6a
    inc de                                        ; $6120: $13
    ld e, e                                       ; $6121: $5b
    and a                                         ; $6122: $a7
    ld e, $75                                     ; $6123: $1e $75
    jp z, $f5a9                                   ; $6125: $ca $a9 $f5

    ld a, [hl-]                                   ; $6128: $3a
    sbc l                                         ; $6129: $9d
    ld [hl], h                                    ; $612a: $74
    call c, $3c8e                                 ; $612b: $dc $8e $3c
    ld l, l                                       ; $612e: $6d
    rst $00                                       ; $612f: $c7
    inc e                                         ; $6130: $1c
    ld a, [hl]                                    ; $6131: $7e
    ld c, d                                       ; $6132: $4a
    rla                                           ; $6133: $17
    daa                                           ; $6134: $27
    sbc l                                         ; $6135: $9d
    sbc b                                         ; $6136: $98
    or a                                          ; $6137: $b7
    ld b, a                                       ; $6138: $47
    and b                                         ; $6139: $a0
    cp $a2                                        ; $613a: $fe $a2
    rlca                                          ; $613c: $07
    rst $08                                       ; $613d: $cf
    di                                            ; $613e: $f3
    ld a, h                                       ; $613f: $7c
    adc h                                         ; $6140: $8c
    cp [hl]                                       ; $6141: $be
    adc $1f                                       ; $6142: $ce $1f
    ld e, [hl]                                    ; $6144: $5e
    jr c, jr_02f_6118                             ; $6145: $38 $d1

    jr c, @-$6c                                   ; $6147: $38 $92

    and d                                         ; $6149: $a2
    ld e, [hl]                                    ; $614a: $5e
    push af                                       ; $614b: $f5
    ld [hl], b                                    ; $614c: $70
    sub a                                         ; $614d: $97
    sub [hl]                                      ; $614e: $96
    ld bc, $798d                                  ; $614f: $01 $8d $79
    db $10                                        ; $6152: $10
    ld h, e                                       ; $6153: $63
    ld e, [hl]                                    ; $6154: $5e
    adc l                                         ; $6155: $8d
    adc $cf                                       ; $6156: $ce $cf
    ld e, e                                       ; $6158: $5b
    push af                                       ; $6159: $f5
    dec [hl]                                      ; $615a: $35
    and $61                                       ; $615b: $e6 $61
    db $e4                                        ; $615d: $e4
    ld a, c                                       ; $615e: $79
    ld a, $6e                                     ; $615f: $3e $6e
    ccf                                           ; $6161: $3f
    ld d, [hl]                                    ; $6162: $56
    reti                                          ; $6163: $d9


    sbc d                                         ; $6164: $9a
    ld [hl], a                                    ; $6165: $77
    or c                                          ; $6166: $b1
    sub l                                         ; $6167: $95
    rst $20                                       ; $6168: $e7
    ld sp, hl                                     ; $6169: $f9
    or d                                          ; $616a: $b2
    or l                                          ; $616b: $b5
    ld [hl], d                                    ; $616c: $72
    scf                                           ; $616d: $37
    call z, $bcf3                                 ; $616e: $cc $f3 $bc
    dec b                                         ; $6171: $05
    add a                                         ; $6172: $87
    sub a                                         ; $6173: $97
    rst $20                                       ; $6174: $e7
    ld d, c                                       ; $6175: $51
    ld a, e                                       ; $6176: $7b
    ld l, b                                       ; $6177: $68
    dec bc                                        ; $6178: $0b
    push af                                       ; $6179: $f5
    dec [hl]                                      ; $617a: $35
    and $61                                       ; $617b: $e6 $61
    inc l                                         ; $617d: $2c
    inc bc                                        ; $617e: $03
    ld e, d                                       ; $617f: $5a
    or [hl]                                       ; $6180: $b6
    ld b, [hl]                                    ; $6181: $46
    xor b                                         ; $6182: $a8
    rra                                           ; $6183: $1f
    dec hl                                        ; $6184: $2b
    or [hl]                                       ; $6185: $b6
    db $eb                                        ; $6186: $eb
    ld b, c                                       ; $6187: $41
    and e                                         ; $6188: $a3
    ld [hl], c                                    ; $6189: $71

Jump_02f_618a:
    db $ed                                        ; $618a: $ed
    ld h, h                                       ; $618b: $64
    ld b, b                                       ; $618c: $40
    adc $91                                       ; $618d: $ce $91
    ld l, $76                                     ; $618f: $2e $76
    sbc $02                                       ; $6191: $de $02
    rst $00                                       ; $6193: $c7
    sbc l                                         ; $6194: $9d
    or b                                          ; $6195: $b0
    ld c, $47                                     ; $6196: $0e $47
    sbc l                                         ; $6198: $9d
    ret c                                         ; $6199: $d8

    add hl, hl                                    ; $619a: $29
    rst $18                                       ; $619b: $df
    add hl, bc                                    ; $619c: $09
    add a                                         ; $619d: $87
    xor a                                         ; $619e: $af
    db $e3                                        ; $619f: $e3
    ld [hl], c                                    ; $61a0: $71
    ld b, a                                       ; $61a1: $47
    sbc l                                         ; $61a2: $9d
    ld [hl], d                                    ; $61a3: $72
    jp z, Jump_000_3b51                           ; $61a4: $ca $51 $3b

    ld [$4ed4], a                                 ; $61a7: $ea $d4 $4e
    dec sp                                        ; $61aa: $3b
    ld a, [c]                                     ; $61ab: $f2
    ldh a, [rNR13]                                ; $61ac: $f0 $13
    ld c, a                                       ; $61ae: $4f
    db $dd                                        ; $61af: $dd
    xor c                                         ; $61b0: $a9
    add a                                         ; $61b1: $87
    xor a                                         ; $61b2: $af
    db $e3                                        ; $61b3: $e3
    ld c, c                                       ; $61b4: $49
    ld e, c                                       ; $61b5: $59
    rst $00                                       ; $61b6: $c7
    ld e, $95                                     ; $61b7: $1e $95
    or a                                          ; $61b9: $b7
    sbc l                                         ; $61ba: $9d
    ld c, [hl]                                    ; $61bb: $4e
    db $db                                        ; $61bc: $db
    jp hl                                         ; $61bd: $e9


    daa                                           ; $61be: $27
    dec e                                         ; $61bf: $1d
    ld [hl], a                                    ; $61c0: $77
    ld [$8eb2], a                                 ; $61c1: $ea $b2 $8e
    jp c, $a7c9                                   ; $61c4: $da $c9 $a7

    dec e                                         ; $61c7: $1d
    or l                                          ; $61c8: $b5
    ld a, [$ed47]                                 ; $61c9: $fa $47 $ed
    call nc, $8ed3                                ; $61cc: $d4 $d3 $8e
    dec sp                                        ; $61cf: $3b
    ld [hl], l                                    ; $61d0: $75
    ld b, a                                       ; $61d1: $47
    ld e, $75                                     ; $61d2: $1e $75
    ld a, [$2751]                                 ; $61d4: $fa $51 $27
    sbc [hl]                                      ; $61d7: $9e
    ld d, [hl]                                    ; $61d8: $56
    ld a, e                                       ; $61d9: $7b
    add sp, -$16                                  ; $61da: $e8 $ea
    rra                                           ; $61dc: $1f
    or l                                          ; $61dd: $b5
    inc de                                        ; $61de: $13
    adc a                                         ; $61df: $8f
    ld e, d                                       ; $61e0: $5a
    rst $00                                       ; $61e1: $c7
    ld d, e                                       ; $61e2: $53
    adc [hl]                                      ; $61e3: $8e
    ld a, [hl-]                                   ; $61e4: $3a
    pop af                                        ; $61e5: $f1
    ret z                                         ; $61e6: $c8

    ld d, e                                       ; $61e7: $53
    ld [hl], a                                    ; $61e8: $77
    db $f4                                        ; $61e9: $f4
    ld c, c                                       ; $61ea: $49
    and a                                         ; $61eb: $a7
    ld [hl], h                                    ; $61ec: $74
    jr c, jr_02f_6259                             ; $61ed: $38 $6a

    daa                                           ; $61ef: $27
    sbc a                                         ; $61f0: $9f
    halt                                          ; $61f1: $76
    ccf                                           ; $61f2: $3f
    ld [$75c4], a                                 ; $61f3: $ea $c4 $75
    inc a                                         ; $61f6: $3c
    db $fc                                        ; $61f7: $fc
    sub h                                         ; $61f8: $94
    ld c, [hl]                                    ; $61f9: $4e
    add a                                         ; $61fa: $87
    rra                                           ; $61fb: $1f
    ld [hl], e                                    ; $61fc: $73
    call nc, $27e1                                ; $61fd: $d4 $e1 $27
    halt                                          ; $6200: $76
    jp c, Jump_02f_4709                           ; $6201: $da $09 $47

    dec l                                         ; $6204: $2d
    db $eb                                        ; $6205: $eb
    and h                                         ; $6206: $a4
    ld d, e                                       ; $6207: $53
    ld a, [hl-]                                   ; $6208: $3a
    sbc [hl]                                      ; $6209: $9e
    cp d                                          ; $620a: $ba
    inc hl                                        ; $620b: $23
    adc a                                         ; $620c: $8f
    jp c, $a7c9                                   ; $620d: $da $c9 $a7

    dec e                                         ; $6210: $1d
    ld [hl], l                                    ; $6211: $75
    jp nz, $a7c9                                  ; $6212: $c2 $c9 $a7

    db $dd                                        ; $6215: $dd
    ld c, a                                       ; $6216: $4f
    dec sp                                        ; $6217: $3b
    ld [hl], c                                    ; $6218: $71
    ld b, a                                       ; $6219: $47
    sbc $0f                                       ; $621a: $de $0f
    ccf                                           ; $621c: $3f
    xor l                                         ; $621d: $ad
    db $d3                                        ; $621e: $d3
    add hl, hl                                    ; $621f: $29
    ld b, a                                       ; $6220: $47
    push hl                                       ; $6221: $e5
    db $eb                                        ; $6222: $eb
    ld [hl], b                                    ; $6223: $70
    ld hl, sp+$71                                 ; $6224: $f8 $71
    and a                                         ; $6226: $a7
    xor $84                                       ; $6227: $ee $84
    sub e                                         ; $6229: $93
    ld c, [hl]                                    ; $622a: $4e
    add hl, sp                                    ; $622b: $39
    push af                                       ; $622c: $f5
    db $e4                                        ; $622d: $e4
    db $d3                                        ; $622e: $d3
    adc [hl]                                      ; $622f: $8e
    ld e, d                                       ; $6230: $5a
    db $fd                                        ; $6231: $fd
    ei                                            ; $6232: $fb
    pop hl                                        ; $6233: $e1
    and a                                         ; $6234: $a7
    sbc l                                         ; $6235: $9d
    ld [hl], d                                    ; $6236: $72
    ld hl, sp+$71                                 ; $6237: $f8 $71
    dec sp                                        ; $6239: $3b
    ld a, [$23f0]                                 ; $623a: $fa $f0 $23
    ld c, [hl]                                    ; $623d: $4e
    add hl, sp                                    ; $623e: $39
    xor $e4                                       ; $623f: $ee $e4
    db $d3                                        ; $6241: $d3
    adc [hl]                                      ; $6242: $8e
    jp c, $f709                                   ; $6243: $da $09 $f7

    and e                                         ; $6246: $a3
    ld c, [hl]                                    ; $6247: $4e
    jr c, @-$10                                   ; $6248: $38 $ee

    call z, Call_02f_4ee3                         ; $624a: $cc $e3 $4e
    reti                                          ; $624d: $d9


    sub c                                         ; $624e: $91
    ld b, a                                       ; $624f: $47
    db $ed                                        ; $6250: $ed
    db $f4                                        ; $6251: $f4
    db $e3                                        ; $6252: $e3
    adc [hl]                                      ; $6253: $8e
    ld c, d                                       ; $6254: $4a
    xor [hl]                                      ; $6255: $ae
    cp $51                                        ; $6256: $fe $51
    db $eb                                        ; $6258: $eb

jr_02f_6259:
    ld a, b                                       ; $6259: $78
    jp nc, $a769                                  ; $625a: $d2 $69 $a7

    sbc h                                         ; $625d: $9c
    ld [hl], d                                    ; $625e: $72
    ld hl, sp+$71                                 ; $625f: $f8 $71
    dec sp                                        ; $6261: $3b
    push hl                                       ; $6262: $e5
    xor b                                         ; $6263: $a8
    xor h                                         ; $6264: $ac
    ld d, e                                       ; $6265: $53
    adc [hl]                                      ; $6266: $8e
    ld a, [hl-]                                   ; $6267: $3a
    ld [$9d94], a                                 ; $6268: $ea $94 $9d
    halt                                          ; $626b: $76
    ld [c], a                                     ; $626c: $e2
    or d                                          ; $626d: $b2
    ld c, [hl]                                    ; $626e: $4e
    ld a, [hl-]                                   ; $626f: $3a
    and l                                         ; $6270: $a5
    db $e3                                        ; $6271: $e3
    xor c                                         ; $6272: $a9
    dec sp                                        ; $6273: $3b
    ld sp, hl                                     ; $6274: $f9
    or h                                          ; $6275: $b4
    db $e3                                        ; $6276: $e3
    halt                                          ; $6277: $76
    ld [$a751], a                                 ; $6278: $ea $51 $a7
    inc e                                         ; $627b: $1c
    cp [hl]                                       ; $627c: $be
    inc hl                                        ; $627d: $23
    adc [hl]                                      ; $627e: $8e
    dec sp                                        ; $627f: $3b

Call_02f_6280:
    ld [$1dc4], a                                 ; $6280: $ea $c4 $1d
    cp [hl]                                       ; $6283: $be
    ld c, $27                                     ; $6284: $0e $27
    dec e                                         ; $6286: $1d
    sub a                                         ; $6287: $97
    rst $28                                       ; $6288: $ef
    ldh a, [rNR13]                                ; $6289: $f0 $13
    ld c, [hl]                                    ; $628b: $4e
    ld a, [hl-]                                   ; $628c: $3a
    push hl                                       ; $628d: $e5
    call nc, $791d                                ; $628e: $d4 $1d $79
    jp nc, Jump_000_2789                          ; $6291: $d2 $89 $27

    ld e, $55                                     ; $6294: $1e $55
    xor a                                         ; $6296: $af
    jp $c749                                      ; $6297: $c3 $49 $c7


    db $ed                                        ; $629a: $ed
    add h                                         ; $629b: $84
    jp $f1d7                                      ; $629c: $c3 $d7 $f1


    cp b                                          ; $629f: $b8
    and e                                         ; $62a0: $a3
    ld c, [hl]                                    ; $62a1: $4e
    add hl, sp                                    ; $62a2: $39
    push hl                                       ; $62a3: $e5
    xor b                                         ; $62a4: $a8
    sbc l                                         ; $62a5: $9d
    ld [hl], h                                    ; $62a6: $74
    jp c, $9d3a                                   ; $62a7: $da $3a $9d

    or [hl]                                       ; $62aa: $b6
    ld c, $27                                     ; $62ab: $0e $27
    sbc l                                         ; $62ad: $9d
    halt                                          ; $62ae: $76
    jp z, $8729                                   ; $62af: $ca $29 $87

    sbc a                                         ; $62b2: $9f
    cp d                                          ; $62b3: $ba
    and e                                         ; $62b4: $a3
    ld c, [hl]                                    ; $62b5: $4e
    ld e, h                                       ; $62b6: $5c
    add a                                         ; $62b7: $87

Call_02f_62b8:
Jump_02f_62b8:
    and e                                         ; $62b8: $a3
    halt                                          ; $62b9: $76
    ld [$1d69], a                                 ; $62ba: $ea $69 $1d
    dec sp                                        ; $62bd: $3b
    sbc [hl]                                      ; $62be: $9e
    ld [hl], b                                    ; $62bf: $70
    call c, $27e1                                 ; $62c0: $dc $e1 $27
    halt                                          ; $62c3: $76
    jp c, Jump_02f_4791                           ; $62c4: $da $91 $47

    db $ed                                        ; $62c7: $ed
    add sp, -$3d                                  ; $62c8: $e8 $c3
    adc a                                         ; $62ca: $8f
    dec sp                                        ; $62cb: $3b
    push hl                                       ; $62cc: $e5
    xor b                                         ; $62cd: $a8
    dec e                                         ; $62ce: $1d
    ld [hl], e                                    ; $62cf: $73
    ld c, d                                       ; $62d0: $4a
    ld l, a                                       ; $62d1: $6f
    ld e, c                                       ; $62d2: $59
    ld b, a                                       ; $62d3: $47
    push hl                                       ; $62d4: $e5
    ld a, c                                       ; $62d5: $79
    cp [hl]                                       ; $62d6: $be
    ld c, [hl]                                    ; $62d7: $4e
    daa                                           ; $62d8: $27
    sbc l                                         ; $62d9: $9d
    sub $69                                       ; $62da: $d6 $69
    ld e, c                                       ; $62dc: $59
    daa                                           ; $62dd: $27
    ld [hl], l                                    ; $62de: $75
    add sp, $70                                   ; $62df: $e8 $70
    call nc, Call_000_1d3a                        ; $62e1: $d4 $3a $1d
    ld [hl], l                                    ; $62e4: $75
    ld [$1e3a], a                                 ; $62e5: $ea $3a $1e
    ld a, [hl]                                    ; $62e8: $7e
    jp z, $2751                                   ; $62e9: $ca $51 $27

    halt                                          ; $62ec: $76
    ld a, [hl-]                                   ; $62ed: $3a
    dec [hl]                                      ; $62ee: $35
    ld l, a                                       ; $62ef: $6f
    ld bc, $f41d                                  ; $62f0: $01 $1d $f4
    ld c, c                                       ; $62f3: $49
    ldh [$b5], a                                  ; $62f4: $e0 $b5
    adc c                                         ; $62f6: $89
    dec l                                         ; $62f7: $2d
    ld b, a                                       ; $62f8: $47
    cp h                                          ; $62f9: $bc
    sbc a                                         ; $62fa: $9f
    db $fd                                        ; $62fb: $fd

Jump_02f_62fc:
    ret nz                                        ; $62fc: $c0

    sub e                                         ; $62fd: $93
    dec sp                                        ; $62fe: $3b
    sub $dc                                       ; $62ff: $d6 $dc
    ld l, e                                       ; $6301: $6b
    ld a, [c]                                     ; $6302: $f2
    ld d, $27                                     ; $6303: $16 $27
    ret c                                         ; $6305: $d8

    ld a, [hl-]                                   ; $6306: $3a
    and d                                         ; $6307: $a2
    call c, $9b55                                 ; $6308: $dc $55 $9b
    cp b                                          ; $630b: $b8
    xor h                                         ; $630c: $ac
    cp e                                          ; $630d: $bb
    add d                                         ; $630e: $82

Jump_02f_630f:
    halt                                          ; $630f: $76
    ld [hl-], a                                   ; $6310: $32
    and b                                         ; $6311: $a0
    cp e                                          ; $6312: $bb
    ld c, d                                       ; $6313: $4a
    ld e, c                                       ; $6314: $59
    ld b, $70                                     ; $6315: $06 $70
    push hl                                       ; $6317: $e5
    ld l, [hl]                                    ; $6318: $6e
    or l                                          ; $6319: $b5
    adc c                                         ; $631a: $89
    dec l                                         ; $631b: $2d
    daa                                           ; $631c: $27
    cp [hl]                                       ; $631d: $be
    sbc a                                         ; $631e: $9f
    ld e, h                                       ; $631f: $5c
    or [hl]                                       ; $6320: $b6
    ld d, $80                                     ; $6321: $16 $80
    ld sp, $4773                                  ; $6323: $31 $73 $47
    and $b6                                       ; $6326: $e6 $b6
    ld a, [hl-]                                   ; $6328: $3a
    inc hl                                        ; $6329: $23
    ld d, l                                       ; $632a: $55
    ld c, l                                       ; $632b: $4d
    xor h                                         ; $632c: $ac
    ld a, c                                       ; $632d: $79
    ldh [$2b], a                                  ; $632e: $e0 $2b
    ld [hl], a                                    ; $6330: $77
    db $fd                                        ; $6331: $fd
    xor c                                         ; $6332: $a9
    ld l, d                                       ; $6333: $6a

jr_02f_6334:
    cp d                                          ; $6334: $ba
    cp [hl]                                       ; $6335: $be
    ret c                                         ; $6336: $d8

    ld a, [c]                                     ; $6337: $f2
    db $e4                                        ; $6338: $e4
    ld d, d                                       ; $6339: $52
    xor b                                         ; $633a: $a8
    cp a                                          ; $633b: $bf
    inc c                                         ; $633c: $0c
    ld l, b                                       ; $633d: $68
    inc b                                         ; $633e: $04
    inc hl                                        ; $633f: $23
    adc l                                         ; $6340: $8d
    rst $18                                       ; $6341: $df
    ld d, d                                       ; $6342: $52
    cp $00                                        ; $6343: $fe $00
    ld c, e                                       ; $6345: $4b
    ld d, c                                       ; $6346: $51
    adc h                                         ; $6347: $8c
    cp h                                          ; $6348: $bc
    ld l, [hl]                                    ; $6349: $6e
    inc l                                         ; $634a: $2c
    add l                                         ; $634b: $85
    ld a, [$07a3]                                 ; $634c: $fa $a3 $07
    or h                                          ; $634f: $b4
    db $10                                        ; $6350: $10
    sub h                                         ; $6351: $94
    cp h                                          ; $6352: $bc
    dec b                                         ; $6353: $05
    push af                                       ; $6354: $f5
    dec [hl]                                      ; $6355: $35
    and $01                                       ; $6356: $e6 $01
    ld [hl], a                                    ; $6358: $77
    jp $f318                                      ; $6359: $c3 $18 $f3


    jr nz, jr_02f_6334                            ; $635c: $20 $d6

    cp h                                          ; $635e: $bc
    sub b                                         ; $635f: $90
    cpl                                           ; $6360: $2f
    inc bc                                        ; $6361: $03
    ld a, [hl+]                                   ; $6362: $2a
    add hl, de                                    ; $6363: $19
    ld d, b                                       ; $6364: $50
    inc l                                         ; $6365: $2c
    inc bc                                        ; $6366: $03
    ld a, [bc]                                    ; $6367: $0a
    jp nz, Jump_000_23f7                          ; $6368: $c2 $f7 $23

    rst $18                                       ; $636b: $df
    ld d, c                                       ; $636c: $51
    ld b, c                                       ; $636d: $41
    push af                                       ; $636e: $f5
    ld l, $2d                                     ; $636f: $2e $2d
    inc bc                                        ; $6371: $03
    jp c, $afe9                                   ; $6372: $da $e9 $af

    ld [hl], b                                    ; $6375: $70
    ld d, l                                       ; $6376: $55
    rst $08                                       ; $6377: $cf
    ld l, c                                       ; $6378: $69
    ld a, [bc]                                    ; $6379: $0a
    ld e, d                                       ; $637a: $5a
    push af                                       ; $637b: $f5
    sbc h                                         ; $637c: $9c
    ld l, d                                       ; $637d: $6a
    rrca                                          ; $637e: $0f

Jump_02f_637f:
    ld l, l                                       ; $637f: $6d
    ld bc, $be27                                  ; $6380: $01 $27 $be
    sbc a                                         ; $6383: $9f
    call c, $aaf5                                 ; $6384: $dc $f5 $aa
    ld c, d                                       ; $6387: $4a
    jp Jump_02f_7fb2                              ; $6388: $c3 $b2 $7f


    ld d, a                                       ; $638b: $57
    ret nc                                        ; $638c: $d0

    ld a, [de]                                    ; $638d: $1a
    adc e                                         ; $638e: $8b
    ld sp, $586e                                  ; $638f: $31 $6e $58
    jp hl                                         ; $6392: $e9


    db $d3                                        ; $6393: $d3
    jr jr_02f_63fa                                ; $6394: $18 $64

    db $ec                                        ; $6396: $ec
    ld d, e                                       ; $6397: $53
    ld [hl], d                                    ; $6398: $72
    ld e, b                                       ; $6399: $58
    or $b5                                        ; $639a: $f6 $b5
    ld b, [hl]                                    ; $639c: $46
    ld b, b                                       ; $639d: $40
    ld l, e                                       ; $639e: $6b
    inc l                                         ; $639f: $2c
    sub $35                                       ; $63a0: $d6 $35
    cp c                                          ; $63a2: $b9
    ld b, [hl]                                    ; $63a3: $46
    ld [hl], b                                    ; $63a4: $70
    bit 6, a                                      ; $63a5: $cb $77
    ld e, h                                       ; $63a7: $5c
    sbc c                                         ; $63a8: $99
    add d                                         ; $63a9: $82
    ld b, [hl]                                    ; $63aa: $46
    rrca                                          ; $63ab: $0f
    or d                                          ; $63ac: $b2
    rra                                           ; $63ad: $1f
    ld a, b                                       ; $63ae: $78
    inc l                                         ; $63af: $2c
    inc bc                                        ; $63b0: $03
    ld a, [hl+]                                   ; $63b1: $2a
    add hl, de                                    ; $63b2: $19
    ret nc                                        ; $63b3: $d0

    ld a, [de]                                    ; $63b4: $1a
    ld [hl], e                                    ; $63b5: $73
    jp z, $bcf3                                   ; $63b6: $ca $f3 $bc

    dec b                                         ; $63b9: $05
    ld b, a                                       ; $63ba: $47
    pop de                                        ; $63bb: $d1
    adc d                                         ; $63bc: $8a
    db $ed                                        ; $63bd: $ed
    or d                                          ; $63be: $b2

Jump_02f_63bf:
    ld b, [hl]                                    ; $63bf: $46
    db $e3                                        ; $63c0: $e3
    ld [hl], a                                    ; $63c1: $77
    db $fc                                        ; $63c2: $fc
    inc c                                         ; $63c3: $0c
    ld b, $a6                                     ; $63c4: $06 $a6
    or b                                          ; $63c6: $b0
    jr nz, @-$21                                  ; $63c7: $20 $dd

    sub d                                         ; $63c9: $92
    ld h, e                                       ; $63ca: $63
    ld e, $c4                                     ; $63cb: $1e $c4
    jp nz, $9d18                                  ; $63cd: $c2 $18 $9d

    cp a                                          ; $63d0: $bf
    inc c                                         ; $63d1: $0c
    ldh [$2a], a                                  ; $63d2: $e0 $2a
    xor l                                         ; $63d4: $ad
    call c, $fa6d                                 ; $63d5: $dc $6d $fa
    call z, $b9ab                                 ; $63d8: $cc $ab $b9
    xor c                                         ; $63db: $a9
    or $d0                                        ; $63dc: $f6 $d0
    ld d, $9d                                     ; $63de: $16 $9d
    sbc $5f                                       ; $63e0: $de $5f
    ld d, e                                       ; $63e2: $53
    rst $10                                       ; $63e3: $d7
    or l                                          ; $63e4: $b5
    ld c, d                                       ; $63e5: $4a
    dec hl                                        ; $63e6: $2b
    ld [hl], a                                    ; $63e7: $77
    ld h, e                                       ; $63e8: $63
    inc c                                         ; $63e9: $0c
    ld l, c                                       ; $63ea: $69
    rst $10                                       ; $63eb: $d7
    ei                                            ; $63ec: $fb
    ld l, c                                       ; $63ed: $69
    cp h                                          ; $63ee: $bc
    add hl, hl                                    ; $63ef: $29
    cp c                                          ; $63f0: $b9
    db $ec                                        ; $63f1: $ec
    cp e                                          ; $63f2: $bb
    pop hl                                        ; $63f3: $e1
    ld a, [de]                                    ; $63f4: $1a
    db $fd                                        ; $63f5: $fd
    cp b                                          ; $63f6: $b8
    dec l                                         ; $63f7: $2d
    inc bc                                        ; $63f8: $03
    ld a, [de]                                    ; $63f9: $1a

jr_02f_63fa:
    pop bc                                        ; $63fa: $c1
    inc c                                         ; $63fb: $0c
    dec hl                                        ; $63fc: $2b
    cp c                                          ; $63fd: $b9
    ld h, c                                       ; $63fe: $61
    xor h                                         ; $63ff: $ac
    call c, Call_02f_798d                         ; $6400: $dc $8d $79
    add sp, $79                                   ; $6403: $e8 $79
    dec bc                                        ; $6405: $0b
    push af                                       ; $6406: $f5
    rst $28                                       ; $6407: $ef
    add [hl]                                      ; $6408: $86
    db $d3                                        ; $6409: $d3
    cp a                                          ; $640a: $bf
    sbc [hl]                                      ; $640b: $9e
    ld l, e                                       ; $640c: $6b
    ldh a, [$b5]                                  ; $640d: $f0 $b5
    inc c                                         ; $640f: $0c
    jr z, @+$0a                                   ; $6410: $28 $08

    rst $18                                       ; $6412: $df
    rst $08                                       ; $6413: $cf
    di                                            ; $6414: $f3
    cp h                                          ; $6415: $bc
    dec b                                         ; $6416: $05
    and a                                         ; $6417: $a7
    ld e, e                                       ; $6418: $5b
    call nc, $c9ab                                ; $6419: $d4 $ab $c9
    ld e, e                                       ; $641c: $5b
    dec e                                         ; $641d: $1d
    rra                                           ; $641e: $1f
    ld a, b                                       ; $641f: $78
    ld b, $1e                                     ; $6420: $06 $1e
    xor [hl]                                      ; $6422: $ae
    ld l, b                                       ; $6423: $68
    adc l                                         ; $6424: $8d
    cp a                                          ; $6425: $bf
    or h                                          ; $6426: $b4
    ld [hl+], a                                   ; $6427: $22
    inc b                                         ; $6428: $04
    cp [hl]                                       ; $6429: $be
    ld d, e                                       ; $642a: $53
    ld e, $0b                                     ; $642b: $1e $0b
    or h                                          ; $642d: $b4
    ld d, b                                       ; $642e: $50
    sub l                                         ; $642f: $95
    ld a, [hl+]                                   ; $6430: $2a
    xor d                                         ; $6431: $aa
    ld b, a                                       ; $6432: $47
    push af                                       ; $6433: $f5
    or b                                          ; $6434: $b0
    xor h                                         ; $6435: $ac
    jp nc, $8df8                                  ; $6436: $d2 $f8 $8d

    inc d                                         ; $6439: $14
    inc h                                         ; $643a: $24
    xor a                                         ; $643b: $af
    dec a                                         ; $643c: $3d
    or h                                          ; $643d: $b4
    dec b                                         ; $643e: $05
    sbc l                                         ; $643f: $9d
    sbc $5f                                       ; $6440: $de $5f
    ld d, e                                       ; $6442: $53
    rst $10                                       ; $6443: $d7
    or l                                          ; $6444: $b5
    ld [bc], a                                    ; $6445: $02
    jr c, jr_02f_64a3                             ; $6446: $38 $5b

    jr @+$32                                      ; $6448: $18 $30

    or a                                          ; $644a: $b7
    dec d                                         ; $644b: $15
    dec de                                        ; $644c: $1b
    add e                                         ; $644d: $83
    sbc d                                         ; $644e: $9a
    ld l, b                                       ; $644f: $68
    ld e, b                                       ; $6450: $58
    ld h, [hl]                                    ; $6451: $66
    ld h, e                                       ; $6452: $63
    ccf                                           ; $6453: $3f
    ld [hl], a                                    ; $6454: $77
    add c                                         ; $6455: $81
    adc a                                         ; $6456: $8f
    ld l, e                                       ; $6457: $6b
    sub a                                         ; $6458: $97
    adc b                                         ; $6459: $88
    inc [hl]                                      ; $645a: $34
    ld l, $22                                     ; $645b: $2e $22
    push hl                                       ; $645d: $e5
    xor e                                         ; $645e: $ab
    xor a                                         ; $645f: $af
    ld e, l                                       ; $6460: $5d
    cp $30                                        ; $6461: $fe $30
    sub [hl]                                      ; $6463: $96
    ld bc, $baed                                  ; $6464: $01 $ed $ba
    dec hl                                        ; $6467: $2b
    ld l, b                                       ; $6468: $68
    push bc                                       ; $6469: $c5
    and $86                                       ; $646a: $e6 $86
    pop af                                        ; $646c: $f1
    cp $9a                                        ; $646d: $fe $9a
    rlca                                          ; $646f: $07
    cp [hl]                                       ; $6470: $be
    ld h, d                                       ; $6471: $62
    add hl, de                                    ; $6472: $19
    ld d, b                                       ; $6473: $50
    add hl, hl                                    ; $6474: $29
    ld a, [de]                                    ; $6475: $1a
    sub [hl]                                      ; $6476: $96
    pop de                                        ; $6477: $d1
    db $dd                                        ; $6478: $dd
    sub $f8                                       ; $6479: $d6 $f8
    and e                                         ; $647b: $a3
    dec de                                        ; $647c: $1b
    db $eb                                        ; $647d: $eb
    sub [hl]                                      ; $647e: $96
    rst $28                                       ; $647f: $ef
    cp b                                          ; $6480: $b8
    ld [hl-], a                                   ; $6481: $32
    ld e, e                                       ; $6482: $5b
    and e                                         ; $6483: $a3
    rra                                           ; $6484: $1f
    or a                                          ; $6485: $b7
    ld h, l                                       ; $6486: $65
    ld b, b                                       ; $6487: $40
    and e                                         ; $6488: $a3
    rst $30                                       ; $6489: $f7
    rst $10                                       ; $648a: $d7
    call nc, Call_02f_4d75                        ; $648b: $d4 $75 $4d
    or h                                          ; $648e: $b4
    ld [bc], a                                    ; $648f: $02
    cp b                                          ; $6490: $b8
    sub b                                         ; $6491: $90
    dec de                                        ; $6492: $1b
    ld [$32d3], a                                 ; $6493: $ea $d3 $32
    add b                                         ; $6496: $80
    ld b, h                                       ; $6497: $44
    adc d                                         ; $6498: $8a
    cp h                                          ; $6499: $bc
    dec b                                         ; $649a: $05
    ld e, c                                       ; $649b: $59
    xor a                                         ; $649c: $af
    xor d                                         ; $649d: $aa
    db $f4                                        ; $649e: $f4
    ld l, c                                       ; $649f: $69
    and c                                         ; $64a0: $a1
    and l                                         ; $64a1: $a5
    dec c                                         ; $64a2: $0d

jr_02f_64a3:
    xor c                                         ; $64a3: $a9
    ld e, $96                                     ; $64a4: $1e $96
    ld h, l                                       ; $64a6: $65
    ld b, b                                       ; $64a7: $40
    res 7, [hl]                                   ; $64a8: $cb $be
    dec de                                        ; $64aa: $1b
    ld l, d                                       ; $64ab: $6a
    dec c                                         ; $64ac: $0d
    inc l                                         ; $64ad: $2c
    sbc [hl]                                      ; $64ae: $9e
    inc de                                        ; $64af: $13
    ld a, [$ad8a]                                 ; $64b0: $fa $8a $ad
    inc hl                                        ; $64b3: $23
    jp z, $e35d                                   ; $64b4: $ca $5d $e3

    or b                                          ; $64b7: $b0
    ld a, [bc]                                    ; $64b8: $0a
    db $fd                                        ; $64b9: $fd
    and c                                         ; $64ba: $a1
    rst $10                                       ; $64bb: $d7
    ld e, $da                                     ; $64bc: $1e $da
    ld [bc], a                                    ; $64be: $02
    push af                                       ; $64bf: $f5
    rst $28                                       ; $64c0: $ef
    add [hl]                                      ; $64c1: $86
    db $d3                                        ; $64c2: $d3
    adc a                                         ; $64c3: $8f
    rst $20                                       ; $64c4: $e7
    sub a                                         ; $64c5: $97
    jp z, Jump_02f_456d                           ; $64c6: $ca $6d $45

    xor e                                         ; $64c9: $ab
    ret nc                                        ; $64ca: $d0

    rra                                           ; $64cb: $1f
    ld a, [$079a]                                 ; $64cc: $fa $9a $07
    cp [hl]                                       ; $64cf: $be
    inc c                                         ; $64d0: $0c
    ld l, b                                       ; $64d1: $68
    ld hl, $bb28                                  ; $64d2: $21 $28 $bb
    ld d, h                                       ; $64d5: $54
    nop                                           ; $64d6: $00
    sub a                                         ; $64d7: $97
    ld bc, $bf1c                                  ; $64d8: $01 $1c $bf
    dec b                                         ; $64db: $05
    cp d                                          ; $64dc: $ba
    ld hl, $fc8d                                  ; $64dd: $21 $8d $fc
    ld bc, $5f23                                  ; $64e0: $01 $23 $5f
    or c                                          ; $64e3: $b1
    ld [hl], l                                    ; $64e4: $75
    ld b, h                                       ; $64e5: $44
    cp c                                          ; $64e6: $b9
    ld l, e                                       ; $64e7: $6b
    push af                                       ; $64e8: $f5
    ld d, [hl]                                    ; $64e9: $56
    ld l, h                                       ; $64ea: $6c
    db $e4                                        ; $64eb: $e4
    rrca                                          ; $64ec: $0f
    jr jr_02f_6568                                ; $64ed: $18 $79

    ld [hl], d                                    ; $64ef: $72
    adc l                                         ; $64f0: $8d
    push bc                                       ; $64f1: $c5
    ld [c], a                                     ; $64f2: $e2
    xor [hl]                                      ; $64f3: $ae
    cp a                                          ; $64f4: $bf
    sub b                                         ; $64f5: $90
    inc sp                                        ; $64f6: $33
    add sp, -$55                                  ; $64f7: $e8 $ab

jr_02f_64f9:
    or a                                          ; $64f9: $b7
    and $81                                       ; $64fa: $e6 $81
    cp e                                          ; $64fc: $bb
    ld hl, $d8ad                                  ; $64fd: $21 $ad $d8
    ld a, [de]                                    ; $6500: $1a
    rst $10                                       ; $6501: $d7
    rst $20                                       ; $6502: $e7
    xor [hl]                                      ; $6503: $ae
    ld a, h                                       ; $6504: $7c
    dec e                                         ; $6505: $1d
    inc c                                         ; $6506: $0c
    ccf                                           ; $6507: $3f
    jp hl                                         ; $6508: $e9


    db $db                                        ; $6509: $db
    and a                                         ; $650a: $a7
    dec e                                         ; $650b: $1d
    ld l, e                                       ; $650c: $6b
    xor $35                                       ; $650d: $ee $35
    ret                                           ; $650f: $c9


    ld h, c                                       ; $6510: $61
    ld e, c                                       ; $6511: $59
    jp c, $9680                                   ; $6512: $da $80 $96

    ld bc, $608d                                  ; $6515: $01 $8d $60
    and h                                         ; $6518: $a4
    cp c                                          ; $6519: $b9
    sbc d                                         ; $651a: $9a
    rla                                           ; $651b: $17
    adc d                                         ; $651c: $8a
    ld a, h                                       ; $651d: $7c
    sbc l                                         ; $651e: $9d
    ld h, b                                       ; $651f: $60
    db $fc                                        ; $6520: $fc
    ld h, c                                       ; $6521: $61
    xor h                                         ; $6522: $ac
    ld l, e                                       ; $6523: $6b
    ld [hl], d                                    ; $6524: $72
    ld c, l                                       ; $6525: $4d
    ld a, a                                       ; $6526: $7f
    jp hl                                         ; $6527: $e9


    rst $20                                       ; $6528: $e7
    sub l                                         ; $6529: $95
    sub $3c                                       ; $652a: $d6 $3c
    ldh a, [$15]                                  ; $652c: $f0 $15
    dec l                                         ; $652e: $2d
    ld h, l                                       ; $652f: $65
    ccf                                           ; $6530: $3f
    inc bc                                        ; $6531: $03
    and d                                         ; $6532: $a2
    ld [hl], c                                    ; $6533: $71
    dec l                                         ; $6534: $2d
    adc l                                         ; $6535: $8d
    ld a, a                                       ; $6536: $7f
    db $fc                                        ; $6537: $fc
    ld l, [hl]                                    ; $6538: $6e
    rst $38                                       ; $6539: $ff
    rst $18                                       ; $653a: $df
    sub h                                         ; $653b: $94
    or a                                          ; $653c: $b7
    add a                                         ; $653d: $87
    inc sp                                        ; $653e: $33
    or $69                                        ; $653f: $f6 $69
    add hl, de                                    ; $6541: $19
    ret nc                                        ; $6542: $d0

    adc d                                         ; $6543: $8a
    sub [hl]                                      ; $6544: $96
    or d                                          ; $6545: $b2
    sbc a                                         ; $6546: $9f
    ld bc, $aed1                                  ; $6547: $01 $d1 $ae
    ld d, a                                       ; $654a: $57
    ld d, l                                       ; $654b: $55
    ld a, [$9297]                                 ; $654c: $fa $97 $92
    dec hl                                        ; $654f: $2b
    ld e, d                                       ; $6550: $5a
    push af                                       ; $6551: $f5
    ld a, [hl+]                                   ; $6552: $2a
    ld a, l                                       ; $6553: $7d
    sbc d                                         ; $6554: $9a
    add d                                         ; $6555: $82
    add $e8                                       ; $6556: $c6 $e8
    jp $c6b8                                      ; $6558: $c3 $b8 $c6


    ld l, a                                       ; $655b: $6f
    sub a                                         ; $655c: $97
    db $fc                                        ; $655d: $fc
    bit 2, a                                      ; $655e: $cb $57
    ld l, h                                       ; $6560: $6c
    rst $10                                       ; $6561: $d7
    add e                                         ; $6562: $83
    ld b, [hl]                                    ; $6563: $46
    db $e3                                        ; $6564: $e3
    adc d                                         ; $6565: $8a
    sbc l                                         ; $6566: $9d
    inc c                                         ; $6567: $0c

jr_02f_6568:
    ld b, [hl]                                    ; $6568: $46
    xor [hl]                                      ; $6569: $ae
    ld [hl], l                                    ; $656a: $75
    jr nc, jr_02f_64f9                            ; $656b: $30 $8c

    rst $30                                       ; $656d: $f7
    inc hl                                        ; $656e: $23
    rst $18                                       ; $656f: $df
    ld [hl], c                                    ; $6570: $71
    ld h, l                                       ; $6571: $65
    rst $10                                       ; $6572: $d7
    ei                                            ; $6573: $fb
    inc c                                         ; $6574: $0c
    ld [$2ed3], a                                 ; $6575: $ea $d3 $2e
    dec [hl]                                      ; $6578: $35
    ld a, [$3edc]                                 ; $6579: $fa $dc $3e
    adc l                                         ; $657c: $8d
    ld l, e                                       ; $657d: $6b
    adc l                                         ; $657e: $8d
    db $eb                                        ; $657f: $eb
    ld [hl], e                                    ; $6580: $73
    rst $10                                       ; $6581: $d7
    db $f4                                        ; $6582: $f4
    ld [hl], a                                    ; $6583: $77
    cp l                                          ; $6584: $bd
    xor d                                         ; $6585: $aa
    ld hl, $28ad                                  ; $6586: $21 $ad $28
    halt                                          ; $6589: $76
    ld h, e                                       ; $658a: $63
    ld l, [hl]                                    ; $658b: $6e
    ld e, a                                       ; $658c: $5f
    sub l                                         ; $658d: $95
    ld a, $c5                                     ; $658e: $3e $c5
    db $fc                                        ; $6590: $fc
    halt                                          ; $6591: $76
    jp hl                                         ; $6592: $e9


    ld d, e                                       ; $6593: $53
    ld c, h                                       ; $6594: $4c
    inc [hl]                                      ; $6595: $34
    ld a, [hl]                                    ; $6596: $7e

jr_02f_6597:
    scf                                           ; $6597: $37
    ld [hl+], a                                   ; $6598: $22
    rst $00                                       ; $6599: $c7
    inc d                                         ; $659a: $14
    ret z                                         ; $659b: $c8

    rst $00                                       ; $659c: $c7
    dec d                                         ; $659d: $15
    ld l, e                                       ; $659e: $6b
    ld e, $7e                                     ; $659f: $1e $7e
    adc d                                         ; $65a1: $8a
    add hl, de                                    ; $65a2: $19
    ld [hl], h                                    ; $65a3: $74
    ld e, [hl]                                    ; $65a4: $5e
    ld h, l                                       ; $65a5: $65
    jr jr_02f_6597                                ; $65a6: $18 $ef

    ld b, a                                       ; $65a8: $47
    sbc $02                                       ; $65a9: $de $02
    add a                                         ; $65ab: $87
    inc sp                                        ; $65ac: $33
    or $69                                        ; $65ad: $f6 $69
    ld e, h                                       ; $65af: $5c
    cp e                                          ; $65b0: $bb
    ld e, [hl]                                    ; $65b1: $5e
    ld d, l                                       ; $65b2: $55
    jp hl                                         ; $65b3: $e9


    ld e, a                                       ; $65b4: $5f
    ld a, [c]                                     ; $65b5: $f2
    dec d                                         ; $65b6: $15
    dec l                                         ; $65b7: $2d
    ld h, l                                       ; $65b8: $65
    ccf                                           ; $65b9: $3f
    inc bc                                        ; $65ba: $03
    and d                                         ; $65bb: $a2
    db $e4                                        ; $65bc: $e4
    or b                                          ; $65bd: $b0
    inc l                                         ; $65be: $2c
    ld l, l                                       ; $65bf: $6d
    ld b, b                                       ; $65c0: $40
    xor e                                         ; $65c1: $ab
    or e                                          ; $65c2: $b3
    add $6f                                       ; $65c3: $c6 $6f
    and c                                         ; $65c5: $a1
    ld c, a                                       ; $65c6: $4f
    db $e3                                        ; $65c7: $e3
    or a                                          ; $65c8: $b7
    ld c, e                                       ; $65c9: $4b
    cp $e5                                        ; $65ca: $fe $e5
    dec hl                                        ; $65cc: $2b
    or [hl]                                       ; $65cd: $b6
    db $eb                                        ; $65ce: $eb
    ld b, c                                       ; $65cf: $41
    and e                                         ; $65d0: $a3
    ld [hl], c                                    ; $65d1: $71
    push bc                                       ; $65d2: $c5
    ld c, [hl]                                    ; $65d3: $4e
    ld b, $23                                     ; $65d4: $06 $23
    rst $10                                       ; $65d6: $d7
    ld a, [hl-]                                   ; $65d7: $3a
    jr @-$38                                      ; $65d8: $18 $c6

    ei                                            ; $65da: $fb
    sub c                                         ; $65db: $91
    rst $28                                       ; $65dc: $ef
    ld d, h                                       ; $65dd: $54
    ld a, c                                       ; $65de: $79
    and e                                         ; $65df: $a3
    ld c, a                                       ; $65e0: $4f
    and $7c                                       ; $65e1: $e6 $7c
    ld a, [bc]                                    ; $65e3: $0a
    sbc d                                         ; $65e4: $9a
    cp $a8                                        ; $65e5: $fe $a8
    ld l, e                                       ; $65e7: $6b
    jp nc, Jump_000_079a                          ; $65e8: $d2 $9a $07

    cp [hl]                                       ; $65eb: $be
    and d                                         ; $65ec: $a2
    ld d, l                                       ; $65ed: $55
    xor a                                         ; $65ee: $af
    jp nc, Jump_02f_7ca7                          ; $65ef: $d2 $a7 $7c

    rst $00                                       ; $65f2: $c7
    sub l                                         ; $65f3: $95
    ld e, l                                       ; $65f4: $5d
    rst $28                                       ; $65f5: $ef
    inc sp                                        ; $65f6: $33
    xor b                                         ; $65f7: $a8
    ld c, a                                       ; $65f8: $4f
    cp e                                          ; $65f9: $bb
    call nc, Call_02f_73e8                        ; $65fa: $d4 $e8 $73
    ei                                            ; $65fd: $fb
    inc [hl]                                      ; $65fe: $34
    xor [hl]                                      ; $65ff: $ae
    dec [hl]                                      ; $6600: $35
    xor [hl]                                      ; $6601: $ae
    rst $08                                       ; $6602: $cf
    ld e, l                                       ; $6603: $5d
    db $d3                                        ; $6604: $d3
    rst $18                                       ; $6605: $df
    push af                                       ; $6606: $f5
    xor d                                         ; $6607: $aa
    add [hl]                                      ; $6608: $86
    or h                                          ; $6609: $b4
    and d                                         ; $660a: $a2
    ret c                                         ; $660b: $d8

    adc l                                         ; $660c: $8d
    cp c                                          ; $660d: $b9
    ld a, l                                       ; $660e: $7d
    ld d, l                                       ; $660f: $55
    ld a, [$f314]                                 ; $6610: $fa $14 $f3
    db $db                                        ; $6613: $db
    and l                                         ; $6614: $a5
    ld c, a                                       ; $6615: $4f
    ld sp, $f8d1                                  ; $6616: $31 $d1 $f8
    db $dd                                        ; $6619: $dd
    adc b                                         ; $661a: $88
    inc e                                         ; $661b: $1c
    ld d, e                                       ; $661c: $53
    jr nz, jr_02f_663e                            ; $661d: $20 $1f

    ld d, a                                       ; $661f: $57
    xor h                                         ; $6620: $ac
    ld a, c                                       ; $6621: $79
    ld hl, sp+$29                                 ; $6622: $f8 $29
    ld d, [hl]                                    ; $6624: $56
    ld h, a                                       ; $6625: $67
    sub a                                         ; $6626: $97
    and b                                         ; $6627: $a0
    di                                            ; $6628: $f3
    ld [hl-], a                                   ; $6629: $32
    add b                                         ; $662a: $80
    dec hl                                        ; $662b: $2b
    ld e, d                                       ; $662c: $5a
    ld [hl], l                                    ; $662d: $75
    ld [hl], e                                    ; $662e: $73
    inc h                                         ; $662f: $24
    ld a, l                                       ; $6630: $7d
    jp z, $875b                                   ; $6631: $ca $5b $87

    inc sp                                        ; $6634: $33
    or $69                                        ; $6635: $f6 $69
    ld d, l                                       ; $6637: $55
    rst $10                                       ; $6638: $d7
    sub l                                         ; $6639: $95
    add $b5                                       ; $663a: $c6 $b5
    db $eb                                        ; $663c: $eb
    ld d, l                                       ; $663d: $55

jr_02f_663e:
    sub l                                         ; $663e: $95
    cp $25                                        ; $663f: $fe $25
    ld e, a                                       ; $6641: $5f
    pop de                                        ; $6642: $d1
    ld d, d                                       ; $6643: $52
    or $33                                        ; $6644: $f6 $33
    jr nz, @+$4c                                  ; $6646: $20 $4a

    ld l, $5b                                     ; $6648: $2e $5b
    ld h, e                                       ; $664a: $63
    inc c                                         ; $664b: $0c
    ld h, e                                       ; $664c: $63
    add $3c                                       ; $664d: $c6 $3c
    db $f4                                        ; $664f: $f4
    dec d                                         ; $6650: $15
    xor l                                         ; $6651: $ad
    add hl, hl                                    ; $6652: $29
    add [hl]                                      ; $6653: $86
    add c                                         ; $6654: $81
    ld a, $ae                                     ; $6655: $3e $ae
    pop af                                        ; $6657: $f1
    db $db                                        ; $6658: $db
    dec h                                         ; $6659: $25
    rst $38                                       ; $665a: $ff
    ld a, [c]                                     ; $665b: $f2
    dec d                                         ; $665c: $15
    db $db                                        ; $665d: $db
    push af                                       ; $665e: $f5
    and b                                         ; $665f: $a0
    pop de                                        ; $6660: $d1
    cp b                                          ; $6661: $b8
    ld h, d                                       ; $6662: $62
    daa                                           ; $6663: $27
    add e                                         ; $6664: $83
    sub c                                         ; $6665: $91
    ld l, e                                       ; $6666: $6b
    dec e                                         ; $6667: $1d
    inc c                                         ; $6668: $0c
    db $e3                                        ; $6669: $e3
    db $fd                                        ; $666a: $fd
    ret z                                         ; $666b: $c8

    ld [hl], a                                    ; $666c: $77
    xor d                                         ; $666d: $aa
    sbc h                                         ; $666e: $9c
    dec de                                        ; $666f: $1b
    or d                                          ; $6670: $b2
    adc d                                         ; $6671: $8a
    and [hl]                                      ; $6672: $a6
    and b                                         ; $6673: $a0
    jp hl                                         ; $6674: $e9


    adc a                                         ; $6675: $8f
    cp d                                          ; $6676: $ba
    ld h, $ad                                     ; $6677: $26 $ad
    ld a, c                                       ; $6679: $79
    ldh [$2b], a                                  ; $667a: $e0 $2b
    ld e, d                                       ; $667c: $5a
    push af                                       ; $667d: $f5
    ld a, [hl+]                                   ; $667e: $2a
    ld a, l                                       ; $667f: $7d

Jump_02f_6680:
    jp z, $5c77                                   ; $6680: $ca $77 $5c

    reti                                          ; $6683: $d9


    push af                                       ; $6684: $f5
    ld a, $83                                     ; $6685: $3e $83
    ld a, [$4bb4]                                 ; $6687: $fa $b4 $4b
    adc l                                         ; $668a: $8d
    ld a, $b7                                     ; $668b: $3e $b7
    ld c, a                                       ; $668d: $4f
    db $e3                                        ; $668e: $e3
    ld e, d                                       ; $668f: $5a
    db $e3                                        ; $6690: $e3
    ld a, [$35dc]                                 ; $6691: $fa $dc $35
    db $fd                                        ; $6694: $fd
    ld e, l                                       ; $6695: $5d
    xor a                                         ; $6696: $af
    ld l, d                                       ; $6697: $6a
    ld c, b                                       ; $6698: $48
    dec hl                                        ; $6699: $2b
    adc d                                         ; $669a: $8a
    db $dd                                        ; $669b: $dd
    sbc b                                         ; $669c: $98

jr_02f_669d:
    db $db                                        ; $669d: $db
    ld d, a                                       ; $669e: $57
    and l                                         ; $669f: $a5
    ld c, a                                       ; $66a0: $4f
    ld sp, $5dbf                                  ; $66a1: $31 $bf $5d
    ld a, [$7914]                                 ; $66a4: $fa $14 $79
    dec bc                                        ; $66a7: $0b
    add a                                         ; $66a8: $87
    inc sp                                        ; $66a9: $33
    or $69                                        ; $66aa: $f6 $69
    ld e, h                                       ; $66ac: $5c
    cp e                                          ; $66ad: $bb
    ld e, [hl]                                    ; $66ae: $5e
    ld d, l                                       ; $66af: $55
    jp hl                                         ; $66b0: $e9


    ld e, a                                       ; $66b1: $5f
    ld a, [c]                                     ; $66b2: $f2
    dec d                                         ; $66b3: $15
    dec l                                         ; $66b4: $2d
    ld h, l                                       ; $66b5: $65
    ccf                                           ; $66b6: $3f
    inc bc                                        ; $66b7: $03
    and d                                         ; $66b8: $a2
    db $e4                                        ; $66b9: $e4
    or b                                          ; $66ba: $b0
    inc l                                         ; $66bb: $2c
    ld l, l                                       ; $66bc: $6d

Call_02f_66bd:
Jump_02f_66bd:
    ld b, b                                       ; $66bd: $40
    xor e                                         ; $66be: $ab
    or e                                          ; $66bf: $b3
    add $6f                                       ; $66c0: $c6 $6f
    and c                                         ; $66c2: $a1
    ld c, a                                       ; $66c3: $4f
    db $e3                                        ; $66c4: $e3
    or a                                          ; $66c5: $b7
    ld c, e                                       ; $66c6: $4b
    cp $e5                                        ; $66c7: $fe $e5
    dec hl                                        ; $66c9: $2b
    or [hl]                                       ; $66ca: $b6
    db $eb                                        ; $66cb: $eb
    ld b, c                                       ; $66cc: $41
    and e                                         ; $66cd: $a3
    ld [hl], c                                    ; $66ce: $71
    push bc                                       ; $66cf: $c5
    ld c, [hl]                                    ; $66d0: $4e
    ld b, $23                                     ; $66d1: $06 $23
    rst $10                                       ; $66d3: $d7
    ld a, [hl-]                                   ; $66d4: $3a
    jr jr_02f_669d                                ; $66d5: $18 $c6

    ei                                            ; $66d7: $fb
    sub c                                         ; $66d8: $91
    xor a                                         ; $66d9: $af
    db $e3                                        ; $66da: $e3
    add e                                         ; $66db: $83
    ld [hl], h                                    ; $66dc: $74
    inc a                                         ; $66dd: $3c
    ld c, b                                       ; $66de: $48
    and a                                         ; $66df: $a7
    adc e                                         ; $66e0: $8b
    and [hl]                                      ; $66e1: $a6
    and b                                         ; $66e2: $a0
    jp hl                                         ; $66e3: $e9


    adc a                                         ; $66e4: $8f
    cp d                                          ; $66e5: $ba
    ld h, $ad                                     ; $66e6: $26 $ad
    ld a, c                                       ; $66e8: $79
    ldh [$2b], a                                  ; $66e9: $e0 $2b
    ld e, d                                       ; $66eb: $5a
    push af                                       ; $66ec: $f5
    ld a, [hl+]                                   ; $66ed: $2a
    ld a, l                                       ; $66ee: $7d
    jp z, $5c77                                   ; $66ef: $ca $77 $5c

    reti                                          ; $66f2: $d9


    push af                                       ; $66f3: $f5
    ld a, $83                                     ; $66f4: $3e $83
    ld a, [$4bb4]                                 ; $66f6: $fa $b4 $4b
    adc l                                         ; $66f9: $8d
    ld a, $b7                                     ; $66fa: $3e $b7
    ld c, a                                       ; $66fc: $4f
    db $e3                                        ; $66fd: $e3
    ld e, d                                       ; $66fe: $5a
    db $e3                                        ; $66ff: $e3
    ld a, [$35dc]                                 ; $6700: $fa $dc $35
    db $fd                                        ; $6703: $fd
    ld e, l                                       ; $6704: $5d
    xor a                                         ; $6705: $af
    ld l, d                                       ; $6706: $6a
    ld c, b                                       ; $6707: $48
    dec hl                                        ; $6708: $2b
    adc d                                         ; $6709: $8a
    db $dd                                        ; $670a: $dd
    sbc b                                         ; $670b: $98
    db $db                                        ; $670c: $db
    ld d, a                                       ; $670d: $57
    and l                                         ; $670e: $a5
    ld c, a                                       ; $670f: $4f
    ld sp, $5dbf                                  ; $6710: $31 $bf $5d
    ld a, [$7914]                                 ; $6713: $fa $14 $79
    dec bc                                        ; $6716: $0b
    dec e                                         ; $6717: $1d
    rra                                           ; $6718: $1f
    ld hl, sp+$4e                                 ; $6719: $f8 $4e
    ld a, c                                       ; $671b: $79
    ld a, a                                       ; $671c: $7f
    ld h, a                                       ; $671d: $67
    ret z                                         ; $671e: $c8

    and d                                         ; $671f: $a2
    xor b                                         ; $6720: $a8
    ld h, $b9                                     ; $6721: $26 $b9
    and $81                                       ; $6723: $e6 $81
    xor a                                         ; $6725: $af
    ret c                                         ; $6726: $d8

    sbc d                                         ; $6727: $9a
    ld [bc], a                                    ; $6728: $02
    or c                                          ; $6729: $b1
    sub h                                         ; $672a: $94
    ld c, d                                       ; $672b: $4a
    pop de                                        ; $672c: $d1
    ld a, [de]                                    ; $672d: $1a
    ld [hl], e                                    ; $672e: $73
    ld b, d                                       ; $672f: $42
    adc l                                         ; $6730: $8d
    rst $18                                       ; $6731: $df
    ld l, a                                       ; $6732: $6f
    rla                                           ; $6733: $17
    ld e, e                                       ; $6734: $5b
    ld d, a                                       ; $6735: $57
    inc h                                         ; $6736: $24
    sub a                                         ; $6737: $97
    ld a, l                                       ; $6738: $7d
    scf                                           ; $6739: $37
    ld [hl+], a                                   ; $673a: $22
    rst $00                                       ; $673b: $c7
    inc d                                         ; $673c: $14
    ld l, b                                       ; $673d: $68
    db $fd                                        ; $673e: $fd
    push af                                       ; $673f: $f5
    cp c                                          ; $6740: $b9
    and $e1                                       ; $6741: $e6 $e1
    and a                                         ; $6743: $a7
    ld e, b                                       ; $6744: $58
    sbc l                                         ; $6745: $9d
    dec e                                         ; $6746: $1d
    db $e3                                        ; $6747: $e3
    dec [hl]                                      ; $6748: $35
    jp hl                                         ; $6749: $e9


    db $f4                                        ; $674a: $f4
    ei                                            ; $674b: $fb
    db $fc                                        ; $674c: $fc
    ld a, c                                       ; $674d: $79
    sbc $02                                       ; $674e: $de $02
    dec e                                         ; $6750: $1d
    rra                                           ; $6751: $1f
    ld hl, sp-$72                                 ; $6752: $f8 $8e
    sub l                                         ; $6754: $95
    ld d, a                                       ; $6755: $57
    ld hl, sp-$42                                 ; $6756: $f8 $be
    halt                                          ; $6758: $76
    adc h                                         ; $6759: $8c
    db $db                                        ; $675a: $db
    ld h, a                                       ; $675b: $67
    ret                                           ; $675c: $c9


    sub e                                         ; $675d: $93
    ld h, e                                       ; $675e: $63
    ld a, c                                       ; $675f: $79
    sub a                                         ; $6760: $97
    sub a                                         ; $6761: $97
    ld d, [hl]                                    ; $6762: $56
    ld h, a                                       ; $6763: $67
    ld h, c                                       ; $6764: $61
    dec hl                                        ; $6765: $2b
    adc a                                         ; $6766: $8f
    add l                                         ; $6767: $85
    add hl, de                                    ; $6768: $19
    ret nc                                        ; $6769: $d0

    or b                                          ; $676a: $b0
    ld l, d                                       ; $676b: $6a
    adc d                                         ; $676c: $8a
    ld e, l                                       ; $676d: $5d
    sub [hl]                                      ; $676e: $96
    ld a, [hl+]                                   ; $676f: $2a
    sbc d                                         ; $6770: $9a
    cp $d2                                        ; $6771: $fe $d2
    halt                                          ; $6773: $76
    ld l, c                                       ; $6774: $69
    db $fc                                        ; $6775: $fc
    ld a, [hl]                                    ; $6776: $7e
    ld h, e                                       ; $6777: $63
    ld l, [hl]                                    ; $6778: $6e
    ld e, a                                       ; $6779: $5f
    sub l                                         ; $677a: $95
    ld a, $c5                                     ; $677b: $3e $c5
    cp $fb                                        ; $677d: $fe $fb
    xor e                                         ; $677f: $ab
    ld e, $fe                                     ; $6780: $1e $fe
    jr jr_02f_67da                                ; $6782: $18 $56

    ld c, l                                       ; $6784: $4d
    or c                                          ; $6785: $b1
    bit 2, d                                      ; $6786: $cb $52
    ld b, l                                       ; $6788: $45
    sub c                                         ; $6789: $91
    ld e, h                                       ; $678a: $5c
    or $dd                                        ; $678b: $f6 $dd
    adc b                                         ; $678d: $88
    inc e                                         ; $678e: $1c
    ld d, e                                       ; $678f: $53
    and b                                         ; $6790: $a0
    push af                                       ; $6791: $f5
    rst $10                                       ; $6792: $d7
    rst $20                                       ; $6793: $e7
    sbc d                                         ; $6794: $9a
    add a                                         ; $6795: $87
    sbc a                                         ; $6796: $9f
    ld h, d                                       ; $6797: $62
    ld [hl], l                                    ; $6798: $75
    halt                                          ; $6799: $76
    adc h                                         ; $679a: $8c
    rst $10                                       ; $679b: $d7
    and h                                         ; $679c: $a4
    db $d3                                        ; $679d: $d3
    rst $28                                       ; $679e: $ef
    di                                            ; $679f: $f3
    rst $20                                       ; $67a0: $e7
    ld a, c                                       ; $67a1: $79
    dec bc                                        ; $67a2: $0b
    dec e                                         ; $67a3: $1d
    rra                                           ; $67a4: $1f
    ld hl, sp-$72                                 ; $67a5: $f8 $8e
    dec [hl]                                      ; $67a7: $35
    rst $30                                       ; $67a8: $f7
    sbc d                                         ; $67a9: $9a
    ld [hl], l                                    ; $67aa: $75
    ld a, h                                       ; $67ab: $7c
    ld b, h                                       ; $67ac: $44
    ld a, [c]                                     ; $67ad: $f2
    db $e4                                        ; $67ae: $e4
    db $f4                                        ; $67af: $f4
    rst $20                                       ; $67b0: $e7
    add [hl]                                      ; $67b1: $86
    pop af                                        ; $67b2: $f1
    cp $b8                                        ; $67b3: $fe $b8
    ld d, $ef                                     ; $67b5: $16 $ef
    rst $28                                       ; $67b7: $ef
    ld a, d                                       ; $67b8: $7a
    ldh [$c6], a                                  ; $67b9: $e0 $c6
    jp nc, $f9d4                                  ; $67bb: $d2 $d4 $f9

    ld d, d                                       ; $67be: $52
    ld b, e                                       ; $67bf: $43
    ld hl, sp-$02                                 ; $67c0: $f8 $fe
    ld d, a                                       ; $67c2: $57
    ld c, c                                       ; $67c3: $49
    ld l, $fb                                     ; $67c4: $2e $fb
    ld l, [hl]                                    ; $67c6: $6e
    ld b, h                                       ; $67c7: $44
    adc [hl]                                      ; $67c8: $8e
    add hl, hl                                    ; $67c9: $29
    ret nc                                        ; $67ca: $d0

    ld a, [$73ef]                                 ; $67cb: $fa $ef $73
    call $4fc3                                    ; $67ce: $cd $c3 $4f
    or c                                          ; $67d1: $b1
    ld a, [hl-]                                   ; $67d2: $3a
    dec sp                                        ; $67d3: $3b
    add $6b                                       ; $67d4: $c6 $6b
    jp nc, $f7e9                                  ; $67d6: $d2 $e9 $f7

    ld sp, hl                                     ; $67d9: $f9

jr_02f_67da:
    di                                            ; $67da: $f3
    cp h                                          ; $67db: $bc
    dec b                                         ; $67dc: $05
    ld b, a                                       ; $67dd: $47
    ld d, c                                       ; $67de: $51
    ld [hl], d                                    ; $67df: $72
    scf                                           ; $67e0: $37
    or d                                          ; $67e1: $b2
    ld c, a                                       ; $67e2: $4f
    db $e3                                        ; $67e3: $e3
    rst $28                                       ; $67e4: $ef
    rst $38                                       ; $67e5: $ff
    db $db                                        ; $67e6: $db
    ld [hl-], a                                   ; $67e7: $32
    ld [hl], b                                    ; $67e8: $70
    rst $00                                       ; $67e9: $c7
    or d                                          ; $67ea: $b2
    or h                                          ; $67eb: $b4
    ld bc, $80cd                                  ; $67ec: $01 $cd $80
    db $ec                                        ; $67ef: $ec
    db $d3                                        ; $67f0: $d3
    cp b                                          ; $67f1: $b8
    sub [hl]                                      ; $67f2: $96
    ld [hl], d                                    ; $67f3: $72
    ld h, e                                       ; $67f4: $63
    ld e, $b8                                     ; $67f5: $1e $b8
    sub $3c                                       ; $67f7: $d6 $3c
    ldh a, [$59]                                  ; $67f9: $f0 $59
    ld a, [hl-]                                   ; $67fb: $3a
    db $ed                                        ; $67fc: $ed
    rst $28                                       ; $67fd: $ef
    sub e                                         ; $67fe: $93
    ld a, h                                       ; $67ff: $7c
    and c                                         ; $6800: $a1
    sbc b                                         ; $6801: $98
    cp $57                                        ; $6802: $fe $57
    add l                                         ; $6804: $85
    or c                                          ; $6805: $b1
    inc c                                         ; $6806: $0c
    ld l, b                                       ; $6807: $68
    call Call_02f_5f03                            ; $6808: $cd $03 $5f
    inc a                                         ; $680b: $3c
    jr nz, jr_02f_688b                            ; $680c: $20 $7d

    db $f4                                        ; $680e: $f4
    add l                                         ; $680f: $85
    ld h, d                                       ; $6810: $62
    ld d, [hl]                                    ; $6811: $56
    ld h, c                                       ; $6812: $61
    inc h                                         ; $6813: $24
    sub a                                         ; $6814: $97
    ld a, l                                       ; $6815: $7d
    scf                                           ; $6816: $37
    ld [hl+], a                                   ; $6817: $22
    rst $00                                       ; $6818: $c7
    inc d                                         ; $6819: $14
    ld l, b                                       ; $681a: $68
    ld a, l                                       ; $681b: $7d
    push af                                       ; $681c: $f5
    cp c                                          ; $681d: $b9
    and $e1                                       ; $681e: $e6 $e1
    and a                                         ; $6820: $a7
    ld e, b                                       ; $6821: $58
    sbc l                                         ; $6822: $9d
    sbc l                                         ; $6823: $9d
    jr z, jr_02f_682c                             ; $6824: $28 $06

    ld c, e                                       ; $6826: $4b
    pop de                                        ; $6827: $d1
    ld c, [hl]                                    ; $6828: $4e
    ld a, b                                       ; $6829: $78
    sbc a                                         ; $682a: $9f
    ld b, e                                       ; $682b: $43

jr_02f_682c:
    jp z, Jump_02f_6f28                           ; $682c: $ca $28 $6f

    ld bc, $78c7                                  ; $682f: $01 $c7 $78
    ld c, l                                       ; $6832: $4d

jr_02f_6833:
    ld a, [hl-]                                   ; $6833: $3a
    db $fd                                        ; $6834: $fd
    ld a, $7f                                     ; $6835: $3e $7f
    ld a, $1b                                     ; $6837: $3e $1b
    bit 3, b                                      ; $6839: $cb $58
    rst $38                                       ; $683b: $ff
    ld d, [hl]                                    ; $683c: $56
    sbc e                                         ; $683d: $9b
    ret c                                         ; $683e: $d8

    ld [bc], a                                    ; $683f: $02
    rst $00                                       ; $6840: $c7
    ld a, [bc]                                    ; $6841: $0a
    ld a, a                                       ; $6842: $7f
    db $ed                                        ; $6843: $ed
    and c                                         ; $6844: $a1
    adc c                                         ; $6845: $89
    dec sp                                        ; $6846: $3b
    add hl, de                                    ; $6847: $19
    ld e, $d6                                     ; $6848: $1e $d6
    ld e, $9a                                     ; $684a: $1e $9a
    ret c                                         ; $684c: $d8

    ld [bc], a                                    ; $684d: $02
    dec e                                         ; $684e: $1d
    ld e, l                                       ; $684f: $5d
    sbc a                                         ; $6850: $9f
    rst $00                                       ; $6851: $c7
    ld a, d                                       ; $6852: $7a
    or h                                          ; $6853: $b4
    db $e4                                        ; $6854: $e4
    ld a, [hl-]                                   ; $6855: $3a
    ld e, b                                       ; $6856: $58
    ld d, c                                       ; $6857: $51
    ld a, [$d4d5]                                 ; $6858: $fa $d5 $d4
    ld h, $b6                                     ; $685b: $26 $b6
    sbc l                                         ; $685d: $9d
    ld h, b                                       ; $685e: $60
    inc l                                         ; $685f: $2c
    ld h, e                                       ; $6860: $63
    ld a, l                                       ; $6861: $7d
    cp c                                          ; $6862: $b9
    push bc                                       ; $6863: $c5
    ld [hl-], a                                   ; $6864: $32
    ld h, b                                       ; $6865: $60
    sbc a                                         ; $6866: $9f
    adc a                                         ; $6867: $8f
    ld h, b                                       ; $6868: $60
    ld b, l                                       ; $6869: $45
    xor e                                         ; $686a: $ab
    ld l, [hl]                                    ; $686b: $6e
    adc [hl]                                      ; $686c: $8e
    inc h                                         ; $686d: $24
    or a                                          ; $686e: $b7
    ld c, b                                       ; $686f: $48
    xor [hl]                                      ; $6870: $ae
    add e                                         ; $6871: $83
    dec d                                         ; $6872: $15
    and l                                         ; $6873: $a5
    ld e, a                                       ; $6874: $5f
    ld c, l                                       ; $6875: $4d
    ld l, l                                       ; $6876: $6d
    ld h, d                                       ; $6877: $62
    dec bc                                        ; $6878: $0b
    ld b, a                                       ; $6879: $47
    rst $18                                       ; $687a: $df
    ld a, [bc]                                    ; $687b: $0a
    ld e, [hl]                                    ; $687c: $5e
    ld c, b                                       ; $687d: $48
    ld b, [hl]                                    ; $687e: $46
    ld hl, sp+$7e                                 ; $687f: $f8 $7e
    db $ec                                        ; $6881: $ec
    jr jr_02f_6833                                ; $6882: $18 $af

    ld c, c                                       ; $6884: $49
    and a                                         ; $6885: $a7
    rst $18                                       ; $6886: $df
    rst $20                                       ; $6887: $e7
    rst $08                                       ; $6888: $cf
    ld l, e                                       ; $6889: $6b
    inc de                                        ; $688a: $13

jr_02f_688b:
    ld e, e                                       ; $688b: $5b
    dec e                                         ; $688c: $1d
    rra                                           ; $688d: $1f
    ld hl, sp-$20                                 ; $688e: $f8 $e0
    ld l, e                                       ; $6890: $6b
    jp hl                                         ; $6891: $e9


    add a                                         ; $6892: $87
    sub c                                         ; $6893: $91
    call c, $fda5                                 ; $6894: $dc $a5 $fd
    cp e                                          ; $6897: $bb
    add d                                         ; $6898: $82
    sub $58                                       ; $6899: $d6 $58
    db $ec                                        ; $689b: $ec
    ld d, h                                       ; $689c: $54
    ld a, c                                       ; $689d: $79
    and e                                         ; $689e: $a3
    ld c, a                                       ; $689f: $4f
    and $3c                                       ; $68a0: $e6 $3c
    ld l, a                                       ; $68a2: $6f
    ld bc, $9ac7                                  ; $68a3: $01 $c7 $9a
    ld a, e                                       ; $68a6: $7b
    ld c, l                                       ; $68a7: $4d
    ld [hl], d                                    ; $68a8: $72
    inc b                                         ; $68a9: $04
    or e                                          ; $68aa: $b3
    sbc b                                         ; $68ab: $98
    rst $18                                       ; $68ac: $df
    jr nz, jr_02f_68b1                            ; $68ad: $20 $02

    ld l, e                                       ; $68af: $6b
    inc de                                        ; $68b0: $13

jr_02f_68b1:
    ld e, e                                       ; $68b1: $5b
    and a                                         ; $68b2: $a7
    jp c, $d18f                                   ; $68b3: $da $8f $d1

    jp Jump_000_289d                              ; $68b6: $c3 $9d $28


    ld b, $4b                                     ; $68b9: $06 $4b
    ld d, c                                       ; $68bb: $51
    ld [hl], d                                    ; $68bc: $72
    rst $28                                       ; $68bd: $ef
    rst $28                                       ; $68be: $ef
    rst $18                                       ; $68bf: $df
    dec c                                         ; $68c0: $0d
    call c, $d690                                 ; $68c1: $dc $90 $d6
    ld e, b                                       ; $68c4: $58
    adc h                                         ; $68c5: $8c
    ld h, l                                       ; $68c6: $65
    xor h                                         ; $68c7: $ac
    ld a, a                                       ; $68c8: $7f
    bit 3, e                                      ; $68c9: $cb $5b
    daa                                           ; $68cb: $27
    add e                                         ; $68cc: $83
    ld d, [hl]                                    ; $68cd: $56
    or h                                          ; $68ce: $b4
    sub h                                         ; $68cf: $94
    db $fd                                        ; $68d0: $fd
    inc c                                         ; $68d1: $0c
    adc b                                         ; $68d2: $88
    halt                                          ; $68d3: $76
    cp l                                          ; $68d4: $bd
    xor d                                         ; $68d5: $aa
    jp nc, Jump_02f_54bf                          ; $68d6: $d2 $bf $54

    sbc e                                         ; $68d9: $9b
    ret c                                         ; $68da: $d8

    ld [bc], a                                    ; $68db: $02
    daa                                           ; $68dc: $27
    ld l, d                                       ; $68dd: $6a
    adc l                                         ; $68de: $8d
    push bc                                       ; $68df: $c5
    ld hl, sp-$33                                 ; $68e0: $f8 $cd
    db $ed                                        ; $68e2: $ed
    or e                                          ; $68e3: $b3
    db $e4                                        ; $68e4: $e4
    ld sp, hl                                     ; $68e5: $f9
    halt                                          ; $68e6: $76
    sub d                                         ; $68e7: $92
    and a                                         ; $68e8: $a7
    inc [hl]                                      ; $68e9: $34
    db $fd                                        ; $68ea: $fd
    ld sp, $52c2                                  ; $68eb: $31 $c2 $52
    sub h                                         ; $68ee: $94
    or a                                          ; $68ef: $b7
    ld e, c                                       ; $68f0: $59
    jp c, Jump_000_2bbf                           ; $68f1: $da $bf $2b

    ld l, b                                       ; $68f4: $68
    db $f4                                        ; $68f5: $f4
    add b                                         ; $68f6: $80
    sub h                                         ; $68f7: $94
    ld a, [hl]                                    ; $68f8: $7e
    jr jr_02f_6966                                ; $68f9: $18 $6b

    inc l                                         ; $68fb: $2c
    ld d, $90                                     ; $68fc: $16 $90
    ld c, [hl]                                    ; $68fe: $4e
    ld h, e                                       ; $68ff: $63
    ret c                                         ; $6900: $d8

    and a                                         ; $6901: $a7
    dec [hl]                                      ; $6902: $35
    rrca                                          ; $6903: $0f
    ld a, h                                       ; $6904: $7c
    db $fc                                        ; $6905: $fc
    sub $58                                       ; $6906: $d6 $58
    add h                                         ; $6908: $84
    ld a, h                                       ; $6909: $7c
    ld b, l                                       ; $690a: $45
    ei                                            ; $690b: $fb
    xor a                                         ; $690c: $af

Call_02f_690d:
    ld c, d                                       ; $690d: $4a
    cp c                                          ; $690e: $b9
    add $b5                                       ; $690f: $c6 $b5
    and $e1                                       ; $6911: $e6 $e1
    and a                                         ; $6913: $a7
    sbc b                                         ; $6914: $98
    ld e, l                                       ; $6915: $5d
    add hl, de                                    ; $6916: $19
    ret nz                                        ; $6917: $c0

    ld e, b                                       ; $6918: $58
    ld h, e                                       ; $6919: $63
    cp [hl]                                       ; $691a: $be
    adc [hl]                                      ; $691b: $8e
    rrca                                          ; $691c: $0f
    jp nc, $20f1                                  ; $691d: $d2 $f1 $20

    sbc l                                         ; $6920: $9d
    ld l, $aa                                     ; $6921: $2e $aa
    ld c, l                                       ; $6923: $4d
    ld l, h                                       ; $6924: $6c
    ld bc, $c327                                  ; $6925: $01 $27 $c3
    jp Jump_02f_43da                              ; $6928: $c3 $da $43


    sub a                                         ; $692b: $97
    and l                                         ; $692c: $a5
    db $fd                                        ; $692d: $fd
    cp e                                          ; $692e: $bb
    add d                                         ; $692f: $82
    sub $58                                       ; $6930: $d6 $58
    xor h                                         ; $6932: $ac
    ld a, c                                       ; $6933: $79
    ld de, $2a98                                  ; $6934: $11 $98 $2a
    xor d                                         ; $6937: $aa
    ld c, l                                       ; $6938: $4d
    ld l, h                                       ; $6939: $6c
    ld bc, $b147                                  ; $693a: $01 $47 $b1
    sub a                                         ; $693d: $97
    ld b, d                                       ; $693e: $42
    db $fd                                        ; $693f: $fd
    db $e4                                        ; $6940: $e4
    sbc d                                         ; $6941: $9a
    rlca                                          ; $6942: $07
    ld a, $f8                                     ; $6943: $3e $f8
    ld e, d                                       ; $6945: $5a
    ld a, [$2461]                                 ; $6946: $fa $61 $24
    ld [hl], a                                    ; $6949: $77
    ld l, c                                       ; $694a: $69
    rst $38                                       ; $694b: $ff
    xor [hl]                                      ; $694c: $ae
    and b                                         ; $694d: $a0
    dec [hl]                                      ; $694e: $35
    ld d, $3b                                     ; $694f: $16 $3b
    ld d, l                                       ; $6951: $55
    sbc $e8                                       ; $6952: $de $e8
    sub e                                         ; $6954: $93
    add hl, sp                                    ; $6955: $39
    rst $08                                       ; $6956: $cf
    ld e, e                                       ; $6957: $5b
    ld b, a                                       ; $6958: $47
    rst $18                                       ; $6959: $df
    ld a, [bc]                                    ; $695a: $0a
    ld e, [hl]                                    ; $695b: $5e
    ld c, b                                       ; $695c: $48
    ld b, [hl]                                    ; $695d: $46
    ld hl, sp+$7e                                 ; $695e: $f8 $7e
    call nc, $b626                                ; $6960: $d4 $26 $b6
    dec e                                         ; $6963: $1d
    db $e4                                        ; $6964: $e4
    rla                                           ; $6965: $17

jr_02f_6966:
    ld h, $77                                     ; $6966: $26 $77
    xor h                                         ; $6968: $ac
    cp c                                          ; $6969: $b9
    rst $10                                       ; $696a: $d7
    db $e4                                        ; $696b: $e4
    db $eb                                        ; $696c: $eb
    inc b                                         ; $696d: $04
    inc sp                                        ; $696e: $33
    ld [hl], b                                    ; $696f: $70
    adc e                                         ; $6970: $8b
    dec [hl]                                      ; $6971: $35
    dec b                                         ; $6972: $05
    ld h, d                                       ; $6973: $62
    ld e, h                                       ; $6974: $5c
    cp e                                          ; $6975: $bb
    ret c                                         ; $6976: $d8

    or $2f                                        ; $6977: $f6 $2f
    xor l                                         ; $6979: $ad
    call c, $ffed                                 ; $697a: $dc $ed $ff
    sbc e                                         ; $697d: $9b
    sub $f8                                       ; $697e: $d6 $f8
    cp e                                          ; $6980: $bb
    ret c                                         ; $6981: $d8

    add [hl]                                      ; $6982: $86
    ld e, a                                       ; $6983: $5f
    ld a, c                                       ; $6984: $79
    dec bc                                        ; $6985: $0b
    ld e, c                                       ; $6986: $59
    jp c, Jump_000_2bbf                           ; $6987: $da $bf $2b

    ld l, b                                       ; $698a: $68
    db $f4                                        ; $698b: $f4
    add b                                         ; $698c: $80
    sub h                                         ; $698d: $94
    ld a, [hl]                                    ; $698e: $7e
    jr jr_02f_69fc                                ; $698f: $18 $6b

    inc l                                         ; $6991: $2c

jr_02f_6992:
    ld d, $90                                     ; $6992: $16 $90
    ld c, [hl]                                    ; $6994: $4e
    ld h, e                                       ; $6995: $63
    ret c                                         ; $6996: $d8

    and a                                         ; $6997: $a7
    dec [hl]                                      ; $6998: $35
    rrca                                          ; $6999: $0f
    ld a, h                                       ; $699a: $7c
    db $fc                                        ; $699b: $fc
    sub $58                                       ; $699c: $d6 $58
    add h                                         ; $699e: $84
    ld a, h                                       ; $699f: $7c
    ld b, l                                       ; $69a0: $45
    ei                                            ; $69a1: $fb
    xor a                                         ; $69a2: $af
    ld c, d                                       ; $69a3: $4a
    cp c                                          ; $69a4: $b9
    add $b5                                       ; $69a5: $c6 $b5
    and $e1                                       ; $69a7: $e6 $e1
    and a                                         ; $69a9: $a7
    sbc b                                         ; $69aa: $98
    ld e, l                                       ; $69ab: $5d
    add hl, de                                    ; $69ac: $19
    ret nz                                        ; $69ad: $c0

    ld e, b                                       ; $69ae: $58
    ld h, e                                       ; $69af: $63
    cp [hl]                                       ; $69b0: $be
    ld d, e                                       ; $69b1: $53
    push hl                                       ; $69b2: $e5
    call c, $5590                                 ; $69b3: $dc $90 $55
    ld d, h                                       ; $69b6: $54
    sbc e                                         ; $69b7: $9b
    ret c                                         ; $69b8: $d8

    ld [bc], a                                    ; $69b9: $02
    and a                                         ; $69ba: $a7
    jp z, $21b9                                   ; $69bb: $ca $b9 $21

    xor e                                         ; $69be: $ab
    xor b                                         ; $69bf: $a8
    or $d0                                        ; $69c0: $f6 $d0
    ld h, l                                       ; $69c2: $65
    db $dd                                        ; $69c3: $dd
    dec d                                         ; $69c4: $15
    inc [hl]                                      ; $69c5: $34
    db $fd                                        ; $69c6: $fd
    db $eb                                        ; $69c7: $eb
    cp c                                          ; $69c8: $b9
    sub $a0                                       ; $69c9: $d6 $a0
    ld l, e                                       ; $69cb: $6b
    add hl, de                                    ; $69cc: $19
    ret nc                                        ; $69cd: $d0

    adc [hl]                                      ; $69ce: $8e
    pop af                                        ; $69cf: $f1
    sbc d                                         ; $69d0: $9a
    ld [hl], h                                    ; $69d1: $74
    ld a, [$fe7d]                                 ; $69d2: $fa $7d $fe
    inc a                                         ; $69d5: $3c
    ld l, a                                       ; $69d6: $6f
    ld bc, $7759                                  ; $69d7: $01 $59 $77
    dec b                                         ; $69da: $05
    xor l                                         ; $69db: $ad
    or d                                          ; $69dc: $b2

jr_02f_69dd:
    and l                                         ; $69dd: $a5
    dec c                                         ; $69de: $0d
    ld c, b                                       ; $69df: $48
    ld sp, hl                                     ; $69e0: $f9
    ld [$0ddf], a                                 ; $69e1: $ea $df $0d
    call c, $c630                                 ; $69e4: $dc $30 $c6
    ld a, e                                       ; $69e7: $7b
    jr jr_02f_69dd                                ; $69e8: $18 $f3

    jr nz, jr_02f_6992                            ; $69ea: $20 $a6

    xor d                                         ; $69ec: $aa
    jp hl                                         ; $69ed: $e9


    ld a, [$cb62]                                 ; $69ee: $fa $62 $cb
    rst $00                                       ; $69f1: $c7
    rst $28                                       ; $69f2: $ef
    dec [hl]                                      ; $69f3: $35
    or e                                          ; $69f4: $b3
    ld d, d                                       ; $69f5: $52
    db $e4                                        ; $69f6: $e4
    dec hl                                        ; $69f7: $2b
    ld [hl], a                                    ; $69f8: $77
    inc bc                                        ; $69f9: $03
    ld [hl], d                                    ; $69fa: $72
    db $ed                                        ; $69fb: $ed

jr_02f_69fc:
    inc bc                                        ; $69fc: $03
    ld d, d                                       ; $69fd: $52
    sbc $02                                       ; $69fe: $de $02
    and a                                         ; $6a00: $a7
    ld [c], a                                     ; $6a01: $e2
    ld [$8c66], sp                                ; $6a02: $08 $66 $8c
    ld h, c                                       ; $6a05: $61
    ld c, h                                       ; $6a06: $4c
    ld de, $7356                                  ; $6a07: $11 $56 $73
    ld c, e                                       ; $6a0a: $4b
    xor [hl]                                      ; $6a0b: $ae
    rst $00                                       ; $6a0c: $c7
    cp e                                          ; $6a0d: $bb
    add c                                         ; $6a0e: $81
    dec de                                        ; $6a0f: $1b
    jp nc, Jump_02f_746e                          ; $6a10: $d2 $6e $74

    ld e, e                                       ; $6a13: $5b
    add e                                         ; $6a14: $83
    xor [hl]                                      ; $6a15: $ae
    jp hl                                         ; $6a16: $e9


    ld e, a                                       ; $6a17: $5f
    rst $08                                       ; $6a18: $cf
    sub l                                         ; $6a19: $95
    or a                                          ; $6a1a: $b7
    ld e, c                                       ; $6a1b: $59
    ld [hl], a                                    ; $6a1c: $77
    dec b                                         ; $6a1d: $05
    adc l                                         ; $6a1e: $8d
    ld e, $90                                     ; $6a1f: $1e $90
    jp nc, Jump_02f_630f                          ; $6a21: $d2 $0f $63

    ld hl, sp+$03                                 ; $6a24: $f8 $03
    jp nc, $0c69                                  ; $6a26: $d2 $69 $0c

    ei                                            ; $6a29: $fb
    or h                                          ; $6a2a: $b4
    and $81                                       ; $6a2b: $e6 $81
    adc a                                         ; $6a2d: $8f
    rst $18                                       ; $6a2e: $df
    ld a, [de]                                    ; $6a2f: $1a
    adc e                                         ; $6a30: $8b
    sub b                                         ; $6a31: $90
    xor a                                         ; $6a32: $af
    ld l, b                                       ; $6a33: $68
    rst $38                                       ; $6a34: $ff
    ld d, l                                       ; $6a35: $55
    add hl, hl                                    ; $6a36: $29
    rst $10                                       ; $6a37: $d7
    cp b                                          ; $6a38: $b8
    sub $3c                                       ; $6a39: $d6 $3c
    db $fc                                        ; $6a3b: $fc
    inc d                                         ; $6a3c: $14
    ld h, e                                       ; $6a3d: $63
    add hl, de                                    ; $6a3e: $19
    db $eb                                        ; $6a3f: $eb
    rst $18                                       ; $6a40: $df
    ld h, d                                       ; $6a41: $62
    adc l                                         ; $6a42: $8d
    ld sp, hl                                     ; $6a43: $f9
    ld c, [hl]                                    ; $6a44: $4e
    sub l                                         ; $6a45: $95
    scf                                           ; $6a46: $37
    ld a, [$ce64]                                 ; $6a47: $fa $64 $ce
    di                                            ; $6a4a: $f3
    ld [hl], l                                    ; $6a4b: $75
    inc [hl]                                      ; $6a4c: $34
    rst $18                                       ; $6a4d: $df
    push af                                       ; $6a4e: $f5
    ld a, [hl]                                    ; $6a4f: $7e
    call c, $a032                                 ; $6a50: $dc $32 $a0
    ld c, a                                       ; $6a53: $4f
    ret                                           ; $6a54: $c9


    dec [hl]                                      ; $6a55: $35
    rrca                                          ; $6a56: $0f
    ld a, h                                       ; $6a57: $7c
    push bc                                       ; $6a58: $c5
    ld d, $6a                                     ; $6a59: $16 $6a
    ld [$56eb], sp                                ; $6a5b: $08 $eb $56
    sbc d                                         ; $6a5e: $9a
    db $fd                                        ; $6a5f: $fd
    ld a, a                                       ; $6a60: $7f
    db $d3                                        ; $6a61: $d3
    xor [hl]                                      ; $6a62: $ae
    rst $30                                       ; $6a63: $f7
    db $e3                                        ; $6a64: $e3
    halt                                          ; $6a65: $76
    ld bc, $a321                                  ; $6a66: $01 $21 $a3
    db $e4                                        ; $6a69: $e4
    ld c, [hl]                                    ; $6a6a: $4e
    sub l                                         ; $6a6b: $95
    scf                                           ; $6a6c: $37
    ld a, [$ce64]                                 ; $6a6d: $fa $64 $ce
    rst $20                                       ; $6a70: $e7
    xor d                                         ; $6a71: $aa
    sbc d                                         ; $6a72: $9a
    rst $20                                       ; $6a73: $e7
    and h                                         ; $6a74: $a4
    dec d                                         ; $6a75: $15
    db $db                                        ; $6a76: $db
    push af                                       ; $6a77: $f5
    and b                                         ; $6a78: $a0
    pop de                                        ; $6a79: $d1
    cp b                                          ; $6a7a: $b8
    ld h, d                                       ; $6a7b: $62
    daa                                           ; $6a7c: $27
    add e                                         ; $6a7d: $83
    sub c                                         ; $6a7e: $91
    ld l, e                                       ; $6a7f: $6b

Call_02f_6a80:
    dec e                                         ; $6a80: $1d
    inc c                                         ; $6a81: $0c
    db $e3                                        ; $6a82: $e3
    db $fd                                        ; $6a83: $fd
    ret z                                         ; $6a84: $c8

    ld e, e                                       ; $6a85: $5b
    daa                                           ; $6a86: $27
    db $fd                                        ; $6a87: $fd
    ld e, l                                       ; $6a88: $5d
    xor a                                         ; $6a89: $af
    ld l, d                                       ; $6a8a: $6a
    ret z                                         ; $6a8b: $c8

    sub b                                         ; $6a8c: $90
    ld d, $e0                                     ; $6a8d: $16 $e0
    and e                                         ; $6a8f: $a3
    add a                                         ; $6a90: $87
    ret                                           ; $6a91: $c9


    dec e                                         ; $6a92: $1d
    ld l, e                                       ; $6a93: $6b
    xor $35                                       ; $6a94: $ee $35
    inc de                                        ; $6a96: $13
    adc l                                         ; $6a97: $8d
    ld h, b                                       ; $6a98: $60
    rst $38                                       ; $6a99: $ff
    ld b, c                                       ; $6a9a: $41
    call z, Call_000_0c56                         ; $6a9b: $cc $56 $0c
    inc hl                                        ; $6a9e: $23
    ld l, [hl]                                    ; $6a9f: $6e
    ld sp, $557a                                  ; $6aa0: $31 $7a $55
    ld c, d                                       ; $6aa3: $4a
    ld e, [hl]                                    ; $6aa4: $5e
    sbc e                                         ; $6aa5: $9b
    ret c                                         ; $6aa6: $d8

    ld [bc], a                                    ; $6aa7: $02
    dec e                                         ; $6aa8: $1d
    db $e4                                        ; $6aa9: $e4
    rla                                           ; $6aaa: $17
    xor $58                                       ; $6aab: $ee $58
    ld [hl], e                                    ; $6aad: $73
    xor a                                         ; $6aae: $af
    ret                                           ; $6aaf: $c9


    ld [hl], a                                    ; $6ab0: $77
    adc h                                         ; $6ab1: $8c
    ld [hl], a                                    ; $6ab2: $77
    ld a, c                                       ; $6ab3: $79
    ld l, c                                       ; $6ab4: $69
    ld [hl], l                                    ; $6ab5: $75
    ld b, [hl]                                    ; $6ab6: $46
    rrca                                          ; $6ab7: $0f
    add a                                         ; $6ab8: $87
    dec h                                         ; $6ab9: $25
    add $bc                                       ; $6aba: $c6 $bc
    ld c, a                                       ; $6abc: $4f
    db $d3                                        ; $6abd: $d3
    cp a                                          ; $6abe: $bf
    sbc [hl]                                      ; $6abf: $9e
    ld l, e                                       ; $6ac0: $6b
    ld e, l                                       ; $6ac1: $5d
    sub e                                         ; $6ac2: $93
    ld l, e                                       ; $6ac3: $6b
    dec c                                         ; $6ac4: $0d
    cp d                                          ; $6ac5: $ba
    ld h, d                                       ; $6ac6: $62
    push hl                                       ; $6ac7: $e5
    ld l, [hl]                                    ; $6ac8: $6e
    rst $38                                       ; $6ac9: $ff
    rst $18                                       ; $6aca: $df
    or h                                          ; $6acb: $b4
    add $df                                       ; $6acc: $c6 $df
    push bc                                       ; $6ace: $c5
    ld [hl], $fc                                  ; $6acf: $36 $fc
    jp z, $9d5b                                   ; $6ad1: $ca $5b $9d

    ld h, b                                       ; $6ad4: $60
    ld d, $4b                                     ; $6ad5: $16 $4b
    dec de                                        ; $6ad7: $1b
    add $2e                                       ; $6ad8: $c6 $2e
    dec l                                         ; $6ada: $2d
    inc bc                                        ; $6adb: $03
    ld a, [de]                                    ; $6adc: $1a
    pop bc                                        ; $6add: $c1
    inc l                                         ; $6ade: $2c
    sub $40                                       ; $6adf: $d6 $40
    ld [hl], d                                    ; $6ae1: $72
    dec e                                         ; $6ae2: $1d
    rra                                           ; $6ae3: $1f
    sub c                                         ; $6ae4: $91
    inc a                                         ; $6ae5: $3c
    cp c                                          ; $6ae6: $b9
    jp z, Jump_02f_7630                           ; $6ae7: $ca $30 $76

    db $dd                                        ; $6aea: $dd
    ld l, a                                       ; $6aeb: $6f
    ld h, h                                       ; $6aec: $64
    ld c, b                                       ; $6aed: $48
    jp Jump_02f_637f                              ; $6aee: $c3 $7f $63


    sub b                                         ; $6af1: $90
    inc l                                         ; $6af2: $2c
    ld d, l                                       ; $6af3: $55
    sub h                                         ; $6af4: $94
    or a                                          ; $6af5: $b7
    sbc l                                         ; $6af6: $9d
    ld h, b                                       ; $6af7: $60
    ld b, $6e                                     ; $6af8: $06 $6e
    or c                                          ; $6afa: $b1
    and [hl]                                      ; $6afb: $a6
    ld b, b                                       ; $6afc: $40
    adc h                                         ; $6afd: $8c
    ld l, e                                       ; $6afe: $6b
    rla                                           ; $6aff: $17
    db $db                                        ; $6b00: $db
    cp $a5                                        ; $6b01: $fe $a5
    sub l                                         ; $6b03: $95
    cp e                                          ; $6b04: $bb
    db $fd                                        ; $6b05: $fd
    ld a, a                                       ; $6b06: $7f
    db $d3                                        ; $6b07: $d3
    ld a, [de]                                    ; $6b08: $1a
    ld a, a                                       ; $6b09: $7f
    rla                                           ; $6b0a: $17
    db $db                                        ; $6b0b: $db
    ldh a, [$2b]                                  ; $6b0c: $f0 $2b
    cp c                                          ; $6b0e: $b9
    ld h, e                                       ; $6b0f: $63
    call Call_02f_66bd                            ; $6b10: $cd $bd $66
    dec e                                         ; $6b13: $1d
    rra                                           ; $6b14: $1f
    sub c                                         ; $6b15: $91
    inc a                                         ; $6b16: $3c
    rst $18                                       ; $6b17: $df
    ld d, c                                       ; $6b18: $51
    ccf                                           ; $6b19: $3f
    adc l                                         ; $6b1a: $8d
    ccf                                           ; $6b1b: $3f

Call_02f_6b1c:
    cp c                                          ; $6b1c: $b9
    ret nz                                        ; $6b1d: $c0

    ld de, $314c                                  ; $6b1e: $11 $4c $31
    ld a, d                                       ; $6b21: $7a
    sub b                                         ; $6b22: $90
    db $fd                                        ; $6b23: $fd
    ret nz                                        ; $6b24: $c0

    ld h, e                                       ; $6b25: $63
    and l                                         ; $6b26: $a5
    ld c, [hl]                                    ; $6b27: $4e
    sbc $02                                       ; $6b28: $de $02
    ld b, a                                       ; $6b2a: $47
    db $fd                                        ; $6b2b: $fd
    inc [hl]                                      ; $6b2c: $34
    cp $e4                                        ; $6b2d: $fe $e4
    or d                                          ; $6b2f: $b2
    rst $28                                       ; $6b30: $ef
    add [hl]                                      ; $6b31: $86
    and e                                         ; $6b32: $a3
    rlca                                          ; $6b33: $07
    inc [hl]                                      ; $6b34: $34
    xor [hl]                                      ; $6b35: $ae
    ld d, l                                       ; $6b36: $55
    ld e, l                                       ; $6b37: $5d
    ld d, a                                       ; $6b38: $57
    sbc d                                         ; $6b39: $9a
    ld [hl+], a                                   ; $6b3a: $22
    xor h                                         ; $6b3b: $ac
    and $36                                       ; $6b3c: $e6 $36
    xor [hl]                                      ; $6b3e: $ae
    ld d, l                                       ; $6b3f: $55
    rst $28                                       ; $6b40: $ef
    xor a                                         ; $6b41: $af
    ld b, d                                       ; $6b42: $42
    ld b, c                                       ; $6b43: $41
    rst $20                                       ; $6b44: $e7
    cp h                                          ; $6b45: $bc
    dec b                                         ; $6b46: $05
    ld b, a                                       ; $6b47: $47
    cp h                                          ; $6b48: $bc
    sbc a                                         ; $6b49: $9f
    db $fd                                        ; $6b4a: $fd
    ret nz                                        ; $6b4b: $c0

    ld [hl], a                                    ; $6b4c: $77
    xor h                                         ; $6b4d: $ac
    cp c                                          ; $6b4e: $b9
    rst $10                                       ; $6b4f: $d7
    db $e4                                        ; $6b50: $e4
    dec l                                         ; $6b51: $2d
    push af                                       ; $6b52: $f5
    dec [hl]                                      ; $6b53: $35
    and $61                                       ; $6b54: $e6 $61
    inc l                                         ; $6b56: $2c
    inc bc                                        ; $6b57: $03
    ld a, [de]                                    ; $6b58: $1a
    pop bc                                        ; $6b59: $c1
    inc d                                         ; $6b5a: $14
    ld c, e                                       ; $6b5b: $4b
    dec d                                         ; $6b5c: $15
    ld b, l                                       ; $6b5d: $45
    call c, Call_02f_75f2                         ; $6b5e: $dc $f2 $75
    add d                                         ; $6b61: $82
    ld sp, $ce82                                  ; $6b62: $31 $82 $ce
    res 0, b                                      ; $6b65: $cb $80
    sub [hl]                                      ; $6b67: $96
    xor l                                         ; $6b68: $ad
    sub c                                         ; $6b69: $91
    ld d, $0f                                     ; $6b6a: $16 $0f
    ld e, c                                       ; $6b6c: $59
    ld e, a                                       ; $6b6d: $5f
    or l                                          ; $6b6e: $b5
    add a                                         ; $6b6f: $87
    or [hl]                                       ; $6b70: $b6
    daa                                           ; $6b71: $27
    ld bc, $5b2e                                  ; $6b72: $01 $2e $5b
    ld h, e                                       ; $6b75: $63
    inc b                                         ; $6b76: $04
    sbc l                                         ; $6b77: $9d
    sub a                                         ; $6b78: $97
    ld b, d                                       ; $6b79: $42
    db $fd                                        ; $6b7a: $fd
    cp h                                          ; $6b7b: $bc
    dec b                                         ; $6b7c: $05
    and a                                         ; $6b7d: $a7
    ccf                                           ; $6b7e: $3f
    inc l                                         ; $6b7f: $2c
    ld [hl], l                                    ; $6b80: $75
    sub d                                         ; $6b81: $92
    ld c, e                                       ; $6b82: $4b
    and c                                         ; $6b83: $a1
    ld a, $75                                     ; $6b84: $3e $75
    ld b, a                                       ; $6b86: $47
    db $eb                                        ; $6b87: $eb
    pop de                                        ; $6b88: $d1
    add [hl]                                      ; $6b89: $86
    ld l, [hl]                                    ; $6b8a: $6e
    xor e                                         ; $6b8b: $ab
    ld d, b                                       ; $6b8c: $50
    ret nc                                        ; $6b8d: $d0

    add hl, sp                                    ; $6b8e: $39
    ld l, a                                       ; $6b8f: $6f
    ld bc, $e41d                                  ; $6b90: $01 $1d $e4
    rla                                           ; $6b93: $17
    ld h, $d7                                     ; $6b94: $26 $d7
    pop bc                                        ; $6b96: $c1
    cp b                                          ; $6b97: $b8
    ld d, l                                       ; $6b98: $55
    ld e, d                                       ; $6b99: $5a
    rst $00                                       ; $6b9a: $c7
    ld d, a                                       ; $6b9b: $57
    and l                                         ; $6b9c: $a5
    ld e, l                                       ; $6b9d: $5d
    pop bc                                        ; $6b9e: $c1
    adc $5b                                       ; $6b9f: $ce $5b
    daa                                           ; $6ba1: $27
    sbc $d9                                       ; $6ba2: $de $d9
    or a                                          ; $6ba4: $b7
    ld b, b                                       ; $6ba5: $40
    jp nc, $8b1a                                  ; $6ba6: $d2 $1a $8b

    push de                                       ; $6ba9: $d5
    ld e, c                                       ; $6baa: $59
    and l                                         ; $6bab: $a5
    cp c                                          ; $6bac: $b9
    ld a, $77                                     ; $6bad: $3e $77
    adc l                                         ; $6baf: $8d
    pop bc                                        ; $6bb0: $c1
    ld b, b                                       ; $6bb1: $40
    jp nc, Jump_02f_6032                          ; $6bb2: $d2 $32 $60

    sbc a                                         ; $6bb5: $9f
    adc a                                         ; $6bb6: $8f
    ld h, b                                       ; $6bb7: $60
    adc h                                         ; $6bb8: $8c
    and b                                         ; $6bb9: $a0
    ld [hl], e                                    ; $6bba: $73
    sbc $02                                       ; $6bbb: $de $02
    ld e, c                                       ; $6bbd: $59
    ld [hl], a                                    ; $6bbe: $77
    dec b                                         ; $6bbf: $05
    adc l                                         ; $6bc0: $8d
    and l                                         ; $6bc1: $a5
    ld c, a                                       ; $6bc2: $4f
    ld e, b                                       ; $6bc3: $58
    add $ef                                       ; $6bc4: $c6 $ef
    ld e, l                                       ; $6bc6: $5d
    sub e                                         ; $6bc7: $93
    ld l, e                                       ; $6bc8: $6b
    adc h                                         ; $6bc9: $8c
    ld a, $e4                                     ; $6bca: $3e $e4
    dec l                                         ; $6bcc: $2d
    sbc l                                         ; $6bcd: $9d
    ld h, b                                       ; $6bce: $60
    ld d, $3b                                     ; $6bcf: $16 $3b
    xor h                                         ; $6bd1: $ac
    xor a                                         ; $6bd2: $af
    ld [hl], l                                    ; $6bd3: $75
    ld a, b                                       ; $6bd4: $78
    cp $b1                                        ; $6bd5: $fe $b1
    inc d                                         ; $6bd7: $14
    ld b, l                                       ; $6bd8: $45
    ld l, l                                       ; $6bd9: $6d
    ld h, d                                       ; $6bda: $62
    dec bc                                        ; $6bdb: $0b
    sbc l                                         ; $6bdc: $9d
    ld h, b                                       ; $6bdd: $60
    xor [hl]                                      ; $6bde: $ae
    ld e, $1f                                     ; $6bdf: $1e $1f
    add $c1                                       ; $6be1: $c6 $c1
    dec l                                         ; $6be3: $2d
    sbc l                                         ; $6be4: $9d
    ld h, b                                       ; $6be5: $60
    adc d                                         ; $6be6: $8a
    jp hl                                         ; $6be7: $e9


    inc de                                        ; $6be8: $13
    sub $75                                       ; $6be9: $d6 $75
    ld d, l                                       ; $6beb: $55
    ld a, [$1634]                                 ; $6bec: $fa $34 $16
    call c, Call_02f_6b1c                         ; $6bef: $dc $1c $6b
    inc de                                        ; $6bf2: $13
    ld e, e                                       ; $6bf3: $5b
    and a                                         ; $6bf4: $a7
    sub d                                         ; $6bf5: $92
    ld de, $fad0                                  ; $6bf6: $11 $d0 $fa
    ret c                                         ; $6bf9: $d8

    ld d, c                                       ; $6bfa: $51
    add hl, de                                    ; $6bfb: $19
    ret nz                                        ; $6bfc: $c0

    ld b, [hl]                                    ; $6bfd: $46
    sub l                                         ; $6bfe: $95
    ld a, $b5                                     ; $6bff: $3e $b5
    daa                                           ; $6c01: $27
    and l                                         ; $6c02: $a5
    or d                                          ; $6c03: $b2
    ld b, l                                       ; $6c04: $45
    dec l                                         ; $6c05: $2d
    ld b, a                                       ; $6c06: $47
    db $fd                                        ; $6c07: $fd
    xor e                                         ; $6c08: $ab
    and $2a                                       ; $6c09: $e6 $2a
    xor a                                         ; $6c0b: $af
    cp c                                          ; $6c0c: $b9
    ld [hl], c                                    ; $6c0d: $71
    call nc, Call_02f_62b8                        ; $6c0e: $d4 $b8 $62
    ld hl, sp+$59                                 ; $6c11: $f8 $59
    ld a, [hl]                                    ; $6c13: $7e
    db $e3                                        ; $6c14: $e3
    xor b                                         ; $6c15: $a8
    ld c, a                                       ; $6c16: $4f
    pop de                                        ; $6c17: $d1
    ld [bc], a                                    ; $6c18: $02
    ld b, a                                       ; $6c19: $47
    cp a                                          ; $6c1a: $bf
    add d                                         ; $6c1b: $82
    ld l, a                                       ; $6c1c: $6f
    dec e                                         ; $6c1d: $1d
    adc h                                         ; $6c1e: $8c
    add l                                         ; $6c1f: $85
    dec l                                         ; $6c20: $2d
    ld b, a                                       ; $6c21: $47
    cp a                                          ; $6c22: $bf
    add d                                         ; $6c23: $82
    ld l, a                                       ; $6c24: $6f
    sbc l                                         ; $6c25: $9d
    inc e                                         ; $6c26: $1c
    sbc e                                         ; $6c27: $9b
    add d                                         ; $6c28: $82
    rla                                           ; $6c29: $17
    ld b, h                                       ; $6c2a: $44
    dec bc                                        ; $6c2b: $0b
    and a                                         ; $6c2c: $a7
    ld a, [de]                                    ; $6c2d: $1a
    jr nc, jr_02f_6c92                            ; $6c2e: $30 $62

    sbc c                                         ; $6c30: $99
    ld [hl], e                                    ; $6c31: $73
    ld sp, hl                                     ; $6c32: $f9
    ld a, [de]                                    ; $6c33: $1a
    ld [hl], e                                    ; $6c34: $73
    ld b, d                                       ; $6c35: $42
    or l                                          ; $6c36: $b5
    daa                                           ; $6c37: $27
    ld [hl+], a                                   ; $6c38: $22
    inc hl                                        ; $6c39: $23
    add e                                         ; $6c3a: $83
    ld d, $47                                     ; $6c3b: $16 $47
    ld [hl], l                                    ; $6c3d: $75
    ld l, [hl]                                    ; $6c3e: $6e
    ld l, [hl]                                    ; $6c3f: $6e
    adc [hl]                                      ; $6c40: $8e
    ld a, [$5a97]                                 ; $6c41: $fa $97 $5a
    daa                                           ; $6c44: $27
    ld [hl+], a                                   ; $6c45: $22
    sub e                                         ; $6c46: $93
    rst $28                                       ; $6c47: $ef
    ld d, h                                       ; $6c48: $54
    ld b, b                                       ; $6c49: $40
    ld h, $6f                                     ; $6c4a: $26 $6f

jr_02f_6c4c:
    ld bc, $9e1d                                  ; $6c4c: $01 $1d $9e
    ld a, a                                       ; $6c4f: $7f
    inc l                                         ; $6c50: $2c
    ld b, l                                       ; $6c51: $45
    pop de                                        ; $6c52: $d1
    ld [bc], a                                    ; $6c53: $02
    and a                                         ; $6c54: $a7
    call c, $8302                                 ; $6c55: $dc $02 $83
    ld a, [c]                                     ; $6c58: $f2
    ld d, $1d                                     ; $6c59: $16 $1d
    adc h                                         ; $6c5b: $8c
    add l                                         ; $6c5c: $85
    ld l, d                                       ; $6c5d: $6a
    ld bc, $3f47                                  ; $6c5e: $01 $47 $3f
    cp a                                          ; $6c61: $bf
    call nc, Call_02f_4702                        ; $6c62: $d4 $02 $47
    sbc $d2                                       ; $6c65: $de $d2
    ld a, [$16a1]                                 ; $6c67: $fa $a1 $16
    add a                                         ; $6c6a: $87
    or e                                          ; $6c6b: $b3
    or b                                          ; $6c6c: $b0
    jr nz, jr_02f_6c4c                            ; $6c6d: $20 $dd

    ld e, d                                       ; $6c6f: $5a
    ld b, a                                       ; $6c70: $47
    ccf                                           ; $6c71: $3f
    rst $08                                       ; $6c72: $cf
    rst $10                                       ; $6c73: $d7
    pop bc                                        ; $6c74: $c1
    ld e, b                                       ; $6c75: $58
    ld a, c                                       ; $6c76: $79
    dec bc                                        ; $6c77: $0b
    ld b, a                                       ; $6c78: $47
    sbc $d2                                       ; $6c79: $de $d2
    ld sp, hl                                     ; $6c7b: $f9
    ld a, [hl-]                                   ; $6c7c: $3a

jr_02f_6c7d:
    jr jr_02f_6caa                                ; $6c7d: $18 $2b

    ld l, a                                       ; $6c7f: $6f
    ld bc, $f587                                  ; $6c80: $01 $87 $f5
    push de                                       ; $6c83: $d5
    rst $00                                       ; $6c84: $c7
    ld h, c                                       ; $6c85: $61
    ld a, l                                       ; $6c86: $7d
    xor a                                         ; $6c87: $af
    dec b                                         ; $6c88: $05
    ld b, a                                       ; $6c89: $47
    db $fd                                        ; $6c8a: $fd
    ld d, d                                       ; $6c8b: $52
    sub a                                         ; $6c8c: $97
    pop de                                        ; $6c8d: $d1
    ld c, b                                       ; $6c8e: $48
    ld sp, $7d96                                  ; $6c8f: $31 $96 $7d

jr_02f_6c92:
    adc d                                         ; $6c92: $8a
    ld d, $c7                                     ; $6c93: $16 $c7
    ret c                                         ; $6c95: $d8

    and a                                         ; $6c96: $a7
    sbc b                                         ; $6c97: $98
    cp $2e                                        ; $6c98: $fe $2e
    ld b, b                                       ; $6c9a: $40
    rra                                           ; $6c9b: $1f
    rst $10                                       ; $6c9c: $d7
    cp b                                          ; $6c9d: $b8
    dec de                                        ; $6c9e: $1b
    db $eb                                        ; $6c9f: $eb

jr_02f_6ca0:
    db $fd                                        ; $6ca0: $fd
    ld d, $c7                                     ; $6ca1: $16 $c7
    ret c                                         ; $6ca3: $d8

    and a                                         ; $6ca4: $a7
    sbc b                                         ; $6ca5: $98
    ld a, [hl-]                                   ; $6ca6: $3a
    sub e                                         ; $6ca7: $93
    ld e, e                                       ; $6ca8: $5b
    dec bc                                        ; $6ca9: $0b

jr_02f_6caa:
    rst $00                                       ; $6caa: $c7
    ret c                                         ; $6cab: $d8

jr_02f_6cac:
    and a                                         ; $6cac: $a7
    sbc b                                         ; $6cad: $98
    cp $42                                        ; $6cae: $fe $42
    xor $8a                                       ; $6cb0: $ee $8a
    ld [hl], c                                    ; $6cb2: $71
    adc l                                         ; $6cb3: $8d
    cp e                                          ; $6cb4: $bb
    or c                                          ; $6cb5: $b1
    sbc $6f                                       ; $6cb6: $de $6f
    ld bc, $d8c7                                  ; $6cb8: $01 $c7 $d8
    and a                                         ; $6cbb: $a7
    jr jr_02f_6c7d                                ; $6cbc: $18 $bf

    dec de                                        ; $6cbe: $1b
    dec bc                                        ; $6cbf: $0b
    dec bc                                        ; $6cc0: $0b
    jp nc, Jump_000_05ad                          ; $6cc1: $d2 $ad $05

    rst $00                                       ; $6cc4: $c7
    ret c                                         ; $6cc5: $d8

    and a                                         ; $6cc6: $a7
    jr jr_02f_6ca0                                ; $6cc7: $18 $d7

    ld [c], a                                     ; $6cc9: $e2
    ld sp, hl                                     ; $6cca: $f9
    and l                                         ; $6ccb: $a5
    ld d, d                                       ; $6ccc: $52
    db $e4                                        ; $6ccd: $e4
    xor b                                         ; $6cce: $a8
    ld d, $c7                                     ; $6ccf: $16 $c7
    ret c                                         ; $6cd1: $d8

    and a                                         ; $6cd2: $a7
    jr jr_02f_6cac                                ; $6cd3: $18 $d7

    ld a, [hl+]                                   ; $6cd5: $2a
    ld h, e                                       ; $6cd6: $63
    and c                                         ; $6cd7: $a1
    ld e, d                                       ; $6cd8: $5a
    ld b, a                                       ; $6cd9: $47
    db $fd                                        ; $6cda: $fd
    ld d, d                                       ; $6cdb: $52
    sub a                                         ; $6cdc: $97
    pop de                                        ; $6cdd: $d1
    add sp, -$03                                  ; $6cde: $e8 $fd
    ld e, l                                       ; $6ce0: $5d
    ld l, h                                       ; $6ce1: $6c
    ld l, e                                       ; $6ce2: $6b
    ld h, h                                       ; $6ce3: $64
    ret nc                                        ; $6ce4: $d0

    ld [bc], a                                    ; $6ce5: $02
    ld e, c                                       ; $6ce6: $59
    ld l, h                                       ; $6ce7: $6c
    ld l, e                                       ; $6ce8: $6b
    ld h, h                                       ; $6ce9: $64
    or b                                          ; $6cea: $b0
    and $e1                                       ; $6ceb: $e6 $e1
    daa                                           ; $6ced: $27
    ld l, b                                       ; $6cee: $68
    ld bc, $6c59                                  ; $6cef: $01 $59 $6c
    ld l, e                                       ; $6cf2: $6b
    ld h, h                                       ; $6cf3: $64
    or b                                          ; $6cf4: $b0
    and $e1                                       ; $6cf5: $e6 $e1
    daa                                           ; $6cf7: $27
    sbc b                                         ; $6cf8: $98
    ld a, [hl-]                                   ; $6cf9: $3a
    sub e                                         ; $6cfa: $93
    ld e, e                                       ; $6cfb: $5b
    dec bc                                        ; $6cfc: $0b
    ld e, c                                       ; $6cfd: $59
    ld l, h                                       ; $6cfe: $6c
    ld l, e                                       ; $6cff: $6b
    ld h, h                                       ; $6d00: $64
    jr nc, jr_02f_6d2e                            ; $6d01: $30 $2b

    push hl                                       ; $6d03: $e5
    ld a, l                                       ; $6d04: $7d
    sub $ad                                       ; $6d05: $d6 $ad
    dec b                                         ; $6d07: $05
    ld e, c                                       ; $6d08: $59
    ld l, h                                       ; $6d09: $6c
    ld l, e                                       ; $6d0a: $6b
    ld h, h                                       ; $6d0b: $64
    or b                                          ; $6d0c: $b0
    jp z, $9858                                   ; $6d0d: $ca $58 $98

    ld bc, $59b5                                  ; $6d10: $01 $b5 $59
    ld l, h                                       ; $6d13: $6c
    ld l, e                                       ; $6d14: $6b
    ld h, h                                       ; $6d15: $64
    jr nc, jr_02f_6d8d                            ; $6d16: $30 $75

    ld h, $b7                                     ; $6d18: $26 $b7
    rst $20                                       ; $6d1a: $e7
    inc e                                         ; $6d1b: $1c
    cp a                                          ; $6d1c: $bf
    and c                                         ; $6d1d: $a1
    xor e                                         ; $6d1e: $ab
    dec b                                         ; $6d1f: $05
    ld e, c                                       ; $6d20: $59
    ld l, h                                       ; $6d21: $6c
    ld l, e                                       ; $6d22: $6b
    ld h, h                                       ; $6d23: $64
    jr nc, @-$50                                  ; $6d24: $30 $ae

    push bc                                       ; $6d26: $c5
    di                                            ; $6d27: $f3
    ld c, e                                       ; $6d28: $4b
    and l                                         ; $6d29: $a5
    ret z                                         ; $6d2a: $c8

    ld d, c                                       ; $6d2b: $51
    dec l                                         ; $6d2c: $2d
    daa                                           ; $6d2d: $27

jr_02f_6d2e:
    sub c                                         ; $6d2e: $91
    ld b, [hl]                                    ; $6d2f: $46
    ld [hl], $7f                                  ; $6d30: $36 $7f
    add hl, hl                                    ; $6d32: $29
    or l                                          ; $6d33: $b5
    and a                                         ; $6d34: $a7
    cp h                                          ; $6d35: $bc
    sub h                                         ; $6d36: $94
    add $35                                       ; $6d37: $c6 $35
    ld [hl], d                                    ; $6d39: $72
    ld h, e                                       ; $6d3a: $63
    inc c                                         ; $6d3b: $0c
    ld c, e                                       ; $6d3c: $4b
    dec bc                                        ; $6d3d: $0b
    ld e, c                                       ; $6d3e: $59
    sub $68                                       ; $6d3f: $d6 $68
    db $fc                                        ; $6d41: $fc
    adc $46                                       ; $6d42: $ce $46
    ld b, [hl]                                    ; $6d44: $46
    sbc $02                                       ; $6d45: $de $02
    and a                                         ; $6d47: $a7
    cp h                                          ; $6d48: $bc
    sub h                                         ; $6d49: $94
    add $35                                       ; $6d4a: $c6 $35
    ld [hl], d                                    ; $6d4c: $72
    ld h, e                                       ; $6d4d: $63
    inc c                                         ; $6d4e: $0c
    set 2, h                                      ; $6d4f: $cb $d4
    sbc c                                         ; $6d51: $99
    call c, Call_02f_595a                         ; $6d52: $dc $5a $59
    sub $68                                       ; $6d55: $d6 $68
    db $fc                                        ; $6d57: $fc
    adc $46                                       ; $6d58: $ce $46
    ld b, [hl]                                    ; $6d5a: $46
    ld a, $75                                     ; $6d5b: $3e $75
    ld h, $b7                                     ; $6d5d: $26 $b7
    ld d, $a7                                     ; $6d5f: $16 $a7
    cp h                                          ; $6d61: $bc
    sub h                                         ; $6d62: $94
    and [hl]                                      ; $6d63: $a6
    cp a                                          ; $6d64: $bf
    call nc, $9603                                ; $6d65: $d4 $03 $96
    db $db                                        ; $6d68: $db
    ld l, a                                       ; $6d69: $6f
    ld bc, $d659                                  ; $6d6a: $01 $59 $d6
    ld l, b                                       ; $6d6d: $68
    ld e, h                                       ; $6d6e: $5c
    inc hl                                        ; $6d6f: $23
    ld d, l                                       ; $6d70: $55
    ld c, l                                       ; $6d71: $4d
    rst $10                                       ; $6d72: $d7
    and h                                         ; $6d73: $a4
    ld d, $27                                     ; $6d74: $16 $27
    sub c                                         ; $6d76: $91
    ld b, [hl]                                    ; $6d77: $46
    or [hl]                                       ; $6d78: $b6
    ld c, e                                       ; $6d79: $4b
    ld hl, sp+$09                                 ; $6d7a: $f8 $09
    ld e, h                                       ; $6d7c: $5c
    dec l                                         ; $6d7d: $2d
    ld e, c                                       ; $6d7e: $59
    jp nz, $e04f                                  ; $6d7f: $c2 $4f $e0

    sbc d                                         ; $6d82: $9a
    cp $2e                                        ; $6d83: $fe $2e
    ld b, b                                       ; $6d85: $40
    ld l, a                                       ; $6d86: $6f
    ld bc, $c259                                  ; $6d87: $01 $59 $c2
    ld c, a                                       ; $6d8a: $4f
    ldh [rNR30], a                                ; $6d8b: $e0 $1a

jr_02f_6d8d:
    cp a                                          ; $6d8d: $bf
    rst $18                                       ; $6d8e: $df
    cp [hl]                                       ; $6d8f: $be
    sbc h                                         ; $6d90: $9c
    add l                                         ; $6d91: $85
    ld l, d                                       ; $6d92: $6a
    ld bc, $c259                                  ; $6d93: $01 $59 $c2
    ld c, a                                       ; $6d96: $4f
    ldh [rNR30], a                                ; $6d97: $e0 $1a
    rst $10                                       ; $6d99: $d7
    db $fc                                        ; $6d9a: $fc
    ld d, $18                                     ; $6d9b: $16 $18
    ld h, h                                       ; $6d9d: $64
    rst $38                                       ; $6d9e: $ff
    ld d, d                                       ; $6d9f: $52
    dec bc                                        ; $6da0: $0b
    ld e, c                                       ; $6da1: $59
    jp nz, $e04f                                  ; $6da2: $c2 $4f $e0

    ld a, [de]                                    ; $6da5: $1a
    rst $10                                       ; $6da6: $d7
    jp nc, Jump_000_2fcf                          ; $6da7: $d2 $cf $2f

    or l                                          ; $6daa: $b5
    ld e, c                                       ; $6dab: $59
    jp nz, $e04f                                  ; $6dac: $c2 $4f $e0

    ld a, [de]                                    ; $6daf: $1a
    rst $10                                       ; $6db0: $d7
    db $fc                                        ; $6db1: $fc
    and l                                         ; $6db2: $a5
    jr nz, jr_02f_6dfd                            ; $6db3: $20 $48

    ld de, $016a                                  ; $6db5: $11 $6a $01
    ld e, c                                       ; $6db8: $59
    jp nz, $e04f                                  ; $6db9: $c2 $4f $e0

    ld a, [de]                                    ; $6dbc: $1a
    rst $10                                       ; $6dbd: $d7
    ld d, d                                       ; $6dbe: $52
    ld d, $84                                     ; $6dbf: $16 $84
    rst $28                                       ; $6dc1: $ef
    or a                                          ; $6dc2: $b7
    ld b, a                                       ; $6dc3: $47
    db $fd                                        ; $6dc4: $fd
    ld d, d                                       ; $6dc5: $52
    sub a                                         ; $6dc6: $97
    pop de                                        ; $6dc7: $d1
    ld c, b                                       ; $6dc8: $48
    or c                                          ; $6dc9: $b1
    call nc, Call_02f_5223                        ; $6dca: $d4 $23 $52
    or h                                          ; $6dcd: $b4
    ld b, a                                       ; $6dce: $47
    inc a                                         ; $6dcf: $3c
    ld [hl+], a                                   ; $6dd0: $22
    ld b, l                                       ; $6dd1: $45
    dec bc                                        ; $6dd2: $0b
    ld b, a                                       ; $6dd3: $47
    inc a                                         ; $6dd4: $3c
    ld [hl+], a                                   ; $6dd5: $22
    push bc                                       ; $6dd6: $c5
    call nc, $dc99                                ; $6dd7: $d4 $99 $dc
    ld e, d                                       ; $6dda: $5a
    ld b, a                                       ; $6ddb: $47
    inc a                                         ; $6ddc: $3c
    ld [hl+], a                                   ; $6ddd: $22
    push bc                                       ; $6dde: $c5
    ld e, h                                       ; $6ddf: $5c
    ccf                                           ; $6de0: $3f
    db $fd                                        ; $6de1: $fd
    db $fc                                        ; $6de2: $fc
    cp d                                          ; $6de3: $ba
    add hl, hl                                    ; $6de4: $29
    ld e, d                                       ; $6de5: $5a
    ld b, a                                       ; $6de6: $47
    inc a                                         ; $6de7: $3c

jr_02f_6de8:
    ld [hl+], a                                   ; $6de8: $22
    push bc                                       ; $6de9: $c5
    ld a, [hl+]                                   ; $6dea: $2a
    ld h, e                                       ; $6deb: $63
    ld h, c                                       ; $6dec: $61
    ld b, $14                                     ; $6ded: $06 $14
    dec l                                         ; $6def: $2d
    ld b, a                                       ; $6df0: $47
    inc a                                         ; $6df1: $3c
    ld [hl+], a                                   ; $6df2: $22
    push bc                                       ; $6df3: $c5
    cp b                                          ; $6df4: $b8
    sub $f8                                       ; $6df5: $d6 $f8
    inc hl                                        ; $6df7: $23
    ld e, l                                       ; $6df8: $5d
    add h                                         ; $6df9: $84
    rst $28                                       ; $6dfa: $ef
    or a                                          ; $6dfb: $b7
    ld b, a                                       ; $6dfc: $47

jr_02f_6dfd:
    inc a                                         ; $6dfd: $3c
    ld [hl+], a                                   ; $6dfe: $22
    push bc                                       ; $6dff: $c5
    cp b                                          ; $6e00: $b8
    ld d, $cf                                     ; $6e01: $16 $cf
    cpl                                           ; $6e03: $2f
    sub l                                         ; $6e04: $95
    ld [hl+], a                                   ; $6e05: $22
    ld b, a                                       ; $6e06: $47
    or l                                          ; $6e07: $b5
    daa                                           ; $6e08: $27
    ld h, b                                       ; $6e09: $60
    sub b                                         ; $6e0a: $90
    add $15                                       ; $6e0b: $c6 $15
    ld c, e                                       ; $6e0d: $4b
    ccf                                           ; $6e0e: $3f
    ldh a, [$8f]                                  ; $6e0f: $f0 $8f
    inc b                                         ; $6e11: $04
    xor [hl]                                      ; $6e12: $ae
    ld l, b                                       ; $6e13: $68
    ld bc, $6027                                  ; $6e14: $01 $27 $60
    sub b                                         ; $6e17: $90
    add $15                                       ; $6e18: $c6 $15
    cp e                                          ; $6e1a: $bb
    ld e, $78                                     ; $6e1b: $1e $78
    or h                                          ; $6e1d: $b4
    daa                                           ; $6e1e: $27
    ld h, b                                       ; $6e1f: $60
    sub b                                         ; $6e20: $90
    add $15                                       ; $6e21: $c6 $15
    ld l, e                                       ; $6e23: $6b
    adc d                                         ; $6e24: $8a
    ld a, l                                       ; $6e25: $7d

Call_02f_6e26:
    ld d, d                                       ; $6e26: $52
    or h                                          ; $6e27: $b4
    daa                                           ; $6e28: $27
    sbc $2e                                       ; $6e29: $de $2e
    ld b, l                                       ; $6e2b: $45
    jr jr_02f_6de8                                ; $6e2c: $18 $ba

    ld d, [hl]                                    ; $6e2e: $56
    ld h, a                                       ; $6e2f: $67
    add hl, hl                                    ; $6e30: $29
    dec hl                                        ; $6e31: $2b
    add [hl]                                      ; $6e32: $86
    dec l                                         ; $6e33: $2d
    dec e                                         ; $6e34: $1d
    dec l                                         ; $6e35: $2d
    inc bc                                        ; $6e36: $03
    and d                                         ; $6e37: $a2
    pop af                                        ; $6e38: $f1
    ei                                            ; $6e39: $fb
    adc l                                         ; $6e3a: $8d
    jr nc, jr_02f_6e40                            ; $6e3b: $30 $03

    ld [hl+], a                                   ; $6e3d: $22
    ld d, d                                       ; $6e3e: $52
    or h                                          ; $6e3f: $b4

jr_02f_6e40:
    ld e, c                                       ; $6e40: $59
    and $a4                                       ; $6e41: $e6 $a4
    ld [hl], c                                    ; $6e43: $71
    ret c                                         ; $6e44: $d8

    add l                                         ; $6e45: $85
    ld a, [hl+]                                   ; $6e46: $2a
    dec l                                         ; $6e47: $2d
    dec e                                         ; $6e48: $1d
    call $b62f                                    ; $6e49: $cd $2f $b6
    ld a, [hl+]                                   ; $6e4c: $2a
    db $fc                                        ; $6e4d: $fc
    dec l                                         ; $6e4e: $2d
    add a                                         ; $6e4f: $87
    ld a, a                                       ; $6e50: $7f
    ld b, d                                       ; $6e51: $42
    cp $48                                        ; $6e52: $fe $48
    dec l                                         ; $6e54: $2d
    dec e                                         ; $6e55: $1d
    rra                                           ; $6e56: $1f
    pop hl                                        ; $6e57: $e1
    ei                                            ; $6e58: $fb
    dec sp                                        ; $6e59: $3b
    rrca                                          ; $6e5a: $0f
    ld e, c                                       ; $6e5b: $59
    inc l                                         ; $6e5c: $2c
    db $fd                                        ; $6e5d: $fd
    di                                            ; $6e5e: $f3
    ld d, h                                       ; $6e5f: $54
    ld a, b                                       ; $6e60: $78
    dec bc                                        ; $6e61: $0b
    dec e                                         ; $6e62: $1d
    rra                                           ; $6e63: $1f
    pop hl                                        ; $6e64: $e1
    ei                                            ; $6e65: $fb
    dec sp                                        ; $6e66: $3b
    rrca                                          ; $6e67: $0f
    ld e, c                                       ; $6e68: $59
    inc l                                         ; $6e69: $2c
    db $fd                                        ; $6e6a: $fd
    di                                            ; $6e6b: $f3
    ld d, h                                       ; $6e6c: $54
    ld hl, sp-$2c                                 ; $6e6d: $f8 $d4
    sbc c                                         ; $6e6f: $99
    call c, Call_000_1d5a                         ; $6e70: $dc $5a $1d
    rra                                           ; $6e73: $1f
    pop hl                                        ; $6e74: $e1
    ei                                            ; $6e75: $fb
    ld h, e                                       ; $6e76: $63
    bit 2, e                                      ; $6e77: $cb $53
    ld a, b                                       ; $6e79: $78
    ld hl, $0b57                                  ; $6e7a: $21 $57 $0b
    dec e                                         ; $6e7d: $1d
    rra                                           ; $6e7e: $1f
    pop hl                                        ; $6e7f: $e1
    ei                                            ; $6e80: $fb
    ld h, e                                       ; $6e81: $63
    sub b                                         ; $6e82: $90
    xor h                                         ; $6e83: $ac
    jp nz, $2dce                                  ; $6e84: $c2 $ce $2d

    dec e                                         ; $6e87: $1d
    or c                                          ; $6e88: $b1
    jp nc, $fc27                                  ; $6e89: $d2 $27 $fc

    ld l, d                                       ; $6e8c: $6a
    ld bc, $b11d                                  ; $6e8d: $01 $1d $b1
    jp nc, $fc27                                  ; $6e90: $d2 $27 $fc

    sbc d                                         ; $6e93: $9a
    ld a, [hl-]                                   ; $6e94: $3a
    sub e                                         ; $6e95: $93
    ld e, e                                       ; $6e96: $5b
    dec bc                                        ; $6e97: $0b
    and a                                         ; $6e98: $a7
    jp c, Jump_02f_73b5                           ; $6e99: $da $b5 $73

jr_02f_6e9c:
    sub c                                         ; $6e9c: $91
    ld d, [hl]                                    ; $6e9d: $56
    ld h, a                                       ; $6e9e: $67
    call Call_02f_7c23                            ; $6e9f: $cd $23 $7c
    ccf                                           ; $6ea2: $3f
    ld e, d                                       ; $6ea3: $5a
    ld e, c                                       ; $6ea4: $59
    ld l, h                                       ; $6ea5: $6c
    inc bc                                        ; $6ea6: $03
    xor $ef                                       ; $6ea7: $ee $ef
    xor a                                         ; $6ea9: $af
    add hl, hl                                    ; $6eaa: $29
    ld l, b                                       ; $6eab: $68
    xor c                                         ; $6eac: $a9
    and d                                         ; $6ead: $a2
    ld d, $59                                     ; $6eae: $16 $59
    ld l, h                                       ; $6eb0: $6c
    inc bc                                        ; $6eb1: $03
    xor $ef                                       ; $6eb2: $ee $ef
    ld c, a                                       ; $6eb4: $4f
    ld a, a                                       ; $6eb5: $7f
    rla                                           ; $6eb6: $17
    jr nz, jr_02f_6e9c                            ; $6eb7: $20 $e3

    ld l, d                                       ; $6eb9: $6a
    ld bc, $6c59                                  ; $6eba: $01 $59 $6c
    inc bc                                        ; $6ebd: $03
    xor $ef                                       ; $6ebe: $ee $ef
    ld c, a                                       ; $6ec0: $4f
    ld a, a                                       ; $6ec1: $7f
    push bc                                       ; $6ec2: $c5
    sub b                                         ; $6ec3: $90
    sbc $6f                                       ; $6ec4: $de $6f
    ld bc, $6c59                                  ; $6ec6: $01 $59 $6c
    inc bc                                        ; $6ec9: $03
    xor $ef                                       ; $6eca: $ee $ef

jr_02f_6ecc:
    ld c, a                                       ; $6ecc: $4f
    ld a, a                                       ; $6ecd: $7f
    and $2c                                       ; $6ece: $e6 $2c
    ld a, l                                       ; $6ed0: $7d
    ld l, d                                       ; $6ed1: $6a
    ld bc, $6c59                                  ; $6ed2: $01 $59 $6c
    inc bc                                        ; $6ed5: $03
    xor $ef                                       ; $6ed6: $ee $ef
    rst $08                                       ; $6ed8: $cf
    add b                                         ; $6ed9: $80
    ld e, [hl]                                    ; $6eda: $5e
    ld h, l                                       ; $6edb: $65
    add h                                         ; $6edc: $84
    add hl, de                                    ; $6edd: $19
    ld d, b                                       ; $6ede: $50
    dec bc                                        ; $6edf: $0b
    rst $00                                       ; $6ee0: $c7
    jr c, jr_02f_6f39                             ; $6ee1: $38 $56

    rrca                                          ; $6ee3: $0f
    ld e, l                                       ; $6ee4: $5d
    dec l                                         ; $6ee5: $2d
    daa                                           ; $6ee6: $27
    jr nz, jr_02f_6ecc                            ; $6ee7: $20 $e3

    adc d                                         ; $6ee9: $8a
    push bc                                       ; $6eea: $c5
    push af                                       ; $6eeb: $f5
    adc d                                         ; $6eec: $8a
    and c                                         ; $6eed: $a1

jr_02f_6eee:
    dec hl                                        ; $6eee: $2b
    ld e, d                                       ; $6eef: $5a
    ld b, a                                       ; $6ef0: $47
    cp a                                          ; $6ef1: $bf
    add d                                         ; $6ef2: $82
    ld l, a                                       ; $6ef3: $6f
    sbc l                                         ; $6ef4: $9d
    inc e                                         ; $6ef5: $1c
    sbc e                                         ; $6ef6: $9b
    add d                                         ; $6ef7: $82
    rla                                           ; $6ef8: $17
    ld b, h                                       ; $6ef9: $44
    dec bc                                        ; $6efa: $0b
    ld b, a                                       ; $6efb: $47
    cp a                                          ; $6efc: $bf
    add d                                         ; $6efd: $82
    ld l, a                                       ; $6efe: $6f
    dec e                                         ; $6eff: $1d
    adc h                                         ; $6f00: $8c
    add l                                         ; $6f01: $85
    dec l                                         ; $6f02: $2d
    ld e, c                                       ; $6f03: $59
    and $5f                                       ; $6f04: $e6 $5f
    call nc, Call_000_2702                        ; $6f06: $d4 $02 $27
    jr nz, jr_02f_6eee                            ; $6f09: $20 $e3

    ld a, [de]                                    ; $6f0b: $1a
    rst $10                                       ; $6f0c: $d7
    ld a, [hl+]                                   ; $6f0d: $2a
    dec hl                                        ; $6f0e: $2b
    or a                                          ; $6f0f: $b7
    inc [hl]                                      ; $6f10: $34
    ld e, [hl]                                    ; $6f11: $5e
    adc d                                         ; $6f12: $8a
    ld d, $47                                     ; $6f13: $16 $47
    jr jr_02f_6f22                                ; $6f15: $18 $0b

    ld b, h                                       ; $6f17: $44
    and h                                         ; $6f18: $a4
    ld [hl], c                                    ; $6f19: $71
    db $ed                                        ; $6f1a: $ed
    ld e, b                                       ; $6f1b: $58
    ld [hl], e                                    ; $6f1c: $73
    xor a                                         ; $6f1d: $af
    ld l, c                                       ; $6f1e: $69
    ld bc, $5847                                  ; $6f1f: $01 $47 $58

jr_02f_6f22:
    ld sp, $7fdc                                  ; $6f22: $31 $dc $7f
    ld e, [hl]                                    ; $6f25: $5e
    ld e, c                                       ; $6f26: $59
    ld l, c                                       ; $6f27: $69

Jump_02f_6f28:
    ld bc, $af59                                  ; $6f28: $01 $59 $af
    xor d                                         ; $6f2b: $aa
    ld c, e                                       ; $6f2c: $4b
    ld e, d                                       ; $6f2d: $5a
    rst $18                                       ; $6f2e: $df
    db $fd                                        ; $6f2f: $fd
    rst $30                                       ; $6f30: $f7
    reti                                          ; $6f31: $d9


    ld [bc], a                                    ; $6f32: $02
    ld b, a                                       ; $6f33: $47
    pop de                                        ; $6f34: $d1
    jp Jump_000_1da2                              ; $6f35: $c3 $a2 $1d


    adc l                                         ; $6f38: $8d

jr_02f_6f39:
    push bc                                       ; $6f39: $c5
    ld a, $a9                                     ; $6f3a: $3e $a9
    dec b                                         ; $6f3c: $05
    daa                                           ; $6f3d: $27
    ld h, d                                       ; $6f3e: $62
    sub l                                         ; $6f3f: $95
    add d                                         ; $6f40: $82
    ld e, b                                       ; $6f41: $58
    rst $18                                       ; $6f42: $df

jr_02f_6f43:
    ld a, l                                       ; $6f43: $7d
    or $d9                                        ; $6f44: $f6 $d9
    ld h, a                                       ; $6f46: $67
    dec bc                                        ; $6f47: $0b
    and a                                         ; $6f48: $a7
    ret c                                         ; $6f49: $d8

    add l                                         ; $6f4a: $85
    ld e, a                                       ; $6f4b: $5f
    db $e3                                        ; $6f4c: $e3
    ld [hl], a                                    ; $6f4d: $77
    adc e                                         ; $6f4e: $8b
    add [hl]                                      ; $6f4f: $86
    db $fd                                        ; $6f50: $fd
    ld a, b                                       ; $6f51: $78
    db $dd                                        ; $6f52: $dd
    and d                                         ; $6f53: $a2
    ld d, $27                                     ; $6f54: $16 $27
    ld e, d                                       ; $6f56: $5a
    and e                                         ; $6f57: $a3
    jp nc, Jump_000_2702                          ; $6f58: $d2 $02 $27

    add hl, sp                                    ; $6f5b: $39
    and c                                         ; $6f5c: $a1
    ld h, d                                       ; $6f5d: $62
    ld [hl], c                                    ; $6f5e: $71
    cp e                                          ; $6f5f: $bb
    ret c                                         ; $6f60: $d8

    scf                                           ; $6f61: $37
    ld b, l                                       ; $6f62: $45
    dec bc                                        ; $6f63: $0b
    ld b, a                                       ; $6f64: $47
    ld [c], a                                     ; $6f65: $e2
    ld b, l                                       ; $6f66: $45
    ld d, [hl]                                    ; $6f67: $56
    xor c                                         ; $6f68: $a9
    dec b                                         ; $6f69: $05
    add a                                         ; $6f6a: $87
    ld a, e                                       ; $6f6b: $7b
    push af                                       ; $6f6c: $f5
    jr nc, jr_02f_6f43                            ; $6f6d: $30 $d4

    ld [bc], a                                    ; $6f6f: $02
    and a                                         ; $6f70: $a7
    ret c                                         ; $6f71: $d8

    add l                                         ; $6f72: $85
    ld e, a                                       ; $6f73: $5f
    db $e3                                        ; $6f74: $e3
    ld e, d                                       ; $6f75: $5a

jr_02f_6f76:
    ld h, l                                       ; $6f76: $65
    sbc a                                         ; $6f77: $9f
    cp e                                          ; $6f78: $bb
    or c                                          ; $6f79: $b1
    sbc [hl]                                      ; $6f7a: $9e
    xor e                                         ; $6f7b: $ab
    dec b                                         ; $6f7c: $05
    dec e                                         ; $6f7d: $1d
    ld h, l                                       ; $6f7e: $65
    jr nc, jr_02f_6fff                            ; $6f7f: $30 $7e

    ld a, a                                       ; $6f81: $7f
    dec c                                         ; $6f82: $0d
    dec de                                        ; $6f83: $1b
    add hl, sp                                    ; $6f84: $39
    ld [$47b7], a                                 ; $6f85: $ea $b7 $47
    dec [hl]                                      ; $6f88: $35
    ld hl, sp+$15                                 ; $6f89: $f8 $15
    db $e3                                        ; $6f8b: $e3
    ld e, d                                       ; $6f8c: $5a
    di                                            ; $6f8d: $f3
    db $fc                                        ; $6f8e: $fc
    xor d                                         ; $6f8f: $aa
    ld [hl], a                                    ; $6f90: $77
    ld l, e                                       ; $6f91: $6b
    ldh a, [rOCPS]                                ; $6f92: $f0 $6a
    ld bc, $1f1d                                  ; $6f94: $01 $1d $1f
    ld [hl], b                                    ; $6f97: $70
    rst $10                                       ; $6f98: $d7
    cp b                                          ; $6f99: $b8
    sub $a0                                       ; $6f9a: $d6 $a0
    add b                                         ; $6f9c: $80
    ld [hl], c                                    ; $6f9d: $71
    or l                                          ; $6f9e: $b5
    ld h, a                                       ; $6f9f: $67
    add hl, bc                                    ; $6fa0: $09
    ld a, [hl-]                                   ; $6fa1: $3a
    adc a                                         ; $6fa2: $8f
    ld l, e                                       ; $6fa3: $6b
    ld [hl], c                                    ; $6fa4: $71
    sbc c                                         ; $6fa5: $99
    ld e, e                                       ; $6fa6: $5b
    ld [$16a6], a                                 ; $6fa7: $ea $a6 $16
    ld e, c                                       ; $6faa: $59
    rst $08                                       ; $6fab: $cf
    cp a                                          ; $6fac: $bf
    add $b5                                       ; $6fad: $c6 $b5
    inc d                                         ; $6faf: $14
    ld e, [hl]                                    ; $6fb0: $5e
    rst $08                                       ; $6fb1: $cf
    cp a                                          ; $6fb2: $bf
    ld e, d                                       ; $6fb3: $5a
    ld e, c                                       ; $6fb4: $59
    cp $2e                                        ; $6fb5: $fe $2e
    or [hl]                                       ; $6fb7: $b6
    jr z, @-$38                                   ; $6fb8: $28 $c6

    or l                                          ; $6fba: $b5
    sub b                                         ; $6fbb: $90
    scf                                           ; $6fbc: $37
    ld a, [$02d4]                                 ; $6fbd: $fa $d4 $02
    ld b, a                                       ; $6fc0: $47
    call c, $7fce                                 ; $6fc1: $dc $ce $7f
    and $bc                                       ; $6fc4: $e6 $bc
    dec b                                         ; $6fc6: $05
    ld e, c                                       ; $6fc7: $59
    rst $08                                       ; $6fc8: $cf
    cp a                                          ; $6fc9: $bf
    add $b5                                       ; $6fca: $c6 $b5
    add d                                         ; $6fcc: $82
    rst $10                                       ; $6fcd: $d7
    di                                            ; $6fce: $f3
    xor a                                         ; $6fcf: $af
    jp hl                                         ; $6fd0: $e9


    rst $08                                       ; $6fd1: $cf
    sbc h                                         ; $6fd2: $9c
    and l                                         ; $6fd3: $a5
    ld c, a                                       ; $6fd4: $4f
    dec l                                         ; $6fd5: $2d
    sbc l                                         ; $6fd6: $9d
    ld b, b                                       ; $6fd7: $40
    push af                                       ; $6fd8: $f5
    jp z, $a683                                   ; $6fd9: $ca $83 $a6

    dec b                                         ; $6fdc: $05
    add a                                         ; $6fdd: $87
    ld e, a                                       ; $6fde: $5f
    rst $28                                       ; $6fdf: $ef
    inc hl                                        ; $6fe0: $23
    or l                                          ; $6fe1: $b5
    ld b, a                                       ; $6fe2: $47
    cp d                                          ; $6fe3: $ba
    or c                                          ; $6fe4: $b1
    ld l, [hl]                                    ; $6fe5: $6e
    adc d                                         ; $6fe6: $8a
    dec b                                         ; $6fe7: $05
    ld a, b                                       ; $6fe8: $78
    db $e3                                        ; $6fe9: $e3
    jr jr_02f_6f76                                ; $6fea: $18 $8a

    ld d, $59                                     ; $6fec: $16 $59
    db $ec                                        ; $6fee: $ec
    ld [hl], a                                    ; $6fef: $77
    dec a                                         ; $6ff0: $3d
    sub [hl]                                      ; $6ff1: $96
    db $eb                                        ; $6ff2: $eb
    ccf                                           ; $6ff3: $3f
    ret nz                                        ; $6ff4: $c0

    ld d, d                                       ; $6ff5: $52
    inc d                                         ; $6ff6: $14
    dec l                                         ; $6ff7: $2d
    ld b, a                                       ; $6ff8: $47
    ld e, b                                       ; $6ff9: $58
    add hl, hl                                    ; $6ffa: $29
    rst $28                                       ; $6ffb: $ef
    or e                                          ; $6ffc: $b3
    ld e, [hl]                                    ; $6ffd: $5e
    ld d, l                                       ; $6ffe: $55

jr_02f_6fff:
    add hl, hl                                    ; $6fff: $29
    ld e, d                                       ; $7000: $5a
    dec e                                         ; $7001: $1d
    adc l                                         ; $7002: $8d
    db $ec                                        ; $7003: $ec
    ld b, d                                       ; $7004: $42
    ld a, [c]                                     ; $7005: $f2
    rlca                                          ; $7006: $07
    ld e, b                                       ; $7007: $58
    adc d                                         ; $7008: $8a
    and d                                         ; $7009: $a2
    dec b                                         ; $700a: $05
    ld b, a                                       ; $700b: $47
    cp a                                          ; $700c: $bf
    rst $08                                       ; $700d: $cf
    db $ed                                        ; $700e: $ed
    ld d, e                                       ; $700f: $53
    adc h                                         ; $7010: $8c
    jp $b62e                                      ; $7011: $c3 $2e $b6


    ld bc, $f7f7                                  ; $7014: $01 $f7 $f7
    ld e, e                                       ; $7017: $5b
    ld b, a                                       ; $7018: $47
    jr jr_02f_7026                                ; $7019: $18 $0b

    ld b, h                                       ; $701b: $44
    and h                                         ; $701c: $a4
    sbc b                                         ; $701d: $98
    rst $18                                       ; $701e: $df
    ld e, b                                       ; $701f: $58
    dec b                                         ; $7020: $05
    inc hl                                        ; $7021: $23
    call nc, $c702                                ; $7022: $d4 $02 $c7
    adc d                                         ; $7025: $8a

jr_02f_7026:
    sbc a                                         ; $7026: $9f
    add a                                         ; $7027: $87
    inc l                                         ; $7028: $2c
    dec h                                         ; $7029: $25
    ld d, a                                       ; $702a: $57
    ld l, h                                       ; $702b: $6c
    rla                                           ; $702c: $17
    ei                                            ; $702d: $fb
    add c                                         ; $702e: $81
    adc b                                         ; $702f: $88
    call nc, $8702                                ; $7030: $d4 $02 $87
    ld e, a                                       ; $7033: $5f
    ld d, a                                       ; $7034: $57
    db $dd                                        ; $7035: $dd
    ld e, b                                       ; $7036: $58
    ld d, $5b                                     ; $7037: $16 $5b
    ld d, l                                       ; $7039: $55
    cp [hl]                                       ; $703a: $be
    ld c, [hl]                                    ; $703b: $4e
    ld l, [hl]                                    ; $703c: $6e
    adc h                                         ; $703d: $8c
    inc a                                         ; $703e: $3c
    call nc, Call_000_2702                        ; $703f: $d4 $02 $27
    ld e, b                                       ; $7042: $58
    add e                                         ; $7043: $83
    ld a, a                                       ; $7044: $7f
    inc c                                         ; $7045: $0c
    cp [hl]                                       ; $7046: $be
    ld [hl+], a                                   ; $7047: $22
    ld l, d                                       ; $7048: $6a
    ld bc, $551d                                  ; $7049: $01 $1d $55
    adc d                                         ; $704c: $8a
    ld e, d                                       ; $704d: $5a
    ld e, c                                       ; $704e: $59
    ld l, h                                       ; $704f: $6c
    di                                            ; $7050: $f3
    call nc, $2dfb                                ; $7051: $d4 $fb $2d
    dec e                                         ; $7054: $1d
    rra                                           ; $7055: $1f
    inc d                                         ; $7056: $14
    ld d, c                                       ; $7057: $51
    dec bc                                        ; $7058: $0b
    dec e                                         ; $7059: $1d
    dec bc                                        ; $705a: $0b
    ld d, h                                       ; $705b: $54
    ld a, [de]                                    ; $705c: $1a
    cp a                                          ; $705d: $bf
    dec de                                        ; $705e: $1b
    sub b                                         ; $705f: $90
    jp Jump_02f_56c5                              ; $7060: $c3 $c5 $56


    dec bc                                        ; $7063: $0b
    dec e                                         ; $7064: $1d
    ld l, a                                       ; $7065: $6f
    ld h, h                                       ; $7066: $64
    adc $57                                       ; $7067: $ce $57
    ld h, a                                       ; $7069: $67
    ld hl, $f46f                                  ; $706a: $21 $6f $f4
    add hl, bc                                    ; $706d: $09
    ld a, a                                       ; $706e: $7f
    or h                                          ; $706f: $b4
    daa                                           ; $7070: $27
    ret c                                         ; $7071: $d8

    adc [hl]                                      ; $7072: $8e
    or c                                          ; $7073: $b1
    di                                            ; $7074: $f3
    ld b, l                                       ; $7075: $45
    and h                                         ; $7076: $a4
    ld [hl], c                                    ; $7077: $71
    ld e, b                                       ; $7078: $58
    inc a                                         ; $7079: $3c
    cp a                                          ; $707a: $bf
    ld d, b                                       ; $707b: $50
    sbc $02                                       ; $707c: $de $02
    ld e, c                                       ; $707e: $59
    ld l, [hl]                                    ; $707f: $6e
    adc h                                         ; $7080: $8c
    sub c                                         ; $7081: $91
    add $b5                                       ; $7082: $c6 $b5
    adc [hl]                                      ; $7084: $8e
    rrca                                          ; $7085: $0f
    ld a, b                                       ; $7086: $78
    ld sp, $2de7                                  ; $7087: $31 $e7 $2d
    rst $00                                       ; $708a: $c7
    inc hl                                        ; $708b: $23
    xor l                                         ; $708c: $ad
    ld a, c                                       ; $708d: $79
    db $10                                        ; $708e: $10
    and c                                         ; $708f: $a1
    ld a, d                                       ; $7090: $7a
    adc h                                         ; $7091: $8c
    call c, $d141                                 ; $7092: $dc $41 $d1
    ld [bc], a                                    ; $7095: $02
    dec e                                         ; $7096: $1d
    or c                                          ; $7097: $b1
    xor $a5                                       ; $7098: $ee $a5
    ld [hl], c                                    ; $709a: $71
    xor l                                         ; $709b: $ad
    cp a                                          ; $709c: $bf
    ld a, $d7                                     ; $709d: $3e $d7
    add sp, $5f                                   ; $709f: $e8 $5f
    ld l, d                                       ; $70a1: $6a
    ld bc, $5847                                  ; $70a2: $01 $47 $58
    add hl, hl                                    ; $70a5: $29
    rst $28                                       ; $70a6: $ef
    rst $00                                       ; $70a7: $c7
    ld a, [bc]                                    ; $70a8: $0a
    ld d, h                                       ; $70a9: $54
    ld hl, sp+$05                                 ; $70aa: $f8 $05
    sbc l                                         ; $70ac: $9d
    ld e, e                                       ; $70ad: $5b
    dec e                                         ; $70ae: $1d
    dec l                                         ; $70af: $2d
    inc bc                                        ; $70b0: $03
    and d                                         ; $70b1: $a2
    ld [hl], c                                    ; $70b2: $71
    db $ed                                        ; $70b3: $ed
    call nz, $55d7                                ; $70b4: $c4 $d7 $55
    ld l, c                                       ; $70b7: $69
    ld bc, $cd1d                                  ; $70b8: $01 $1d $cd
    xor l                                         ; $70bb: $ad
    add hl, hl                                    ; $70bc: $29
    add b                                         ; $70bd: $80
    ld a, [de]                                    ; $70be: $1a
    rst $10                                       ; $70bf: $d7
    adc [hl]                                      ; $70c0: $8e
    dec [hl]                                      ; $70c1: $35
    sub [hl]                                      ; $70c2: $96
    inc hl                                        ; $70c3: $23
    ld l, a                                       ; $70c4: $6f
    ld bc, $511d                                  ; $70c5: $01 $1d $51
    xor $5a                                       ; $70c8: $ee $5a
    jp $f2c6                                      ; $70ca: $c3 $c6 $f2


    ld [c], a                                     ; $70cd: $e2
    dec [hl]                                      ; $70ce: $35
    ld l, h                                       ; $70cf: $6c
    dec hl                                        ; $70d0: $2b
    ld l, d                                       ; $70d1: $6a
    ld bc, $58a7                                  ; $70d2: $01 $a7 $58
    and e                                         ; $70d5: $a3
    ld b, d                                       ; $70d6: $42

jr_02f_70d7:
    rrca                                          ; $70d7: $0f
    xor b                                         ; $70d8: $a8
    dec b                                         ; $70d9: $05
    ld b, a                                       ; $70da: $47
    db $fd                                        ; $70db: $fd
    xor e                                         ; $70dc: $ab

Jump_02f_70dd:
    and $2a                                       ; $70dd: $e6 $2a
    xor a                                         ; $70df: $af
    cp c                                          ; $70e0: $b9
    ld [hl], c                                    ; $70e1: $71
    call nc, Call_02f_62b8                        ; $70e2: $d4 $b8 $62
    ld hl, sp+$59                                 ; $70e5: $f8 $59
    ld a, [hl]                                    ; $70e7: $7e
    db $e3                                        ; $70e8: $e3
    xor b                                         ; $70e9: $a8
    ld c, a                                       ; $70ea: $4f
    pop de                                        ; $70eb: $d1
    ld [bc], a                                    ; $70ec: $02
    ld b, a                                       ; $70ed: $47
    sub a                                         ; $70ee: $97
    ld e, $48                                     ; $70ef: $1e $48
    dec l                                         ; $70f1: $2d
    ld e, c                                       ; $70f2: $59
    push hl                                       ; $70f3: $e5
    ld [hl], $e6                                  ; $70f4: $36 $e6
    dec d                                         ; $70f6: $15
    ei                                            ; $70f7: $fb
    and h                                         ; $70f8: $a4
    ld d, $1d                                     ; $70f9: $16 $1d
    sbc [hl]                                      ; $70fb: $9e
    ld a, a                                       ; $70fc: $7f
    inc l                                         ; $70fd: $2c
    ld b, l                                       ; $70fe: $45
    pop de                                        ; $70ff: $d1
    ld [bc], a                                    ; $7100: $02
    ld b, a                                       ; $7101: $47
    ld de, $4bfe                                  ; $7102: $11 $fe $4b
    and l                                         ; $7105: $a5
    ld l, b                                       ; $7106: $68
    ld e, h                                       ; $7107: $5c
    ld h, e                                       ; $7108: $63
    pop bc                                        ; $7109: $c1
    call $de31                                    ; $710a: $cd $31 $de
    ld l, a                                       ; $710d: $6f
    ld bc, $d659                                  ; $710e: $01 $59 $d6
    ld l, b                                       ; $7111: $68
    db $fc                                        ; $7112: $fc
    adc [hl]                                      ; $7113: $8e
    sbc a                                         ; $7114: $9f
    pop bc                                        ; $7115: $c1
    ret nz                                        ; $7116: $c0

    inc d                                         ; $7117: $14
    ld d, $a4                                     ; $7118: $16 $a4
    ld e, e                                       ; $711a: $5b
    dec bc                                        ; $711b: $0b
    ld e, c                                       ; $711c: $59
    xor a                                         ; $711d: $af
    ld c, d                                       ; $711e: $4a
    pop hl                                        ; $711f: $e1
    scf                                           ; $7120: $37
    adc h                                         ; $7121: $8c
    rst $30                                       ; $7122: $f7
    rst $00                                       ; $7123: $c7
    or l                                          ; $7124: $b5
    inc l                                         ; $7125: $2c
    ld [hl], e                                    ; $7126: $73
    ld d, d                                       ; $7127: $52
    or h                                          ; $7128: $b4
    sbc l                                         ; $7129: $9d
    ld h, b                                       ; $712a: $60
    rst $38                                       ; $712b: $ff
    ld l, [hl]                                    ; $712c: $6e
    ld sp, $0b83                                  ; $712d: $31 $83 $0b
    cp $5e                                        ; $7130: $fe $5e
    ld a, [hl+]                                   ; $7132: $2a
    ld e, e                                       ; $7133: $5b
    ld d, h                                       ; $7134: $54
    sbc e                                         ; $7135: $9b
    ret c                                         ; $7136: $d8

    ld [bc], a                                    ; $7137: $02
    ld e, c                                       ; $7138: $59
    and $a4                                       ; $7139: $e6 $a4
    ld [hl], c                                    ; $713b: $71
    dec l                                         ; $713c: $2d
    sbc [hl]                                      ; $713d: $9e
    ld e, a                                       ; $713e: $5f
    ld e, b                                       ; $713f: $58
    rst $10                                       ; $7140: $d7
    dec d                                         ; $7141: $15
    inc de                                        ; $7142: $13
    dec l                                         ; $7143: $2d
    sbc [hl]                                      ; $7144: $9e
    ld e, a                                       ; $7145: $5f
    jr z, jr_02f_70d7                             ; $7146: $28 $8f

    ld e, l                                       ; $7148: $5d
    or a                                          ; $7149: $b7
    ld d, d                                       ; $714a: $52
    scf                                           ; $714b: $37
    push hl                                       ; $714c: $e5
    adc d                                         ; $714d: $8a
    ld d, $a7                                     ; $714e: $16 $a7
    ld de, $0c16                                  ; $7150: $11 $16 $0c
    ld sp, hl                                     ; $7153: $f9
    ld l, $d1                                     ; $7154: $2e $d1
    ld e, [hl]                                    ; $7156: $5e
    ld a, [hl+]                                   ; $7157: $2a
    ld e, e                                       ; $7158: $5b
    ld d, h                                       ; $7159: $54
    ld a, e                                       ; $715a: $7b
    ld l, b                                       ; $715b: $68
    dec bc                                        ; $715c: $0b
    sbc l                                         ; $715d: $9d
    rrca                                          ; $715e: $0f
    db $eb                                        ; $715f: $eb
    ld l, e                                       ; $7160: $6b
    dec l                                         ; $7161: $2d
    rst $00                                       ; $7162: $c7
    sub l                                         ; $7163: $95
    ld a, l                                       ; $7164: $7d
    dec l                                         ; $7165: $2d
    or h                                          ; $7166: $b4
    add $22                                       ; $7167: $c6 $22
    inc [hl]                                      ; $7169: $34
    ld b, a                                       ; $716a: $47
    db $fd                                        ; $716b: $fd
    jp c, $16c4                                   ; $716c: $da $c4 $16

    sbc l                                         ; $716f: $9d
    ld h, b                                       ; $7170: $60
    ld e, a                                       ; $7171: $5f
    ld l, e                                       ; $7172: $6b
    inc b                                         ; $7173: $04
    sbc l                                         ; $7174: $9d
    rst $10                                       ; $7175: $d7
    ld e, b                                       ; $7176: $58
    xor h                                         ; $7177: $ac
    call c, $b081                                 ; $7178: $dc $81 $b0
    ld h, b                                       ; $717b: $60
    ret z                                         ; $717c: $c8

    ld d, a                                       ; $717d: $57
    add hl, de                                    ; $717e: $19
    ld a, [hl]                                    ; $717f: $7e
    jp nc, $4fb7                                  ; $7180: $d2 $b7 $4f

    or l                                          ; $7183: $b5
    adc c                                         ; $7184: $89
    dec l                                         ; $7185: $2d
    add a                                         ; $7186: $87
    scf                                           ; $7187: $37
    dec c                                         ; $7188: $0d
    and b                                         ; $7189: $a0
    ld d, $e0                                     ; $718a: $16 $e0
    add e                                         ; $718c: $83
    cp a                                          ; $718d: $bf
    call nc, Call_02f_7a03                        ; $718e: $d4 $03 $7a
    ld a, a                                       ; $7191: $7f
    call $df03                                    ; $7192: $cd $03 $df
    push af                                       ; $7195: $f5
    ld a, $e1                                     ; $7196: $3e $e1
    rlca                                          ; $7198: $07
    ld a, c                                       ; $7199: $79
    sbc $02                                       ; $719a: $de $02
    rst $00                                       ; $719c: $c7
    sbc d                                         ; $719d: $9a
    ld a, e                                       ; $719e: $7b
    call Call_02f_76fc                            ; $719f: $cd $fc $76
    ld b, c                                       ; $71a2: $41
    ld d, e                                       ; $71a3: $53
    rst $10                                       ; $71a4: $d7
    or l                                          ; $71a5: $b5
    jp Jump_02f_5afa                              ; $71a6: $c3 $fa $5a


    di                                            ; $71a9: $f3
    ldh a, [rHDMA3]                               ; $71aa: $f0 $53
    cpl                                           ; $71ac: $2f
    pop de                                        ; $71ad: $d1
    db $eb                                        ; $71ae: $eb
    cp b                                          ; $71af: $b8

jr_02f_71b0:
    and $b7                                       ; $71b0: $e6 $b7
    ret nz                                        ; $71b2: $c0

    jr nz, jr_02f_71b0                            ; $71b3: $20 $fb

    sub a                                         ; $71b5: $97
    ld a, [c]                                     ; $71b6: $f2
    ld d, $c7                                     ; $71b7: $16 $c7
    sbc d                                         ; $71b9: $9a
    ld a, e                                       ; $71ba: $7b
    call Call_02f_76fc                            ; $71bb: $cd $fc $76
    ld b, c                                       ; $71be: $41
    ld d, e                                       ; $71bf: $53
    rst $10                                       ; $71c0: $d7
    or l                                          ; $71c1: $b5
    jp Jump_02f_5afa                              ; $71c2: $c3 $fa $5a


    di                                            ; $71c5: $f3
    ldh a, [rHDMA3]                               ; $71c6: $f0 $53
    cpl                                           ; $71c8: $2f
    pop de                                        ; $71c9: $d1
    db $eb                                        ; $71ca: $eb
    cp b                                          ; $71cb: $b8
    ld d, [hl]                                    ; $71cc: $56
    add hl, de                                    ; $71cd: $19
    dec bc                                        ; $71ce: $0b
    sub l                                         ; $71cf: $95
    or a                                          ; $71d0: $b7
    daa                                           ; $71d1: $27
    jp Jump_02f_415d                              ; $71d2: $c3 $5d $41


    push af                                       ; $71d5: $f5
    ld l, $2d                                     ; $71d6: $2e $2d
    inc bc                                        ; $71d8: $03
    ld e, d                                       ; $71d9: $5a
    pop de                                        ; $71da: $d1
    ld e, b                                       ; $71db: $58
    xor a                                         ; $71dc: $af
    rlca                                          ; $71dd: $07
    ld a, [de]                                    ; $71de: $1a
    rlca                                          ; $71df: $07
    rst $10                                       ; $71e0: $d7
    jp z, Jump_000_2cfb                           ; $71e1: $ca $fb $2c

    ld d, d                                       ; $71e4: $52
    push de                                       ; $71e5: $d5
    call nz, $fdb8                                ; $71e6: $c4 $b8 $fd
    ld e, b                                       ; $71e9: $58
    or c                                          ; $71ea: $b1
    and l                                         ; $71eb: $a5
    ld e, $5c                                     ; $71ec: $1e $5c
    ld l, h                                       ; $71ee: $6c
    push de                                       ; $71ef: $d5
    ld h, $ae                                     ; $71f0: $26 $ae
    sub a                                         ; $71f2: $97
    sbc $0f                                       ; $71f3: $de $0f
    db $eb                                        ; $71f5: $eb
    ld l, e                                       ; $71f6: $6b
    dec e                                         ; $71f7: $1d
    ld c, a                                       ; $71f8: $4f
    jp hl                                         ; $71f9: $e9


    or l                                          ; $71fa: $b5
    rst $20                                       ; $71fb: $e7
    ld d, $59                                     ; $71fc: $16 $59
    ld [hl], a                                    ; $71fe: $77
    dec b                                         ; $71ff: $05
    ld c, l                                       ; $7200: $4d
    rst $38                                       ; $7201: $ff
    ld a, d                                       ; $7202: $7a
    xor [hl]                                      ; $7203: $ae
    ld d, l                                       ; $7204: $55
    jp nz, $0452                                  ; $7205: $c2 $52 $04

    cp [hl]                                       ; $7208: $be
    inc c                                         ; $7209: $0c
    ld l, b                                       ; $720a: $68
    push bc                                       ; $720b: $c5
    ld d, [hl]                                    ; $720c: $56
    add hl, bc                                    ; $720d: $09
    ld c, e                                       ; $720e: $4b
    ld de, $c6b8                                  ; $720f: $11 $b8 $c6
    dec d                                         ; $7212: $15
    ld l, e                                       ; $7213: $6b
    adc h                                         ; $7214: $8c
    db $ec                                        ; $7215: $ec
    ld b, d                                       ; $7216: $42
    ld a, [c]                                     ; $7217: $f2
    rlca                                          ; $7218: $07
    ld e, b                                       ; $7219: $58
    adc d                                         ; $721a: $8a
    and d                                         ; $721b: $a2
    ld [hl], $71                                  ; $721c: $36 $71
    cp l                                          ; $721e: $bd
    db $f4                                        ; $721f: $f4
    ld a, [hl]                                    ; $7220: $7e
    ld e, b                                       ; $7221: $58
    ld e, a                                       ; $7222: $5f
    db $eb                                        ; $7223: $eb
    ld a, b                                       ; $7224: $78
    ld c, d                                       ; $7225: $4a
    xor a                                         ; $7226: $af
    dec a                                         ; $7227: $3d
    or a                                          ; $7228: $b7
    ld e, c                                       ; $7229: $59
    ld [hl], a                                    ; $722a: $77
    dec b                                         ; $722b: $05
    adc l                                         ; $722c: $8d
    ld d, h                                       ; $722d: $54
    adc d                                         ; $722e: $8a
    ld a, [hl+]                                   ; $722f: $2a
    ld a, l                                       ; $7230: $7d
    ld e, d                                       ; $7231: $5a
    ld [$65fd], a                                 ; $7232: $ea $fd $65
    ldh [$fe], a                                  ; $7235: $e0 $fe
    cp $fe                                        ; $7237: $fe $fe
    ld e, l                                       ; $7239: $5d
    ld a, a                                       ; $723a: $7f
    push bc                                       ; $723b: $c5
    jr nc, jr_02f_7280                            ; $723c: $30 $42

    ld l, e                                       ; $723e: $6b
    inc l                                         ; $723f: $2c
    ld b, $5f                                     ; $7240: $06 $5f
    dec bc                                        ; $7242: $0b
    ld b, c                                       ; $7243: $41
    pop de                                        ; $7244: $d1
    ld a, [hl+]                                   ; $7245: $2a
    inc d                                         ; $7246: $14
    sub c                                         ; $7247: $91
    ld l, d                                       ; $7248: $6a
    inc de                                        ; $7249: $13
    rst $10                                       ; $724a: $d7
    ld c, e                                       ; $724b: $4b
    rst $28                                       ; $724c: $ef
    add a                                         ; $724d: $87
    push af                                       ; $724e: $f5
    or l                                          ; $724f: $b5
    adc [hl]                                      ; $7250: $8e
    and a                                         ; $7251: $a7
    db $f4                                        ; $7252: $f4
    jp c, Jump_000_0b73                           ; $7253: $da $73 $0b

    ld e, c                                       ; $7256: $59
    ld [hl], a                                    ; $7257: $77
    dec b                                         ; $7258: $05
    dec l                                         ; $7259: $2d
    ld [hl], b                                    ; $725a: $70
    xor c                                         ; $725b: $a9
    rst $30                                       ; $725c: $f7
    sub a                                         ; $725d: $97
    add c                                         ; $725e: $81
    ei                                            ; $725f: $fb
    ei                                            ; $7260: $fb
    dec hl                                        ; $7261: $2b
    add b                                         ; $7262: $80
    ld c, e                                       ; $7263: $4b
    dec de                                        ; $7264: $1b
    jp nc, Jump_000_2fe0                          ; $7265: $d2 $e0 $2f

    sbc [hl]                                      ; $7268: $9e
    db $d3                                        ; $7269: $d3
    db $f4                                        ; $726a: $f4
    rlca                                          ; $726b: $07
    ld a, a                                       ; $726c: $7f
    adc [hl]                                      ; $726d: $8e

jr_02f_726e:
    ld a, [$1ae3]                                 ; $726e: $fa $e3 $1a
    xor c                                         ; $7271: $a9
    ld l, d                                       ; $7272: $6a
    and d                                         ; $7273: $a2
    ld [hl], $71                                  ; $7274: $36 $71
    cp l                                          ; $7276: $bd
    db $f4                                        ; $7277: $f4
    ld a, [hl]                                    ; $7278: $7e

Call_02f_7279:
    ld e, b                                       ; $7279: $58
    ld e, a                                       ; $727a: $5f
    db $eb                                        ; $727b: $eb
    ld a, b                                       ; $727c: $78
    ld c, d                                       ; $727d: $4a
    xor a                                         ; $727e: $af
    dec l                                         ; $727f: $2d

jr_02f_7280:
    ld b, a                                       ; $7280: $47

jr_02f_7281:
    sbc $0a                                       ; $7281: $de $0a
    ld e, [hl]                                    ; $7283: $5e
    jr z, jr_02f_726e                             ; $7284: $28 $e8

    ld e, h                                       ; $7286: $5c
    sbc e                                         ; $7287: $9b
    cp b                                          ; $7288: $b8
    ld e, [hl]                                    ; $7289: $5e
    ld a, d                                       ; $728a: $7a
    ccf                                           ; $728b: $3f
    xor h                                         ; $728c: $ac
    xor a                                         ; $728d: $af
    ld [hl], l                                    ; $728e: $75
    inc a                                         ; $728f: $3c
    and l                                         ; $7290: $a5
    rst $10                                       ; $7291: $d7
    ld d, $47                                     ; $7292: $16 $47
    sbc $0a                                       ; $7294: $de $0a
    ld e, [hl]                                    ; $7296: $5e
    jr z, jr_02f_7281                             ; $7297: $28 $e8

    ld e, h                                       ; $7299: $5c
    sbc e                                         ; $729a: $9b
    cp b                                          ; $729b: $b8
    ld e, [hl]                                    ; $729c: $5e
    ld a, d                                       ; $729d: $7a
    ccf                                           ; $729e: $3f
    xor h                                         ; $729f: $ac
    xor a                                         ; $72a0: $af
    ld [hl], l                                    ; $72a1: $75
    inc a                                         ; $72a2: $3c
    and l                                         ; $72a3: $a5
    rst $10                                       ; $72a4: $d7
    ld d, $27                                     ; $72a5: $16 $27
    ld bc, $27b6                                  ; $72a7: $01 $b6 $27
    cp [hl]                                       ; $72aa: $be
    rst $18                                       ; $72ab: $df
    ld [bc], a                                    ; $72ac: $02
    db $db                                        ; $72ad: $db

Jump_02f_72ae:
    halt                                          ; $72ae: $76
    ld e, b                                       ; $72af: $58
    ld e, a                                       ; $72b0: $5f

jr_02f_72b1:
    db $eb                                        ; $72b1: $eb
    ldh a, [$fc]                                  ; $72b2: $f0 $fc
    or a                                          ; $72b4: $b7
    dec e                                         ; $72b5: $1d
    sbc [hl]                                      ; $72b6: $9e
    rst $38                                       ; $72b7: $ff
    ld d, $87                                     ; $72b8: $16 $87
    ld e, a                                       ; $72ba: $5f
    ld l, h                                       ; $72bb: $6c
    sub c                                         ; $72bc: $91
    cp h                                          ; $72bd: $bc
    dec b                                         ; $72be: $05
    and a                                         ; $72bf: $a7
    db $eb                                        ; $72c0: $eb
    ld [hl], e                                    ; $72c1: $73
    ld d, a                                       ; $72c2: $57
    dec bc                                        ; $72c3: $0b
    and a                                         ; $72c4: $a7
    ld a, $27                                     ; $72c5: $3e $27
    db $f4                                        ; $72c7: $f4
    ld d, $87                                     ; $72c8: $16 $87
    jp Jump_02f_788e                              ; $72ca: $c3 $8e $78


    ld a, a                                       ; $72cd: $7f
    ld e, c                                       ; $72ce: $59
    ld l, h                                       ; $72cf: $6c
    inc bc                                        ; $72d0: $03
    xor $ef                                       ; $72d1: $ee $ef
    or a                                          ; $72d3: $b7
    ld b, a                                       ; $72d4: $47
    and b                                         ; $72d5: $a0
    ld a, $a3                                     ; $72d6: $3e $a3
    rrca                                          ; $72d8: $0f
    jp c, $b0e1                                   ; $72d9: $da $e1 $b0

    inc hl                                        ; $72dc: $23
    sbc $5f                                       ; $72dd: $de $5f
    ld d, $db                                     ; $72df: $16 $db
    add b                                         ; $72e1: $80
    ei                                            ; $72e2: $fb
    ei                                            ; $72e3: $fb
    ld a, c                                       ; $72e4: $79
    dec bc                                        ; $72e5: $0b
    daa                                           ; $72e6: $27
    db $fd                                        ; $72e7: $fd
    ld e, l                                       ; $72e8: $5d
    ld l, h                                       ; $72e9: $6c
    ld sp, hl                                     ; $72ea: $f9
    push bc                                       ; $72eb: $c5
    sub $e8                                       ; $72ec: $d6 $e8
    ld b, c                                       ; $72ee: $41
    or $03                                        ; $72ef: $f6 $03
    adc a                                         ; $72f1: $8f
    ld [hl], c                                    ; $72f2: $71
    dec l                                         ; $72f3: $2d
    push af                                       ; $72f4: $f5
    cp $57                                        ; $72f5: $fe $57
    db $ec                                        ; $72f7: $ec
    ld e, l                                       ; $72f8: $5d
    sub a                                         ; $72f9: $97
    dec b                                         ; $72fa: $05
    cp [hl]                                       ; $72fb: $be
    rra                                           ; $72fc: $1f
    ld a, c                                       ; $72fd: $79
    dec bc                                        ; $72fe: $0b
    daa                                           ; $72ff: $27
    jp Jump_02f_415d                              ; $7300: $c3 $5d $41


    push af                                       ; $7303: $f5
    ld l, $2d                                     ; $7304: $2e $2d
    inc bc                                        ; $7306: $03
    ld a, [de]                                    ; $7307: $1a
    pop bc                                        ; $7308: $c1
    inc c                                         ; $7309: $0c
    dec hl                                        ; $730a: $2b
    cp c                                          ; $730b: $b9
    ld h, c                                       ; $730c: $61
    call nc, $da1e                                ; $730d: $d4 $1e $da
    ld [bc], a                                    ; $7310: $02
    and a                                         ; $7311: $a7
    db $fd                                        ; $7312: $fd
    ld e, l                                       ; $7313: $5d
    db $ec                                        ; $7314: $ec
    add a                                         ; $7315: $87
    sbc l                                         ; $7316: $9d
    sub a                                         ; $7317: $97
    dec c                                         ; $7318: $0d
    inc e                                         ; $7319: $1c
    cpl                                           ; $731a: $2f
    inc d                                         ; $731b: $14
    ld [hl], h                                    ; $731c: $74
    adc $77                                       ; $731d: $ce $77
    jr c, jr_02f_72b1                             ; $731f: $38 $90

    ld l, e                                       ; $7321: $6b
    rla                                           ; $7322: $17
    ei                                            ; $7323: $fb
    add l                                         ; $7324: $85
    ld l, d                                       ; $7325: $6a
    rrca                                          ; $7326: $0f
    ld l, l                                       ; $7327: $6d
    ld bc, $8327                                  ; $7328: $01 $27 $83
    jp z, $abf8                                   ; $732b: $ca $f8 $ab

    ld a, [hl+]                                   ; $732e: $2a
    ld h, e                                       ; $732f: $63
    add hl, hl                                    ; $7330: $29
    rst $18                                       ; $7331: $df
    pop hl                                        ; $7332: $e1
    ld b, b                                       ; $7333: $40
    xor [hl]                                      ; $7334: $ae
    ld e, l                                       ; $7335: $5d
    db $ec                                        ; $7336: $ec
    rla                                           ; $7337: $17
    xor d                                         ; $7338: $aa
    dec a                                         ; $7339: $3d
    or h                                          ; $733a: $b4
    dec b                                         ; $733b: $05
    ld e, c                                       ; $733c: $59
    jp c, $36c5                                   ; $733d: $da $c5 $36

    ldh [$fe], a                                  ; $7340: $e0 $fe
    cp $14                                        ; $7342: $fe $14
    or h                                          ; $7344: $b4
    ld a, [hl-]                                   ; $7345: $3a
    dec sp                                        ; $7346: $3b
    xor h                                         ; $7347: $ac
    xor a                                         ; $7348: $af
    ld [hl], l                                    ; $7349: $75
    ld a, b                                       ; $734a: $78
    cp $f3                                        ; $734b: $fe $f3
    ld d, $47                                     ; $734d: $16 $47
    pop de                                        ; $734f: $d1
    ld [bc], a                                    ; $7350: $02
    sub a                                         ; $7351: $97
    xor l                                         ; $7352: $ad
    pop de                                        ; $7353: $d1
    ld e, l                                       ; $7354: $5d
    ld a, a                                       ; $7355: $7f
    db $fc                                        ; $7356: $fc
    db $fd                                        ; $7357: $fd
    ld l, a                                       ; $7358: $6f
    jr @+$3d                                      ; $7359: $18 $3b

    xor h                                         ; $735b: $ac
    xor a                                         ; $735c: $af
    ld [hl], l                                    ; $735d: $75
    ld a, b                                       ; $735e: $78
    cp $6b                                        ; $735f: $fe $6b
    rrca                                          ; $7361: $0f
    ld l, l                                       ; $7362: $6d
    ld bc, $de47                                  ; $7363: $01 $47 $de
    db $ed                                        ; $7366: $ed
    cp d                                          ; $7367: $ba
    sbc [hl]                                      ; $7368: $9e
    di                                            ; $7369: $f3
    jp c, Jump_02f_5b43                           ; $736a: $da $43 $5b

    sbc l                                         ; $736d: $9d
    ld h, b                                       ; $736e: $60
    rst $38                                       ; $736f: $ff
    ld l, [hl]                                    ; $7370: $6e
    or c                                          ; $7371: $b1
    add $62                                       ; $7372: $c6 $62
    ld d, $a1                                     ; $7374: $16 $a1
    di                                            ; $7376: $f3
    rst $00                                       ; $7377: $c7
    rst $28                                       ; $7378: $ef
    and $2c                                       ; $7379: $e6 $2c
    ld a, l                                       ; $737b: $7d
    jp z, $875b                                   ; $737c: $ca $5b $87

    scf                                           ; $737f: $37
    adc a                                         ; $7380: $8f
    ret c                                         ; $7381: $d8

    ld a, b                                       ; $7382: $78
    add hl, de                                    ; $7383: $19
    cp d                                          ; $7384: $ba
    ld e, d                                       ; $7385: $5a
    daa                                           ; $7386: $27
    ld a, $88                                     ; $7387: $3e $88
    ld d, l                                       ; $7389: $55
    or $33                                        ; $738a: $f6 $33
    ldh a, [$7e]                                  ; $738c: $f0 $7e
    adc h                                         ; $738e: $8c
    ld l, e                                       ; $738f: $6b
    ld b, c                                       ; $7390: $41
    rst $28                                       ; $7391: $ef
    ld a, [hl-]                                   ; $7392: $3a
    ld [hl], a                                    ; $7393: $77
    ld a, [$b4bb]                                 ; $7394: $fa $bb $b4
    ld [$fa55], a                                 ; $7397: $ea $55 $fa
    sub h                                         ; $739a: $94
    rst $20                                       ; $739b: $e7
    ld a, c                                       ; $739c: $79
    dec bc                                        ; $739d: $0b
    daa                                           ; $739e: $27
    jp Jump_02f_66bd                              ; $739f: $c3 $bd $66


    ld d, [hl]                                    ; $73a2: $56
    adc a                                         ; $73a3: $8f
    ld [$5961], a                                 ; $73a4: $ea $61 $59
    sbc l                                         ; $73a7: $9d
    ld sp, $dcfa                                  ; $73a8: $31 $fa $dc
    ld d, l                                       ; $73ab: $55
    ld a, e                                       ; $73ac: $7b
    ld l, b                                       ; $73ad: $68
    dec bc                                        ; $73ae: $0b
    daa                                           ; $73af: $27
    ld a, $88                                     ; $73b0: $3e $88
    ld d, l                                       ; $73b2: $55
    or $33                                        ; $73b3: $f6 $33

Jump_02f_73b5:
    ldh a, [$7e]                                  ; $73b5: $f0 $7e
    adc h                                         ; $73b7: $8c
    ld l, e                                       ; $73b8: $6b
    ld b, c                                       ; $73b9: $41
    rst $28                                       ; $73ba: $ef
    ld a, [hl-]                                   ; $73bb: $3a
    ld [hl], a                                    ; $73bc: $77
    ld a, [$b4bb]                                 ; $73bd: $fa $bb $b4
    ld [$fa55], a                                 ; $73c0: $ea $55 $fa
    sub h                                         ; $73c3: $94
    rst $20                                       ; $73c4: $e7
    ld a, c                                       ; $73c5: $79
    dec bc                                        ; $73c6: $0b
    push af                                       ; $73c7: $f5
    or l                                          ; $73c8: $b5
    nop                                           ; $73c9: $00
    adc h                                         ; $73ca: $8c
    ld e, l                                       ; $73cb: $5d
    rst $28                                       ; $73cc: $ef
    sub e                                         ; $73cd: $93
    ld a, $2d                                     ; $73ce: $3e $2d
    inc bc                                        ; $73d0: $03
    ld a, [de]                                    ; $73d1: $1a
    pop bc                                        ; $73d2: $c1
    inc c                                         ; $73d3: $0c
    dec d                                         ; $73d4: $15
    ld l, e                                       ; $73d5: $6b
    ld h, b                                       ; $73d6: $60
    push de                                       ; $73d7: $d5
    db $dd                                        ; $73d8: $dd
    ld l, $b6                                     ; $73d9: $2e $b6
    ld c, b                                       ; $73db: $48
    cp [hl]                                       ; $73dc: $be
    inc c                                         ; $73dd: $0c
    xor b                                         ; $73de: $a8
    ld h, h                                       ; $73df: $64
    ld b, b                                       ; $73e0: $40
    cp e                                          ; $73e1: $bb
    ret c                                         ; $73e2: $d8

    cpl                                           ; $73e3: $2f
    sub h                                         ; $73e4: $94
    or a                                          ; $73e5: $b7
    daa                                           ; $73e6: $27
    add e                                         ; $73e7: $83

Call_02f_73e8:
    ld c, d                                       ; $73e8: $4a
    pop de                                        ; $73e9: $d1
    ret c                                         ; $73ea: $d8

    rst $28                                       ; $73eb: $ef
    sub e                                         ; $73ec: $93
    ld a, [c]                                     ; $73ed: $f2
    ld [hl], l                                    ; $73ee: $75
    add d                                         ; $73ef: $82
    jp hl                                         ; $73f0: $e9


    ld c, a                                       ; $73f1: $4f
    or c                                          ; $73f2: $b1
    inc d                                         ; $73f3: $14
    ld [$7a2f], a                                 ; $73f4: $ea $2f $7a
    ldh a, [$da]                                  ; $73f7: $f0 $da
    ld b, e                                       ; $73f9: $43
    ld e, e                                       ; $73fa: $5b
    daa                                           ; $73fb: $27
    ld l, b                                       ; $73fc: $68
    adc l                                         ; $73fd: $8d
    ld h, e                                       ; $73fe: $63
    rst $20                                       ; $73ff: $e7
    db $fd                                        ; $7400: $fd
    rst $20                                       ; $7401: $e7
    sub l                                         ; $7402: $95
    sub l                                         ; $7403: $95
    add hl, hl                                    ; $7404: $29
    ld l, b                                       ; $7405: $68
    ld e, h                                       ; $7406: $5c
    dec sp                                        ; $7407: $3b
    xor h                                         ; $7408: $ac
    xor a                                         ; $7409: $af
    ld [hl], l                                    ; $740a: $75
    ld a, b                                       ; $740b: $78
    cp $f3                                        ; $740c: $fe $f3
    ld d, $f5                                     ; $740e: $16 $f5
    dec [hl]                                      ; $7410: $35
    add $30                                       ; $7411: $c6 $30
    ld b, [hl]                                    ; $7413: $46
    ld [hl], a                                    ; $7414: $77
    db $fd                                        ; $7415: $fd
    pop af                                        ; $7416: $f1
    rst $30                                       ; $7417: $f7
    cp a                                          ; $7418: $bf
    ld a, h                                       ; $7419: $7c
    add a                                         ; $741a: $87
    push af                                       ; $741b: $f5
    or l                                          ; $741c: $b5
    ld c, $cf                                     ; $741d: $0e $cf
    ld a, a                                       ; $741f: $7f
    sbc $02                                       ; $7420: $de $02
    daa                                           ; $7422: $27
    db $fd                                        ; $7423: $fd
    add hl, hl                                    ; $7424: $29
    ld l, b                                       ; $7425: $68
    db $fc                                        ; $7426: $fc
    ld l, [hl]                                    ; $7427: $6e
    rst $10                                       ; $7428: $d7
    push af                                       ; $7429: $f5
    sbc h                                         ; $742a: $9c
    rst $10                                       ; $742b: $d7
    ld e, $da                                     ; $742c: $1e $da
    ld [bc], a                                    ; $742e: $02
    sbc l                                         ; $742f: $9d
    ld h, b                                       ; $7430: $60
    rst $38                                       ; $7431: $ff
    ld l, [hl]                                    ; $7432: $6e
    or c                                          ; $7433: $b1
    add $62                                       ; $7434: $c6 $62
    ld d, $a1                                     ; $7436: $16 $a1
    di                                            ; $7438: $f3
    rst $00                                       ; $7439: $c7
    or l                                          ; $743a: $b5
    ld c, $cf                                     ; $743b: $0e $cf
    ccf                                           ; $743d: $3f
    sub [hl]                                      ; $743e: $96
    and d                                         ; $743f: $a2
    ret z                                         ; $7440: $c8

    ld e, e                                       ; $7441: $5b
    ld b, a                                       ; $7442: $47
    dec sp                                        ; $7443: $3b
    jp c, Jump_000_18e7                           ; $7444: $da $e7 $18

    adc d                                         ; $7447: $8a
    ld d, l                                       ; $7448: $55
    add $c2                                       ; $7449: $c6 $c2
    inc c                                         ; $744b: $0c
    jr z, jr_02f_74c4                             ; $744c: $28 $76

    call nz, Call_000_29fb                        ; $744e: $c4 $fb $29
    ld e, l                                       ; $7451: $5d
    dec l                                         ; $7452: $2d
    ld b, a                                       ; $7453: $47
    and b                                         ; $7454: $a0
    ld a, $a3                                     ; $7455: $3e $a3
    rrca                                          ; $7457: $0f
    ld a, [de]                                    ; $7458: $1a
    or a                                          ; $7459: $b7
    rra                                           ; $745a: $1f
    dec hl                                        ; $745b: $2b
    or [hl]                                       ; $745c: $b6
    call nc, $c203                                ; $745d: $d4 $03 $c2
    inc c                                         ; $7460: $0c
    ld l, b                                       ; $7461: $68
    ld e, h                                       ; $7462: $5c
    dec sp                                        ; $7463: $3b
    jp c, $3ed1                                   ; $7464: $da $d1 $3e

    rst $00                                       ; $7467: $c7
    ld d, b                                       ; $7468: $50
    xor h                                         ; $7469: $ac
    ld [hl-], a                                   ; $746a: $32
    ld d, $66                                     ; $746b: $16 $66
    ld b, b                                       ; $746d: $40

Jump_02f_746e:
    or c                                          ; $746e: $b1
    inc hl                                        ; $746f: $23
    sbc $4f                                       ; $7470: $de $4f
    jp hl                                         ; $7472: $e9


    ld l, d                                       ; $7473: $6a
    ld bc, $3e27                                  ; $7474: $01 $27 $3e
    xor a                                         ; $7477: $af
    xor h                                         ; $7478: $ac
    xor b                                         ; $7479: $a8
    jp nc, $65a7                                  ; $747a: $d2 $a7 $65

    ld l, e                                       ; $747d: $6b
    rst $38                                       ; $747e: $ff
    xor [hl]                                      ; $747f: $ae
    ccf                                           ; $7480: $3f
    or a                                          ; $7481: $b7

Jump_02f_7482:
    adc e                                         ; $7482: $8b
    ld e, l                                       ; $7483: $5d
    sub a                                         ; $7484: $97
    or h                                          ; $7485: $b4
    add $22                                       ; $7486: $c6 $22
    rst $08                                       ; $7488: $cf
    di                                            ; $7489: $f3
    ld h, l                                       ; $748a: $65
    ldh [$ae], a                                  ; $748b: $e0 $ae
    and b                                         ; $748d: $a0
    ld a, d                                       ; $748e: $7a
    sub a                                         ; $748f: $97
    sub [hl]                                      ; $7490: $96
    ld bc, $608d                                  ; $7491: $01 $8d $60
    ld d, $b5                                     ; $7494: $16 $b5
    add a                                         ; $7496: $87
    or [hl]                                       ; $7497: $b6
    daa                                           ; $7498: $27
    jp Jump_02f_415d                              ; $7499: $c3 $5d $41


    push af                                       ; $749c: $f5
    ld l, $2d                                     ; $749d: $2e $2d
    inc bc                                        ; $749f: $03
    ld a, [de]                                    ; $74a0: $1a
    pop bc                                        ; $74a1: $c1
    jr jr_02f_74e5                                ; $74a2: $18 $41

    rst $20                                       ; $74a4: $e7
    jp c, Jump_02f_5b43                           ; $74a5: $da $43 $5b

    and a                                         ; $74a8: $a7
    db $fd                                        ; $74a9: $fd
    ld [hl], c                                    ; $74aa: $71
    xor l                                         ; $74ab: $ad
    ld d, d                                       ; $74ac: $52
    xor h                                         ; $74ad: $ac
    pop af                                        ; $74ae: $f1
    ld e, e                                       ; $74af: $5b
    ld a, [$b7e6]                                 ; $74b0: $fa $e6 $b7
    xor b                                         ; $74b3: $a8
    ld c, l                                       ; $74b4: $4d
    call c, $40e1                                 ; $74b5: $dc $e1 $40
    xor [hl]                                      ; $74b8: $ae
    ld e, l                                       ; $74b9: $5d
    db $ec                                        ; $74ba: $ec
    rla                                           ; $74bb: $17
    xor d                                         ; $74bc: $aa
    dec a                                         ; $74bd: $3d
    or h                                          ; $74be: $b4
    dec b                                         ; $74bf: $05
    and a                                         ; $74c0: $a7
    db $fd                                        ; $74c1: $fd
    dec [hl]                                      ; $74c2: $35
    add d                                         ; $74c3: $82

jr_02f_74c4:
    reti                                          ; $74c4: $d9


    add l                                         ; $74c5: $85
    ld e, h                                       ; $74c6: $5c
    ld sp, hl                                     ; $74c7: $f9
    ld c, $07                                     ; $74c8: $0e $07
    ld [hl], d                                    ; $74ca: $72
    db $ed                                        ; $74cb: $ed
    ld h, d                                       ; $74cc: $62
    cp a                                          ; $74cd: $bf
    ld d, b                                       ; $74ce: $50
    db $ed                                        ; $74cf: $ed
    and c                                         ; $74d0: $a1
    dec l                                         ; $74d1: $2d
    ld e, l                                       ; $74d2: $5d
    ret c                                         ; $74d3: $d8

    jp nc, $b486                                  ; $74d4: $d2 $86 $b4

    jp Jump_02f_5afa                              ; $74d7: $c3 $fa $5a


    add a                                         ; $74da: $87
    rst $20                                       ; $74db: $e7
    ccf                                           ; $74dc: $3f
    ld l, a                                       ; $74dd: $6f
    ld bc, $b5f5                                  ; $74de: $01 $f5 $b5
    ld b, [hl]                                    ; $74e1: $46
    ret nc                                        ; $74e2: $d0

    ld a, c                                       ; $74e3: $79
    and h                                         ; $74e4: $a4

jr_02f_74e5:
    pop af                                        ; $74e5: $f1
    rst $30                                       ; $74e6: $f7
    cp a                                          ; $74e7: $bf
    ld a, h                                       ; $74e8: $7c
    add a                                         ; $74e9: $87
    push af                                       ; $74ea: $f5
    or l                                          ; $74eb: $b5
    ld c, $cf                                     ; $74ec: $0e $cf
    ld a, a                                       ; $74ee: $7f
    sbc $02                                       ; $74ef: $de $02
    daa                                           ; $74f1: $27
    jp Jump_02f_415d                              ; $74f2: $c3 $5d $41


    push af                                       ; $74f5: $f5
    ld l, $2d                                     ; $74f6: $2e $2d
    inc bc                                        ; $74f8: $03
    ld a, [de]                                    ; $74f9: $1a
    pop bc                                        ; $74fa: $c1
    db $f4                                        ; $74fb: $f4
    rst $10                                       ; $74fc: $d7
    add sp, -$79                                  ; $74fd: $e8 $87
    and d                                         ; $74ff: $a2
    or $d0                                        ; $7500: $f6 $d0
    ld d, $f5                                     ; $7502: $16 $f5
    or l                                          ; $7504: $b5
    rr a                                          ; $7505: $cb $1f
    add $32                                       ; $7507: $c6 $32
    and b                                         ; $7509: $a0
    ld e, l                                       ; $750a: $5d
    ld [hl], a                                    ; $750b: $77
    dec b                                         ; $750c: $05
    adc l                                         ; $750d: $8d
    db $fc                                        ; $750e: $fc
    dec [hl]                                      ; $750f: $35
    ld [hl], e                                    ; $7510: $73
    cp h                                          ; $7511: $bc
    ret c                                         ; $7512: $d8

    ld e, d                                       ; $7513: $5a
    sbc l                                         ; $7514: $9d
    pop de                                        ; $7515: $d1
    ei                                            ; $7516: $fb
    ld h, e                                       ; $7517: $63
    cp l                                          ; $7518: $bd
    ld e, $28                                     ; $7519: $1e $28
    rst $18                                       ; $751b: $df
    pop hl                                        ; $751c: $e1
    ld b, b                                       ; $751d: $40
    xor [hl]                                      ; $751e: $ae
    ld e, l                                       ; $751f: $5d
    db $ec                                        ; $7520: $ec
    rla                                           ; $7521: $17
    xor d                                         ; $7522: $aa
    dec a                                         ; $7523: $3d
    or h                                          ; $7524: $b4
    dec b                                         ; $7525: $05
    dec e                                         ; $7526: $1d
    adc h                                         ; $7527: $8c
    ld e, e                                       ; $7528: $5b
    and l                                         ; $7529: $a5
    dec e                                         ; $752a: $1d
    inc bc                                        ; $752b: $03
    ret c                                         ; $752c: $d8

    add b                                         ; $752d: $80
    xor e                                         ; $752e: $ab
    dec b                                         ; $752f: $05
    dec e                                         ; $7530: $1d
    adc h                                         ; $7531: $8c
    ld e, e                                       ; $7532: $5b
    and l                                         ; $7533: $a5
    dec e                                         ; $7534: $1d
    inc bc                                        ; $7535: $03
    ret c                                         ; $7536: $d8

    add b                                         ; $7537: $80
    ld l, e                                       ; $7538: $6b
    push af                                       ; $7539: $f5
    sub $d1                                       ; $753a: $d6 $d1
    cp e                                          ; $753c: $bb
    and [hl]                                      ; $753d: $a6
    ld a, d                                       ; $753e: $7a
    ld [hl], l                                    ; $753f: $75
    ld [$cf35], a                                 ; $7540: $ea $35 $cf
    ld c, c                                       ; $7543: $49
    cp [hl]                                       ; $7544: $be
    and $81                                       ; $7545: $e6 $81
    xor a                                         ; $7547: $af
    ld [hl-], a                                   ; $7548: $32
    sub [hl]                                      ; $7549: $96
    ld h, d                                       ; $754a: $62
    and d                                         ; $754b: $a2
    push bc                                       ; $754c: $c5
    di                                            ; $754d: $f3
    dec bc                                        ; $754e: $0b
    push hl                                       ; $754f: $e5
    sub c                                         ; $7550: $91
    or a                                          ; $7551: $b7
    sbc l                                         ; $7552: $9d
    ld h, b                                       ; $7553: $60
    adc h                                         ; $7554: $8c
    and b                                         ; $7555: $a0
    di                                            ; $7556: $f3
    jr jr_02f_75d6                                ; $7557: $18 $7d

    xor $5a                                       ; $7559: $ee $5a
    ld b, $54                                     ; $755b: $06 $54
    ld [hl-], a                                   ; $755d: $32
    and b                                         ; $755e: $a0
    ld e, l                                       ; $755f: $5d
    db $ec                                        ; $7560: $ec
    rla                                           ; $7561: $17
    ld c, d                                       ; $7562: $4a
    xor [hl]                                      ; $7563: $ae
    ld a, d                                       ; $7564: $7a
    ld a, a                                       ; $7565: $7f
    adc l                                         ; $7566: $8d
    ld [$f6a9], sp                                ; $7567: $08 $a9 $f6
    ret nc                                        ; $756a: $d0

    dec e                                         ; $756b: $1d
    ld l, l                                       ; $756c: $6d
    jr @+$65                                      ; $756d: $18 $63

    ld e, $7a                                     ; $756f: $1e $7a
    sbc $02                                       ; $7571: $de $02
    daa                                           ; $7573: $27
    jp Jump_02f_415d                              ; $7574: $c3 $5d $41


    push af                                       ; $7577: $f5
    ld l, $2d                                     ; $7578: $2e $2d
    inc bc                                        ; $757a: $03
    ld [hl], a                                    ; $757b: $77
    inc l                                         ; $757c: $2c
    inc hl                                        ; $757d: $23
    dec l                                         ; $757e: $2d
    ld l, l                                       ; $757f: $6d
    ld b, b                                       ; $7580: $40
    or l                                          ; $7581: $b5
    add a                                         ; $7582: $87
    xor $a4                                       ; $7583: $ee $a4
    ccf                                           ; $7585: $3f
    ld e, e                                       ; $7586: $5b
    db $f4                                        ; $7587: $f4
    ldh [$aa], a                                  ; $7588: $e0 $aa
    db $f4                                        ; $758a: $f4
    ld l, c                                       ; $758b: $69
    ld h, h                                       ; $758c: $64
    inc hl                                        ; $758d: $23
    jp $9452                                      ; $758e: $c3 $52 $94


    or a                                          ; $7591: $b7
    ld b, a                                       ; $7592: $47
    sub l                                         ; $7593: $95
    and d                                         ; $7594: $a2
    pop de                                        ; $7595: $d1
    dec e                                         ; $7596: $1d

Jump_02f_7597:
    db $dd                                        ; $7597: $dd
    ld b, [hl]                                    ; $7598: $46
    ld e, [hl]                                    ; $7599: $5e
    scf                                           ; $759a: $37
    sub [hl]                                      ; $759b: $96
    ld b, d                                       ; $759c: $42
    db $fd                                        ; $759d: $fd
    ld a, h                                       ; $759e: $7c
    add a                                         ; $759f: $87
    inc bc                                        ; $75a0: $03
    cp c                                          ; $75a1: $b9
    halt                                          ; $75a2: $76
    or c                                          ; $75a3: $b1
    ld e, a                                       ; $75a4: $5f
    xor b                                         ; $75a5: $a8
    or $d0                                        ; $75a6: $f6 $d0
    ld d, $27                                     ; $75a8: $16 $27
    add e                                         ; $75aa: $83
    ld c, d                                       ; $75ab: $4a
    pop de                                        ; $75ac: $d1
    ret c                                         ; $75ad: $d8

    rst $28                                       ; $75ae: $ef
    sub e                                         ; $75af: $93
    ld a, [c]                                     ; $75b0: $f2
    dec e                                         ; $75b1: $1d
    ld c, $e4                                     ; $75b2: $0e $e4
    jp c, Jump_02f_7ec5                           ; $75b4: $da $c5 $7e

    and c                                         ; $75b7: $a1
    jp c, Jump_02f_5b43                           ; $75b8: $da $43 $5b

    ld e, l                                       ; $75bb: $5d
    ret c                                         ; $75bc: $d8

    jp nc, $db72                                  ; $75bd: $d2 $72 $db

    ld h, c                                       ; $75c0: $61
    ld a, l                                       ; $75c1: $7d
    xor l                                         ; $75c2: $ad
    jp $9ff3                                      ; $75c3: $c3 $f3 $9f


    or a                                          ; $75c6: $b7
    push af                                       ; $75c7: $f5
    or l                                          ; $75c8: $b5
    ld b, [hl]                                    ; $75c9: $46
    ret nc                                        ; $75ca: $d0

    ld a, c                                       ; $75cb: $79
    ld [hl], h                                    ; $75cc: $74
    rst $10                                       ; $75cd: $d7
    rra                                           ; $75ce: $1f
    ld a, a                                       ; $75cf: $7f
    rst $38                                       ; $75d0: $ff
    bit 6, a                                      ; $75d1: $cb $77
    ld e, b                                       ; $75d3: $58
    ld e, a                                       ; $75d4: $5f
    db $eb                                        ; $75d5: $eb

jr_02f_75d6:
    ldh a, [$fc]                                  ; $75d6: $f0 $fc
    rst $20                                       ; $75d8: $e7
    dec l                                         ; $75d9: $2d
    sbc l                                         ; $75da: $9d
    ld h, b                                       ; $75db: $60
    adc d                                         ; $75dc: $8a
    pop af                                        ; $75dd: $f1
    cp e                                          ; $75de: $bb
    ld e, l                                       ; $75df: $5d
    rst $10                                       ; $75e0: $d7
    ld [hl], e                                    ; $75e1: $73
    ld e, [hl]                                    ; $75e2: $5e
    ld a, e                                       ; $75e3: $7b
    ld l, b                                       ; $75e4: $68
    dec bc                                        ; $75e5: $0b
    push af                                       ; $75e6: $f5
    or l                                          ; $75e7: $b5
    rr a                                          ; $75e8: $cb $1f
    add $32                                       ; $75ea: $c6 $32
    and b                                         ; $75ec: $a0
    ld de, $dfec                                  ; $75ed: $11 $ec $df
    dec d                                         ; $75f0: $15
    ld l, e                                       ; $75f1: $6b

Call_02f_75f2:
    inc l                                         ; $75f2: $2c
    ld h, [hl]                                    ; $75f3: $66
    ld de, $7f3a                                  ; $75f4: $11 $3a $7f

jr_02f_75f7:
    adc [hl]                                      ; $75f7: $8e
    rla                                           ; $75f8: $17
    ld e, e                                       ; $75f9: $5b
    ret                                           ; $75fa: $c9


    db $fd                                        ; $75fb: $fd
    cp e                                          ; $75fc: $bb
    add d                                         ; $75fd: $82
    ld [$5a5d], a                                 ; $75fe: $ea $5d $5a
    ld h, e                                       ; $7601: $63
    ld d, c                                       ; $7602: $51
    ld a, e                                       ; $7603: $7b
    add sp, $0e                                   ; $7604: $e8 $0e
    rlca                                          ; $7606: $07
    ld [hl], d                                    ; $7607: $72
    db $ed                                        ; $7608: $ed
    ld h, d                                       ; $7609: $62
    cp a                                          ; $760a: $bf
    ld d, b                                       ; $760b: $50
    db $ed                                        ; $760c: $ed
    and c                                         ; $760d: $a1
    dec l                                         ; $760e: $2d
    ld b, a                                       ; $760f: $47
    sbc e                                         ; $7610: $9b
    db $db                                        ; $7611: $db
    rst $20                                       ; $7612: $e7
    xor a                                         ; $7613: $af
    ld l, b                                       ; $7614: $68
    ld e, h                                       ; $7615: $5c
    dec bc                                        ; $7616: $0b
    cp b                                          ; $7617: $b8
    ld e, h                                       ; $7618: $5c
    adc [hl]                                      ; $7619: $8e
    adc d                                         ; $761a: $8a
    ld d, $87                                     ; $761b: $16 $87
    sub a                                         ; $761d: $97
    rst $20                                       ; $761e: $e7
    sub c                                         ; $761f: $91
    inc e                                         ; $7620: $1c
    pop bc                                        ; $7621: $c1
    jr jr_02f_7665                                ; $7622: $18 $41

    rst $20                                       ; $7624: $e7
    ld [hl], c                                    ; $7625: $71
    push bc                                       ; $7626: $c5
    ld d, d                                       ; $7627: $52
    rst $28                                       ; $7628: $ef
    and a                                         ; $7629: $a7
    sbc $8f                                       ; $762a: $de $8f
    jp c, $b743                                   ; $762c: $da $43 $b7

    db $e3                                        ; $762f: $e3

Jump_02f_7630:
    ld c, d                                       ; $7630: $4a
    inc l                                         ; $7631: $2c
    sbc $a7                                       ; $7632: $de $a7
    pop de                                        ; $7634: $d1
    add e                                         ; $7635: $83
    jr jr_02f_75f7                                ; $7636: $18 $bf

    dec d                                         ; $7638: $15
    cp h                                          ; $7639: $bc
    ld d, b                                       ; $763a: $50
    ret nc                                        ; $763b: $d0

    add hl, sp                                    ; $763c: $39
    ld l, a                                       ; $763d: $6f
    ld bc, $1b47                                  ; $763e: $01 $47 $1b
    add $98                                       ; $7641: $c6 $98
    add a                                         ; $7643: $87
    cp [hl]                                       ; $7644: $be
    ld c, e                                       ; $7645: $4b
    res 0, b                                      ; $7646: $cb $80
    ld b, [hl]                                    ; $7648: $46
    or b                                          ; $7649: $b0
    ld [$d2fe], a                                 ; $764a: $ea $fe $d2
    ld l, c                                       ; $764d: $69
    ld d, a                                       ; $764e: $57
    db $e4                                        ; $764f: $e4
    dec l                                         ; $7650: $2d
    add a                                         ; $7651: $87
    sub a                                         ; $7652: $97
    rst $20                                       ; $7653: $e7
    sub c                                         ; $7654: $91
    ld e, h                                       ; $7655: $5c
    ld b, $ee                                     ; $7656: $06 $ee
    ld a, [bc]                                    ; $7658: $0a
    xor d                                         ; $7659: $aa
    ld [hl], a                                    ; $765a: $77
    ld l, c                                       ; $765b: $69
    add hl, de                                    ; $765c: $19
    ret nc                                        ; $765d: $d0

    ld [$08c6], sp                                ; $765e: $08 $c6 $08
    ld a, [hl-]                                   ; $7661: $3a
    daa                                           ; $7662: $27
    ld [hl], a                                    ; $7663: $77
    or c                                          ; $7664: $b1

jr_02f_7665:
    rra                                           ; $7665: $1f
    ld e, h                                       ; $7666: $5c
    db $ec                                        ; $7667: $ec
    rlca                                          ; $7668: $07
    or l                                          ; $7669: $b5
    add a                                         ; $766a: $87
    or [hl]                                       ; $766b: $b6
    sbc l                                         ; $766c: $9d
    ld h, b                                       ; $766d: $60
    adc h                                         ; $766e: $8c
    call c, $762d                                 ; $766f: $dc $2d $76
    db $dd                                        ; $7672: $dd
    dec d                                         ; $7673: $15
    inc [hl]                                      ; $7674: $34
    ld a, [hl]                                    ; $7675: $7e
    dec hl                                        ; $7676: $2b
    ld a, b                                       ; $7677: $78
    and c                                         ; $7678: $a1
    and b                                         ; $7679: $a0
    ld [hl], e                                    ; $767a: $73
    cp [hl]                                       ; $767b: $be
    dec e                                         ; $767c: $1d
    ld c, $e4                                     ; $767d: $0e $e4
    jp c, Jump_02f_7ec5                           ; $767f: $da $c5 $7e

    and c                                         ; $7682: $a1
    jp c, Jump_02f_5b43                           ; $7683: $da $43 $5b

    ld e, c                                       ; $7686: $59
    ld [hl], a                                    ; $7687: $77
    dec b                                         ; $7688: $05
    dec c                                         ; $7689: $0d
    cp [hl]                                       ; $768a: $be
    add $7e                                       ; $768b: $c6 $7e
    sbc a                                         ; $768d: $9f
    sub h                                         ; $768e: $94
    ld l, a                                       ; $768f: $6f
    add a                                         ; $7690: $87
    inc bc                                        ; $7691: $03
    cp c                                          ; $7692: $b9
    halt                                          ; $7693: $76
    or c                                          ; $7694: $b1
    ld e, a                                       ; $7695: $5f
    xor b                                         ; $7696: $a8
    or $d0                                        ; $7697: $f6 $d0
    ld d, $47                                     ; $7699: $16 $47
    ret z                                         ; $769b: $c8

    ldh [$7a], a                                  ; $769c: $e0 $7a
    ret nc                                        ; $769e: $d0

    adc h                                         ; $769f: $8c
    ld l, e                                       ; $76a0: $6b
    xor h                                         ; $76a1: $ac
    rst $10                                       ; $76a2: $d7
    inc bc                                        ; $76a3: $03
    xor l                                         ; $76a4: $ad
    ld a, c                                       ; $76a5: $79

jr_02f_76a6:
    ldh [$3b], a                                  ; $76a6: $e0 $3b
    xor h                                         ; $76a8: $ac
    xor a                                         ; $76a9: $af
    ld [hl], l                                    ; $76aa: $75
    ld a, b                                       ; $76ab: $78
    cp $f3                                        ; $76ac: $fe $f3
    ld d, $f5                                     ; $76ae: $16 $f5
    or l                                          ; $76b0: $b5
    ld [hl], d                                    ; $76b1: $72
    or a                                          ; $76b2: $b7
    adc e                                         ; $76b3: $8b
    ld e, l                                       ; $76b4: $5d
    sub a                                         ; $76b5: $97
    or h                                          ; $76b6: $b4
    and $81                                       ; $76b7: $e6 $81
    rst $28                                       ; $76b9: $ef
    or b                                          ; $76ba: $b0
    cp [hl]                                       ; $76bb: $be
    sub $e1                                       ; $76bc: $d6 $e1
    ld sp, hl                                     ; $76be: $f9
    rst $08                                       ; $76bf: $cf
    ld e, e                                       ; $76c0: $5b
    add a                                         ; $76c1: $87
    sub a                                         ; $76c2: $97
    rst $20                                       ; $76c3: $e7
    sub c                                         ; $76c4: $91
    call c, Call_02f_4bfb                         ; $76c5: $dc $fb $4b
    dec de                                        ; $76c8: $1b
    jp nc, $9d2c                                  ; $76c9: $d2 $2c $9d

    ld [hl], $74                                  ; $76cc: $36 $74
    push de                                       ; $76ce: $d5
    ld e, $da                                     ; $76cf: $1e $da
    ld [bc], a                                    ; $76d1: $02
    daa                                           ; $76d2: $27
    or c                                          ; $76d3: $b1
    sub e                                         ; $76d4: $93
    set 2, [hl]                                   ; $76d5: $cb $d6
    ld l, $7f                                     ; $76d7: $2e $7f
    jr jr_02f_76a6                                ; $76d9: $18 $cb

    add b                                         ; $76db: $80
    ld b, [hl]                                    ; $76dc: $46
    or b                                          ; $76dd: $b0
    ld a, a                                       ; $76de: $7f
    rst $10                                       ; $76df: $d7
    sbc a                                         ; $76e0: $9f
    push bc                                       ; $76e1: $c5
    ld a, [de]                                    ; $76e2: $1a
    adc e                                         ; $76e3: $8b
    ld e, c                                       ; $76e4: $59
    add h                                         ; $76e5: $84
    adc $cf                                       ; $76e6: $ce $cf
    ld e, e                                       ; $76e8: $5b
    add a                                         ; $76e9: $87
    jp $794e                                      ; $76ea: $c3 $4e $79


    dec [hl]                                      ; $76ed: $35
    ld b, $95                                     ; $76ee: $06 $95
    add $15                                       ; $76f0: $c6 $15
    dec sp                                        ; $76f2: $3b
    ld b, e                                       ; $76f3: $43
    ld d, $45                                     ; $76f4: $16 $45
    dec [hl]                                      ; $76f6: $35
    dec l                                         ; $76f7: $2d
    ld b, a                                       ; $76f8: $47
    and b                                         ; $76f9: $a0
    ld a, $a3                                     ; $76fa: $3e $a3

Call_02f_76fc:
    rrca                                          ; $76fc: $0f

Jump_02f_76fd:
    sbc d                                         ; $76fd: $9a
    pop bc                                        ; $76fe: $c1
    ld c, [hl]                                    ; $76ff: $4e
    ld a, c                                       ; $7700: $79
    dec [hl]                                      ; $7701: $35
    ld b, $95                                     ; $7702: $06 $95
    add $15                                       ; $7704: $c6 $15
    dec sp                                        ; $7706: $3b
    dec d                                         ; $7707: $15
    ld l, $97                                     ; $7708: $2e $97
    and e                                         ; $770a: $a3
    ld h, d                                       ; $770b: $62
    ld e, h                                       ; $770c: $5c
    or c                                          ; $770d: $b1
    inc sp                                        ; $770e: $33
    ld h, h                                       ; $770f: $64
    ld d, c                                       ; $7710: $51
    ld d, h                                       ; $7711: $54
    ld d, e                                       ; $7712: $53
    sbc e                                         ; $7713: $9b
    ret c                                         ; $7714: $d8

    ld [bc], a                                    ; $7715: $02
    daa                                           ; $7716: $27
    jp $a2dd                                      ; $7717: $c3 $dd $a2


    ld e, $c1                                     ; $771a: $1e $c1
    ld [$d2ac], a                                 ; $771c: $ea $ac $d2
    ld a, [de]                                    ; $771f: $1a
    ld a, a                                       ; $7720: $7f
    call Call_02f_790b                            ; $7721: $cd $0b $79
    db $ed                                        ; $7724: $ed
    and c                                         ; $7725: $a1
    dec l                                         ; $7726: $2d
    daa                                           ; $7727: $27
    jp Jump_02f_415d                              ; $7728: $c3 $5d $41


    push af                                       ; $772b: $f5
    ld l, $2d                                     ; $772c: $2e $2d
    inc bc                                        ; $772e: $03
    ld a, [de]                                    ; $772f: $1a
    pop bc                                        ; $7730: $c1
    inc c                                         ; $7731: $0c
    dec hl                                        ; $7732: $2b
    cp c                                          ; $7733: $b9
    ld h, c                                       ; $7734: $61
    call nc, $da1e                                ; $7735: $d4 $1e $da
    ld [bc], a                                    ; $7738: $02
    ld e, c                                       ; $7739: $59
    and d                                         ; $773a: $a2
    sbc c                                         ; $773b: $99
    inc de                                        ; $773c: $13
    ld e, [hl]                                    ; $773d: $5e
    ld b, l                                       ; $773e: $45
    ld [hl], e                                    ; $773f: $73
    ld d, l                                       ; $7740: $55
    call $d273                                    ; $7741: $cd $73 $d2
    add sp, $41                                   ; $7744: $e8 $41
    or $03                                        ; $7746: $f6 $03
    adc a                                         ; $7748: $8f
    pop bc                                        ; $7749: $c1
    rra                                           ; $774a: $1f
    set 5, l                                      ; $774b: $cb $ed
    di                                            ; $774d: $f3
    dec b                                         ; $774e: $05
    ld e, h                                       ; $774f: $5c
    ld d, a                                       ; $7750: $57
    db $dd                                        ; $7751: $dd
    ret z                                         ; $7752: $c8

jr_02f_7753:
    or a                                          ; $7753: $b7
    jp Jump_02f_5c81                              ; $7754: $c3 $81 $5c


    cp e                                          ; $7757: $bb
    ret c                                         ; $7758: $d8

    cpl                                           ; $7759: $2f
    ld d, h                                       ; $775a: $54
    ld a, e                                       ; $775b: $7b
    ld l, b                                       ; $775c: $68
    dec bc                                        ; $775d: $0b
    daa                                           ; $775e: $27
    sbc $d9                                       ; $775f: $de $d9
    or a                                          ; $7761: $b7
    ld b, b                                       ; $7762: $40
    jp nc, $8b1a                                  ; $7763: $d2 $1a $8b

    push de                                       ; $7766: $d5
    sbc c                                         ; $7767: $99
    adc e                                         ; $7768: $8b
    pop de                                        ; $7769: $d1

jr_02f_776a:
    ld b, a                                       ; $776a: $47
    ld e, a                                       ; $776b: $5f
    ldh [$08], a                                  ; $776c: $e0 $08
    halt                                          ; $776e: $76
    or c                                          ; $776f: $b1
    db $ed                                        ; $7770: $ed
    or e                                          ; $7771: $b3
    inc d                                         ; $7772: $14
    db $e3                                        ; $7773: $e3
    ld [hl], a                                    ; $7774: $77
    ld h, e                                       ; $7775: $63
    jr nc, jr_02f_776a                            ; $7776: $30 $f2

    db $ed                                        ; $7778: $ed
    ld [hl], b                                    ; $7779: $70
    jr nz, jr_02f_7753                            ; $777a: $20 $d7

    ld l, $f6                                     ; $777c: $2e $f6
    dec bc                                        ; $777e: $0b
    push de                                       ; $777f: $d5
    ld e, $da                                     ; $7780: $1e $da

jr_02f_7782:
    ld [bc], a                                    ; $7782: $02
    ld e, c                                       ; $7783: $59
    and d                                         ; $7784: $a2
    cp l                                          ; $7785: $bd
    ld d, h                                       ; $7786: $54
    or [hl]                                       ; $7787: $b6
    ld l, b                                       ; $7788: $68
    adc h                                         ; $7789: $8c
    ld bc, $b0ed                                  ; $778a: $01 $ed $b0
    cp [hl]                                       ; $778d: $be
    sub $e1                                       ; $778e: $d6 $e1
    ld sp, hl                                     ; $7790: $f9
    rst $08                                       ; $7791: $cf
    ld e, e                                       ; $7792: $5b
    ld e, c                                       ; $7793: $59
    xor a                                         ; $7794: $af
    xor d                                         ; $7795: $aa
    or h                                          ; $7796: $b4
    ld c, e                                       ; $7797: $4b
    ei                                            ; $7798: $fb
    ld [hl], a                                    ; $7799: $77
    dec b                                         ; $779a: $05
    xor l                                         ; $779b: $ad
    or c                                          ; $779c: $b1
    ret c                                         ; $779d: $d8

    rla                                           ; $779e: $17
    and h                                         ; $779f: $a4
    sub e                                         ; $77a0: $93
    set 2, [hl]                                   ; $77a1: $cb $d6
    add sp, -$52                                  ; $77a3: $e8 $ae
    ccf                                           ; $77a5: $3f
    cp $fe                                        ; $77a6: $fe $fe
    rst $10                                       ; $77a8: $d7
    ld c, $eb                                     ; $77a9: $0e $eb
    ld l, e                                       ; $77ab: $6b
    dec e                                         ; $77ac: $1d
    sbc [hl]                                      ; $77ad: $9e
    rst $38                                       ; $77ae: $ff
    cp h                                          ; $77af: $bc
    dec b                                         ; $77b0: $05
    ld b, a                                       ; $77b1: $47
    sbc $ed                                       ; $77b2: $de $ed
    cp d                                          ; $77b4: $ba
    sbc [hl]                                      ; $77b5: $9e
    di                                            ; $77b6: $f3
    jp c, Jump_02f_5b43                           ; $77b7: $da $43 $5b

    ld e, c                                       ; $77ba: $59
    ld [hl], a                                    ; $77bb: $77
    dec b                                         ; $77bc: $05
    adc l                                         ; $77bd: $8d
    db $fc                                        ; $77be: $fc
    dec [hl]                                      ; $77bf: $35
    cp e                                          ; $77c0: $bb
    ret c                                         ; $77c1: $d8

    ld a, [c]                                     ; $77c2: $f2
    dec [hl]                                      ; $77c3: $35
    rrca                                          ; $77c4: $0f
    ld a, h                                       ; $77c5: $7c
    db $f4                                        ; $77c6: $f4
    jr nc, jr_02f_7782                            ; $77c7: $30 $b9

    ld h, e                                       ; $77c9: $63
    call Call_000_26bd                            ; $77ca: $cd $bd $26
    ld l, a                                       ; $77cd: $6f
    ld bc, $2827                                  ; $77ce: $01 $27 $28
    halt                                          ; $77d1: $76
    call nz, Call_02f_5ffb                        ; $77d2: $c4 $fb $5f
    or c                                          ; $77d5: $b1
    jp $69d3                                      ; $77d6: $c3 $d3 $69


    ld b, e                                       ; $77d9: $43
    ld d, a                                       ; $77da: $57
    or h                                          ; $77db: $b4
    ld b, a                                       ; $77dc: $47
    and b                                         ; $77dd: $a0
    ld a, $a3                                     ; $77de: $3e $a3
    rrca                                          ; $77e0: $0f
    sbc d                                         ; $77e1: $9a
    ld b, c                                       ; $77e2: $41
    rst $20                                       ; $77e3: $e7
    dec e                                         ; $77e4: $1d
    pop af                                        ; $77e5: $f1
    cp $57                                        ; $77e6: $fe $57
    db $ec                                        ; $77e8: $ec
    ldh a, [$74]                                  ; $77e9: $f0 $74
    jp c, Jump_000_15d0                           ; $77eb: $da $d0 $15

    db $e3                                        ; $77ee: $e3
    adc d                                         ; $77ef: $8a
    sbc l                                         ; $77f0: $9d
    ld hl, $a28b                                  ; $77f1: $21 $8b $a2
    sbc d                                         ; $77f4: $9a
    jp c, $16c4                                   ; $77f5: $da $c4 $16

    daa                                           ; $77f8: $27
    jp $a2dd                                      ; $77f9: $c3 $dd $a2


    ld e, $c1                                     ; $77fc: $1e $c1
    ld [$d2ac], a                                 ; $77fe: $ea $ac $d2
    ld a, [de]                                    ; $7801: $1a
    ld a, a                                       ; $7802: $7f
    call Call_02f_790b                            ; $7803: $cd $0b $79
    db $ed                                        ; $7806: $ed
    and c                                         ; $7807: $a1
    dec l                                         ; $7808: $2d
    daa                                           ; $7809: $27
    jp Jump_02f_415d                              ; $780a: $c3 $5d $41


    push af                                       ; $780d: $f5
    ld l, $2d                                     ; $780e: $2e $2d
    inc bc                                        ; $7810: $03
    ld a, [de]                                    ; $7811: $1a
    pop bc                                        ; $7812: $c1
    inc c                                         ; $7813: $0c
    dec hl                                        ; $7814: $2b
    cp c                                          ; $7815: $b9
    ld h, c                                       ; $7816: $61
    call nc, $da1e                                ; $7817: $d4 $1e $da
    ld [bc], a                                    ; $781a: $02
    ld e, c                                       ; $781b: $59
    and d                                         ; $781c: $a2
    sbc c                                         ; $781d: $99
    inc de                                        ; $781e: $13
    ld e, [hl]                                    ; $781f: $5e
    ld b, l                                       ; $7820: $45
    ld d, e                                       ; $7821: $53
    ret nc                                        ; $7822: $d0

    add sp, $41                                   ; $7823: $e8 $41
    or $03                                        ; $7825: $f6 $03
    adc a                                         ; $7827: $8f
    sub c                                         ; $7828: $91
    rst $10                                       ; $7829: $d7
    adc l                                         ; $782a: $8d

jr_02f_782b:
    ld e, c                                       ; $782b: $59
    db $d3                                        ; $782c: $d3
    ld hl, sp-$13                                 ; $782d: $f8 $ed
    jp nz, $be5b                                  ; $782f: $c2 $5b $be

    dec e                                         ; $7832: $1d
    ld c, $e4                                     ; $7833: $0e $e4
    jp c, Jump_02f_7ec5                           ; $7835: $da $c5 $7e

    and c                                         ; $7838: $a1
    jp c, Jump_02f_5b43                           ; $7839: $da $43 $5b

    ld e, c                                       ; $783c: $59
    ld [hl], a                                    ; $783d: $77
    dec b                                         ; $783e: $05
    adc l                                         ; $783f: $8d
    ld e, $2e                                     ; $7840: $1e $2e
    inc bc                                        ; $7842: $03
    jr c, jr_02f_782b                             ; $7843: $38 $e6

    ld h, c                                       ; $7845: $61
    db $e4                                        ; $7846: $e4
    db $db                                        ; $7847: $db
    pop hl                                        ; $7848: $e1
    ld b, b                                       ; $7849: $40
    xor [hl]                                      ; $784a: $ae
    ld e, l                                       ; $784b: $5d
    db $ec                                        ; $784c: $ec
    rla                                           ; $784d: $17
    xor d                                         ; $784e: $aa
    dec a                                         ; $784f: $3d
    or h                                          ; $7850: $b4
    dec b                                         ; $7851: $05
    ld e, c                                       ; $7852: $59
    and d                                         ; $7853: $a2
    cp l                                          ; $7854: $bd
    ld d, h                                       ; $7855: $54

jr_02f_7856:
    or [hl]                                       ; $7856: $b6
    ld l, b                                       ; $7857: $68
    adc h                                         ; $7858: $8c
    ld bc, $b0ed                                  ; $7859: $01 $ed $b0
    cp [hl]                                       ; $785c: $be
    sub $e1                                       ; $785d: $d6 $e1
    ld sp, hl                                     ; $785f: $f9
    rst $08                                       ; $7860: $cf
    ld e, e                                       ; $7861: $5b
    ld e, c                                       ; $7862: $59
    xor a                                         ; $7863: $af
    xor d                                         ; $7864: $aa
    or h                                          ; $7865: $b4
    ld c, e                                       ; $7866: $4b
    ei                                            ; $7867: $fb
    ld [hl], a                                    ; $7868: $77
    dec b                                         ; $7869: $05
    xor l                                         ; $786a: $ad
    or c                                          ; $786b: $b1
    ret c                                         ; $786c: $d8

    rla                                           ; $786d: $17
    and h                                         ; $786e: $a4
    sub e                                         ; $786f: $93
    set 2, [hl]                                   ; $7870: $cb $d6
    add sp, -$52                                  ; $7872: $e8 $ae
    ccf                                           ; $7874: $3f
    cp $fe                                        ; $7875: $fe $fe
    rst $10                                       ; $7877: $d7
    ld c, $eb                                     ; $7878: $0e $eb
    ld l, e                                       ; $787a: $6b
    dec e                                         ; $787b: $1d
    sbc [hl]                                      ; $787c: $9e
    rst $38                                       ; $787d: $ff
    cp h                                          ; $787e: $bc
    dec b                                         ; $787f: $05
    ld b, a                                       ; $7880: $47
    sbc $ed                                       ; $7881: $de $ed
    cp d                                          ; $7883: $ba
    sbc [hl]                                      ; $7884: $9e
    di                                            ; $7885: $f3
    jp c, Jump_02f_5b43                           ; $7886: $da $43 $5b

    daa                                           ; $7889: $27
    db $fd                                        ; $788a: $fd
    ld a, l                                       ; $788b: $7d
    dec l                                         ; $788c: $2d
    ld l, l                                       ; $788d: $6d

Jump_02f_788e:
    ld c, b                                       ; $788e: $48
    ld l, e                                       ; $788f: $6b
    inc l                                         ; $7890: $2c
    halt                                          ; $7891: $76
    ld sp, hl                                     ; $7892: $f9
    adc l                                         ; $7893: $8d
    inc hl                                        ; $7894: $23
    dec h                                         ; $7895: $25
    rst $10                                       ; $7896: $d7
    ld e, b                                       ; $7897: $58
    xor h                                         ; $7898: $ac
    ld [$d2ba], a                                 ; $7899: $ea $ba $d2
    ld [$fe0c], a                                 ; $789c: $ea $0c $fe
    ld l, [hl]                                    ; $789f: $6e
    and l                                         ; $78a0: $a5
    ld l, $a3                                     ; $78a1: $2e $a3
    ld [hl], c                                    ; $78a3: $71
    db $ed                                        ; $78a4: $ed
    jr jr_02f_7856                                ; $78a5: $18 $af

    ld c, c                                       ; $78a7: $49
    and a                                         ; $78a8: $a7
    rst $18                                       ; $78a9: $df
    rst $20                                       ; $78aa: $e7
    rst $08                                       ; $78ab: $cf
    sub e                                         ; $78ac: $93
    db $e3                                        ; $78ad: $e3
    or a                                          ; $78ae: $b7
    ld a, b                                       ; $78af: $78
    push hl                                       ; $78b0: $e5
    ld d, [hl]                                    ; $78b1: $56
    sbc e                                         ; $78b2: $9b
    ret c                                         ; $78b3: $d8

    ld [bc], a                                    ; $78b4: $02
    ld b, a                                       ; $78b5: $47
    or c                                          ; $78b6: $b1
    xor h                                         ; $78b7: $ac
    xor b                                         ; $78b8: $a8
    jp nc, Jump_02f_59a7                          ; $78b9: $d2 $a7 $59

    db $d3                                        ; $78bc: $d3
    xor b                                         ; $78bd: $a8
    call c, $53b4                                 ; $78be: $dc $b4 $53
    cpl                                           ; $78c1: $2f
    dec [hl]                                      ; $78c2: $35

Call_02f_78c3:
    db $e4                                        ; $78c3: $e4
    jp c, $af29                                   ; $78c4: $da $29 $af

    add $4a                                       ; $78c7: $c6 $4a
    cp [hl]                                       ; $78c9: $be
    and e                                         ; $78ca: $a3
    and d                                         ; $78cb: $a2
    xor c                                         ; $78cc: $a9
    ld a, e                                       ; $78cd: $7b
    ld l, c                                       ; $78ce: $69
    db $e4                                        ; $78cf: $e4
    ld [hl], l                                    ; $78d0: $75
    ld h, e                                       ; $78d1: $63
    ld a, [hl]                                    ; $78d2: $7e
    ld l, e                                       ; $78d3: $6b
    db $ec                                        ; $78d4: $ec
    ld [hl], e                                    ; $78d5: $73
    ret nc                                        ; $78d6: $d0

    ld a, [de]                                    ; $78d7: $1a
    ld [hl], e                                    ; $78d8: $73
    ld a, d                                       ; $78d9: $7a
    ld b, b                                       ; $78da: $40
    db $e3                                        ; $78db: $e3
    or $63                                        ; $78dc: $f6 $63
    ld b, l                                       ; $78de: $45
    xor e                                         ; $78df: $ab
    sbc $e7                                       ; $78e0: $de $e7
    sbc d                                         ; $78e2: $9a
    ld b, c                                       ; $78e3: $41
    rst $20                                       ; $78e4: $e7
    db $fd                                        ; $78e5: $fd
    ld d, a                                       ; $78e6: $57
    and l                                         ; $78e7: $a5
    ld e, h                                       ; $78e8: $5c
    ret nc                                        ; $78e9: $d0

    ld a, c                                       ; $78ea: $79
    db $10                                        ; $78eb: $10
    add $52                                       ; $78ec: $c6 $52
    db $ec                                        ; $78ee: $ec
    cp a                                          ; $78ef: $bf
    cp a                                          ; $78f0: $bf
    jp z, $9858                                   ; $78f1: $ca $58 $98

    ld bc, $de45                                  ; $78f4: $01 $45 $de
    ld [bc], a                                    ; $78f7: $02
    ld e, c                                       ; $78f8: $59
    and d                                         ; $78f9: $a2
    pop hl                                        ; $78fa: $e1
    ld h, a                                       ; $78fb: $67
    ld sp, hl                                     ; $78fc: $f9
    adc l                                         ; $78fd: $8d
    and e                                         ; $78fe: $a3
    ld a, $8d                                     ; $78ff: $3e $8d
    ccf                                           ; $7901: $3f
    and h                                         ; $7902: $a4
    ld [hl], l                                    ; $7903: $75
    ld c, l                                       ; $7904: $4d
    xor [hl]                                      ; $7905: $ae
    ld d, l                                       ; $7906: $55
    or $b1                                        ; $7907: $f6 $b1
    add c                                         ; $7909: $81
    ld [hl], d                                    ; $790a: $72

Call_02f_790b:
    sbc e                                         ; $790b: $9b
    ld l, b                                       ; $790c: $68
    adc l                                         ; $790d: $8d
    rst $18                                       ; $790e: $df
    ld a, [de]                                    ; $790f: $1a
    di                                            ; $7910: $f3
    db $db                                        ; $7911: $db
    adc h                                         ; $7912: $8c
    pop de                                        ; $7913: $d1
    or l                                          ; $7914: $b5
    add $6f                                       ; $7915: $c6 $6f
    sub a                                         ; $7917: $97
    ld bc, $fbe1                                  ; $7918: $01 $e1 $fb
    cp e                                          ; $791b: $bb
    call z, $6587                                 ; $791c: $cc $87 $65
    adc l                                         ; $791f: $8d
    add b                                         ; $7920: $80
    sub $35                                       ; $7921: $d6 $35
    cp c                                          ; $7923: $b9
    add $dc                                       ; $7924: $c6 $dc
    cp $ed                                        ; $7926: $fe $ed
    dec bc                                        ; $7928: $0b
    ld a, [hl-]                                   ; $7929: $3a
    rst $20                                       ; $792a: $e7
    dec l                                         ; $792b: $2d
    and a                                         ; $792c: $a7
    ld a, l                                       ; $792d: $7d
    xor l                                         ; $792e: $ad
    add hl, hl                                    ; $792f: $29
    or $49                                        ; $7930: $f6 $49
    inc hl                                        ; $7932: $23
    xor a                                         ; $7933: $af
    dec de                                        ; $7934: $1b
    cp e                                          ; $7935: $bb
    ld e, [hl]                                    ; $7936: $5e
    ld d, l                                       ; $7937: $55
    pop bc                                        ; $7938: $c1
    rst $10                                       ; $7939: $d7
    xor [hl]                                      ; $793a: $ae
    ld e, e                                       ; $793b: $5b
    xor c                                         ; $793c: $a9
    sbc e                                         ; $793d: $9b
    ld [hl], d                                    ; $793e: $72
    xor l                                         ; $793f: $ad
    ld a, c                                       ; $7940: $79
    ldh [$2b], a                                  ; $7941: $e0 $2b
    adc d                                         ; $7943: $8a
    dec [hl]                                      ; $7944: $35
    rrca                                          ; $7945: $0f
    ld c, e                                       ; $7946: $4b
    inc c                                         ; $7947: $0c
    sbc h                                         ; $7948: $9c
    ldh a, [$b2]                                  ; $7949: $f0 $b2
    ld c, a                                       ; $794b: $4f

jr_02f_794c:
    ld sp, $85ae                                  ; $794c: $31 $ae $85
    ld h, d                                       ; $794f: $62
    ld l, c                                       ; $7950: $69
    ld bc, $a296                                  ; $7951: $01 $96 $a2
    ret z                                         ; $7954: $c8

    ld e, e                                       ; $7955: $5b
    ld b, a                                       ; $7956: $47
    or c                                          ; $7957: $b1
    xor h                                         ; $7958: $ac
    xor b                                         ; $7959: $a8
    jp nc, Jump_000_19a7                          ; $795a: $d2 $a7 $19

Jump_02f_795d:
    ld b, h                                       ; $795d: $44
    ldh [$e2], a                                  ; $795e: $e0 $e2
    ld b, c                                       ; $7960: $41
    xor h                                         ; $7961: $ac
    ld l, b                                       ; $7962: $68
    rst $38                                       ; $7963: $ff
    ld d, l                                       ; $7964: $55
    db $e3                                        ; $7965: $e3
    ld e, d                                       ; $7966: $5a
    ld a, [bc]                                    ; $7967: $0a
    jr nc, jr_02f_794c                            ; $7968: $30 $e2

    db $fd                                        ; $796a: $fd
    sbc c                                         ; $796b: $99
    ld [hl], e                                    ; $796c: $73
    ld a, l                                       ; $796d: $7d
    ld c, d                                       ; $796e: $4a
    ld c, $cb                                     ; $796f: $0e $cb
    jp nc, $b406                                  ; $7971: $d2 $06 $b4

    ret nc                                        ; $7974: $d0

    xor d                                         ; $7975: $aa
    ld e, e                                       ; $7976: $5b
    ld a, [de]                                    ; $7977: $1a
    push hl                                       ; $7978: $e5
    db $e3                                        ; $7979: $e3
    ld e, d                                       ; $797a: $5a
    jr z, @-$28                                   ; $797b: $28 $d6

    ld hl, sp-$35                                 ; $797d: $f8 $cb
    sub $45                                       ; $797f: $d6 $45
    ld hl, sp+$7e                                 ; $7981: $f8 $7e
    adc h                                         ; $7983: $8c
    ld l, e                                       ; $7984: $6b
    adc h                                         ; $7985: $8c
    dec [hl]                                      ; $7986: $35
    ld [bc], a                                    ; $7987: $02
    adc a                                         ; $7988: $8f
    pop hl                                        ; $7989: $e1
    ld c, a                                       ; $798a: $4f
    rla                                           ; $798b: $17
    xor e                                         ; $798c: $ab

Call_02f_798d:
    ld a, [hl+]                                   ; $798d: $2a
    ld c, e                                       ; $798e: $4b
    dec d                                         ; $798f: $15
    ld b, l                                       ; $7990: $45
    sbc $02                                       ; $7991: $de $02
    dec e                                         ; $7993: $1d
    adc e                                         ; $7994: $8b
    ld a, l                                       ; $7995: $7d
    jp nc, $ebc8                                  ; $7996: $d2 $c8 $eb

    add $ac                                       ; $7999: $c6 $ac
    xor d                                         ; $799b: $aa
    db $eb                                        ; $799c: $eb
    ld a, [de]                                    ; $799d: $1a
    db $10                                        ; $799e: $10
    ld d, $8c                                     ; $799f: $16 $8c
    sbc e                                         ; $79a1: $9b
    add $d5                                       ; $79a2: $c6 $d5
    nop                                           ; $79a4: $00
    add $8a                                       ; $79a5: $c6 $8a
    db $ed                                        ; $79a7: $ed
    inc bc                                        ; $79a8: $03
    jp nc, Jump_02f_62b8                          ; $79a9: $d2 $b8 $62

    and h                                         ; $79ac: $a4
    xor d                                         ; $79ad: $aa
    adc c                                         ; $79ae: $89
    cp h                                          ; $79af: $bc
    dec b                                         ; $79b0: $05
    and a                                         ; $79b1: $a7
    db $fd                                        ; $79b2: $fd
    pop hl                                        ; $79b3: $e1
    ld h, a                                       ; $79b4: $67
    ld sp, hl                                     ; $79b5: $f9
    adc l                                         ; $79b6: $8d
    and e                                         ; $79b7: $a3
    ld a, $8d                                     ; $79b8: $3e $8d
    cp h                                          ; $79ba: $bc
    ld l, [hl]                                    ; $79bb: $6e
    xor h                                         ; $79bc: $ac
    ld bc, $b08c                                  ; $79bd: $01 $8c $b0
    ld c, a                                       ; $79c0: $4f
    ret                                           ; $79c1: $c9


    cp l                                          ; $79c2: $bd
    ld d, h                                       ; $79c3: $54
    or [hl]                                       ; $79c4: $b6
    ld l, b                                       ; $79c5: $68
    ld e, h                                       ; $79c6: $5c
    ei                                            ; $79c7: $fb
    xor a                                         ; $79c8: $af
    ld c, d                                       ; $79c9: $4a
    cp c                                          ; $79ca: $b9
    jr nz, jr_02f_79e1                            ; $79cb: $20 $14

    dec bc                                        ; $79cd: $0b
    ld l, b                                       ; $79ce: $68
    db $e4                                        ; $79cf: $e4
    ld b, c                                       ; $79d0: $41
    ld c, b                                       ; $79d1: $48
    ld hl, sp+$7e                                 ; $79d2: $f8 $7e
    xor h                                         ; $79d4: $ac
    ld a, d                                       ; $79d5: $7a
    add l                                         ; $79d6: $85
    add e                                         ; $79d7: $83
    ld [hl+], a                                   ; $79d8: $22
    ld l, a                                       ; $79d9: $6f

jr_02f_79da:
    ld bc, $dc27                                  ; $79da: $01 $27 $dc
    ld e, a                                       ; $79dd: $5f
    jp $8e46                                      ; $79de: $c3 $46 $8e


jr_02f_79e1:
    ld a, [$d053]                                 ; $79e1: $fa $53 $d0
    ldh [$2f], a                                  ; $79e4: $e0 $2f
    db $e4                                        ; $79e6: $e4
    adc l                                         ; $79e7: $8d
    ld a, $8d                                     ; $79e8: $3e $8d
    pop de                                        ; $79ea: $d1
    rst $00                                       ; $79eb: $c7
    ld c, d                                       ; $79ec: $4a
    ret nc                                        ; $79ed: $d0

    ld a, c                                       ; $79ee: $79
    add hl, de                                    ; $79ef: $19
    ret nz                                        ; $79f0: $c0

    ld sp, $d348                                  ; $79f1: $31 $48 $d3
    rst $18                                       ; $79f4: $df
    pop hl                                        ; $79f5: $e1
    ld l, c                                       ; $79f6: $69
    rst $00                                       ; $79f7: $c7
    inc c                                         ; $79f8: $0c
    jr z, jr_02f_79da                             ; $79f9: $28 $df

    xor c                                         ; $79fb: $a9
    or [hl]                                       ; $79fc: $b6
    ld b, [hl]                                    ; $79fd: $46
    ld b, $e3                                     ; $79fe: $06 $e3
    rrca                                          ; $7a00: $0f
    ld l, c                                       ; $7a01: $69
    ld e, l                                       ; $7a02: $5d

Call_02f_7a03:
    sub e                                         ; $7a03: $93
    ld l, e                                       ; $7a04: $6b
    ld b, b                                       ; $7a05: $40
    ld e, b                                       ; $7a06: $58
    jr nc, jr_02f_7a77                            ; $7a07: $30 $6e

    ld a, [de]                                    ; $7a09: $1a
    ld d, [hl]                                    ; $7a0a: $56
    push de                                       ; $7a0b: $d5
    adc l                                         ; $7a0c: $8d
    and e                                         ; $7a0d: $a3
    sub c                                         ; $7a0e: $91
    ld a, [hl+]                                   ; $7a0f: $2a
    ld a, l                                       ; $7a10: $7d
    sbc d                                         ; $7a11: $9a
    dec [hl]                                      ; $7a12: $35
    ld e, [hl]                                    ; $7a13: $5e
    scf                                           ; $7a14: $37
    ld h, [hl]                                    ; $7a15: $66
    call z, $df43                                 ; $7a16: $cc $43 $df
    adc l                                         ; $7a19: $8d
    ld l, [hl]                                    ; $7a1a: $6e
    db $e3                                        ; $7a1b: $e3
    or a                                          ; $7a1c: $b7
    and $01                                       ; $7a1d: $e6 $01
    sub [hl]                                      ; $7a1f: $96
    ld [hl], d                                    ; $7a20: $72
    ld d, e                                       ; $7a21: $53
    sbc $02                                       ; $7a22: $de $02
    daa                                           ; $7a24: $27
    jr z, @+$78                                   ; $7a25: $28 $76

    ld l, e                                       ; $7a27: $6b
    ldh a, [$2b]                                  ; $7a28: $f0 $2b
    add $b5                                       ; $7a2a: $c6 $b5
    and $f9                                       ; $7a2c: $e6 $f9
    ld d, l                                       ; $7a2e: $55
    rst $28                                       ; $7a2f: $ef
    sub $e0                                       ; $7a30: $d6 $e0
    or l                                          ; $7a32: $b5
    ld a, b                                       ; $7a33: $78
    sbc a                                         ; $7a34: $9f
    ld h, [hl]                                    ; $7a35: $66
    xor c                                         ; $7a36: $a9
    rst $30                                       ; $7a37: $f7
    cp c                                          ; $7a38: $b9
    ld a, l                                       ; $7a39: $7d
    ld d, d                                       ; $7a3a: $52
    db $ec                                        ; $7a3b: $ec
    ld [hl-], a                                   ; $7a3c: $32
    sbc a                                         ; $7a3d: $9f
    ld c, d                                       ; $7a3e: $4a
    ld d, c                                       ; $7a3f: $51
    call z, Call_000_3cd5                         ; $7a40: $cc $d5 $3c
    adc b                                         ; $7a43: $88
    ret nc                                        ; $7a44: $d0

    and a                                         ; $7a45: $a7
    pop de                                        ; $7a46: $d1
    inc bc                                        ; $7a47: $03
    ld e, d                                       ; $7a48: $5a
    pop de                                        ; $7a49: $d1
    ld c, b                                       ; $7a4a: $48
    ld d, l                                       ; $7a4b: $55
    inc de                                        ; $7a4c: $13
    ld sp, hl                                     ; $7a4d: $f9
    ld c, [hl]                                    ; $7a4e: $4e
    ld d, b                                       ; $7a4f: $50
    xor h                                         ; $7a50: $ac
    ld [de], a                                    ; $7a51: $12
    sub [hl]                                      ; $7a52: $96
    ld [hl+], a                                   ; $7a53: $22
    ld [hl], b                                    ; $7a54: $70
    push bc                                       ; $7a55: $c5
    ld [c], a                                     ; $7a56: $e2
    ld a, l                                       ; $7a57: $7d
    jp c, Jump_02f_52a5                           ; $7a58: $da $a5 $52

    inc d                                         ; $7a5b: $14
    rlc b                                         ; $7a5c: $cb $00
    xor $df                                       ; $7a5e: $ee $df
    rst $18                                       ; $7a60: $df
    and a                                         ; $7a61: $a7

jr_02f_7a62:
    pop hl                                        ; $7a62: $e1
    ld c, a                                       ; $7a63: $4f
    rla                                           ; $7a64: $17
    ld h, h                                       ; $7a65: $64
    db $dd                                        ; $7a66: $dd
    ld h, [hl]                                    ; $7a67: $66
    ld [hl], b                                    ; $7a68: $70
    pop bc                                        ; $7a69: $c1
    ld e, a                                       ; $7a6a: $5f
    ld h, l                                       ; $7a6b: $65
    dec h                                         ; $7a6c: $25
    ld l, a                                       ; $7a6d: $6f
    ld bc, $6c59                                  ; $7a6e: $01 $59 $6c
    ld b, e                                       ; $7a71: $43
    ld e, a                                       ; $7a72: $5f
    call c, $f62e                                 ; $7a73: $dc $2e $f6
    ld c, l                                       ; $7a76: $4d

jr_02f_7a77:
    db $e3                                        ; $7a77: $e3
    ld [hl], a                                    ; $7a78: $77
    ld hl, sp+$5a                                 ; $7a79: $f8 $5a
    add e                                         ; $7a7b: $83
    ld [bc], a                                    ; $7a7c: $02
    add $95                                       ; $7a7d: $c6 $95
    cpl                                           ; $7a7f: $2f
    db $eb                                        ; $7a80: $eb
    db $fd                                        ; $7a81: $fd
    rrca                                          ; $7a82: $0f
    ld e, d                                       ; $7a83: $5a
    di                                            ; $7a84: $f3
    ret nz                                        ; $7a85: $c0

    ld h, a                                       ; $7a86: $67
    ret nz                                        ; $7a87: $c0

    xor d                                         ; $7a88: $aa
    db $f4                                        ; $7a89: $f4
    ld c, c                                       ; $7a8a: $49
    cp [hl]                                       ; $7a8b: $be
    ld h, d                                       ; $7a8c: $62
    ld l, e                                       ; $7a8d: $6b
    nop                                           ; $7a8e: $00
    inc hl                                        ; $7a8f: $23
    db $ec                                        ; $7a90: $ec
    ld e, a                                       ; $7a91: $5f
    ld a, [de]                                    ; $7a92: $1a
    ld d, a                                       ; $7a93: $57
    xor h                                         ; $7a94: $ac
    ld a, c                                       ; $7a95: $79
    add h                                         ; $7a96: $84
    rst $28                                       ; $7a97: $ef
    ld b, a                                       ; $7a98: $47
    sbc $02                                       ; $7a99: $de $02
    daa                                           ; $7a9b: $27
    jr z, @+$58                                   ; $7a9c: $28 $56

    inc hl                                        ; $7a9e: $23
    add sp, $3c                                   ; $7a9f: $e8 $3c
    xor [hl]                                      ; $7aa1: $ae
    push bc                                       ; $7aa2: $c5
    ld h, l                                       ; $7aa3: $65
    ld l, [hl]                                    ; $7aa4: $6e
    xor c                                         ; $7aa5: $a9
    sbc e                                         ; $7aa6: $9b
    ld d, $ef                                     ; $7aa7: $16 $ef
    db $d3                                        ; $7aa9: $d3
    ld a, [de]                                    ; $7aaa: $1a
    ld [hl], e                                    ; $7aab: $73
    jp nz, Jump_000_0a0b                          ; $7aac: $c2 $0b $0a

    sub $75                                       ; $7aaf: $d6 $75
    ld d, l                                       ; $7ab1: $55
    ld a, [$fc34]                                 ; $7ab2: $fa $34 $fc
    inc e                                         ; $7ab5: $1c
    inc sp                                        ; $7ab6: $33
    ld [hl], b                                    ; $7ab7: $70
    adc e                                         ; $7ab8: $8b
    ld [hl], c                                    ; $7ab9: $71
    ei                                            ; $7aba: $fb
    ld sp, $fdae                                  ; $7abb: $31 $ae $fd
    ld d, a                                       ; $7abe: $57
    and l                                         ; $7abf: $a5
    ld e, h                                       ; $7ac0: $5c
    db $10                                        ; $7ac1: $10
    adc d                                         ; $7ac2: $8a
    dec [hl]                                      ; $7ac3: $35
    adc a                                         ; $7ac4: $8f
    ldh a, [$fd]                                  ; $7ac5: $f0 $fd
    ret z                                         ; $7ac7: $c8

    ld e, e                                       ; $7ac8: $5b
    daa                                           ; $7ac9: $27
    jr z, jr_02f_7a62                             ; $7aca: $28 $96

    jp nz, $f9eb                                  ; $7acc: $c2 $eb $f9

    ld d, a                                       ; $7acf: $57
    inc h                                         ; $7ad0: $24
    ld [hl], a                                    ; $7ad1: $77
    ld sp, hl                                     ; $7ad2: $f9
    call $5c08                                    ; $7ad3: $cd $08 $5c
    ld sp, $9f6e                                  ; $7ad6: $31 $6e $9f

jr_02f_7ad9:
    dec h                                         ; $7ad9: $25
    rla                                           ; $7ada: $17
    add h                                         ; $7adb: $84
    ld [hl+], a                                   ; $7adc: $22
    cp c                                          ; $7add: $b9
    ld b, [hl]                                    ; $7ade: $46
    adc $f5                                       ; $7adf: $ce $f5
    ld l, c                                       ; $7ae1: $69
    ld b, l                                       ; $7ae2: $45
    ldh [$b1], a                                  ; $7ae3: $e0 $b1
    db $eb                                        ; $7ae5: $eb
    ld sp, hl                                     ; $7ae6: $f9
    ld d, a                                       ; $7ae7: $57
    adc h                                         ; $7ae8: $8c
    ld e, $c4                                     ; $7ae9: $1e $c4
    adc d                                         ; $7aeb: $8a
    ld h, d                                       ; $7aec: $62
    or $63                                        ; $7aed: $f6 $63
    and d                                         ; $7aef: $a2
    ld h, c                                       ; $7af0: $61
    ld e, c                                       ; $7af1: $59
    jp c, Jump_02f_5680                           ; $7af2: $da $80 $56

    inc d                                         ; $7af5: $14
    ld [hl], e                                    ; $7af6: $73
    xor e                                         ; $7af7: $ab
    inc l                                         ; $7af8: $2c
    ld b, d                                       ; $7af9: $42
    cp [hl]                                       ; $7afa: $be
    inc c                                         ; $7afb: $0c

jr_02f_7afc:
    ret c                                         ; $7afc: $d8

    rst $20                                       ; $7afd: $e7
    ld d, e                                       ; $7afe: $53
    add hl, hl                                    ; $7aff: $29
    adc d                                         ; $7b00: $8a
    ld a, l                                       ; $7b01: $7d
    db $cd, $c5, $32                              ; $7b02: $cd $c5 $32
    rst $20                                       ; $7b05: $e7
    ld a, [$c6b4]                                 ; $7b06: $fa $b4 $c6
    ld [hl+], a                                   ; $7b09: $22
    ld l, a                                       ; $7b0a: $6f
    ld bc, $7dc7                                  ; $7b0b: $01 $c7 $7d
    sub [hl]                                      ; $7b0e: $96
    rst $18                                       ; $7b0f: $df
    jr c, jr_02f_7afc                             ; $7b10: $38 $ea

    db $d3                                        ; $7b12: $d3
    ld [hl-], a                                   ; $7b13: $32
    and b                                         ; $7b14: $a0
    sub l                                         ; $7b15: $95
    ei                                            ; $7b16: $fb
    ei                                            ; $7b17: $fb
    inc hl                                        ; $7b18: $23
    ld a, a                                       ; $7b19: $7f
    ret nz                                        ; $7b1a: $c0

    ld l, b                                       ; $7b1b: $68
    ld a, [$d4b3]                                 ; $7b1c: $fa $b3 $d4
    ei                                            ; $7b1f: $fb
    call c, $a5fe                                 ; $7b20: $dc $fe $a5
    ld d, l                                       ; $7b23: $55
    add [hl]                                      ; $7b24: $86
    or c                                          ; $7b25: $b1
    inc c                                         ; $7b26: $0c
    ldh [$be], a                                  ; $7b27: $e0 $be
    add $1f                                       ; $7b29: $c6 $1f
    jp nc, $8b1a                                  ; $7b2b: $d2 $1a $8b

    dec [hl]                                      ; $7b2e: $35
    cp $18                                        ; $7b2f: $fe $18
    ld a, l                                       ; $7b31: $7d
    db $f4                                        ; $7b32: $f4
    ld [hl], c                                    ; $7b33: $71
    dec l                                         ; $7b34: $2d
    db $e4                                        ; $7b35: $e4
    adc l                                         ; $7b36: $8d
    ld a, $c5                                     ; $7b37: $3e $c5
    jr @+$7f                                      ; $7b39: $18 $7d

    xor h                                         ; $7b3b: $ac
    inc b                                         ; $7b3c: $04
    sbc l                                         ; $7b3d: $9d
    di                                            ; $7b3e: $f3
    ld d, $27                                     ; $7b3f: $16 $27
    jr z, jr_02f_7ad9                             ; $7b41: $28 $96

    cp d                                          ; $7b43: $ba
    sbc l                                         ; $7b44: $9d
    rst $38                                       ; $7b45: $ff
    call z, $2c79                                 ; $7b46: $cc $79 $2c
    sbc $a7                                       ; $7b49: $de $a7
    ld [hl], c                                    ; $7b4b: $71
    push bc                                       ; $7b4c: $c5
    ld a, [de]                                    ; $7b4d: $1a
    sub h                                         ; $7b4e: $94
    cp e                                          ; $7b4f: $bb
    ld h, d                                       ; $7b50: $62
    add hl, de                                    ; $7b51: $19
    ret nc                                        ; $7b52: $d0

    jp z, $fdfd                                   ; $7b53: $ca $fd $fd

    sub c                                         ; $7b56: $91
    ccf                                           ; $7b57: $3f
    ld h, b                                       ; $7b58: $60
    inc [hl]                                      ; $7b59: $34
    ld l, [hl]                                    ; $7b5a: $6e
    ccf                                           ; $7b5b: $3f
    ld d, [hl]                                    ; $7b5c: $56
    xor $0a                                       ; $7b5d: $ee $0a
    ld a, d                                       ; $7b5f: $7a
    sub l                                         ; $7b60: $95
    ld e, l                                       ; $7b61: $5d
    db $e3                                        ; $7b62: $e3
    adc d                                         ; $7b63: $8a
    ld e, l                                       ; $7b64: $5d
    db $ec                                        ; $7b65: $ec
    cp d                                          ; $7b66: $ba
    adc h                                         ; $7b67: $8c
    dec hl                                        ; $7b68: $2b
    ld a, [c]                                     ; $7b69: $f2
    dec e                                         ; $7b6a: $1d
    ld d, l                                       ; $7b6b: $55
    adc d                                         ; $7b6c: $8a
    ld h, d                                       ; $7b6d: $62
    rst $10                                       ; $7b6e: $d7
    ei                                            ; $7b6f: $fb
    ld b, c                                       ; $7b70: $41
    ld c, b                                       ; $7b71: $48
    and b                                         ; $7b72: $a0
    ld c, a                                       ; $7b73: $4f
    add e                                         ; $7b74: $83
    ccf                                           ; $7b75: $3f
    ei                                            ; $7b76: $fb
    add h                                         ; $7b77: $84
    db $fc                                        ; $7b78: $fc
    sub c                                         ; $7b79: $91
    ld h, [hl]                                    ; $7b7a: $66
    ret nc                                        ; $7b7b: $d0

    ld a, c                                       ; $7b7c: $79
    call Call_02f_78c3                            ; $7b7d: $cd $c3 $78
    ccf                                           ; $7b80: $3f
    ld a, [c]                                     ; $7b81: $f2
    ld d, $47                                     ; $7b82: $16 $47
    ld [hl], l                                    ; $7b84: $75
    ld h, $ef                                     ; $7b85: $26 $ef
    cp d                                          ; $7b87: $ba
    ld d, d                                       ; $7b88: $52
    and l                                         ; $7b89: $a5
    ld c, a                                       ; $7b8a: $4f
    ld l, e                                       ; $7b8b: $6b
    db $fc                                        ; $7b8c: $fc
    halt                                          ; $7b8d: $76
    and c                                         ; $7b8e: $a1
    jr nz, jr_02f_7ba5                            ; $7b8f: $20 $14

    ret                                           ; $7b91: $c9


    xor c                                         ; $7b92: $a9
    inc d                                         ; $7b93: $14
    push bc                                       ; $7b94: $c5
    sbc d                                         ; $7b95: $9a
    rlca                                          ; $7b96: $07
    ld de, $b4fa                                  ; $7b97: $11 $fa $b4
    nop                                           ; $7b9a: $00
    ld e, a                                       ; $7b9b: $5f
    ld d, c                                       ; $7b9c: $51
    xor h                                         ; $7b9d: $ac
    ldh [$f5], a                                  ; $7b9e: $e0 $f5
    db $fc                                        ; $7ba0: $fc
    dec hl                                        ; $7ba1: $2b
    ld d, [hl]                                    ; $7ba2: $56
    inc d                                         ; $7ba3: $14
    ld l, e                                       ; $7ba4: $6b

jr_02f_7ba5:
    ld a, [bc]                                    ; $7ba5: $0a
    call nz, $1418                                ; $7ba6: $c4 $18 $14
    sub [hl]                                      ; $7ba9: $96
    and d                                         ; $7baa: $a2
    ld e, b                                       ; $7bab: $58
    ld b, $70                                     ; $7bac: $06 $70
    dec d                                         ; $7bae: $15
    add sp, -$2d                                  ; $7baf: $e8 $d3
    ret z                                         ; $7bb1: $c8

    db $eb                                        ; $7bb2: $eb
    add $dc                                       ; $7bb3: $c6 $dc
    ld e, h                                       ; $7bb5: $5c
    sub l                                         ; $7bb6: $95
    ld a, $e5                                     ; $7bb7: $3e $e5
    dec l                                         ; $7bb9: $2d
    and a                                         ; $7bba: $a7
    ld a, l                                       ; $7bbb: $7d
    xor l                                         ; $7bbc: $ad
    add hl, hl                                    ; $7bbd: $29
    or $49                                        ; $7bbe: $f6 $49
    ld [hl], e                                    ; $7bc0: $73
    ld [hl], e                                    ; $7bc1: $73
    xor l                                         ; $7bc2: $ad
    ld a, c                                       ; $7bc3: $79
    db $10                                        ; $7bc4: $10
    ld h, c                                       ; $7bc5: $61
    sbc a                                         ; $7bc6: $9f
    add $ed                                       ; $7bc7: $c6 $ed
    rst $00                                       ; $7bc9: $c7
    adc d                                         ; $7bca: $8a
    ld h, d                                       ; $7bcb: $62
    inc h                                         ; $7bcc: $24
    ld [hl], a                                    ; $7bcd: $77
    jp $f31f                                      ; $7bce: $c3 $1f $f3


    ld [hl], a                                    ; $7bd1: $77
    or c                                          ; $7bd2: $b1
    dec b                                         ; $7bd3: $05
    sbc l                                         ; $7bd4: $9d
    di                                            ; $7bd5: $f3
    sbc l                                         ; $7bd6: $9d
    add d                                         ; $7bd7: $82
    ld a, [$5afb]                                 ; $7bd8: $fa $fb $5a
    db $e3                                        ; $7bdb: $e3
    rrca                                          ; $7bdc: $0f
    jr jr_02f_7c0c                                ; $7bdd: $18 $2d

    inc bc                                        ; $7bdf: $03
    ld [hl], a                                    ; $7be0: $77
    sub l                                         ; $7be1: $95
    and d                                         ; $7be2: $a2
    ld de, $4568                                  ; $7be3: $11 $68 $45
    or c                                          ; $7be6: $b1
    ld a, [c]                                     ; $7be7: $f2
    and b                                         ; $7be8: $a0
    adc c                                         ; $7be9: $89
    ld a, d                                       ; $7bea: $7a
    inc l                                         ; $7beb: $2c
    di                                            ; $7bec: $f3
    rlca                                          ; $7bed: $07
    sub c                                         ; $7bee: $91
    or a                                          ; $7bef: $b7
    ld b, a                                       ; $7bf0: $47
    sub l                                         ; $7bf1: $95
    and d                                         ; $7bf2: $a2
    add l                                         ; $7bf3: $85
    ld b, [hl]                                    ; $7bf4: $46
    cp $80                                        ; $7bf5: $fe $80
    pop de                                        ; $7bf7: $d1
    cp b                                          ; $7bf8: $b8
    or $5f                                        ; $7bf9: $f6 $5f
    inc l                                         ; $7bfb: $2c
    ei                                            ; $7bfc: $fb
    add c                                         ; $7bfd: $81
    rst $00                                       ; $7bfe: $c7
    ldh [$63], a                                  ; $7bff: $e0 $63
    ld b, $54                                     ; $7c01: $06 $54
    jp hl                                         ; $7c03: $e9


    db $d3                                        ; $7c04: $d3
    db $f4                                        ; $7c05: $f4
    rst $00                                       ; $7c06: $c7
    dec d                                         ; $7c07: $15
    db $d3                                        ; $7c08: $d3
    rst $20                                       ; $7c09: $e7
    cp $90                                        ; $7c0a: $fe $90

jr_02f_7c0c:
    ld h, d                                       ; $7c0c: $62
    ld h, c                                       ; $7c0d: $61
    ret nz                                        ; $7c0e: $c0

    jr jr_02f_7c5c                                ; $7c0f: $18 $4b

    sub c                                         ; $7c11: $91
    rst $28                                       ; $7c12: $ef
    ld d, h                                       ; $7c13: $54
    push bc                                       ; $7c14: $c5
    jp nc, $e045                                  ; $7c15: $d2 $45 $e0

    or c                                          ; $7c18: $b1
    ld a, b                                       ; $7c19: $78
    sbc a                                         ; $7c1a: $9f
    ld b, $84                                     ; $7c1b: $06 $84
    dec b                                         ; $7c1d: $05
    db $e3                                        ; $7c1e: $e3
    and [hl]                                      ; $7c1f: $a6
    jr @-$47                                      ; $7c20: $18 $b7

    rra                                           ; $7c22: $1f

Call_02f_7c23:
    dec hl                                        ; $7c23: $2b
    adc d                                         ; $7c24: $8a
    dec [hl]                                      ; $7c25: $35
    adc a                                         ; $7c26: $8f
    ldh a, [$fd]                                  ; $7c27: $f0 $fd
    ld e, b                                       ; $7c29: $58
    ld h, l                                       ; $7c2a: $65

Jump_02f_7c2b:
    jr jr_02f_7c38                                ; $7c2b: $18 $0b

    push bc                                       ; $7c2d: $c5
    jp nc, $2c02                                  ; $7c2e: $d2 $02 $2c

    ld b, l                                       ; $7c31: $45
    or c                                          ; $7c32: $b1
    ld a, b                                       ; $7c33: $78
    sbc a                                         ; $7c34: $9f
    ld b, [hl]                                    ; $7c35: $46
    xor a                                         ; $7c36: $af
    inc sp                                        ; $7c37: $33

jr_02f_7c38:
    ld h, [hl]                                    ; $7c38: $66
    ld b, b                                       ; $7c39: $40
    sub c                                         ; $7c3a: $91
    or a                                          ; $7c3b: $b7
    rst $00                                       ; $7c3c: $c7
    ld a, [hl+]                                   ; $7c3d: $2a
    ld a, [de]                                    ; $7c3e: $1a
    ld sp, hl                                     ; $7c3f: $f9
    ld c, [hl]                                    ; $7c40: $4e
    dec h                                         ; $7c41: $25
    di                                            ; $7c42: $f3
    ld [hl], e                                    ; $7c43: $73
    ld d, l                                       ; $7c44: $55
    db $d3                                        ; $7c45: $d3
    ld [bc], a                                    ; $7c46: $02
    dec e                                         ; $7c47: $1d
    call $52ed                                    ; $7c48: $cd $ed $52
    add hl, bc                                    ; $7c4b: $09
    adc b                                         ; $7c4c: $88
    ld d, $87                                     ; $7c4d: $16 $87
    ei                                            ; $7c4f: $fb
    push bc                                       ; $7c50: $c5
    add $94                                       ; $7c51: $c6 $94
    dec d                                         ; $7c53: $15
    cp [hl]                                       ; $7c54: $be
    jp $970b                                      ; $7c55: $c3 $0b $97


    db $d3                                        ; $7c58: $d3
    ei                                            ; $7c59: $fb
    dec l                                         ; $7c5a: $2d
    ld b, a                                       ; $7c5b: $47

jr_02f_7c5c:
    sub l                                         ; $7c5c: $95
    ld h, d                                       ; $7c5d: $62
    db $fc                                        ; $7c5e: $fc
    cp c                                          ; $7c5f: $b9
    db $ed                                        ; $7c60: $ed
    ld a, b                                       ; $7c61: $78
    ld de, $91c9                                  ; $7c62: $11 $c9 $91
    or e                                          ; $7c65: $b3
    call nc, $c702                                ; $7c66: $d4 $02 $c7
    ld e, b                                       ; $7c69: $58
    inc [hl]                                      ; $7c6a: $34
    and $7c                                       ; $7c6b: $e6 $7c
    and a                                         ; $7c6d: $a7
    or d                                          ; $7c6e: $b2
    pop af                                        ; $7c6f: $f1
    or e                                          ; $7c70: $b3
    adc d                                         ; $7c71: $8a
    add sp, -$03                                  ; $7c72: $e8 $fd
    ld d, $c7                                     ; $7c74: $16 $c7
    sub h                                         ; $7c76: $94
    rst $00                                       ; $7c77: $c7
    ret z                                         ; $7c78: $c8

    ld [hl], a                                    ; $7c79: $77
    inc l                                         ; $7c7a: $2c
    ld [hl], $e7                                  ; $7c7b: $36 $e7
    dec a                                         ; $7c7d: $3d
    daa                                           ; $7c7e: $27
    halt                                          ; $7c7f: $76
    dec bc                                        ; $7c80: $0b
    rst $00                                       ; $7c81: $c7
    ld hl, sp-$73                                 ; $7c82: $f8 $8d
    push af                                       ; $7c84: $f5
    ret nc                                        ; $7c85: $d0

    or l                                          ; $7c86: $b5
    and d                                         ; $7c87: $a2
    dec e                                         ; $7c88: $1d
    ld l, e                                       ; $7c89: $6b
    ld b, b                                       ; $7c8a: $40
    add [hl]                                      ; $7c8b: $86
    cp a                                          ; $7c8c: $bf
    dec b                                         ; $7c8d: $05

Jump_02f_7c8e:
    daa                                           ; $7c8e: $27
    jr jr_02f_7cb4                                ; $7c8f: $18 $23

    rst $38                                       ; $7c91: $ff
    ld a, [de]                                    ; $7c92: $1a
    rst $10                                       ; $7c93: $d7
    ld a, [hl-]                                   ; $7c94: $3a
    cp h                                          ; $7c95: $bc
    ld c, a                                       ; $7c96: $4f
    push de                                       ; $7c97: $d5
    ld [hl], e                                    ; $7c98: $73
    db $fd                                        ; $7c99: $fd
    xor e                                         ; $7c9a: $ab
    and [hl]                                      ; $7c9b: $a6
    dec b                                         ; $7c9c: $05
    rst $00                                       ; $7c9d: $c7
    or c                                          ; $7c9e: $b1
    cp [hl]                                       ; $7c9f: $be
    ld de, $ceda                                  ; $7ca0: $11 $da $ce
    ret nz                                        ; $7ca3: $c0

    jp nz, Jump_02f_42a3                          ; $7ca4: $c2 $a3 $42

Jump_02f_7ca7:
    ld h, d                                       ; $7ca7: $62
    or a                                          ; $7ca8: $b7
    and a                                         ; $7ca9: $a7
    jp c, $36c5                                   ; $7caa: $da $c5 $36

    rst $00                                       ; $7cad: $c7
    ld [$275b], sp                                ; $7cae: $08 $5b $27
    ld h, b                                       ; $7cb1: $60
    sbc l                                         ; $7cb2: $9d
    rst $30                                       ; $7cb3: $f7

jr_02f_7cb4:
    ld e, $6f                                     ; $7cb4: $1e $6f
    ld bc, $14c7                                  ; $7cb6: $01 $c7 $14
    ei                                            ; $7cb9: $fb
    push de                                       ; $7cba: $d5
    ld [hl], e                                    ; $7cbb: $73
    xor l                                         ; $7cbc: $ad
    and e                                         ; $7cbd: $a3
    db $ec                                        ; $7cbe: $ec
    ld e, h                                       ; $7cbf: $5c
    ld b, l                                       ; $7cc0: $45
    dec bc                                        ; $7cc1: $0b
    ld b, a                                       ; $7cc2: $47
    ld e, b                                       ; $7cc3: $58
    ld c, c                                       ; $7cc4: $49
    ccf                                           ; $7cc5: $3f
    ldh a, [rNR33]                                ; $7cc6: $f0 $1d
    ld d, c                                       ; $7cc8: $51
    db $ec                                        ; $7cc9: $ec
    xor e                                         ; $7cca: $ab
    dec b                                         ; $7ccb: $05
    ld b, a                                       ; $7ccc: $47
    rst $18                                       ; $7ccd: $df
    ld a, [bc]                                    ; $7cce: $0a
    halt                                          ; $7ccf: $76
    sbc $09                                       ; $7cd0: $de $09
    sub [hl]                                      ; $7cd2: $96
    ld [de], a                                    ; $7cd3: $12
    sub [hl]                                      ; $7cd4: $96
    and d                                         ; $7cd5: $a2
    ld d, $c7                                     ; $7cd6: $16 $c7
    cp b                                          ; $7cd8: $b8
    ret z                                         ; $7cd9: $c8

    halt                                          ; $7cda: $76
    adc h                                         ; $7cdb: $8c
    db $db                                        ; $7cdc: $db
    rst $20                                       ; $7cdd: $e7
    ld d, [hl]                                    ; $7cde: $56
    dec a                                         ; $7cdf: $3d
    ldh a, [rNR21]                                ; $7ce0: $f0 $16
    rst $00                                       ; $7ce2: $c7
    cp [hl]                                       ; $7ce3: $be
    rst $38                                       ; $7ce4: $ff
    inc e                                         ; $7ce5: $1c
    cp a                                          ; $7ce6: $bf
    halt                                          ; $7ce7: $76
    ld [hl+], a                                   ; $7ce8: $22
    ret nc                                        ; $7ce9: $d0

    push af                                       ; $7cea: $f5
    xor d                                         ; $7ceb: $aa
    sub h                                         ; $7cec: $94
    ld e, d                                       ; $7ced: $5a
    rst $00                                       ; $7cee: $c7
    ld h, b                                       ; $7cef: $60
    ld a, [hl-]                                   ; $7cf0: $3a
    db $fd                                        ; $7cf1: $fd
    sbc h                                         ; $7cf2: $9c
    rst $28                                       ; $7cf3: $ef
    and h                                         ; $7cf4: $a4
    ld d, d                                       ; $7cf5: $52
    db $e4                                        ; $7cf6: $e4
    db $f4                                        ; $7cf7: $f4
    ld a, [hl]                                    ; $7cf8: $7e
    dec bc                                        ; $7cf9: $0b
    dec e                                         ; $7cfa: $1d
    sbc $b7                                       ; $7cfb: $de $b7
    add d                                         ; $7cfd: $82
    ld h, c                                       ; $7cfe: $61
    dec sp                                        ; $7cff: $3b
    or l                                          ; $7d00: $b5
    and $5c                                       ; $7d01: $e6 $5c
    ld b, l                                       ; $7d03: $45
    dec bc                                        ; $7d04: $0b
    daa                                           ; $7d05: $27
    jp $acfb                                      ; $7d06: $c3 $fb $ac


    ld [hl], l                                    ; $7d09: $75
    ld a, h                                       ; $7d0a: $7c
    dec l                                         ; $7d0b: $2d
    ld b, a                                       ; $7d0c: $47
    ld a, $bf                                     ; $7d0d: $3e $bf
    inc l                                         ; $7d0f: $2c
    halt                                          ; $7d10: $76
    inc b                                         ; $7d11: $04
    ld [$561b], a                                 ; $7d12: $ea $1b $56
    scf                                           ; $7d15: $37
    or l                                          ; $7d16: $b5
    dec e                                         ; $7d17: $1d
    db $e4                                        ; $7d18: $e4
    rst $20                                       ; $7d19: $e7
    push de                                       ; $7d1a: $d5
    db $fc                                        ; $7d1b: $fc
    dec d                                         ; $7d1c: $15
    xor l                                         ; $7d1d: $ad
    add e                                         ; $7d1e: $83
    dec d                                         ; $7d1f: $15
    cp h                                          ; $7d20: $bc
    ld d, b                                       ; $7d21: $50
    ret nc                                        ; $7d22: $d0

    cp c                                          ; $7d23: $b9
    dec b                                         ; $7d24: $05
    dec e                                         ; $7d25: $1d
    sbc [hl]                                      ; $7d26: $9e
    or e                                          ; $7d27: $b3
    db $ec                                        ; $7d28: $ec
    ld l, e                                       ; $7d29: $6b
    daa                                           ; $7d2a: $27
    ret c                                         ; $7d2b: $d8

    adc [hl]                                      ; $7d2c: $8e
    cp [hl]                                       ; $7d2d: $be
    xor c                                         ; $7d2e: $a9
    dec b                                         ; $7d2f: $05
    ld e, c                                       ; $7d30: $59
    adc [hl]                                      ; $7d31: $8e
    pop de                                        ; $7d32: $d1
    ldh [$5f], a                                  ; $7d33: $e0 $5f
    sub [hl]                                      ; $7d35: $96
    cp a                                          ; $7d36: $bf
    ld a, a                                       ; $7d37: $7f
    ld l, [hl]                                    ; $7d38: $6e
    dec bc                                        ; $7d39: $0b
    ld b, a                                       ; $7d3a: $47
    ld de, $c55b                                  ; $7d3b: $11 $5b $c5
    push bc                                       ; $7d3e: $c5
    rst $10                                       ; $7d3f: $d7
    jp hl                                         ; $7d40: $e9


    ld b, c                                       ; $7d41: $41
    or $03                                        ; $7d42: $f6 $03
    ld l, a                                       ; $7d44: $6f
    cp h                                          ; $7d45: $bc
    ld l, e                                       ; $7d46: $6b
    ld l, d                                       ; $7d47: $6a
    ld bc, $dc47                                  ; $7d48: $01 $47 $dc
    adc h                                         ; $7d4b: $8c
    inc e                                         ; $7d4c: $1c
    cpl                                           ; $7d4d: $2f
    db $ed                                        ; $7d4e: $ed
    adc b                                         ; $7d4f: $88
    ld a, [c]                                     ; $7d50: $f2
    ld a, [hl-]                                   ; $7d51: $3a
    ld e, e                                       ; $7d52: $5b
    push de                                       ; $7d53: $d5
    ld [bc], a                                    ; $7d54: $02
    add a                                         ; $7d55: $87
    sub a                                         ; $7d56: $97
    sub h                                         ; $7d57: $94
    sbc h                                         ; $7d58: $9c
    ld l, h                                       ; $7d59: $6c
    sbc l                                         ; $7d5a: $9d
    sbc $23                                       ; $7d5b: $de $23
    ld [hl], $96                                  ; $7d5d: $36 $96
    jp nc, $6702                                  ; $7d5f: $d2 $02 $67

    ld a, [de]                                    ; $7d62: $1a
    add e                                         ; $7d63: $83
    ld a, [c]                                     ; $7d64: $f2
    sbc l                                         ; $7d65: $9d
    ld h, d                                       ; $7d66: $62
    ld b, c                                       ; $7d67: $41
    adc [hl]                                      ; $7d68: $8e
    rst $10                                       ; $7d69: $d7
    cp c                                          ; $7d6a: $b9
    dec l                                         ; $7d6b: $2d
    ld h, a                                       ; $7d6c: $67
    sbc c                                         ; $7d6d: $99
    di                                            ; $7d6e: $f3
    and d                                         ; $7d6f: $a2
    sbc d                                         ; $7d70: $9a
    ld [hl], l                                    ; $7d71: $75
    inc l                                         ; $7d72: $2c
    ld b, [hl]                                    ; $7d73: $46
    call nc, Call_02f_4702                        ; $7d74: $d4 $02 $47
    sub $54                                       ; $7d77: $d6 $54
    dec c                                         ; $7d79: $0d
    ei                                            ; $7d7a: $fb
    db $db                                        ; $7d7b: $db
    adc [hl]                                      ; $7d7c: $8e
    ld b, $af                                     ; $7d7d: $06 $af
    adc h                                         ; $7d7f: $8c
    and l                                         ; $7d80: $a5
    ld d, $47                                     ; $7d81: $16 $47

jr_02f_7d83:
    ld b, e                                       ; $7d83: $43
    ld c, c                                       ; $7d84: $49
    ret                                           ; $7d85: $c9


    ld l, c                                       ; $7d86: $69
    daa                                           ; $7d87: $27
    jr jr_02f_7d83                                ; $7d88: $18 $f9

    inc bc                                        ; $7d8a: $03
    inc l                                         ; $7d8b: $2c
    ld b, l                                       ; $7d8c: $45
    dec l                                         ; $7d8d: $2d
    rst $00                                       ; $7d8e: $c7
    sbc h                                         ; $7d8f: $9c
    and a                                         ; $7d90: $a7
    rst $08                                       ; $7d91: $cf
    ld e, a                                       ; $7d92: $5f
    pop bc                                        ; $7d93: $c1
    xor a                                         ; $7d94: $af
    dec d                                         ; $7d95: $15
    db $db                                        ; $7d96: $db
    pop de                                        ; $7d97: $d1
    or $c9                                        ; $7d98: $f6 $c9
    ld [hl+], a                                   ; $7d9a: $22
    inc bc                                        ; $7d9b: $03
    ld l, d                                       ; $7d9c: $6a
    ld bc, $b09d                                  ; $7d9d: $01 $9d $b0
    sub h                                         ; $7da0: $94
    sbc d                                         ; $7da1: $9a
    ld [hl], l                                    ; $7da2: $75
    ld a, d                                       ; $7da3: $7a
    rst $20                                       ; $7da4: $e7
    xor d                                         ; $7da5: $aa
    dec b                                         ; $7da6: $05
    ld e, c                                       ; $7da7: $59
    and $e5                                       ; $7da8: $e6 $e5
    ld de, $3ad9                                  ; $7daa: $11 $d9 $3a
    ld [c], a                                     ; $7dad: $e2
    ccf                                           ; $7dae: $3f
    scf                                           ; $7daf: $37
    add sp, $7d                                   ; $7db0: $e8 $7d
    or l                                          ; $7db2: $b5
    ld b, a                                       ; $7db3: $47
    ld [hl], c                                    ; $7db4: $71
    sub [hl]                                      ; $7db5: $96
    ld sp, hl                                     ; $7db6: $f9
    ld c, [hl]                                    ; $7db7: $4e
    dec h                                         ; $7db8: $25
    ld a, a                                       ; $7db9: $7f
    ld d, b                                       ; $7dba: $50
    ld e, b                                       ; $7dbb: $58
    ld a, [c]                                     ; $7dbc: $f2
    ld d, $c7                                     ; $7dbd: $16 $c7
    ld a, [de]                                    ; $7dbf: $1a
    and e                                         ; $7dc0: $a3
    ld a, [c]                                     ; $7dc1: $f2
    xor [hl]                                      ; $7dc2: $ae
    ld [hl], e                                    ; $7dc3: $73
    ld [hl], a                                    ; $7dc4: $77
    ld [$1279], a                                 ; $7dc5: $ea $79 $12
    pop hl                                        ; $7dc8: $e1
    ld h, a                                       ; $7dc9: $67
    or l                                          ; $7dca: $b5
    ld b, a                                       ; $7dcb: $47
    rla                                           ; $7dcc: $17
    ld h, e                                       ; $7dcd: $63
    db $10                                        ; $7dce: $10
    ld h, d                                       ; $7dcf: $62
    ld b, a                                       ; $7dd0: $47
    xor b                                         ; $7dd1: $a8
    and h                                         ; $7dd2: $a4
    ld l, d                                       ; $7dd3: $6a
    ld e, d                                       ; $7dd4: $5a
    push af                                       ; $7dd5: $f5
    ld hl, $6208                                  ; $7dd6: $21 $08 $62
    dec e                                         ; $7dd9: $1d
    or c                                          ; $7dda: $b1
    inc d                                         ; $7ddb: $14
    inc a                                         ; $7ddc: $3c
    rrca                                          ; $7ddd: $0f
    xor a                                         ; $7dde: $af
    ld [hl], e                                    ; $7ddf: $73
    adc e                                         ; $7de0: $8b
    ld e, d                                       ; $7de1: $5a
    daa                                           ; $7de2: $27

jr_02f_7de3:
    ld a, $67                                     ; $7de3: $3e $67
    ld d, h                                       ; $7de5: $54
    sub $e9                                       ; $7de6: $d6 $e9
    cp h                                          ; $7de8: $bc
    rst $30                                       ; $7de9: $f7
    rst $08                                       ; $7dea: $cf
    ld l, l                                       ; $7deb: $6d
    ld bc, $c527                                  ; $7dec: $01 $27 $c5
    ld a, c                                       ; $7def: $79
    ld d, [hl]                                    ; $7df0: $56
    ld hl, sp-$72                                 ; $7df1: $f8 $8e
    sub b                                         ; $7df3: $90
    ld d, l                                       ; $7df4: $55
    jr jr_02f_7de3                                ; $7df5: $18 $ec

    ld d, $59                                     ; $7df7: $16 $59
    rst $08                                       ; $7df9: $cf
    cp a                                          ; $7dfa: $bf
    ld a, [bc]                                    ; $7dfb: $0a
    ld b, d                                       ; $7dfc: $42
    db $ec                                        ; $7dfd: $ec
    ld [hl], b                                    ; $7dfe: $70
    sub [hl]                                      ; $7dff: $96
    ld h, e                                       ; $7e00: $63
    db $d3                                        ; $7e01: $d3
    ld e, b                                       ; $7e02: $58
    dec bc                                        ; $7e03: $0b
    rst $00                                       ; $7e04: $c7

jr_02f_7e05:
    ld b, b                                       ; $7e05: $40
    add hl, hl                                    ; $7e06: $29
    ret z                                         ; $7e07: $c8

    ret z                                         ; $7e08: $c8

    rst $10                                       ; $7e09: $d7
    pop af                                        ; $7e0a: $f1
    sbc l                                         ; $7e0b: $9d
    xor e                                         ; $7e0c: $ab
    ld d, h                                       ; $7e0d: $54
    ld c, l                                       ; $7e0e: $4d
    dec bc                                        ; $7e0f: $0b
    daa                                           ; $7e10: $27
    ld a, $4f                                     ; $7e11: $3e $4f
    ret                                           ; $7e13: $c9


    ld l, c                                       ; $7e14: $69
    ld b, a                                       ; $7e15: $47
    cp d                                          ; $7e16: $ba
    or c                                          ; $7e17: $b1
    sbc $ff                                       ; $7e18: $de $ff
    ld [hl-], a                                   ; $7e1a: $32
    ld l, b                                       ; $7e1b: $68
    ld bc, $14c7                                  ; $7e1c: $01 $c7 $14
    ld a, l                                       ; $7e1f: $7d
    ld l, [hl]                                    ; $7e20: $6e
    bit 4, d                                      ; $7e21: $cb $62
    inc hl                                        ; $7e23: $23
    pop de                                        ; $7e24: $d1
    cp e                                          ; $7e25: $bb
    adc $6d                                       ; $7e26: $ce $6d
    ld bc, $7387                                  ; $7e28: $01 $87 $73
    dec hl                                        ; $7e2b: $2b
    add hl, hl                                    ; $7e2c: $29
    add hl, sp                                    ; $7e2d: $39
    db $ed                                        ; $7e2e: $ed
    inc b                                         ; $7e2f: $04
    adc e                                         ; $7e30: $8b
    rst $20                                       ; $7e31: $e7
    ld e, a                                       ; $7e32: $5f
    ld b, h                                       ; $7e33: $44
    ld l, d                                       ; $7e34: $6a
    ld bc, $e51d                                  ; $7e35: $01 $1d $e5
    call Call_02f_408d                            ; $7e38: $cd $8d $40
    dec sp                                        ; $7e3b: $3b
    jp c, $f5fe                                   ; $7e3c: $da $fe $f5

    ret nz                                        ; $7e3f: $c0

    xor c                                         ; $7e40: $a9
    dec b                                         ; $7e41: $05
    ld e, c                                       ; $7e42: $59
    ld d, $61                                     ; $7e43: $16 $61
    sbc a                                         ; $7e45: $9f
    cp e                                          ; $7e46: $bb
    db $ed                                        ; $7e47: $ed
    ld [hl], h                                    ; $7e48: $74
    ld c, e                                       ; $7e49: $4b
    dec d                                         ; $7e4a: $15
    and e                                         ; $7e4b: $a3
    jr c, jr_02f_7e05                             ; $7e4c: $38 $b7

    and [hl]                                      ; $7e4e: $a6
    dec b                                         ; $7e4f: $05
    dec e                                         ; $7e50: $1d
    ld e, [hl]                                    ; $7e51: $5e
    inc de                                        ; $7e52: $13
    db $10                                        ; $7e53: $10
    dec l                                         ; $7e54: $2d
    ld b, a                                       ; $7e55: $47
    inc d                                         ; $7e56: $14
    ld a, l                                       ; $7e57: $7d
    or [hl]                                       ; $7e58: $b6
    or b                                          ; $7e59: $b0
    jp c, $64a9                                   ; $7e5a: $da $a9 $64

    push hl                                       ; $7e5d: $e5
    call c, $8716                                 ; $7e5e: $dc $16 $87
    sub a                                         ; $7e61: $97
    call nc, $f1cd                                ; $7e62: $d4 $cd $f1
    jp c, Jump_000_0e31                           ; $7e65: $da $31 $0e

    rst $38                                       ; $7e68: $ff
    db $e3                                        ; $7e69: $e3
    ei                                            ; $7e6a: $fb
    dec l                                         ; $7e6b: $2d
    dec e                                         ; $7e6c: $1d
    db $e4                                        ; $7e6d: $e4
    dec b                                         ; $7e6e: $05
    ld a, a                                       ; $7e6f: $7f
    dec bc                                        ; $7e70: $0b
    ld b, a                                       ; $7e71: $47
    sub l                                         ; $7e72: $95
    or h                                          ; $7e73: $b4
    inc hl                                        ; $7e74: $23
    or a                                          ; $7e75: $b7
    ld h, l                                       ; $7e76: $65
    dec d                                         ; $7e77: $15
    ld h, e                                       ; $7e78: $63
    or c                                          ; $7e79: $b1
    ld e, d                                       ; $7e7a: $5a
    rst $00                                       ; $7e7b: $c7
    ld hl, sp+$63                                 ; $7e7c: $f8 $63
    reti                                          ; $7e7e: $d9


    rst $18                                       ; $7e7f: $df
    xor c                                         ; $7e80: $a9
    inc b                                         ; $7e81: $04
    ld d, l                                       ; $7e82: $55
    db $d3                                        ; $7e83: $d3
    ld [bc], a                                    ; $7e84: $02
    ld b, a                                       ; $7e85: $47
    add b                                         ; $7e86: $80
    di                                            ; $7e87: $f3
    ld [hl], a                                    ; $7e88: $77
    sbc l                                         ; $7e89: $9d
    cp e                                          ; $7e8a: $bb
    ld c, $50                                     ; $7e8b: $0e $50
    ld hl, sp+$7b                                 ; $7e8d: $f8 $7b
    cp a                                          ; $7e8f: $bf
    dec b                                         ; $7e90: $05
    add a                                         ; $7e91: $87
    sub a                                         ; $7e92: $97
    ld c, d                                       ; $7e93: $4a
    adc [hl]                                      ; $7e94: $8e
    rst $10                                       ; $7e95: $d7
    cp c                                          ; $7e96: $b9
    dec sp                                        ; $7e97: $3b
    push de                                       ; $7e98: $d5
    adc $4b                                       ; $7e99: $ce $4b
    add hl, sp                                    ; $7e9b: $39
    ld [hl], d                                    ; $7e9c: $72
    sub [hl]                                      ; $7e9d: $96
    ld e, d                                       ; $7e9e: $5a
    add a                                         ; $7e9f: $87
    dec sp                                        ; $7ea0: $3b
    xor c                                         ; $7ea1: $a9
    jp nz, $db40                                  ; $7ea2: $c2 $40 $db

    add hl, bc                                    ; $7ea5: $09
    sub b                                         ; $7ea6: $90
    ld a, $17                                     ; $7ea7: $3e $17
    ld a, a                                       ; $7ea9: $7f
    dec bc                                        ; $7eaa: $0b
    rst $00                                       ; $7eab: $c7
    cp h                                          ; $7eac: $bc
    rst $08                                       ; $7ead: $cf
    ld e, a                                       ; $7eae: $5f
    pop bc                                        ; $7eaf: $c1
    xor a                                         ; $7eb0: $af
    sbc l                                         ; $7eb1: $9d
    ld d, h                                       ; $7eb2: $54
    or b                                          ; $7eb3: $b0
    ld h, c                                       ; $7eb4: $61
    db $db                                        ; $7eb5: $db
    and a                                         ; $7eb6: $a7
    ld d, $1d                                     ; $7eb7: $16 $1d
    sbc $27                                       ; $7eb9: $de $27
    ld h, e                                       ; $7ebb: $63
    add c                                         ; $7ebc: $81
    halt                                          ; $7ebd: $76
    db $fc                                        ; $7ebe: $fc
    ld b, a                                       ; $7ebf: $47
    ld d, $9b                                     ; $7ec0: $16 $9b
    adc d                                         ; $7ec2: $8a
    ld l, d                                       ; $7ec3: $6a
    ld e, d                                       ; $7ec4: $5a

Jump_02f_7ec5:
    rst $00                                       ; $7ec5: $c7
    sbc d                                         ; $7ec6: $9a
    ld a, e                                       ; $7ec7: $7b
    call Call_000_3e3a                            ; $7ec8: $cd $3a $3e
    ld [hl+], a                                   ; $7ecb: $22
    ld a, c                                       ; $7ecc: $79
    dec bc                                        ; $7ecd: $0b
    ld b, a                                       ; $7ece: $47
    jp z, $d3cf                                   ; $7ecf: $ca $cf $d3

    and a                                         ; $7ed2: $a7
    sbc l                                         ; $7ed3: $9d
    jp z, $aac6                                   ; $7ed4: $ca $c6 $aa

    add hl, hl                                    ; $7ed7: $29
    ld hl, sp+$59                                 ; $7ed8: $f8 $59
    dec l                                         ; $7eda: $2d
    rst $00                                       ; $7edb: $c7
    ret nz                                        ; $7edc: $c0

    ld h, a                                       ; $7edd: $67
    ld h, e                                       ; $7ede: $63
    pop hl                                        ; $7edf: $e1
    ld [hl], $ae                                  ; $7ee0: $36 $ae
    dec e                                         ; $7ee2: $1d

jr_02f_7ee3:
    di                                            ; $7ee3: $f3
    inc a                                         ; $7ee4: $3c
    ld d, h                                       ; $7ee5: $54
    cp l                                          ; $7ee6: $bd
    rst $20                                       ; $7ee7: $e7
    dec l                                         ; $7ee8: $2d
    ld e, c                                       ; $7ee9: $59
    dec b                                         ; $7eea: $05
    rra                                           ; $7eeb: $1f
    rst $38                                       ; $7eec: $ff
    sub $02                                       ; $7eed: $d6 $02
    ld b, a                                       ; $7eef: $47
    ret z                                         ; $7ef0: $c8

    and b                                         ; $7ef1: $a0
    ld a, d                                       ; $7ef2: $7a
    sbc a                                         ; $7ef3: $9f
    sub $c1                                       ; $7ef4: $d6 $c1
    inc a                                         ; $7ef6: $3c
    ei                                            ; $7ef7: $fb
    add hl, sp                                    ; $7ef8: $39
    and [hl]                                      ; $7ef9: $a6
    db $ec                                        ; $7efa: $ec
    sbc a                                         ; $7efb: $9f
    dec de                                        ; $7efc: $1b
    dec l                                         ; $7efd: $2d
    ld e, c                                       ; $7efe: $59
    ld l, h                                       ; $7eff: $6c
    add e                                         ; $7f00: $83
    ld a, a                                       ; $7f01: $7f
    xor c                                         ; $7f02: $a9
    ld h, [hl]                                    ; $7f03: $66
    daa                                           ; $7f04: $27
    dec d                                         ; $7f05: $15
    xor $c8                                       ; $7f06: $ee $c8
    ld e, c                                       ; $7f08: $59
    ld l, d                                       ; $7f09: $6a
    ld bc, $e01d                                  ; $7f0a: $01 $1d $e0
    or e                                          ; $7f0d: $b3
    sbc $8e                                       ; $7f0e: $de $8e
    ld a, b                                       ; $7f10: $78
    sbc a                                         ; $7f11: $9f
    ld l, l                                       ; $7f12: $6d
    ld d, l                                       ; $7f13: $55
    dec bc                                        ; $7f14: $0b
    ld h, a                                       ; $7f15: $67
    ld h, b                                       ; $7f16: $60
    ld c, c                                       ; $7f17: $49
    dec sp                                        ; $7f18: $3b
    ld a, [c]                                     ; $7f19: $f2
    dec e                                         ; $7f1a: $1d
    ld d, l                                       ; $7f1b: $55
    ld a, [de]                                    ; $7f1c: $1a
    ld [hl], $5e                                  ; $7f1d: $36 $5e
    rst $20                                       ; $7f1f: $e7
    or [hl]                                       ; $7f20: $b6
    ld b, a                                       ; $7f21: $47
    jr c, @-$4c                                   ; $7f22: $38 $b2

    sub b                                         ; $7f24: $90
    ld c, b                                       ; $7f25: $48
    dec sp                                        ; $7f26: $3b
    ld b, e                                       ; $7f27: $43
    cp a                                          ; $7f28: $bf
    cp h                                          ; $7f29: $bc
    db $eb                                        ; $7f2a: $eb
    call c, $c716                                 ; $7f2b: $dc $16 $c7
    inc a                                         ; $7f2e: $3c
    xor $78                                       ; $7f2f: $ee $78
    db $ed                                        ; $7f31: $ed
    jr jr_02f_7ee3                                ; $7f32: $18 $af

    ld c, c                                       ; $7f34: $49
    and a                                         ; $7f35: $a7
    rst $18                                       ; $7f36: $df
    rst $20                                       ; $7f37: $e7
    rst $08                                       ; $7f38: $cf
    ld e, e                                       ; $7f39: $5b
    dec e                                         ; $7f3a: $1d
    ret nc                                        ; $7f3b: $d0

    db $ed                                        ; $7f3c: $ed

jr_02f_7f3d:
    ld [hl], e                                    ; $7f3d: $73
    db $db                                        ; $7f3e: $db
    pop de                                        ; $7f3f: $d1
    ld b, $d7                                     ; $7f40: $06 $d7
    ei                                            ; $7f42: $fb
    ld e, a                                       ; $7f43: $5f
    ld b, h                                       ; $7f44: $44
    ld l, d                                       ; $7f45: $6a
    ld bc, $5aa7                                  ; $7f46: $01 $a7 $5a
    or c                                          ; $7f49: $b1
    di                                            ; $7f4a: $f3
    call $aa77                                    ; $7f4b: $cd $77 $aa
    cp h                                          ; $7f4e: $bc
    pop de                                        ; $7f4f: $d1
    daa                                           ; $7f50: $27
    ld [hl], e                                    ; $7f51: $73
    sbc $02                                       ; $7f52: $de $02
    and a                                         ; $7f54: $a7
    ld [$d6bf], sp                                ; $7f55: $08 $bf $d6
    pop bc                                        ; $7f58: $c1
    cp d                                          ; $7f59: $ba
    ld h, d                                       ; $7f5a: $62
    xor h                                         ; $7f5b: $ac
    dec b                                         ; $7f5c: $05
    rst $00                                       ; $7f5d: $c7
    xor d                                         ; $7f5e: $aa
    or b                                          ; $7f5f: $b0
    ld l, h                                       ; $7f60: $6c
    dec e                                         ; $7f61: $1d
    rra                                           ; $7f62: $1f
    and h                                         ; $7f63: $a4
    db $e3                                        ; $7f64: $e3
    ld b, c                                       ; $7f65: $41
    ld a, [hl-]                                   ; $7f66: $3a
    ld e, l                                       ; $7f67: $5d
    call nc, $a702                                ; $7f68: $d4 $02 $a7
    cp h                                          ; $7f6b: $bc
    di                                            ; $7f6c: $f3
    db $f4                                        ; $7f6d: $f4
    ld l, l                                       ; $7f6e: $6d
    and a                                         ; $7f6f: $a7
    jp z, $21b9                                   ; $7f70: $ca $b9 $21

    xor e                                         ; $7f73: $ab
    xor b                                         ; $7f74: $a8
    dec b                                         ; $7f75: $05
    rst $00                                       ; $7f76: $c7
    ld [$30b3], a                                 ; $7f77: $ea $b3 $30
    ld l, b                                       ; $7f7a: $68
    cpl                                           ; $7f7b: $2f
    cp l                                          ; $7f7c: $bd
    inc sp                                        ; $7f7d: $33
    sbc $e3                                       ; $7f7e: $de $e3
    sub a                                         ; $7f80: $97
    cp a                                          ; $7f81: $bf
    inc [hl]                                      ; $7f82: $34
    or l                                          ; $7f83: $b5
    dec e                                         ; $7f84: $1d
    call z, $2059                                 ; $7f85: $cc $59 $20
    ld b, a                                       ; $7f88: $47
    jp nc, Jump_02f_7c8e                          ; $7f89: $d2 $8e $7c

    sbc h                                         ; $7f8c: $9c
    res 2, c                                      ; $7f8d: $cb $91
    or e                                          ; $7f8f: $b3
    call nc, $8702                                ; $7f90: $d4 $02 $87
    sub a                                         ; $7f93: $97
    inc d                                         ; $7f94: $14
    call nz, $848e                                ; $7f95: $c4 $8e $84
    ld a, [hl+]                                   ; $7f98: $2a
    ld d, l                                       ; $7f99: $55
    call nz, $ab9f                                ; $7f9a: $c4 $9f $ab
    dec b                                         ; $7f9d: $05
    ld b, a                                       ; $7f9e: $47
    cp [hl]                                       ; $7f9f: $be
    ld l, a                                       ; $7fa0: $6f
    inc l                                         ; $7fa1: $2c
    or [hl]                                       ; $7fa2: $b6
    db $fd                                        ; $7fa3: $fd
    ld [hl], l                                    ; $7fa4: $75
    ld [hl], d                                    ; $7fa5: $72
    ld d, l                                       ; $7fa6: $55
    ld b, l                                       ; $7fa7: $45
    ld b, h                                       ; $7fa8: $44
    dec l                                         ; $7fa9: $2d
    dec e                                         ; $7faa: $1d
    jr nz, jr_02f_7f3d                            ; $7fab: $20 $90

    ccf                                           ; $7fad: $3f
    or a                                          ; $7fae: $b7
    dec e                                         ; $7faf: $1d
    ld h, c                                       ; $7fb0: $61
    ld a, [hl]                                    ; $7fb1: $7e

Jump_02f_7fb2:
    xor $79                                       ; $7fb2: $ee $79
    ld c, b                                       ; $7fb4: $48
    db $ec                                        ; $7fb5: $ec
    ld d, $c7                                     ; $7fb6: $16 $c7
    call c, $edf8                                 ; $7fb8: $dc $f8 $ed
    db $fd                                        ; $7fbb: $fd
    ld [hl], l                                    ; $7fbc: $75
    ld b, b                                       ; $7fbd: $40
    ld de, $05a9                                  ; $7fbe: $11 $a9 $05
    rst $00                                       ; $7fc1: $c7
    jp z, $fb2b                                   ; $7fc2: $ca $2b $fb

    dec sp                                        ; $7fc5: $3b
    inc bc                                        ; $7fc6: $03
    ccf                                           ; $7fc7: $3f
    add hl, sp                                    ; $7fc8: $39
    ld a, [hl]                                    ; $7fc9: $7e
    ld d, $db                                     ; $7fca: $16 $db
    xor d                                         ; $7fcc: $aa
    ld d, $c7                                     ; $7fcd: $16 $c7
    and e                                         ; $7fcf: $a3
    rla                                           ; $7fd0: $17
    push de                                       ; $7fd1: $d5
    db $ec                                        ; $7fd2: $ec
    ld c, b                                       ; $7fd3: $48
    jr c, @+$59                                   ; $7fd4: $38 $57

    dec l                                         ; $7fd6: $2d
    dec e                                         ; $7fd7: $1d
    ld l, d                                       ; $7fd8: $6a
    db $fc                                        ; $7fd9: $fc
    db $fd                                        ; $7fda: $fd
    sbc l                                         ; $7fdb: $9d
    ld h, c                                       ; $7fdc: $61
    inc l                                         ; $7fdd: $2c
    ld [hl-], a                                   ; $7fde: $32
    inc l                                         ; $7fdf: $2c
    dec l                                         ; $7fe0: $2d
    daa                                           ; $7fe1: $27
    ld a, c                                       ; $7fe2: $79
    ldh [$7f], a                                  ; $7fe3: $e0 $7f
    db $eb                                        ; $7fe5: $eb
    call nz, Call_000_0876                        ; $7fe6: $c4 $76 $08
    ld a, d                                       ; $7fe9: $7a
    cp a                                          ; $7fea: $bf
    dec b                                         ; $7feb: $05
    ld e, c                                       ; $7fec: $59

jr_02f_7fed:
    or a                                          ; $7fed: $b7
    and d                                         ; $7fee: $a2
    jr nz, jr_02f_7fed                            ; $7fef: $20 $fc

    or [hl]                                       ; $7ff1: $b6
    ld c, $af                                     ; $7ff2: $0e $af
    ld [hl], b                                    ; $7ff4: $70
    ld c, b                                       ; $7ff5: $48
    jp hl                                         ; $7ff6: $e9


    ld l, d                                       ; $7ff7: $6a
    ld bc, $ffff                                  ; $7ff8: $01 $ff $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
